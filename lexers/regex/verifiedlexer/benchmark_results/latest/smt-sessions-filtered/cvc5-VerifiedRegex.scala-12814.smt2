; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707976 () Bool)

(assert start!707976)

(declare-fun b!7262846 () Bool)

(declare-fun e!4355326 () Bool)

(declare-datatypes ((C!37746 0))(
  ( (C!37747 (val!28821 Int)) )
))
(declare-datatypes ((Regex!18736 0))(
  ( (ElementMatch!18736 (c!1351184 C!37746)) (Concat!27581 (regOne!37984 Regex!18736) (regTwo!37984 Regex!18736)) (EmptyExpr!18736) (Star!18736 (reg!19065 Regex!18736)) (EmptyLang!18736) (Union!18736 (regOne!37985 Regex!18736) (regTwo!37985 Regex!18736)) )
))
(declare-datatypes ((List!70787 0))(
  ( (Nil!70663) (Cons!70663 (h!77111 Regex!18736) (t!384853 List!70787)) )
))
(declare-datatypes ((Context!15352 0))(
  ( (Context!15353 (exprs!8176 List!70787)) )
))
(declare-fun ct1!250 () Context!15352)

(declare-fun lambda!446870 () Int)

(declare-fun forall!17575 (List!70787 Int) Bool)

(assert (=> b!7262846 (= e!4355326 (not (forall!17575 (exprs!8176 ct1!250) lambda!446870)))))

(declare-fun b!7262847 () Bool)

(declare-fun e!4355327 () Bool)

(declare-fun tp!2039755 () Bool)

(assert (=> b!7262847 (= e!4355327 tp!2039755)))

(declare-fun b!7262848 () Bool)

(declare-fun res!2944639 () Bool)

(assert (=> b!7262848 (=> (not res!2944639) (not e!4355326))))

(declare-fun nullableContext!226 (Context!15352) Bool)

(assert (=> b!7262848 (= res!2944639 (nullableContext!226 ct1!250))))

(declare-fun res!2944638 () Bool)

(assert (=> start!707976 (=> (not res!2944638) (not e!4355326))))

(declare-fun ct2!346 () Context!15352)

(declare-datatypes ((List!70788 0))(
  ( (Nil!70664) (Cons!70664 (h!77112 C!37746) (t!384854 List!70788)) )
))
(declare-fun s!7854 () List!70788)

(declare-fun matchZipper!3640 ((Set Context!15352) List!70788) Bool)

(assert (=> start!707976 (= res!2944638 (matchZipper!3640 (set.insert ct2!346 (as set.empty (Set Context!15352))) s!7854))))

(assert (=> start!707976 e!4355326))

(declare-fun e!4355329 () Bool)

(declare-fun inv!89851 (Context!15352) Bool)

(assert (=> start!707976 (and (inv!89851 ct2!346) e!4355329)))

(declare-fun e!4355328 () Bool)

(assert (=> start!707976 e!4355328))

(assert (=> start!707976 (and (inv!89851 ct1!250) e!4355327)))

(declare-fun b!7262849 () Bool)

(declare-fun tp_is_empty!46937 () Bool)

(declare-fun tp!2039756 () Bool)

(assert (=> b!7262849 (= e!4355328 (and tp_is_empty!46937 tp!2039756))))

(declare-fun b!7262850 () Bool)

(declare-fun tp!2039757 () Bool)

(assert (=> b!7262850 (= e!4355329 tp!2039757)))

(declare-fun b!7262851 () Bool)

(declare-fun res!2944640 () Bool)

(assert (=> b!7262851 (=> (not res!2944640) (not e!4355326))))

(assert (=> b!7262851 (= res!2944640 (is-Cons!70664 s!7854))))

(assert (= (and start!707976 res!2944638) b!7262848))

(assert (= (and b!7262848 res!2944639) b!7262851))

(assert (= (and b!7262851 res!2944640) b!7262846))

(assert (= start!707976 b!7262850))

(assert (= (and start!707976 (is-Cons!70664 s!7854)) b!7262849))

(assert (= start!707976 b!7262847))

(declare-fun m!7947410 () Bool)

(assert (=> b!7262846 m!7947410))

(declare-fun m!7947412 () Bool)

(assert (=> b!7262848 m!7947412))

(declare-fun m!7947414 () Bool)

(assert (=> start!707976 m!7947414))

(assert (=> start!707976 m!7947414))

(declare-fun m!7947416 () Bool)

(assert (=> start!707976 m!7947416))

(declare-fun m!7947418 () Bool)

(assert (=> start!707976 m!7947418))

(declare-fun m!7947420 () Bool)

(assert (=> start!707976 m!7947420))

(push 1)

(assert (not b!7262848))

(assert (not b!7262850))

(assert (not b!7262846))

(assert tp_is_empty!46937)

(assert (not b!7262847))

(assert (not start!707976))

(assert (not b!7262849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1909745 () Bool)

(declare-fun d!2259527 () Bool)

(assert (= bs!1909745 (and d!2259527 b!7262846)))

(declare-fun lambda!446876 () Int)

(assert (=> bs!1909745 (not (= lambda!446876 lambda!446870))))

(assert (=> d!2259527 (= (nullableContext!226 ct1!250) (forall!17575 (exprs!8176 ct1!250) lambda!446876))))

(declare-fun bs!1909746 () Bool)

(assert (= bs!1909746 d!2259527))

(declare-fun m!7947434 () Bool)

(assert (=> bs!1909746 m!7947434))

(assert (=> b!7262848 d!2259527))

(declare-fun d!2259531 () Bool)

(declare-fun c!1351189 () Bool)

(declare-fun isEmpty!40625 (List!70788) Bool)

(assert (=> d!2259531 (= c!1351189 (isEmpty!40625 s!7854))))

(declare-fun e!4355344 () Bool)

(assert (=> d!2259531 (= (matchZipper!3640 (set.insert ct2!346 (as set.empty (Set Context!15352))) s!7854) e!4355344)))

(declare-fun b!7262874 () Bool)

(declare-fun nullableZipper!2959 ((Set Context!15352)) Bool)

(assert (=> b!7262874 (= e!4355344 (nullableZipper!2959 (set.insert ct2!346 (as set.empty (Set Context!15352)))))))

(declare-fun b!7262875 () Bool)

(declare-fun derivationStepZipper!3485 ((Set Context!15352) C!37746) (Set Context!15352))

(declare-fun head!14958 (List!70788) C!37746)

(declare-fun tail!14417 (List!70788) List!70788)

(assert (=> b!7262875 (= e!4355344 (matchZipper!3640 (derivationStepZipper!3485 (set.insert ct2!346 (as set.empty (Set Context!15352))) (head!14958 s!7854)) (tail!14417 s!7854)))))

(assert (= (and d!2259531 c!1351189) b!7262874))

(assert (= (and d!2259531 (not c!1351189)) b!7262875))

(declare-fun m!7947436 () Bool)

(assert (=> d!2259531 m!7947436))

(assert (=> b!7262874 m!7947414))

(declare-fun m!7947438 () Bool)

(assert (=> b!7262874 m!7947438))

(declare-fun m!7947440 () Bool)

(assert (=> b!7262875 m!7947440))

(assert (=> b!7262875 m!7947414))

(assert (=> b!7262875 m!7947440))

(declare-fun m!7947442 () Bool)

(assert (=> b!7262875 m!7947442))

(declare-fun m!7947444 () Bool)

(assert (=> b!7262875 m!7947444))

(assert (=> b!7262875 m!7947442))

(assert (=> b!7262875 m!7947444))

(declare-fun m!7947446 () Bool)

(assert (=> b!7262875 m!7947446))

(assert (=> start!707976 d!2259531))

(declare-fun bs!1909747 () Bool)

(declare-fun d!2259533 () Bool)

(assert (= bs!1909747 (and d!2259533 b!7262846)))

(declare-fun lambda!446879 () Int)

(assert (=> bs!1909747 (= lambda!446879 lambda!446870)))

(declare-fun bs!1909748 () Bool)

(assert (= bs!1909748 (and d!2259533 d!2259527)))

(assert (=> bs!1909748 (not (= lambda!446879 lambda!446876))))

(assert (=> d!2259533 (= (inv!89851 ct2!346) (forall!17575 (exprs!8176 ct2!346) lambda!446879))))

(declare-fun bs!1909749 () Bool)

(assert (= bs!1909749 d!2259533))

(declare-fun m!7947448 () Bool)

(assert (=> bs!1909749 m!7947448))

(assert (=> start!707976 d!2259533))

(declare-fun bs!1909750 () Bool)

(declare-fun d!2259535 () Bool)

(assert (= bs!1909750 (and d!2259535 b!7262846)))

(declare-fun lambda!446880 () Int)

(assert (=> bs!1909750 (= lambda!446880 lambda!446870)))

(declare-fun bs!1909751 () Bool)

(assert (= bs!1909751 (and d!2259535 d!2259527)))

(assert (=> bs!1909751 (not (= lambda!446880 lambda!446876))))

(declare-fun bs!1909752 () Bool)

(assert (= bs!1909752 (and d!2259535 d!2259533)))

(assert (=> bs!1909752 (= lambda!446880 lambda!446879)))

(assert (=> d!2259535 (= (inv!89851 ct1!250) (forall!17575 (exprs!8176 ct1!250) lambda!446880))))

(declare-fun bs!1909753 () Bool)

(assert (= bs!1909753 d!2259535))

(declare-fun m!7947450 () Bool)

(assert (=> bs!1909753 m!7947450))

(assert (=> start!707976 d!2259535))

(declare-fun d!2259537 () Bool)

(declare-fun res!2944654 () Bool)

(declare-fun e!4355351 () Bool)

(assert (=> d!2259537 (=> res!2944654 e!4355351)))

(assert (=> d!2259537 (= res!2944654 (is-Nil!70663 (exprs!8176 ct1!250)))))

(assert (=> d!2259537 (= (forall!17575 (exprs!8176 ct1!250) lambda!446870) e!4355351)))

(declare-fun b!7262884 () Bool)

(declare-fun e!4355352 () Bool)

(assert (=> b!7262884 (= e!4355351 e!4355352)))

(declare-fun res!2944655 () Bool)

(assert (=> b!7262884 (=> (not res!2944655) (not e!4355352))))

(declare-fun dynLambda!28844 (Int Regex!18736) Bool)

(assert (=> b!7262884 (= res!2944655 (dynLambda!28844 lambda!446870 (h!77111 (exprs!8176 ct1!250))))))

(declare-fun b!7262885 () Bool)

(assert (=> b!7262885 (= e!4355352 (forall!17575 (t!384853 (exprs!8176 ct1!250)) lambda!446870))))

(assert (= (and d!2259537 (not res!2944654)) b!7262884))

(assert (= (and b!7262884 res!2944655) b!7262885))

(declare-fun b_lambda!279381 () Bool)

(assert (=> (not b_lambda!279381) (not b!7262884)))

(declare-fun m!7947452 () Bool)

(assert (=> b!7262884 m!7947452))

(declare-fun m!7947454 () Bool)

(assert (=> b!7262885 m!7947454))

(assert (=> b!7262846 d!2259537))

(declare-fun b!7262890 () Bool)

(declare-fun e!4355355 () Bool)

(declare-fun tp!2039771 () Bool)

(declare-fun tp!2039772 () Bool)

(assert (=> b!7262890 (= e!4355355 (and tp!2039771 tp!2039772))))

(assert (=> b!7262847 (= tp!2039755 e!4355355)))

(assert (= (and b!7262847 (is-Cons!70663 (exprs!8176 ct1!250))) b!7262890))

(declare-fun b!7262891 () Bool)

(declare-fun e!4355356 () Bool)

(declare-fun tp!2039773 () Bool)

(declare-fun tp!2039774 () Bool)

(assert (=> b!7262891 (= e!4355356 (and tp!2039773 tp!2039774))))

(assert (=> b!7262850 (= tp!2039757 e!4355356)))

(assert (= (and b!7262850 (is-Cons!70663 (exprs!8176 ct2!346))) b!7262891))

(declare-fun b!7262896 () Bool)

(declare-fun e!4355359 () Bool)

(declare-fun tp!2039777 () Bool)

(assert (=> b!7262896 (= e!4355359 (and tp_is_empty!46937 tp!2039777))))

(assert (=> b!7262849 (= tp!2039756 e!4355359)))

(assert (= (and b!7262849 (is-Cons!70664 (t!384854 s!7854))) b!7262896))

(declare-fun b_lambda!279383 () Bool)

(assert (= b_lambda!279381 (or b!7262846 b_lambda!279383)))

(declare-fun bs!1909754 () Bool)

(declare-fun d!2259539 () Bool)

(assert (= bs!1909754 (and d!2259539 b!7262846)))

(declare-fun validRegex!9554 (Regex!18736) Bool)

(assert (=> bs!1909754 (= (dynLambda!28844 lambda!446870 (h!77111 (exprs!8176 ct1!250))) (validRegex!9554 (h!77111 (exprs!8176 ct1!250))))))

(declare-fun m!7947456 () Bool)

(assert (=> bs!1909754 m!7947456))

(assert (=> b!7262884 d!2259539))

(push 1)

(assert (not b!7262890))

(assert (not d!2259535))

(assert (not b!7262874))

(assert (not d!2259531))

(assert (not b!7262891))

(assert (not d!2259533))

(assert (not b!7262875))

(assert (not b!7262896))

(assert (not b_lambda!279383))

(assert (not d!2259527))

(assert tp_is_empty!46937)

(assert (not bs!1909754))

(assert (not b!7262885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

