; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87880 () Bool)

(assert start!87880)

(declare-fun b!1015125 () Bool)

(assert (=> b!1015125 true))

(assert (=> b!1015125 true))

(declare-fun bs!29360 () Bool)

(declare-fun b!1015123 () Bool)

(assert (= bs!29360 (and b!1015123 b!1015125)))

(declare-fun lambda!833 () Int)

(declare-fun lambda!832 () Int)

(assert (=> bs!29360 (= lambda!833 lambda!832)))

(assert (=> b!1015123 true))

(assert (=> b!1015123 true))

(declare-fun b!1015122 () Bool)

(declare-fun res!681076 () Bool)

(declare-fun e!571096 () Bool)

(assert (=> b!1015122 (=> (not res!681076) (not e!571096))))

(declare-datatypes ((B!1454 0))(
  ( (B!1455 (val!11811 Int)) )
))
(declare-datatypes ((tuple2!15258 0))(
  ( (tuple2!15259 (_1!7639 (_ BitVec 64)) (_2!7639 B!1454)) )
))
(declare-datatypes ((List!21568 0))(
  ( (Nil!21565) (Cons!21564 (h!22762 tuple2!15258) (t!30577 List!21568)) )
))
(declare-fun l!412 () List!21568)

(declare-fun value!115 () B!1454)

(assert (=> b!1015122 (= res!681076 (and (not (= (_2!7639 (h!22762 l!412)) value!115)) (is-Cons!21564 l!412)))))

(declare-datatypes ((List!21569 0))(
  ( (Nil!21566) (Cons!21565 (h!22763 (_ BitVec 64)) (t!30578 List!21569)) )
))
(declare-fun lt!448995 () List!21569)

(declare-fun forall!253 (List!21569 Int) Bool)

(assert (=> b!1015123 (= e!571096 (not (forall!253 lt!448995 lambda!833)))))

(declare-datatypes ((Unit!33177 0))(
  ( (Unit!33178) )
))
(declare-fun lt!448994 () Unit!33177)

(declare-fun e!571097 () Unit!33177)

(assert (=> b!1015123 (= lt!448994 e!571097)))

(declare-fun c!102801 () Bool)

(declare-fun isEmpty!855 (List!21569) Bool)

(assert (=> b!1015123 (= c!102801 (not (isEmpty!855 lt!448995)))))

(declare-fun getKeysOf!58 (List!21568 B!1454) List!21569)

(assert (=> b!1015123 (= lt!448995 (getKeysOf!58 (t!30577 l!412) value!115))))

(declare-fun res!681075 () Bool)

(assert (=> start!87880 (=> (not res!681075) (not e!571096))))

(declare-fun isStrictlySorted!581 (List!21568) Bool)

(assert (=> start!87880 (= res!681075 (isStrictlySorted!581 l!412))))

(assert (=> start!87880 e!571096))

(declare-fun e!571095 () Bool)

(assert (=> start!87880 e!571095))

(declare-fun tp_is_empty!23521 () Bool)

(assert (=> start!87880 tp_is_empty!23521))

(declare-fun b!1015124 () Bool)

(declare-fun Unit!33179 () Unit!33177)

(assert (=> b!1015124 (= e!571097 Unit!33179)))

(declare-fun lt!448993 () Unit!33177)

(assert (=> b!1015125 (= e!571097 lt!448993)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!48 (List!21568 List!21569 B!1454 tuple2!15258) Unit!33177)

(assert (=> b!1015125 (= lt!448993 (lemmaForallGetValueByKeySameWithASmallerHead!48 (t!30577 l!412) lt!448995 value!115 (h!22762 l!412)))))

(assert (=> b!1015125 (forall!253 lt!448995 lambda!832)))

(declare-fun b!1015126 () Bool)

(declare-fun tp!70593 () Bool)

(assert (=> b!1015126 (= e!571095 (and tp_is_empty!23521 tp!70593))))

(assert (= (and start!87880 res!681075) b!1015122))

(assert (= (and b!1015122 res!681076) b!1015123))

(assert (= (and b!1015123 c!102801) b!1015125))

(assert (= (and b!1015123 (not c!102801)) b!1015124))

(assert (= (and start!87880 (is-Cons!21564 l!412)) b!1015126))

(declare-fun m!937491 () Bool)

(assert (=> b!1015123 m!937491))

(declare-fun m!937493 () Bool)

(assert (=> b!1015123 m!937493))

(declare-fun m!937495 () Bool)

(assert (=> b!1015123 m!937495))

(declare-fun m!937497 () Bool)

(assert (=> start!87880 m!937497))

(declare-fun m!937499 () Bool)

(assert (=> b!1015125 m!937499))

(declare-fun m!937501 () Bool)

(assert (=> b!1015125 m!937501))

(push 1)

(assert (not b!1015126))

(assert tp_is_empty!23521)

(assert (not start!87880))

(assert (not b!1015123))

(assert (not b!1015125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120887 () Bool)

(declare-fun res!681099 () Bool)

(declare-fun e!571126 () Bool)

(assert (=> d!120887 (=> res!681099 e!571126)))

(assert (=> d!120887 (= res!681099 (or (is-Nil!21565 l!412) (is-Nil!21565 (t!30577 l!412))))))

(assert (=> d!120887 (= (isStrictlySorted!581 l!412) e!571126)))

(declare-fun b!1015179 () Bool)

(declare-fun e!571127 () Bool)

(assert (=> b!1015179 (= e!571126 e!571127)))

(declare-fun res!681100 () Bool)

(assert (=> b!1015179 (=> (not res!681100) (not e!571127))))

(assert (=> b!1015179 (= res!681100 (bvslt (_1!7639 (h!22762 l!412)) (_1!7639 (h!22762 (t!30577 l!412)))))))

(declare-fun b!1015180 () Bool)

(assert (=> b!1015180 (= e!571127 (isStrictlySorted!581 (t!30577 l!412)))))

(assert (= (and d!120887 (not res!681099)) b!1015179))

(assert (= (and b!1015179 res!681100) b!1015180))

(declare-fun m!937531 () Bool)

(assert (=> b!1015180 m!937531))

(assert (=> start!87880 d!120887))

(declare-fun d!120893 () Bool)

(declare-fun res!681111 () Bool)

(declare-fun e!571134 () Bool)

(assert (=> d!120893 (=> res!681111 e!571134)))

(assert (=> d!120893 (= res!681111 (is-Nil!21566 lt!448995))))

(assert (=> d!120893 (= (forall!253 lt!448995 lambda!833) e!571134)))

(declare-fun b!1015189 () Bool)

(declare-fun e!571135 () Bool)

(assert (=> b!1015189 (= e!571134 e!571135)))

(declare-fun res!681112 () Bool)

(assert (=> b!1015189 (=> (not res!681112) (not e!571135))))

(declare-fun dynLambda!1901 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015189 (= res!681112 (dynLambda!1901 lambda!833 (h!22763 lt!448995)))))

(declare-fun b!1015190 () Bool)

(assert (=> b!1015190 (= e!571135 (forall!253 (t!30578 lt!448995) lambda!833))))

(assert (= (and d!120893 (not res!681111)) b!1015189))

(assert (= (and b!1015189 res!681112) b!1015190))

(declare-fun b_lambda!15423 () Bool)

(assert (=> (not b_lambda!15423) (not b!1015189)))

(declare-fun m!937533 () Bool)

(assert (=> b!1015189 m!937533))

(declare-fun m!937535 () Bool)

(assert (=> b!1015190 m!937535))

(assert (=> b!1015123 d!120893))

(declare-fun d!120895 () Bool)

(assert (=> d!120895 (= (isEmpty!855 lt!448995) (is-Nil!21566 lt!448995))))

(assert (=> b!1015123 d!120895))

(declare-fun bs!29377 () Bool)

(declare-fun b!1015268 () Bool)

(assert (= bs!29377 (and b!1015268 b!1015125)))

(declare-fun lt!449096 () List!21568)

(declare-fun lt!449092 () tuple2!15258)

(declare-fun lambda!867 () Int)

(assert (=> bs!29377 (= (= (Cons!21564 lt!449092 lt!449096) l!412) (= lambda!867 lambda!832))))

(declare-fun bs!29378 () Bool)

(assert (= bs!29378 (and b!1015268 b!1015123)))

(assert (=> bs!29378 (= (= (Cons!21564 lt!449092 lt!449096) l!412) (= lambda!867 lambda!833))))

(assert (=> b!1015268 true))

(assert (=> b!1015268 true))

(assert (=> b!1015268 true))

(declare-fun bs!29379 () Bool)

(declare-fun b!1015265 () Bool)

(assert (= bs!29379 (and b!1015265 b!1015125)))

(declare-fun lt!449098 () List!21568)

(declare-fun lt!449097 () tuple2!15258)

(declare-fun lambda!870 () Int)

(assert (=> bs!29379 (= (= (Cons!21564 lt!449097 lt!449098) l!412) (= lambda!870 lambda!832))))

(declare-fun bs!29380 () Bool)

(assert (= bs!29380 (and b!1015265 b!1015123)))

(assert (=> bs!29380 (= (= (Cons!21564 lt!449097 lt!449098) l!412) (= lambda!870 lambda!833))))

(declare-fun bs!29381 () Bool)

(assert (= bs!29381 (and b!1015265 b!1015268)))

(assert (=> bs!29381 (= (= (Cons!21564 lt!449097 lt!449098) (Cons!21564 lt!449092 lt!449096)) (= lambda!870 lambda!867))))

(assert (=> b!1015265 true))

(assert (=> b!1015265 true))

(assert (=> b!1015265 true))

(declare-fun bs!29382 () Bool)

(declare-fun d!120897 () Bool)

(assert (= bs!29382 (and d!120897 b!1015125)))

(declare-fun lambda!871 () Int)

(assert (=> bs!29382 (= (= (t!30577 l!412) l!412) (= lambda!871 lambda!832))))

(declare-fun bs!29383 () Bool)

(assert (= bs!29383 (and d!120897 b!1015123)))

(assert (=> bs!29383 (= (= (t!30577 l!412) l!412) (= lambda!871 lambda!833))))

(declare-fun bs!29384 () Bool)

(assert (= bs!29384 (and d!120897 b!1015268)))

(assert (=> bs!29384 (= (= (t!30577 l!412) (Cons!21564 lt!449092 lt!449096)) (= lambda!871 lambda!867))))

(declare-fun bs!29385 () Bool)

(assert (= bs!29385 (and d!120897 b!1015265)))

(assert (=> bs!29385 (= (= (t!30577 l!412) (Cons!21564 lt!449097 lt!449098)) (= lambda!871 lambda!870))))

(assert (=> d!120897 true))

(assert (=> d!120897 true))

(declare-fun b!1015262 () Bool)

(declare-fun e!571177 () Unit!33177)

(declare-fun Unit!33188 () Unit!33177)

(assert (=> b!1015262 (= e!571177 Unit!33188)))

(declare-fun b!1015263 () Bool)

(declare-fun e!571175 () Unit!33177)

(declare-fun Unit!33189 () Unit!33177)

(assert (=> b!1015263 (= e!571175 Unit!33189)))

(declare-fun lt!449099 () List!21569)

(assert (=> d!120897 (forall!253 lt!449099 lambda!871)))

(declare-fun e!571178 () List!21569)

(assert (=> d!120897 (= lt!449099 e!571178)))

(declare-fun c!102835 () Bool)

(assert (=> d!120897 (= c!102835 (and (is-Cons!21564 (t!30577 l!412)) (= (_2!7639 (h!22762 (t!30577 l!412))) value!115)))))

(assert (=> d!120897 (isStrictlySorted!581 (t!30577 l!412))))

(assert (=> d!120897 (= (getKeysOf!58 (t!30577 l!412) value!115) lt!449099)))

(declare-fun b!1015264 () Bool)

(declare-fun e!571176 () List!21569)

(assert (=> b!1015264 (= e!571176 Nil!21566)))

(declare-fun lt!449091 () Unit!33177)

(assert (=> b!1015265 (= e!571175 lt!449091)))

(assert (=> b!1015265 (= lt!449098 (t!30577 (t!30577 l!412)))))

(declare-fun lt!449100 () List!21569)

(declare-fun call!42947 () List!21569)

(assert (=> b!1015265 (= lt!449100 call!42947)))

(assert (=> b!1015265 (= lt!449097 (h!22762 (t!30577 l!412)))))

(declare-fun call!42948 () Unit!33177)

(assert (=> b!1015265 (= lt!449091 call!42948)))

(declare-fun call!42949 () Bool)

(assert (=> b!1015265 call!42949))

(declare-fun b!1015266 () Bool)

(declare-fun lt!449090 () Unit!33177)

(assert (=> b!1015266 (= lt!449090 e!571175)))

(declare-fun c!102833 () Bool)

(declare-fun call!42946 () Bool)

(assert (=> b!1015266 (= c!102833 (not call!42946))))

(declare-fun lt!449095 () List!21569)

(assert (=> b!1015266 (= lt!449095 call!42947)))

(assert (=> b!1015266 (= e!571176 call!42947)))

(declare-fun bm!42943 () Bool)

(declare-fun lt!449094 () List!21569)

(assert (=> bm!42943 (= call!42949 (forall!253 (ite c!102835 lt!449094 lt!449100) (ite c!102835 lambda!867 lambda!870)))))

(declare-fun b!1015267 () Bool)

(assert (=> b!1015267 (= e!571178 e!571176)))

(declare-fun c!102832 () Bool)

(assert (=> b!1015267 (= c!102832 (and (is-Cons!21564 (t!30577 l!412)) (not (= (_2!7639 (h!22762 (t!30577 l!412))) value!115))))))

(declare-fun bm!42944 () Bool)

(assert (=> bm!42944 (= call!42948 (lemmaForallGetValueByKeySameWithASmallerHead!48 (ite c!102835 lt!449096 lt!449098) (ite c!102835 lt!449094 lt!449100) value!115 (ite c!102835 lt!449092 lt!449097)))))

(declare-fun bm!42945 () Bool)

(assert (=> bm!42945 (= call!42946 (isEmpty!855 call!42947))))

(assert (=> b!1015268 call!42949))

(declare-fun lt!449093 () Unit!33177)

(assert (=> b!1015268 (= lt!449093 call!42948)))

(assert (=> b!1015268 (= lt!449092 (h!22762 (t!30577 l!412)))))

(assert (=> b!1015268 (= lt!449094 call!42947)))

(assert (=> b!1015268 (= lt!449096 (t!30577 (t!30577 l!412)))))

(assert (=> b!1015268 (= e!571177 lt!449093)))

(declare-fun b!1015269 () Bool)

(assert (=> b!1015269 (= e!571178 (Cons!21565 (_1!7639 (h!22762 (t!30577 l!412))) call!42947))))

(declare-fun c!102834 () Bool)

(assert (=> b!1015269 (= c!102834 (not call!42946))))

(declare-fun lt!449089 () Unit!33177)

(assert (=> b!1015269 (= lt!449089 e!571177)))

(declare-fun bm!42946 () Bool)

(assert (=> bm!42946 (= call!42947 (getKeysOf!58 (t!30577 (t!30577 l!412)) value!115))))

(assert (= (and d!120897 c!102835) b!1015269))

(assert (= (and d!120897 (not c!102835)) b!1015267))

(assert (= (and b!1015269 c!102834) b!1015268))

(assert (= (and b!1015269 (not c!102834)) b!1015262))

(assert (= (and b!1015267 c!102832) b!1015266))

(assert (= (and b!1015267 (not c!102832)) b!1015264))

(assert (= (and b!1015266 c!102833) b!1015265))

(assert (= (and b!1015266 (not c!102833)) b!1015263))

(assert (= (or b!1015268 b!1015265) bm!42944))

(assert (= (or b!1015268 b!1015265) bm!42943))

(assert (= (or b!1015269 b!1015268 b!1015265 b!1015266) bm!42946))

(assert (= (or b!1015269 b!1015266) bm!42945))

(declare-fun m!937569 () Bool)

(assert (=> bm!42945 m!937569))

(declare-fun m!937571 () Bool)

(assert (=> d!120897 m!937571))

(assert (=> d!120897 m!937531))

(declare-fun m!937573 () Bool)

(assert (=> bm!42946 m!937573))

(declare-fun m!937575 () Bool)

(assert (=> bm!42944 m!937575))

(declare-fun m!937577 () Bool)

(assert (=> bm!42943 m!937577))

(assert (=> b!1015123 d!120897))

(declare-fun bs!29402 () Bool)

(declare-fun b!1015310 () Bool)

(assert (= bs!29402 (and b!1015310 b!1015125)))

(declare-fun lambda!888 () Int)

(assert (=> bs!29402 (= (= (t!30577 l!412) l!412) (= lambda!888 lambda!832))))

(declare-fun bs!29406 () Bool)

(assert (= bs!29406 (and b!1015310 b!1015123)))

(assert (=> bs!29406 (= (= (t!30577 l!412) l!412) (= lambda!888 lambda!833))))

(declare-fun bs!29408 () Bool)

(assert (= bs!29408 (and b!1015310 b!1015268)))

(assert (=> bs!29408 (= (= (t!30577 l!412) (Cons!21564 lt!449092 lt!449096)) (= lambda!888 lambda!867))))

(declare-fun bs!29409 () Bool)

(assert (= bs!29409 (and b!1015310 b!1015265)))

(assert (=> bs!29409 (= (= (t!30577 l!412) (Cons!21564 lt!449097 lt!449098)) (= lambda!888 lambda!870))))

(declare-fun bs!29410 () Bool)

(assert (= bs!29410 (and b!1015310 d!120897)))

(assert (=> bs!29410 (= lambda!888 lambda!871)))

(assert (=> b!1015310 true))

(assert (=> b!1015310 true))

(declare-fun bs!29414 () Bool)

(declare-fun d!120913 () Bool)

(assert (= bs!29414 (and d!120913 b!1015125)))

(declare-fun lambda!890 () Int)

(assert (=> bs!29414 (= (= (Cons!21564 (h!22762 l!412) (t!30577 l!412)) l!412) (= lambda!890 lambda!832))))

(declare-fun bs!29417 () Bool)

(assert (= bs!29417 (and d!120913 b!1015123)))

(assert (=> bs!29417 (= (= (Cons!21564 (h!22762 l!412) (t!30577 l!412)) l!412) (= lambda!890 lambda!833))))

(declare-fun bs!29419 () Bool)

(assert (= bs!29419 (and d!120913 b!1015268)))

(assert (=> bs!29419 (= (= (Cons!21564 (h!22762 l!412) (t!30577 l!412)) (Cons!21564 lt!449092 lt!449096)) (= lambda!890 lambda!867))))

(declare-fun bs!29420 () Bool)

(assert (= bs!29420 (and d!120913 b!1015265)))

(assert (=> bs!29420 (= (= (Cons!21564 (h!22762 l!412) (t!30577 l!412)) (Cons!21564 lt!449097 lt!449098)) (= lambda!890 lambda!870))))

(declare-fun bs!29421 () Bool)

(assert (= bs!29421 (and d!120913 b!1015310)))

(assert (=> bs!29421 (= (= (Cons!21564 (h!22762 l!412) (t!30577 l!412)) (t!30577 l!412)) (= lambda!890 lambda!888))))

(declare-fun bs!29422 () Bool)

(assert (= bs!29422 (and d!120913 d!120897)))

(assert (=> bs!29422 (= (= (Cons!21564 (h!22762 l!412) (t!30577 l!412)) (t!30577 l!412)) (= lambda!890 lambda!871))))

(assert (=> d!120913 true))

(assert (=> d!120913 true))

(assert (=> d!120913 true))

(assert (=> d!120913 (forall!253 lt!448995 lambda!890)))

(declare-fun lt!449130 () Unit!33177)

(declare-fun choose!1647 (List!21568 List!21569 B!1454 tuple2!15258) Unit!33177)

(assert (=> d!120913 (= lt!449130 (choose!1647 (t!30577 l!412) lt!448995 value!115 (h!22762 l!412)))))

(declare-fun e!571198 () Bool)

(assert (=> d!120913 e!571198))

(declare-fun res!681151 () Bool)

(assert (=> d!120913 (=> (not res!681151) (not e!571198))))

(assert (=> d!120913 (= res!681151 (isStrictlySorted!581 (t!30577 l!412)))))

(assert (=> d!120913 (= (lemmaForallGetValueByKeySameWithASmallerHead!48 (t!30577 l!412) lt!448995 value!115 (h!22762 l!412)) lt!449130)))

(declare-fun b!1015309 () Bool)

(declare-fun res!681152 () Bool)

(assert (=> b!1015309 (=> (not res!681152) (not e!571198))))

