; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701044 () Bool)

(assert start!701044)

(declare-fun b_free!133859 () Bool)

(declare-fun b_next!134649 () Bool)

(assert (=> start!701044 (= b_free!133859 (not b_next!134649))))

(declare-fun tp!2032998 () Bool)

(declare-fun b_and!351081 () Bool)

(assert (=> start!701044 (= tp!2032998 b_and!351081)))

(declare-fun b!7228823 () Bool)

(assert (=> b!7228823 true))

(assert (=> b!7228823 true))

(declare-fun lambda!438824 () Int)

(declare-fun order!28763 () Int)

(declare-fun order!28765 () Int)

(declare-fun f!1145 () Int)

(declare-fun dynLambda!28455 (Int Int) Int)

(declare-fun dynLambda!28456 (Int Int) Int)

(assert (=> b!7228823 (< (dynLambda!28455 order!28763 f!1145) (dynLambda!28456 order!28765 lambda!438824))))

(declare-fun res!2932895 () Bool)

(declare-fun e!4333321 () Bool)

(assert (=> start!701044 (=> (not res!2932895) (not e!4333321))))

(declare-fun a!1075 () Int)

(declare-fun b!25555 () Int)

(assert (=> start!701044 (= res!2932895 (>= a!1075 b!25555))))

(assert (=> start!701044 e!4333321))

(assert (=> start!701044 true))

(declare-fun e!4333322 () Bool)

(assert (=> start!701044 e!4333322))

(assert (=> start!701044 tp!2032998))

(declare-fun b!7228820 () Bool)

(declare-datatypes ((C!37178 0))(
  ( (C!37179 (val!28537 Int)) )
))
(declare-datatypes ((Regex!18452 0))(
  ( (ElementMatch!18452 (c!1341173 C!37178)) (Concat!27297 (regOne!37416 Regex!18452) (regTwo!37416 Regex!18452)) (EmptyExpr!18452) (Star!18452 (reg!18781 Regex!18452)) (EmptyLang!18452) (Union!18452 (regOne!37417 Regex!18452) (regTwo!37417 Regex!18452)) )
))
(declare-datatypes ((List!69992 0))(
  ( (Nil!69868) (Cons!69868 (h!76316 Regex!18452) (t!384023 List!69992)) )
))
(declare-datatypes ((Context!14784 0))(
  ( (Context!14785 (exprs!7892 List!69992)) )
))
(declare-datatypes ((List!69993 0))(
  ( (Nil!69869) (Cons!69869 (h!76317 Context!14784) (t!384024 List!69993)) )
))
(declare-fun l!7021 () List!69993)

(declare-fun forall!17273 (List!69993 Int) Bool)

(assert (=> b!7228820 (= e!4333321 (not (forall!17273 (t!384024 l!7021) lambda!438824)))))

(declare-fun b!7228821 () Bool)

(declare-fun e!4333320 () Bool)

(declare-fun tp!2032999 () Bool)

(assert (=> b!7228821 (= e!4333320 tp!2032999)))

(declare-fun b!7228822 () Bool)

(declare-fun res!2932896 () Bool)

(assert (=> b!7228822 (=> (not res!2932896) (not e!4333321))))

(assert (=> b!7228822 (= res!2932896 (not (is-Nil!69869 l!7021)))))

(declare-fun res!2932897 () Bool)

(assert (=> b!7228823 (=> (not res!2932897) (not e!4333321))))

(assert (=> b!7228823 (= res!2932897 (forall!17273 l!7021 lambda!438824))))

(declare-fun tp!2032997 () Bool)

(declare-fun b!7228824 () Bool)

(declare-fun inv!89141 (Context!14784) Bool)

(assert (=> b!7228824 (= e!4333322 (and (inv!89141 (h!76317 l!7021)) e!4333320 tp!2032997))))

(assert (= (and start!701044 res!2932895) b!7228823))

(assert (= (and b!7228823 res!2932897) b!7228822))

(assert (= (and b!7228822 res!2932896) b!7228820))

(assert (= b!7228824 b!7228821))

(assert (= (and start!701044 (is-Cons!69869 l!7021)) b!7228824))

(declare-fun m!7897094 () Bool)

(assert (=> b!7228820 m!7897094))

(declare-fun m!7897096 () Bool)

(assert (=> b!7228823 m!7897096))

(declare-fun m!7897098 () Bool)

(assert (=> b!7228824 m!7897098))

(push 1)

(assert (not b!7228824))

(assert (not b!7228823))

(assert (not b!7228820))

(assert (not b_next!134649))

(assert (not b!7228821))

(assert b_and!351081)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351081)

(assert (not b_next!134649))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244985 () Bool)

(declare-fun res!2932911 () Bool)

(declare-fun e!4333336 () Bool)

(assert (=> d!2244985 (=> res!2932911 e!4333336)))

(assert (=> d!2244985 (= res!2932911 (is-Nil!69869 (t!384024 l!7021)))))

(assert (=> d!2244985 (= (forall!17273 (t!384024 l!7021) lambda!438824) e!4333336)))

(declare-fun b!7228852 () Bool)

(declare-fun e!4333337 () Bool)

(assert (=> b!7228852 (= e!4333336 e!4333337)))

(declare-fun res!2932912 () Bool)

(assert (=> b!7228852 (=> (not res!2932912) (not e!4333337))))

(declare-fun dynLambda!28459 (Int Context!14784) Bool)

(assert (=> b!7228852 (= res!2932912 (dynLambda!28459 lambda!438824 (h!76317 (t!384024 l!7021))))))

(declare-fun b!7228853 () Bool)

(assert (=> b!7228853 (= e!4333337 (forall!17273 (t!384024 (t!384024 l!7021)) lambda!438824))))

(assert (= (and d!2244985 (not res!2932911)) b!7228852))

(assert (= (and b!7228852 res!2932912) b!7228853))

(declare-fun b_lambda!276847 () Bool)

(assert (=> (not b_lambda!276847) (not b!7228852)))

(declare-fun m!7897106 () Bool)

(assert (=> b!7228852 m!7897106))

(declare-fun m!7897108 () Bool)

(assert (=> b!7228853 m!7897108))

(assert (=> b!7228820 d!2244985))

(declare-fun d!2244987 () Bool)

(declare-fun lambda!438832 () Int)

(declare-fun forall!17275 (List!69992 Int) Bool)

(assert (=> d!2244987 (= (inv!89141 (h!76317 l!7021)) (forall!17275 (exprs!7892 (h!76317 l!7021)) lambda!438832))))

(declare-fun bs!1902217 () Bool)

(assert (= bs!1902217 d!2244987))

(declare-fun m!7897114 () Bool)

(assert (=> bs!1902217 m!7897114))

(assert (=> b!7228824 d!2244987))

(declare-fun d!2244993 () Bool)

(declare-fun res!2932919 () Bool)

(declare-fun e!4333344 () Bool)

(assert (=> d!2244993 (=> res!2932919 e!4333344)))

(assert (=> d!2244993 (= res!2932919 (is-Nil!69869 l!7021))))

(assert (=> d!2244993 (= (forall!17273 l!7021 lambda!438824) e!4333344)))

(declare-fun b!7228860 () Bool)

(declare-fun e!4333345 () Bool)

(assert (=> b!7228860 (= e!4333344 e!4333345)))

(declare-fun res!2932920 () Bool)

(assert (=> b!7228860 (=> (not res!2932920) (not e!4333345))))

(assert (=> b!7228860 (= res!2932920 (dynLambda!28459 lambda!438824 (h!76317 l!7021)))))

(declare-fun b!7228861 () Bool)

(assert (=> b!7228861 (= e!4333345 (forall!17273 (t!384024 l!7021) lambda!438824))))

(assert (= (and d!2244993 (not res!2932919)) b!7228860))

(assert (= (and b!7228860 res!2932920) b!7228861))

(declare-fun b_lambda!276851 () Bool)

(assert (=> (not b_lambda!276851) (not b!7228860)))

(declare-fun m!7897116 () Bool)

(assert (=> b!7228860 m!7897116))

(assert (=> b!7228861 m!7897094))

(assert (=> b!7228823 d!2244993))

(declare-fun b!7228866 () Bool)

(declare-fun e!4333348 () Bool)

(declare-fun tp!2033013 () Bool)

(declare-fun tp!2033014 () Bool)

(assert (=> b!7228866 (= e!4333348 (and tp!2033013 tp!2033014))))

(assert (=> b!7228821 (= tp!2032999 e!4333348)))

(assert (= (and b!7228821 (is-Cons!69868 (exprs!7892 (h!76317 l!7021)))) b!7228866))

(declare-fun b!7228874 () Bool)

(declare-fun e!4333354 () Bool)

(declare-fun tp!2033019 () Bool)

(assert (=> b!7228874 (= e!4333354 tp!2033019)))

(declare-fun b!7228873 () Bool)

(declare-fun tp!2033020 () Bool)

(declare-fun e!4333353 () Bool)

(assert (=> b!7228873 (= e!4333353 (and (inv!89141 (h!76317 (t!384024 l!7021))) e!4333354 tp!2033020))))

(assert (=> b!7228824 (= tp!2032997 e!4333353)))

(assert (= b!7228873 b!7228874))

(assert (= (and b!7228824 (is-Cons!69869 (t!384024 l!7021))) b!7228873))

(declare-fun m!7897118 () Bool)

(assert (=> b!7228873 m!7897118))

(declare-fun b_lambda!276853 () Bool)

(assert (= b_lambda!276851 (or b!7228823 b_lambda!276853)))

(declare-fun bs!1902218 () Bool)

(declare-fun d!2244995 () Bool)

(assert (= bs!1902218 (and d!2244995 b!7228823)))

(declare-fun dynLambda!28460 (Int Context!14784) Int)

(assert (=> bs!1902218 (= (dynLambda!28459 lambda!438824 (h!76317 l!7021)) (>= b!25555 (dynLambda!28460 f!1145 (h!76317 l!7021))))))

(declare-fun b_lambda!276857 () Bool)

(assert (=> (not b_lambda!276857) (not bs!1902218)))

(declare-fun t!384028 () Bool)

(declare-fun tb!262099 () Bool)

(assert (=> (and start!701044 (= f!1145 f!1145) t!384028) tb!262099))

(declare-fun result!351084 () Bool)

(assert (=> tb!262099 (= result!351084 true)))

(assert (=> bs!1902218 t!384028))

(declare-fun b_and!351085 () Bool)

(assert (= b_and!351081 (and (=> t!384028 result!351084) b_and!351085)))

(declare-fun m!7897120 () Bool)

(assert (=> bs!1902218 m!7897120))

(assert (=> b!7228860 d!2244995))

(declare-fun b_lambda!276855 () Bool)

(assert (= b_lambda!276847 (or b!7228823 b_lambda!276855)))

(declare-fun bs!1902219 () Bool)

(declare-fun d!2244997 () Bool)

(assert (= bs!1902219 (and d!2244997 b!7228823)))

(assert (=> bs!1902219 (= (dynLambda!28459 lambda!438824 (h!76317 (t!384024 l!7021))) (>= b!25555 (dynLambda!28460 f!1145 (h!76317 (t!384024 l!7021)))))))

(declare-fun b_lambda!276859 () Bool)

(assert (=> (not b_lambda!276859) (not bs!1902219)))

(declare-fun t!384030 () Bool)

(declare-fun tb!262101 () Bool)

(assert (=> (and start!701044 (= f!1145 f!1145) t!384030) tb!262101))

(declare-fun result!351086 () Bool)

(assert (=> tb!262101 (= result!351086 true)))

(assert (=> bs!1902219 t!384030))

(declare-fun b_and!351087 () Bool)

(assert (= b_and!351085 (and (=> t!384030 result!351086) b_and!351087)))

(declare-fun m!7897122 () Bool)

(assert (=> bs!1902219 m!7897122))

(assert (=> b!7228852 d!2244997))

(push 1)

(assert (not b!7228874))

(assert (not b!7228866))

(assert (not b!7228861))

(assert (not b_lambda!276853))

(assert (not b_lambda!276855))

(assert (not b!7228873))

(assert (not d!2244987))

(assert (not b!7228853))

(assert (not b_next!134649))

(assert (not b_lambda!276859))

(assert (not b_lambda!276857))

(assert b_and!351087)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351087)

(assert (not b_next!134649))

(check-sat)

(pop 1)

