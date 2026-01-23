; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471094 () Bool)

(assert start!471094)

(declare-fun b!4670695 () Bool)

(declare-fun res!1966166 () Bool)

(declare-fun e!2914690 () Bool)

(assert (=> b!4670695 (=> res!1966166 e!2914690)))

(declare-datatypes ((K!13383 0))(
  ( (K!13384 (val!18977 Int)) )
))
(declare-datatypes ((V!13629 0))(
  ( (V!13630 (val!18978 Int)) )
))
(declare-datatypes ((tuple2!53210 0))(
  ( (tuple2!53211 (_1!29899 K!13383) (_2!29899 V!13629)) )
))
(declare-datatypes ((List!52158 0))(
  ( (Nil!52034) (Cons!52034 (h!58214 tuple2!53210) (t!359296 List!52158)) )
))
(declare-fun l!12991 () List!52158)

(declare-fun noDuplicateKeys!1693 (List!52158) Bool)

(assert (=> b!4670695 (= res!1966166 (not (noDuplicateKeys!1693 (t!359296 l!12991))))))

(declare-fun b!4670696 () Bool)

(declare-fun e!2914687 () Bool)

(declare-fun tp!1343808 () Bool)

(assert (=> b!4670696 (= e!2914687 tp!1343808)))

(declare-fun b!4670697 () Bool)

(declare-fun e!2914689 () Bool)

(assert (=> b!4670697 (= e!2914689 (not e!2914690))))

(declare-fun res!1966164 () Bool)

(assert (=> b!4670697 (=> res!1966164 e!2914690)))

(declare-fun key!4532 () K!13383)

(declare-fun containsKey!2837 (List!52158 K!13383) Bool)

(assert (=> b!4670697 (= res!1966164 (containsKey!2837 (t!359296 l!12991) key!4532))))

(declare-datatypes ((ListMap!4655 0))(
  ( (ListMap!4656 (toList!5305 List!52158)) )
))
(declare-fun lt!1832806 () ListMap!4655)

(declare-fun lt!1832804 () ListMap!4655)

(declare-fun +!2029 (ListMap!4655 tuple2!53210) ListMap!4655)

(assert (=> b!4670697 (= lt!1832806 (+!2029 lt!1832804 (h!58214 l!12991)))))

(declare-fun lt!1832805 () ListMap!4655)

(declare-fun -!627 (ListMap!4655 K!13383) ListMap!4655)

(assert (=> b!4670697 (= lt!1832806 (-!627 lt!1832805 key!4532))))

(declare-fun lhm!57 () ListMap!4655)

(assert (=> b!4670697 (= lt!1832804 (-!627 lhm!57 key!4532))))

(declare-datatypes ((Unit!121128 0))(
  ( (Unit!121129) )
))
(declare-fun lt!1832808 () Unit!121128)

(declare-fun addRemoveCommutativeForDiffKeys!68 (ListMap!4655 K!13383 V!13629 K!13383) Unit!121128)

(assert (=> b!4670697 (= lt!1832808 (addRemoveCommutativeForDiffKeys!68 lhm!57 (_1!29899 (h!58214 l!12991)) (_2!29899 (h!58214 l!12991)) key!4532))))

(assert (=> b!4670697 (= lt!1832805 (+!2029 lhm!57 (h!58214 l!12991)))))

(declare-fun b!4670698 () Bool)

(assert (=> b!4670698 (= e!2914690 true)))

(declare-fun addToMapMapFromBucket!1146 (List!52158 ListMap!4655) ListMap!4655)

(assert (=> b!4670698 (= (addToMapMapFromBucket!1146 (t!359296 l!12991) lt!1832806) (-!627 (addToMapMapFromBucket!1146 (t!359296 l!12991) lt!1832805) key!4532))))

(declare-fun lt!1832807 () Unit!121128)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!47 (ListMap!4655 K!13383 List!52158) Unit!121128)

(assert (=> b!4670698 (= lt!1832807 (lemmaAddToMapFromBucketMinusKeyIsCommutative!47 lt!1832805 key!4532 (t!359296 l!12991)))))

(declare-fun e!2914688 () Bool)

(declare-fun tp!1343809 () Bool)

(declare-fun tp_is_empty!30067 () Bool)

(declare-fun tp_is_empty!30065 () Bool)

(declare-fun b!4670699 () Bool)

(assert (=> b!4670699 (= e!2914688 (and tp_is_empty!30065 tp_is_empty!30067 tp!1343809))))

(declare-fun b!4670700 () Bool)

(declare-fun res!1966165 () Bool)

(assert (=> b!4670700 (=> (not res!1966165) (not e!2914689))))

(assert (=> b!4670700 (= res!1966165 (is-Cons!52034 l!12991))))

(declare-fun b!4670701 () Bool)

(declare-fun res!1966163 () Bool)

(assert (=> b!4670701 (=> (not res!1966163) (not e!2914689))))

(assert (=> b!4670701 (= res!1966163 (noDuplicateKeys!1693 l!12991))))

(declare-fun res!1966167 () Bool)

(assert (=> start!471094 (=> (not res!1966167) (not e!2914689))))

(assert (=> start!471094 (= res!1966167 (not (containsKey!2837 l!12991 key!4532)))))

(assert (=> start!471094 e!2914689))

(assert (=> start!471094 e!2914688))

(assert (=> start!471094 tp_is_empty!30065))

(declare-fun inv!67262 (ListMap!4655) Bool)

(assert (=> start!471094 (and (inv!67262 lhm!57) e!2914687)))

(assert (= (and start!471094 res!1966167) b!4670701))

(assert (= (and b!4670701 res!1966163) b!4670700))

(assert (= (and b!4670700 res!1966165) b!4670697))

(assert (= (and b!4670697 (not res!1966164)) b!4670695))

(assert (= (and b!4670695 (not res!1966166)) b!4670698))

(assert (= (and start!471094 (is-Cons!52034 l!12991)) b!4670699))

(assert (= start!471094 b!4670696))

(declare-fun m!5564007 () Bool)

(assert (=> b!4670701 m!5564007))

(declare-fun m!5564009 () Bool)

(assert (=> b!4670697 m!5564009))

(declare-fun m!5564011 () Bool)

(assert (=> b!4670697 m!5564011))

(declare-fun m!5564013 () Bool)

(assert (=> b!4670697 m!5564013))

(declare-fun m!5564015 () Bool)

(assert (=> b!4670697 m!5564015))

(declare-fun m!5564017 () Bool)

(assert (=> b!4670697 m!5564017))

(declare-fun m!5564019 () Bool)

(assert (=> b!4670697 m!5564019))

(declare-fun m!5564021 () Bool)

(assert (=> b!4670698 m!5564021))

(declare-fun m!5564023 () Bool)

(assert (=> b!4670698 m!5564023))

(assert (=> b!4670698 m!5564023))

(declare-fun m!5564025 () Bool)

(assert (=> b!4670698 m!5564025))

(declare-fun m!5564027 () Bool)

(assert (=> b!4670698 m!5564027))

(declare-fun m!5564029 () Bool)

(assert (=> b!4670695 m!5564029))

(declare-fun m!5564031 () Bool)

(assert (=> start!471094 m!5564031))

(declare-fun m!5564033 () Bool)

(assert (=> start!471094 m!5564033))

(push 1)

(assert (not b!4670696))

(assert (not b!4670697))

(assert (not start!471094))

(assert (not b!4670695))

(assert tp_is_empty!30067)

(assert tp_is_empty!30065)

(assert (not b!4670701))

(assert (not b!4670698))

(assert (not b!4670699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

