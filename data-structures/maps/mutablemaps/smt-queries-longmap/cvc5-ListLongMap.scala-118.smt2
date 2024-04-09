; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2032 () Bool)

(assert start!2032)

(declare-fun b!13718 () Bool)

(assert (=> b!13718 true))

(declare-fun b!13714 () Bool)

(declare-fun e!8197 () Bool)

(declare-fun tp_is_empty!685 () Bool)

(declare-fun tp!2222 () Bool)

(assert (=> b!13714 (= e!8197 (and tp_is_empty!685 tp!2222))))

(declare-fun b!13715 () Bool)

(declare-fun res!10763 () Bool)

(declare-fun e!8196 () Bool)

(assert (=> b!13715 (=> (not res!10763) (not e!8196))))

(declare-datatypes ((B!506 0))(
  ( (B!507 (val!351 Int)) )
))
(declare-datatypes ((tuple2!484 0))(
  ( (tuple2!485 (_1!242 (_ BitVec 64)) (_2!242 B!506)) )
))
(declare-datatypes ((List!401 0))(
  ( (Nil!398) (Cons!397 (h!963 tuple2!484) (t!2797 List!401)) )
))
(declare-fun l!522 () List!401)

(declare-fun isEmpty!90 (List!401) Bool)

(assert (=> b!13715 (= res!10763 (not (isEmpty!90 l!522)))))

(declare-fun b!13716 () Bool)

(declare-fun res!10762 () Bool)

(assert (=> b!13716 (=> (not res!10762) (not e!8196))))

(declare-fun value!159 () B!506)

(assert (=> b!13716 (= res!10762 (and (or (not (is-Cons!397 l!522)) (not (= (_2!242 (h!963 l!522)) value!159))) (or (not (is-Cons!397 l!522)) (= (_2!242 (h!963 l!522)) value!159)) (is-Nil!398 l!522)))))

(declare-fun b!13717 () Bool)

(assert (=> b!13717 (= e!8196 false)))

(declare-fun res!10765 () Bool)

(assert (=> start!2032 (=> (not res!10765) (not e!8196))))

(declare-fun isStrictlySorted!92 (List!401) Bool)

(assert (=> start!2032 (= res!10765 (isStrictlySorted!92 l!522))))

(assert (=> start!2032 e!8196))

(assert (=> start!2032 e!8197))

(assert (=> start!2032 tp_is_empty!685))

(declare-fun res!10764 () Bool)

(assert (=> b!13718 (=> (not res!10764) (not e!8196))))

(declare-fun lambda!107 () Int)

(declare-fun forall!83 (List!401 Int) Bool)

(assert (=> b!13718 (= res!10764 (forall!83 Nil!398 lambda!107))))

(assert (= (and start!2032 res!10765) b!13716))

(assert (= (and b!13716 res!10762) b!13718))

(assert (= (and b!13718 res!10764) b!13715))

(assert (= (and b!13715 res!10763) b!13717))

(assert (= (and start!2032 (is-Cons!397 l!522)) b!13714))

(declare-fun m!9253 () Bool)

(assert (=> b!13715 m!9253))

(declare-fun m!9255 () Bool)

(assert (=> start!2032 m!9255))

(declare-fun m!9257 () Bool)

(assert (=> b!13718 m!9257))

(push 1)

(assert (not start!2032))

(assert (not b!13718))

(assert (not b!13715))

(assert (not b!13714))

(assert tp_is_empty!685)

(check-sat)

(pop 1)

(push 1)

(check-sat)

