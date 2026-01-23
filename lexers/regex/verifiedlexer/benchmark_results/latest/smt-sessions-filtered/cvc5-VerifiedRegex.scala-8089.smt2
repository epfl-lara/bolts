; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417144 () Bool)

(assert start!417144)

(declare-fun b!4329643 () Bool)

(declare-fun e!2694154 () Bool)

(assert (=> b!4329643 (= e!2694154 false)))

(declare-fun b!4329644 () Bool)

(declare-fun res!1774453 () Bool)

(assert (=> b!4329644 (=> (not res!1774453) (not e!2694154))))

(declare-datatypes ((K!9848 0))(
  ( (K!9849 (val!16149 Int)) )
))
(declare-datatypes ((V!10094 0))(
  ( (V!10095 (val!16150 Int)) )
))
(declare-datatypes ((tuple2!47618 0))(
  ( (tuple2!47619 (_1!27103 K!9848) (_2!27103 V!10094)) )
))
(declare-datatypes ((List!48637 0))(
  ( (Nil!48513) (Cons!48513 (h!53982 tuple2!47618) (t!355549 List!48637)) )
))
(declare-datatypes ((tuple2!47620 0))(
  ( (tuple2!47621 (_1!27104 (_ BitVec 64)) (_2!27104 List!48637)) )
))
(declare-datatypes ((List!48638 0))(
  ( (Nil!48514) (Cons!48514 (h!53983 tuple2!47620) (t!355550 List!48638)) )
))
(declare-datatypes ((ListLongMap!1257 0))(
  ( (ListLongMap!1258 (toList!2629 List!48638)) )
))
(declare-fun lm!2227 () ListLongMap!1257)

(assert (=> b!4329644 (= res!1774453 (is-Cons!48514 (toList!2629 lm!2227)))))

(declare-fun b!4329646 () Bool)

(declare-fun res!1774454 () Bool)

(assert (=> b!4329646 (=> (not res!1774454) (not e!2694154))))

(declare-fun newBucket!230 () List!48637)

(declare-fun noDuplicateKeys!324 (List!48637) Bool)

(assert (=> b!4329646 (= res!1774454 (noDuplicateKeys!324 newBucket!230))))

(declare-fun b!4329647 () Bool)

(declare-fun res!1774452 () Bool)

(assert (=> b!4329647 (=> (not res!1774452) (not e!2694154))))

(declare-datatypes ((Hashable!4704 0))(
  ( (HashableExt!4703 (__x!30407 Int)) )
))
(declare-fun hashF!1461 () Hashable!4704)

(declare-fun allKeysSameHashInMap!416 (ListLongMap!1257 Hashable!4704) Bool)

(assert (=> b!4329647 (= res!1774452 (allKeysSameHashInMap!416 (ListLongMap!1258 (t!355550 (toList!2629 lm!2227))) hashF!1461))))

(declare-fun b!4329648 () Bool)

(declare-fun e!2694153 () Bool)

(declare-fun tp!1328213 () Bool)

(assert (=> b!4329648 (= e!2694153 tp!1328213)))

(declare-fun b!4329649 () Bool)

(declare-fun res!1774455 () Bool)

(assert (=> b!4329649 (=> (not res!1774455) (not e!2694154))))

(assert (=> b!4329649 (= res!1774455 (allKeysSameHashInMap!416 lm!2227 hashF!1461))))

(declare-fun b!4329650 () Bool)

(declare-fun res!1774456 () Bool)

(assert (=> b!4329650 (=> (not res!1774456) (not e!2694154))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-fun allKeysSameHash!272 (List!48637 (_ BitVec 64) Hashable!4704) Bool)

(assert (=> b!4329650 (= res!1774456 (allKeysSameHash!272 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4329651 () Bool)

(declare-fun tp_is_empty!24485 () Bool)

(declare-fun tp!1328214 () Bool)

(declare-fun e!2694152 () Bool)

(declare-fun tp_is_empty!24487 () Bool)

(assert (=> b!4329651 (= e!2694152 (and tp_is_empty!24485 tp_is_empty!24487 tp!1328214))))

(declare-fun res!1774458 () Bool)

(assert (=> start!417144 (=> (not res!1774458) (not e!2694154))))

(declare-fun lambda!134423 () Int)

(declare-fun forall!8850 (List!48638 Int) Bool)

(assert (=> start!417144 (= res!1774458 (forall!8850 (toList!2629 lm!2227) lambda!134423))))

(assert (=> start!417144 e!2694154))

(declare-fun inv!64035 (ListLongMap!1257) Bool)

(assert (=> start!417144 (and (inv!64035 lm!2227) e!2694153)))

(assert (=> start!417144 true))

(assert (=> start!417144 e!2694152))

(declare-fun b!4329645 () Bool)

(declare-fun res!1774457 () Bool)

(assert (=> b!4329645 (=> (not res!1774457) (not e!2694154))))

(assert (=> b!4329645 (= res!1774457 (forall!8850 (t!355550 (toList!2629 lm!2227)) lambda!134423))))

(assert (= (and start!417144 res!1774458) b!4329649))

(assert (= (and b!4329649 res!1774455) b!4329646))

(assert (= (and b!4329646 res!1774454) b!4329650))

(assert (= (and b!4329650 res!1774456) b!4329644))

(assert (= (and b!4329644 res!1774453) b!4329645))

(assert (= (and b!4329645 res!1774457) b!4329647))

(assert (= (and b!4329647 res!1774452) b!4329643))

(assert (= start!417144 b!4329648))

(assert (= (and start!417144 (is-Cons!48513 newBucket!230)) b!4329651))

(declare-fun m!4923933 () Bool)

(assert (=> b!4329650 m!4923933))

(declare-fun m!4923935 () Bool)

(assert (=> start!417144 m!4923935))

(declare-fun m!4923937 () Bool)

(assert (=> start!417144 m!4923937))

(declare-fun m!4923939 () Bool)

(assert (=> b!4329649 m!4923939))

(declare-fun m!4923941 () Bool)

(assert (=> b!4329647 m!4923941))

(declare-fun m!4923943 () Bool)

(assert (=> b!4329645 m!4923943))

(declare-fun m!4923945 () Bool)

(assert (=> b!4329646 m!4923945))

(push 1)

(assert (not b!4329649))

(assert tp_is_empty!24485)

(assert (not b!4329648))

(assert (not start!417144))

(assert (not b!4329650))

(assert (not b!4329647))

(assert (not b!4329646))

(assert (not b!4329651))

(assert (not b!4329645))

(assert tp_is_empty!24487)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

