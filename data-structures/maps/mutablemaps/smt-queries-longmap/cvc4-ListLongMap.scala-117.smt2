; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2030 () Bool)

(assert start!2030)

(declare-fun b!13697 () Bool)

(assert (=> b!13697 true))

(declare-fun res!10751 () Bool)

(declare-fun e!8190 () Bool)

(assert (=> b!13697 (=> (not res!10751) (not e!8190))))

(declare-fun lambda!104 () Int)

(declare-datatypes ((B!504 0))(
  ( (B!505 (val!350 Int)) )
))
(declare-datatypes ((tuple2!482 0))(
  ( (tuple2!483 (_1!241 (_ BitVec 64)) (_2!241 B!504)) )
))
(declare-datatypes ((List!400 0))(
  ( (Nil!397) (Cons!396 (h!962 tuple2!482) (t!2796 List!400)) )
))
(declare-fun forall!82 (List!400 Int) Bool)

(assert (=> b!13697 (= res!10751 (forall!82 Nil!397 lambda!104))))

(declare-fun b!13698 () Bool)

(declare-fun e!8191 () Bool)

(declare-fun tp_is_empty!683 () Bool)

(declare-fun tp!2219 () Bool)

(assert (=> b!13698 (= e!8191 (and tp_is_empty!683 tp!2219))))

(declare-fun b!13699 () Bool)

(assert (=> b!13699 (= e!8190 false)))

(declare-fun b!13700 () Bool)

(declare-fun res!10752 () Bool)

(assert (=> b!13700 (=> (not res!10752) (not e!8190))))

(declare-fun l!522 () List!400)

(declare-fun isEmpty!89 (List!400) Bool)

(assert (=> b!13700 (= res!10752 (not (isEmpty!89 l!522)))))

(declare-fun b!13701 () Bool)

(declare-fun res!10753 () Bool)

(assert (=> b!13701 (=> (not res!10753) (not e!8190))))

(declare-fun value!159 () B!504)

(assert (=> b!13701 (= res!10753 (and (or (not (is-Cons!396 l!522)) (not (= (_2!241 (h!962 l!522)) value!159))) (or (not (is-Cons!396 l!522)) (= (_2!241 (h!962 l!522)) value!159)) (is-Nil!397 l!522)))))

(declare-fun res!10750 () Bool)

(assert (=> start!2030 (=> (not res!10750) (not e!8190))))

(declare-fun isStrictlySorted!91 (List!400) Bool)

(assert (=> start!2030 (= res!10750 (isStrictlySorted!91 l!522))))

(assert (=> start!2030 e!8190))

(assert (=> start!2030 e!8191))

(assert (=> start!2030 tp_is_empty!683))

(assert (= (and start!2030 res!10750) b!13701))

(assert (= (and b!13701 res!10753) b!13697))

(assert (= (and b!13697 res!10751) b!13700))

(assert (= (and b!13700 res!10752) b!13699))

(assert (= (and start!2030 (is-Cons!396 l!522)) b!13698))

(declare-fun m!9247 () Bool)

(assert (=> b!13697 m!9247))

(declare-fun m!9249 () Bool)

(assert (=> b!13700 m!9249))

(declare-fun m!9251 () Bool)

(assert (=> start!2030 m!9251))

(push 1)

(assert tp_is_empty!683)

(assert (not b!13697))

(assert (not b!13700))

(assert (not b!13698))

(assert (not start!2030))

(check-sat)

(pop 1)

