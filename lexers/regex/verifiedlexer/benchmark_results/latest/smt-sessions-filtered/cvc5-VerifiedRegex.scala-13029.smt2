; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714388 () Bool)

(assert start!714388)

(declare-fun b_free!134291 () Bool)

(declare-fun b_next!135081 () Bool)

(assert (=> start!714388 (= b_free!134291 (not b_next!135081))))

(declare-fun tp!2079672 () Bool)

(declare-fun b_and!351823 () Bool)

(assert (=> start!714388 (= tp!2079672 b_and!351823)))

(declare-fun b!7321670 () Bool)

(declare-fun e!4383737 () Bool)

(declare-datatypes ((B!3823 0))(
  ( (B!3824 (val!29443 Int)) )
))
(declare-datatypes ((List!71442 0))(
  ( (Nil!71318) (Cons!71318 (h!77766 B!3823) (t!385803 List!71442)) )
))
(declare-fun l!3043 () List!71442)

(declare-fun e!9239 () B!3823)

(declare-fun contains!20825 (List!71442 B!3823) Bool)

(assert (=> b!7321670 (= e!4383737 (not (contains!20825 (t!385803 l!3043) e!9239)))))

(declare-fun b!7321669 () Bool)

(declare-fun res!2959464 () Bool)

(assert (=> b!7321669 (=> (not res!2959464) (not e!4383737))))

(assert (=> b!7321669 (= res!2959464 (and (or (not (is-Cons!71318 l!3043)) (not (= (h!77766 l!3043) e!9239))) (is-Cons!71318 l!3043)))))

(declare-fun res!2959465 () Bool)

(assert (=> start!714388 (=> (not res!2959465) (not e!4383737))))

(assert (=> start!714388 (= res!2959465 (contains!20825 l!3043 e!9239))))

(assert (=> start!714388 e!4383737))

(declare-fun e!4383736 () Bool)

(assert (=> start!714388 e!4383736))

(declare-fun tp_is_empty!48137 () Bool)

(assert (=> start!714388 tp_is_empty!48137))

(assert (=> start!714388 tp!2079672))

(declare-fun b!7321668 () Bool)

(declare-fun res!2959463 () Bool)

(assert (=> b!7321668 (=> (not res!2959463) (not e!4383737))))

(declare-fun p!1874 () Int)

(declare-fun dynLambda!29375 (Int B!3823) Bool)

(assert (=> b!7321668 (= res!2959463 (dynLambda!29375 p!1874 e!9239))))

(declare-fun b!7321671 () Bool)

(declare-fun tp!2079673 () Bool)

(assert (=> b!7321671 (= e!4383736 (and tp_is_empty!48137 tp!2079673))))

(assert (= (and start!714388 res!2959465) b!7321668))

(assert (= (and b!7321668 res!2959463) b!7321669))

(assert (= (and b!7321669 res!2959464) b!7321670))

(assert (= (and start!714388 (is-Cons!71318 l!3043)) b!7321671))

(declare-fun b_lambda!283067 () Bool)

(assert (=> (not b_lambda!283067) (not b!7321668)))

(declare-fun t!385802 () Bool)

(declare-fun tb!262371 () Bool)

(assert (=> (and start!714388 (= p!1874 p!1874) t!385802) tb!262371))

(declare-fun result!353574 () Bool)

(assert (=> tb!262371 (= result!353574 true)))

(assert (=> b!7321668 t!385802))

(declare-fun b_and!351825 () Bool)

(assert (= b_and!351823 (and (=> t!385802 result!353574) b_and!351825)))

(declare-fun m!7987398 () Bool)

(assert (=> b!7321670 m!7987398))

(declare-fun m!7987400 () Bool)

(assert (=> start!714388 m!7987400))

(declare-fun m!7987402 () Bool)

(assert (=> b!7321668 m!7987402))

(push 1)

(assert (not start!714388))

(assert (not b_lambda!283067))

(assert (not b_next!135081))

(assert tp_is_empty!48137)

(assert (not b!7321671))

(assert (not b!7321670))

(assert b_and!351825)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351825)

(assert (not b_next!135081))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!283071 () Bool)

(assert (= b_lambda!283067 (or (and start!714388 b_free!134291) b_lambda!283071)))

(push 1)

(assert (not start!714388))

(assert (not b_lambda!283071))

(assert (not b_next!135081))

(assert tp_is_empty!48137)

(assert (not b!7321671))

(assert (not b!7321670))

(assert b_and!351825)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351825)

(assert (not b_next!135081))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273678 () Bool)

(declare-fun lt!2604769 () Bool)

(declare-fun content!14911 (List!71442) (Set B!3823))

(assert (=> d!2273678 (= lt!2604769 (set.member e!9239 (content!14911 l!3043)))))

(declare-fun e!4383748 () Bool)

(assert (=> d!2273678 (= lt!2604769 e!4383748)))

(declare-fun res!2959479 () Bool)

(assert (=> d!2273678 (=> (not res!2959479) (not e!4383748))))

(assert (=> d!2273678 (= res!2959479 (is-Cons!71318 l!3043))))

(assert (=> d!2273678 (= (contains!20825 l!3043 e!9239) lt!2604769)))

(declare-fun b!7321688 () Bool)

(declare-fun e!4383749 () Bool)

(assert (=> b!7321688 (= e!4383748 e!4383749)))

(declare-fun res!2959480 () Bool)

(assert (=> b!7321688 (=> res!2959480 e!4383749)))

(assert (=> b!7321688 (= res!2959480 (= (h!77766 l!3043) e!9239))))

(declare-fun b!7321689 () Bool)

(assert (=> b!7321689 (= e!4383749 (contains!20825 (t!385803 l!3043) e!9239))))

(assert (= (and d!2273678 res!2959479) b!7321688))

(assert (= (and b!7321688 (not res!2959480)) b!7321689))

(declare-fun m!7987410 () Bool)

(assert (=> d!2273678 m!7987410))

(declare-fun m!7987412 () Bool)

(assert (=> d!2273678 m!7987412))

(assert (=> b!7321689 m!7987398))

(assert (=> start!714388 d!2273678))

(declare-fun d!2273682 () Bool)

(declare-fun lt!2604770 () Bool)

(assert (=> d!2273682 (= lt!2604770 (set.member e!9239 (content!14911 (t!385803 l!3043))))))

(declare-fun e!4383750 () Bool)

(assert (=> d!2273682 (= lt!2604770 e!4383750)))

(declare-fun res!2959481 () Bool)

(assert (=> d!2273682 (=> (not res!2959481) (not e!4383750))))

(assert (=> d!2273682 (= res!2959481 (is-Cons!71318 (t!385803 l!3043)))))

(assert (=> d!2273682 (= (contains!20825 (t!385803 l!3043) e!9239) lt!2604770)))

(declare-fun b!7321690 () Bool)

(declare-fun e!4383751 () Bool)

(assert (=> b!7321690 (= e!4383750 e!4383751)))

(declare-fun res!2959482 () Bool)

(assert (=> b!7321690 (=> res!2959482 e!4383751)))

(assert (=> b!7321690 (= res!2959482 (= (h!77766 (t!385803 l!3043)) e!9239))))

(declare-fun b!7321691 () Bool)

(assert (=> b!7321691 (= e!4383751 (contains!20825 (t!385803 (t!385803 l!3043)) e!9239))))

(assert (= (and d!2273682 res!2959481) b!7321690))

(assert (= (and b!7321690 (not res!2959482)) b!7321691))

(declare-fun m!7987414 () Bool)

(assert (=> d!2273682 m!7987414))

(declare-fun m!7987416 () Bool)

(assert (=> d!2273682 m!7987416))

(declare-fun m!7987418 () Bool)

(assert (=> b!7321691 m!7987418))

(assert (=> b!7321670 d!2273682))

(declare-fun b!7321696 () Bool)

(declare-fun e!4383754 () Bool)

(declare-fun tp!2079682 () Bool)

(assert (=> b!7321696 (= e!4383754 (and tp_is_empty!48137 tp!2079682))))

(assert (=> b!7321671 (= tp!2079673 e!4383754)))

(assert (= (and b!7321671 (is-Cons!71318 (t!385803 l!3043))) b!7321696))

(push 1)

(assert (not b!7321691))

(assert (not b_lambda!283071))

(assert (not b_next!135081))

(assert tp_is_empty!48137)

(assert (not d!2273678))

(assert (not d!2273682))

(assert (not b!7321689))

(assert b_and!351825)

(assert (not b!7321696))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351825)

(assert (not b_next!135081))

(check-sat)

(pop 1)

