; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701098 () Bool)

(assert start!701098)

(declare-fun b_free!133875 () Bool)

(declare-fun b_next!134665 () Bool)

(assert (=> start!701098 (= b_free!133875 (not b_next!134665))))

(declare-fun tp!2033166 () Bool)

(declare-fun b_and!351113 () Bool)

(assert (=> start!701098 (= tp!2033166 b_and!351113)))

(declare-fun b!7229147 () Bool)

(assert (=> b!7229147 true))

(assert (=> b!7229147 true))

(declare-fun lambda!438882 () Int)

(declare-fun order!28797 () Int)

(declare-fun f!1145 () Int)

(declare-fun order!28795 () Int)

(declare-fun dynLambda!28480 (Int Int) Int)

(declare-fun dynLambda!28481 (Int Int) Int)

(assert (=> b!7229147 (< (dynLambda!28480 order!28795 f!1145) (dynLambda!28481 order!28797 lambda!438882))))

(declare-fun bs!1902240 () Bool)

(declare-fun b!7229150 () Bool)

(assert (= bs!1902240 (and b!7229150 b!7229147)))

(declare-fun b!25555 () Int)

(declare-fun a!1075 () Int)

(declare-fun lambda!438883 () Int)

(assert (=> bs!1902240 (= (= a!1075 b!25555) (= lambda!438883 lambda!438882))))

(assert (=> b!7229150 true))

(assert (=> b!7229150 true))

(assert (=> b!7229150 (< (dynLambda!28480 order!28795 f!1145) (dynLambda!28481 order!28797 lambda!438883))))

(declare-fun res!2933011 () Bool)

(declare-fun e!4333526 () Bool)

(assert (=> start!701098 (=> (not res!2933011) (not e!4333526))))

(assert (=> start!701098 (= res!2933011 (>= a!1075 b!25555))))

(assert (=> start!701098 e!4333526))

(assert (=> start!701098 true))

(declare-fun e!4333528 () Bool)

(assert (=> start!701098 e!4333528))

(assert (=> start!701098 tp!2033166))

(declare-datatypes ((C!37194 0))(
  ( (C!37195 (val!28545 Int)) )
))
(declare-datatypes ((Regex!18460 0))(
  ( (ElementMatch!18460 (c!1341201 C!37194)) (Concat!27305 (regOne!37432 Regex!18460) (regTwo!37432 Regex!18460)) (EmptyExpr!18460) (Star!18460 (reg!18789 Regex!18460)) (EmptyLang!18460) (Union!18460 (regOne!37433 Regex!18460) (regTwo!37433 Regex!18460)) )
))
(declare-datatypes ((List!70008 0))(
  ( (Nil!69884) (Cons!69884 (h!76332 Regex!18460) (t!384053 List!70008)) )
))
(declare-datatypes ((Context!14800 0))(
  ( (Context!14801 (exprs!7900 List!70008)) )
))
(declare-datatypes ((List!70009 0))(
  ( (Nil!69885) (Cons!69885 (h!76333 Context!14800) (t!384054 List!70009)) )
))
(declare-fun l!7021 () List!70009)

(declare-fun e!4333527 () Bool)

(declare-fun b!7229146 () Bool)

(declare-fun tp!2033167 () Bool)

(declare-fun inv!89161 (Context!14800) Bool)

(assert (=> b!7229146 (= e!4333528 (and (inv!89161 (h!76333 l!7021)) e!4333527 tp!2033167))))

(declare-fun res!2933009 () Bool)

(assert (=> b!7229147 (=> (not res!2933009) (not e!4333526))))

(declare-fun forall!17286 (List!70009 Int) Bool)

(assert (=> b!7229147 (= res!2933009 (forall!17286 l!7021 lambda!438882))))

(declare-fun b!7229148 () Bool)

(declare-fun tp!2033165 () Bool)

(assert (=> b!7229148 (= e!4333527 tp!2033165)))

(declare-fun b!7229149 () Bool)

(declare-fun res!2933010 () Bool)

(assert (=> b!7229149 (=> (not res!2933010) (not e!4333526))))

(assert (=> b!7229149 (= res!2933010 (not (is-Nil!69885 l!7021)))))

(assert (=> b!7229150 (= e!4333526 (not (forall!17286 l!7021 lambda!438883)))))

(declare-datatypes ((Unit!163463 0))(
  ( (Unit!163464) )
))
(declare-fun lt!2572526 () Unit!163463)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!304 (List!70009 Int Int Int) Unit!163463)

(assert (=> b!7229150 (= lt!2572526 (lemmaForallContextDepthBiggerThanTransitive!304 (t!384054 l!7021) a!1075 b!25555 f!1145))))

(assert (= (and start!701098 res!2933011) b!7229147))

(assert (= (and b!7229147 res!2933009) b!7229149))

(assert (= (and b!7229149 res!2933010) b!7229150))

(assert (= b!7229146 b!7229148))

(assert (= (and start!701098 (is-Cons!69885 l!7021)) b!7229146))

(declare-fun m!7897224 () Bool)

(assert (=> b!7229146 m!7897224))

(declare-fun m!7897226 () Bool)

(assert (=> b!7229147 m!7897226))

(declare-fun m!7897228 () Bool)

(assert (=> b!7229150 m!7897228))

(declare-fun m!7897230 () Bool)

(assert (=> b!7229150 m!7897230))

(push 1)

(assert b_and!351113)

(assert (not b_next!134665))

(assert (not b!7229150))

(assert (not b!7229147))

(assert (not b!7229146))

(assert (not b!7229148))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351113)

(assert (not b_next!134665))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245053 () Bool)

(declare-fun lambda!438892 () Int)

(declare-fun forall!17288 (List!70008 Int) Bool)

(assert (=> d!2245053 (= (inv!89161 (h!76333 l!7021)) (forall!17288 (exprs!7900 (h!76333 l!7021)) lambda!438892))))

(declare-fun bs!1902242 () Bool)

(assert (= bs!1902242 d!2245053))

(declare-fun m!7897240 () Bool)

(assert (=> bs!1902242 m!7897240))

(assert (=> b!7229146 d!2245053))

(declare-fun d!2245057 () Bool)

(declare-fun res!2933025 () Bool)

(declare-fun e!4333542 () Bool)

(assert (=> d!2245057 (=> res!2933025 e!4333542)))

(assert (=> d!2245057 (= res!2933025 (is-Nil!69885 l!7021))))

(assert (=> d!2245057 (= (forall!17286 l!7021 lambda!438882) e!4333542)))

(declare-fun b!7229178 () Bool)

(declare-fun e!4333543 () Bool)

(assert (=> b!7229178 (= e!4333542 e!4333543)))

(declare-fun res!2933026 () Bool)

(assert (=> b!7229178 (=> (not res!2933026) (not e!4333543))))

(declare-fun dynLambda!28484 (Int Context!14800) Bool)

(assert (=> b!7229178 (= res!2933026 (dynLambda!28484 lambda!438882 (h!76333 l!7021)))))

(declare-fun b!7229179 () Bool)

(assert (=> b!7229179 (= e!4333543 (forall!17286 (t!384054 l!7021) lambda!438882))))

(assert (= (and d!2245057 (not res!2933025)) b!7229178))

(assert (= (and b!7229178 res!2933026) b!7229179))

(declare-fun b_lambda!276903 () Bool)

(assert (=> (not b_lambda!276903) (not b!7229178)))

(declare-fun m!7897242 () Bool)

(assert (=> b!7229178 m!7897242))

(declare-fun m!7897244 () Bool)

(assert (=> b!7229179 m!7897244))

(assert (=> b!7229147 d!2245057))

(declare-fun d!2245059 () Bool)

(declare-fun res!2933027 () Bool)

(declare-fun e!4333544 () Bool)

(assert (=> d!2245059 (=> res!2933027 e!4333544)))

(assert (=> d!2245059 (= res!2933027 (is-Nil!69885 l!7021))))

(assert (=> d!2245059 (= (forall!17286 l!7021 lambda!438883) e!4333544)))

(declare-fun b!7229180 () Bool)

(declare-fun e!4333545 () Bool)

(assert (=> b!7229180 (= e!4333544 e!4333545)))

(declare-fun res!2933028 () Bool)

(assert (=> b!7229180 (=> (not res!2933028) (not e!4333545))))

(assert (=> b!7229180 (= res!2933028 (dynLambda!28484 lambda!438883 (h!76333 l!7021)))))

(declare-fun b!7229181 () Bool)

(assert (=> b!7229181 (= e!4333545 (forall!17286 (t!384054 l!7021) lambda!438883))))

(assert (= (and d!2245059 (not res!2933027)) b!7229180))

(assert (= (and b!7229180 res!2933028) b!7229181))

(declare-fun b_lambda!276905 () Bool)

(assert (=> (not b_lambda!276905) (not b!7229180)))

(declare-fun m!7897246 () Bool)

(assert (=> b!7229180 m!7897246))

(declare-fun m!7897248 () Bool)

(assert (=> b!7229181 m!7897248))

(assert (=> b!7229150 d!2245059))

(declare-fun bs!1902243 () Bool)

(declare-fun d!2245061 () Bool)

(assert (= bs!1902243 (and d!2245061 b!7229147)))

(declare-fun lambda!438895 () Int)

(assert (=> bs!1902243 (= (= a!1075 b!25555) (= lambda!438895 lambda!438882))))

(declare-fun bs!1902244 () Bool)

(assert (= bs!1902244 (and d!2245061 b!7229150)))

(assert (=> bs!1902244 (= lambda!438895 lambda!438883)))

(assert (=> d!2245061 true))

(assert (=> d!2245061 true))

(assert (=> d!2245061 (< (dynLambda!28480 order!28795 f!1145) (dynLambda!28481 order!28797 lambda!438895))))

(assert (=> d!2245061 (forall!17286 (t!384054 l!7021) lambda!438895)))

(declare-fun lt!2572532 () Unit!163463)

(declare-fun choose!55468 (List!70009 Int Int Int) Unit!163463)

(assert (=> d!2245061 (= lt!2572532 (choose!55468 (t!384054 l!7021) a!1075 b!25555 f!1145))))

(assert (=> d!2245061 (>= a!1075 b!25555)))

(assert (=> d!2245061 (= (lemmaForallContextDepthBiggerThanTransitive!304 (t!384054 l!7021) a!1075 b!25555 f!1145) lt!2572532)))

(declare-fun bs!1902245 () Bool)

(assert (= bs!1902245 d!2245061))

(declare-fun m!7897250 () Bool)

(assert (=> bs!1902245 m!7897250))

(declare-fun m!7897252 () Bool)

(assert (=> bs!1902245 m!7897252))

(assert (=> b!7229150 d!2245061))

(declare-fun b!7229190 () Bool)

(declare-fun e!4333551 () Bool)

(declare-fun tp!2033181 () Bool)

(assert (=> b!7229190 (= e!4333551 tp!2033181)))

(declare-fun tp!2033182 () Bool)

(declare-fun b!7229189 () Bool)

(declare-fun e!4333550 () Bool)

(assert (=> b!7229189 (= e!4333550 (and (inv!89161 (h!76333 (t!384054 l!7021))) e!4333551 tp!2033182))))

(assert (=> b!7229146 (= tp!2033167 e!4333550)))

(assert (= b!7229189 b!7229190))

(assert (= (and b!7229146 (is-Cons!69885 (t!384054 l!7021))) b!7229189))

(declare-fun m!7897254 () Bool)

(assert (=> b!7229189 m!7897254))

(declare-fun b!7229195 () Bool)

(declare-fun e!4333554 () Bool)

(declare-fun tp!2033187 () Bool)

(declare-fun tp!2033188 () Bool)

(assert (=> b!7229195 (= e!4333554 (and tp!2033187 tp!2033188))))

(assert (=> b!7229148 (= tp!2033165 e!4333554)))

(assert (= (and b!7229148 (is-Cons!69884 (exprs!7900 (h!76333 l!7021)))) b!7229195))

(declare-fun b_lambda!276907 () Bool)

(assert (= b_lambda!276903 (or b!7229147 b_lambda!276907)))

(declare-fun bs!1902246 () Bool)

(declare-fun d!2245063 () Bool)

(assert (= bs!1902246 (and d!2245063 b!7229147)))

(declare-fun dynLambda!28485 (Int Context!14800) Int)

(assert (=> bs!1902246 (= (dynLambda!28484 lambda!438882 (h!76333 l!7021)) (>= b!25555 (dynLambda!28485 f!1145 (h!76333 l!7021))))))

(declare-fun b_lambda!276911 () Bool)

(assert (=> (not b_lambda!276911) (not bs!1902246)))

(declare-fun t!384058 () Bool)

(declare-fun tb!262113 () Bool)

(assert (=> (and start!701098 (= f!1145 f!1145) t!384058) tb!262113))

(declare-fun result!351130 () Bool)

(assert (=> tb!262113 (= result!351130 true)))

(assert (=> bs!1902246 t!384058))

(declare-fun b_and!351117 () Bool)

(assert (= b_and!351113 (and (=> t!384058 result!351130) b_and!351117)))

(declare-fun m!7897256 () Bool)

(assert (=> bs!1902246 m!7897256))

(assert (=> b!7229178 d!2245063))

(declare-fun b_lambda!276909 () Bool)

(assert (= b_lambda!276905 (or b!7229150 b_lambda!276909)))

(declare-fun bs!1902247 () Bool)

(declare-fun d!2245065 () Bool)

(assert (= bs!1902247 (and d!2245065 b!7229150)))

(assert (=> bs!1902247 (= (dynLambda!28484 lambda!438883 (h!76333 l!7021)) (>= a!1075 (dynLambda!28485 f!1145 (h!76333 l!7021))))))

(declare-fun b_lambda!276913 () Bool)

(assert (=> (not b_lambda!276913) (not bs!1902247)))

(assert (=> bs!1902247 t!384058))

(declare-fun b_and!351119 () Bool)

(assert (= b_and!351117 (and (=> t!384058 result!351130) b_and!351119)))

(assert (=> bs!1902247 m!7897256))

(assert (=> b!7229180 d!2245065))

(push 1)

(assert (not b_next!134665))

(assert b_and!351119)

(assert (not b!7229189))

(assert (not b_lambda!276911))

(assert (not d!2245053))

(assert (not b!7229181))

(assert (not b!7229179))

(assert (not b!7229190))

(assert (not b_lambda!276909))

(assert (not d!2245061))

(assert (not b_lambda!276907))

(assert (not b_lambda!276913))

(assert (not b!7229195))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351119)

(assert (not b_next!134665))

(check-sat)

(pop 1)

