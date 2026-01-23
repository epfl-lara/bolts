; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47374 () Bool)

(assert start!47374)

(assert (=> start!47374 true))

(declare-fun b!519310 () Bool)

(declare-fun res!220378 () Bool)

(declare-fun e!311055 () Bool)

(assert (=> b!519310 (=> (not res!220378) (not e!311055))))

(declare-datatypes ((B!1119 0))(
  ( (B!1120 (val!1847 Int)) )
))
(declare-datatypes ((List!4787 0))(
  ( (Nil!4777) (Cons!4777 (h!10178 B!1119) (t!73377 List!4787)) )
))
(declare-fun lIn!3 () List!4787)

(declare-fun noDuplicate!138 (List!4787) Bool)

(assert (=> b!519310 (= res!220378 (noDuplicate!138 lIn!3))))

(declare-fun res!220377 () Bool)

(assert (=> start!47374 (=> (not res!220377) (not e!311055))))

(declare-fun lambda!14820 () Int)

(declare-fun forall!1446 (List!4787 Int) Bool)

(assert (=> start!47374 (= res!220377 (forall!1446 lIn!3 lambda!14820))))

(assert (=> start!47374 e!311055))

(declare-fun e!311054 () Bool)

(assert (=> start!47374 e!311054))

(declare-fun e!311053 () Bool)

(assert (=> start!47374 e!311053))

(declare-fun b!519311 () Bool)

(declare-fun size!3900 (List!4787) Int)

(assert (=> b!519311 (= e!311055 (< (size!3900 lIn!3) 0))))

(declare-fun b!519312 () Bool)

(declare-fun tp_is_empty!2715 () Bool)

(declare-fun tp!161766 () Bool)

(assert (=> b!519312 (= e!311054 (and tp_is_empty!2715 tp!161766))))

(declare-fun b!519313 () Bool)

(declare-fun tp!161767 () Bool)

(assert (=> b!519313 (= e!311053 (and tp_is_empty!2715 tp!161767))))

(assert (= (and start!47374 res!220377) b!519310))

(assert (= (and b!519310 res!220378) b!519311))

(assert (= (and start!47374 (is-Cons!4777 lIn!3)) b!519312))

(declare-fun l!3695 () List!4787)

(assert (= (and start!47374 (is-Cons!4777 l!3695)) b!519313))

(declare-fun m!766155 () Bool)

(assert (=> b!519310 m!766155))

(declare-fun m!766157 () Bool)

(assert (=> start!47374 m!766157))

(declare-fun m!766159 () Bool)

(assert (=> b!519311 m!766159))

(push 1)

(assert (not b!519312))

(assert (not start!47374))

(assert (not b!519311))

(assert (not b!519313))

(assert (not b!519310))

(assert tp_is_empty!2715)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185500 () Bool)

(declare-fun lt!216508 () Int)

(assert (=> d!185500 (>= lt!216508 0)))

(declare-fun e!311069 () Int)

(assert (=> d!185500 (= lt!216508 e!311069)))

(declare-fun c!100458 () Bool)

(assert (=> d!185500 (= c!100458 (is-Nil!4777 lIn!3))))

(assert (=> d!185500 (= (size!3900 lIn!3) lt!216508)))

(declare-fun b!519334 () Bool)

(assert (=> b!519334 (= e!311069 0)))

(declare-fun b!519335 () Bool)

(assert (=> b!519335 (= e!311069 (+ 1 (size!3900 (t!73377 lIn!3))))))

(assert (= (and d!185500 c!100458) b!519334))

(assert (= (and d!185500 (not c!100458)) b!519335))

(declare-fun m!766167 () Bool)

(assert (=> b!519335 m!766167))

(assert (=> b!519311 d!185500))

(declare-fun d!185502 () Bool)

(declare-fun res!220389 () Bool)

(declare-fun e!311074 () Bool)

(assert (=> d!185502 (=> res!220389 e!311074)))

(assert (=> d!185502 (= res!220389 (is-Nil!4777 lIn!3))))

(assert (=> d!185502 (= (forall!1446 lIn!3 lambda!14820) e!311074)))

(declare-fun b!519340 () Bool)

(declare-fun e!311075 () Bool)

(assert (=> b!519340 (= e!311074 e!311075)))

(declare-fun res!220390 () Bool)

(assert (=> b!519340 (=> (not res!220390) (not e!311075))))

(declare-fun dynLambda!3000 (Int B!1119) Bool)

(assert (=> b!519340 (= res!220390 (dynLambda!3000 lambda!14820 (h!10178 lIn!3)))))

(declare-fun b!519341 () Bool)

(assert (=> b!519341 (= e!311075 (forall!1446 (t!73377 lIn!3) lambda!14820))))

(assert (= (and d!185502 (not res!220389)) b!519340))

(assert (= (and b!519340 res!220390) b!519341))

(declare-fun b_lambda!20229 () Bool)

(assert (=> (not b_lambda!20229) (not b!519340)))

(declare-fun m!766169 () Bool)

(assert (=> b!519340 m!766169))

(declare-fun m!766171 () Bool)

(assert (=> b!519341 m!766171))

(assert (=> start!47374 d!185502))

(declare-fun d!185506 () Bool)

(declare-fun res!220399 () Bool)

(declare-fun e!311084 () Bool)

(assert (=> d!185506 (=> res!220399 e!311084)))

(assert (=> d!185506 (= res!220399 (is-Nil!4777 lIn!3))))

(assert (=> d!185506 (= (noDuplicate!138 lIn!3) e!311084)))

(declare-fun b!519350 () Bool)

(declare-fun e!311085 () Bool)

(assert (=> b!519350 (= e!311084 e!311085)))

(declare-fun res!220400 () Bool)

(assert (=> b!519350 (=> (not res!220400) (not e!311085))))

(declare-fun contains!1137 (List!4787 B!1119) Bool)

(assert (=> b!519350 (= res!220400 (not (contains!1137 (t!73377 lIn!3) (h!10178 lIn!3))))))

(declare-fun b!519351 () Bool)

(assert (=> b!519351 (= e!311085 (noDuplicate!138 (t!73377 lIn!3)))))

(assert (= (and d!185506 (not res!220399)) b!519350))

(assert (= (and b!519350 res!220400) b!519351))

(declare-fun m!766173 () Bool)

(assert (=> b!519350 m!766173))

(declare-fun m!766175 () Bool)

(assert (=> b!519351 m!766175))

(assert (=> b!519310 d!185506))

(declare-fun b!519356 () Bool)

(declare-fun e!311088 () Bool)

(declare-fun tp!161776 () Bool)

(assert (=> b!519356 (= e!311088 (and tp_is_empty!2715 tp!161776))))

(assert (=> b!519312 (= tp!161766 e!311088)))

(assert (= (and b!519312 (is-Cons!4777 (t!73377 lIn!3))) b!519356))

(declare-fun b!519359 () Bool)

(declare-fun e!311091 () Bool)

(declare-fun tp!161777 () Bool)

(assert (=> b!519359 (= e!311091 (and tp_is_empty!2715 tp!161777))))

(assert (=> b!519313 (= tp!161767 e!311091)))

(assert (= (and b!519313 (is-Cons!4777 (t!73377 l!3695))) b!519359))

(declare-fun b_lambda!20231 () Bool)

(assert (= b_lambda!20229 (or start!47374 b_lambda!20231)))

(declare-fun bs!60416 () Bool)

(declare-fun d!185508 () Bool)

(assert (= bs!60416 (and d!185508 start!47374)))

(assert (=> bs!60416 (= (dynLambda!3000 lambda!14820 (h!10178 lIn!3)) (contains!1137 l!3695 (h!10178 lIn!3)))))

(declare-fun m!766177 () Bool)

(assert (=> bs!60416 m!766177))

(assert (=> b!519340 d!185508))

(push 1)

(assert (not bs!60416))

(assert (not b!519350))

(assert (not b!519335))

(assert (not b!519359))

(assert tp_is_empty!2715)

(assert (not b!519356))

(assert (not b!519351))

(assert (not b_lambda!20231))

(assert (not b!519341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

