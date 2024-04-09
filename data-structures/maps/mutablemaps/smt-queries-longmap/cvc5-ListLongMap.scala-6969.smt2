; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88090 () Bool)

(assert start!88090)

(declare-fun b!1016120 () Bool)

(assert (=> b!1016120 true))

(assert (=> b!1016120 true))

(declare-fun b!1016118 () Bool)

(declare-fun e!571664 () Bool)

(declare-datatypes ((List!21625 0))(
  ( (Nil!21622) (Cons!21621 (h!22819 (_ BitVec 64)) (t!30634 List!21625)) )
))
(declare-fun keys!40 () List!21625)

(declare-fun ListPrimitiveSize!121 (List!21625) Int)

(assert (=> b!1016118 (= e!571664 (< (ListPrimitiveSize!121 keys!40) 0))))

(declare-fun res!681668 () Bool)

(assert (=> start!88090 (=> (not res!681668) (not e!571664))))

(declare-datatypes ((B!1520 0))(
  ( (B!1521 (val!11844 Int)) )
))
(declare-datatypes ((tuple2!15324 0))(
  ( (tuple2!15325 (_1!7672 (_ BitVec 64)) (_2!7672 B!1520)) )
))
(declare-datatypes ((List!21626 0))(
  ( (Nil!21623) (Cons!21622 (h!22820 tuple2!15324) (t!30635 List!21626)) )
))
(declare-fun l!1114 () List!21626)

(declare-fun isStrictlySorted!608 (List!21626) Bool)

(assert (=> start!88090 (= res!681668 (isStrictlySorted!608 l!1114))))

(assert (=> start!88090 e!571664))

(declare-fun e!571663 () Bool)

(assert (=> start!88090 e!571663))

(assert (=> start!88090 true))

(declare-fun tp_is_empty!23587 () Bool)

(assert (=> start!88090 tp_is_empty!23587))

(declare-fun b!1016119 () Bool)

(declare-fun res!681667 () Bool)

(assert (=> b!1016119 (=> (not res!681667) (not e!571664))))

(declare-fun isEmpty!878 (List!21626) Bool)

(assert (=> b!1016119 (= res!681667 (not (isEmpty!878 l!1114)))))

(declare-fun res!681670 () Bool)

(assert (=> b!1016120 (=> (not res!681670) (not e!571664))))

(declare-fun lambda!1001 () Int)

(declare-fun forall!277 (List!21625 Int) Bool)

(assert (=> b!1016120 (= res!681670 (forall!277 keys!40 lambda!1001))))

(declare-fun b!1016121 () Bool)

(declare-fun res!681669 () Bool)

(assert (=> b!1016121 (=> (not res!681669) (not e!571664))))

(declare-fun newHead!31 () tuple2!15324)

(declare-fun head!959 (List!21626) tuple2!15324)

(assert (=> b!1016121 (= res!681669 (bvslt (_1!7672 newHead!31) (_1!7672 (head!959 l!1114))))))

(declare-fun b!1016122 () Bool)

(declare-fun tp!70737 () Bool)

(assert (=> b!1016122 (= e!571663 (and tp_is_empty!23587 tp!70737))))

(assert (= (and start!88090 res!681668) b!1016119))

(assert (= (and b!1016119 res!681667) b!1016120))

(assert (= (and b!1016120 res!681670) b!1016121))

(assert (= (and b!1016121 res!681669) b!1016118))

(assert (= (and start!88090 (is-Cons!21622 l!1114)) b!1016122))

(declare-fun m!938073 () Bool)

(assert (=> b!1016119 m!938073))

(declare-fun m!938075 () Bool)

(assert (=> b!1016121 m!938075))

(declare-fun m!938077 () Bool)

(assert (=> b!1016118 m!938077))

(declare-fun m!938079 () Bool)

(assert (=> b!1016120 m!938079))

(declare-fun m!938081 () Bool)

(assert (=> start!88090 m!938081))

(push 1)

(assert tp_is_empty!23587)

(assert (not b!1016119))

(assert (not b!1016121))

(assert (not b!1016122))

(assert (not b!1016118))

(assert (not start!88090))

(assert (not b!1016120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121131 () Bool)

(declare-fun res!681705 () Bool)

(declare-fun e!571687 () Bool)

(assert (=> d!121131 (=> res!681705 e!571687)))

(assert (=> d!121131 (= res!681705 (is-Nil!21622 keys!40))))

(assert (=> d!121131 (= (forall!277 keys!40 lambda!1001) e!571687)))

(declare-fun b!1016175 () Bool)

(declare-fun e!571688 () Bool)

(assert (=> b!1016175 (= e!571687 e!571688)))

(declare-fun res!681706 () Bool)

(assert (=> b!1016175 (=> (not res!681706) (not e!571688))))

(declare-fun dynLambda!1915 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016175 (= res!681706 (dynLambda!1915 lambda!1001 (h!22819 keys!40)))))

(declare-fun b!1016176 () Bool)

(assert (=> b!1016176 (= e!571688 (forall!277 (t!30634 keys!40) lambda!1001))))

(assert (= (and d!121131 (not res!681705)) b!1016175))

(assert (= (and b!1016175 res!681706) b!1016176))

(declare-fun b_lambda!15517 () Bool)

(assert (=> (not b_lambda!15517) (not b!1016175)))

(declare-fun m!938105 () Bool)

(assert (=> b!1016175 m!938105))

(declare-fun m!938107 () Bool)

(assert (=> b!1016176 m!938107))

(assert (=> b!1016120 d!121131))

(declare-fun d!121135 () Bool)

(declare-fun res!681717 () Bool)

(declare-fun e!571699 () Bool)

(assert (=> d!121135 (=> res!681717 e!571699)))

(assert (=> d!121135 (= res!681717 (or (is-Nil!21623 l!1114) (is-Nil!21623 (t!30635 l!1114))))))

(assert (=> d!121135 (= (isStrictlySorted!608 l!1114) e!571699)))

(declare-fun b!1016187 () Bool)

(declare-fun e!571700 () Bool)

(assert (=> b!1016187 (= e!571699 e!571700)))

(declare-fun res!681718 () Bool)

(assert (=> b!1016187 (=> (not res!681718) (not e!571700))))

(assert (=> b!1016187 (= res!681718 (bvslt (_1!7672 (h!22820 l!1114)) (_1!7672 (h!22820 (t!30635 l!1114)))))))

(declare-fun b!1016188 () Bool)

(assert (=> b!1016188 (= e!571700 (isStrictlySorted!608 (t!30635 l!1114)))))

(assert (= (and d!121135 (not res!681717)) b!1016187))

(assert (= (and b!1016187 res!681718) b!1016188))

(declare-fun m!938113 () Bool)

(assert (=> b!1016188 m!938113))

(assert (=> start!88090 d!121135))

(declare-fun d!121141 () Bool)

(assert (=> d!121141 (= (head!959 l!1114) (h!22820 l!1114))))

(assert (=> b!1016121 d!121141))

(declare-fun d!121147 () Bool)

(declare-fun lt!449234 () Int)

(assert (=> d!121147 (>= lt!449234 0)))

(declare-fun e!571709 () Int)

(assert (=> d!121147 (= lt!449234 e!571709)))

(declare-fun c!102866 () Bool)

(assert (=> d!121147 (= c!102866 (is-Nil!21622 keys!40))))

(assert (=> d!121147 (= (ListPrimitiveSize!121 keys!40) lt!449234)))

(declare-fun b!1016201 () Bool)

(assert (=> b!1016201 (= e!571709 0)))

(declare-fun b!1016202 () Bool)

(assert (=> b!1016202 (= e!571709 (+ 1 (ListPrimitiveSize!121 (t!30634 keys!40))))))

(assert (= (and d!121147 c!102866) b!1016201))

(assert (= (and d!121147 (not c!102866)) b!1016202))

(declare-fun m!938115 () Bool)

(assert (=> b!1016202 m!938115))

(assert (=> b!1016118 d!121147))

(declare-fun d!121151 () Bool)

(assert (=> d!121151 (= (isEmpty!878 l!1114) (is-Nil!21623 l!1114))))

(assert (=> b!1016119 d!121151))

(declare-fun b!1016213 () Bool)

(declare-fun e!571715 () Bool)

(declare-fun tp!70746 () Bool)

(assert (=> b!1016213 (= e!571715 (and tp_is_empty!23587 tp!70746))))

(assert (=> b!1016122 (= tp!70737 e!571715)))

(assert (= (and b!1016122 (is-Cons!21622 (t!30635 l!1114))) b!1016213))

(declare-fun b_lambda!15521 () Bool)

(assert (= b_lambda!15517 (or b!1016120 b_lambda!15521)))

(declare-fun bs!29501 () Bool)

(declare-fun d!121153 () Bool)

(assert (= bs!29501 (and d!121153 b!1016120)))

(declare-fun value!178 () B!1520)

(declare-datatypes ((Option!601 0))(
  ( (Some!600 (v!14449 B!1520)) (None!599) )
))
(declare-fun getValueByKey!550 (List!21626 (_ BitVec 64)) Option!601)

(assert (=> bs!29501 (= (dynLambda!1915 lambda!1001 (h!22819 keys!40)) (= (getValueByKey!550 l!1114 (h!22819 keys!40)) (Some!600 value!178)))))

(declare-fun m!938119 () Bool)

(assert (=> bs!29501 m!938119))

(assert (=> b!1016175 d!121153))

(push 1)

(assert (not b!1016213))

(assert (not b!1016188))

(assert tp_is_empty!23587)

(assert (not b!1016202))

(assert (not b_lambda!15521))

(assert (not bs!29501))

(assert (not b!1016176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

