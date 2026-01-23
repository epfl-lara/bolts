; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669534 () Bool)

(assert start!669534)

(declare-fun b!6979642 () Bool)

(assert (=> b!6979642 true))

(declare-fun b!6979637 () Bool)

(assert (=> b!6979637 true))

(declare-fun b!6979634 () Bool)

(assert (=> b!6979634 true))

(declare-fun b!6979629 () Bool)

(declare-fun e!4194821 () Bool)

(declare-datatypes ((C!34606 0))(
  ( (C!34607 (val!27005 Int)) )
))
(declare-datatypes ((Regex!17168 0))(
  ( (ElementMatch!17168 (c!1293751 C!34606)) (Concat!26013 (regOne!34848 Regex!17168) (regTwo!34848 Regex!17168)) (EmptyExpr!17168) (Star!17168 (reg!17497 Regex!17168)) (EmptyLang!17168) (Union!17168 (regOne!34849 Regex!17168) (regTwo!34849 Regex!17168)) )
))
(declare-datatypes ((List!67049 0))(
  ( (Nil!66925) (Cons!66925 (h!73373 Regex!17168) (t!380792 List!67049)) )
))
(declare-datatypes ((Context!12328 0))(
  ( (Context!12329 (exprs!6664 List!67049)) )
))
(declare-fun ct2!306 () Context!12328)

(declare-fun lambda!398880 () Int)

(declare-fun forall!16051 (List!67049 Int) Bool)

(assert (=> b!6979629 (= e!4194821 (forall!16051 (exprs!6664 ct2!306) lambda!398880))))

(declare-fun b!6979631 () Bool)

(declare-fun res!2846146 () Bool)

(declare-fun e!4194818 () Bool)

(assert (=> b!6979631 (=> res!2846146 e!4194818)))

(declare-fun lt!2481266 () Context!12328)

(assert (=> b!6979631 (= res!2846146 (not (is-Cons!66925 (exprs!6664 lt!2481266))))))

(declare-fun b!6979632 () Bool)

(declare-fun e!4194823 () Bool)

(assert (=> b!6979632 (= e!4194823 e!4194821)))

(declare-fun res!2846149 () Bool)

(assert (=> b!6979632 (=> res!2846149 e!4194821)))

(declare-fun lt!2481268 () List!67049)

(assert (=> b!6979632 (= res!2846149 (not (forall!16051 lt!2481268 lambda!398880)))))

(declare-datatypes ((Unit!160986 0))(
  ( (Unit!160987) )
))
(declare-fun lt!2481265 () Unit!160986)

(declare-fun lemmaConcatPreservesForall!504 (List!67049 List!67049 Int) Unit!160986)

(assert (=> b!6979632 (= lt!2481265 (lemmaConcatPreservesForall!504 lt!2481268 (exprs!6664 ct2!306) lambda!398880))))

(declare-fun b!6979633 () Bool)

(declare-fun e!4194820 () Bool)

(declare-fun tp!1927997 () Bool)

(assert (=> b!6979633 (= e!4194820 tp!1927997)))

(declare-fun e!4194814 () Bool)

(assert (=> b!6979634 (= e!4194814 e!4194818)))

(declare-fun res!2846152 () Bool)

(assert (=> b!6979634 (=> res!2846152 e!4194818)))

(declare-fun lt!2481258 () (Set Context!12328))

(declare-fun lt!2481262 () (Set Context!12328))

(declare-datatypes ((List!67050 0))(
  ( (Nil!66926) (Cons!66926 (h!73374 C!34606) (t!380793 List!67050)) )
))
(declare-fun s!7408 () List!67050)

(declare-fun derivationStepZipper!2648 ((Set Context!12328) C!34606) (Set Context!12328))

(assert (=> b!6979634 (= res!2846152 (not (= (derivationStepZipper!2648 lt!2481262 (h!73374 s!7408)) lt!2481258)))))

(declare-fun lt!2481270 () Context!12328)

(declare-fun lambda!398881 () Int)

(declare-fun flatMap!2154 ((Set Context!12328) Int) (Set Context!12328))

(declare-fun derivationStepZipperUp!1818 (Context!12328 C!34606) (Set Context!12328))

(assert (=> b!6979634 (= (flatMap!2154 lt!2481262 lambda!398881) (derivationStepZipperUp!1818 lt!2481270 (h!73374 s!7408)))))

(declare-fun lt!2481263 () Unit!160986)

(declare-fun lemmaFlatMapOnSingletonSet!1669 ((Set Context!12328) Context!12328 Int) Unit!160986)

(assert (=> b!6979634 (= lt!2481263 (lemmaFlatMapOnSingletonSet!1669 lt!2481262 lt!2481270 lambda!398881))))

(assert (=> b!6979634 (= lt!2481258 (derivationStepZipperUp!1818 lt!2481270 (h!73374 s!7408)))))

(declare-fun lt!2481256 () Unit!160986)

(assert (=> b!6979634 (= lt!2481256 (lemmaConcatPreservesForall!504 (exprs!6664 lt!2481266) (exprs!6664 ct2!306) lambda!398880))))

(declare-fun b!6979635 () Bool)

(assert (=> b!6979635 (= e!4194818 e!4194823)))

(declare-fun res!2846145 () Bool)

(assert (=> b!6979635 (=> res!2846145 e!4194823)))

(declare-fun nullable!6928 (Regex!17168) Bool)

(assert (=> b!6979635 (= res!2846145 (not (nullable!6928 (h!73373 (exprs!6664 lt!2481266)))))))

(declare-fun tail!13139 (List!67049) List!67049)

(assert (=> b!6979635 (= lt!2481268 (tail!13139 (exprs!6664 lt!2481266)))))

(declare-fun b!6979636 () Bool)

(declare-fun e!4194816 () Bool)

(declare-fun tp_is_empty!43561 () Bool)

(declare-fun tp!1928000 () Bool)

(assert (=> b!6979636 (= e!4194816 (and tp_is_empty!43561 tp!1928000))))

(declare-fun e!4194819 () Bool)

(declare-fun e!4194815 () Bool)

(assert (=> b!6979637 (= e!4194819 e!4194815)))

(declare-fun res!2846155 () Bool)

(assert (=> b!6979637 (=> res!2846155 e!4194815)))

(declare-fun lt!2481264 () Context!12328)

(declare-fun z1!570 () (Set Context!12328))

(assert (=> b!6979637 (= res!2846155 (or (not (= lt!2481270 lt!2481264)) (not (set.member lt!2481266 z1!570))))))

(declare-fun ++!15113 (List!67049 List!67049) List!67049)

(assert (=> b!6979637 (= lt!2481270 (Context!12329 (++!15113 (exprs!6664 lt!2481266) (exprs!6664 ct2!306))))))

(declare-fun lt!2481257 () Unit!160986)

(assert (=> b!6979637 (= lt!2481257 (lemmaConcatPreservesForall!504 (exprs!6664 lt!2481266) (exprs!6664 ct2!306) lambda!398880))))

(declare-fun lambda!398879 () Int)

(declare-fun mapPost2!23 ((Set Context!12328) Int Context!12328) Context!12328)

(assert (=> b!6979637 (= lt!2481266 (mapPost2!23 z1!570 lambda!398879 lt!2481264))))

(declare-fun b!6979638 () Bool)

(assert (=> b!6979638 (= e!4194815 e!4194814)))

(declare-fun res!2846148 () Bool)

(assert (=> b!6979638 (=> res!2846148 e!4194814)))

(declare-fun lt!2481261 () (Set Context!12328))

(assert (=> b!6979638 (= res!2846148 (not (= lt!2481262 lt!2481261)))))

(assert (=> b!6979638 (= lt!2481262 (set.insert lt!2481270 (as set.empty (Set Context!12328))))))

(declare-fun lt!2481267 () Unit!160986)

(assert (=> b!6979638 (= lt!2481267 (lemmaConcatPreservesForall!504 (exprs!6664 lt!2481266) (exprs!6664 ct2!306) lambda!398880))))

(declare-fun b!6979639 () Bool)

(declare-fun res!2846154 () Bool)

(assert (=> b!6979639 (=> res!2846154 e!4194818)))

(declare-fun isEmpty!39063 (List!67049) Bool)

(assert (=> b!6979639 (= res!2846154 (isEmpty!39063 (exprs!6664 lt!2481266)))))

(declare-fun b!6979640 () Bool)

(declare-fun res!2846147 () Bool)

(declare-fun e!4194822 () Bool)

(assert (=> b!6979640 (=> (not res!2846147) (not e!4194822))))

(assert (=> b!6979640 (= res!2846147 (is-Cons!66926 s!7408))))

(declare-fun e!4194817 () Bool)

(declare-fun tp!1927998 () Bool)

(declare-fun setRes!47490 () Bool)

(declare-fun setElem!47490 () Context!12328)

(declare-fun setNonEmpty!47490 () Bool)

(declare-fun inv!85780 (Context!12328) Bool)

(assert (=> setNonEmpty!47490 (= setRes!47490 (and tp!1927998 (inv!85780 setElem!47490) e!4194817))))

(declare-fun setRest!47490 () (Set Context!12328))

(assert (=> setNonEmpty!47490 (= z1!570 (set.union (set.insert setElem!47490 (as set.empty (Set Context!12328))) setRest!47490))))

(declare-fun setIsEmpty!47490 () Bool)

(assert (=> setIsEmpty!47490 setRes!47490))

(declare-fun b!6979630 () Bool)

(declare-fun tp!1927999 () Bool)

(assert (=> b!6979630 (= e!4194817 tp!1927999)))

(declare-fun res!2846151 () Bool)

(assert (=> start!669534 (=> (not res!2846151) (not e!4194822))))

(declare-fun lt!2481260 () (Set Context!12328))

(declare-fun matchZipper!2708 ((Set Context!12328) List!67050) Bool)

(assert (=> start!669534 (= res!2846151 (matchZipper!2708 lt!2481260 s!7408))))

(declare-fun appendTo!289 ((Set Context!12328) Context!12328) (Set Context!12328))

(assert (=> start!669534 (= lt!2481260 (appendTo!289 z1!570 ct2!306))))

(assert (=> start!669534 e!4194822))

(declare-fun condSetEmpty!47490 () Bool)

(assert (=> start!669534 (= condSetEmpty!47490 (= z1!570 (as set.empty (Set Context!12328))))))

(assert (=> start!669534 setRes!47490))

(assert (=> start!669534 (and (inv!85780 ct2!306) e!4194820)))

(assert (=> start!669534 e!4194816))

(declare-fun b!6979641 () Bool)

(declare-fun res!2846153 () Bool)

(assert (=> b!6979641 (=> res!2846153 e!4194819)))

(assert (=> b!6979641 (= res!2846153 (not (set.member lt!2481264 lt!2481260)))))

(assert (=> b!6979642 (= e!4194822 (not e!4194819))))

(declare-fun res!2846150 () Bool)

(assert (=> b!6979642 (=> res!2846150 e!4194819)))

(assert (=> b!6979642 (= res!2846150 (not (matchZipper!2708 lt!2481261 s!7408)))))

(assert (=> b!6979642 (= lt!2481261 (set.insert lt!2481264 (as set.empty (Set Context!12328))))))

(declare-fun lambda!398878 () Int)

(declare-fun getWitness!1033 ((Set Context!12328) Int) Context!12328)

(assert (=> b!6979642 (= lt!2481264 (getWitness!1033 lt!2481260 lambda!398878))))

(declare-datatypes ((List!67051 0))(
  ( (Nil!66927) (Cons!66927 (h!73375 Context!12328) (t!380794 List!67051)) )
))
(declare-fun lt!2481269 () List!67051)

(declare-fun exists!2922 (List!67051 Int) Bool)

(assert (=> b!6979642 (exists!2922 lt!2481269 lambda!398878)))

(declare-fun lt!2481259 () Unit!160986)

(declare-fun lemmaZipperMatchesExistsMatchingContext!137 (List!67051 List!67050) Unit!160986)

(assert (=> b!6979642 (= lt!2481259 (lemmaZipperMatchesExistsMatchingContext!137 lt!2481269 s!7408))))

(declare-fun toList!10528 ((Set Context!12328)) List!67051)

(assert (=> b!6979642 (= lt!2481269 (toList!10528 lt!2481260))))

(assert (= (and start!669534 res!2846151) b!6979640))

(assert (= (and b!6979640 res!2846147) b!6979642))

(assert (= (and b!6979642 (not res!2846150)) b!6979641))

(assert (= (and b!6979641 (not res!2846153)) b!6979637))

(assert (= (and b!6979637 (not res!2846155)) b!6979638))

(assert (= (and b!6979638 (not res!2846148)) b!6979634))

(assert (= (and b!6979634 (not res!2846152)) b!6979631))

(assert (= (and b!6979631 (not res!2846146)) b!6979639))

(assert (= (and b!6979639 (not res!2846154)) b!6979635))

(assert (= (and b!6979635 (not res!2846145)) b!6979632))

(assert (= (and b!6979632 (not res!2846149)) b!6979629))

(assert (= (and start!669534 condSetEmpty!47490) setIsEmpty!47490))

(assert (= (and start!669534 (not condSetEmpty!47490)) setNonEmpty!47490))

(assert (= setNonEmpty!47490 b!6979630))

(assert (= start!669534 b!6979633))

(assert (= (and start!669534 (is-Cons!66926 s!7408)) b!6979636))

(declare-fun m!7665734 () Bool)

(assert (=> b!6979641 m!7665734))

(declare-fun m!7665736 () Bool)

(assert (=> start!669534 m!7665736))

(declare-fun m!7665738 () Bool)

(assert (=> start!669534 m!7665738))

(declare-fun m!7665740 () Bool)

(assert (=> start!669534 m!7665740))

(declare-fun m!7665742 () Bool)

(assert (=> b!6979635 m!7665742))

(declare-fun m!7665744 () Bool)

(assert (=> b!6979635 m!7665744))

(declare-fun m!7665746 () Bool)

(assert (=> setNonEmpty!47490 m!7665746))

(declare-fun m!7665748 () Bool)

(assert (=> b!6979634 m!7665748))

(declare-fun m!7665750 () Bool)

(assert (=> b!6979634 m!7665750))

(declare-fun m!7665752 () Bool)

(assert (=> b!6979634 m!7665752))

(declare-fun m!7665754 () Bool)

(assert (=> b!6979634 m!7665754))

(declare-fun m!7665756 () Bool)

(assert (=> b!6979634 m!7665756))

(declare-fun m!7665758 () Bool)

(assert (=> b!6979632 m!7665758))

(declare-fun m!7665760 () Bool)

(assert (=> b!6979632 m!7665760))

(declare-fun m!7665762 () Bool)

(assert (=> b!6979629 m!7665762))

(declare-fun m!7665764 () Bool)

(assert (=> b!6979638 m!7665764))

(assert (=> b!6979638 m!7665752))

(declare-fun m!7665766 () Bool)

(assert (=> b!6979639 m!7665766))

(declare-fun m!7665768 () Bool)

(assert (=> b!6979642 m!7665768))

(declare-fun m!7665770 () Bool)

(assert (=> b!6979642 m!7665770))

(declare-fun m!7665772 () Bool)

(assert (=> b!6979642 m!7665772))

(declare-fun m!7665774 () Bool)

(assert (=> b!6979642 m!7665774))

(declare-fun m!7665776 () Bool)

(assert (=> b!6979642 m!7665776))

(declare-fun m!7665778 () Bool)

(assert (=> b!6979642 m!7665778))

(declare-fun m!7665780 () Bool)

(assert (=> b!6979637 m!7665780))

(declare-fun m!7665782 () Bool)

(assert (=> b!6979637 m!7665782))

(assert (=> b!6979637 m!7665752))

(declare-fun m!7665784 () Bool)

(assert (=> b!6979637 m!7665784))

(push 1)

(assert (not b!6979633))

(assert (not b!6979639))

(assert (not b!6979637))

(assert (not b!6979642))

(assert (not b!6979630))

(assert (not b!6979629))

(assert (not b!6979632))

(assert tp_is_empty!43561)

(assert (not b!6979636))

(assert (not setNonEmpty!47490))

(assert (not b!6979634))

(assert (not start!669534))

(assert (not b!6979638))

(assert (not b!6979635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6979705 () Bool)

(declare-fun e!4194859 () List!67049)

(assert (=> b!6979705 (= e!4194859 (exprs!6664 ct2!306))))

(declare-fun b!6979707 () Bool)

(declare-fun res!2846194 () Bool)

(declare-fun e!4194858 () Bool)

(assert (=> b!6979707 (=> (not res!2846194) (not e!4194858))))

(declare-fun lt!2481320 () List!67049)

(declare-fun size!40869 (List!67049) Int)

(assert (=> b!6979707 (= res!2846194 (= (size!40869 lt!2481320) (+ (size!40869 (exprs!6664 lt!2481266)) (size!40869 (exprs!6664 ct2!306)))))))

(declare-fun b!6979708 () Bool)

(assert (=> b!6979708 (= e!4194858 (or (not (= (exprs!6664 ct2!306) Nil!66925)) (= lt!2481320 (exprs!6664 lt!2481266))))))

(declare-fun b!6979706 () Bool)

(assert (=> b!6979706 (= e!4194859 (Cons!66925 (h!73373 (exprs!6664 lt!2481266)) (++!15113 (t!380792 (exprs!6664 lt!2481266)) (exprs!6664 ct2!306))))))

(declare-fun d!2173344 () Bool)

(assert (=> d!2173344 e!4194858))

(declare-fun res!2846195 () Bool)

(assert (=> d!2173344 (=> (not res!2846195) (not e!4194858))))

(declare-fun content!13191 (List!67049) (Set Regex!17168))

(assert (=> d!2173344 (= res!2846195 (= (content!13191 lt!2481320) (set.union (content!13191 (exprs!6664 lt!2481266)) (content!13191 (exprs!6664 ct2!306)))))))

(assert (=> d!2173344 (= lt!2481320 e!4194859)))

(declare-fun c!1293763 () Bool)

(assert (=> d!2173344 (= c!1293763 (is-Nil!66925 (exprs!6664 lt!2481266)))))

(assert (=> d!2173344 (= (++!15113 (exprs!6664 lt!2481266) (exprs!6664 ct2!306)) lt!2481320)))

(assert (= (and d!2173344 c!1293763) b!6979705))

(assert (= (and d!2173344 (not c!1293763)) b!6979706))

(assert (= (and d!2173344 res!2846195) b!6979707))

(assert (= (and b!6979707 res!2846194) b!6979708))

(declare-fun m!7665838 () Bool)

(assert (=> b!6979707 m!7665838))

(declare-fun m!7665840 () Bool)

(assert (=> b!6979707 m!7665840))

(declare-fun m!7665842 () Bool)

(assert (=> b!6979707 m!7665842))

(declare-fun m!7665844 () Bool)

(assert (=> b!6979706 m!7665844))

(declare-fun m!7665846 () Bool)

(assert (=> d!2173344 m!7665846))

(declare-fun m!7665848 () Bool)

(assert (=> d!2173344 m!7665848))

(declare-fun m!7665850 () Bool)

(assert (=> d!2173344 m!7665850))

(assert (=> b!6979637 d!2173344))

(declare-fun d!2173346 () Bool)

(assert (=> d!2173346 (forall!16051 (++!15113 (exprs!6664 lt!2481266) (exprs!6664 ct2!306)) lambda!398880)))

(declare-fun lt!2481323 () Unit!160986)

(declare-fun choose!52007 (List!67049 List!67049 Int) Unit!160986)

(assert (=> d!2173346 (= lt!2481323 (choose!52007 (exprs!6664 lt!2481266) (exprs!6664 ct2!306) lambda!398880))))

(assert (=> d!2173346 (forall!16051 (exprs!6664 lt!2481266) lambda!398880)))

(assert (=> d!2173346 (= (lemmaConcatPreservesForall!504 (exprs!6664 lt!2481266) (exprs!6664 ct2!306) lambda!398880) lt!2481323)))

(declare-fun bs!1860597 () Bool)

(assert (= bs!1860597 d!2173346))

(assert (=> bs!1860597 m!7665782))

(assert (=> bs!1860597 m!7665782))

(declare-fun m!7665852 () Bool)

(assert (=> bs!1860597 m!7665852))

(declare-fun m!7665854 () Bool)

(assert (=> bs!1860597 m!7665854))

(declare-fun m!7665856 () Bool)

(assert (=> bs!1860597 m!7665856))

(assert (=> b!6979637 d!2173346))

(declare-fun d!2173348 () Bool)

(declare-fun e!4194862 () Bool)

(assert (=> d!2173348 e!4194862))

(declare-fun res!2846198 () Bool)

(assert (=> d!2173348 (=> (not res!2846198) (not e!4194862))))

(declare-fun lt!2481326 () Context!12328)

(declare-fun dynLambda!26727 (Int Context!12328) Context!12328)

(assert (=> d!2173348 (= res!2846198 (= lt!2481264 (dynLambda!26727 lambda!398879 lt!2481326)))))

(declare-fun choose!52008 ((Set Context!12328) Int Context!12328) Context!12328)

(assert (=> d!2173348 (= lt!2481326 (choose!52008 z1!570 lambda!398879 lt!2481264))))

(declare-fun map!15419 ((Set Context!12328) Int) (Set Context!12328))

(assert (=> d!2173348 (set.member lt!2481264 (map!15419 z1!570 lambda!398879))))

(assert (=> d!2173348 (= (mapPost2!23 z1!570 lambda!398879 lt!2481264) lt!2481326)))

(declare-fun b!6979712 () Bool)

(assert (=> b!6979712 (= e!4194862 (set.member lt!2481326 z1!570))))

(assert (= (and d!2173348 res!2846198) b!6979712))

(declare-fun b_lambda!261451 () Bool)

(assert (=> (not b_lambda!261451) (not d!2173348)))

(declare-fun m!7665858 () Bool)

(assert (=> d!2173348 m!7665858))

(declare-fun m!7665860 () Bool)

(assert (=> d!2173348 m!7665860))

(declare-fun m!7665862 () Bool)

(assert (=> d!2173348 m!7665862))

(declare-fun m!7665864 () Bool)

(assert (=> d!2173348 m!7665864))

(declare-fun m!7665866 () Bool)

(assert (=> b!6979712 m!7665866))

(assert (=> b!6979637 d!2173348))

(declare-fun d!2173350 () Bool)

(declare-fun res!2846203 () Bool)

(declare-fun e!4194867 () Bool)

(assert (=> d!2173350 (=> res!2846203 e!4194867)))

(assert (=> d!2173350 (= res!2846203 (is-Nil!66925 lt!2481268))))

(assert (=> d!2173350 (= (forall!16051 lt!2481268 lambda!398880) e!4194867)))

(declare-fun b!6979717 () Bool)

(declare-fun e!4194868 () Bool)

(assert (=> b!6979717 (= e!4194867 e!4194868)))

(declare-fun res!2846204 () Bool)

(assert (=> b!6979717 (=> (not res!2846204) (not e!4194868))))

(declare-fun dynLambda!26728 (Int Regex!17168) Bool)

(assert (=> b!6979717 (= res!2846204 (dynLambda!26728 lambda!398880 (h!73373 lt!2481268)))))

(declare-fun b!6979718 () Bool)

(assert (=> b!6979718 (= e!4194868 (forall!16051 (t!380792 lt!2481268) lambda!398880))))

(assert (= (and d!2173350 (not res!2846203)) b!6979717))

(assert (= (and b!6979717 res!2846204) b!6979718))

(declare-fun b_lambda!261453 () Bool)

(assert (=> (not b_lambda!261453) (not b!6979717)))

(declare-fun m!7665868 () Bool)

(assert (=> b!6979717 m!7665868))

(declare-fun m!7665870 () Bool)

(assert (=> b!6979718 m!7665870))

(assert (=> b!6979632 d!2173350))

(declare-fun d!2173352 () Bool)

(assert (=> d!2173352 (forall!16051 (++!15113 lt!2481268 (exprs!6664 ct2!306)) lambda!398880)))

(declare-fun lt!2481327 () Unit!160986)

(assert (=> d!2173352 (= lt!2481327 (choose!52007 lt!2481268 (exprs!6664 ct2!306) lambda!398880))))

(assert (=> d!2173352 (forall!16051 lt!2481268 lambda!398880)))

(assert (=> d!2173352 (= (lemmaConcatPreservesForall!504 lt!2481268 (exprs!6664 ct2!306) lambda!398880) lt!2481327)))

(declare-fun bs!1860598 () Bool)

(assert (= bs!1860598 d!2173352))

(declare-fun m!7665872 () Bool)

(assert (=> bs!1860598 m!7665872))

(assert (=> bs!1860598 m!7665872))

(declare-fun m!7665874 () Bool)

(assert (=> bs!1860598 m!7665874))

(declare-fun m!7665876 () Bool)

(assert (=> bs!1860598 m!7665876))

(assert (=> bs!1860598 m!7665758))

(assert (=> b!6979632 d!2173352))

(assert (=> b!6979638 d!2173346))

(declare-fun d!2173354 () Bool)

(declare-fun c!1293766 () Bool)

(declare-fun isEmpty!39065 (List!67050) Bool)

(assert (=> d!2173354 (= c!1293766 (isEmpty!39065 s!7408))))

(declare-fun e!4194871 () Bool)

(assert (=> d!2173354 (= (matchZipper!2708 lt!2481261 s!7408) e!4194871)))

(declare-fun b!6979723 () Bool)

(declare-fun nullableZipper!2398 ((Set Context!12328)) Bool)

(assert (=> b!6979723 (= e!4194871 (nullableZipper!2398 lt!2481261))))

(declare-fun b!6979724 () Bool)

(declare-fun head!14068 (List!67050) C!34606)

(declare-fun tail!13141 (List!67050) List!67050)

(assert (=> b!6979724 (= e!4194871 (matchZipper!2708 (derivationStepZipper!2648 lt!2481261 (head!14068 s!7408)) (tail!13141 s!7408)))))

(assert (= (and d!2173354 c!1293766) b!6979723))

(assert (= (and d!2173354 (not c!1293766)) b!6979724))

(declare-fun m!7665878 () Bool)

(assert (=> d!2173354 m!7665878))

(declare-fun m!7665880 () Bool)

(assert (=> b!6979723 m!7665880))

(declare-fun m!7665882 () Bool)

(assert (=> b!6979724 m!7665882))

(assert (=> b!6979724 m!7665882))

(declare-fun m!7665884 () Bool)

(assert (=> b!6979724 m!7665884))

(declare-fun m!7665886 () Bool)

(assert (=> b!6979724 m!7665886))

(assert (=> b!6979724 m!7665884))

(assert (=> b!6979724 m!7665886))

(declare-fun m!7665888 () Bool)

(assert (=> b!6979724 m!7665888))

(assert (=> b!6979642 d!2173354))

(declare-fun d!2173356 () Bool)

(declare-fun e!4194874 () Bool)

(assert (=> d!2173356 e!4194874))

(declare-fun res!2846207 () Bool)

(assert (=> d!2173356 (=> (not res!2846207) (not e!4194874))))

(declare-fun lt!2481330 () Context!12328)

(declare-fun dynLambda!26729 (Int Context!12328) Bool)

(assert (=> d!2173356 (= res!2846207 (dynLambda!26729 lambda!398878 lt!2481330))))

(declare-fun getWitness!1035 (List!67051 Int) Context!12328)

(assert (=> d!2173356 (= lt!2481330 (getWitness!1035 (toList!10528 lt!2481260) lambda!398878))))

(declare-fun exists!2924 ((Set Context!12328) Int) Bool)

(assert (=> d!2173356 (exists!2924 lt!2481260 lambda!398878)))

(assert (=> d!2173356 (= (getWitness!1033 lt!2481260 lambda!398878) lt!2481330)))

(declare-fun b!6979727 () Bool)

(assert (=> b!6979727 (= e!4194874 (set.member lt!2481330 lt!2481260))))

(assert (= (and d!2173356 res!2846207) b!6979727))

(declare-fun b_lambda!261455 () Bool)

(assert (=> (not b_lambda!261455) (not d!2173356)))

(declare-fun m!7665890 () Bool)

(assert (=> d!2173356 m!7665890))

(assert (=> d!2173356 m!7665772))

(assert (=> d!2173356 m!7665772))

(declare-fun m!7665892 () Bool)

(assert (=> d!2173356 m!7665892))

(declare-fun m!7665894 () Bool)

(assert (=> d!2173356 m!7665894))

(declare-fun m!7665896 () Bool)

(assert (=> b!6979727 m!7665896))

(assert (=> b!6979642 d!2173356))

(declare-fun bs!1860599 () Bool)

(declare-fun d!2173358 () Bool)

(assert (= bs!1860599 (and d!2173358 b!6979642)))

(declare-fun lambda!398908 () Int)

(assert (=> bs!1860599 (= lambda!398908 lambda!398878)))

(assert (=> d!2173358 true))

(assert (=> d!2173358 (exists!2922 lt!2481269 lambda!398908)))

(declare-fun lt!2481333 () Unit!160986)

(declare-fun choose!52009 (List!67051 List!67050) Unit!160986)

(assert (=> d!2173358 (= lt!2481333 (choose!52009 lt!2481269 s!7408))))

(declare-fun content!13192 (List!67051) (Set Context!12328))

(assert (=> d!2173358 (matchZipper!2708 (content!13192 lt!2481269) s!7408)))

(assert (=> d!2173358 (= (lemmaZipperMatchesExistsMatchingContext!137 lt!2481269 s!7408) lt!2481333)))

(declare-fun bs!1860600 () Bool)

(assert (= bs!1860600 d!2173358))

(declare-fun m!7665898 () Bool)

(assert (=> bs!1860600 m!7665898))

(declare-fun m!7665900 () Bool)

(assert (=> bs!1860600 m!7665900))

(declare-fun m!7665902 () Bool)

(assert (=> bs!1860600 m!7665902))

(assert (=> bs!1860600 m!7665902))

(declare-fun m!7665904 () Bool)

(assert (=> bs!1860600 m!7665904))

(assert (=> b!6979642 d!2173358))

(declare-fun bs!1860601 () Bool)

(declare-fun d!2173360 () Bool)

(assert (= bs!1860601 (and d!2173360 b!6979642)))

(declare-fun lambda!398911 () Int)

(assert (=> bs!1860601 (not (= lambda!398911 lambda!398878))))

(declare-fun bs!1860602 () Bool)

(assert (= bs!1860602 (and d!2173360 d!2173358)))

(assert (=> bs!1860602 (not (= lambda!398911 lambda!398908))))

(assert (=> d!2173360 true))

(declare-fun order!27833 () Int)

(declare-fun dynLambda!26730 (Int Int) Int)

(assert (=> d!2173360 (< (dynLambda!26730 order!27833 lambda!398878) (dynLambda!26730 order!27833 lambda!398911))))

(declare-fun forall!16053 (List!67051 Int) Bool)

(assert (=> d!2173360 (= (exists!2922 lt!2481269 lambda!398878) (not (forall!16053 lt!2481269 lambda!398911)))))

(declare-fun bs!1860603 () Bool)

(assert (= bs!1860603 d!2173360))

(declare-fun m!7665906 () Bool)

(assert (=> bs!1860603 m!7665906))

(assert (=> b!6979642 d!2173360))

(declare-fun d!2173362 () Bool)

(declare-fun e!4194877 () Bool)

(assert (=> d!2173362 e!4194877))

(declare-fun res!2846211 () Bool)

(assert (=> d!2173362 (=> (not res!2846211) (not e!4194877))))

(declare-fun lt!2481336 () List!67051)

(declare-fun noDuplicate!2489 (List!67051) Bool)

(assert (=> d!2173362 (= res!2846211 (noDuplicate!2489 lt!2481336))))

(declare-fun choose!52010 ((Set Context!12328)) List!67051)

(assert (=> d!2173362 (= lt!2481336 (choose!52010 lt!2481260))))

(assert (=> d!2173362 (= (toList!10528 lt!2481260) lt!2481336)))

(declare-fun b!6979732 () Bool)

(assert (=> b!6979732 (= e!4194877 (= (content!13192 lt!2481336) lt!2481260))))

(assert (= (and d!2173362 res!2846211) b!6979732))

(declare-fun m!7665908 () Bool)

(assert (=> d!2173362 m!7665908))

(declare-fun m!7665910 () Bool)

(assert (=> d!2173362 m!7665910))

(declare-fun m!7665912 () Bool)

(assert (=> b!6979732 m!7665912))

(assert (=> b!6979642 d!2173362))

(declare-fun d!2173364 () Bool)

(assert (=> d!2173364 (= (isEmpty!39063 (exprs!6664 lt!2481266)) (is-Nil!66925 (exprs!6664 lt!2481266)))))

(assert (=> b!6979639 d!2173364))

(declare-fun d!2173366 () Bool)

(declare-fun dynLambda!26731 (Int Context!12328) (Set Context!12328))

(assert (=> d!2173366 (= (flatMap!2154 lt!2481262 lambda!398881) (dynLambda!26731 lambda!398881 lt!2481270))))

(declare-fun lt!2481339 () Unit!160986)

(declare-fun choose!52011 ((Set Context!12328) Context!12328 Int) Unit!160986)

(assert (=> d!2173366 (= lt!2481339 (choose!52011 lt!2481262 lt!2481270 lambda!398881))))

(assert (=> d!2173366 (= lt!2481262 (set.insert lt!2481270 (as set.empty (Set Context!12328))))))

(assert (=> d!2173366 (= (lemmaFlatMapOnSingletonSet!1669 lt!2481262 lt!2481270 lambda!398881) lt!2481339)))

(declare-fun b_lambda!261457 () Bool)

(assert (=> (not b_lambda!261457) (not d!2173366)))

(declare-fun bs!1860604 () Bool)

(assert (= bs!1860604 d!2173366))

(assert (=> bs!1860604 m!7665748))

(declare-fun m!7665914 () Bool)

(assert (=> bs!1860604 m!7665914))

(declare-fun m!7665916 () Bool)

(assert (=> bs!1860604 m!7665916))

(assert (=> bs!1860604 m!7665764))

(assert (=> b!6979634 d!2173366))

(declare-fun d!2173368 () Bool)

(declare-fun choose!52012 ((Set Context!12328) Int) (Set Context!12328))

(assert (=> d!2173368 (= (flatMap!2154 lt!2481262 lambda!398881) (choose!52012 lt!2481262 lambda!398881))))

(declare-fun bs!1860605 () Bool)

(assert (= bs!1860605 d!2173368))

(declare-fun m!7665918 () Bool)

(assert (=> bs!1860605 m!7665918))

(assert (=> b!6979634 d!2173368))

(declare-fun b!6979743 () Bool)

(declare-fun e!4194885 () (Set Context!12328))

(declare-fun e!4194884 () (Set Context!12328))

(assert (=> b!6979743 (= e!4194885 e!4194884)))

(declare-fun c!1293774 () Bool)

(assert (=> b!6979743 (= c!1293774 (is-Cons!66925 (exprs!6664 lt!2481270)))))

(declare-fun d!2173370 () Bool)

(declare-fun c!1293773 () Bool)

(declare-fun e!4194886 () Bool)

(assert (=> d!2173370 (= c!1293773 e!4194886)))

(declare-fun res!2846214 () Bool)

(assert (=> d!2173370 (=> (not res!2846214) (not e!4194886))))

(assert (=> d!2173370 (= res!2846214 (is-Cons!66925 (exprs!6664 lt!2481270)))))

(assert (=> d!2173370 (= (derivationStepZipperUp!1818 lt!2481270 (h!73374 s!7408)) e!4194885)))

(declare-fun call!633329 () (Set Context!12328))

(declare-fun b!6979744 () Bool)

(assert (=> b!6979744 (= e!4194885 (set.union call!633329 (derivationStepZipperUp!1818 (Context!12329 (t!380792 (exprs!6664 lt!2481270))) (h!73374 s!7408))))))

(declare-fun b!6979745 () Bool)

(assert (=> b!6979745 (= e!4194884 (as set.empty (Set Context!12328)))))

(declare-fun bm!633324 () Bool)

(declare-fun derivationStepZipperDown!1887 (Regex!17168 Context!12328 C!34606) (Set Context!12328))

(assert (=> bm!633324 (= call!633329 (derivationStepZipperDown!1887 (h!73373 (exprs!6664 lt!2481270)) (Context!12329 (t!380792 (exprs!6664 lt!2481270))) (h!73374 s!7408)))))

(declare-fun b!6979746 () Bool)

(assert (=> b!6979746 (= e!4194886 (nullable!6928 (h!73373 (exprs!6664 lt!2481270))))))

(declare-fun b!6979747 () Bool)

(assert (=> b!6979747 (= e!4194884 call!633329)))

(assert (= (and d!2173370 res!2846214) b!6979746))

(assert (= (and d!2173370 c!1293773) b!6979744))

(assert (= (and d!2173370 (not c!1293773)) b!6979743))

(assert (= (and b!6979743 c!1293774) b!6979747))

(assert (= (and b!6979743 (not c!1293774)) b!6979745))

(assert (= (or b!6979744 b!6979747) bm!633324))

(declare-fun m!7665920 () Bool)

(assert (=> b!6979744 m!7665920))

(declare-fun m!7665922 () Bool)

(assert (=> bm!633324 m!7665922))

(declare-fun m!7665924 () Bool)

(assert (=> b!6979746 m!7665924))

(assert (=> b!6979634 d!2173370))

(declare-fun bs!1860606 () Bool)

(declare-fun d!2173372 () Bool)

(assert (= bs!1860606 (and d!2173372 b!6979634)))

(declare-fun lambda!398914 () Int)

(assert (=> bs!1860606 (= lambda!398914 lambda!398881)))

(assert (=> d!2173372 true))

(assert (=> d!2173372 (= (derivationStepZipper!2648 lt!2481262 (h!73374 s!7408)) (flatMap!2154 lt!2481262 lambda!398914))))

(declare-fun bs!1860607 () Bool)

(assert (= bs!1860607 d!2173372))

(declare-fun m!7665926 () Bool)

(assert (=> bs!1860607 m!7665926))

(assert (=> b!6979634 d!2173372))

(assert (=> b!6979634 d!2173346))

(declare-fun d!2173374 () Bool)

(declare-fun res!2846215 () Bool)

(declare-fun e!4194887 () Bool)

(assert (=> d!2173374 (=> res!2846215 e!4194887)))

(assert (=> d!2173374 (= res!2846215 (is-Nil!66925 (exprs!6664 ct2!306)))))

(assert (=> d!2173374 (= (forall!16051 (exprs!6664 ct2!306) lambda!398880) e!4194887)))

(declare-fun b!6979750 () Bool)

(declare-fun e!4194888 () Bool)

(assert (=> b!6979750 (= e!4194887 e!4194888)))

(declare-fun res!2846216 () Bool)

(assert (=> b!6979750 (=> (not res!2846216) (not e!4194888))))

(assert (=> b!6979750 (= res!2846216 (dynLambda!26728 lambda!398880 (h!73373 (exprs!6664 ct2!306))))))

(declare-fun b!6979751 () Bool)

(assert (=> b!6979751 (= e!4194888 (forall!16051 (t!380792 (exprs!6664 ct2!306)) lambda!398880))))

(assert (= (and d!2173374 (not res!2846215)) b!6979750))

(assert (= (and b!6979750 res!2846216) b!6979751))

(declare-fun b_lambda!261459 () Bool)

(assert (=> (not b_lambda!261459) (not b!6979750)))

(declare-fun m!7665928 () Bool)

(assert (=> b!6979750 m!7665928))

(declare-fun m!7665930 () Bool)

(assert (=> b!6979751 m!7665930))

(assert (=> b!6979629 d!2173374))

(declare-fun d!2173378 () Bool)

(declare-fun c!1293777 () Bool)

(assert (=> d!2173378 (= c!1293777 (isEmpty!39065 s!7408))))

(declare-fun e!4194889 () Bool)

(assert (=> d!2173378 (= (matchZipper!2708 lt!2481260 s!7408) e!4194889)))

(declare-fun b!6979752 () Bool)

(assert (=> b!6979752 (= e!4194889 (nullableZipper!2398 lt!2481260))))

(declare-fun b!6979753 () Bool)

(assert (=> b!6979753 (= e!4194889 (matchZipper!2708 (derivationStepZipper!2648 lt!2481260 (head!14068 s!7408)) (tail!13141 s!7408)))))

(assert (= (and d!2173378 c!1293777) b!6979752))

(assert (= (and d!2173378 (not c!1293777)) b!6979753))

(assert (=> d!2173378 m!7665878))

(declare-fun m!7665932 () Bool)

(assert (=> b!6979752 m!7665932))

(assert (=> b!6979753 m!7665882))

(assert (=> b!6979753 m!7665882))

(declare-fun m!7665934 () Bool)

(assert (=> b!6979753 m!7665934))

(assert (=> b!6979753 m!7665886))

(assert (=> b!6979753 m!7665934))

(assert (=> b!6979753 m!7665886))

(declare-fun m!7665936 () Bool)

(assert (=> b!6979753 m!7665936))

(assert (=> start!669534 d!2173378))

(declare-fun bs!1860608 () Bool)

(declare-fun d!2173380 () Bool)

(assert (= bs!1860608 (and d!2173380 b!6979637)))

(declare-fun lambda!398919 () Int)

(assert (=> bs!1860608 (= lambda!398919 lambda!398879)))

(assert (=> d!2173380 true))

(assert (=> d!2173380 (= (appendTo!289 z1!570 ct2!306) (map!15419 z1!570 lambda!398919))))

(declare-fun bs!1860609 () Bool)

(assert (= bs!1860609 d!2173380))

(declare-fun m!7665938 () Bool)

(assert (=> bs!1860609 m!7665938))

(assert (=> start!669534 d!2173380))

(declare-fun bs!1860611 () Bool)

(declare-fun d!2173382 () Bool)

(assert (= bs!1860611 (and d!2173382 b!6979637)))

(declare-fun lambda!398922 () Int)

(assert (=> bs!1860611 (= lambda!398922 lambda!398880)))

(assert (=> d!2173382 (= (inv!85780 ct2!306) (forall!16051 (exprs!6664 ct2!306) lambda!398922))))

(declare-fun bs!1860612 () Bool)

(assert (= bs!1860612 d!2173382))

(declare-fun m!7665942 () Bool)

(assert (=> bs!1860612 m!7665942))

(assert (=> start!669534 d!2173382))

(declare-fun d!2173384 () Bool)

(declare-fun nullableFct!2601 (Regex!17168) Bool)

(assert (=> d!2173384 (= (nullable!6928 (h!73373 (exprs!6664 lt!2481266))) (nullableFct!2601 (h!73373 (exprs!6664 lt!2481266))))))

(declare-fun bs!1860613 () Bool)

(assert (= bs!1860613 d!2173384))

(declare-fun m!7665948 () Bool)

(assert (=> bs!1860613 m!7665948))

(assert (=> b!6979635 d!2173384))

(declare-fun d!2173388 () Bool)

(assert (=> d!2173388 (= (tail!13139 (exprs!6664 lt!2481266)) (t!380792 (exprs!6664 lt!2481266)))))

(assert (=> b!6979635 d!2173388))

(declare-fun bs!1860614 () Bool)

(declare-fun d!2173390 () Bool)

(assert (= bs!1860614 (and d!2173390 b!6979637)))

(declare-fun lambda!398923 () Int)

(assert (=> bs!1860614 (= lambda!398923 lambda!398880)))

(declare-fun bs!1860615 () Bool)

(assert (= bs!1860615 (and d!2173390 d!2173382)))

(assert (=> bs!1860615 (= lambda!398923 lambda!398922)))

(assert (=> d!2173390 (= (inv!85780 setElem!47490) (forall!16051 (exprs!6664 setElem!47490) lambda!398923))))

(declare-fun bs!1860616 () Bool)

(assert (= bs!1860616 d!2173390))

(declare-fun m!7665950 () Bool)

(assert (=> bs!1860616 m!7665950))

(assert (=> setNonEmpty!47490 d!2173390))

(declare-fun b!6979758 () Bool)

(declare-fun e!4194892 () Bool)

(declare-fun tp!1928015 () Bool)

(assert (=> b!6979758 (= e!4194892 (and tp_is_empty!43561 tp!1928015))))

(assert (=> b!6979636 (= tp!1928000 e!4194892)))

(assert (= (and b!6979636 (is-Cons!66926 (t!380793 s!7408))) b!6979758))

(declare-fun b!6979763 () Bool)

(declare-fun e!4194895 () Bool)

(declare-fun tp!1928020 () Bool)

(declare-fun tp!1928021 () Bool)

(assert (=> b!6979763 (= e!4194895 (and tp!1928020 tp!1928021))))

(assert (=> b!6979633 (= tp!1927997 e!4194895)))

(assert (= (and b!6979633 (is-Cons!66925 (exprs!6664 ct2!306))) b!6979763))

(declare-fun b!6979766 () Bool)

(declare-fun e!4194898 () Bool)

(declare-fun tp!1928022 () Bool)

(declare-fun tp!1928023 () Bool)

(assert (=> b!6979766 (= e!4194898 (and tp!1928022 tp!1928023))))

(assert (=> b!6979630 (= tp!1927999 e!4194898)))

(assert (= (and b!6979630 (is-Cons!66925 (exprs!6664 setElem!47490))) b!6979766))

(declare-fun condSetEmpty!47496 () Bool)

(assert (=> setNonEmpty!47490 (= condSetEmpty!47496 (= setRest!47490 (as set.empty (Set Context!12328))))))

(declare-fun setRes!47496 () Bool)

(assert (=> setNonEmpty!47490 (= tp!1927998 setRes!47496)))

(declare-fun setIsEmpty!47496 () Bool)

(assert (=> setIsEmpty!47496 setRes!47496))

(declare-fun tp!1928028 () Bool)

(declare-fun setElem!47496 () Context!12328)

(declare-fun e!4194903 () Bool)

(declare-fun setNonEmpty!47496 () Bool)

(assert (=> setNonEmpty!47496 (= setRes!47496 (and tp!1928028 (inv!85780 setElem!47496) e!4194903))))

(declare-fun setRest!47496 () (Set Context!12328))

(assert (=> setNonEmpty!47496 (= setRest!47490 (set.union (set.insert setElem!47496 (as set.empty (Set Context!12328))) setRest!47496))))

(declare-fun b!6979773 () Bool)

(declare-fun tp!1928029 () Bool)

(assert (=> b!6979773 (= e!4194903 tp!1928029)))

(assert (= (and setNonEmpty!47490 condSetEmpty!47496) setIsEmpty!47496))

(assert (= (and setNonEmpty!47490 (not condSetEmpty!47496)) setNonEmpty!47496))

(assert (= setNonEmpty!47496 b!6979773))

(declare-fun m!7665952 () Bool)

(assert (=> setNonEmpty!47496 m!7665952))

(declare-fun b_lambda!261461 () Bool)

(assert (= b_lambda!261455 (or b!6979642 b_lambda!261461)))

(declare-fun bs!1860617 () Bool)

(declare-fun d!2173392 () Bool)

(assert (= bs!1860617 (and d!2173392 b!6979642)))

(assert (=> bs!1860617 (= (dynLambda!26729 lambda!398878 lt!2481330) (matchZipper!2708 (set.insert lt!2481330 (as set.empty (Set Context!12328))) s!7408))))

(declare-fun m!7665954 () Bool)

(assert (=> bs!1860617 m!7665954))

(assert (=> bs!1860617 m!7665954))

(declare-fun m!7665956 () Bool)

(assert (=> bs!1860617 m!7665956))

(assert (=> d!2173356 d!2173392))

(declare-fun b_lambda!261463 () Bool)

(assert (= b_lambda!261459 (or b!6979637 b_lambda!261463)))

(declare-fun bs!1860618 () Bool)

(declare-fun d!2173394 () Bool)

(assert (= bs!1860618 (and d!2173394 b!6979637)))

(declare-fun validRegex!8833 (Regex!17168) Bool)

(assert (=> bs!1860618 (= (dynLambda!26728 lambda!398880 (h!73373 (exprs!6664 ct2!306))) (validRegex!8833 (h!73373 (exprs!6664 ct2!306))))))

(declare-fun m!7665958 () Bool)

(assert (=> bs!1860618 m!7665958))

(assert (=> b!6979750 d!2173394))

(declare-fun b_lambda!261465 () Bool)

(assert (= b_lambda!261457 (or b!6979634 b_lambda!261465)))

(declare-fun bs!1860619 () Bool)

(declare-fun d!2173396 () Bool)

(assert (= bs!1860619 (and d!2173396 b!6979634)))

(assert (=> bs!1860619 (= (dynLambda!26731 lambda!398881 lt!2481270) (derivationStepZipperUp!1818 lt!2481270 (h!73374 s!7408)))))

(assert (=> bs!1860619 m!7665756))

(assert (=> d!2173366 d!2173396))

(declare-fun b_lambda!261467 () Bool)

(assert (= b_lambda!261453 (or b!6979637 b_lambda!261467)))

(declare-fun bs!1860620 () Bool)

(declare-fun d!2173398 () Bool)

(assert (= bs!1860620 (and d!2173398 b!6979637)))

(assert (=> bs!1860620 (= (dynLambda!26728 lambda!398880 (h!73373 lt!2481268)) (validRegex!8833 (h!73373 lt!2481268)))))

(declare-fun m!7665960 () Bool)

(assert (=> bs!1860620 m!7665960))

(assert (=> b!6979717 d!2173398))

(declare-fun b_lambda!261469 () Bool)

(assert (= b_lambda!261451 (or b!6979637 b_lambda!261469)))

(declare-fun bs!1860621 () Bool)

(declare-fun d!2173400 () Bool)

(assert (= bs!1860621 (and d!2173400 b!6979637)))

(declare-fun lt!2481345 () Unit!160986)

(assert (=> bs!1860621 (= lt!2481345 (lemmaConcatPreservesForall!504 (exprs!6664 lt!2481326) (exprs!6664 ct2!306) lambda!398880))))

(assert (=> bs!1860621 (= (dynLambda!26727 lambda!398879 lt!2481326) (Context!12329 (++!15113 (exprs!6664 lt!2481326) (exprs!6664 ct2!306))))))

(declare-fun m!7665962 () Bool)

(assert (=> bs!1860621 m!7665962))

(declare-fun m!7665964 () Bool)

(assert (=> bs!1860621 m!7665964))

(assert (=> d!2173348 d!2173400))

(push 1)

(assert (not b!6979718))

(assert (not b!6979751))

(assert (not d!2173382))

(assert (not b!6979773))

(assert (not b_lambda!261461))

(assert (not b!6979766))

(assert (not bs!1860619))

(assert (not b_lambda!261465))

(assert (not b!6979752))

(assert (not d!2173380))

(assert (not d!2173372))

(assert (not bs!1860618))

(assert (not bm!633324))

(assert (not bs!1860617))

(assert (not b!6979707))

(assert (not b!6979724))

(assert (not b!6979744))

(assert (not d!2173362))

(assert (not b!6979706))

(assert (not setNonEmpty!47496))

(assert (not d!2173360))

(assert (not d!2173390))

(assert (not bs!1860620))

(assert (not d!2173368))

(assert (not d!2173384))

(assert (not b!6979763))

(assert tp_is_empty!43561)

(assert (not d!2173378))

(assert (not b_lambda!261463))

(assert (not b!6979746))

(assert (not d!2173354))

(assert (not d!2173344))

(assert (not b!6979723))

(assert (not d!2173358))

(assert (not b_lambda!261469))

(assert (not d!2173366))

(assert (not d!2173352))

(assert (not bs!1860621))

(assert (not b!6979753))

(assert (not d!2173346))

(assert (not b!6979732))

(assert (not d!2173348))

(assert (not b!6979758))

(assert (not b_lambda!261467))

(assert (not d!2173356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

