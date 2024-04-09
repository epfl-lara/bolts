; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2024 () Bool)

(assert start!2024)

(declare-fun b!13649 () Bool)

(assert (=> b!13649 true))

(declare-fun res!10716 () Bool)

(declare-fun e!8171 () Bool)

(assert (=> start!2024 (=> (not res!10716) (not e!8171))))

(declare-datatypes ((B!498 0))(
  ( (B!499 (val!347 Int)) )
))
(declare-datatypes ((tuple2!476 0))(
  ( (tuple2!477 (_1!238 (_ BitVec 64)) (_2!238 B!498)) )
))
(declare-datatypes ((List!397 0))(
  ( (Nil!394) (Cons!393 (h!959 tuple2!476) (t!2793 List!397)) )
))
(declare-fun l!522 () List!397)

(declare-fun isStrictlySorted!88 (List!397) Bool)

(assert (=> start!2024 (= res!10716 (isStrictlySorted!88 l!522))))

(assert (=> start!2024 e!8171))

(declare-fun e!8172 () Bool)

(assert (=> start!2024 e!8172))

(declare-fun tp_is_empty!677 () Bool)

(assert (=> start!2024 tp_is_empty!677))

(declare-fun b!13644 () Bool)

(declare-fun res!10713 () Bool)

(declare-fun e!8173 () Bool)

(assert (=> b!13644 (=> (not res!10713) (not e!8173))))

(declare-fun lt!3534 () List!397)

(declare-fun isEmpty!86 (List!397) Bool)

(assert (=> b!13644 (= res!10713 (not (isEmpty!86 lt!3534)))))

(declare-fun b!13645 () Bool)

(assert (=> b!13645 (= e!8171 e!8173)))

(declare-fun res!10717 () Bool)

(assert (=> b!13645 (=> (not res!10717) (not e!8173))))

(assert (=> b!13645 (= res!10717 (isStrictlySorted!88 lt!3534))))

(declare-fun value!159 () B!498)

(declare-fun filterByValue!12 (List!397 B!498) List!397)

(assert (=> b!13645 (= lt!3534 (filterByValue!12 (t!2793 l!522) value!159))))

(declare-fun b!13646 () Bool)

(declare-fun tp!2210 () Bool)

(assert (=> b!13646 (= e!8172 (and tp_is_empty!677 tp!2210))))

(declare-fun b!13647 () Bool)

(declare-fun res!10715 () Bool)

(assert (=> b!13647 (=> (not res!10715) (not e!8171))))

(assert (=> b!13647 (= res!10715 (and (not (= (_2!238 (h!959 l!522)) value!159)) (is-Cons!393 l!522)))))

(declare-fun b!13648 () Bool)

(assert (=> b!13648 (= e!8173 (= l!522 Nil!394))))

(declare-fun res!10714 () Bool)

(assert (=> b!13649 (=> (not res!10714) (not e!8173))))

(declare-fun lambda!95 () Int)

(declare-fun forall!79 (List!397 Int) Bool)

(assert (=> b!13649 (= res!10714 (forall!79 lt!3534 lambda!95))))

(declare-fun b!13650 () Bool)

(declare-fun res!10712 () Bool)

(assert (=> b!13650 (=> (not res!10712) (not e!8173))))

(assert (=> b!13650 (= res!10712 (not (isEmpty!86 l!522)))))

(assert (= (and start!2024 res!10716) b!13647))

(assert (= (and b!13647 res!10715) b!13645))

(assert (= (and b!13645 res!10717) b!13649))

(assert (= (and b!13649 res!10714) b!13650))

(assert (= (and b!13650 res!10712) b!13644))

(assert (= (and b!13644 res!10713) b!13648))

(assert (= (and start!2024 (is-Cons!393 l!522)) b!13646))

(declare-fun m!9223 () Bool)

(assert (=> start!2024 m!9223))

(declare-fun m!9225 () Bool)

(assert (=> b!13650 m!9225))

(declare-fun m!9227 () Bool)

(assert (=> b!13644 m!9227))

(declare-fun m!9229 () Bool)

(assert (=> b!13645 m!9229))

(declare-fun m!9231 () Bool)

(assert (=> b!13645 m!9231))

(declare-fun m!9233 () Bool)

(assert (=> b!13649 m!9233))

(push 1)

