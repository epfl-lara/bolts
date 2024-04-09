; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2222 () Bool)

(assert start!2222)

(declare-fun res!11392 () Bool)

(declare-fun e!8934 () Bool)

(assert (=> start!2222 (=> (not res!11392) (not e!8934))))

(declare-datatypes ((B!564 0))(
  ( (B!565 (val!380 Int)) )
))
(declare-datatypes ((tuple2!542 0))(
  ( (tuple2!543 (_1!271 (_ BitVec 64)) (_2!271 B!564)) )
))
(declare-datatypes ((List!430 0))(
  ( (Nil!427) (Cons!426 (h!992 tuple2!542) (t!2832 List!430)) )
))
(declare-fun l!522 () List!430)

(declare-fun isStrictlySorted!121 (List!430) Bool)

(assert (=> start!2222 (= res!11392 (isStrictlySorted!121 l!522))))

(assert (=> start!2222 e!8934))

(declare-fun e!8935 () Bool)

(assert (=> start!2222 e!8935))

(declare-fun tp_is_empty!743 () Bool)

(assert (=> start!2222 tp_is_empty!743))

(declare-fun b!14845 () Bool)

(declare-fun value!159 () B!564)

(assert (=> b!14845 (= e!8934 (and (or (not (is-Cons!426 l!522)) (not (= (_2!271 (h!992 l!522)) value!159))) (or (not (is-Cons!426 l!522)) (= (_2!271 (h!992 l!522)) value!159)) (not (is-Nil!427 l!522))))))

(declare-fun b!14846 () Bool)

(declare-fun tp!2387 () Bool)

(assert (=> b!14846 (= e!8935 (and tp_is_empty!743 tp!2387))))

(assert (= (and start!2222 res!11392) b!14845))

(assert (= (and start!2222 (is-Cons!426 l!522)) b!14846))

(declare-fun m!9893 () Bool)

(assert (=> start!2222 m!9893))

(push 1)

(assert (not start!2222))

(assert (not b!14846))

(assert tp_is_empty!743)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

