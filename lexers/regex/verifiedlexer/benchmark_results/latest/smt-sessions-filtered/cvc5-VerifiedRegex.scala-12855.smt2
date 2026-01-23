; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710108 () Bool)

(assert start!710108)

(declare-fun b!7273666 () Bool)

(declare-fun res!2948480 () Bool)

(declare-fun e!4361751 () Bool)

(assert (=> b!7273666 (=> (not res!2948480) (not e!4361751))))

(declare-datatypes ((C!37910 0))(
  ( (C!37911 (val!28903 Int)) )
))
(declare-datatypes ((List!70951 0))(
  ( (Nil!70827) (Cons!70827 (h!77275 C!37910) (t!385023 List!70951)) )
))
(declare-fun s!7854 () List!70951)

(assert (=> b!7273666 (= res!2948480 (not (is-Cons!70827 s!7854)))))

(declare-fun b!7273667 () Bool)

(declare-fun res!2948478 () Bool)

(assert (=> b!7273667 (=> (not res!2948478) (not e!4361751))))

(declare-datatypes ((Regex!18818 0))(
  ( (ElementMatch!18818 (c!1354310 C!37910)) (Concat!27663 (regOne!38148 Regex!18818) (regTwo!38148 Regex!18818)) (EmptyExpr!18818) (Star!18818 (reg!19147 Regex!18818)) (EmptyLang!18818) (Union!18818 (regOne!38149 Regex!18818) (regTwo!38149 Regex!18818)) )
))
(declare-datatypes ((List!70952 0))(
  ( (Nil!70828) (Cons!70828 (h!77276 Regex!18818) (t!385024 List!70952)) )
))
(declare-datatypes ((Context!15516 0))(
  ( (Context!15517 (exprs!8258 List!70952)) )
))
(declare-fun ct2!346 () Context!15516)

(declare-fun nullableContext!308 (Context!15516) Bool)

(assert (=> b!7273667 (= res!2948478 (nullableContext!308 ct2!346))))

(declare-fun b!7273668 () Bool)

(declare-fun ct1!250 () Context!15516)

(declare-fun lambda!449352 () Int)

(declare-fun forall!17645 (List!70952 Int) Bool)

(assert (=> b!7273668 (= e!4361751 (not (forall!17645 (exprs!8258 ct1!250) lambda!449352)))))

(declare-fun res!2948479 () Bool)

(assert (=> start!710108 (=> (not res!2948479) (not e!4361751))))

(declare-fun matchZipper!3722 ((Set Context!15516) List!70951) Bool)

(assert (=> start!710108 (= res!2948479 (matchZipper!3722 (set.insert ct2!346 (as set.empty (Set Context!15516))) s!7854))))

(assert (=> start!710108 e!4361751))

(declare-fun e!4361753 () Bool)

(declare-fun inv!90056 (Context!15516) Bool)

(assert (=> start!710108 (and (inv!90056 ct2!346) e!4361753)))

(declare-fun e!4361750 () Bool)

(assert (=> start!710108 e!4361750))

(declare-fun e!4361752 () Bool)

(assert (=> start!710108 (and (inv!90056 ct1!250) e!4361752)))

(declare-fun b!7273669 () Bool)

(declare-fun tp_is_empty!47101 () Bool)

(declare-fun tp!2041533 () Bool)

(assert (=> b!7273669 (= e!4361750 (and tp_is_empty!47101 tp!2041533))))

(declare-fun b!7273670 () Bool)

(declare-fun res!2948481 () Bool)

(assert (=> b!7273670 (=> (not res!2948481) (not e!4361751))))

(assert (=> b!7273670 (= res!2948481 (nullableContext!308 ct1!250))))

(declare-fun b!7273671 () Bool)

(declare-fun tp!2041532 () Bool)

(assert (=> b!7273671 (= e!4361752 tp!2041532)))

(declare-fun b!7273672 () Bool)

(declare-fun tp!2041531 () Bool)

(assert (=> b!7273672 (= e!4361753 tp!2041531)))

(assert (= (and start!710108 res!2948479) b!7273670))

(assert (= (and b!7273670 res!2948481) b!7273666))

(assert (= (and b!7273666 res!2948480) b!7273667))

(assert (= (and b!7273667 res!2948478) b!7273668))

(assert (= start!710108 b!7273672))

(assert (= (and start!710108 (is-Cons!70827 s!7854)) b!7273669))

(assert (= start!710108 b!7273671))

(declare-fun m!7960254 () Bool)

(assert (=> b!7273667 m!7960254))

(declare-fun m!7960256 () Bool)

(assert (=> b!7273668 m!7960256))

(declare-fun m!7960258 () Bool)

(assert (=> start!710108 m!7960258))

(assert (=> start!710108 m!7960258))

(declare-fun m!7960260 () Bool)

(assert (=> start!710108 m!7960260))

(declare-fun m!7960262 () Bool)

(assert (=> start!710108 m!7960262))

(declare-fun m!7960264 () Bool)

(assert (=> start!710108 m!7960264))

(declare-fun m!7960266 () Bool)

(assert (=> b!7273670 m!7960266))

(push 1)

(assert (not b!7273672))

(assert tp_is_empty!47101)

(assert (not b!7273669))

(assert (not b!7273671))

(assert (not b!7273670))

(assert (not start!710108))

(assert (not b!7273668))

(assert (not b!7273667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1911602 () Bool)

(declare-fun d!2263848 () Bool)

(assert (= bs!1911602 (and d!2263848 b!7273668)))

(declare-fun lambda!449358 () Int)

(assert (=> bs!1911602 (= lambda!449358 lambda!449352)))

(assert (=> d!2263848 (= (nullableContext!308 ct1!250) (forall!17645 (exprs!8258 ct1!250) lambda!449358))))

(declare-fun bs!1911603 () Bool)

(assert (= bs!1911603 d!2263848))

(declare-fun m!7960282 () Bool)

(assert (=> bs!1911603 m!7960282))

(assert (=> b!7273670 d!2263848))

(declare-fun bs!1911604 () Bool)

(declare-fun d!2263850 () Bool)

(assert (= bs!1911604 (and d!2263850 b!7273668)))

(declare-fun lambda!449359 () Int)

(assert (=> bs!1911604 (= lambda!449359 lambda!449352)))

(declare-fun bs!1911605 () Bool)

(assert (= bs!1911605 (and d!2263850 d!2263848)))

(assert (=> bs!1911605 (= lambda!449359 lambda!449358)))

(assert (=> d!2263850 (= (nullableContext!308 ct2!346) (forall!17645 (exprs!8258 ct2!346) lambda!449359))))

(declare-fun bs!1911606 () Bool)

(assert (= bs!1911606 d!2263850))

(declare-fun m!7960284 () Bool)

(assert (=> bs!1911606 m!7960284))

(assert (=> b!7273667 d!2263850))

(declare-fun d!2263852 () Bool)

(declare-fun c!1354316 () Bool)

(declare-fun isEmpty!40738 (List!70951) Bool)

(assert (=> d!2263852 (= c!1354316 (isEmpty!40738 s!7854))))

(declare-fun e!4361768 () Bool)

(assert (=> d!2263852 (= (matchZipper!3722 (set.insert ct2!346 (as set.empty (Set Context!15516))) s!7854) e!4361768)))

(declare-fun b!7273698 () Bool)

(declare-fun nullableZipper!3020 ((Set Context!15516)) Bool)

(assert (=> b!7273698 (= e!4361768 (nullableZipper!3020 (set.insert ct2!346 (as set.empty (Set Context!15516)))))))

(declare-fun b!7273699 () Bool)

(declare-fun derivationStepZipper!3556 ((Set Context!15516) C!37910) (Set Context!15516))

(declare-fun head!15018 (List!70951) C!37910)

(declare-fun tail!14525 (List!70951) List!70951)

(assert (=> b!7273699 (= e!4361768 (matchZipper!3722 (derivationStepZipper!3556 (set.insert ct2!346 (as set.empty (Set Context!15516))) (head!15018 s!7854)) (tail!14525 s!7854)))))

(assert (= (and d!2263852 c!1354316) b!7273698))

(assert (= (and d!2263852 (not c!1354316)) b!7273699))

(declare-fun m!7960286 () Bool)

(assert (=> d!2263852 m!7960286))

(assert (=> b!7273698 m!7960258))

(declare-fun m!7960288 () Bool)

(assert (=> b!7273698 m!7960288))

(declare-fun m!7960290 () Bool)

(assert (=> b!7273699 m!7960290))

(assert (=> b!7273699 m!7960258))

(assert (=> b!7273699 m!7960290))

(declare-fun m!7960292 () Bool)

(assert (=> b!7273699 m!7960292))

(declare-fun m!7960294 () Bool)

(assert (=> b!7273699 m!7960294))

(assert (=> b!7273699 m!7960292))

(assert (=> b!7273699 m!7960294))

(declare-fun m!7960296 () Bool)

(assert (=> b!7273699 m!7960296))

(assert (=> start!710108 d!2263852))

(declare-fun bs!1911609 () Bool)

(declare-fun d!2263856 () Bool)

(assert (= bs!1911609 (and d!2263856 b!7273668)))

(declare-fun lambda!449365 () Int)

(assert (=> bs!1911609 (not (= lambda!449365 lambda!449352))))

(declare-fun bs!1911610 () Bool)

(assert (= bs!1911610 (and d!2263856 d!2263848)))

(assert (=> bs!1911610 (not (= lambda!449365 lambda!449358))))

(declare-fun bs!1911611 () Bool)

(assert (= bs!1911611 (and d!2263856 d!2263850)))

(assert (=> bs!1911611 (not (= lambda!449365 lambda!449359))))

(assert (=> d!2263856 (= (inv!90056 ct2!346) (forall!17645 (exprs!8258 ct2!346) lambda!449365))))

(declare-fun bs!1911612 () Bool)

(assert (= bs!1911612 d!2263856))

(declare-fun m!7960300 () Bool)

(assert (=> bs!1911612 m!7960300))

(assert (=> start!710108 d!2263856))

(declare-fun bs!1911613 () Bool)

(declare-fun d!2263860 () Bool)

(assert (= bs!1911613 (and d!2263860 b!7273668)))

(declare-fun lambda!449366 () Int)

(assert (=> bs!1911613 (not (= lambda!449366 lambda!449352))))

(declare-fun bs!1911614 () Bool)

(assert (= bs!1911614 (and d!2263860 d!2263848)))

(assert (=> bs!1911614 (not (= lambda!449366 lambda!449358))))

(declare-fun bs!1911615 () Bool)

(assert (= bs!1911615 (and d!2263860 d!2263850)))

(assert (=> bs!1911615 (not (= lambda!449366 lambda!449359))))

(declare-fun bs!1911616 () Bool)

(assert (= bs!1911616 (and d!2263860 d!2263856)))

(assert (=> bs!1911616 (= lambda!449366 lambda!449365)))

(assert (=> d!2263860 (= (inv!90056 ct1!250) (forall!17645 (exprs!8258 ct1!250) lambda!449366))))

(declare-fun bs!1911617 () Bool)

(assert (= bs!1911617 d!2263860))

(declare-fun m!7960302 () Bool)

(assert (=> bs!1911617 m!7960302))

(assert (=> start!710108 d!2263860))

(declare-fun d!2263862 () Bool)

(declare-fun res!2948498 () Bool)

(declare-fun e!4361773 () Bool)

(assert (=> d!2263862 (=> res!2948498 e!4361773)))

(assert (=> d!2263862 (= res!2948498 (is-Nil!70828 (exprs!8258 ct1!250)))))

(assert (=> d!2263862 (= (forall!17645 (exprs!8258 ct1!250) lambda!449352) e!4361773)))

(declare-fun b!7273704 () Bool)

(declare-fun e!4361774 () Bool)

(assert (=> b!7273704 (= e!4361773 e!4361774)))

(declare-fun res!2948499 () Bool)

(assert (=> b!7273704 (=> (not res!2948499) (not e!4361774))))

(declare-fun dynLambda!28960 (Int Regex!18818) Bool)

(assert (=> b!7273704 (= res!2948499 (dynLambda!28960 lambda!449352 (h!77276 (exprs!8258 ct1!250))))))

(declare-fun b!7273705 () Bool)

(assert (=> b!7273705 (= e!4361774 (forall!17645 (t!385024 (exprs!8258 ct1!250)) lambda!449352))))

(assert (= (and d!2263862 (not res!2948498)) b!7273704))

(assert (= (and b!7273704 res!2948499) b!7273705))

(declare-fun b_lambda!280621 () Bool)

(assert (=> (not b_lambda!280621) (not b!7273704)))

(declare-fun m!7960304 () Bool)

(assert (=> b!7273704 m!7960304))

(declare-fun m!7960306 () Bool)

(assert (=> b!7273705 m!7960306))

(assert (=> b!7273668 d!2263862))

(declare-fun b!7273710 () Bool)

(declare-fun e!4361777 () Bool)

(declare-fun tp!2041545 () Bool)

(assert (=> b!7273710 (= e!4361777 (and tp_is_empty!47101 tp!2041545))))

(assert (=> b!7273669 (= tp!2041533 e!4361777)))

(assert (= (and b!7273669 (is-Cons!70827 (t!385023 s!7854))) b!7273710))

(declare-fun b!7273715 () Bool)

(declare-fun e!4361780 () Bool)

(declare-fun tp!2041550 () Bool)

(declare-fun tp!2041551 () Bool)

(assert (=> b!7273715 (= e!4361780 (and tp!2041550 tp!2041551))))

(assert (=> b!7273671 (= tp!2041532 e!4361780)))

(assert (= (and b!7273671 (is-Cons!70828 (exprs!8258 ct1!250))) b!7273715))

(declare-fun b!7273716 () Bool)

(declare-fun e!4361781 () Bool)

(declare-fun tp!2041552 () Bool)

(declare-fun tp!2041553 () Bool)

(assert (=> b!7273716 (= e!4361781 (and tp!2041552 tp!2041553))))

(assert (=> b!7273672 (= tp!2041531 e!4361781)))

(assert (= (and b!7273672 (is-Cons!70828 (exprs!8258 ct2!346))) b!7273716))

(declare-fun b_lambda!280623 () Bool)

(assert (= b_lambda!280621 (or b!7273668 b_lambda!280623)))

(declare-fun bs!1911618 () Bool)

(declare-fun d!2263864 () Bool)

(assert (= bs!1911618 (and d!2263864 b!7273668)))

(declare-fun nullable!8013 (Regex!18818) Bool)

(assert (=> bs!1911618 (= (dynLambda!28960 lambda!449352 (h!77276 (exprs!8258 ct1!250))) (nullable!8013 (h!77276 (exprs!8258 ct1!250))))))

(declare-fun m!7960308 () Bool)

(assert (=> bs!1911618 m!7960308))

(assert (=> b!7273704 d!2263864))

(push 1)

(assert (not d!2263848))

(assert (not b!7273710))

(assert (not bs!1911618))

(assert (not b!7273716))

(assert tp_is_empty!47101)

(assert (not d!2263852))

(assert (not d!2263850))

(assert (not b!7273699))

(assert (not b!7273715))

(assert (not b!7273698))

(assert (not b!7273705))

(assert (not d!2263856))

(assert (not b_lambda!280623))

(assert (not d!2263860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

