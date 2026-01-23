; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471108 () Bool)

(assert start!471108)

(declare-fun e!2914750 () Bool)

(declare-fun tp_is_empty!30093 () Bool)

(declare-fun tp_is_empty!30095 () Bool)

(declare-fun b!4670790 () Bool)

(declare-fun tp!1343845 () Bool)

(assert (=> b!4670790 (= e!2914750 (and tp_is_empty!30093 tp_is_empty!30095 tp!1343845))))

(declare-fun b!4670791 () Bool)

(declare-fun res!1966224 () Bool)

(declare-fun e!2914749 () Bool)

(assert (=> b!4670791 (=> (not res!1966224) (not e!2914749))))

(declare-datatypes ((K!13400 0))(
  ( (K!13401 (val!18991 Int)) )
))
(declare-datatypes ((V!13646 0))(
  ( (V!13647 (val!18992 Int)) )
))
(declare-datatypes ((tuple2!53224 0))(
  ( (tuple2!53225 (_1!29906 K!13400) (_2!29906 V!13646)) )
))
(declare-datatypes ((List!52165 0))(
  ( (Nil!52041) (Cons!52041 (h!58221 tuple2!53224) (t!359303 List!52165)) )
))
(declare-fun l!12991 () List!52165)

(get-info :version)

(assert (=> b!4670791 (= res!1966224 (not ((_ is Cons!52041) l!12991)))))

(declare-fun res!1966222 () Bool)

(assert (=> start!471108 (=> (not res!1966222) (not e!2914749))))

(declare-fun key!4532 () K!13400)

(declare-fun containsKey!2844 (List!52165 K!13400) Bool)

(assert (=> start!471108 (= res!1966222 (not (containsKey!2844 l!12991 key!4532)))))

(assert (=> start!471108 e!2914749))

(assert (=> start!471108 e!2914750))

(assert (=> start!471108 tp_is_empty!30093))

(declare-datatypes ((ListMap!4665 0))(
  ( (ListMap!4666 (toList!5310 List!52165)) )
))
(declare-fun lhm!57 () ListMap!4665)

(declare-fun e!2914748 () Bool)

(declare-fun inv!67276 (ListMap!4665) Bool)

(assert (=> start!471108 (and (inv!67276 lhm!57) e!2914748)))

(declare-fun b!4670792 () Bool)

(assert (=> b!4670792 (= e!2914749 false)))

(declare-fun lt!1832857 () ListMap!4665)

(declare-fun lt!1832858 () ListMap!4665)

(declare-fun -!632 (ListMap!4665 K!13400) ListMap!4665)

(assert (=> b!4670792 (= lt!1832857 (-!632 lt!1832858 key!4532))))

(declare-fun lt!1832859 () ListMap!4665)

(declare-fun lt!1832856 () ListMap!4665)

(declare-fun addToMapMapFromBucket!1149 (List!52165 ListMap!4665) ListMap!4665)

(assert (=> b!4670792 (= lt!1832859 (addToMapMapFromBucket!1149 l!12991 lt!1832856))))

(assert (=> b!4670792 (= lt!1832858 (addToMapMapFromBucket!1149 l!12991 lhm!57))))

(assert (=> b!4670792 (= lt!1832856 (-!632 lhm!57 key!4532))))

(declare-fun b!4670793 () Bool)

(declare-fun tp!1343844 () Bool)

(assert (=> b!4670793 (= e!2914748 tp!1343844)))

(declare-fun b!4670794 () Bool)

(declare-fun res!1966223 () Bool)

(assert (=> b!4670794 (=> (not res!1966223) (not e!2914749))))

(declare-fun noDuplicateKeys!1700 (List!52165) Bool)

(assert (=> b!4670794 (= res!1966223 (noDuplicateKeys!1700 l!12991))))

(assert (= (and start!471108 res!1966222) b!4670794))

(assert (= (and b!4670794 res!1966223) b!4670791))

(assert (= (and b!4670791 res!1966224) b!4670792))

(assert (= (and start!471108 ((_ is Cons!52041) l!12991)) b!4670790))

(assert (= start!471108 b!4670793))

(declare-fun m!5564101 () Bool)

(assert (=> start!471108 m!5564101))

(declare-fun m!5564103 () Bool)

(assert (=> start!471108 m!5564103))

(declare-fun m!5564105 () Bool)

(assert (=> b!4670792 m!5564105))

(declare-fun m!5564107 () Bool)

(assert (=> b!4670792 m!5564107))

(declare-fun m!5564109 () Bool)

(assert (=> b!4670792 m!5564109))

(declare-fun m!5564111 () Bool)

(assert (=> b!4670792 m!5564111))

(declare-fun m!5564113 () Bool)

(assert (=> b!4670794 m!5564113))

(check-sat (not b!4670794) (not b!4670792) (not b!4670790) tp_is_empty!30095 (not start!471108) tp_is_empty!30093 (not b!4670793))
(check-sat)
