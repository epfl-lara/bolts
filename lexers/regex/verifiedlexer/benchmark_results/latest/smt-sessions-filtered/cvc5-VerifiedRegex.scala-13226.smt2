; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720282 () Bool)

(assert start!720282)

(declare-fun b_free!134307 () Bool)

(declare-fun b_next!135097 () Bool)

(assert (=> start!720282 (= b_free!134307 (not b_next!135097))))

(declare-fun tp!2100669 () Bool)

(declare-fun b_and!351871 () Bool)

(assert (=> start!720282 (= tp!2100669 b_and!351871)))

(declare-fun b!7384216 () Bool)

(declare-fun e!4419957 () Bool)

(declare-fun tp_is_empty!48925 () Bool)

(declare-fun tp!2100668 () Bool)

(assert (=> b!7384216 (= e!4419957 (and tp_is_empty!48925 tp!2100668))))

(declare-fun b!7384217 () Bool)

(declare-fun res!2977949 () Bool)

(declare-fun e!4419958 () Bool)

(assert (=> b!7384217 (=> (not res!2977949) (not e!4419958))))

(declare-datatypes ((B!3851 0))(
  ( (B!3852 (val!29837 Int)) )
))
(declare-datatypes ((List!71836 0))(
  ( (Nil!71712) (Cons!71712 (h!78160 B!3851) (t!386335 List!71836)) )
))
(declare-fun l1!1475 () List!71836)

(assert (=> b!7384217 (= res!2977949 (is-Cons!71712 l1!1475))))

(declare-fun b!7384218 () Bool)

(declare-fun p!2045 () Int)

(declare-fun forall!18124 (List!71836 Int) Bool)

(assert (=> b!7384218 (= e!4419958 (not (forall!18124 (t!386335 l1!1475) p!2045)))))

(declare-fun res!2977948 () Bool)

(assert (=> start!720282 (=> (not res!2977948) (not e!4419958))))

(assert (=> start!720282 (= res!2977948 (forall!18124 l1!1475 p!2045))))

(assert (=> start!720282 e!4419958))

(assert (=> start!720282 e!4419957))

(assert (=> start!720282 tp!2100669))

(declare-fun e!4419959 () Bool)

(assert (=> start!720282 e!4419959))

(declare-fun b!7384219 () Bool)

(declare-fun res!2977947 () Bool)

(assert (=> b!7384219 (=> (not res!2977947) (not e!4419958))))

(declare-fun l2!1444 () List!71836)

(assert (=> b!7384219 (= res!2977947 (forall!18124 l2!1444 p!2045))))

(declare-fun b!7384220 () Bool)

(declare-fun tp!2100670 () Bool)

(assert (=> b!7384220 (= e!4419959 (and tp_is_empty!48925 tp!2100670))))

(assert (= (and start!720282 res!2977948) b!7384219))

(assert (= (and b!7384219 res!2977947) b!7384217))

(assert (= (and b!7384217 res!2977949) b!7384218))

(assert (= (and start!720282 (is-Cons!71712 l1!1475)) b!7384216))

(assert (= (and start!720282 (is-Cons!71712 l2!1444)) b!7384220))

(declare-fun m!8033190 () Bool)

(assert (=> b!7384218 m!8033190))

(declare-fun m!8033192 () Bool)

(assert (=> start!720282 m!8033192))

(declare-fun m!8033194 () Bool)

(assert (=> b!7384219 m!8033194))

(push 1)

(assert (not b!7384219))

(assert (not b_next!135097))

(assert (not start!720282))

(assert (not b!7384216))

(assert b_and!351871)

(assert (not b!7384220))

(assert (not b!7384218))

(assert tp_is_empty!48925)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351871)

(assert (not b_next!135097))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286245 () Bool)

(declare-fun res!2977963 () Bool)

(declare-fun e!4419973 () Bool)

(assert (=> d!2286245 (=> res!2977963 e!4419973)))

(assert (=> d!2286245 (= res!2977963 (is-Nil!71712 (t!386335 l1!1475)))))

(assert (=> d!2286245 (= (forall!18124 (t!386335 l1!1475) p!2045) e!4419973)))

(declare-fun b!7384240 () Bool)

(declare-fun e!4419974 () Bool)

(assert (=> b!7384240 (= e!4419973 e!4419974)))

(declare-fun res!2977964 () Bool)

(assert (=> b!7384240 (=> (not res!2977964) (not e!4419974))))

(declare-fun dynLambda!29538 (Int B!3851) Bool)

(assert (=> b!7384240 (= res!2977964 (dynLambda!29538 p!2045 (h!78160 (t!386335 l1!1475))))))

(declare-fun b!7384241 () Bool)

(assert (=> b!7384241 (= e!4419974 (forall!18124 (t!386335 (t!386335 l1!1475)) p!2045))))

(assert (= (and d!2286245 (not res!2977963)) b!7384240))

(assert (= (and b!7384240 res!2977964) b!7384241))

(declare-fun b_lambda!284819 () Bool)

(assert (=> (not b_lambda!284819) (not b!7384240)))

(declare-fun t!386338 () Bool)

(declare-fun tb!262395 () Bool)

(assert (=> (and start!720282 (= p!2045 p!2045) t!386338) tb!262395))

(declare-fun result!354698 () Bool)

(assert (=> tb!262395 (= result!354698 true)))

(assert (=> b!7384240 t!386338))

(declare-fun b_and!351875 () Bool)

(assert (= b_and!351871 (and (=> t!386338 result!354698) b_and!351875)))

(declare-fun m!8033202 () Bool)

(assert (=> b!7384240 m!8033202))

(declare-fun m!8033204 () Bool)

(assert (=> b!7384241 m!8033204))

(assert (=> b!7384218 d!2286245))

(declare-fun d!2286249 () Bool)

(declare-fun res!2977965 () Bool)

(declare-fun e!4419975 () Bool)

(assert (=> d!2286249 (=> res!2977965 e!4419975)))

(assert (=> d!2286249 (= res!2977965 (is-Nil!71712 l2!1444))))

(assert (=> d!2286249 (= (forall!18124 l2!1444 p!2045) e!4419975)))

(declare-fun b!7384242 () Bool)

(declare-fun e!4419976 () Bool)

(assert (=> b!7384242 (= e!4419975 e!4419976)))

(declare-fun res!2977966 () Bool)

(assert (=> b!7384242 (=> (not res!2977966) (not e!4419976))))

(assert (=> b!7384242 (= res!2977966 (dynLambda!29538 p!2045 (h!78160 l2!1444)))))

(declare-fun b!7384243 () Bool)

(assert (=> b!7384243 (= e!4419976 (forall!18124 (t!386335 l2!1444) p!2045))))

(assert (= (and d!2286249 (not res!2977965)) b!7384242))

(assert (= (and b!7384242 res!2977966) b!7384243))

(declare-fun b_lambda!284821 () Bool)

(assert (=> (not b_lambda!284821) (not b!7384242)))

(declare-fun t!386340 () Bool)

(declare-fun tb!262397 () Bool)

(assert (=> (and start!720282 (= p!2045 p!2045) t!386340) tb!262397))

(declare-fun result!354700 () Bool)

(assert (=> tb!262397 (= result!354700 true)))

(assert (=> b!7384242 t!386340))

(declare-fun b_and!351877 () Bool)

(assert (= b_and!351875 (and (=> t!386340 result!354700) b_and!351877)))

(declare-fun m!8033206 () Bool)

(assert (=> b!7384242 m!8033206))

(declare-fun m!8033208 () Bool)

(assert (=> b!7384243 m!8033208))

(assert (=> b!7384219 d!2286249))

(declare-fun d!2286251 () Bool)

(declare-fun res!2977967 () Bool)

(declare-fun e!4419977 () Bool)

(assert (=> d!2286251 (=> res!2977967 e!4419977)))

(assert (=> d!2286251 (= res!2977967 (is-Nil!71712 l1!1475))))

(assert (=> d!2286251 (= (forall!18124 l1!1475 p!2045) e!4419977)))

(declare-fun b!7384244 () Bool)

(declare-fun e!4419978 () Bool)

(assert (=> b!7384244 (= e!4419977 e!4419978)))

(declare-fun res!2977968 () Bool)

(assert (=> b!7384244 (=> (not res!2977968) (not e!4419978))))

(assert (=> b!7384244 (= res!2977968 (dynLambda!29538 p!2045 (h!78160 l1!1475)))))

(declare-fun b!7384245 () Bool)

(assert (=> b!7384245 (= e!4419978 (forall!18124 (t!386335 l1!1475) p!2045))))

(assert (= (and d!2286251 (not res!2977967)) b!7384244))

(assert (= (and b!7384244 res!2977968) b!7384245))

(declare-fun b_lambda!284823 () Bool)

(assert (=> (not b_lambda!284823) (not b!7384244)))

(declare-fun t!386342 () Bool)

(declare-fun tb!262399 () Bool)

(assert (=> (and start!720282 (= p!2045 p!2045) t!386342) tb!262399))

(declare-fun result!354702 () Bool)

(assert (=> tb!262399 (= result!354702 true)))

(assert (=> b!7384244 t!386342))

(declare-fun b_and!351879 () Bool)

(assert (= b_and!351877 (and (=> t!386342 result!354702) b_and!351879)))

(declare-fun m!8033210 () Bool)

(assert (=> b!7384244 m!8033210))

(assert (=> b!7384245 m!8033190))

(assert (=> start!720282 d!2286251))

(declare-fun b!7384254 () Bool)

(declare-fun e!4419985 () Bool)

(declare-fun tp!2100682 () Bool)

(assert (=> b!7384254 (= e!4419985 (and tp_is_empty!48925 tp!2100682))))

(assert (=> b!7384216 (= tp!2100668 e!4419985)))

(assert (= (and b!7384216 (is-Cons!71712 (t!386335 l1!1475))) b!7384254))

(declare-fun b!7384255 () Bool)

(declare-fun e!4419986 () Bool)

(declare-fun tp!2100683 () Bool)

(assert (=> b!7384255 (= e!4419986 (and tp_is_empty!48925 tp!2100683))))

(assert (=> b!7384220 (= tp!2100670 e!4419986)))

(assert (= (and b!7384220 (is-Cons!71712 (t!386335 l2!1444))) b!7384255))

(declare-fun b_lambda!284825 () Bool)

(assert (= b_lambda!284823 (or (and start!720282 b_free!134307) b_lambda!284825)))

(declare-fun b_lambda!284827 () Bool)

(assert (= b_lambda!284821 (or (and start!720282 b_free!134307) b_lambda!284827)))

(declare-fun b_lambda!284829 () Bool)

(assert (= b_lambda!284819 (or (and start!720282 b_free!134307) b_lambda!284829)))

(push 1)

(assert (not b!7384243))

(assert b_and!351879)

(assert (not b_lambda!284827))

(assert (not b!7384245))

(assert (not b_lambda!284829))

(assert (not b_lambda!284825))

(assert (not b!7384241))

(assert (not b!7384254))

(assert tp_is_empty!48925)

(assert (not b!7384255))

(assert (not b_next!135097))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351879)

(assert (not b_next!135097))

(check-sat)

(pop 1)

