; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701028 () Bool)

(assert start!701028)

(declare-fun b!7228722 () Bool)

(assert (=> b!7228722 true))

(declare-fun bs!1902201 () Bool)

(declare-fun b!7228724 () Bool)

(assert (= bs!1902201 (and b!7228724 b!7228722)))

(declare-fun a!1071 () Int)

(declare-fun b!25551 () Int)

(declare-fun lambda!438806 () Int)

(declare-fun lambda!438807 () Int)

(assert (=> bs!1902201 (= (= a!1071 b!25551) (= lambda!438807 lambda!438806))))

(assert (=> b!7228724 true))

(declare-fun e!4333266 () Bool)

(declare-datatypes ((C!37170 0))(
  ( (C!37171 (val!28533 Int)) )
))
(declare-datatypes ((Regex!18448 0))(
  ( (ElementMatch!18448 (c!1341169 C!37170)) (Concat!27293 (regOne!37408 Regex!18448) (regTwo!37408 Regex!18448)) (EmptyExpr!18448) (Star!18448 (reg!18777 Regex!18448)) (EmptyLang!18448) (Union!18448 (regOne!37409 Regex!18448) (regTwo!37409 Regex!18448)) )
))
(declare-datatypes ((List!69986 0))(
  ( (Nil!69862) (Cons!69862 (h!76310 Regex!18448) (t!384017 List!69986)) )
))
(declare-fun l!7017 () List!69986)

(declare-fun forall!17271 (List!69986 Int) Bool)

(assert (=> b!7228724 (= e!4333266 (not (forall!17271 l!7017 lambda!438807)))))

(declare-datatypes ((Unit!163459 0))(
  ( (Unit!163460) )
))
(declare-fun lt!2572500 () Unit!163459)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!158 (List!69986 Int Int) Unit!163459)

(assert (=> b!7228724 (= lt!2572500 (lemmaForallRegexDepthBiggerThanTransitive!158 (t!384017 l!7017) a!1071 b!25551))))

(declare-fun b!7228725 () Bool)

(declare-fun e!4333267 () Bool)

(declare-fun tp!2032923 () Bool)

(declare-fun tp!2032924 () Bool)

(assert (=> b!7228725 (= e!4333267 (and tp!2032923 tp!2032924))))

(declare-fun res!2932861 () Bool)

(assert (=> start!701028 (=> (not res!2932861) (not e!4333266))))

(assert (=> start!701028 (= res!2932861 (>= a!1071 b!25551))))

(assert (=> start!701028 e!4333266))

(assert (=> start!701028 true))

(assert (=> start!701028 e!4333267))

(declare-fun res!2932863 () Bool)

(assert (=> b!7228722 (=> (not res!2932863) (not e!4333266))))

(assert (=> b!7228722 (= res!2932863 (forall!17271 l!7017 lambda!438806))))

(declare-fun b!7228723 () Bool)

(declare-fun res!2932862 () Bool)

(assert (=> b!7228723 (=> (not res!2932862) (not e!4333266))))

(assert (=> b!7228723 (= res!2932862 (not (is-Nil!69862 l!7017)))))

(assert (= (and start!701028 res!2932861) b!7228722))

(assert (= (and b!7228722 res!2932863) b!7228723))

(assert (= (and b!7228723 res!2932862) b!7228724))

(assert (= (and start!701028 (is-Cons!69862 l!7017)) b!7228725))

(declare-fun m!7897050 () Bool)

(assert (=> b!7228724 m!7897050))

(declare-fun m!7897052 () Bool)

(assert (=> b!7228724 m!7897052))

(declare-fun m!7897054 () Bool)

(assert (=> b!7228722 m!7897054))

(push 1)

(assert (not b!7228724))

(assert (not b!7228722))

(assert (not b!7228725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244963 () Bool)

(declare-fun res!2932877 () Bool)

(declare-fun e!4333278 () Bool)

(assert (=> d!2244963 (=> res!2932877 e!4333278)))

(assert (=> d!2244963 (= res!2932877 (is-Nil!69862 l!7017))))

(assert (=> d!2244963 (= (forall!17271 l!7017 lambda!438807) e!4333278)))

(declare-fun b!7228746 () Bool)

(declare-fun e!4333279 () Bool)

(assert (=> b!7228746 (= e!4333278 e!4333279)))

(declare-fun res!2932878 () Bool)

(assert (=> b!7228746 (=> (not res!2932878) (not e!4333279))))

(declare-fun dynLambda!28454 (Int Regex!18448) Bool)

(assert (=> b!7228746 (= res!2932878 (dynLambda!28454 lambda!438807 (h!76310 l!7017)))))

(declare-fun b!7228747 () Bool)

(assert (=> b!7228747 (= e!4333279 (forall!17271 (t!384017 l!7017) lambda!438807))))

(assert (= (and d!2244963 (not res!2932877)) b!7228746))

(assert (= (and b!7228746 res!2932878) b!7228747))

(declare-fun b_lambda!276831 () Bool)

(assert (=> (not b_lambda!276831) (not b!7228746)))

(declare-fun m!7897062 () Bool)

(assert (=> b!7228746 m!7897062))

(declare-fun m!7897064 () Bool)

(assert (=> b!7228747 m!7897064))

(assert (=> b!7228724 d!2244963))

(declare-fun bs!1902203 () Bool)

(declare-fun d!2244965 () Bool)

(assert (= bs!1902203 (and d!2244965 b!7228722)))

(declare-fun lambda!438816 () Int)

(assert (=> bs!1902203 (= (= a!1071 b!25551) (= lambda!438816 lambda!438806))))

(declare-fun bs!1902204 () Bool)

(assert (= bs!1902204 (and d!2244965 b!7228724)))

(assert (=> bs!1902204 (= lambda!438816 lambda!438807)))

(assert (=> d!2244965 true))

(assert (=> d!2244965 (forall!17271 (t!384017 l!7017) lambda!438816)))

(declare-fun lt!2572506 () Unit!163459)

(declare-fun choose!55467 (List!69986 Int Int) Unit!163459)

(assert (=> d!2244965 (= lt!2572506 (choose!55467 (t!384017 l!7017) a!1071 b!25551))))

(assert (=> d!2244965 (>= a!1071 b!25551)))

(assert (=> d!2244965 (= (lemmaForallRegexDepthBiggerThanTransitive!158 (t!384017 l!7017) a!1071 b!25551) lt!2572506)))

(declare-fun bs!1902205 () Bool)

(assert (= bs!1902205 d!2244965))

(declare-fun m!7897066 () Bool)

(assert (=> bs!1902205 m!7897066))

(declare-fun m!7897068 () Bool)

(assert (=> bs!1902205 m!7897068))

(assert (=> b!7228724 d!2244965))

(declare-fun d!2244967 () Bool)

(declare-fun res!2932879 () Bool)

(declare-fun e!4333280 () Bool)

(assert (=> d!2244967 (=> res!2932879 e!4333280)))

(assert (=> d!2244967 (= res!2932879 (is-Nil!69862 l!7017))))

(assert (=> d!2244967 (= (forall!17271 l!7017 lambda!438806) e!4333280)))

(declare-fun b!7228749 () Bool)

(declare-fun e!4333281 () Bool)

(assert (=> b!7228749 (= e!4333280 e!4333281)))

(declare-fun res!2932880 () Bool)

(assert (=> b!7228749 (=> (not res!2932880) (not e!4333281))))

(assert (=> b!7228749 (= res!2932880 (dynLambda!28454 lambda!438806 (h!76310 l!7017)))))

(declare-fun b!7228750 () Bool)

(assert (=> b!7228750 (= e!4333281 (forall!17271 (t!384017 l!7017) lambda!438806))))

(assert (= (and d!2244967 (not res!2932879)) b!7228749))

(assert (= (and b!7228749 res!2932880) b!7228750))

(declare-fun b_lambda!276833 () Bool)

(assert (=> (not b_lambda!276833) (not b!7228749)))

(declare-fun m!7897070 () Bool)

(assert (=> b!7228749 m!7897070))

(declare-fun m!7897072 () Bool)

(assert (=> b!7228750 m!7897072))

(assert (=> b!7228722 d!2244967))

(declare-fun b!7228763 () Bool)

(declare-fun e!4333284 () Bool)

(declare-fun tp!2032943 () Bool)

(assert (=> b!7228763 (= e!4333284 tp!2032943)))

(declare-fun b!7228764 () Bool)

(declare-fun tp!2032941 () Bool)

(declare-fun tp!2032945 () Bool)

(assert (=> b!7228764 (= e!4333284 (and tp!2032941 tp!2032945))))

(declare-fun b!7228762 () Bool)

(declare-fun tp!2032944 () Bool)

(declare-fun tp!2032942 () Bool)

(assert (=> b!7228762 (= e!4333284 (and tp!2032944 tp!2032942))))

(assert (=> b!7228725 (= tp!2032923 e!4333284)))

(declare-fun b!7228761 () Bool)

(declare-fun tp_is_empty!46385 () Bool)

(assert (=> b!7228761 (= e!4333284 tp_is_empty!46385)))

(assert (= (and b!7228725 (is-ElementMatch!18448 (h!76310 l!7017))) b!7228761))

(assert (= (and b!7228725 (is-Concat!27293 (h!76310 l!7017))) b!7228762))

(assert (= (and b!7228725 (is-Star!18448 (h!76310 l!7017))) b!7228763))

(assert (= (and b!7228725 (is-Union!18448 (h!76310 l!7017))) b!7228764))

(declare-fun b!7228769 () Bool)

(declare-fun e!4333287 () Bool)

(declare-fun tp!2032950 () Bool)

(declare-fun tp!2032951 () Bool)

(assert (=> b!7228769 (= e!4333287 (and tp!2032950 tp!2032951))))

(assert (=> b!7228725 (= tp!2032924 e!4333287)))

(assert (= (and b!7228725 (is-Cons!69862 (t!384017 l!7017))) b!7228769))

(declare-fun b_lambda!276835 () Bool)

(assert (= b_lambda!276833 (or b!7228722 b_lambda!276835)))

(declare-fun bs!1902206 () Bool)

(declare-fun d!2244971 () Bool)

(assert (= bs!1902206 (and d!2244971 b!7228722)))

(declare-fun regexDepth!431 (Regex!18448) Int)

(assert (=> bs!1902206 (= (dynLambda!28454 lambda!438806 (h!76310 l!7017)) (>= b!25551 (regexDepth!431 (h!76310 l!7017))))))

(declare-fun m!7897074 () Bool)

(assert (=> bs!1902206 m!7897074))

(assert (=> b!7228749 d!2244971))

(declare-fun b_lambda!276837 () Bool)

(assert (= b_lambda!276831 (or b!7228724 b_lambda!276837)))

(declare-fun bs!1902207 () Bool)

(declare-fun d!2244973 () Bool)

(assert (= bs!1902207 (and d!2244973 b!7228724)))

(assert (=> bs!1902207 (= (dynLambda!28454 lambda!438807 (h!76310 l!7017)) (>= a!1071 (regexDepth!431 (h!76310 l!7017))))))

(assert (=> bs!1902207 m!7897074))

(assert (=> b!7228746 d!2244973))

(push 1)

(assert (not bs!1902206))

(assert (not b!7228769))

(assert (not b!7228763))

(assert (not b!7228747))

(assert tp_is_empty!46385)

(assert (not b!7228764))

(assert (not d!2244965))

(assert (not b!7228762))

(assert (not b_lambda!276835))

(assert (not bs!1902207))

(assert (not b!7228750))

(assert (not b_lambda!276837))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

