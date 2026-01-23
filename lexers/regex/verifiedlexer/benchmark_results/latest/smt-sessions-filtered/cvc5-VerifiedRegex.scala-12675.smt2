; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701082 () Bool)

(assert start!701082)

(declare-fun b_free!133871 () Bool)

(declare-fun b_next!134661 () Bool)

(assert (=> start!701082 (= b_free!133871 (not b_next!134661))))

(declare-fun tp!2033123 () Bool)

(declare-fun b_and!351107 () Bool)

(assert (=> start!701082 (= tp!2033123 b_and!351107)))

(declare-fun b!7229055 () Bool)

(assert (=> b!7229055 true))

(assert (=> b!7229055 true))

(declare-fun order!28787 () Int)

(declare-fun lambda!438868 () Int)

(declare-fun order!28789 () Int)

(declare-fun f!1145 () Int)

(declare-fun dynLambda!28474 (Int Int) Int)

(declare-fun dynLambda!28475 (Int Int) Int)

(assert (=> b!7229055 (< (dynLambda!28474 order!28787 f!1145) (dynLambda!28475 order!28789 lambda!438868))))

(declare-fun b!7229054 () Bool)

(declare-fun res!2932980 () Bool)

(declare-fun e!4333470 () Bool)

(assert (=> b!7229054 (=> (not res!2932980) (not e!4333470))))

(declare-datatypes ((C!37190 0))(
  ( (C!37191 (val!28543 Int)) )
))
(declare-datatypes ((Regex!18458 0))(
  ( (ElementMatch!18458 (c!1341189 C!37190)) (Concat!27303 (regOne!37428 Regex!18458) (regTwo!37428 Regex!18458)) (EmptyExpr!18458) (Star!18458 (reg!18787 Regex!18458)) (EmptyLang!18458) (Union!18458 (regOne!37429 Regex!18458) (regTwo!37429 Regex!18458)) )
))
(declare-datatypes ((List!70004 0))(
  ( (Nil!69880) (Cons!69880 (h!76328 Regex!18458) (t!384047 List!70004)) )
))
(declare-datatypes ((Context!14796 0))(
  ( (Context!14797 (exprs!7898 List!70004)) )
))
(declare-datatypes ((List!70005 0))(
  ( (Nil!69881) (Cons!69881 (h!76329 Context!14796) (t!384048 List!70005)) )
))
(declare-fun l!7021 () List!70005)

(assert (=> b!7229054 (= res!2932980 (not (is-Nil!69881 l!7021)))))

(declare-fun res!2932981 () Bool)

(assert (=> b!7229055 (=> (not res!2932981) (not e!4333470))))

(declare-fun forall!17283 (List!70005 Int) Bool)

(assert (=> b!7229055 (= res!2932981 (forall!17283 l!7021 lambda!438868))))

(declare-fun b!7229056 () Bool)

(declare-fun e!4333471 () Bool)

(declare-fun tp!2033124 () Bool)

(declare-fun e!4333472 () Bool)

(declare-fun inv!89156 (Context!14796) Bool)

(assert (=> b!7229056 (= e!4333471 (and (inv!89156 (h!76329 l!7021)) e!4333472 tp!2033124))))

(declare-fun res!2932979 () Bool)

(assert (=> start!701082 (=> (not res!2932979) (not e!4333470))))

(declare-fun a!1075 () Int)

(declare-fun b!25555 () Int)

(assert (=> start!701082 (= res!2932979 (>= a!1075 b!25555))))

(assert (=> start!701082 e!4333470))

(assert (=> start!701082 true))

(assert (=> start!701082 e!4333471))

(assert (=> start!701082 tp!2033123))

(declare-fun b!7229057 () Bool)

(declare-fun tp!2033125 () Bool)

(assert (=> b!7229057 (= e!4333472 tp!2033125)))

(declare-fun b!7229058 () Bool)

(declare-fun ListPrimitiveSize!421 (List!70005) Int)

(assert (=> b!7229058 (= e!4333470 (>= (ListPrimitiveSize!421 (t!384048 l!7021)) (ListPrimitiveSize!421 l!7021)))))

(assert (= (and start!701082 res!2932979) b!7229055))

(assert (= (and b!7229055 res!2932981) b!7229054))

(assert (= (and b!7229054 res!2932980) b!7229058))

(assert (= b!7229056 b!7229057))

(assert (= (and start!701082 (is-Cons!69881 l!7021)) b!7229056))

(declare-fun m!7897190 () Bool)

(assert (=> b!7229055 m!7897190))

(declare-fun m!7897192 () Bool)

(assert (=> b!7229056 m!7897192))

(declare-fun m!7897194 () Bool)

(assert (=> b!7229058 m!7897194))

(declare-fun m!7897196 () Bool)

(assert (=> b!7229058 m!7897196))

(push 1)

(assert (not b!7229057))

(assert (not b!7229058))

(assert (not b!7229055))

(assert (not b!7229056))

(assert (not b_next!134661))

(assert b_and!351107)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351107)

(assert (not b_next!134661))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245034 () Bool)

(declare-fun lt!2572518 () Int)

(assert (=> d!2245034 (>= lt!2572518 0)))

(declare-fun e!4333484 () Int)

(assert (=> d!2245034 (= lt!2572518 e!4333484)))

(declare-fun c!1341193 () Bool)

(assert (=> d!2245034 (= c!1341193 (is-Nil!69881 (t!384048 l!7021)))))

(assert (=> d!2245034 (= (ListPrimitiveSize!421 (t!384048 l!7021)) lt!2572518)))

(declare-fun b!7229086 () Bool)

(assert (=> b!7229086 (= e!4333484 0)))

(declare-fun b!7229087 () Bool)

(assert (=> b!7229087 (= e!4333484 (+ 1 (ListPrimitiveSize!421 (t!384048 (t!384048 l!7021)))))))

(assert (= (and d!2245034 c!1341193) b!7229086))

(assert (= (and d!2245034 (not c!1341193)) b!7229087))

(declare-fun m!7897206 () Bool)

(assert (=> b!7229087 m!7897206))

(assert (=> b!7229058 d!2245034))

(declare-fun d!2245036 () Bool)

(declare-fun lt!2572519 () Int)

(assert (=> d!2245036 (>= lt!2572519 0)))

(declare-fun e!4333485 () Int)

(assert (=> d!2245036 (= lt!2572519 e!4333485)))

(declare-fun c!1341194 () Bool)

(assert (=> d!2245036 (= c!1341194 (is-Nil!69881 l!7021))))

(assert (=> d!2245036 (= (ListPrimitiveSize!421 l!7021) lt!2572519)))

(declare-fun b!7229088 () Bool)

(assert (=> b!7229088 (= e!4333485 0)))

(declare-fun b!7229089 () Bool)

(assert (=> b!7229089 (= e!4333485 (+ 1 (ListPrimitiveSize!421 (t!384048 l!7021))))))

(assert (= (and d!2245036 c!1341194) b!7229088))

(assert (= (and d!2245036 (not c!1341194)) b!7229089))

(assert (=> b!7229089 m!7897194))

(assert (=> b!7229058 d!2245036))

(declare-fun d!2245038 () Bool)

(declare-fun res!2932995 () Bool)

(declare-fun e!4333490 () Bool)

(assert (=> d!2245038 (=> res!2932995 e!4333490)))

(assert (=> d!2245038 (= res!2932995 (is-Nil!69881 l!7021))))

(assert (=> d!2245038 (= (forall!17283 l!7021 lambda!438868) e!4333490)))

(declare-fun b!7229094 () Bool)

(declare-fun e!4333491 () Bool)

(assert (=> b!7229094 (= e!4333490 e!4333491)))

(declare-fun res!2932996 () Bool)

(assert (=> b!7229094 (=> (not res!2932996) (not e!4333491))))

(declare-fun dynLambda!28478 (Int Context!14796) Bool)

(assert (=> b!7229094 (= res!2932996 (dynLambda!28478 lambda!438868 (h!76329 l!7021)))))

(declare-fun b!7229095 () Bool)

(assert (=> b!7229095 (= e!4333491 (forall!17283 (t!384048 l!7021) lambda!438868))))

(assert (= (and d!2245038 (not res!2932995)) b!7229094))

(assert (= (and b!7229094 res!2932996) b!7229095))

(declare-fun b_lambda!276893 () Bool)

(assert (=> (not b_lambda!276893) (not b!7229094)))

(declare-fun m!7897208 () Bool)

(assert (=> b!7229094 m!7897208))

(declare-fun m!7897210 () Bool)

(assert (=> b!7229095 m!7897210))

(assert (=> b!7229055 d!2245038))

(declare-fun d!2245040 () Bool)

(declare-fun lambda!438874 () Int)

(declare-fun forall!17285 (List!70004 Int) Bool)

(assert (=> d!2245040 (= (inv!89156 (h!76329 l!7021)) (forall!17285 (exprs!7898 (h!76329 l!7021)) lambda!438874))))

(declare-fun bs!1902236 () Bool)

(assert (= bs!1902236 d!2245040))

(declare-fun m!7897218 () Bool)

(assert (=> bs!1902236 m!7897218))

(assert (=> b!7229056 d!2245040))

(declare-fun b!7229117 () Bool)

(declare-fun e!4333507 () Bool)

(declare-fun tp!2033139 () Bool)

(assert (=> b!7229117 (= e!4333507 tp!2033139)))

(declare-fun b!7229116 () Bool)

(declare-fun e!4333506 () Bool)

(declare-fun tp!2033140 () Bool)

(assert (=> b!7229116 (= e!4333506 (and (inv!89156 (h!76329 (t!384048 l!7021))) e!4333507 tp!2033140))))

(assert (=> b!7229056 (= tp!2033124 e!4333506)))

(assert (= b!7229116 b!7229117))

(assert (= (and b!7229056 (is-Cons!69881 (t!384048 l!7021))) b!7229116))

(declare-fun m!7897220 () Bool)

(assert (=> b!7229116 m!7897220))

(declare-fun b!7229122 () Bool)

(declare-fun e!4333510 () Bool)

(declare-fun tp!2033145 () Bool)

(declare-fun tp!2033146 () Bool)

(assert (=> b!7229122 (= e!4333510 (and tp!2033145 tp!2033146))))

(assert (=> b!7229057 (= tp!2033125 e!4333510)))

(assert (= (and b!7229057 (is-Cons!69880 (exprs!7898 (h!76329 l!7021)))) b!7229122))

(declare-fun b_lambda!276897 () Bool)

(assert (= b_lambda!276893 (or b!7229055 b_lambda!276897)))

(declare-fun bs!1902237 () Bool)

(declare-fun d!2245050 () Bool)

(assert (= bs!1902237 (and d!2245050 b!7229055)))

(declare-fun dynLambda!28479 (Int Context!14796) Int)

(assert (=> bs!1902237 (= (dynLambda!28478 lambda!438868 (h!76329 l!7021)) (>= b!25555 (dynLambda!28479 f!1145 (h!76329 l!7021))))))

(declare-fun b_lambda!276899 () Bool)

(assert (=> (not b_lambda!276899) (not bs!1902237)))

(declare-fun t!384052 () Bool)

(declare-fun tb!262111 () Bool)

(assert (=> (and start!701082 (= f!1145 f!1145) t!384052) tb!262111))

(declare-fun result!351120 () Bool)

(assert (=> tb!262111 (= result!351120 true)))

(assert (=> bs!1902237 t!384052))

(declare-fun b_and!351111 () Bool)

(assert (= b_and!351107 (and (=> t!384052 result!351120) b_and!351111)))

(declare-fun m!7897222 () Bool)

(assert (=> bs!1902237 m!7897222))

(assert (=> b!7229094 d!2245050))

(push 1)

(assert (not b!7229089))

(assert (not b_lambda!276899))

(assert (not b!7229095))

(assert (not d!2245040))

(assert (not b_next!134661))

(assert (not b!7229116))

(assert (not b!7229117))

(assert (not b!7229122))

(assert (not b!7229087))

(assert b_and!351111)

(assert (not b_lambda!276897))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351111)

(assert (not b_next!134661))

(check-sat)

(pop 1)

