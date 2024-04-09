; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2188 () Bool)

(assert start!2188)

(declare-fun b!14716 () Bool)

(assert (=> b!14716 true))

(declare-fun res!11317 () Bool)

(declare-fun e!8841 () Bool)

(assert (=> start!2188 (=> (not res!11317) (not e!8841))))

(declare-datatypes ((B!554 0))(
  ( (B!555 (val!375 Int)) )
))
(declare-datatypes ((tuple2!532 0))(
  ( (tuple2!533 (_1!266 (_ BitVec 64)) (_2!266 B!554)) )
))
(declare-datatypes ((List!425 0))(
  ( (Nil!422) (Cons!421 (h!987 tuple2!532) (t!2827 List!425)) )
))
(declare-fun l!522 () List!425)

(declare-fun isStrictlySorted!116 (List!425) Bool)

(assert (=> start!2188 (= res!11317 (isStrictlySorted!116 l!522))))

(assert (=> start!2188 e!8841))

(declare-fun e!8838 () Bool)

(assert (=> start!2188 e!8838))

(declare-fun tp_is_empty!733 () Bool)

(assert (=> start!2188 tp_is_empty!733))

(declare-fun res!11315 () Bool)

(declare-fun e!8842 () Bool)

(assert (=> b!14716 (=> res!11315 e!8842)))

(declare-fun lambda!176 () Int)

(declare-fun forall!98 (List!425 Int) Bool)

(assert (=> b!14716 (= res!11315 (not (forall!98 Nil!422 lambda!176)))))

(declare-fun b!14717 () Bool)

(declare-fun e!8840 () Bool)

(assert (=> b!14717 (= e!8842 e!8840)))

(declare-fun c!1394 () Bool)

(declare-fun isEmpty!105 (List!425) Bool)

(assert (=> b!14717 (= c!1394 (isEmpty!105 l!522))))

(declare-fun b!14718 () Bool)

(declare-fun e!8839 () Bool)

(declare-fun head!794 (List!425) tuple2!532)

(assert (=> b!14718 (= e!8839 (bvslt (_1!266 (head!794 Nil!422)) (_1!266 (head!794 l!522))))))

(declare-fun b!14719 () Bool)

(declare-fun tp!2363 () Bool)

(assert (=> b!14719 (= e!8838 (and tp_is_empty!733 tp!2363))))

(declare-fun b!14720 () Bool)

(assert (=> b!14720 (= e!8840 false)))

(declare-fun b!14721 () Bool)

(assert (=> b!14721 (= e!8841 e!8842)))

(declare-fun res!11314 () Bool)

(assert (=> b!14721 (=> res!11314 e!8842)))

(assert (=> b!14721 (= res!11314 false)))

(declare-fun b!14722 () Bool)

(assert (=> b!14722 (= e!8840 e!8839)))

(declare-fun res!11313 () Bool)

(assert (=> b!14722 (= res!11313 false)))

(assert (=> b!14722 (=> (not res!11313) (not e!8839))))

(declare-fun b!14723 () Bool)

(declare-fun res!11316 () Bool)

(assert (=> b!14723 (=> (not res!11316) (not e!8841))))

(declare-fun value!159 () B!554)

(assert (=> b!14723 (= res!11316 (and (or (not (is-Cons!421 l!522)) (not (= (_2!266 (h!987 l!522)) value!159))) (or (not (is-Cons!421 l!522)) (= (_2!266 (h!987 l!522)) value!159)) (is-Nil!422 l!522)))))

(assert (= (and start!2188 res!11317) b!14723))

(assert (= (and b!14723 res!11316) b!14721))

(assert (= (and b!14721 (not res!11314)) b!14716))

(assert (= (and b!14716 (not res!11315)) b!14717))

(assert (= (and b!14717 c!1394) b!14720))

(assert (= (and b!14717 (not c!1394)) b!14722))

(assert (= (and b!14722 res!11313) b!14718))

(assert (= (and start!2188 (is-Cons!421 l!522)) b!14719))

(declare-fun m!9841 () Bool)

(assert (=> start!2188 m!9841))

(declare-fun m!9843 () Bool)

(assert (=> b!14716 m!9843))

(declare-fun m!9845 () Bool)

(assert (=> b!14717 m!9845))

(declare-fun m!9847 () Bool)

(assert (=> b!14718 m!9847))

(declare-fun m!9849 () Bool)

(assert (=> b!14718 m!9849))

(push 1)

(assert (not b!14716))

(assert tp_is_empty!733)

(assert (not start!2188))

(assert (not b!14718))

(assert (not b!14719))

(assert (not b!14717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2393 () Bool)

(assert (=> d!2393 (= (isEmpty!105 l!522) (is-Nil!422 l!522))))

(assert (=> b!14717 d!2393))

(declare-fun d!2397 () Bool)

(assert (not d!2397))

(assert (=> b!14718 d!2397))

(declare-fun d!2399 () Bool)

(assert (=> d!2399 (= (head!794 l!522) (h!987 l!522))))

(assert (=> b!14718 d!2399))

(declare-fun d!2401 () Bool)

(declare-fun res!11358 () Bool)

(declare-fun e!8883 () Bool)

(assert (=> d!2401 (=> res!11358 e!8883)))

(assert (=> d!2401 (= res!11358 (is-Nil!422 Nil!422))))

(assert (=> d!2401 (= (forall!98 Nil!422 lambda!176) e!8883)))

(declare-fun b!14788 () Bool)

(declare-fun e!8884 () Bool)

(assert (=> b!14788 (= e!8883 e!8884)))

(declare-fun res!11359 () Bool)

(assert (=> b!14788 (=> (not res!11359) (not e!8884))))

(declare-fun dynLambda!94 (Int tuple2!532) Bool)

(assert (=> b!14788 (= res!11359 (dynLambda!94 lambda!176 (h!987 Nil!422)))))

(declare-fun b!14789 () Bool)

(assert (=> b!14789 (= e!8884 (forall!98 (t!2827 Nil!422) lambda!176))))

(assert (= (and d!2401 (not res!11358)) b!14788))

(assert (= (and b!14788 res!11359) b!14789))

(declare-fun b_lambda!959 () Bool)

(assert (=> (not b_lambda!959) (not b!14788)))

(declare-fun m!9873 () Bool)

(assert (=> b!14788 m!9873))

(declare-fun m!9875 () Bool)

(assert (=> b!14789 m!9875))

(assert (=> b!14716 d!2401))

(declare-fun d!2411 () Bool)

(declare-fun res!11374 () Bool)

(declare-fun e!8899 () Bool)

(assert (=> d!2411 (=> res!11374 e!8899)))

(assert (=> d!2411 (= res!11374 (or (is-Nil!422 l!522) (is-Nil!422 (t!2827 l!522))))))

(assert (=> d!2411 (= (isStrictlySorted!116 l!522) e!8899)))

(declare-fun b!14804 () Bool)

(declare-fun e!8900 () Bool)

(assert (=> b!14804 (= e!8899 e!8900)))

(declare-fun res!11375 () Bool)

(assert (=> b!14804 (=> (not res!11375) (not e!8900))))

(assert (=> b!14804 (= res!11375 (bvslt (_1!266 (h!987 l!522)) (_1!266 (h!987 (t!2827 l!522)))))))

(declare-fun b!14805 () Bool)

(assert (=> b!14805 (= e!8900 (isStrictlySorted!116 (t!2827 l!522)))))

(assert (= (and d!2411 (not res!11374)) b!14804))

(assert (= (and b!14804 res!11375) b!14805))

(declare-fun m!9881 () Bool)

(assert (=> b!14805 m!9881))

(assert (=> start!2188 d!2411))

(declare-fun b!14810 () Bool)

(declare-fun e!8905 () Bool)

(declare-fun tp!2372 () Bool)

(assert (=> b!14810 (= e!8905 (and tp_is_empty!733 tp!2372))))

(assert (=> b!14719 (= tp!2363 e!8905)))

(assert (= (and b!14719 (is-Cons!421 (t!2827 l!522))) b!14810))

(declare-fun b_lambda!963 () Bool)

(assert (= b_lambda!959 (or b!14716 b_lambda!963)))

(declare-fun bs!599 () Bool)

(declare-fun d!2421 () Bool)

(assert (= bs!599 (and d!2421 b!14716)))

(assert (=> bs!599 (= (dynLambda!94 lambda!176 (h!987 Nil!422)) (= (_2!266 (h!987 Nil!422)) value!159))))

(assert (=> b!14788 d!2421))

(push 1)

(assert (not b!14805))

(assert tp_is_empty!733)

(assert (not b!14810))

(assert (not b_lambda!963))

(assert (not b!14789))

(check-sat)

(pop 1)

