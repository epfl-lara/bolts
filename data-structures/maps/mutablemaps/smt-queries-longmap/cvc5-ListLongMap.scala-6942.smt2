; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87454 () Bool)

(assert start!87454)

(declare-fun b!1012741 () Bool)

(assert (=> b!1012741 true))

(assert (=> b!1012741 true))

(declare-fun b!1012734 () Bool)

(declare-fun e!569743 () Bool)

(declare-fun tp_is_empty!23425 () Bool)

(declare-fun tp!70338 () Bool)

(assert (=> b!1012734 (= e!569743 (and tp_is_empty!23425 tp!70338))))

(declare-fun b!1012735 () Bool)

(declare-fun res!680202 () Bool)

(declare-fun e!569742 () Bool)

(assert (=> b!1012735 (=> (not res!680202) (not e!569742))))

(declare-datatypes ((B!1358 0))(
  ( (B!1359 (val!11763 Int)) )
))
(declare-datatypes ((tuple2!15162 0))(
  ( (tuple2!15163 (_1!7591 (_ BitVec 64)) (_2!7591 B!1358)) )
))
(declare-datatypes ((List!21487 0))(
  ( (Nil!21484) (Cons!21483 (h!22681 tuple2!15162) (t!30496 List!21487)) )
))
(declare-fun l!412 () List!21487)

(declare-fun value!115 () B!1358)

(assert (=> b!1012735 (= res!680202 (and (not (= (_2!7591 (h!22681 l!412)) value!115)) (is-Cons!21483 l!412)))))

(declare-fun b!1012736 () Bool)

(declare-fun res!680204 () Bool)

(declare-fun e!569744 () Bool)

(assert (=> b!1012736 (=> (not res!680204) (not e!569744))))

(declare-fun isStrictlySorted!539 (List!21487) Bool)

(assert (=> b!1012736 (= res!680204 (isStrictlySorted!539 (t!30496 l!412)))))

(declare-fun b!1012737 () Bool)

(assert (=> b!1012737 (= e!569742 e!569744)))

(declare-fun res!680201 () Bool)

(assert (=> b!1012737 (=> (not res!680201) (not e!569744))))

(declare-datatypes ((List!21488 0))(
  ( (Nil!21485) (Cons!21484 (h!22682 (_ BitVec 64)) (t!30497 List!21488)) )
))
(declare-fun lt!447678 () List!21488)

(declare-fun isEmpty!802 (List!21488) Bool)

(assert (=> b!1012737 (= res!680201 (not (isEmpty!802 lt!447678)))))

(declare-fun getKeysOf!25 (List!21487 B!1358) List!21488)

(assert (=> b!1012737 (= lt!447678 (getKeysOf!25 (t!30496 l!412) value!115))))

(declare-fun b!1012738 () Bool)

(declare-fun res!680206 () Bool)

(assert (=> b!1012738 (=> (not res!680206) (not e!569744))))

(declare-fun head!925 (List!21487) tuple2!15162)

(assert (=> b!1012738 (= res!680206 (bvslt (_1!7591 (h!22681 l!412)) (_1!7591 (head!925 (t!30496 l!412)))))))

(declare-fun res!680205 () Bool)

(assert (=> start!87454 (=> (not res!680205) (not e!569742))))

(assert (=> start!87454 (= res!680205 (isStrictlySorted!539 l!412))))

(assert (=> start!87454 e!569742))

(assert (=> start!87454 e!569743))

(assert (=> start!87454 tp_is_empty!23425))

(declare-fun b!1012739 () Bool)

(declare-fun res!680200 () Bool)

(assert (=> b!1012739 (=> (not res!680200) (not e!569744))))

(declare-fun isEmpty!803 (List!21487) Bool)

(assert (=> b!1012739 (= res!680200 (not (isEmpty!803 (t!30496 l!412))))))

(declare-fun b!1012740 () Bool)

(declare-fun lambda!406 () Int)

(declare-fun forall!221 (List!21488 Int) Bool)

(assert (=> b!1012740 (= e!569744 (not (forall!221 lt!447678 lambda!406)))))

(declare-fun res!680203 () Bool)

(assert (=> b!1012741 (=> (not res!680203) (not e!569744))))

(assert (=> b!1012741 (= res!680203 (forall!221 lt!447678 lambda!406))))

(assert (= (and start!87454 res!680205) b!1012735))

(assert (= (and b!1012735 res!680202) b!1012737))

(assert (= (and b!1012737 res!680201) b!1012736))

(assert (= (and b!1012736 res!680204) b!1012739))

(assert (= (and b!1012739 res!680200) b!1012741))

(assert (= (and b!1012741 res!680203) b!1012738))

(assert (= (and b!1012738 res!680206) b!1012740))

(assert (= (and start!87454 (is-Cons!21483 l!412)) b!1012734))

(declare-fun m!936225 () Bool)

(assert (=> start!87454 m!936225))

(declare-fun m!936227 () Bool)

(assert (=> b!1012738 m!936227))

(declare-fun m!936229 () Bool)

(assert (=> b!1012739 m!936229))

(declare-fun m!936231 () Bool)

(assert (=> b!1012736 m!936231))

(declare-fun m!936233 () Bool)

(assert (=> b!1012741 m!936233))

(declare-fun m!936235 () Bool)

(assert (=> b!1012737 m!936235))

(declare-fun m!936237 () Bool)

(assert (=> b!1012737 m!936237))

(assert (=> b!1012740 m!936233))

(push 1)

