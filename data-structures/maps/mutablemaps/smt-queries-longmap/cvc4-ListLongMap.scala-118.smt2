; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2036 () Bool)

(assert start!2036)

(declare-fun b!13750 () Bool)

(assert (=> b!13750 true))

(declare-fun b!13748 () Bool)

(declare-fun res!10788 () Bool)

(declare-fun e!8208 () Bool)

(assert (=> b!13748 (=> (not res!10788) (not e!8208))))

(declare-datatypes ((B!510 0))(
  ( (B!511 (val!353 Int)) )
))
(declare-datatypes ((tuple2!488 0))(
  ( (tuple2!489 (_1!244 (_ BitVec 64)) (_2!244 B!510)) )
))
(declare-datatypes ((List!403 0))(
  ( (Nil!400) (Cons!399 (h!965 tuple2!488) (t!2799 List!403)) )
))
(declare-fun l!522 () List!403)

(declare-fun isEmpty!92 (List!403) Bool)

(assert (=> b!13748 (= res!10788 (not (isEmpty!92 l!522)))))

(declare-fun b!13749 () Bool)

(assert (=> b!13749 (= e!8208 false)))

(declare-fun res!10787 () Bool)

(assert (=> b!13750 (=> (not res!10787) (not e!8208))))

(declare-fun lambda!113 () Int)

(declare-fun forall!85 (List!403 Int) Bool)

(assert (=> b!13750 (= res!10787 (forall!85 Nil!400 lambda!113))))

(declare-fun b!13751 () Bool)

(declare-fun e!8209 () Bool)

(declare-fun tp_is_empty!689 () Bool)

(declare-fun tp!2228 () Bool)

(assert (=> b!13751 (= e!8209 (and tp_is_empty!689 tp!2228))))

(declare-fun b!13752 () Bool)

(declare-fun res!10789 () Bool)

(assert (=> b!13752 (=> (not res!10789) (not e!8208))))

(declare-fun value!159 () B!510)

(assert (=> b!13752 (= res!10789 (and (or (not (is-Cons!399 l!522)) (not (= (_2!244 (h!965 l!522)) value!159))) (or (not (is-Cons!399 l!522)) (= (_2!244 (h!965 l!522)) value!159)) (is-Nil!400 l!522)))))

(declare-fun res!10786 () Bool)

(assert (=> start!2036 (=> (not res!10786) (not e!8208))))

(declare-fun isStrictlySorted!94 (List!403) Bool)

(assert (=> start!2036 (= res!10786 (isStrictlySorted!94 l!522))))

(assert (=> start!2036 e!8208))

(assert (=> start!2036 e!8209))

(assert (=> start!2036 tp_is_empty!689))

(assert (= (and start!2036 res!10786) b!13752))

(assert (= (and b!13752 res!10789) b!13750))

(assert (= (and b!13750 res!10787) b!13748))

(assert (= (and b!13748 res!10788) b!13749))

(assert (= (and start!2036 (is-Cons!399 l!522)) b!13751))

(declare-fun m!9265 () Bool)

(assert (=> b!13748 m!9265))

(declare-fun m!9267 () Bool)

(assert (=> b!13750 m!9267))

(declare-fun m!9269 () Bool)

(assert (=> start!2036 m!9269))

(push 1)

(assert (not start!2036))

(assert (not b!13751))

(assert (not b!13750))

(assert (not b!13748))

(assert tp_is_empty!689)

(check-sat)

(pop 1)

(push 1)

