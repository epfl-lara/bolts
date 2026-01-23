; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471298 () Bool)

(assert start!471298)

(declare-fun b!4671603 () Bool)

(declare-fun e!2915329 () Bool)

(declare-fun tp!1344002 () Bool)

(assert (=> b!4671603 (= e!2915329 tp!1344002)))

(declare-fun b!4671604 () Bool)

(declare-fun res!1966777 () Bool)

(declare-fun e!2915327 () Bool)

(assert (=> b!4671604 (=> (not res!1966777) (not e!2915327))))

(declare-datatypes ((K!13443 0))(
  ( (K!13444 (val!19025 Int)) )
))
(declare-datatypes ((V!13689 0))(
  ( (V!13690 (val!19026 Int)) )
))
(declare-datatypes ((tuple2!53262 0))(
  ( (tuple2!53263 (_1!29925 K!13443) (_2!29925 V!13689)) )
))
(declare-datatypes ((List!52194 0))(
  ( (Nil!52070) (Cons!52070 (h!58250 tuple2!53262) (t!359332 List!52194)) )
))
(declare-fun oldBucket!34 () List!52194)

(declare-fun noDuplicateKeys!1717 (List!52194) Bool)

(assert (=> b!4671604 (= res!1966777 (noDuplicateKeys!1717 oldBucket!34))))

(declare-fun res!1966774 () Bool)

(assert (=> start!471298 (=> (not res!1966774) (not e!2915327))))

(declare-datatypes ((tuple2!53264 0))(
  ( (tuple2!53265 (_1!29926 (_ BitVec 64)) (_2!29926 List!52194)) )
))
(declare-datatypes ((List!52195 0))(
  ( (Nil!52071) (Cons!52071 (h!58251 tuple2!53264) (t!359333 List!52195)) )
))
(declare-datatypes ((ListLongMap!3853 0))(
  ( (ListLongMap!3854 (toList!5325 List!52195)) )
))
(declare-fun lm!2023 () ListLongMap!3853)

(declare-fun lambda!202651 () Int)

(declare-fun forall!11117 (List!52195 Int) Bool)

(assert (=> start!471298 (= res!1966774 (forall!11117 (toList!5325 lm!2023) lambda!202651))))

(assert (=> start!471298 e!2915327))

(declare-fun inv!67318 (ListLongMap!3853) Bool)

(assert (=> start!471298 (and (inv!67318 lm!2023) e!2915329)))

(declare-fun tp_is_empty!30161 () Bool)

(assert (=> start!471298 tp_is_empty!30161))

(declare-fun e!2915330 () Bool)

(assert (=> start!471298 e!2915330))

(assert (=> start!471298 true))

(declare-fun e!2915328 () Bool)

(assert (=> start!471298 e!2915328))

(declare-fun tp!1344003 () Bool)

(declare-fun tp_is_empty!30163 () Bool)

(declare-fun b!4671605 () Bool)

(assert (=> b!4671605 (= e!2915328 (and tp_is_empty!30161 tp_is_empty!30163 tp!1344003))))

(declare-fun b!4671606 () Bool)

(declare-fun res!1966776 () Bool)

(assert (=> b!4671606 (=> (not res!1966776) (not e!2915327))))

(declare-fun newBucket!218 () List!52194)

(assert (=> b!4671606 (= res!1966776 (noDuplicateKeys!1717 newBucket!218))))

(declare-fun tp!1344004 () Bool)

(declare-fun b!4671607 () Bool)

(assert (=> b!4671607 (= e!2915330 (and tp_is_empty!30161 tp_is_empty!30163 tp!1344004))))

(declare-fun b!4671608 () Bool)

(declare-fun res!1966773 () Bool)

(assert (=> b!4671608 (=> (not res!1966773) (not e!2915327))))

(declare-datatypes ((Hashable!6086 0))(
  ( (HashableExt!6085 (__x!31789 Int)) )
))
(declare-fun hashF!1323 () Hashable!6086)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1543 (List!52194 (_ BitVec 64) Hashable!6086) Bool)

(assert (=> b!4671608 (= res!1966773 (allKeysSameHash!1543 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4671609 () Bool)

(assert (=> b!4671609 (= e!2915327 (not (forall!11117 (toList!5325 lm!2023) lambda!202651)))))

(declare-fun b!4671610 () Bool)

(declare-fun res!1966775 () Bool)

(assert (=> b!4671610 (=> (not res!1966775) (not e!2915327))))

(declare-fun key!4653 () K!13443)

(declare-fun removePairForKey!1312 (List!52194 K!13443) List!52194)

(assert (=> b!4671610 (= res!1966775 (= (removePairForKey!1312 oldBucket!34 key!4653) newBucket!218))))

(assert (= (and start!471298 res!1966774) b!4671604))

(assert (= (and b!4671604 res!1966777) b!4671606))

(assert (= (and b!4671606 res!1966776) b!4671610))

(assert (= (and b!4671610 res!1966775) b!4671608))

(assert (= (and b!4671608 res!1966773) b!4671609))

(assert (= start!471298 b!4671603))

(assert (= (and start!471298 (is-Cons!52070 oldBucket!34)) b!4671607))

(assert (= (and start!471298 (is-Cons!52070 newBucket!218)) b!4671605))

(declare-fun m!5565487 () Bool)

(assert (=> start!471298 m!5565487))

(declare-fun m!5565489 () Bool)

(assert (=> start!471298 m!5565489))

(declare-fun m!5565491 () Bool)

(assert (=> b!4671604 m!5565491))

(assert (=> b!4671609 m!5565487))

(declare-fun m!5565493 () Bool)

(assert (=> b!4671610 m!5565493))

(declare-fun m!5565495 () Bool)

(assert (=> b!4671608 m!5565495))

(declare-fun m!5565497 () Bool)

(assert (=> b!4671606 m!5565497))

(push 1)

(assert (not b!4671608))

(assert (not b!4671607))

(assert (not start!471298))

(assert tp_is_empty!30161)

(assert (not b!4671610))

(assert (not b!4671609))

(assert (not b!4671606))

(assert (not b!4671605))

(assert (not b!4671603))

(assert tp_is_empty!30163)

(assert (not b!4671604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

