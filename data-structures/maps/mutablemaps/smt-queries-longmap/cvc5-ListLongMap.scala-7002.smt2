; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88942 () Bool)

(assert start!88942)

(declare-fun res!683904 () Bool)

(declare-fun e!574261 () Bool)

(assert (=> start!88942 (=> (not res!683904) (not e!574261))))

(declare-datatypes ((B!1718 0))(
  ( (B!1719 (val!11943 Int)) )
))
(declare-datatypes ((tuple2!15522 0))(
  ( (tuple2!15523 (_1!7771 (_ BitVec 64)) (_2!7771 B!1718)) )
))
(declare-datatypes ((List!21745 0))(
  ( (Nil!21742) (Cons!21741 (h!22939 tuple2!15522) (t!30762 List!21745)) )
))
(declare-fun l!1367 () List!21745)

(declare-fun isStrictlySorted!692 (List!21745) Bool)

(assert (=> start!88942 (= res!683904 (isStrictlySorted!692 l!1367))))

(assert (=> start!88942 e!574261))

(declare-fun e!574260 () Bool)

(assert (=> start!88942 e!574260))

(assert (=> start!88942 true))

(declare-fun tp_is_empty!23785 () Bool)

(assert (=> start!88942 tp_is_empty!23785))

(declare-fun b!1020214 () Bool)

(assert (=> b!1020214 (= e!574261 false)))

(declare-fun value!188 () B!1718)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun lt!449803 () Bool)

(declare-fun contains!5936 (List!21745 tuple2!15522) Bool)

(assert (=> b!1020214 (= lt!449803 (contains!5936 l!1367 (tuple2!15523 key!393 value!188)))))

(declare-fun b!1020215 () Bool)

(declare-fun tp!71228 () Bool)

(assert (=> b!1020215 (= e!574260 (and tp_is_empty!23785 tp!71228))))

(assert (= (and start!88942 res!683904) b!1020214))

(assert (= (and start!88942 (is-Cons!21741 l!1367)) b!1020215))

(declare-fun m!940375 () Bool)

(assert (=> start!88942 m!940375))

(declare-fun m!940377 () Bool)

(assert (=> b!1020214 m!940377))

(push 1)

(assert (not b!1020214))

(assert (not start!88942))

(assert (not b!1020215))

(assert tp_is_empty!23785)

(check-sat)

(pop 1)

(push 1)

(check-sat)

