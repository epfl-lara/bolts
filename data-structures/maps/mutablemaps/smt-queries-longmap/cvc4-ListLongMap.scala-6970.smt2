; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88130 () Bool)

(assert start!88130)

(declare-fun b!1016293 () Bool)

(assert (=> b!1016293 true))

(assert (=> b!1016293 true))

(declare-fun b!1016290 () Bool)

(declare-fun res!681774 () Bool)

(declare-fun e!571748 () Bool)

(assert (=> b!1016290 (=> (not res!681774) (not e!571748))))

(declare-datatypes ((B!1530 0))(
  ( (B!1531 (val!11849 Int)) )
))
(declare-datatypes ((tuple2!15334 0))(
  ( (tuple2!15335 (_1!7677 (_ BitVec 64)) (_2!7677 B!1530)) )
))
(declare-datatypes ((List!21635 0))(
  ( (Nil!21632) (Cons!21631 (h!22829 tuple2!15334) (t!30644 List!21635)) )
))
(declare-fun l!1114 () List!21635)

(declare-fun isEmpty!883 (List!21635) Bool)

(assert (=> b!1016290 (= res!681774 (not (isEmpty!883 l!1114)))))

(declare-fun b!1016291 () Bool)

(declare-fun res!681772 () Bool)

(assert (=> b!1016291 (=> (not res!681772) (not e!571748))))

(declare-fun newHead!31 () tuple2!15334)

(declare-fun head!964 (List!21635) tuple2!15334)

(assert (=> b!1016291 (= res!681772 (bvslt (_1!7677 newHead!31) (_1!7677 (head!964 l!1114))))))

(declare-fun b!1016292 () Bool)

(declare-fun e!571747 () Bool)

(declare-fun tp_is_empty!23597 () Bool)

(declare-fun tp!70761 () Bool)

(assert (=> b!1016292 (= e!571747 (and tp_is_empty!23597 tp!70761))))

(declare-fun res!681773 () Bool)

(assert (=> b!1016293 (=> (not res!681773) (not e!571748))))

(declare-datatypes ((List!21636 0))(
  ( (Nil!21633) (Cons!21632 (h!22830 (_ BitVec 64)) (t!30645 List!21636)) )
))
(declare-fun keys!40 () List!21636)

(declare-fun lambda!1016 () Int)

(declare-fun forall!282 (List!21636 Int) Bool)

(assert (=> b!1016293 (= res!681773 (forall!282 keys!40 lambda!1016))))

(declare-fun b!1016294 () Bool)

(declare-datatypes ((Option!605 0))(
  ( (Some!604 (v!14453 B!1530)) (None!603) )
))
(declare-fun isDefined!401 (Option!605) Bool)

(declare-fun getValueByKey!554 (List!21635 (_ BitVec 64)) Option!605)

(assert (=> b!1016294 (= e!571748 (not (isDefined!401 (getValueByKey!554 l!1114 (h!22830 keys!40)))))))

(declare-fun res!681771 () Bool)

(assert (=> start!88130 (=> (not res!681771) (not e!571748))))

(declare-fun isStrictlySorted!613 (List!21635) Bool)

(assert (=> start!88130 (= res!681771 (isStrictlySorted!613 l!1114))))

(assert (=> start!88130 e!571748))

(assert (=> start!88130 e!571747))

(assert (=> start!88130 true))

(assert (=> start!88130 tp_is_empty!23597))

(declare-fun b!1016295 () Bool)

(declare-fun res!681775 () Bool)

(assert (=> b!1016295 (=> (not res!681775) (not e!571748))))

(assert (=> b!1016295 (= res!681775 (is-Cons!21632 keys!40))))

(assert (= (and start!88130 res!681771) b!1016290))

(assert (= (and b!1016290 res!681774) b!1016293))

(assert (= (and b!1016293 res!681773) b!1016291))

(assert (= (and b!1016291 res!681772) b!1016295))

(assert (= (and b!1016295 res!681775) b!1016294))

(assert (= (and start!88130 (is-Cons!21631 l!1114)) b!1016292))

(declare-fun m!938157 () Bool)

(assert (=> b!1016294 m!938157))

(assert (=> b!1016294 m!938157))

(declare-fun m!938159 () Bool)

(assert (=> b!1016294 m!938159))

(declare-fun m!938161 () Bool)

(assert (=> b!1016293 m!938161))

(declare-fun m!938163 () Bool)

(assert (=> b!1016291 m!938163))

(declare-fun m!938165 () Bool)

(assert (=> start!88130 m!938165))

(declare-fun m!938167 () Bool)

(assert (=> b!1016290 m!938167))

(push 1)

(assert tp_is_empty!23597)

(assert (not b!1016291))

(assert (not b!1016293))

(assert (not start!88130))

(assert (not b!1016292))

(assert (not b!1016290))

(assert (not b!1016294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121183 () Bool)

(assert (=> d!121183 (= (head!964 l!1114) (h!22829 l!1114))))

(assert (=> b!1016291 d!121183))

(declare-fun d!121187 () Bool)

(declare-fun isEmpty!886 (Option!605) Bool)

(assert (=> d!121187 (= (isDefined!401 (getValueByKey!554 l!1114 (h!22830 keys!40))) (not (isEmpty!886 (getValueByKey!554 l!1114 (h!22830 keys!40)))))))

(declare-fun bs!29509 () Bool)

(assert (= bs!29509 d!121187))

(assert (=> bs!29509 m!938157))

(declare-fun m!938181 () Bool)

(assert (=> bs!29509 m!938181))

(assert (=> b!1016294 d!121187))

(declare-fun b!1016364 () Bool)

(declare-fun e!571792 () Option!605)

(declare-fun e!571793 () Option!605)

(assert (=> b!1016364 (= e!571792 e!571793)))

(declare-fun c!102888 () Bool)

(assert (=> b!1016364 (= c!102888 (and (is-Cons!21631 l!1114) (not (= (_1!7677 (h!22829 l!1114)) (h!22830 keys!40)))))))

(declare-fun b!1016366 () Bool)

(assert (=> b!1016366 (= e!571793 None!603)))

(declare-fun d!121189 () Bool)

(declare-fun c!102887 () Bool)

(assert (=> d!121189 (= c!102887 (and (is-Cons!21631 l!1114) (= (_1!7677 (h!22829 l!1114)) (h!22830 keys!40))))))

(assert (=> d!121189 (= (getValueByKey!554 l!1114 (h!22830 keys!40)) e!571792)))

(declare-fun b!1016363 () Bool)

(assert (=> b!1016363 (= e!571792 (Some!604 (_2!7677 (h!22829 l!1114))))))

(declare-fun b!1016365 () Bool)

(assert (=> b!1016365 (= e!571793 (getValueByKey!554 (t!30644 l!1114) (h!22830 keys!40)))))

(assert (= (and d!121189 c!102887) b!1016363))

(assert (= (and d!121189 (not c!102887)) b!1016364))

(assert (= (and b!1016364 c!102888) b!1016365))

(assert (= (and b!1016364 (not c!102888)) b!1016366))

(declare-fun m!938191 () Bool)

(assert (=> b!1016365 m!938191))

(assert (=> b!1016294 d!121189))

(declare-fun d!121197 () Bool)

(declare-fun res!681804 () Bool)

(declare-fun e!571801 () Bool)

(assert (=> d!121197 (=> res!681804 e!571801)))

(assert (=> d!121197 (= res!681804 (is-Nil!21633 keys!40))))

(assert (=> d!121197 (= (forall!282 keys!40 lambda!1016) e!571801)))

(declare-fun b!1016374 () Bool)

(declare-fun e!571802 () Bool)

(assert (=> b!1016374 (= e!571801 e!571802)))

(declare-fun res!681805 () Bool)

(assert (=> b!1016374 (=> (not res!681805) (not e!571802))))

(declare-fun dynLambda!1920 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016374 (= res!681805 (dynLambda!1920 lambda!1016 (h!22830 keys!40)))))

(declare-fun b!1016375 () Bool)

(assert (=> b!1016375 (= e!571802 (forall!282 (t!30645 keys!40) lambda!1016))))

(assert (= (and d!121197 (not res!681804)) b!1016374))

(assert (= (and b!1016374 res!681805) b!1016375))

(declare-fun b_lambda!15537 () Bool)

(assert (=> (not b_lambda!15537) (not b!1016374)))

(declare-fun m!938193 () Bool)

(assert (=> b!1016374 m!938193))

(declare-fun m!938195 () Bool)

(assert (=> b!1016375 m!938195))

(assert (=> b!1016293 d!121197))

(declare-fun d!121201 () Bool)

(assert (=> d!121201 (= (isEmpty!883 l!1114) (is-Nil!21632 l!1114))))

(assert (=> b!1016290 d!121201))

(declare-fun d!121203 () Bool)

(declare-fun res!681810 () Bool)

(declare-fun e!571807 () Bool)

(assert (=> d!121203 (=> res!681810 e!571807)))

(assert (=> d!121203 (= res!681810 (or (is-Nil!21632 l!1114) (is-Nil!21632 (t!30644 l!1114))))))

(assert (=> d!121203 (= (isStrictlySorted!613 l!1114) e!571807)))

(declare-fun b!1016380 () Bool)

(declare-fun e!571808 () Bool)

(assert (=> b!1016380 (= e!571807 e!571808)))

(declare-fun res!681811 () Bool)

(assert (=> b!1016380 (=> (not res!681811) (not e!571808))))

(assert (=> b!1016380 (= res!681811 (bvslt (_1!7677 (h!22829 l!1114)) (_1!7677 (h!22829 (t!30644 l!1114)))))))

(declare-fun b!1016381 () Bool)

(assert (=> b!1016381 (= e!571808 (isStrictlySorted!613 (t!30644 l!1114)))))

(assert (= (and d!121203 (not res!681810)) b!1016380))

(assert (= (and b!1016380 res!681811) b!1016381))

(declare-fun m!938197 () Bool)

(assert (=> b!1016381 m!938197))

(assert (=> start!88130 d!121203))

(declare-fun b!1016386 () Bool)

(declare-fun e!571811 () Bool)

(declare-fun tp!70770 () Bool)

(assert (=> b!1016386 (= e!571811 (and tp_is_empty!23597 tp!70770))))

(assert (=> b!1016292 (= tp!70761 e!571811)))

(assert (= (and b!1016292 (is-Cons!21631 (t!30644 l!1114))) b!1016386))

(declare-fun b_lambda!15539 () Bool)

(assert (= b_lambda!15537 (or b!1016293 b_lambda!15539)))

(declare-fun bs!29512 () Bool)

(declare-fun d!121205 () Bool)

(assert (= bs!29512 (and d!121205 b!1016293)))

(declare-fun value!178 () B!1530)

(assert (=> bs!29512 (= (dynLambda!1920 lambda!1016 (h!22830 keys!40)) (= (getValueByKey!554 l!1114 (h!22830 keys!40)) (Some!604 value!178)))))

(assert (=> bs!29512 m!938157))

(assert (=> b!1016374 d!121205))

(push 1)

(assert (not b!1016365))

(assert (not d!121187))

(assert (not b!1016386))

(assert tp_is_empty!23597)

(assert (not b!1016381))

(assert (not bs!29512))

(assert (not b!1016375))

(assert (not b_lambda!15539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

