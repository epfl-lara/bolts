; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471494 () Bool)

(assert start!471494)

(declare-fun b!4672590 () Bool)

(declare-fun res!1967304 () Bool)

(declare-fun e!2915904 () Bool)

(assert (=> b!4672590 (=> (not res!1967304) (not e!2915904))))

(declare-datatypes ((K!13458 0))(
  ( (K!13459 (val!19037 Int)) )
))
(declare-datatypes ((V!13704 0))(
  ( (V!13705 (val!19038 Int)) )
))
(declare-datatypes ((tuple2!53286 0))(
  ( (tuple2!53287 (_1!29937 K!13458) (_2!29937 V!13704)) )
))
(declare-datatypes ((List!52210 0))(
  ( (Nil!52086) (Cons!52086 (h!58270 tuple2!53286) (t!359348 List!52210)) )
))
(declare-datatypes ((tuple2!53288 0))(
  ( (tuple2!53289 (_1!29938 (_ BitVec 64)) (_2!29938 List!52210)) )
))
(declare-datatypes ((List!52211 0))(
  ( (Nil!52087) (Cons!52087 (h!58271 tuple2!53288) (t!359349 List!52211)) )
))
(declare-datatypes ((ListLongMap!3865 0))(
  ( (ListLongMap!3866 (toList!5335 List!52211)) )
))
(declare-fun lm!2023 () ListLongMap!3865)

(declare-datatypes ((Hashable!6092 0))(
  ( (HashableExt!6091 (__x!31795 Int)) )
))
(declare-fun hashF!1323 () Hashable!6092)

(declare-fun allKeysSameHashInMap!1637 (ListLongMap!3865 Hashable!6092) Bool)

(assert (=> b!4672590 (= res!1967304 (allKeysSameHashInMap!1637 lm!2023 hashF!1323))))

(declare-fun b!4672591 () Bool)

(declare-fun res!1967306 () Bool)

(assert (=> b!4672591 (=> (not res!1967306) (not e!2915904))))

(declare-fun oldBucket!34 () List!52210)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1549 (List!52210 (_ BitVec 64) Hashable!6092) Bool)

(assert (=> b!4672591 (= res!1967306 (allKeysSameHash!1549 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4672592 () Bool)

(declare-fun lambda!202911 () Int)

(declare-fun forall!11130 (List!52211 Int) Bool)

(assert (=> b!4672592 (= e!2915904 (not (forall!11130 (toList!5335 lm!2023) lambda!202911)))))

(declare-fun tail!8286 (ListLongMap!3865) ListLongMap!3865)

(assert (=> b!4672592 (= (t!359349 (toList!5335 lm!2023)) (toList!5335 (tail!8286 lm!2023)))))

(declare-fun b!4672593 () Bool)

(declare-fun res!1967305 () Bool)

(assert (=> b!4672593 (=> (not res!1967305) (not e!2915904))))

(assert (=> b!4672593 (= res!1967305 (is-Cons!52087 (toList!5335 lm!2023)))))

(declare-fun b!4672595 () Bool)

(declare-fun res!1967303 () Bool)

(assert (=> b!4672595 (=> (not res!1967303) (not e!2915904))))

(declare-fun newBucket!218 () List!52210)

(declare-fun noDuplicateKeys!1723 (List!52210) Bool)

(assert (=> b!4672595 (= res!1967303 (noDuplicateKeys!1723 newBucket!218))))

(declare-fun b!4672596 () Bool)

(declare-fun res!1967308 () Bool)

(assert (=> b!4672596 (=> (not res!1967308) (not e!2915904))))

(declare-fun key!4653 () K!13458)

(declare-fun removePairForKey!1318 (List!52210 K!13458) List!52210)

(assert (=> b!4672596 (= res!1967308 (= (removePairForKey!1318 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4672597 () Bool)

(declare-fun res!1967307 () Bool)

(assert (=> b!4672597 (=> (not res!1967307) (not e!2915904))))

(assert (=> b!4672597 (= res!1967307 (allKeysSameHash!1549 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4672598 () Bool)

(declare-fun res!1967309 () Bool)

(assert (=> b!4672598 (=> (not res!1967309) (not e!2915904))))

(declare-fun hash!3874 (Hashable!6092 K!13458) (_ BitVec 64))

(assert (=> b!4672598 (= res!1967309 (= (hash!3874 hashF!1323 key!4653) hash!405))))

(declare-fun b!4672599 () Bool)

(declare-fun res!1967300 () Bool)

(assert (=> b!4672599 (=> (not res!1967300) (not e!2915904))))

(declare-fun head!9763 (List!52211) tuple2!53288)

(assert (=> b!4672599 (= res!1967300 (= (head!9763 (toList!5335 lm!2023)) (tuple2!53289 hash!405 oldBucket!34)))))

(declare-fun b!4672600 () Bool)

(declare-fun res!1967302 () Bool)

(assert (=> b!4672600 (=> (not res!1967302) (not e!2915904))))

(assert (=> b!4672600 (= res!1967302 (noDuplicateKeys!1723 oldBucket!34))))

(declare-fun tp!1344116 () Bool)

(declare-fun e!2915907 () Bool)

(declare-fun tp_is_empty!30185 () Bool)

(declare-fun tp_is_empty!30187 () Bool)

(declare-fun b!4672594 () Bool)

(assert (=> b!4672594 (= e!2915907 (and tp_is_empty!30185 tp_is_empty!30187 tp!1344116))))

(declare-fun res!1967310 () Bool)

(assert (=> start!471494 (=> (not res!1967310) (not e!2915904))))

(assert (=> start!471494 (= res!1967310 (forall!11130 (toList!5335 lm!2023) lambda!202911))))

(assert (=> start!471494 e!2915904))

(declare-fun e!2915906 () Bool)

(declare-fun inv!67333 (ListLongMap!3865) Bool)

(assert (=> start!471494 (and (inv!67333 lm!2023) e!2915906)))

(assert (=> start!471494 tp_is_empty!30185))

(assert (=> start!471494 e!2915907))

(assert (=> start!471494 true))

(declare-fun e!2915905 () Bool)

(assert (=> start!471494 e!2915905))

(declare-fun b!4672601 () Bool)

(declare-fun res!1967301 () Bool)

(assert (=> b!4672601 (=> (not res!1967301) (not e!2915904))))

(declare-datatypes ((ListMap!4699 0))(
  ( (ListMap!4700 (toList!5336 List!52210)) )
))
(declare-fun contains!15268 (ListMap!4699 K!13458) Bool)

(declare-fun extractMap!1749 (List!52211) ListMap!4699)

(assert (=> b!4672601 (= res!1967301 (contains!15268 (extractMap!1749 (toList!5335 lm!2023)) key!4653))))

(declare-fun b!4672602 () Bool)

(declare-fun tp!1344118 () Bool)

(assert (=> b!4672602 (= e!2915906 tp!1344118)))

(declare-fun b!4672603 () Bool)

(declare-fun tp!1344117 () Bool)

(assert (=> b!4672603 (= e!2915905 (and tp_is_empty!30185 tp_is_empty!30187 tp!1344117))))

(assert (= (and start!471494 res!1967310) b!4672600))

(assert (= (and b!4672600 res!1967302) b!4672595))

(assert (= (and b!4672595 res!1967303) b!4672596))

(assert (= (and b!4672596 res!1967308) b!4672591))

(assert (= (and b!4672591 res!1967306) b!4672601))

(assert (= (and b!4672601 res!1967301) b!4672598))

(assert (= (and b!4672598 res!1967309) b!4672597))

(assert (= (and b!4672597 res!1967307) b!4672590))

(assert (= (and b!4672590 res!1967304) b!4672599))

(assert (= (and b!4672599 res!1967300) b!4672593))

(assert (= (and b!4672593 res!1967305) b!4672592))

(assert (= start!471494 b!4672602))

(assert (= (and start!471494 (is-Cons!52086 oldBucket!34)) b!4672594))

(assert (= (and start!471494 (is-Cons!52086 newBucket!218)) b!4672603))

(declare-fun m!5566385 () Bool)

(assert (=> b!4672601 m!5566385))

(assert (=> b!4672601 m!5566385))

(declare-fun m!5566387 () Bool)

(assert (=> b!4672601 m!5566387))

(declare-fun m!5566389 () Bool)

(assert (=> b!4672598 m!5566389))

(declare-fun m!5566391 () Bool)

(assert (=> b!4672590 m!5566391))

(declare-fun m!5566393 () Bool)

(assert (=> b!4672596 m!5566393))

(declare-fun m!5566395 () Bool)

(assert (=> b!4672599 m!5566395))

(declare-fun m!5566397 () Bool)

(assert (=> b!4672595 m!5566397))

(declare-fun m!5566399 () Bool)

(assert (=> b!4672591 m!5566399))

(declare-fun m!5566401 () Bool)

(assert (=> b!4672600 m!5566401))

(declare-fun m!5566403 () Bool)

(assert (=> start!471494 m!5566403))

(declare-fun m!5566405 () Bool)

(assert (=> start!471494 m!5566405))

(declare-fun m!5566407 () Bool)

(assert (=> b!4672597 m!5566407))

(assert (=> b!4672592 m!5566403))

(declare-fun m!5566409 () Bool)

(assert (=> b!4672592 m!5566409))

(push 1)

(assert (not start!471494))

(assert (not b!4672590))

(assert (not b!4672591))

(assert (not b!4672596))

(assert (not b!4672603))

(assert tp_is_empty!30185)

(assert (not b!4672597))

(assert (not b!4672600))

(assert (not b!4672602))

(assert (not b!4672594))

(assert (not b!4672595))

(assert (not b!4672598))

(assert (not b!4672592))

(assert (not b!4672599))

(assert (not b!4672601))

(assert tp_is_empty!30187)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

