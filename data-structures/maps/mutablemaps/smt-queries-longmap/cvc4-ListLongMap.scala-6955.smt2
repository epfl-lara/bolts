; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87770 () Bool)

(assert start!87770)

(declare-fun b!1014514 () Bool)

(declare-fun res!680873 () Bool)

(declare-fun e!570760 () Bool)

(assert (=> b!1014514 (=> (not res!680873) (not e!570760))))

(declare-datatypes ((B!1440 0))(
  ( (B!1441 (val!11804 Int)) )
))
(declare-datatypes ((tuple2!15244 0))(
  ( (tuple2!15245 (_1!7632 (_ BitVec 64)) (_2!7632 B!1440)) )
))
(declare-datatypes ((List!21554 0))(
  ( (Nil!21551) (Cons!21550 (h!22748 tuple2!15244) (t!30563 List!21554)) )
))
(declare-fun l!412 () List!21554)

(declare-fun value!115 () B!1440)

(assert (=> b!1014514 (= res!680873 (and (not (= (_2!7632 (h!22748 l!412)) value!115)) (is-Cons!21550 l!412)))))

(declare-fun b!1014516 () Bool)

(declare-fun ListPrimitiveSize!117 (List!21554) Int)

(assert (=> b!1014516 (= e!570760 (>= (ListPrimitiveSize!117 (t!30563 l!412)) (ListPrimitiveSize!117 l!412)))))

(declare-fun res!680874 () Bool)

(assert (=> start!87770 (=> (not res!680874) (not e!570760))))

(declare-fun isStrictlySorted!574 (List!21554) Bool)

(assert (=> start!87770 (= res!680874 (isStrictlySorted!574 l!412))))

(assert (=> start!87770 e!570760))

(declare-fun e!570761 () Bool)

(assert (=> start!87770 e!570761))

(declare-fun tp_is_empty!23507 () Bool)

(assert (=> start!87770 tp_is_empty!23507))

(declare-fun b!1014515 () Bool)

(declare-fun res!680875 () Bool)

(assert (=> b!1014515 (=> (not res!680875) (not e!570760))))

(declare-datatypes ((List!21555 0))(
  ( (Nil!21552) (Cons!21551 (h!22749 (_ BitVec 64)) (t!30564 List!21555)) )
))
(declare-fun isEmpty!842 (List!21555) Bool)

(declare-fun getKeysOf!51 (List!21554 B!1440) List!21555)

(assert (=> b!1014515 (= res!680875 (not (isEmpty!842 (getKeysOf!51 (t!30563 l!412) value!115))))))

(declare-fun b!1014517 () Bool)

(declare-fun tp!70545 () Bool)

(assert (=> b!1014517 (= e!570761 (and tp_is_empty!23507 tp!70545))))

(assert (= (and start!87770 res!680874) b!1014514))

(assert (= (and b!1014514 res!680873) b!1014515))

(assert (= (and b!1014515 res!680875) b!1014516))

(assert (= (and start!87770 (is-Cons!21550 l!412)) b!1014517))

(declare-fun m!937211 () Bool)

(assert (=> b!1014516 m!937211))

(declare-fun m!937213 () Bool)

(assert (=> b!1014516 m!937213))

(declare-fun m!937215 () Bool)

(assert (=> start!87770 m!937215))

(declare-fun m!937217 () Bool)

(assert (=> b!1014515 m!937217))

(assert (=> b!1014515 m!937217))

(declare-fun m!937219 () Bool)

(assert (=> b!1014515 m!937219))

(push 1)

(assert (not b!1014516))

(assert (not b!1014517))

(assert (not b!1014515))

(assert tp_is_empty!23507)

(assert (not start!87770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120755 () Bool)

(declare-fun res!680892 () Bool)

(declare-fun e!570780 () Bool)

(assert (=> d!120755 (=> res!680892 e!570780)))

(assert (=> d!120755 (= res!680892 (or (is-Nil!21551 l!412) (is-Nil!21551 (t!30563 l!412))))))

(assert (=> d!120755 (= (isStrictlySorted!574 l!412) e!570780)))

(declare-fun b!1014538 () Bool)

(declare-fun e!570781 () Bool)

(assert (=> b!1014538 (= e!570780 e!570781)))

(declare-fun res!680893 () Bool)

(assert (=> b!1014538 (=> (not res!680893) (not e!570781))))

(assert (=> b!1014538 (= res!680893 (bvslt (_1!7632 (h!22748 l!412)) (_1!7632 (h!22748 (t!30563 l!412)))))))

(declare-fun b!1014539 () Bool)

(assert (=> b!1014539 (= e!570781 (isStrictlySorted!574 (t!30563 l!412)))))

(assert (= (and d!120755 (not res!680892)) b!1014538))

(assert (= (and b!1014538 res!680893) b!1014539))

(declare-fun m!937225 () Bool)

(assert (=> b!1014539 m!937225))

(assert (=> start!87770 d!120755))

(declare-fun d!120763 () Bool)

(declare-fun lt!448600 () Int)

(assert (=> d!120763 (>= lt!448600 0)))

(declare-fun e!570786 () Int)

(assert (=> d!120763 (= lt!448600 e!570786)))

(declare-fun c!102664 () Bool)

(assert (=> d!120763 (= c!102664 (is-Nil!21551 (t!30563 l!412)))))

(assert (=> d!120763 (= (ListPrimitiveSize!117 (t!30563 l!412)) lt!448600)))

(declare-fun b!1014548 () Bool)

(assert (=> b!1014548 (= e!570786 0)))

(declare-fun b!1014549 () Bool)

(assert (=> b!1014549 (= e!570786 (+ 1 (ListPrimitiveSize!117 (t!30563 (t!30563 l!412)))))))

(assert (= (and d!120763 c!102664) b!1014548))

(assert (= (and d!120763 (not c!102664)) b!1014549))

(declare-fun m!937229 () Bool)

(assert (=> b!1014549 m!937229))

(assert (=> b!1014516 d!120763))

(declare-fun d!120771 () Bool)

(declare-fun lt!448601 () Int)

(assert (=> d!120771 (>= lt!448601 0)))

(declare-fun e!570787 () Int)

(assert (=> d!120771 (= lt!448601 e!570787)))

(declare-fun c!102665 () Bool)

(assert (=> d!120771 (= c!102665 (is-Nil!21551 l!412))))

(assert (=> d!120771 (= (ListPrimitiveSize!117 l!412) lt!448601)))

(declare-fun b!1014550 () Bool)

(assert (=> b!1014550 (= e!570787 0)))

(declare-fun b!1014551 () Bool)

(assert (=> b!1014551 (= e!570787 (+ 1 (ListPrimitiveSize!117 (t!30563 l!412))))))

(assert (= (and d!120771 c!102665) b!1014550))

(assert (= (and d!120771 (not c!102665)) b!1014551))

(assert (=> b!1014551 m!937211))

(assert (=> b!1014516 d!120771))

(declare-fun d!120773 () Bool)

(assert (=> d!120773 (= (isEmpty!842 (getKeysOf!51 (t!30563 l!412) value!115)) (is-Nil!21552 (getKeysOf!51 (t!30563 l!412) value!115)))))

(assert (=> b!1014515 d!120773))

(declare-fun b!1014646 () Bool)

(assert (=> b!1014646 true))

(assert (=> b!1014646 true))

(assert (=> b!1014646 true))

(declare-fun bs!29279 () Bool)

(declare-fun b!1014651 () Bool)

(assert (= bs!29279 (and b!1014651 b!1014646)))

(declare-fun lambda!736 () Int)

(declare-fun lt!448703 () List!21554)

(declare-fun lt!448706 () tuple2!15244)

(declare-fun lambda!735 () Int)

(declare-fun lt!448704 () tuple2!15244)

(declare-fun lt!448713 () List!21554)

(assert (=> bs!29279 (= (= (Cons!21550 lt!448704 lt!448713) (Cons!21550 lt!448706 lt!448703)) (= lambda!736 lambda!735))))

(assert (=> b!1014651 true))

(assert (=> b!1014651 true))

(assert (=> b!1014651 true))

(declare-fun bs!29280 () Bool)

(declare-fun d!120775 () Bool)

(assert (= bs!29280 (and d!120775 b!1014646)))

(declare-fun lambda!737 () Int)

(assert (=> bs!29280 (= (= (t!30563 l!412) (Cons!21550 lt!448706 lt!448703)) (= lambda!737 lambda!735))))

(declare-fun bs!29281 () Bool)

(assert (= bs!29281 (and d!120775 b!1014651)))

(assert (=> bs!29281 (= (= (t!30563 l!412) (Cons!21550 lt!448704 lt!448713)) (= lambda!737 lambda!736))))

