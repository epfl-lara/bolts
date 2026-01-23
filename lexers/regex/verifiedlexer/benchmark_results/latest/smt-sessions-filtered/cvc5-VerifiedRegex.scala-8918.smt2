; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!478310 () Bool)

(assert start!478310)

(declare-fun b!4708594 () Bool)

(declare-fun res!1989594 () Bool)

(declare-fun e!2936965 () Bool)

(assert (=> b!4708594 (=> (not res!1989594) (not e!2936965))))

(declare-datatypes ((Hashable!6306 0))(
  ( (HashableExt!6305 (__x!32009 Int)) )
))
(declare-fun hashF!1323 () Hashable!6306)

(declare-datatypes ((K!13993 0))(
  ( (K!13994 (val!19465 Int)) )
))
(declare-datatypes ((V!14239 0))(
  ( (V!14240 (val!19466 Int)) )
))
(declare-datatypes ((tuple2!54142 0))(
  ( (tuple2!54143 (_1!30365 K!13993) (_2!30365 V!14239)) )
))
(declare-datatypes ((List!52755 0))(
  ( (Nil!52631) (Cons!52631 (h!58932 tuple2!54142) (t!359987 List!52755)) )
))
(declare-fun oldBucket!34 () List!52755)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1763 (List!52755 (_ BitVec 64) Hashable!6306) Bool)

(assert (=> b!4708594 (= res!1989594 (allKeysSameHash!1763 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708595 () Bool)

(declare-fun res!1989598 () Bool)

(assert (=> b!4708595 (=> (not res!1989598) (not e!2936965))))

(declare-datatypes ((tuple2!54144 0))(
  ( (tuple2!54145 (_1!30366 (_ BitVec 64)) (_2!30366 List!52755)) )
))
(declare-datatypes ((List!52756 0))(
  ( (Nil!52632) (Cons!52632 (h!58933 tuple2!54144) (t!359988 List!52756)) )
))
(declare-datatypes ((ListLongMap!4293 0))(
  ( (ListLongMap!4294 (toList!5763 List!52756)) )
))
(declare-fun lm!2023 () ListLongMap!4293)

(declare-fun key!4653 () K!13993)

(declare-datatypes ((ListMap!5127 0))(
  ( (ListMap!5128 (toList!5764 List!52755)) )
))
(declare-fun contains!15945 (ListMap!5127 K!13993) Bool)

(declare-fun extractMap!1963 (List!52756) ListMap!5127)

(assert (=> b!4708595 (= res!1989598 (contains!15945 (extractMap!1963 (toList!5763 lm!2023)) key!4653))))

(declare-fun b!4708596 () Bool)

(declare-fun res!1989599 () Bool)

(assert (=> b!4708596 (=> (not res!1989599) (not e!2936965))))

(declare-fun newBucket!218 () List!52755)

(assert (=> b!4708596 (= res!1989599 (allKeysSameHash!1763 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1989597 () Bool)

(assert (=> start!478310 (=> (not res!1989597) (not e!2936965))))

(declare-fun lambda!212114 () Int)

(declare-fun forall!11460 (List!52756 Int) Bool)

(assert (=> start!478310 (= res!1989597 (forall!11460 (toList!5763 lm!2023) lambda!212114))))

(assert (=> start!478310 e!2936965))

(declare-fun e!2936963 () Bool)

(declare-fun inv!67868 (ListLongMap!4293) Bool)

(assert (=> start!478310 (and (inv!67868 lm!2023) e!2936963)))

(declare-fun tp_is_empty!31041 () Bool)

(assert (=> start!478310 tp_is_empty!31041))

(declare-fun e!2936966 () Bool)

(assert (=> start!478310 e!2936966))

(assert (=> start!478310 true))

(declare-fun e!2936964 () Bool)

(assert (=> start!478310 e!2936964))

(declare-fun tp!1347222 () Bool)

(declare-fun b!4708597 () Bool)

(declare-fun tp_is_empty!31043 () Bool)

(assert (=> b!4708597 (= e!2936964 (and tp_is_empty!31041 tp_is_empty!31043 tp!1347222))))

(declare-fun b!4708598 () Bool)

(declare-fun tp!1347224 () Bool)

(assert (=> b!4708598 (= e!2936963 tp!1347224)))

(declare-fun b!4708599 () Bool)

(declare-fun res!1989596 () Bool)

(assert (=> b!4708599 (=> (not res!1989596) (not e!2936965))))

(declare-fun noDuplicateKeys!1937 (List!52755) Bool)

(assert (=> b!4708599 (= res!1989596 (noDuplicateKeys!1937 newBucket!218))))

(declare-fun b!4708600 () Bool)

(declare-fun res!1989592 () Bool)

(assert (=> b!4708600 (=> (not res!1989592) (not e!2936965))))

(declare-fun hash!4253 (Hashable!6306 K!13993) (_ BitVec 64))

(assert (=> b!4708600 (= res!1989592 (= (hash!4253 hashF!1323 key!4653) hash!405))))

(declare-fun b!4708601 () Bool)

(declare-fun res!1989593 () Bool)

(assert (=> b!4708601 (=> (not res!1989593) (not e!2936965))))

(declare-fun removePairForKey!1532 (List!52755 K!13993) List!52755)

(assert (=> b!4708601 (= res!1989593 (= (removePairForKey!1532 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708602 () Bool)

(assert (=> b!4708602 (= e!2936965 false)))

(declare-fun lt!1873323 () Bool)

(declare-fun allKeysSameHashInMap!1851 (ListLongMap!4293 Hashable!6306) Bool)

(assert (=> b!4708602 (= lt!1873323 (allKeysSameHashInMap!1851 lm!2023 hashF!1323))))

(declare-fun b!4708603 () Bool)

(declare-fun res!1989595 () Bool)

(assert (=> b!4708603 (=> (not res!1989595) (not e!2936965))))

(assert (=> b!4708603 (= res!1989595 (noDuplicateKeys!1937 oldBucket!34))))

(declare-fun tp!1347223 () Bool)

(declare-fun b!4708604 () Bool)

(assert (=> b!4708604 (= e!2936966 (and tp_is_empty!31041 tp_is_empty!31043 tp!1347223))))

(assert (= (and start!478310 res!1989597) b!4708603))

(assert (= (and b!4708603 res!1989595) b!4708599))

(assert (= (and b!4708599 res!1989596) b!4708601))

(assert (= (and b!4708601 res!1989593) b!4708594))

(assert (= (and b!4708594 res!1989594) b!4708595))

(assert (= (and b!4708595 res!1989598) b!4708600))

(assert (= (and b!4708600 res!1989592) b!4708596))

(assert (= (and b!4708596 res!1989599) b!4708602))

(assert (= start!478310 b!4708598))

(assert (= (and start!478310 (is-Cons!52631 oldBucket!34)) b!4708604))

(assert (= (and start!478310 (is-Cons!52631 newBucket!218)) b!4708597))

(declare-fun m!5632997 () Bool)

(assert (=> b!4708602 m!5632997))

(declare-fun m!5632999 () Bool)

(assert (=> b!4708594 m!5632999))

(declare-fun m!5633001 () Bool)

(assert (=> start!478310 m!5633001))

(declare-fun m!5633003 () Bool)

(assert (=> start!478310 m!5633003))

(declare-fun m!5633005 () Bool)

(assert (=> b!4708596 m!5633005))

(declare-fun m!5633007 () Bool)

(assert (=> b!4708595 m!5633007))

(assert (=> b!4708595 m!5633007))

(declare-fun m!5633009 () Bool)

(assert (=> b!4708595 m!5633009))

(declare-fun m!5633011 () Bool)

(assert (=> b!4708599 m!5633011))

(declare-fun m!5633013 () Bool)

(assert (=> b!4708600 m!5633013))

(declare-fun m!5633015 () Bool)

(assert (=> b!4708601 m!5633015))

(declare-fun m!5633017 () Bool)

(assert (=> b!4708603 m!5633017))

(push 1)

(assert (not b!4708599))

(assert (not b!4708598))

(assert (not b!4708594))

(assert tp_is_empty!31041)

(assert (not b!4708595))

(assert (not b!4708603))

(assert (not start!478310))

(assert (not b!4708601))

(assert tp_is_empty!31043)

(assert (not b!4708604))

(assert (not b!4708602))

(assert (not b!4708597))

(assert (not b!4708596))

(assert (not b!4708600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

