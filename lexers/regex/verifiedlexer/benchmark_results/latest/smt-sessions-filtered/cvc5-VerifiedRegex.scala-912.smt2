; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47214 () Bool)

(assert start!47214)

(assert (=> start!47214 true))

(declare-fun b!518513 () Bool)

(declare-fun e!310483 () Bool)

(declare-fun tp_is_empty!2687 () Bool)

(declare-fun tp!161643 () Bool)

(assert (=> b!518513 (= e!310483 (and tp_is_empty!2687 tp!161643))))

(declare-fun b!518514 () Bool)

(declare-fun res!219957 () Bool)

(declare-fun e!310482 () Bool)

(assert (=> b!518514 (=> (not res!219957) (not e!310482))))

(declare-datatypes ((B!1091 0))(
  ( (B!1092 (val!1833 Int)) )
))
(declare-datatypes ((List!4773 0))(
  ( (Nil!4763) (Cons!4763 (h!10164 B!1091) (t!73363 List!4773)) )
))
(declare-fun lIn!3 () List!4773)

(declare-fun noDuplicate!124 (List!4773) Bool)

(assert (=> b!518514 (= res!219957 (noDuplicate!124 lIn!3))))

(declare-fun b!518515 () Bool)

(declare-fun l!3695 () List!4773)

(declare-fun content!848 (List!4773) (Set B!1091))

(assert (=> b!518515 (= e!310482 (not (set.subset (content!848 lIn!3) (content!848 l!3695))))))

(declare-datatypes ((Unit!8730 0))(
  ( (Unit!8731) )
))
(declare-fun lt!216210 () Unit!8730)

(declare-fun forallContainsSubset!9 (List!4773 List!4773) Unit!8730)

(assert (=> b!518515 (= lt!216210 (forallContainsSubset!9 lIn!3 l!3695))))

(declare-fun b!518516 () Bool)

(declare-fun res!219955 () Bool)

(assert (=> b!518516 (=> (not res!219955) (not e!310482))))

(assert (=> b!518516 (= res!219955 (is-Cons!4763 lIn!3))))

(declare-fun res!219956 () Bool)

(assert (=> start!47214 (=> (not res!219956) (not e!310482))))

(declare-fun lambda!14724 () Int)

(declare-fun forall!1432 (List!4773 Int) Bool)

(assert (=> start!47214 (= res!219956 (forall!1432 lIn!3 lambda!14724))))

(assert (=> start!47214 e!310482))

(assert (=> start!47214 e!310483))

(declare-fun e!310481 () Bool)

(assert (=> start!47214 e!310481))

(declare-fun b!518512 () Bool)

(declare-fun tp!161642 () Bool)

(assert (=> b!518512 (= e!310481 (and tp_is_empty!2687 tp!161642))))

(assert (= (and start!47214 res!219956) b!518514))

(assert (= (and b!518514 res!219957) b!518516))

(assert (= (and b!518516 res!219955) b!518515))

(assert (= (and start!47214 (is-Cons!4763 lIn!3)) b!518513))

(assert (= (and start!47214 (is-Cons!4763 l!3695)) b!518512))

(declare-fun m!765493 () Bool)

(assert (=> b!518514 m!765493))

(declare-fun m!765495 () Bool)

(assert (=> b!518515 m!765495))

(declare-fun m!765497 () Bool)

(assert (=> b!518515 m!765497))

(declare-fun m!765499 () Bool)

(assert (=> b!518515 m!765499))

(declare-fun m!765501 () Bool)

(assert (=> start!47214 m!765501))

(push 1)

(assert (not b!518513))

(assert (not b!518515))

(assert (not b!518512))

(assert (not start!47214))

(assert tp_is_empty!2687)

(assert (not b!518514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185291 () Bool)

(declare-fun res!219971 () Bool)

(declare-fun e!310499 () Bool)

(assert (=> d!185291 (=> res!219971 e!310499)))

(assert (=> d!185291 (= res!219971 (is-Nil!4763 lIn!3))))

(assert (=> d!185291 (= (forall!1432 lIn!3 lambda!14724) e!310499)))

(declare-fun b!518540 () Bool)

(declare-fun e!310500 () Bool)

(assert (=> b!518540 (= e!310499 e!310500)))

(declare-fun res!219972 () Bool)

(assert (=> b!518540 (=> (not res!219972) (not e!310500))))

(declare-fun dynLambda!2993 (Int B!1091) Bool)

(assert (=> b!518540 (= res!219972 (dynLambda!2993 lambda!14724 (h!10164 lIn!3)))))

(declare-fun b!518541 () Bool)

(assert (=> b!518541 (= e!310500 (forall!1432 (t!73363 lIn!3) lambda!14724))))

(assert (= (and d!185291 (not res!219971)) b!518540))

(assert (= (and b!518540 res!219972) b!518541))

(declare-fun b_lambda!20189 () Bool)

(assert (=> (not b_lambda!20189) (not b!518540)))

(declare-fun m!765513 () Bool)

(assert (=> b!518540 m!765513))

(declare-fun m!765515 () Bool)

(assert (=> b!518541 m!765515))

(assert (=> start!47214 d!185291))

(declare-fun d!185293 () Bool)

(declare-fun res!219977 () Bool)

(declare-fun e!310505 () Bool)

(assert (=> d!185293 (=> res!219977 e!310505)))

(assert (=> d!185293 (= res!219977 (is-Nil!4763 lIn!3))))

(assert (=> d!185293 (= (noDuplicate!124 lIn!3) e!310505)))

(declare-fun b!518546 () Bool)

(declare-fun e!310506 () Bool)

(assert (=> b!518546 (= e!310505 e!310506)))

(declare-fun res!219978 () Bool)

(assert (=> b!518546 (=> (not res!219978) (not e!310506))))

(declare-fun contains!1123 (List!4773 B!1091) Bool)

(assert (=> b!518546 (= res!219978 (not (contains!1123 (t!73363 lIn!3) (h!10164 lIn!3))))))

(declare-fun b!518547 () Bool)

(assert (=> b!518547 (= e!310506 (noDuplicate!124 (t!73363 lIn!3)))))

(assert (= (and d!185293 (not res!219977)) b!518546))

(assert (= (and b!518546 res!219978) b!518547))

(declare-fun m!765517 () Bool)

(assert (=> b!518546 m!765517))

(declare-fun m!765519 () Bool)

(assert (=> b!518547 m!765519))

(assert (=> b!518514 d!185293))

(declare-fun d!185297 () Bool)

(declare-fun c!100356 () Bool)

(assert (=> d!185297 (= c!100356 (is-Nil!4763 lIn!3))))

(declare-fun e!310513 () (Set B!1091))

(assert (=> d!185297 (= (content!848 lIn!3) e!310513)))

(declare-fun b!518556 () Bool)

(assert (=> b!518556 (= e!310513 (as set.empty (Set B!1091)))))

(declare-fun b!518557 () Bool)

(assert (=> b!518557 (= e!310513 (set.union (set.insert (h!10164 lIn!3) (as set.empty (Set B!1091))) (content!848 (t!73363 lIn!3))))))

(assert (= (and d!185297 c!100356) b!518556))

(assert (= (and d!185297 (not c!100356)) b!518557))

(declare-fun m!765521 () Bool)

(assert (=> b!518557 m!765521))

(declare-fun m!765523 () Bool)

(assert (=> b!518557 m!765523))

(assert (=> b!518515 d!185297))

(declare-fun d!185299 () Bool)

(declare-fun c!100357 () Bool)

(assert (=> d!185299 (= c!100357 (is-Nil!4763 l!3695))))

(declare-fun e!310514 () (Set B!1091))

(assert (=> d!185299 (= (content!848 l!3695) e!310514)))

(declare-fun b!518558 () Bool)

(assert (=> b!518558 (= e!310514 (as set.empty (Set B!1091)))))

(declare-fun b!518559 () Bool)

(assert (=> b!518559 (= e!310514 (set.union (set.insert (h!10164 l!3695) (as set.empty (Set B!1091))) (content!848 (t!73363 l!3695))))))

(assert (= (and d!185299 c!100357) b!518558))

(assert (= (and d!185299 (not c!100357)) b!518559))

(declare-fun m!765525 () Bool)

(assert (=> b!518559 m!765525))

(declare-fun m!765527 () Bool)

(assert (=> b!518559 m!765527))

(assert (=> b!518515 d!185299))

(declare-fun bs!60345 () Bool)

(declare-fun d!185301 () Bool)

(assert (= bs!60345 (and d!185301 start!47214)))

(declare-fun lambda!14730 () Int)

(assert (=> bs!60345 (= lambda!14730 lambda!14724)))

(assert (=> d!185301 true))

(assert (=> d!185301 (set.subset (content!848 lIn!3) (content!848 l!3695))))

(declare-fun lt!216216 () Unit!8730)

(declare-fun choose!3703 (List!4773 List!4773) Unit!8730)

(assert (=> d!185301 (= lt!216216 (choose!3703 lIn!3 l!3695))))

(assert (=> d!185301 (forall!1432 lIn!3 lambda!14730)))

(assert (=> d!185301 (= (forallContainsSubset!9 lIn!3 l!3695) lt!216216)))

(declare-fun bs!60346 () Bool)

(assert (= bs!60346 d!185301))

(assert (=> bs!60346 m!765495))

(assert (=> bs!60346 m!765497))

(declare-fun m!765533 () Bool)

(assert (=> bs!60346 m!765533))

(declare-fun m!765535 () Bool)

(assert (=> bs!60346 m!765535))

(assert (=> b!518515 d!185301))

(declare-fun b!518566 () Bool)

(declare-fun e!310519 () Bool)

(declare-fun tp!161652 () Bool)

(assert (=> b!518566 (= e!310519 (and tp_is_empty!2687 tp!161652))))

(assert (=> b!518512 (= tp!161642 e!310519)))

(assert (= (and b!518512 (is-Cons!4763 (t!73363 l!3695))) b!518566))

(declare-fun b!518567 () Bool)

(declare-fun e!310520 () Bool)

(declare-fun tp!161653 () Bool)

(assert (=> b!518567 (= e!310520 (and tp_is_empty!2687 tp!161653))))

(assert (=> b!518513 (= tp!161643 e!310520)))

(assert (= (and b!518513 (is-Cons!4763 (t!73363 lIn!3))) b!518567))

(declare-fun b_lambda!20191 () Bool)

(assert (= b_lambda!20189 (or start!47214 b_lambda!20191)))

(declare-fun bs!60347 () Bool)

(declare-fun d!185305 () Bool)

(assert (= bs!60347 (and d!185305 start!47214)))

(assert (=> bs!60347 (= (dynLambda!2993 lambda!14724 (h!10164 lIn!3)) (contains!1123 l!3695 (h!10164 lIn!3)))))

(declare-fun m!765537 () Bool)

(assert (=> bs!60347 m!765537))

(assert (=> b!518540 d!185305))

(push 1)

(assert (not b_lambda!20191))

(assert (not b!518566))

(assert (not b!518547))

(assert (not b!518559))

(assert (not b!518546))

(assert (not bs!60347))

(assert tp_is_empty!2687)

(assert (not b!518567))

(assert (not b!518557))

(assert (not d!185301))

(assert (not b!518541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

