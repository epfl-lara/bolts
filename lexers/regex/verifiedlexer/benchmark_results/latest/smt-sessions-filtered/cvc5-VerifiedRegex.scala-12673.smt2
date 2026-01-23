; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701056 () Bool)

(assert start!701056)

(declare-fun b_free!133863 () Bool)

(declare-fun b_next!134653 () Bool)

(assert (=> start!701056 (= b_free!133863 (not b_next!134653))))

(declare-fun tp!2033039 () Bool)

(declare-fun b_and!351093 () Bool)

(assert (=> start!701056 (= tp!2033039 b_and!351093)))

(declare-fun b!7228898 () Bool)

(assert (=> b!7228898 true))

(assert (=> b!7228898 true))

(declare-fun f!1145 () Int)

(declare-fun lambda!438838 () Int)

(declare-fun order!28773 () Int)

(declare-fun order!28771 () Int)

(declare-fun dynLambda!28462 (Int Int) Int)

(declare-fun dynLambda!28463 (Int Int) Int)

(assert (=> b!7228898 (< (dynLambda!28462 order!28771 f!1145) (dynLambda!28463 order!28773 lambda!438838))))

(declare-fun tp!2033041 () Bool)

(declare-fun e!4333374 () Bool)

(declare-datatypes ((C!37182 0))(
  ( (C!37183 (val!28539 Int)) )
))
(declare-datatypes ((Regex!18454 0))(
  ( (ElementMatch!18454 (c!1341175 C!37182)) (Concat!27299 (regOne!37420 Regex!18454) (regTwo!37420 Regex!18454)) (EmptyExpr!18454) (Star!18454 (reg!18783 Regex!18454)) (EmptyLang!18454) (Union!18454 (regOne!37421 Regex!18454) (regTwo!37421 Regex!18454)) )
))
(declare-datatypes ((List!69996 0))(
  ( (Nil!69872) (Cons!69872 (h!76320 Regex!18454) (t!384035 List!69996)) )
))
(declare-datatypes ((Context!14788 0))(
  ( (Context!14789 (exprs!7894 List!69996)) )
))
(declare-datatypes ((List!69997 0))(
  ( (Nil!69873) (Cons!69873 (h!76321 Context!14788) (t!384036 List!69997)) )
))
(declare-fun l!7021 () List!69997)

(declare-fun b!7228900 () Bool)

(declare-fun e!4333372 () Bool)

(declare-fun inv!89146 (Context!14788) Bool)

(assert (=> b!7228900 (= e!4333372 (and (inv!89146 (h!76321 l!7021)) e!4333374 tp!2033041))))

(declare-fun res!2932928 () Bool)

(declare-fun e!4333373 () Bool)

(assert (=> b!7228898 (=> (not res!2932928) (not e!4333373))))

(declare-fun forall!17277 (List!69997 Int) Bool)

(assert (=> b!7228898 (= res!2932928 (forall!17277 l!7021 lambda!438838))))

(declare-fun b!7228899 () Bool)

(declare-fun ListPrimitiveSize!419 (List!69997) Int)

(assert (=> b!7228899 (= e!4333373 (< (ListPrimitiveSize!419 l!7021) 0))))

(declare-fun res!2932927 () Bool)

(assert (=> start!701056 (=> (not res!2932927) (not e!4333373))))

(declare-fun a!1075 () Int)

(declare-fun b!25555 () Int)

(assert (=> start!701056 (= res!2932927 (>= a!1075 b!25555))))

(assert (=> start!701056 e!4333373))

(assert (=> start!701056 true))

(assert (=> start!701056 e!4333372))

(assert (=> start!701056 tp!2033039))

(declare-fun b!7228901 () Bool)

(declare-fun tp!2033040 () Bool)

(assert (=> b!7228901 (= e!4333374 tp!2033040)))

(assert (= (and start!701056 res!2932927) b!7228898))

(assert (= (and b!7228898 res!2932928) b!7228899))

(assert (= b!7228900 b!7228901))

(assert (= (and start!701056 (is-Cons!69873 l!7021)) b!7228900))

(declare-fun m!7897134 () Bool)

(assert (=> b!7228900 m!7897134))

(declare-fun m!7897136 () Bool)

(assert (=> b!7228898 m!7897136))

(declare-fun m!7897138 () Bool)

(assert (=> b!7228899 m!7897138))

(push 1)

(assert (not b!7228901))

(assert (not b!7228899))

(assert (not b!7228900))

(assert (not b_next!134653))

(assert b_and!351093)

(assert (not b!7228898))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351093)

(assert (not b_next!134653))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245006 () Bool)

(declare-fun res!2932939 () Bool)

(declare-fun e!4333388 () Bool)

(assert (=> d!2245006 (=> res!2932939 e!4333388)))

(assert (=> d!2245006 (= res!2932939 (is-Nil!69873 l!7021))))

(assert (=> d!2245006 (= (forall!17277 l!7021 lambda!438838) e!4333388)))

(declare-fun b!7228926 () Bool)

(declare-fun e!4333389 () Bool)

(assert (=> b!7228926 (= e!4333388 e!4333389)))

(declare-fun res!2932940 () Bool)

(assert (=> b!7228926 (=> (not res!2932940) (not e!4333389))))

(declare-fun dynLambda!28466 (Int Context!14788) Bool)

(assert (=> b!7228926 (= res!2932940 (dynLambda!28466 lambda!438838 (h!76321 l!7021)))))

(declare-fun b!7228927 () Bool)

(assert (=> b!7228927 (= e!4333389 (forall!17277 (t!384036 l!7021) lambda!438838))))

(assert (= (and d!2245006 (not res!2932939)) b!7228926))

(assert (= (and b!7228926 res!2932940) b!7228927))

(declare-fun b_lambda!276871 () Bool)

(assert (=> (not b_lambda!276871) (not b!7228926)))

(declare-fun m!7897146 () Bool)

(assert (=> b!7228926 m!7897146))

(declare-fun m!7897148 () Bool)

(assert (=> b!7228927 m!7897148))

(assert (=> b!7228898 d!2245006))

(declare-fun d!2245008 () Bool)

(declare-fun lt!2572514 () Int)

(assert (=> d!2245008 (>= lt!2572514 0)))

(declare-fun e!4333392 () Int)

(assert (=> d!2245008 (= lt!2572514 e!4333392)))

(declare-fun c!1341179 () Bool)

(assert (=> d!2245008 (= c!1341179 (is-Nil!69873 l!7021))))

(assert (=> d!2245008 (= (ListPrimitiveSize!419 l!7021) lt!2572514)))

(declare-fun b!7228934 () Bool)

(assert (=> b!7228934 (= e!4333392 0)))

(declare-fun b!7228935 () Bool)

(assert (=> b!7228935 (= e!4333392 (+ 1 (ListPrimitiveSize!419 (t!384036 l!7021))))))

(assert (= (and d!2245008 c!1341179) b!7228934))

(assert (= (and d!2245008 (not c!1341179)) b!7228935))

(declare-fun m!7897150 () Bool)

(assert (=> b!7228935 m!7897150))

(assert (=> b!7228899 d!2245008))

(declare-fun d!2245012 () Bool)

(declare-fun lambda!438844 () Int)

(declare-fun forall!17279 (List!69996 Int) Bool)

(assert (=> d!2245012 (= (inv!89146 (h!76321 l!7021)) (forall!17279 (exprs!7894 (h!76321 l!7021)) lambda!438844))))

(declare-fun bs!1902225 () Bool)

(assert (= bs!1902225 d!2245012))

(declare-fun m!7897154 () Bool)

(assert (=> bs!1902225 m!7897154))

(assert (=> b!7228900 d!2245012))

(declare-fun b!7228944 () Bool)

(declare-fun e!4333398 () Bool)

(declare-fun tp!2033055 () Bool)

(declare-fun tp!2033056 () Bool)

(assert (=> b!7228944 (= e!4333398 (and tp!2033055 tp!2033056))))

(assert (=> b!7228901 (= tp!2033040 e!4333398)))

(assert (= (and b!7228901 (is-Cons!69872 (exprs!7894 (h!76321 l!7021)))) b!7228944))

(declare-fun b!7228952 () Bool)

(declare-fun e!4333404 () Bool)

(declare-fun tp!2033061 () Bool)

(assert (=> b!7228952 (= e!4333404 tp!2033061)))

(declare-fun tp!2033062 () Bool)

(declare-fun b!7228951 () Bool)

(declare-fun e!4333403 () Bool)

(assert (=> b!7228951 (= e!4333403 (and (inv!89146 (h!76321 (t!384036 l!7021))) e!4333404 tp!2033062))))

(assert (=> b!7228900 (= tp!2033041 e!4333403)))

(assert (= b!7228951 b!7228952))

(assert (= (and b!7228900 (is-Cons!69873 (t!384036 l!7021))) b!7228951))

(declare-fun m!7897156 () Bool)

(assert (=> b!7228951 m!7897156))

(declare-fun b_lambda!276873 () Bool)

(assert (= b_lambda!276871 (or b!7228898 b_lambda!276873)))

(declare-fun bs!1902226 () Bool)

(declare-fun d!2245016 () Bool)

(assert (= bs!1902226 (and d!2245016 b!7228898)))

(declare-fun dynLambda!28467 (Int Context!14788) Int)

(assert (=> bs!1902226 (= (dynLambda!28466 lambda!438838 (h!76321 l!7021)) (>= b!25555 (dynLambda!28467 f!1145 (h!76321 l!7021))))))

(declare-fun b_lambda!276875 () Bool)

(assert (=> (not b_lambda!276875) (not bs!1902226)))

(declare-fun t!384040 () Bool)

(declare-fun tb!262107 () Bool)

(assert (=> (and start!701056 (= f!1145 f!1145) t!384040) tb!262107))

(declare-fun result!351100 () Bool)

(assert (=> tb!262107 (= result!351100 true)))

(assert (=> bs!1902226 t!384040))

(declare-fun b_and!351097 () Bool)

(assert (= b_and!351093 (and (=> t!384040 result!351100) b_and!351097)))

(declare-fun m!7897158 () Bool)

(assert (=> bs!1902226 m!7897158))

(assert (=> b!7228926 d!2245016))

(push 1)

(assert (not b!7228944))

(assert (not d!2245012))

(assert (not b!7228927))

(assert (not b_lambda!276873))

(assert b_and!351097)

(assert (not b!7228952))

(assert (not b_lambda!276875))

(assert (not b!7228935))

(assert (not b_next!134653))

(assert (not b!7228951))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351097)

(assert (not b_next!134653))

(check-sat)

(pop 1)

