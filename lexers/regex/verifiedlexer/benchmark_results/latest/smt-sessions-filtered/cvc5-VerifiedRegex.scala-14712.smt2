; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757988 () Bool)

(assert start!757988)

(declare-fun res!3181630 () Bool)

(declare-fun e!4742382 () Bool)

(assert (=> start!757988 (=> (not res!3181630) (not e!4742382))))

(declare-datatypes ((K!22691 0))(
  ( (K!22692 (val!32825 Int)) )
))
(declare-datatypes ((V!22945 0))(
  ( (V!22946 (val!32826 Int)) )
))
(declare-datatypes ((tuple2!70790 0))(
  ( (tuple2!70791 (_1!38698 K!22691) (_2!38698 V!22945)) )
))
(declare-datatypes ((List!75602 0))(
  ( (Nil!75476) (Cons!75476 (h!81924 tuple2!70790) (t!391374 List!75602)) )
))
(declare-fun l!14636 () List!75602)

(declare-fun noDuplicateKeys!2657 (List!75602) Bool)

(assert (=> start!757988 (= res!3181630 (noDuplicateKeys!2657 l!14636))))

(assert (=> start!757988 e!4742382))

(declare-fun e!4742381 () Bool)

(assert (=> start!757988 e!4742381))

(declare-datatypes ((ListMap!7193 0))(
  ( (ListMap!7194 (toList!11871 List!75602)) )
))
(declare-fun acc!1298 () ListMap!7193)

(declare-fun e!4742383 () Bool)

(declare-fun inv!97181 (ListMap!7193) Bool)

(assert (=> start!757988 (and (inv!97181 acc!1298) e!4742383)))

(declare-fun tp_is_empty!54703 () Bool)

(assert (=> start!757988 tp_is_empty!54703))

(declare-fun b!8048709 () Bool)

(declare-fun res!3181629 () Bool)

(assert (=> b!8048709 (=> (not res!3181629) (not e!4742382))))

(declare-fun key!6222 () K!22691)

(declare-fun contains!21092 (ListMap!7193 K!22691) Bool)

(declare-fun addToMapMapFromBucket!1938 (List!75602 ListMap!7193) ListMap!7193)

(assert (=> b!8048709 (= res!3181629 (contains!21092 (addToMapMapFromBucket!1938 l!14636 acc!1298) key!6222))))

(declare-fun b!8048712 () Bool)

(declare-fun tp!2413358 () Bool)

(assert (=> b!8048712 (= e!4742383 tp!2413358)))

(declare-fun b!8048710 () Bool)

(assert (=> b!8048710 (= e!4742382 false)))

(declare-fun lt!2723237 () Bool)

(assert (=> b!8048710 (= lt!2723237 (contains!21092 acc!1298 key!6222))))

(declare-fun tp!2413359 () Bool)

(declare-fun b!8048711 () Bool)

(declare-fun tp_is_empty!54705 () Bool)

(assert (=> b!8048711 (= e!4742381 (and tp_is_empty!54703 tp_is_empty!54705 tp!2413359))))

(assert (= (and start!757988 res!3181630) b!8048709))

(assert (= (and b!8048709 res!3181629) b!8048710))

(assert (= (and start!757988 (is-Cons!75476 l!14636)) b!8048711))

(assert (= start!757988 b!8048712))

(declare-fun m!8399914 () Bool)

(assert (=> start!757988 m!8399914))

(declare-fun m!8399916 () Bool)

(assert (=> start!757988 m!8399916))

(declare-fun m!8399918 () Bool)

(assert (=> b!8048709 m!8399918))

(assert (=> b!8048709 m!8399918))

(declare-fun m!8399920 () Bool)

(assert (=> b!8048709 m!8399920))

(declare-fun m!8399922 () Bool)

(assert (=> b!8048710 m!8399922))

(push 1)

(assert (not start!757988))

(assert (not b!8048711))

(assert tp_is_empty!54703)

(assert tp_is_empty!54705)

(assert (not b!8048712))

(assert (not b!8048710))

(assert (not b!8048709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

