; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720350 () Bool)

(assert start!720350)

(declare-fun res!2978143 () Bool)

(declare-fun e!4420239 () Bool)

(assert (=> start!720350 (=> (not res!2978143) (not e!4420239))))

(declare-datatypes ((C!38954 0))(
  ( (C!38955 (val!29851 Int)) )
))
(declare-datatypes ((Regex!19340 0))(
  ( (ElementMatch!19340 (c!1372600 C!38954)) (Concat!28185 (regOne!39192 Regex!19340) (regTwo!39192 Regex!19340)) (EmptyExpr!19340) (Star!19340 (reg!19669 Regex!19340)) (EmptyLang!19340) (Union!19340 (regOne!39193 Regex!19340) (regTwo!39193 Regex!19340)) )
))
(declare-datatypes ((List!71850 0))(
  ( (Nil!71726) (Cons!71726 (h!78174 Regex!19340) (t!386401 List!71850)) )
))
(declare-datatypes ((Context!16560 0))(
  ( (Context!16561 (exprs!8780 List!71850)) )
))
(declare-fun c!7050 () Context!16560)

(assert (=> start!720350 (= res!2978143 (is-Cons!71726 (exprs!8780 c!7050)))))

(assert (=> start!720350 e!4420239))

(declare-fun e!4420240 () Bool)

(declare-fun inv!91712 (Context!16560) Bool)

(assert (=> start!720350 (and (inv!91712 c!7050) e!4420240)))

(declare-fun b!7384606 () Bool)

(assert (=> b!7384606 (= e!4420239 (not (inv!91712 (Context!16561 (t!386401 (exprs!8780 c!7050))))))))

(declare-fun b!7384607 () Bool)

(declare-fun tp!2100830 () Bool)

(assert (=> b!7384607 (= e!4420240 tp!2100830)))

(assert (= (and start!720350 res!2978143) b!7384606))

(assert (= start!720350 b!7384607))

(declare-fun m!8033438 () Bool)

(assert (=> start!720350 m!8033438))

(declare-fun m!8033440 () Bool)

(assert (=> b!7384606 m!8033440))

(push 1)

(assert (not start!720350))

(assert (not b!7384606))

(assert (not b!7384607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286328 () Bool)

(declare-fun lambda!458772 () Int)

(declare-fun forall!18134 (List!71850 Int) Bool)

(assert (=> d!2286328 (= (inv!91712 c!7050) (forall!18134 (exprs!8780 c!7050) lambda!458772))))

(declare-fun bs!1921874 () Bool)

(assert (= bs!1921874 d!2286328))

(declare-fun m!8033446 () Bool)

(assert (=> bs!1921874 m!8033446))

(assert (=> start!720350 d!2286328))

(declare-fun bs!1921875 () Bool)

(declare-fun d!2286332 () Bool)

(assert (= bs!1921875 (and d!2286332 d!2286328)))

(declare-fun lambda!458773 () Int)

(assert (=> bs!1921875 (= lambda!458773 lambda!458772)))

(assert (=> d!2286332 (= (inv!91712 (Context!16561 (t!386401 (exprs!8780 c!7050)))) (forall!18134 (exprs!8780 (Context!16561 (t!386401 (exprs!8780 c!7050)))) lambda!458773))))

(declare-fun bs!1921876 () Bool)

(assert (= bs!1921876 d!2286332))

(declare-fun m!8033448 () Bool)

(assert (=> bs!1921876 m!8033448))

(assert (=> b!7384606 d!2286332))

(declare-fun b!7384618 () Bool)

(declare-fun e!4420249 () Bool)

(declare-fun tp!2100838 () Bool)

(declare-fun tp!2100839 () Bool)

(assert (=> b!7384618 (= e!4420249 (and tp!2100838 tp!2100839))))

(assert (=> b!7384607 (= tp!2100830 e!4420249)))

(assert (= (and b!7384607 (is-Cons!71726 (exprs!8780 c!7050))) b!7384618))

(push 1)

(assert (not d!2286332))

(assert (not d!2286328))

(assert (not b!7384618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286334 () Bool)

(declare-fun res!2978151 () Bool)

(declare-fun e!4420254 () Bool)

(assert (=> d!2286334 (=> res!2978151 e!4420254)))

(assert (=> d!2286334 (= res!2978151 (is-Nil!71726 (exprs!8780 (Context!16561 (t!386401 (exprs!8780 c!7050))))))))

(assert (=> d!2286334 (= (forall!18134 (exprs!8780 (Context!16561 (t!386401 (exprs!8780 c!7050)))) lambda!458773) e!4420254)))

(declare-fun b!7384623 () Bool)

(declare-fun e!4420255 () Bool)

(assert (=> b!7384623 (= e!4420254 e!4420255)))

(declare-fun res!2978152 () Bool)

(assert (=> b!7384623 (=> (not res!2978152) (not e!4420255))))

(declare-fun dynLambda!29548 (Int Regex!19340) Bool)

(assert (=> b!7384623 (= res!2978152 (dynLambda!29548 lambda!458773 (h!78174 (exprs!8780 (Context!16561 (t!386401 (exprs!8780 c!7050)))))))))

(declare-fun b!7384624 () Bool)

(assert (=> b!7384624 (= e!4420255 (forall!18134 (t!386401 (exprs!8780 (Context!16561 (t!386401 (exprs!8780 c!7050))))) lambda!458773))))

(assert (= (and d!2286334 (not res!2978151)) b!7384623))

(assert (= (and b!7384623 res!2978152) b!7384624))

(declare-fun b_lambda!284923 () Bool)

(assert (=> (not b_lambda!284923) (not b!7384623)))

(declare-fun m!8033450 () Bool)

(assert (=> b!7384623 m!8033450))

(declare-fun m!8033452 () Bool)

(assert (=> b!7384624 m!8033452))

(assert (=> d!2286332 d!2286334))

(declare-fun d!2286336 () Bool)

(declare-fun res!2978153 () Bool)

(declare-fun e!4420256 () Bool)

(assert (=> d!2286336 (=> res!2978153 e!4420256)))

(assert (=> d!2286336 (= res!2978153 (is-Nil!71726 (exprs!8780 c!7050)))))

(assert (=> d!2286336 (= (forall!18134 (exprs!8780 c!7050) lambda!458772) e!4420256)))

(declare-fun b!7384625 () Bool)

(declare-fun e!4420257 () Bool)

(assert (=> b!7384625 (= e!4420256 e!4420257)))

(declare-fun res!2978154 () Bool)

(assert (=> b!7384625 (=> (not res!2978154) (not e!4420257))))

(assert (=> b!7384625 (= res!2978154 (dynLambda!29548 lambda!458772 (h!78174 (exprs!8780 c!7050))))))

(declare-fun b!7384626 () Bool)

(assert (=> b!7384626 (= e!4420257 (forall!18134 (t!386401 (exprs!8780 c!7050)) lambda!458772))))

(assert (= (and d!2286336 (not res!2978153)) b!7384625))

(assert (= (and b!7384625 res!2978154) b!7384626))

(declare-fun b_lambda!284925 () Bool)

(assert (=> (not b_lambda!284925) (not b!7384625)))

(declare-fun m!8033454 () Bool)

(assert (=> b!7384625 m!8033454))

(declare-fun m!8033456 () Bool)

(assert (=> b!7384626 m!8033456))

(assert (=> d!2286328 d!2286336))

(declare-fun b!7384637 () Bool)

(declare-fun e!4420260 () Bool)

(declare-fun tp_is_empty!48953 () Bool)

(assert (=> b!7384637 (= e!4420260 tp_is_empty!48953)))

(declare-fun b!7384639 () Bool)

(declare-fun tp!2100852 () Bool)

(assert (=> b!7384639 (= e!4420260 tp!2100852)))

(declare-fun b!7384638 () Bool)

(declare-fun tp!2100854 () Bool)

(declare-fun tp!2100853 () Bool)

(assert (=> b!7384638 (= e!4420260 (and tp!2100854 tp!2100853))))

(declare-fun b!7384640 () Bool)

(declare-fun tp!2100851 () Bool)

(declare-fun tp!2100850 () Bool)

(assert (=> b!7384640 (= e!4420260 (and tp!2100851 tp!2100850))))

(assert (=> b!7384618 (= tp!2100838 e!4420260)))

(assert (= (and b!7384618 (is-ElementMatch!19340 (h!78174 (exprs!8780 c!7050)))) b!7384637))

(assert (= (and b!7384618 (is-Concat!28185 (h!78174 (exprs!8780 c!7050)))) b!7384638))

(assert (= (and b!7384618 (is-Star!19340 (h!78174 (exprs!8780 c!7050)))) b!7384639))

(assert (= (and b!7384618 (is-Union!19340 (h!78174 (exprs!8780 c!7050)))) b!7384640))

(declare-fun b!7384641 () Bool)

(declare-fun e!4420261 () Bool)

(declare-fun tp!2100855 () Bool)

(declare-fun tp!2100856 () Bool)

(assert (=> b!7384641 (= e!4420261 (and tp!2100855 tp!2100856))))

(assert (=> b!7384618 (= tp!2100839 e!4420261)))

(assert (= (and b!7384618 (is-Cons!71726 (t!386401 (exprs!8780 c!7050)))) b!7384641))

(declare-fun b_lambda!284927 () Bool)

(assert (= b_lambda!284925 (or d!2286328 b_lambda!284927)))

(declare-fun bs!1921877 () Bool)

(declare-fun d!2286338 () Bool)

(assert (= bs!1921877 (and d!2286338 d!2286328)))

(declare-fun validRegex!9936 (Regex!19340) Bool)

(assert (=> bs!1921877 (= (dynLambda!29548 lambda!458772 (h!78174 (exprs!8780 c!7050))) (validRegex!9936 (h!78174 (exprs!8780 c!7050))))))

(declare-fun m!8033458 () Bool)

(assert (=> bs!1921877 m!8033458))

(assert (=> b!7384625 d!2286338))

(declare-fun b_lambda!284929 () Bool)

(assert (= b_lambda!284923 (or d!2286332 b_lambda!284929)))

(declare-fun bs!1921878 () Bool)

(declare-fun d!2286340 () Bool)

(assert (= bs!1921878 (and d!2286340 d!2286332)))

(assert (=> bs!1921878 (= (dynLambda!29548 lambda!458773 (h!78174 (exprs!8780 (Context!16561 (t!386401 (exprs!8780 c!7050)))))) (validRegex!9936 (h!78174 (exprs!8780 (Context!16561 (t!386401 (exprs!8780 c!7050)))))))))

(declare-fun m!8033460 () Bool)

(assert (=> bs!1921878 m!8033460))

(assert (=> b!7384623 d!2286340))

(push 1)

(assert (not b!7384641))

(assert (not b_lambda!284929))

(assert (not b!7384626))

(assert (not b!7384638))

(assert (not bs!1921877))

(assert (not b!7384624))

(assert (not b!7384639))

(assert tp_is_empty!48953)

(assert (not bs!1921878))

(assert (not b_lambda!284927))

(assert (not b!7384640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

