; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727636 () Bool)

(assert start!727636)

(declare-fun b_free!134395 () Bool)

(declare-fun b_next!135185 () Bool)

(assert (=> start!727636 (= b_free!134395 (not b_next!135185))))

(declare-fun tp!2179950 () Bool)

(declare-fun b_and!352099 () Bool)

(assert (=> start!727636 (= tp!2179950 b_and!352099)))

(declare-fun res!3013055 () Bool)

(declare-fun e!4478297 () Bool)

(assert (=> start!727636 (=> (not res!3013055) (not e!4478297))))

(declare-datatypes ((B!3931 0))(
  ( (B!3932 (val!30325 Int)) )
))
(declare-datatypes ((List!72619 0))(
  ( (Nil!72495) (Cons!72495 (h!78943 B!3931) (t!387252 List!72619)) )
))
(declare-fun l!2942 () List!72619)

(declare-fun p!1842 () Int)

(declare-fun exists!4930 (List!72619 Int) Bool)

(assert (=> start!727636 (= res!3013055 (exists!4930 l!2942 p!1842))))

(assert (=> start!727636 e!4478297))

(declare-fun e!4478298 () Bool)

(assert (=> start!727636 e!4478298))

(assert (=> start!727636 tp!2179950))

(declare-fun b!7510158 () Bool)

(declare-fun e!4478299 () Bool)

(assert (=> b!7510158 (= e!4478299 false)))

(declare-fun lt!2637354 () Bool)

(declare-fun lt!2637355 () B!3931)

(declare-fun contains!20879 (List!72619 B!3931) Bool)

(assert (=> b!7510158 (= lt!2637354 (contains!20879 l!2942 lt!2637355))))

(declare-fun b!7510159 () Bool)

(declare-fun res!3013056 () Bool)

(assert (=> b!7510159 (=> (not res!3013056) (not e!4478297))))

(declare-fun e!4478300 () Bool)

(assert (=> b!7510159 (= res!3013056 e!4478300)))

(declare-fun res!3013057 () Bool)

(assert (=> b!7510159 (=> res!3013057 e!4478300)))

(assert (=> b!7510159 (= res!3013057 (not (is-Cons!72495 l!2942)))))

(declare-fun b!7510160 () Bool)

(declare-fun tp_is_empty!49823 () Bool)

(declare-fun tp!2179949 () Bool)

(assert (=> b!7510160 (= e!4478298 (and tp_is_empty!49823 tp!2179949))))

(declare-fun b!7510161 () Bool)

(assert (=> b!7510161 (= e!4478297 (not e!4478299))))

(declare-fun res!3013058 () Bool)

(assert (=> b!7510161 (=> (not res!3013058) (not e!4478299))))

(declare-fun dynLambda!29836 (Int B!3931) Bool)

(assert (=> b!7510161 (= res!3013058 (dynLambda!29836 p!1842 lt!2637355))))

(declare-fun head!15442 (List!72619) B!3931)

(assert (=> b!7510161 (= lt!2637355 (head!15442 l!2942))))

(assert (=> b!7510161 false))

(declare-fun b!7510162 () Bool)

(declare-fun res!3013054 () Bool)

(assert (=> b!7510162 (=> (not res!3013054) (not e!4478297))))

(assert (=> b!7510162 (= res!3013054 (not (is-Cons!72495 l!2942)))))

(declare-fun b!7510163 () Bool)

(assert (=> b!7510163 (= e!4478300 (not (dynLambda!29836 p!1842 (h!78943 l!2942))))))

(assert (= (and start!727636 res!3013055) b!7510159))

(assert (= (and b!7510159 (not res!3013057)) b!7510163))

(assert (= (and b!7510159 res!3013056) b!7510162))

(assert (= (and b!7510162 res!3013054) b!7510161))

(assert (= (and b!7510161 res!3013058) b!7510158))

(assert (= (and start!727636 (is-Cons!72495 l!2942)) b!7510160))

(declare-fun b_lambda!288117 () Bool)

(assert (=> (not b_lambda!288117) (not b!7510161)))

(declare-fun t!387249 () Bool)

(declare-fun tb!262511 () Bool)

(assert (=> (and start!727636 (= p!1842 p!1842) t!387249) tb!262511))

(declare-fun result!356302 () Bool)

(assert (=> tb!262511 (= result!356302 true)))

(assert (=> b!7510161 t!387249))

(declare-fun b_and!352101 () Bool)

(assert (= b_and!352099 (and (=> t!387249 result!356302) b_and!352101)))

(declare-fun b_lambda!288119 () Bool)

(assert (=> (not b_lambda!288119) (not b!7510163)))

(declare-fun t!387251 () Bool)

(declare-fun tb!262513 () Bool)

(assert (=> (and start!727636 (= p!1842 p!1842) t!387251) tb!262513))

(declare-fun result!356304 () Bool)

(assert (=> tb!262513 (= result!356304 true)))

(assert (=> b!7510163 t!387251))

(declare-fun b_and!352103 () Bool)

(assert (= b_and!352101 (and (=> t!387251 result!356304) b_and!352103)))

(declare-fun m!8094002 () Bool)

(assert (=> start!727636 m!8094002))

(declare-fun m!8094004 () Bool)

(assert (=> b!7510158 m!8094004))

(declare-fun m!8094006 () Bool)

(assert (=> b!7510161 m!8094006))

(declare-fun m!8094008 () Bool)

(assert (=> b!7510161 m!8094008))

(declare-fun m!8094010 () Bool)

(assert (=> b!7510163 m!8094010))

(push 1)

(assert (not b_next!135185))

(assert (not b_lambda!288117))

(assert tp_is_empty!49823)

(assert (not b_lambda!288119))

(assert (not b!7510158))

(assert (not b!7510160))

(assert (not start!727636))

(assert (not b!7510161))

(assert b_and!352103)

(check-sat)

(pop 1)

(push 1)

(assert b_and!352103)

(assert (not b_next!135185))

(check-sat)

(pop 1)

