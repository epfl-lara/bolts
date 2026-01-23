; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461214 () Bool)

(assert start!461214)

(declare-fun b!4611057 () Bool)

(declare-fun res!1930597 () Bool)

(declare-fun e!2876345 () Bool)

(assert (=> b!4611057 (=> (not res!1930597) (not e!2876345))))

(declare-datatypes ((K!12608 0))(
  ( (K!12609 (val!18357 Int)) )
))
(declare-datatypes ((V!12854 0))(
  ( (V!12855 (val!18358 Int)) )
))
(declare-datatypes ((tuple2!51978 0))(
  ( (tuple2!51979 (_1!29283 K!12608) (_2!29283 V!12854)) )
))
(declare-datatypes ((List!51361 0))(
  ( (Nil!51237) (Cons!51237 (h!57235 tuple2!51978) (t!358355 List!51361)) )
))
(declare-fun oldBucket!40 () List!51361)

(declare-fun key!4968 () K!12608)

(declare-fun newBucket!224 () List!51361)

(declare-fun removePairForKey!1006 (List!51361 K!12608) List!51361)

(assert (=> b!4611057 (= res!1930597 (= (removePairForKey!1006 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1341161 () Bool)

(declare-fun b!4611058 () Bool)

(declare-fun e!2876347 () Bool)

(declare-fun tp_is_empty!28825 () Bool)

(declare-fun tp_is_empty!28827 () Bool)

(assert (=> b!4611058 (= e!2876347 (and tp_is_empty!28825 tp_is_empty!28827 tp!1341161))))

(declare-fun b!4611059 () Bool)

(declare-fun res!1930594 () Bool)

(assert (=> b!4611059 (=> (not res!1930594) (not e!2876345))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((ListMap!4035 0))(
  ( (ListMap!4036 (toList!4771 List!51361)) )
))
(declare-fun contains!14245 (ListMap!4035 K!12608) Bool)

(declare-datatypes ((tuple2!51980 0))(
  ( (tuple2!51981 (_1!29284 (_ BitVec 64)) (_2!29284 List!51361)) )
))
(declare-datatypes ((List!51362 0))(
  ( (Nil!51238) (Cons!51238 (h!57236 tuple2!51980) (t!358356 List!51362)) )
))
(declare-fun extractMap!1439 (List!51362) ListMap!4035)

(assert (=> b!4611059 (= res!1930594 (contains!14245 (extractMap!1439 (Cons!51238 (tuple2!51981 hash!414 oldBucket!40) Nil!51238)) key!4968))))

(declare-fun tp!1341160 () Bool)

(declare-fun e!2876346 () Bool)

(declare-fun b!4611060 () Bool)

(assert (=> b!4611060 (= e!2876346 (and tp_is_empty!28825 tp_is_empty!28827 tp!1341160))))

(declare-fun b!4611062 () Bool)

(declare-fun res!1930595 () Bool)

(assert (=> b!4611062 (=> (not res!1930595) (not e!2876345))))

(declare-datatypes ((Hashable!5780 0))(
  ( (HashableExt!5779 (__x!31483 Int)) )
))
(declare-fun hashF!1389 () Hashable!5780)

(declare-fun allKeysSameHash!1237 (List!51361 (_ BitVec 64) Hashable!5780) Bool)

(assert (=> b!4611062 (= res!1930595 (allKeysSameHash!1237 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4611063 () Bool)

(declare-fun res!1930592 () Bool)

(assert (=> b!4611063 (=> (not res!1930592) (not e!2876345))))

(declare-fun noDuplicateKeys!1383 (List!51361) Bool)

(assert (=> b!4611063 (= res!1930592 (noDuplicateKeys!1383 newBucket!224))))

(declare-fun b!4611064 () Bool)

(declare-fun res!1930596 () Bool)

(assert (=> b!4611064 (=> (not res!1930596) (not e!2876345))))

(assert (=> b!4611064 (= res!1930596 (allKeysSameHash!1237 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4611065 () Bool)

(declare-fun res!1930591 () Bool)

(assert (=> b!4611065 (=> (not res!1930591) (not e!2876345))))

(declare-fun hash!3324 (Hashable!5780 K!12608) (_ BitVec 64))

(assert (=> b!4611065 (= res!1930591 (= (hash!3324 hashF!1389 key!4968) hash!414))))

(declare-fun res!1930593 () Bool)

(assert (=> start!461214 (=> (not res!1930593) (not e!2876345))))

(assert (=> start!461214 (= res!1930593 (noDuplicateKeys!1383 oldBucket!40))))

(assert (=> start!461214 e!2876345))

(assert (=> start!461214 true))

(assert (=> start!461214 e!2876347))

(assert (=> start!461214 tp_is_empty!28825))

(assert (=> start!461214 e!2876346))

(declare-fun b!4611061 () Bool)

(assert (=> b!4611061 (= e!2876345 (not true))))

(assert (=> b!4611061 true))

(assert (= (and start!461214 res!1930593) b!4611063))

(assert (= (and b!4611063 res!1930592) b!4611057))

(assert (= (and b!4611057 res!1930597) b!4611064))

(assert (= (and b!4611064 res!1930596) b!4611059))

(assert (= (and b!4611059 res!1930594) b!4611065))

(assert (= (and b!4611065 res!1930591) b!4611062))

(assert (= (and b!4611062 res!1930595) b!4611061))

(assert (= (and start!461214 (is-Cons!51237 oldBucket!40)) b!4611058))

(assert (= (and start!461214 (is-Cons!51237 newBucket!224)) b!4611060))

(declare-fun m!5442603 () Bool)

(assert (=> b!4611057 m!5442603))

(declare-fun m!5442605 () Bool)

(assert (=> start!461214 m!5442605))

(declare-fun m!5442607 () Bool)

(assert (=> b!4611065 m!5442607))

(declare-fun m!5442609 () Bool)

(assert (=> b!4611064 m!5442609))

(declare-fun m!5442611 () Bool)

(assert (=> b!4611059 m!5442611))

(assert (=> b!4611059 m!5442611))

(declare-fun m!5442613 () Bool)

(assert (=> b!4611059 m!5442613))

(declare-fun m!5442615 () Bool)

(assert (=> b!4611062 m!5442615))

(declare-fun m!5442617 () Bool)

(assert (=> b!4611063 m!5442617))

(push 1)

(assert (not b!4611059))

(assert (not b!4611060))

(assert (not b!4611057))

(assert (not b!4611064))

(assert tp_is_empty!28825)

(assert (not b!4611063))

(assert (not b!4611058))

(assert tp_is_empty!28827)

(assert (not b!4611062))

(assert (not start!461214))

(assert (not b!4611065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

