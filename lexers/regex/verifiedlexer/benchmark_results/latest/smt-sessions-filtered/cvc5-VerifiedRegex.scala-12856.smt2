; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710128 () Bool)

(assert start!710128)

(declare-fun b!7273756 () Bool)

(declare-fun res!2948518 () Bool)

(declare-fun e!4361811 () Bool)

(assert (=> b!7273756 (=> (not res!2948518) (not e!4361811))))

(declare-datatypes ((C!37914 0))(
  ( (C!37915 (val!28905 Int)) )
))
(declare-datatypes ((Regex!18820 0))(
  ( (ElementMatch!18820 (c!1354320 C!37914)) (Concat!27665 (regOne!38152 Regex!18820) (regTwo!38152 Regex!18820)) (EmptyExpr!18820) (Star!18820 (reg!19149 Regex!18820)) (EmptyLang!18820) (Union!18820 (regOne!38153 Regex!18820) (regTwo!38153 Regex!18820)) )
))
(declare-datatypes ((List!70955 0))(
  ( (Nil!70831) (Cons!70831 (h!77279 Regex!18820) (t!385027 List!70955)) )
))
(declare-datatypes ((Context!15520 0))(
  ( (Context!15521 (exprs!8260 List!70955)) )
))
(declare-fun ct2!346 () Context!15520)

(declare-fun nullableContext!310 (Context!15520) Bool)

(assert (=> b!7273756 (= res!2948518 (nullableContext!310 ct2!346))))

(declare-fun b!7273757 () Bool)

(declare-fun res!2948516 () Bool)

(assert (=> b!7273757 (=> (not res!2948516) (not e!4361811))))

(declare-fun ct1!250 () Context!15520)

(assert (=> b!7273757 (= res!2948516 (nullableContext!310 ct1!250))))

(declare-fun res!2948519 () Bool)

(assert (=> start!710128 (=> (not res!2948519) (not e!4361811))))

(declare-datatypes ((List!70956 0))(
  ( (Nil!70832) (Cons!70832 (h!77280 C!37914) (t!385028 List!70956)) )
))
(declare-fun s!7854 () List!70956)

(declare-fun matchZipper!3724 ((Set Context!15520) List!70956) Bool)

(assert (=> start!710128 (= res!2948519 (matchZipper!3724 (set.insert ct2!346 (as set.empty (Set Context!15520))) s!7854))))

(assert (=> start!710128 e!4361811))

(declare-fun e!4361810 () Bool)

(declare-fun inv!90061 (Context!15520) Bool)

(assert (=> start!710128 (and (inv!90061 ct2!346) e!4361810)))

(declare-fun e!4361808 () Bool)

(assert (=> start!710128 e!4361808))

(declare-fun e!4361812 () Bool)

(assert (=> start!710128 (and (inv!90061 ct1!250) e!4361812)))

(declare-fun b!7273758 () Bool)

(declare-fun e!4361809 () Bool)

(assert (=> b!7273758 (= e!4361811 e!4361809)))

(declare-fun res!2948520 () Bool)

(assert (=> b!7273758 (=> (not res!2948520) (not e!4361809))))

(declare-fun lambda!449374 () Int)

(declare-fun forall!17647 (List!70955 Int) Bool)

(assert (=> b!7273758 (= res!2948520 (forall!17647 (exprs!8260 ct1!250) lambda!449374))))

(declare-fun b!7273759 () Bool)

(declare-fun res!2948517 () Bool)

(assert (=> b!7273759 (=> (not res!2948517) (not e!4361811))))

(assert (=> b!7273759 (= res!2948517 (not (is-Cons!70832 s!7854)))))

(declare-fun b!7273760 () Bool)

(assert (=> b!7273760 (= e!4361809 (not (forall!17647 (exprs!8260 ct2!346) lambda!449374)))))

(declare-fun b!7273761 () Bool)

(declare-fun tp_is_empty!47105 () Bool)

(declare-fun tp!2041573 () Bool)

(assert (=> b!7273761 (= e!4361808 (and tp_is_empty!47105 tp!2041573))))

(declare-fun b!7273762 () Bool)

(declare-fun tp!2041572 () Bool)

(assert (=> b!7273762 (= e!4361810 tp!2041572)))

(declare-fun b!7273763 () Bool)

(declare-fun tp!2041571 () Bool)

(assert (=> b!7273763 (= e!4361812 tp!2041571)))

(assert (= (and start!710128 res!2948519) b!7273757))

(assert (= (and b!7273757 res!2948516) b!7273759))

(assert (= (and b!7273759 res!2948517) b!7273756))

(assert (= (and b!7273756 res!2948518) b!7273758))

(assert (= (and b!7273758 res!2948520) b!7273760))

(assert (= start!710128 b!7273762))

(assert (= (and start!710128 (is-Cons!70832 s!7854)) b!7273761))

(assert (= start!710128 b!7273763))

(declare-fun m!7960334 () Bool)

(assert (=> start!710128 m!7960334))

(assert (=> start!710128 m!7960334))

(declare-fun m!7960336 () Bool)

(assert (=> start!710128 m!7960336))

(declare-fun m!7960338 () Bool)

(assert (=> start!710128 m!7960338))

(declare-fun m!7960340 () Bool)

(assert (=> start!710128 m!7960340))

(declare-fun m!7960342 () Bool)

(assert (=> b!7273760 m!7960342))

(declare-fun m!7960344 () Bool)

(assert (=> b!7273756 m!7960344))

(declare-fun m!7960346 () Bool)

(assert (=> b!7273758 m!7960346))

(declare-fun m!7960348 () Bool)

(assert (=> b!7273757 m!7960348))

(push 1)

(assert (not b!7273760))

(assert (not b!7273756))

(assert (not b!7273762))

(assert (not b!7273758))

(assert (not b!7273763))

(assert (not b!7273757))

(assert (not start!710128))

(assert tp_is_empty!47105)

(assert (not b!7273761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1911634 () Bool)

(declare-fun d!2263877 () Bool)

(assert (= bs!1911634 (and d!2263877 b!7273758)))

(declare-fun lambda!449380 () Int)

(assert (=> bs!1911634 (= lambda!449380 lambda!449374)))

(assert (=> d!2263877 (= (nullableContext!310 ct1!250) (forall!17647 (exprs!8260 ct1!250) lambda!449380))))

(declare-fun bs!1911635 () Bool)

(assert (= bs!1911635 d!2263877))

(declare-fun m!7960366 () Bool)

(assert (=> bs!1911635 m!7960366))

(assert (=> b!7273757 d!2263877))

(declare-fun d!2263879 () Bool)

(declare-fun res!2948540 () Bool)

(declare-fun e!4361832 () Bool)

(assert (=> d!2263879 (=> res!2948540 e!4361832)))

(assert (=> d!2263879 (= res!2948540 (is-Nil!70831 (exprs!8260 ct1!250)))))

(assert (=> d!2263879 (= (forall!17647 (exprs!8260 ct1!250) lambda!449374) e!4361832)))

(declare-fun b!7273792 () Bool)

(declare-fun e!4361833 () Bool)

(assert (=> b!7273792 (= e!4361832 e!4361833)))

(declare-fun res!2948541 () Bool)

(assert (=> b!7273792 (=> (not res!2948541) (not e!4361833))))

(declare-fun dynLambda!28961 (Int Regex!18820) Bool)

(assert (=> b!7273792 (= res!2948541 (dynLambda!28961 lambda!449374 (h!77279 (exprs!8260 ct1!250))))))

(declare-fun b!7273793 () Bool)

(assert (=> b!7273793 (= e!4361833 (forall!17647 (t!385027 (exprs!8260 ct1!250)) lambda!449374))))

(assert (= (and d!2263879 (not res!2948540)) b!7273792))

(assert (= (and b!7273792 res!2948541) b!7273793))

(declare-fun b_lambda!280629 () Bool)

(assert (=> (not b_lambda!280629) (not b!7273792)))

(declare-fun m!7960368 () Bool)

(assert (=> b!7273792 m!7960368))

(declare-fun m!7960370 () Bool)

(assert (=> b!7273793 m!7960370))

(assert (=> b!7273758 d!2263879))

(declare-fun d!2263883 () Bool)

(declare-fun c!1354325 () Bool)

(declare-fun isEmpty!40740 (List!70956) Bool)

(assert (=> d!2263883 (= c!1354325 (isEmpty!40740 s!7854))))

(declare-fun e!4361842 () Bool)

(assert (=> d!2263883 (= (matchZipper!3724 (set.insert ct2!346 (as set.empty (Set Context!15520))) s!7854) e!4361842)))

(declare-fun b!7273804 () Bool)

(declare-fun nullableZipper!3022 ((Set Context!15520)) Bool)

(assert (=> b!7273804 (= e!4361842 (nullableZipper!3022 (set.insert ct2!346 (as set.empty (Set Context!15520)))))))

(declare-fun b!7273805 () Bool)

(declare-fun derivationStepZipper!3558 ((Set Context!15520) C!37914) (Set Context!15520))

(declare-fun head!15020 (List!70956) C!37914)

(declare-fun tail!14527 (List!70956) List!70956)

(assert (=> b!7273805 (= e!4361842 (matchZipper!3724 (derivationStepZipper!3558 (set.insert ct2!346 (as set.empty (Set Context!15520))) (head!15020 s!7854)) (tail!14527 s!7854)))))

(assert (= (and d!2263883 c!1354325) b!7273804))

(assert (= (and d!2263883 (not c!1354325)) b!7273805))

(declare-fun m!7960376 () Bool)

(assert (=> d!2263883 m!7960376))

(assert (=> b!7273804 m!7960334))

(declare-fun m!7960378 () Bool)

(assert (=> b!7273804 m!7960378))

(declare-fun m!7960380 () Bool)

(assert (=> b!7273805 m!7960380))

(assert (=> b!7273805 m!7960334))

(assert (=> b!7273805 m!7960380))

(declare-fun m!7960382 () Bool)

(assert (=> b!7273805 m!7960382))

(declare-fun m!7960384 () Bool)

(assert (=> b!7273805 m!7960384))

(assert (=> b!7273805 m!7960382))

(assert (=> b!7273805 m!7960384))

(declare-fun m!7960386 () Bool)

(assert (=> b!7273805 m!7960386))

(assert (=> start!710128 d!2263883))

(declare-fun bs!1911636 () Bool)

(declare-fun d!2263887 () Bool)

(assert (= bs!1911636 (and d!2263887 b!7273758)))

(declare-fun lambda!449385 () Int)

(assert (=> bs!1911636 (not (= lambda!449385 lambda!449374))))

(declare-fun bs!1911637 () Bool)

(assert (= bs!1911637 (and d!2263887 d!2263877)))

(assert (=> bs!1911637 (not (= lambda!449385 lambda!449380))))

(assert (=> d!2263887 (= (inv!90061 ct2!346) (forall!17647 (exprs!8260 ct2!346) lambda!449385))))

(declare-fun bs!1911638 () Bool)

(assert (= bs!1911638 d!2263887))

(declare-fun m!7960388 () Bool)

(assert (=> bs!1911638 m!7960388))

(assert (=> start!710128 d!2263887))

(declare-fun bs!1911639 () Bool)

(declare-fun d!2263889 () Bool)

(assert (= bs!1911639 (and d!2263889 b!7273758)))

(declare-fun lambda!449387 () Int)

(assert (=> bs!1911639 (not (= lambda!449387 lambda!449374))))

(declare-fun bs!1911641 () Bool)

(assert (= bs!1911641 (and d!2263889 d!2263877)))

(assert (=> bs!1911641 (not (= lambda!449387 lambda!449380))))

(declare-fun bs!1911642 () Bool)

(assert (= bs!1911642 (and d!2263889 d!2263887)))

(assert (=> bs!1911642 (= lambda!449387 lambda!449385)))

(assert (=> d!2263889 (= (inv!90061 ct1!250) (forall!17647 (exprs!8260 ct1!250) lambda!449387))))

(declare-fun bs!1911643 () Bool)

(assert (= bs!1911643 d!2263889))

(declare-fun m!7960390 () Bool)

(assert (=> bs!1911643 m!7960390))

(assert (=> start!710128 d!2263889))

(declare-fun d!2263891 () Bool)

(declare-fun res!2948548 () Bool)

(declare-fun e!4361843 () Bool)

(assert (=> d!2263891 (=> res!2948548 e!4361843)))

(assert (=> d!2263891 (= res!2948548 (is-Nil!70831 (exprs!8260 ct2!346)))))

(assert (=> d!2263891 (= (forall!17647 (exprs!8260 ct2!346) lambda!449374) e!4361843)))

(declare-fun b!7273806 () Bool)

(declare-fun e!4361844 () Bool)

(assert (=> b!7273806 (= e!4361843 e!4361844)))

(declare-fun res!2948549 () Bool)

(assert (=> b!7273806 (=> (not res!2948549) (not e!4361844))))

(assert (=> b!7273806 (= res!2948549 (dynLambda!28961 lambda!449374 (h!77279 (exprs!8260 ct2!346))))))

(declare-fun b!7273807 () Bool)

(assert (=> b!7273807 (= e!4361844 (forall!17647 (t!385027 (exprs!8260 ct2!346)) lambda!449374))))

(assert (= (and d!2263891 (not res!2948548)) b!7273806))

(assert (= (and b!7273806 res!2948549) b!7273807))

(declare-fun b_lambda!280633 () Bool)

(assert (=> (not b_lambda!280633) (not b!7273806)))

(declare-fun m!7960394 () Bool)

(assert (=> b!7273806 m!7960394))

(declare-fun m!7960396 () Bool)

(assert (=> b!7273807 m!7960396))

(assert (=> b!7273760 d!2263891))

(declare-fun bs!1911645 () Bool)

(declare-fun d!2263895 () Bool)

(assert (= bs!1911645 (and d!2263895 b!7273758)))

(declare-fun lambda!449389 () Int)

(assert (=> bs!1911645 (= lambda!449389 lambda!449374)))

(declare-fun bs!1911647 () Bool)

(assert (= bs!1911647 (and d!2263895 d!2263877)))

(assert (=> bs!1911647 (= lambda!449389 lambda!449380)))

(declare-fun bs!1911648 () Bool)

(assert (= bs!1911648 (and d!2263895 d!2263887)))

(assert (=> bs!1911648 (not (= lambda!449389 lambda!449385))))

(declare-fun bs!1911650 () Bool)

(assert (= bs!1911650 (and d!2263895 d!2263889)))

(assert (=> bs!1911650 (not (= lambda!449389 lambda!449387))))

(assert (=> d!2263895 (= (nullableContext!310 ct2!346) (forall!17647 (exprs!8260 ct2!346) lambda!449389))))

(declare-fun bs!1911651 () Bool)

(assert (= bs!1911651 d!2263895))

(declare-fun m!7960398 () Bool)

(assert (=> bs!1911651 m!7960398))

(assert (=> b!7273756 d!2263895))

(declare-fun b!7273812 () Bool)

(declare-fun e!4361847 () Bool)

(declare-fun tp!2041587 () Bool)

(declare-fun tp!2041588 () Bool)

(assert (=> b!7273812 (= e!4361847 (and tp!2041587 tp!2041588))))

(assert (=> b!7273762 (= tp!2041572 e!4361847)))

(assert (= (and b!7273762 (is-Cons!70831 (exprs!8260 ct2!346))) b!7273812))

(declare-fun b!7273813 () Bool)

(declare-fun e!4361848 () Bool)

(declare-fun tp!2041589 () Bool)

(declare-fun tp!2041590 () Bool)

(assert (=> b!7273813 (= e!4361848 (and tp!2041589 tp!2041590))))

(assert (=> b!7273763 (= tp!2041571 e!4361848)))

(assert (= (and b!7273763 (is-Cons!70831 (exprs!8260 ct1!250))) b!7273813))

(declare-fun b!7273818 () Bool)

(declare-fun e!4361851 () Bool)

(declare-fun tp!2041593 () Bool)

(assert (=> b!7273818 (= e!4361851 (and tp_is_empty!47105 tp!2041593))))

(assert (=> b!7273761 (= tp!2041573 e!4361851)))

(assert (= (and b!7273761 (is-Cons!70832 (t!385028 s!7854))) b!7273818))

(declare-fun b_lambda!280635 () Bool)

(assert (= b_lambda!280633 (or b!7273758 b_lambda!280635)))

(declare-fun bs!1911653 () Bool)

(declare-fun d!2263899 () Bool)

(assert (= bs!1911653 (and d!2263899 b!7273758)))

(declare-fun nullable!8014 (Regex!18820) Bool)

(assert (=> bs!1911653 (= (dynLambda!28961 lambda!449374 (h!77279 (exprs!8260 ct2!346))) (nullable!8014 (h!77279 (exprs!8260 ct2!346))))))

(declare-fun m!7960402 () Bool)

(assert (=> bs!1911653 m!7960402))

(assert (=> b!7273806 d!2263899))

(declare-fun b_lambda!280637 () Bool)

(assert (= b_lambda!280629 (or b!7273758 b_lambda!280637)))

(declare-fun bs!1911654 () Bool)

(declare-fun d!2263901 () Bool)

(assert (= bs!1911654 (and d!2263901 b!7273758)))

(assert (=> bs!1911654 (= (dynLambda!28961 lambda!449374 (h!77279 (exprs!8260 ct1!250))) (nullable!8014 (h!77279 (exprs!8260 ct1!250))))))

(declare-fun m!7960404 () Bool)

(assert (=> bs!1911654 m!7960404))

(assert (=> b!7273792 d!2263901))

(push 1)

(assert (not d!2263877))

(assert (not b!7273805))

(assert (not bs!1911653))

(assert (not bs!1911654))

(assert (not b_lambda!280635))

(assert (not d!2263887))

(assert (not b!7273793))

(assert tp_is_empty!47105)

(assert (not b!7273818))

(assert (not d!2263889))

(assert (not d!2263883))

(assert (not b_lambda!280637))

(assert (not b!7273812))

(assert (not b!7273804))

(assert (not b!7273807))

(assert (not d!2263895))

(assert (not b!7273813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

