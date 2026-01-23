; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471080 () Bool)

(assert start!471080)

(declare-fun b!4670539 () Bool)

(declare-fun tp_is_empty!30039 () Bool)

(declare-fun tp_is_empty!30037 () Bool)

(declare-fun tp!1343767 () Bool)

(declare-fun e!2914597 () Bool)

(assert (=> b!4670539 (= e!2914597 (and tp_is_empty!30037 tp_is_empty!30039 tp!1343767))))

(declare-fun b!4670540 () Bool)

(declare-fun e!2914596 () Bool)

(declare-fun e!2914600 () Bool)

(assert (=> b!4670540 (= e!2914596 e!2914600)))

(declare-fun res!1966051 () Bool)

(assert (=> b!4670540 (=> (not res!1966051) (not e!2914600))))

(declare-datatypes ((K!13365 0))(
  ( (K!13366 (val!18963 Int)) )
))
(declare-datatypes ((V!13611 0))(
  ( (V!13612 (val!18964 Int)) )
))
(declare-datatypes ((tuple2!53190 0))(
  ( (tuple2!53191 (_1!29889 K!13365) (_2!29889 V!13611)) )
))
(declare-datatypes ((List!52148 0))(
  ( (Nil!52024) (Cons!52024 (h!58204 tuple2!53190) (t!359286 List!52148)) )
))
(declare-datatypes ((ListMap!4641 0))(
  ( (ListMap!4642 (toList!5298 List!52148)) )
))
(declare-fun lt!1832757 () ListMap!4641)

(declare-fun key!4968 () K!13365)

(declare-fun contains!15235 (ListMap!4641 K!13365) Bool)

(assert (=> b!4670540 (= res!1966051 (contains!15235 lt!1832757 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!52148)

(declare-datatypes ((tuple2!53192 0))(
  ( (tuple2!53193 (_1!29890 (_ BitVec 64)) (_2!29890 List!52148)) )
))
(declare-datatypes ((List!52149 0))(
  ( (Nil!52025) (Cons!52025 (h!58205 tuple2!53192) (t!359287 List!52149)) )
))
(declare-fun extractMap!1742 (List!52149) ListMap!4641)

(assert (=> b!4670540 (= lt!1832757 (extractMap!1742 (Cons!52025 (tuple2!53193 hash!414 oldBucket!40) Nil!52025)))))

(declare-fun b!4670541 () Bool)

(declare-fun e!2914599 () Bool)

(declare-fun tp!1343766 () Bool)

(assert (=> b!4670541 (= e!2914599 (and tp_is_empty!30037 tp_is_empty!30039 tp!1343766))))

(declare-fun b!4670542 () Bool)

(declare-fun res!1966054 () Bool)

(assert (=> b!4670542 (=> (not res!1966054) (not e!2914596))))

(declare-fun newBucket!224 () List!52148)

(declare-fun noDuplicateKeys!1686 (List!52148) Bool)

(assert (=> b!4670542 (= res!1966054 (noDuplicateKeys!1686 newBucket!224))))

(declare-fun b!4670543 () Bool)

(declare-fun res!1966049 () Bool)

(assert (=> b!4670543 (=> (not res!1966049) (not e!2914596))))

(declare-datatypes ((Hashable!6083 0))(
  ( (HashableExt!6082 (__x!31786 Int)) )
))
(declare-fun hashF!1389 () Hashable!6083)

(declare-fun allKeysSameHash!1540 (List!52148 (_ BitVec 64) Hashable!6083) Bool)

(assert (=> b!4670543 (= res!1966049 (allKeysSameHash!1540 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4670544 () Bool)

(declare-fun res!1966052 () Bool)

(assert (=> b!4670544 (=> (not res!1966052) (not e!2914600))))

(declare-fun hash!3863 (Hashable!6083 K!13365) (_ BitVec 64))

(assert (=> b!4670544 (= res!1966052 (= (hash!3863 hashF!1389 key!4968) hash!414))))

(declare-fun res!1966056 () Bool)

(assert (=> start!471080 (=> (not res!1966056) (not e!2914596))))

(assert (=> start!471080 (= res!1966056 (noDuplicateKeys!1686 oldBucket!40))))

(assert (=> start!471080 e!2914596))

(assert (=> start!471080 true))

(assert (=> start!471080 e!2914597))

(assert (=> start!471080 tp_is_empty!30037))

(assert (=> start!471080 e!2914599))

(declare-fun b!4670545 () Bool)

(get-info :version)

(assert (=> b!4670545 (= e!2914600 (not (or (and ((_ is Cons!52024) oldBucket!40) (= (_1!29889 (h!58204 oldBucket!40)) key!4968)) (and ((_ is Cons!52024) oldBucket!40) (not (= (_1!29889 (h!58204 oldBucket!40)) key!4968))) ((_ is Nil!52024) oldBucket!40))))))

(declare-fun e!2914598 () Bool)

(assert (=> b!4670545 e!2914598))

(declare-fun res!1966050 () Bool)

(assert (=> b!4670545 (=> (not res!1966050) (not e!2914598))))

(declare-fun lt!1832756 () ListMap!4641)

(declare-fun addToMapMapFromBucket!1143 (List!52148 ListMap!4641) ListMap!4641)

(assert (=> b!4670545 (= res!1966050 (= lt!1832757 (addToMapMapFromBucket!1143 oldBucket!40 lt!1832756)))))

(assert (=> b!4670545 (= lt!1832756 (extractMap!1742 Nil!52025))))

(assert (=> b!4670545 true))

(declare-fun b!4670546 () Bool)

(declare-fun res!1966053 () Bool)

(assert (=> b!4670546 (=> (not res!1966053) (not e!2914600))))

(assert (=> b!4670546 (= res!1966053 (allKeysSameHash!1540 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4670547 () Bool)

(assert (=> b!4670547 (= e!2914598 (= lt!1832756 (ListMap!4642 Nil!52024)))))

(declare-fun b!4670548 () Bool)

(declare-fun res!1966055 () Bool)

(assert (=> b!4670548 (=> (not res!1966055) (not e!2914596))))

(declare-fun removePairForKey!1309 (List!52148 K!13365) List!52148)

(assert (=> b!4670548 (= res!1966055 (= (removePairForKey!1309 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!471080 res!1966056) b!4670542))

(assert (= (and b!4670542 res!1966054) b!4670548))

(assert (= (and b!4670548 res!1966055) b!4670543))

(assert (= (and b!4670543 res!1966049) b!4670540))

(assert (= (and b!4670540 res!1966051) b!4670544))

(assert (= (and b!4670544 res!1966052) b!4670546))

(assert (= (and b!4670546 res!1966053) b!4670545))

(assert (= (and b!4670545 res!1966050) b!4670547))

(assert (= (and start!471080 ((_ is Cons!52024) oldBucket!40)) b!4670539))

(assert (= (and start!471080 ((_ is Cons!52024) newBucket!224)) b!4670541))

(declare-fun m!5563879 () Bool)

(assert (=> b!4670545 m!5563879))

(declare-fun m!5563881 () Bool)

(assert (=> b!4670545 m!5563881))

(declare-fun m!5563883 () Bool)

(assert (=> b!4670546 m!5563883))

(declare-fun m!5563885 () Bool)

(assert (=> b!4670543 m!5563885))

(declare-fun m!5563887 () Bool)

(assert (=> b!4670544 m!5563887))

(declare-fun m!5563889 () Bool)

(assert (=> b!4670540 m!5563889))

(declare-fun m!5563891 () Bool)

(assert (=> b!4670540 m!5563891))

(declare-fun m!5563893 () Bool)

(assert (=> b!4670548 m!5563893))

(declare-fun m!5563895 () Bool)

(assert (=> start!471080 m!5563895))

(declare-fun m!5563897 () Bool)

(assert (=> b!4670542 m!5563897))

(check-sat (not b!4670541) (not b!4670548) tp_is_empty!30039 (not b!4670545) (not b!4670543) (not b!4670544) (not b!4670539) (not b!4670540) (not start!471080) (not b!4670546) tp_is_empty!30037 (not b!4670542))
(check-sat)
