; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!298 () Bool)

(assert start!298)

(declare-fun b_free!43 () Bool)

(declare-fun b_next!43 () Bool)

(assert (=> start!298 (= b_free!43 (not b_next!43))))

(declare-fun tp!167 () Bool)

(declare-fun b_and!121 () Bool)

(assert (=> start!298 (= tp!167 b_and!121)))

(declare-fun b!2150 () Bool)

(assert (=> b!2150 true))

(assert (=> b!2150 true))

(declare-fun order!1 () Int)

(declare-fun p!318 () Int)

(declare-fun lambda!4 () Int)

(declare-fun order!3 () Int)

(declare-fun dynLambda!15 (Int Int) Int)

(declare-fun dynLambda!16 (Int Int) Int)

(assert (=> b!2150 (< (dynLambda!15 order!1 p!318) (dynLambda!16 order!3 lambda!4))))

(declare-fun b!2147 () Bool)

(declare-fun e!589 () Bool)

(declare-fun e!590 () Bool)

(assert (=> b!2147 (= e!589 e!590)))

(declare-fun res!4600 () Bool)

(assert (=> b!2147 (=> (not res!4600) (not e!590))))

(declare-datatypes ((B!278 0))(
  ( (B!279 (val!21 Int)) )
))
(declare-datatypes ((tuple2!42 0))(
  ( (tuple2!43 (_1!21 (_ BitVec 64)) (_2!21 B!278)) )
))
(declare-datatypes ((List!30 0))(
  ( (Nil!27) (Cons!26 (h!592 tuple2!42) (t!2103 List!30)) )
))
(declare-datatypes ((ListLongMap!47 0))(
  ( (ListLongMap!48 (toList!39 List!30)) )
))
(declare-fun lt!347 () ListLongMap!47)

(declare-fun forall!23 (List!30 Int) Bool)

(assert (=> b!2147 (= res!4600 (forall!23 (toList!39 lt!347) p!318))))

(declare-fun lm!258 () ListLongMap!47)

(declare-fun tail!44 (ListLongMap!47) ListLongMap!47)

(assert (=> b!2147 (= lt!347 (tail!44 lm!258))))

(declare-fun res!4601 () Bool)

(assert (=> start!298 (=> (not res!4601) (not e!589))))

(assert (=> start!298 (= res!4601 (forall!23 (toList!39 lm!258) p!318))))

(assert (=> start!298 e!589))

(declare-fun e!591 () Bool)

(declare-fun inv!71 (ListLongMap!47) Bool)

(assert (=> start!298 (and (inv!71 lm!258) e!591)))

(assert (=> start!298 tp!167))

(assert (=> start!298 true))

(declare-fun b!2148 () Bool)

(declare-fun res!4598 () Bool)

(assert (=> b!2148 (=> (not res!4598) (not e!589))))

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!752 (List!30) tuple2!42)

(assert (=> b!2148 (= res!4598 (not (= (_1!21 (head!752 (toList!39 lm!258))) k!394)))))

(declare-fun b!2149 () Bool)

(declare-fun res!4599 () Bool)

(assert (=> b!2149 (=> (not res!4599) (not e!589))))

(declare-fun isEmpty!31 (ListLongMap!47) Bool)

(assert (=> b!2149 (= res!4599 (not (isEmpty!31 lm!258)))))

(declare-datatypes ((Option!7 0))(
  ( (Some!6 (v!1075 B!278)) (None!5) )
))
(declare-fun forall!24 (Option!7 Int) Bool)

(declare-fun getValueByKey!1 (List!30 (_ BitVec 64)) Option!7)

(assert (=> b!2150 (= e!590 (not (forall!24 (getValueByKey!1 (toList!39 lm!258) k!394) lambda!4)))))

(assert (=> b!2150 (forall!24 (getValueByKey!1 (toList!39 lt!347) k!394) lambda!4)))

(declare-datatypes ((Unit!13 0))(
  ( (Unit!14) )
))
(declare-fun lt!346 () Unit!13)

(declare-fun getForall!2 (ListLongMap!47 Int (_ BitVec 64)) Unit!13)

(assert (=> b!2150 (= lt!346 (getForall!2 lt!347 p!318 k!394))))

(declare-fun b!2151 () Bool)

(declare-fun tp!166 () Bool)

(assert (=> b!2151 (= e!591 tp!166)))

(assert (= (and start!298 res!4601) b!2149))

(assert (= (and b!2149 res!4599) b!2148))

(assert (= (and b!2148 res!4598) b!2147))

(assert (= (and b!2147 res!4600) b!2150))

(assert (= start!298 b!2151))

(declare-fun m!783 () Bool)

(assert (=> b!2150 m!783))

(declare-fun m!785 () Bool)

(assert (=> b!2150 m!785))

(assert (=> b!2150 m!783))

(declare-fun m!787 () Bool)

(assert (=> b!2150 m!787))

(declare-fun m!789 () Bool)

(assert (=> b!2150 m!789))

(declare-fun m!791 () Bool)

(assert (=> b!2150 m!791))

(assert (=> b!2150 m!789))

(declare-fun m!793 () Bool)

(assert (=> b!2149 m!793))

(declare-fun m!795 () Bool)

(assert (=> start!298 m!795))

(declare-fun m!797 () Bool)

(assert (=> start!298 m!797))

(declare-fun m!799 () Bool)

(assert (=> b!2147 m!799))

(declare-fun m!801 () Bool)

(assert (=> b!2147 m!801))

(declare-fun m!803 () Bool)

(assert (=> b!2148 m!803))

(push 1)

(assert (not b!2149))

(assert (not b!2151))

(assert (not b_next!43))

(assert (not b!2150))

(assert b_and!121)

(assert (not start!298))

(assert (not b!2148))

(assert (not b!2147))

(check-sat)

(pop 1)

(push 1)

(assert b_and!121)

(assert (not b_next!43))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!345 () Bool)

(assert (=> d!345 (= (head!752 (toList!39 lm!258)) (h!592 (toList!39 lm!258)))))

(assert (=> b!2148 d!345))

(declare-fun d!347 () Bool)

(declare-fun res!4634 () Bool)

(declare-fun e!618 () Bool)

(assert (=> d!347 (=> res!4634 e!618)))

(assert (=> d!347 (= res!4634 (is-Nil!27 (toList!39 lt!347)))))

(assert (=> d!347 (= (forall!23 (toList!39 lt!347) p!318) e!618)))

(declare-fun b!2202 () Bool)

(declare-fun e!619 () Bool)

(assert (=> b!2202 (= e!618 e!619)))

(declare-fun res!4635 () Bool)

(assert (=> b!2202 (=> (not res!4635) (not e!619))))

(declare-fun dynLambda!23 (Int tuple2!42) Bool)

(assert (=> b!2202 (= res!4635 (dynLambda!23 p!318 (h!592 (toList!39 lt!347))))))

(declare-fun b!2203 () Bool)

(assert (=> b!2203 (= e!619 (forall!23 (t!2103 (toList!39 lt!347)) p!318))))

(assert (= (and d!347 (not res!4634)) b!2202))

(assert (= (and b!2202 res!4635) b!2203))

(declare-fun b_lambda!161 () Bool)

(assert (=> (not b_lambda!161) (not b!2202)))

(declare-fun t!2107 () Bool)

(declare-fun tb!73 () Bool)

(assert (=> (and start!298 (= p!318 p!318) t!2107) tb!73))

(declare-fun result!103 () Bool)

(assert (=> tb!73 (= result!103 true)))

(assert (=> b!2202 t!2107))

(declare-fun b_and!127 () Bool)

(assert (= b_and!121 (and (=> t!2107 result!103) b_and!127)))

(declare-fun m!853 () Bool)

(assert (=> b!2202 m!853))

(declare-fun m!855 () Bool)

(assert (=> b!2203 m!855))

(assert (=> b!2147 d!347))

(declare-fun d!357 () Bool)

(declare-fun tail!47 (List!30) List!30)

(assert (=> d!357 (= (tail!44 lm!258) (ListLongMap!48 (tail!47 (toList!39 lm!258))))))

(declare-fun bs!75 () Bool)

(assert (= bs!75 d!357))

(declare-fun m!857 () Bool)

(assert (=> bs!75 m!857))

(assert (=> b!2147 d!357))

(declare-fun d!359 () Bool)

(declare-fun res!4644 () Bool)

(declare-fun e!628 () Bool)

(assert (=> d!359 (=> res!4644 e!628)))

(assert (=> d!359 (= res!4644 (not (is-Some!6 (getValueByKey!1 (toList!39 lt!347) k!394))))))

(assert (=> d!359 (= (forall!24 (getValueByKey!1 (toList!39 lt!347) k!394) lambda!4) e!628)))

(declare-fun b!2212 () Bool)

(declare-fun dynLambda!25 (Int B!278) Bool)

(assert (=> b!2212 (= e!628 (dynLambda!25 lambda!4 (v!1075 (getValueByKey!1 (toList!39 lt!347) k!394))))))

(assert (= (and d!359 (not res!4644)) b!2212))

(declare-fun b_lambda!165 () Bool)

(assert (=> (not b_lambda!165) (not b!2212)))

(declare-fun m!863 () Bool)

(assert (=> b!2212 m!863))

(assert (=> b!2150 d!359))

(declare-fun d!363 () Bool)

(declare-fun res!4645 () Bool)

(declare-fun e!629 () Bool)

(assert (=> d!363 (=> res!4645 e!629)))

(assert (=> d!363 (= res!4645 (not (is-Some!6 (getValueByKey!1 (toList!39 lm!258) k!394))))))

(assert (=> d!363 (= (forall!24 (getValueByKey!1 (toList!39 lm!258) k!394) lambda!4) e!629)))

(declare-fun b!2213 () Bool)

(assert (=> b!2213 (= e!629 (dynLambda!25 lambda!4 (v!1075 (getValueByKey!1 (toList!39 lm!258) k!394))))))

(assert (= (and d!363 (not res!4645)) b!2213))

(declare-fun b_lambda!167 () Bool)

(assert (=> (not b_lambda!167) (not b!2213)))

(declare-fun m!867 () Bool)

(assert (=> b!2213 m!867))

(assert (=> b!2150 d!363))

(declare-fun b!2242 () Bool)

(declare-fun e!644 () Option!7)

(assert (=> b!2242 (= e!644 (Some!6 (_2!21 (h!592 (toList!39 lt!347)))))))

(declare-fun d!367 () Bool)

(declare-fun c!128 () Bool)

(assert (=> d!367 (= c!128 (and (is-Cons!26 (toList!39 lt!347)) (= (_1!21 (h!592 (toList!39 lt!347))) k!394)))))

(assert (=> d!367 (= (getValueByKey!1 (toList!39 lt!347) k!394) e!644)))

(declare-fun b!2244 () Bool)

(declare-fun e!645 () Option!7)

(assert (=> b!2244 (= e!645 (getValueByKey!1 (t!2103 (toList!39 lt!347)) k!394))))

(declare-fun b!2243 () Bool)

(assert (=> b!2243 (= e!644 e!645)))

(declare-fun c!129 () Bool)

(assert (=> b!2243 (= c!129 (and (is-Cons!26 (toList!39 lt!347)) (not (= (_1!21 (h!592 (toList!39 lt!347))) k!394))))))

(declare-fun b!2245 () Bool)

(assert (=> b!2245 (= e!645 None!5)))

(assert (= (and d!367 c!128) b!2242))

(assert (= (and d!367 (not c!128)) b!2243))

(assert (= (and b!2243 c!129) b!2244))

(assert (= (and b!2243 (not c!129)) b!2245))

(declare-fun m!875 () Bool)

(assert (=> b!2244 m!875))

(assert (=> b!2150 d!367))

(declare-fun bs!79 () Bool)

(declare-fun d!373 () Bool)

(assert (= bs!79 (and d!373 b!2150)))

(declare-fun lambda!22 () Int)

(assert (=> bs!79 (= lambda!22 lambda!4)))

(assert (=> d!373 true))

(assert (=> d!373 true))

(assert (=> d!373 (< (dynLambda!15 order!1 p!318) (dynLambda!16 order!3 lambda!22))))

(assert (=> d!373 (forall!24 (getValueByKey!1 (toList!39 lt!347) k!394) lambda!22)))

(declare-fun lt!367 () Unit!13)

(declare-fun choose!134 (ListLongMap!47 Int (_ BitVec 64)) Unit!13)

(assert (=> d!373 (= lt!367 (choose!134 lt!347 p!318 k!394))))

(assert (=> d!373 (forall!23 (toList!39 lt!347) p!318)))

(assert (=> d!373 (= (getForall!2 lt!347 p!318 k!394) lt!367)))

(declare-fun bs!81 () Bool)

(assert (= bs!81 d!373))

(assert (=> bs!81 m!783))

(assert (=> bs!81 m!783))

(declare-fun m!889 () Bool)

(assert (=> bs!81 m!889))

(declare-fun m!891 () Bool)

(assert (=> bs!81 m!891))

(assert (=> bs!81 m!799))

(assert (=> b!2150 d!373))

(declare-fun b!2265 () Bool)

(declare-fun e!661 () Option!7)

(assert (=> b!2265 (= e!661 (Some!6 (_2!21 (h!592 (toList!39 lm!258)))))))

(declare-fun d!385 () Bool)

(declare-fun c!134 () Bool)

(assert (=> d!385 (= c!134 (and (is-Cons!26 (toList!39 lm!258)) (= (_1!21 (h!592 (toList!39 lm!258))) k!394)))))

(assert (=> d!385 (= (getValueByKey!1 (toList!39 lm!258) k!394) e!661)))

(declare-fun b!2267 () Bool)

(declare-fun e!662 () Option!7)

(assert (=> b!2267 (= e!662 (getValueByKey!1 (t!2103 (toList!39 lm!258)) k!394))))

(declare-fun b!2266 () Bool)

(assert (=> b!2266 (= e!661 e!662)))

(declare-fun c!135 () Bool)

(assert (=> b!2266 (= c!135 (and (is-Cons!26 (toList!39 lm!258)) (not (= (_1!21 (h!592 (toList!39 lm!258))) k!394))))))

(declare-fun b!2268 () Bool)

(assert (=> b!2268 (= e!662 None!5)))

(assert (= (and d!385 c!134) b!2265))

(assert (= (and d!385 (not c!134)) b!2266))

(assert (= (and b!2266 c!135) b!2267))

(assert (= (and b!2266 (not c!135)) b!2268))

(declare-fun m!897 () Bool)

(assert (=> b!2267 m!897))

(assert (=> b!2150 d!385))

(declare-fun d!389 () Bool)

(declare-fun res!4657 () Bool)

(declare-fun e!663 () Bool)

(assert (=> d!389 (=> res!4657 e!663)))

(assert (=> d!389 (= res!4657 (is-Nil!27 (toList!39 lm!258)))))

(assert (=> d!389 (= (forall!23 (toList!39 lm!258) p!318) e!663)))

(declare-fun b!2269 () Bool)

(declare-fun e!664 () Bool)

(assert (=> b!2269 (= e!663 e!664)))

(declare-fun res!4658 () Bool)

(assert (=> b!2269 (=> (not res!4658) (not e!664))))

(assert (=> b!2269 (= res!4658 (dynLambda!23 p!318 (h!592 (toList!39 lm!258))))))

(declare-fun b!2270 () Bool)

(assert (=> b!2270 (= e!664 (forall!23 (t!2103 (toList!39 lm!258)) p!318))))

(assert (= (and d!389 (not res!4657)) b!2269))

(assert (= (and b!2269 res!4658) b!2270))

(declare-fun b_lambda!175 () Bool)

(assert (=> (not b_lambda!175) (not b!2269)))

(declare-fun t!2115 () Bool)

(declare-fun tb!81 () Bool)

(assert (=> (and start!298 (= p!318 p!318) t!2115) tb!81))

(declare-fun result!111 () Bool)

(assert (=> tb!81 (= result!111 true)))

(assert (=> b!2269 t!2115))

(declare-fun b_and!135 () Bool)

(assert (= b_and!127 (and (=> t!2115 result!111) b_and!135)))

(declare-fun m!905 () Bool)

(assert (=> b!2269 m!905))

(declare-fun m!909 () Bool)

(assert (=> b!2270 m!909))

(assert (=> start!298 d!389))

(declare-fun d!397 () Bool)

(declare-fun isStrictlySorted!15 (List!30) Bool)

(assert (=> d!397 (= (inv!71 lm!258) (isStrictlySorted!15 (toList!39 lm!258)))))

(declare-fun bs!87 () Bool)

(assert (= bs!87 d!397))

(declare-fun m!921 () Bool)

(assert (=> bs!87 m!921))

(assert (=> start!298 d!397))

(declare-fun d!407 () Bool)

(declare-fun isEmpty!35 (List!30) Bool)

(assert (=> d!407 (= (isEmpty!31 lm!258) (isEmpty!35 (toList!39 lm!258)))))

(declare-fun bs!90 () Bool)

(assert (= bs!90 d!407))

(declare-fun m!927 () Bool)

(assert (=> bs!90 m!927))

(assert (=> b!2149 d!407))

(declare-fun b!2292 () Bool)

(declare-fun e!678 () Bool)

(declare-fun tp_is_empty!35 () Bool)

(declare-fun tp!188 () Bool)

(assert (=> b!2292 (= e!678 (and tp_is_empty!35 tp!188))))

(assert (=> b!2151 (= tp!166 e!678)))

(assert (= (and b!2151 (is-Cons!26 (toList!39 lm!258))) b!2292))

(declare-fun b_lambda!203 () Bool)

(assert (= b_lambda!165 (or b!2150 b_lambda!203)))

(declare-fun bs!94 () Bool)

(declare-fun d!417 () Bool)

(assert (= bs!94 (and d!417 b!2150)))

(assert (=> bs!94 (= (dynLambda!25 lambda!4 (v!1075 (getValueByKey!1 (toList!39 lt!347) k!394))) (dynLambda!23 p!318 (tuple2!43 k!394 (v!1075 (getValueByKey!1 (toList!39 lt!347) k!394)))))))

(declare-fun b_lambda!213 () Bool)

(assert (=> (not b_lambda!213) (not bs!94)))

(declare-fun t!2127 () Bool)

(declare-fun tb!93 () Bool)

(assert (=> (and start!298 (= p!318 p!318) t!2127) tb!93))

(declare-fun result!129 () Bool)

(assert (=> tb!93 (= result!129 true)))

(assert (=> bs!94 t!2127))

(declare-fun b_and!147 () Bool)

(assert (= b_and!135 (and (=> t!2127 result!129) b_and!147)))

(declare-fun m!935 () Bool)

(assert (=> bs!94 m!935))

(assert (=> b!2212 d!417))

(declare-fun b_lambda!205 () Bool)

(assert (= b_lambda!175 (or (and start!298 b_free!43) b_lambda!205)))

(declare-fun b_lambda!207 () Bool)

(assert (= b_lambda!167 (or b!2150 b_lambda!207)))

(declare-fun bs!95 () Bool)

(declare-fun d!419 () Bool)

(assert (= bs!95 (and d!419 b!2150)))

(assert (=> bs!95 (= (dynLambda!25 lambda!4 (v!1075 (getValueByKey!1 (toList!39 lm!258) k!394))) (dynLambda!23 p!318 (tuple2!43 k!394 (v!1075 (getValueByKey!1 (toList!39 lm!258) k!394)))))))

(declare-fun b_lambda!215 () Bool)

(assert (=> (not b_lambda!215) (not bs!95)))

(declare-fun t!2129 () Bool)

(declare-fun tb!95 () Bool)

(assert (=> (and start!298 (= p!318 p!318) t!2129) tb!95))

(declare-fun result!131 () Bool)

(assert (=> tb!95 (= result!131 true)))

(assert (=> bs!95 t!2129))

(declare-fun b_and!149 () Bool)

(assert (= b_and!147 (and (=> t!2129 result!131) b_and!149)))

(declare-fun m!937 () Bool)

(assert (=> bs!95 m!937))

(assert (=> b!2213 d!419))

(declare-fun b_lambda!209 () Bool)

(assert (= b_lambda!161 (or (and start!298 b_free!43) b_lambda!209)))

(push 1)

(assert (not b!2292))

(assert (not d!357))

(assert (not b!2267))

(assert (not b_lambda!205))

(assert (not b!2203))

(assert (not b_next!43))

(assert (not b_lambda!215))

(assert (not b_lambda!207))

(assert (not b!2244))

(assert (not d!373))

(assert b_and!149)

(assert tp_is_empty!35)

(assert (not b_lambda!209))

(assert (not d!407))

(assert (not b!2270))

(assert (not b_lambda!213))

(assert (not d!397))

(assert (not b_lambda!203))

(check-sat)

(pop 1)

(push 1)

(assert b_and!149)

(assert (not b_next!43))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!225 () Bool)

(assert (= b_lambda!213 (or (and start!298 b_free!43) b_lambda!225)))

(declare-fun b_lambda!227 () Bool)

(assert (= b_lambda!215 (or (and start!298 b_free!43) b_lambda!227)))

(push 1)

(assert (not b!2292))

(assert (not b_lambda!227))

(assert (not d!357))

(assert (not b_lambda!225))

(assert (not b!2267))

(assert (not b_lambda!205))

(assert (not b!2203))

(assert (not b_next!43))

(assert (not b_lambda!207))

(assert (not b!2270))

(assert (not b!2244))

(assert (not d!373))

(assert b_and!149)

(assert tp_is_empty!35)

(assert (not b_lambda!209))

(assert (not d!407))

(assert (not d!397))

(assert (not b_lambda!203))

(check-sat)

(pop 1)

(push 1)

(assert b_and!149)

(assert (not b_next!43))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!421 () Bool)

(declare-fun res!4662 () Bool)

(declare-fun e!679 () Bool)

(assert (=> d!421 (=> res!4662 e!679)))

(assert (=> d!421 (= res!4662 (is-Nil!27 (t!2103 (toList!39 lt!347))))))

(assert (=> d!421 (= (forall!23 (t!2103 (toList!39 lt!347)) p!318) e!679)))

(declare-fun b!2293 () Bool)

(declare-fun e!680 () Bool)

(assert (=> b!2293 (= e!679 e!680)))

(declare-fun res!4663 () Bool)

(assert (=> b!2293 (=> (not res!4663) (not e!680))))

(assert (=> b!2293 (= res!4663 (dynLambda!23 p!318 (h!592 (t!2103 (toList!39 lt!347)))))))

(declare-fun b!2294 () Bool)

(assert (=> b!2294 (= e!680 (forall!23 (t!2103 (t!2103 (toList!39 lt!347))) p!318))))

(assert (= (and d!421 (not res!4662)) b!2293))

(assert (= (and b!2293 res!4663) b!2294))

(declare-fun b_lambda!229 () Bool)

(assert (=> (not b_lambda!229) (not b!2293)))

(declare-fun t!2131 () Bool)

(declare-fun tb!97 () Bool)

(assert (=> (and start!298 (= p!318 p!318) t!2131) tb!97))

(declare-fun result!133 () Bool)

(assert (=> tb!97 (= result!133 true)))

(assert (=> b!2293 t!2131))

(declare-fun b_and!151 () Bool)

(assert (= b_and!149 (and (=> t!2131 result!133) b_and!151)))

(declare-fun m!939 () Bool)

(assert (=> b!2293 m!939))

(declare-fun m!941 () Bool)

(assert (=> b!2294 m!941))

(assert (=> b!2203 d!421))

(declare-fun d!425 () Bool)

(assert (=> d!425 (= (isEmpty!35 (toList!39 lm!258)) (is-Nil!27 (toList!39 lm!258)))))

(assert (=> d!407 d!425))

(declare-fun d!433 () Bool)

(assert (=> d!433 (= (tail!47 (toList!39 lm!258)) (t!2103 (toList!39 lm!258)))))

(assert (=> d!357 d!433))

(declare-fun d!439 () Bool)

(declare-fun res!4668 () Bool)

(declare-fun e!691 () Bool)

(assert (=> d!439 (=> res!4668 e!691)))

(assert (=> d!439 (= res!4668 (is-Nil!27 (t!2103 (toList!39 lm!258))))))

(assert (=> d!439 (= (forall!23 (t!2103 (toList!39 lm!258)) p!318) e!691)))

(declare-fun b!2311 () Bool)

(declare-fun e!692 () Bool)

(assert (=> b!2311 (= e!691 e!692)))

(declare-fun res!4669 () Bool)

(assert (=> b!2311 (=> (not res!4669) (not e!692))))

(assert (=> b!2311 (= res!4669 (dynLambda!23 p!318 (h!592 (t!2103 (toList!39 lm!258)))))))

(declare-fun b!2312 () Bool)

(assert (=> b!2312 (= e!692 (forall!23 (t!2103 (t!2103 (toList!39 lm!258))) p!318))))

(assert (= (and d!439 (not res!4668)) b!2311))

(assert (= (and b!2311 res!4669) b!2312))

(declare-fun b_lambda!235 () Bool)

(assert (=> (not b_lambda!235) (not b!2311)))

(declare-fun t!2137 () Bool)

(declare-fun tb!103 () Bool)

(assert (=> (and start!298 (= p!318 p!318) t!2137) tb!103))

(declare-fun result!139 () Bool)

(assert (=> tb!103 (= result!139 true)))

(assert (=> b!2311 t!2137))

(declare-fun b_and!157 () Bool)

(assert (= b_and!151 (and (=> t!2137 result!139) b_and!157)))

(declare-fun m!957 () Bool)

(assert (=> b!2311 m!957))

(declare-fun m!959 () Bool)

(assert (=> b!2312 m!959))

(assert (=> b!2270 d!439))

(declare-fun d!445 () Bool)

(declare-fun res!4672 () Bool)

(declare-fun e!695 () Bool)

(assert (=> d!445 (=> res!4672 e!695)))

(assert (=> d!445 (= res!4672 (not (is-Some!6 (getValueByKey!1 (toList!39 lt!347) k!394))))))

(assert (=> d!445 (= (forall!24 (getValueByKey!1 (toList!39 lt!347) k!394) lambda!22) e!695)))

(declare-fun b!2315 () Bool)

(assert (=> b!2315 (= e!695 (dynLambda!25 lambda!22 (v!1075 (getValueByKey!1 (toList!39 lt!347) k!394))))))

(assert (= (and d!445 (not res!4672)) b!2315))

(declare-fun b_lambda!239 () Bool)

(assert (=> (not b_lambda!239) (not b!2315)))

(declare-fun m!965 () Bool)

(assert (=> b!2315 m!965))

(assert (=> d!373 d!445))

(assert (=> d!373 d!367))

(declare-fun bs!96 () Bool)

(declare-fun d!451 () Bool)

(assert (= bs!96 (and d!451 b!2150)))

(declare-fun lambda!28 () Int)

(assert (=> bs!96 (= lambda!28 lambda!4)))

(declare-fun bs!97 () Bool)

(assert (= bs!97 (and d!451 d!373)))

(assert (=> bs!97 (= lambda!28 lambda!22)))

(assert (=> d!451 true))

(assert (=> d!451 true))

(assert (=> d!451 (< (dynLambda!15 order!1 p!318) (dynLambda!16 order!3 lambda!28))))

(assert (=> d!451 (forall!24 (getValueByKey!1 (toList!39 lt!347) k!394) lambda!28)))

(assert (=> d!451 true))

(declare-fun _$38!25 () Unit!13)

(assert (=> d!451 (= (choose!134 lt!347 p!318 k!394) _$38!25)))

(declare-fun bs!98 () Bool)

(assert (= bs!98 d!451))

(assert (=> bs!98 m!783))

(assert (=> bs!98 m!783))

(declare-fun m!975 () Bool)

(assert (=> bs!98 m!975))

(assert (=> d!373 d!451))

(assert (=> d!373 d!347))

(declare-fun b!2328 () Bool)

(declare-fun e!706 () Option!7)

(assert (=> b!2328 (= e!706 (Some!6 (_2!21 (h!592 (t!2103 (toList!39 lt!347))))))))

(declare-fun d!463 () Bool)

(declare-fun c!146 () Bool)

(assert (=> d!463 (= c!146 (and (is-Cons!26 (t!2103 (toList!39 lt!347))) (= (_1!21 (h!592 (t!2103 (toList!39 lt!347)))) k!394)))))

(assert (=> d!463 (= (getValueByKey!1 (t!2103 (toList!39 lt!347)) k!394) e!706)))

(declare-fun b!2330 () Bool)

(declare-fun e!707 () Option!7)

(assert (=> b!2330 (= e!707 (getValueByKey!1 (t!2103 (t!2103 (toList!39 lt!347))) k!394))))

(declare-fun b!2329 () Bool)

(assert (=> b!2329 (= e!706 e!707)))

(declare-fun c!147 () Bool)

(assert (=> b!2329 (= c!147 (and (is-Cons!26 (t!2103 (toList!39 lt!347))) (not (= (_1!21 (h!592 (t!2103 (toList!39 lt!347)))) k!394))))))

(declare-fun b!2331 () Bool)

(assert (=> b!2331 (= e!707 None!5)))

(assert (= (and d!463 c!146) b!2328))

(assert (= (and d!463 (not c!146)) b!2329))

(assert (= (and b!2329 c!147) b!2330))

(assert (= (and b!2329 (not c!147)) b!2331))

(declare-fun m!979 () Bool)

(assert (=> b!2330 m!979))

(assert (=> b!2244 d!463))

(declare-fun d!465 () Bool)

(declare-fun res!4691 () Bool)

(declare-fun e!718 () Bool)

(assert (=> d!465 (=> res!4691 e!718)))

(assert (=> d!465 (= res!4691 (or (is-Nil!27 (toList!39 lm!258)) (is-Nil!27 (t!2103 (toList!39 lm!258)))))))

(assert (=> d!465 (= (isStrictlySorted!15 (toList!39 lm!258)) e!718)))

(declare-fun b!2342 () Bool)

(declare-fun e!719 () Bool)

(assert (=> b!2342 (= e!718 e!719)))

(declare-fun res!4692 () Bool)

(assert (=> b!2342 (=> (not res!4692) (not e!719))))

(assert (=> b!2342 (= res!4692 (bvslt (_1!21 (h!592 (toList!39 lm!258))) (_1!21 (h!592 (t!2103 (toList!39 lm!258))))))))

(declare-fun b!2343 () Bool)

(assert (=> b!2343 (= e!719 (isStrictlySorted!15 (t!2103 (toList!39 lm!258))))))

(assert (= (and d!465 (not res!4691)) b!2342))

(assert (= (and b!2342 res!4692) b!2343))

(declare-fun m!987 () Bool)

(assert (=> b!2343 m!987))

(assert (=> d!397 d!465))

(declare-fun b!2345 () Bool)

(declare-fun e!721 () Option!7)

(assert (=> b!2345 (= e!721 (Some!6 (_2!21 (h!592 (t!2103 (toList!39 lm!258))))))))

(declare-fun d!473 () Bool)

(declare-fun c!148 () Bool)

(assert (=> d!473 (= c!148 (and (is-Cons!26 (t!2103 (toList!39 lm!258))) (= (_1!21 (h!592 (t!2103 (toList!39 lm!258)))) k!394)))))

(assert (=> d!473 (= (getValueByKey!1 (t!2103 (toList!39 lm!258)) k!394) e!721)))

(declare-fun b!2347 () Bool)

(declare-fun e!722 () Option!7)

(assert (=> b!2347 (= e!722 (getValueByKey!1 (t!2103 (t!2103 (toList!39 lm!258))) k!394))))

(declare-fun b!2346 () Bool)

(assert (=> b!2346 (= e!721 e!722)))

(declare-fun c!149 () Bool)

(assert (=> b!2346 (= c!149 (and (is-Cons!26 (t!2103 (toList!39 lm!258))) (not (= (_1!21 (h!592 (t!2103 (toList!39 lm!258)))) k!394))))))

(declare-fun b!2348 () Bool)

(assert (=> b!2348 (= e!722 None!5)))

(assert (= (and d!473 c!148) b!2345))

(assert (= (and d!473 (not c!148)) b!2346))

(assert (= (and b!2346 c!149) b!2347))

(assert (= (and b!2346 (not c!149)) b!2348))

(declare-fun m!989 () Bool)

(assert (=> b!2347 m!989))

(assert (=> b!2267 d!473))

(declare-fun b!2351 () Bool)

(declare-fun e!725 () Bool)

(declare-fun tp!190 () Bool)

(assert (=> b!2351 (= e!725 (and tp_is_empty!35 tp!190))))

(assert (=> b!2292 (= tp!188 e!725)))

(assert (= (and b!2292 (is-Cons!26 (t!2103 (toList!39 lm!258)))) b!2351))

(declare-fun b_lambda!255 () Bool)

(assert (= b_lambda!239 (or d!373 b_lambda!255)))

(declare-fun bs!106 () Bool)

(declare-fun d!477 () Bool)

(assert (= bs!106 (and d!477 d!373)))

(assert (=> bs!106 (= (dynLambda!25 lambda!22 (v!1075 (getValueByKey!1 (toList!39 lt!347) k!394))) (dynLambda!23 p!318 (tuple2!43 k!394 (v!1075 (getValueByKey!1 (toList!39 lt!347) k!394)))))))

(declare-fun b_lambda!267 () Bool)

(assert (=> (not b_lambda!267) (not bs!106)))

(assert (=> bs!106 t!2127))

(declare-fun b_and!165 () Bool)

(assert (= b_and!157 (and (=> t!2127 result!129) b_and!165)))

(assert (=> bs!106 m!935))

(assert (=> b!2315 d!477))

(declare-fun b_lambda!257 () Bool)

(assert (= b_lambda!229 (or (and start!298 b_free!43) b_lambda!257)))

(declare-fun b_lambda!261 () Bool)

(assert (= b_lambda!235 (or (and start!298 b_free!43) b_lambda!261)))

(push 1)

