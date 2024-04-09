; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87496 () Bool)

(assert start!87496)

(declare-fun b!1013034 () Bool)

(assert (=> b!1013034 true))

(assert (=> b!1013034 true))

(declare-fun b!1013031 () Bool)

(declare-fun e!569894 () Bool)

(assert (=> b!1013031 (= e!569894 false)))

(declare-datatypes ((Unit!33063 0))(
  ( (Unit!33064) )
))
(declare-fun lt!447835 () Unit!33063)

(declare-fun e!569892 () Unit!33063)

(assert (=> b!1013031 (= lt!447835 e!569892)))

(declare-fun c!102348 () Bool)

(declare-datatypes ((List!21499 0))(
  ( (Nil!21496) (Cons!21495 (h!22693 (_ BitVec 64)) (t!30508 List!21499)) )
))
(declare-fun lt!447837 () List!21499)

(declare-fun isEmpty!813 (List!21499) Bool)

(assert (=> b!1013031 (= c!102348 (not (isEmpty!813 lt!447837)))))

(declare-datatypes ((B!1370 0))(
  ( (B!1371 (val!11769 Int)) )
))
(declare-datatypes ((tuple2!15174 0))(
  ( (tuple2!15175 (_1!7597 (_ BitVec 64)) (_2!7597 B!1370)) )
))
(declare-datatypes ((List!21500 0))(
  ( (Nil!21497) (Cons!21496 (h!22694 tuple2!15174) (t!30509 List!21500)) )
))
(declare-fun l!412 () List!21500)

(declare-fun value!115 () B!1370)

(declare-fun getKeysOf!31 (List!21500 B!1370) List!21499)

(assert (=> b!1013031 (= lt!447837 (getKeysOf!31 (t!30509 l!412) value!115))))

(declare-fun res!680341 () Bool)

(assert (=> start!87496 (=> (not res!680341) (not e!569894))))

(declare-fun isStrictlySorted!545 (List!21500) Bool)

(assert (=> start!87496 (= res!680341 (isStrictlySorted!545 l!412))))

(assert (=> start!87496 e!569894))

(declare-fun e!569893 () Bool)

(assert (=> start!87496 e!569893))

(declare-fun tp_is_empty!23437 () Bool)

(assert (=> start!87496 tp_is_empty!23437))

(declare-fun b!1013032 () Bool)

(declare-fun Unit!33065 () Unit!33063)

(assert (=> b!1013032 (= e!569892 Unit!33065)))

(declare-fun b!1013033 () Bool)

(declare-fun tp!70365 () Bool)

(assert (=> b!1013033 (= e!569893 (and tp_is_empty!23437 tp!70365))))

(declare-fun lt!447836 () Unit!33063)

(assert (=> b!1013034 (= e!569892 lt!447836)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!22 (List!21500 List!21499 B!1370 tuple2!15174) Unit!33063)

(assert (=> b!1013034 (= lt!447836 (lemmaForallGetValueByKeySameWithASmallerHead!22 (t!30509 l!412) lt!447837 value!115 (h!22694 l!412)))))

(declare-fun lambda!473 () Int)

(declare-fun forall!227 (List!21499 Int) Bool)

(assert (=> b!1013034 (forall!227 lt!447837 lambda!473)))

(declare-fun b!1013035 () Bool)

(declare-fun res!680340 () Bool)

(assert (=> b!1013035 (=> (not res!680340) (not e!569894))))

(assert (=> b!1013035 (= res!680340 (and (not (= (_2!7597 (h!22694 l!412)) value!115)) (is-Cons!21496 l!412)))))

(assert (= (and start!87496 res!680341) b!1013035))

(assert (= (and b!1013035 res!680340) b!1013031))

(assert (= (and b!1013031 c!102348) b!1013034))

(assert (= (and b!1013031 (not c!102348)) b!1013032))

(assert (= (and start!87496 (is-Cons!21496 l!412)) b!1013033))

(declare-fun m!936387 () Bool)

(assert (=> b!1013031 m!936387))

(declare-fun m!936389 () Bool)

(assert (=> b!1013031 m!936389))

(declare-fun m!936391 () Bool)

(assert (=> start!87496 m!936391))

(declare-fun m!936393 () Bool)

(assert (=> b!1013034 m!936393))

(declare-fun m!936395 () Bool)

(assert (=> b!1013034 m!936395))

(push 1)

(assert tp_is_empty!23437)

(assert (not start!87496))

(assert (not b!1013033))

(assert (not b!1013034))

(assert (not b!1013031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

