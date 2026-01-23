; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710712 () Bool)

(assert start!710712)

(declare-fun b!7293432 () Bool)

(declare-fun e!4368461 () Bool)

(declare-fun tp!2061835 () Bool)

(assert (=> b!7293432 (= e!4368461 tp!2061835)))

(declare-fun b!7293433 () Bool)

(declare-fun e!4368463 () Bool)

(declare-fun tp_is_empty!47153 () Bool)

(declare-fun tp!2061833 () Bool)

(assert (=> b!7293433 (= e!4368463 (and tp_is_empty!47153 tp!2061833))))

(declare-fun b!7293434 () Bool)

(declare-fun e!4368460 () Bool)

(declare-fun tp!2061834 () Bool)

(assert (=> b!7293434 (= e!4368460 tp!2061834)))

(declare-fun res!2950247 () Bool)

(declare-fun e!4368462 () Bool)

(assert (=> start!710712 (=> (not res!2950247) (not e!4368462))))

(declare-datatypes ((C!37962 0))(
  ( (C!37963 (val!28929 Int)) )
))
(declare-datatypes ((Regex!18844 0))(
  ( (ElementMatch!18844 (c!1355276 C!37962)) (Concat!27689 (regOne!38200 Regex!18844) (regTwo!38200 Regex!18844)) (EmptyExpr!18844) (Star!18844 (reg!19173 Regex!18844)) (EmptyLang!18844) (Union!18844 (regOne!38201 Regex!18844) (regTwo!38201 Regex!18844)) )
))
(declare-datatypes ((List!71005 0))(
  ( (Nil!70881) (Cons!70881 (h!77329 Regex!18844) (t!385079 List!71005)) )
))
(declare-datatypes ((Context!15568 0))(
  ( (Context!15569 (exprs!8284 List!71005)) )
))
(declare-fun ct2!346 () Context!15568)

(declare-datatypes ((List!71006 0))(
  ( (Nil!70882) (Cons!70882 (h!77330 C!37962) (t!385080 List!71006)) )
))
(declare-fun s!7854 () List!71006)

(declare-fun matchZipper!3748 ((Set Context!15568) List!71006) Bool)

(assert (=> start!710712 (= res!2950247 (matchZipper!3748 (set.insert ct2!346 (as set.empty (Set Context!15568))) s!7854))))

(assert (=> start!710712 e!4368462))

(declare-fun inv!90121 (Context!15568) Bool)

(assert (=> start!710712 (and (inv!90121 ct2!346) e!4368460)))

(assert (=> start!710712 e!4368463))

(declare-fun ct1!250 () Context!15568)

(assert (=> start!710712 (and (inv!90121 ct1!250) e!4368461)))

(declare-fun b!7293435 () Bool)

(declare-fun res!2950246 () Bool)

(assert (=> b!7293435 (=> (not res!2950246) (not e!4368462))))

(declare-fun nullableContext!334 (Context!15568) Bool)

(assert (=> b!7293435 (= res!2950246 (nullableContext!334 ct1!250))))

(declare-fun b!7293436 () Bool)

(declare-fun size!41847 (List!71005) Int)

(assert (=> b!7293436 (= e!4368462 (< (size!41847 (exprs!8284 ct1!250)) 0))))

(assert (= (and start!710712 res!2950247) b!7293435))

(assert (= (and b!7293435 res!2950246) b!7293436))

(assert (= start!710712 b!7293434))

(assert (= (and start!710712 (is-Cons!70882 s!7854)) b!7293433))

(assert (= start!710712 b!7293432))

(declare-fun m!7964830 () Bool)

(assert (=> start!710712 m!7964830))

(assert (=> start!710712 m!7964830))

(declare-fun m!7964832 () Bool)

(assert (=> start!710712 m!7964832))

(declare-fun m!7964834 () Bool)

(assert (=> start!710712 m!7964834))

(declare-fun m!7964836 () Bool)

(assert (=> start!710712 m!7964836))

(declare-fun m!7964838 () Bool)

(assert (=> b!7293435 m!7964838))

(declare-fun m!7964840 () Bool)

(assert (=> b!7293436 m!7964840))

(push 1)

(assert (not b!7293435))

(assert (not b!7293433))

(assert (not start!710712))

(assert tp_is_empty!47153)

(assert (not b!7293432))

(assert (not b!7293436))

(assert (not b!7293434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2265877 () Bool)

(declare-fun lt!2597060 () Int)

(assert (=> d!2265877 (>= lt!2597060 0)))

(declare-fun e!4368480 () Int)

(assert (=> d!2265877 (= lt!2597060 e!4368480)))

(declare-fun c!1355282 () Bool)

(assert (=> d!2265877 (= c!1355282 (is-Nil!70881 (exprs!8284 ct1!250)))))

(assert (=> d!2265877 (= (size!41847 (exprs!8284 ct1!250)) lt!2597060)))

(declare-fun b!7293460 () Bool)

(assert (=> b!7293460 (= e!4368480 0)))

(declare-fun b!7293461 () Bool)

(assert (=> b!7293461 (= e!4368480 (+ 1 (size!41847 (t!385079 (exprs!8284 ct1!250)))))))

(assert (= (and d!2265877 c!1355282) b!7293460))

(assert (= (and d!2265877 (not c!1355282)) b!7293461))

(declare-fun m!7964854 () Bool)

(assert (=> b!7293461 m!7964854))

(assert (=> b!7293436 d!2265877))

(declare-fun d!2265881 () Bool)

(declare-fun lambda!449896 () Int)

(declare-fun forall!17671 (List!71005 Int) Bool)

(assert (=> d!2265881 (= (nullableContext!334 ct1!250) (forall!17671 (exprs!8284 ct1!250) lambda!449896))))

(declare-fun bs!1912494 () Bool)

(assert (= bs!1912494 d!2265881))

(declare-fun m!7964870 () Bool)

(assert (=> bs!1912494 m!7964870))

(assert (=> b!7293435 d!2265881))

(declare-fun d!2265887 () Bool)

(declare-fun c!1355290 () Bool)

(declare-fun isEmpty!40770 (List!71006) Bool)

(assert (=> d!2265887 (= c!1355290 (isEmpty!40770 s!7854))))

(declare-fun e!4368487 () Bool)

(assert (=> d!2265887 (= (matchZipper!3748 (set.insert ct2!346 (as set.empty (Set Context!15568))) s!7854) e!4368487)))

(declare-fun b!7293474 () Bool)

(declare-fun nullableZipper!3044 ((Set Context!15568)) Bool)

(assert (=> b!7293474 (= e!4368487 (nullableZipper!3044 (set.insert ct2!346 (as set.empty (Set Context!15568)))))))

(declare-fun b!7293475 () Bool)

(declare-fun derivationStepZipper!3580 ((Set Context!15568) C!37962) (Set Context!15568))

(declare-fun head!15042 (List!71006) C!37962)

(declare-fun tail!14555 (List!71006) List!71006)

(assert (=> b!7293475 (= e!4368487 (matchZipper!3748 (derivationStepZipper!3580 (set.insert ct2!346 (as set.empty (Set Context!15568))) (head!15042 s!7854)) (tail!14555 s!7854)))))

(assert (= (and d!2265887 c!1355290) b!7293474))

(assert (= (and d!2265887 (not c!1355290)) b!7293475))

(declare-fun m!7964872 () Bool)

(assert (=> d!2265887 m!7964872))

(assert (=> b!7293474 m!7964830))

(declare-fun m!7964874 () Bool)

(assert (=> b!7293474 m!7964874))

(declare-fun m!7964876 () Bool)

(assert (=> b!7293475 m!7964876))

(assert (=> b!7293475 m!7964830))

(assert (=> b!7293475 m!7964876))

(declare-fun m!7964878 () Bool)

(assert (=> b!7293475 m!7964878))

(declare-fun m!7964880 () Bool)

(assert (=> b!7293475 m!7964880))

(assert (=> b!7293475 m!7964878))

(assert (=> b!7293475 m!7964880))

(declare-fun m!7964882 () Bool)

(assert (=> b!7293475 m!7964882))

(assert (=> start!710712 d!2265887))

(declare-fun bs!1912495 () Bool)

(declare-fun d!2265889 () Bool)

(assert (= bs!1912495 (and d!2265889 d!2265881)))

(declare-fun lambda!449899 () Int)

(assert (=> bs!1912495 (not (= lambda!449899 lambda!449896))))

(assert (=> d!2265889 (= (inv!90121 ct2!346) (forall!17671 (exprs!8284 ct2!346) lambda!449899))))

(declare-fun bs!1912496 () Bool)

(assert (= bs!1912496 d!2265889))

(declare-fun m!7964884 () Bool)

(assert (=> bs!1912496 m!7964884))

(assert (=> start!710712 d!2265889))

(declare-fun bs!1912497 () Bool)

(declare-fun d!2265891 () Bool)

(assert (= bs!1912497 (and d!2265891 d!2265881)))

(declare-fun lambda!449900 () Int)

(assert (=> bs!1912497 (not (= lambda!449900 lambda!449896))))

(declare-fun bs!1912498 () Bool)

(assert (= bs!1912498 (and d!2265891 d!2265889)))

(assert (=> bs!1912498 (= lambda!449900 lambda!449899)))

(assert (=> d!2265891 (= (inv!90121 ct1!250) (forall!17671 (exprs!8284 ct1!250) lambda!449900))))

(declare-fun bs!1912499 () Bool)

(assert (= bs!1912499 d!2265891))

(declare-fun m!7964886 () Bool)

(assert (=> bs!1912499 m!7964886))

(assert (=> start!710712 d!2265891))

(declare-fun b!7293480 () Bool)

(declare-fun e!4368490 () Bool)

(declare-fun tp!2061849 () Bool)

(declare-fun tp!2061850 () Bool)

(assert (=> b!7293480 (= e!4368490 (and tp!2061849 tp!2061850))))

(assert (=> b!7293432 (= tp!2061835 e!4368490)))

(assert (= (and b!7293432 (is-Cons!70881 (exprs!8284 ct1!250))) b!7293480))

(declare-fun b!7293485 () Bool)

(declare-fun e!4368493 () Bool)

(declare-fun tp!2061853 () Bool)

(assert (=> b!7293485 (= e!4368493 (and tp_is_empty!47153 tp!2061853))))

(assert (=> b!7293433 (= tp!2061833 e!4368493)))

(assert (= (and b!7293433 (is-Cons!70882 (t!385080 s!7854))) b!7293485))

(declare-fun b!7293486 () Bool)

(declare-fun e!4368494 () Bool)

(declare-fun tp!2061854 () Bool)

(declare-fun tp!2061855 () Bool)

(assert (=> b!7293486 (= e!4368494 (and tp!2061854 tp!2061855))))

(assert (=> b!7293434 (= tp!2061834 e!4368494)))

(assert (= (and b!7293434 (is-Cons!70881 (exprs!8284 ct2!346))) b!7293486))

(push 1)

(assert (not d!2265881))

(assert (not d!2265887))

(assert (not d!2265891))

(assert (not b!7293486))

(assert (not b!7293485))

(assert (not b!7293475))

(assert (not d!2265889))

(assert (not b!7293480))

(assert (not b!7293474))

(assert (not b!7293461))

(assert tp_is_empty!47153)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

