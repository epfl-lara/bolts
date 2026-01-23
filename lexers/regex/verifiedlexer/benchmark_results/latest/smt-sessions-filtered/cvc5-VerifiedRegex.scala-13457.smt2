; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727556 () Bool)

(assert start!727556)

(declare-fun b_free!134367 () Bool)

(declare-fun b_next!135157 () Bool)

(assert (=> start!727556 (= b_free!134367 (not b_next!135157))))

(declare-fun tp!2179825 () Bool)

(declare-fun b_and!352011 () Bool)

(assert (=> start!727556 (= tp!2179825 b_and!352011)))

(declare-fun res!3012847 () Bool)

(declare-fun e!4478046 () Bool)

(assert (=> start!727556 (=> (not res!3012847) (not e!4478046))))

(declare-datatypes ((B!3903 0))(
  ( (B!3904 (val!30311 Int)) )
))
(declare-datatypes ((List!72605 0))(
  ( (Nil!72481) (Cons!72481 (h!78929 B!3903) (t!387196 List!72605)) )
))
(declare-fun l!2942 () List!72605)

(declare-fun p!1842 () Int)

(declare-fun exists!4916 (List!72605 Int) Bool)

(assert (=> start!727556 (= res!3012847 (exists!4916 l!2942 p!1842))))

(assert (=> start!727556 e!4478046))

(declare-fun e!4478045 () Bool)

(assert (=> start!727556 e!4478045))

(assert (=> start!727556 tp!2179825))

(declare-fun b!7509766 () Bool)

(declare-fun res!3012846 () Bool)

(assert (=> b!7509766 (=> (not res!3012846) (not e!4478046))))

(assert (=> b!7509766 (= res!3012846 (is-Cons!72481 l!2942))))

(declare-fun b!7509767 () Bool)

(assert (=> b!7509767 (= e!4478046 (not (exists!4916 (t!387196 l!2942) p!1842)))))

(declare-fun b!7509768 () Bool)

(declare-fun tp_is_empty!49795 () Bool)

(declare-fun tp!2179826 () Bool)

(assert (=> b!7509768 (= e!4478045 (and tp_is_empty!49795 tp!2179826))))

(declare-fun b!7509769 () Bool)

(declare-fun res!3012845 () Bool)

(assert (=> b!7509769 (=> (not res!3012845) (not e!4478046))))

(declare-fun e!4478047 () Bool)

(assert (=> b!7509769 (= res!3012845 e!4478047)))

(declare-fun res!3012844 () Bool)

(assert (=> b!7509769 (=> res!3012844 e!4478047)))

(assert (=> b!7509769 (= res!3012844 (not (is-Cons!72481 l!2942)))))

(declare-fun b!7509770 () Bool)

(declare-fun dynLambda!29813 (Int B!3903) Bool)

(assert (=> b!7509770 (= e!4478047 (not (dynLambda!29813 p!1842 (h!78929 l!2942))))))

(assert (= (and start!727556 res!3012847) b!7509769))

(assert (= (and b!7509769 (not res!3012844)) b!7509770))

(assert (= (and b!7509769 res!3012845) b!7509766))

(assert (= (and b!7509766 res!3012846) b!7509767))

(assert (= (and start!727556 (is-Cons!72481 l!2942)) b!7509768))

(declare-fun b_lambda!287997 () Bool)

(assert (=> (not b_lambda!287997) (not b!7509770)))

(declare-fun t!387195 () Bool)

(declare-fun tb!262471 () Bool)

(assert (=> (and start!727556 (= p!1842 p!1842) t!387195) tb!262471))

(declare-fun result!356238 () Bool)

(assert (=> tb!262471 (= result!356238 true)))

(assert (=> b!7509770 t!387195))

(declare-fun b_and!352013 () Bool)

(assert (= b_and!352011 (and (=> t!387195 result!356238) b_and!352013)))

(declare-fun m!8093810 () Bool)

(assert (=> start!727556 m!8093810))

(declare-fun m!8093812 () Bool)

(assert (=> b!7509767 m!8093812))

(declare-fun m!8093814 () Bool)

(assert (=> b!7509770 m!8093814))

(push 1)

(assert b_and!352013)

(assert (not b_next!135157))

(assert (not b_lambda!287997))

(assert (not b!7509767))

(assert tp_is_empty!49795)

(assert (not start!727556))

(assert (not b!7509768))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352013)

(assert (not b_next!135157))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288001 () Bool)

(assert (= b_lambda!287997 (or (and start!727556 b_free!134367) b_lambda!288001)))

(push 1)

(assert b_and!352013)

(assert (not b_next!135157))

(assert (not b!7509767))

(assert (not b_lambda!288001))

(assert tp_is_empty!49795)

(assert (not start!727556))

(assert (not b!7509768))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352013)

(assert (not b_next!135157))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2306178 () Bool)

(assert (=> d!2306178 true))

(declare-fun order!29697 () Int)

(declare-fun lambda!466132 () Int)

(declare-fun dynLambda!29815 (Int Int) Int)

(assert (=> d!2306178 (< (dynLambda!29815 order!29697 p!1842) (dynLambda!29815 order!29697 lambda!466132))))

(declare-fun forall!18363 (List!72605 Int) Bool)

(assert (=> d!2306178 (= (exists!4916 l!2942 p!1842) (not (forall!18363 l!2942 lambda!466132)))))

(declare-fun bs!1939072 () Bool)

(assert (= bs!1939072 d!2306178))

(declare-fun m!8093822 () Bool)

(assert (=> bs!1939072 m!8093822))

(assert (=> start!727556 d!2306178))

(declare-fun bs!1939073 () Bool)

(declare-fun d!2306182 () Bool)

(assert (= bs!1939073 (and d!2306182 d!2306178)))

(declare-fun lambda!466133 () Int)

(assert (=> bs!1939073 (= lambda!466133 lambda!466132)))

(assert (=> d!2306182 true))

(assert (=> d!2306182 (< (dynLambda!29815 order!29697 p!1842) (dynLambda!29815 order!29697 lambda!466133))))

(assert (=> d!2306182 (= (exists!4916 (t!387196 l!2942) p!1842) (not (forall!18363 (t!387196 l!2942) lambda!466133)))))

(declare-fun bs!1939074 () Bool)

(assert (= bs!1939074 d!2306182))

(declare-fun m!8093824 () Bool)

(assert (=> bs!1939074 m!8093824))

(assert (=> b!7509767 d!2306182))

(declare-fun b!7509792 () Bool)

(declare-fun e!4478059 () Bool)

(declare-fun tp!2179835 () Bool)

(assert (=> b!7509792 (= e!4478059 (and tp_is_empty!49795 tp!2179835))))

(assert (=> b!7509768 (= tp!2179826 e!4478059)))

(assert (= (and b!7509768 (is-Cons!72481 (t!387196 l!2942))) b!7509792))

(push 1)

(assert b_and!352013)

(assert (not b_next!135157))

(assert (not d!2306182))

(assert (not b!7509792))

(assert (not d!2306178))

(assert (not b_lambda!288001))

(assert tp_is_empty!49795)

(check-sat)

(pop 1)

(push 1)

(assert b_and!352013)

(assert (not b_next!135157))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2306186 () Bool)

(declare-fun res!3012864 () Bool)

(declare-fun e!4478067 () Bool)

(assert (=> d!2306186 (=> res!3012864 e!4478067)))

(assert (=> d!2306186 (= res!3012864 (is-Nil!72481 (t!387196 l!2942)))))

(assert (=> d!2306186 (= (forall!18363 (t!387196 l!2942) lambda!466133) e!4478067)))

(declare-fun b!7509804 () Bool)

(declare-fun e!4478068 () Bool)

(assert (=> b!7509804 (= e!4478067 e!4478068)))

(declare-fun res!3012865 () Bool)

(assert (=> b!7509804 (=> (not res!3012865) (not e!4478068))))

(assert (=> b!7509804 (= res!3012865 (dynLambda!29813 lambda!466133 (h!78929 (t!387196 l!2942))))))

(declare-fun b!7509805 () Bool)

(assert (=> b!7509805 (= e!4478068 (forall!18363 (t!387196 (t!387196 l!2942)) lambda!466133))))

(assert (= (and d!2306186 (not res!3012864)) b!7509804))

(assert (= (and b!7509804 res!3012865) b!7509805))

(declare-fun b_lambda!288005 () Bool)

(assert (=> (not b_lambda!288005) (not b!7509804)))

(declare-fun m!8093830 () Bool)

(assert (=> b!7509804 m!8093830))

(declare-fun m!8093832 () Bool)

(assert (=> b!7509805 m!8093832))

(assert (=> d!2306182 d!2306186))

(declare-fun d!2306188 () Bool)

(declare-fun res!3012866 () Bool)

(declare-fun e!4478069 () Bool)

(assert (=> d!2306188 (=> res!3012866 e!4478069)))

(assert (=> d!2306188 (= res!3012866 (is-Nil!72481 l!2942))))

(assert (=> d!2306188 (= (forall!18363 l!2942 lambda!466132) e!4478069)))

(declare-fun b!7509806 () Bool)

(declare-fun e!4478070 () Bool)

(assert (=> b!7509806 (= e!4478069 e!4478070)))

(declare-fun res!3012867 () Bool)

(assert (=> b!7509806 (=> (not res!3012867) (not e!4478070))))

(assert (=> b!7509806 (= res!3012867 (dynLambda!29813 lambda!466132 (h!78929 l!2942)))))

(declare-fun b!7509807 () Bool)

(assert (=> b!7509807 (= e!4478070 (forall!18363 (t!387196 l!2942) lambda!466132))))

(assert (= (and d!2306188 (not res!3012866)) b!7509806))

(assert (= (and b!7509806 res!3012867) b!7509807))

(declare-fun b_lambda!288007 () Bool)

(assert (=> (not b_lambda!288007) (not b!7509806)))

(declare-fun m!8093834 () Bool)

(assert (=> b!7509806 m!8093834))

(declare-fun m!8093836 () Bool)

(assert (=> b!7509807 m!8093836))

(assert (=> d!2306178 d!2306188))

(declare-fun b!7509808 () Bool)

(declare-fun e!4478071 () Bool)

(declare-fun tp!2179839 () Bool)

(assert (=> b!7509808 (= e!4478071 (and tp_is_empty!49795 tp!2179839))))

(assert (=> b!7509792 (= tp!2179835 e!4478071)))

(assert (= (and b!7509792 (is-Cons!72481 (t!387196 (t!387196 l!2942)))) b!7509808))

(declare-fun b_lambda!288009 () Bool)

(assert (= b_lambda!288005 (or d!2306182 b_lambda!288009)))

(declare-fun bs!1939078 () Bool)

(declare-fun d!2306190 () Bool)

(assert (= bs!1939078 (and d!2306190 d!2306182)))

(assert (=> bs!1939078 (= (dynLambda!29813 lambda!466133 (h!78929 (t!387196 l!2942))) (not (dynLambda!29813 p!1842 (h!78929 (t!387196 l!2942)))))))

(declare-fun b_lambda!288015 () Bool)

(assert (=> (not b_lambda!288015) (not bs!1939078)))

(declare-fun t!387201 () Bool)

(declare-fun tb!262475 () Bool)

(assert (=> (and start!727556 (= p!1842 p!1842) t!387201) tb!262475))

(declare-fun result!356246 () Bool)

(assert (=> tb!262475 (= result!356246 true)))

(assert (=> bs!1939078 t!387201))

(declare-fun b_and!352019 () Bool)

(assert (= b_and!352013 (and (=> t!387201 result!356246) b_and!352019)))

(declare-fun m!8093838 () Bool)

(assert (=> bs!1939078 m!8093838))

(assert (=> b!7509804 d!2306190))

(declare-fun b_lambda!288011 () Bool)

(assert (= b_lambda!288007 (or d!2306178 b_lambda!288011)))

(declare-fun bs!1939079 () Bool)

(declare-fun d!2306192 () Bool)

(assert (= bs!1939079 (and d!2306192 d!2306178)))

(assert (=> bs!1939079 (= (dynLambda!29813 lambda!466132 (h!78929 l!2942)) (not (dynLambda!29813 p!1842 (h!78929 l!2942))))))

(declare-fun b_lambda!288017 () Bool)

(assert (=> (not b_lambda!288017) (not bs!1939079)))

(assert (=> bs!1939079 t!387195))

(declare-fun b_and!352021 () Bool)

(assert (= b_and!352019 (and (=> t!387195 result!356238) b_and!352021)))

(assert (=> bs!1939079 m!8093814))

(assert (=> b!7509806 d!2306192))

(declare-fun b_lambda!288013 () Bool)

(assert (= b_lambda!288001 (or (and d!2306178 (= lambda!466132 p!1842)) (and d!2306182 (= lambda!466133 p!1842)) b_lambda!288013)))

(declare-fun bs!1939080 () Bool)

(declare-fun d!2306194 () Bool)

(assert (= bs!1939080 (and d!2306194 d!2306178)))

(assert (=> bs!1939080 (= (dynLambda!29813 lambda!466132 (h!78929 l!2942)) (not (dynLambda!29813 p!1842 (h!78929 l!2942))))))

(declare-fun b_lambda!288019 () Bool)

(assert (=> (not b_lambda!288019) (not bs!1939080)))

(assert (=> bs!1939080 t!387195))

(declare-fun b_and!352023 () Bool)

(assert (= b_and!352021 (and (=> t!387195 result!356238) b_and!352023)))

(assert (=> bs!1939080 m!8093814))

(assert (=> (and d!2306178 (= lambda!466132 p!1842) b!7509770) d!2306194))

(declare-fun bs!1939081 () Bool)

(declare-fun d!2306196 () Bool)

(assert (= bs!1939081 (and d!2306196 d!2306182)))

(assert (=> bs!1939081 (= (dynLambda!29813 lambda!466133 (h!78929 l!2942)) (not (dynLambda!29813 p!1842 (h!78929 l!2942))))))

(declare-fun b_lambda!288021 () Bool)

(assert (=> (not b_lambda!288021) (not bs!1939081)))

(assert (=> bs!1939081 t!387195))

(declare-fun b_and!352025 () Bool)

(assert (= b_and!352023 (and (=> t!387195 result!356238) b_and!352025)))

(assert (=> bs!1939081 m!8093814))

(assert (=> (and d!2306182 (= lambda!466133 p!1842) b!7509770) d!2306196))

(push 1)

(assert b_and!352025)

(assert (not b_lambda!288013))

(assert (not b_lambda!288019))

(assert (not b_lambda!288009))

(assert (not b_lambda!288021))

(assert (not b!7509807))

(assert (not b!7509808))

(assert (not b_next!135157))

(assert (not b_lambda!288017))

(assert tp_is_empty!49795)

(assert (not b_lambda!288015))

(assert (not b_lambda!288011))

(assert (not b!7509805))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352025)

(assert (not b_next!135157))

(check-sat)

(pop 1)

