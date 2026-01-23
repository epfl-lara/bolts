; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461348 () Bool)

(assert start!461348)

(declare-fun b!4612564 () Bool)

(declare-fun res!1931692 () Bool)

(declare-fun e!2877175 () Bool)

(assert (=> b!4612564 (=> (not res!1931692) (not e!2877175))))

(declare-datatypes ((K!12685 0))(
  ( (K!12686 (val!18419 Int)) )
))
(declare-datatypes ((V!12931 0))(
  ( (V!12932 (val!18420 Int)) )
))
(declare-datatypes ((tuple2!52102 0))(
  ( (tuple2!52103 (_1!29345 K!12685) (_2!29345 V!12931)) )
))
(declare-datatypes ((List!51427 0))(
  ( (Nil!51303) (Cons!51303 (h!57305 tuple2!52102) (t!358421 List!51427)) )
))
(declare-fun newBucket!224 () List!51427)

(declare-fun noDuplicateKeys!1414 (List!51427) Bool)

(assert (=> b!4612564 (= res!1931692 (noDuplicateKeys!1414 newBucket!224))))

(declare-fun res!1931689 () Bool)

(assert (=> start!461348 (=> (not res!1931689) (not e!2877175))))

(declare-fun oldBucket!40 () List!51427)

(assert (=> start!461348 (= res!1931689 (noDuplicateKeys!1414 oldBucket!40))))

(assert (=> start!461348 e!2877175))

(assert (=> start!461348 true))

(declare-fun e!2877171 () Bool)

(assert (=> start!461348 e!2877171))

(declare-fun tp_is_empty!28949 () Bool)

(assert (=> start!461348 tp_is_empty!28949))

(declare-fun e!2877174 () Bool)

(assert (=> start!461348 e!2877174))

(declare-fun b!4612565 () Bool)

(declare-fun res!1931695 () Bool)

(declare-fun e!2877169 () Bool)

(assert (=> b!4612565 (=> (not res!1931695) (not e!2877169))))

(declare-datatypes ((Hashable!5811 0))(
  ( (HashableExt!5810 (__x!31514 Int)) )
))
(declare-fun hashF!1389 () Hashable!5811)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun key!4968 () K!12685)

(declare-fun hash!3357 (Hashable!5811 K!12685) (_ BitVec 64))

(assert (=> b!4612565 (= res!1931695 (= (hash!3357 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612566 () Bool)

(declare-fun e!2877170 () Bool)

(assert (=> b!4612566 (= e!2877169 (not e!2877170))))

(declare-fun res!1931700 () Bool)

(assert (=> b!4612566 (=> res!1931700 e!2877170)))

(get-info :version)

(assert (=> b!4612566 (= res!1931700 (or (not ((_ is Cons!51303) oldBucket!40)) (not (= (_1!29345 (h!57305 oldBucket!40)) key!4968))))))

(declare-fun e!2877176 () Bool)

(assert (=> b!4612566 e!2877176))

(declare-fun res!1931690 () Bool)

(assert (=> b!4612566 (=> (not res!1931690) (not e!2877176))))

(declare-datatypes ((ListMap!4097 0))(
  ( (ListMap!4098 (toList!4802 List!51427)) )
))
(declare-fun lt!1767876 () ListMap!4097)

(declare-fun lt!1767881 () ListMap!4097)

(declare-fun addToMapMapFromBucket!875 (List!51427 ListMap!4097) ListMap!4097)

(assert (=> b!4612566 (= res!1931690 (= lt!1767881 (addToMapMapFromBucket!875 oldBucket!40 lt!1767876)))))

(declare-datatypes ((tuple2!52104 0))(
  ( (tuple2!52105 (_1!29346 (_ BitVec 64)) (_2!29346 List!51427)) )
))
(declare-datatypes ((List!51428 0))(
  ( (Nil!51304) (Cons!51304 (h!57306 tuple2!52104) (t!358422 List!51428)) )
))
(declare-fun extractMap!1470 (List!51428) ListMap!4097)

(assert (=> b!4612566 (= lt!1767876 (extractMap!1470 Nil!51304))))

(assert (=> b!4612566 true))

(declare-fun b!4612567 () Bool)

(declare-fun e!2877173 () Bool)

(declare-fun e!2877172 () Bool)

(assert (=> b!4612567 (= e!2877173 e!2877172)))

(declare-fun res!1931699 () Bool)

(assert (=> b!4612567 (=> res!1931699 e!2877172)))

(declare-fun lt!1767880 () ListMap!4097)

(assert (=> b!4612567 (= res!1931699 (not (= lt!1767880 (addToMapMapFromBucket!875 newBucket!224 (ListMap!4098 Nil!51303)))))))

(declare-fun lt!1767878 () List!51427)

(assert (=> b!4612567 (= lt!1767880 (addToMapMapFromBucket!875 lt!1767878 (ListMap!4098 Nil!51303)))))

(declare-fun b!4612568 () Bool)

(declare-fun res!1931688 () Bool)

(assert (=> b!4612568 (=> (not res!1931688) (not e!2877175))))

(declare-fun allKeysSameHash!1268 (List!51427 (_ BitVec 64) Hashable!5811) Bool)

(assert (=> b!4612568 (= res!1931688 (allKeysSameHash!1268 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1341363 () Bool)

(declare-fun tp_is_empty!28951 () Bool)

(declare-fun b!4612569 () Bool)

(assert (=> b!4612569 (= e!2877171 (and tp_is_empty!28949 tp_is_empty!28951 tp!1341363))))

(declare-fun b!4612570 () Bool)

(declare-fun tp!1341362 () Bool)

(assert (=> b!4612570 (= e!2877174 (and tp_is_empty!28949 tp_is_empty!28951 tp!1341362))))

(declare-fun b!4612571 () Bool)

(declare-fun res!1931694 () Bool)

(assert (=> b!4612571 (=> (not res!1931694) (not e!2877175))))

(declare-fun removePairForKey!1037 (List!51427 K!12685) List!51427)

(assert (=> b!4612571 (= res!1931694 (= (removePairForKey!1037 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4612572 () Bool)

(declare-fun res!1931696 () Bool)

(assert (=> b!4612572 (=> (not res!1931696) (not e!2877169))))

(assert (=> b!4612572 (= res!1931696 (allKeysSameHash!1268 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4612573 () Bool)

(assert (=> b!4612573 (= e!2877175 e!2877169)))

(declare-fun res!1931698 () Bool)

(assert (=> b!4612573 (=> (not res!1931698) (not e!2877169))))

(declare-fun contains!14280 (ListMap!4097 K!12685) Bool)

(assert (=> b!4612573 (= res!1931698 (contains!14280 lt!1767881 key!4968))))

(assert (=> b!4612573 (= lt!1767881 (extractMap!1470 (Cons!51304 (tuple2!52105 hash!414 oldBucket!40) Nil!51304)))))

(declare-fun b!4612574 () Bool)

(assert (=> b!4612574 (= e!2877170 e!2877173)))

(declare-fun res!1931691 () Bool)

(assert (=> b!4612574 (=> res!1931691 e!2877173)))

(assert (=> b!4612574 (= res!1931691 (not (= lt!1767878 newBucket!224)))))

(declare-fun tail!8061 (List!51427) List!51427)

(assert (=> b!4612574 (= lt!1767878 (tail!8061 oldBucket!40))))

(declare-fun b!4612575 () Bool)

(declare-fun e!2877168 () Bool)

(assert (=> b!4612575 (= e!2877172 e!2877168)))

(declare-fun res!1931693 () Bool)

(assert (=> b!4612575 (=> res!1931693 e!2877168)))

(declare-fun eq!757 (ListMap!4097 ListMap!4097) Bool)

(declare-fun +!1799 (ListMap!4097 tuple2!52102) ListMap!4097)

(assert (=> b!4612575 (= res!1931693 (not (eq!757 (+!1799 lt!1767880 (h!57305 oldBucket!40)) (addToMapMapFromBucket!875 oldBucket!40 (ListMap!4098 Nil!51303)))))))

(declare-fun lt!1767877 () tuple2!52102)

(assert (=> b!4612575 (eq!757 (addToMapMapFromBucket!875 (Cons!51303 lt!1767877 lt!1767878) (ListMap!4098 Nil!51303)) (+!1799 lt!1767880 lt!1767877))))

(declare-datatypes ((Unit!109484 0))(
  ( (Unit!109485) )
))
(declare-fun lt!1767879 () Unit!109484)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!8 (tuple2!52102 List!51427 ListMap!4097) Unit!109484)

(assert (=> b!4612575 (= lt!1767879 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!8 lt!1767877 lt!1767878 (ListMap!4098 Nil!51303)))))

(declare-fun head!9574 (List!51427) tuple2!52102)

(assert (=> b!4612575 (= lt!1767877 (head!9574 oldBucket!40))))

(declare-fun b!4612576 () Bool)

(assert (=> b!4612576 (= e!2877168 (not (= oldBucket!40 Nil!51303)))))

(declare-fun b!4612577 () Bool)

(declare-fun res!1931697 () Bool)

(assert (=> b!4612577 (=> res!1931697 e!2877173)))

(assert (=> b!4612577 (= res!1931697 (not (= (extractMap!1470 (Cons!51304 (tuple2!52105 hash!414 lt!1767878) Nil!51304)) (extractMap!1470 (Cons!51304 (tuple2!52105 hash!414 newBucket!224) Nil!51304)))))))

(declare-fun b!4612578 () Bool)

(assert (=> b!4612578 (= e!2877176 (= lt!1767876 (ListMap!4098 Nil!51303)))))

(assert (= (and start!461348 res!1931689) b!4612564))

(assert (= (and b!4612564 res!1931692) b!4612571))

(assert (= (and b!4612571 res!1931694) b!4612568))

(assert (= (and b!4612568 res!1931688) b!4612573))

(assert (= (and b!4612573 res!1931698) b!4612565))

(assert (= (and b!4612565 res!1931695) b!4612572))

(assert (= (and b!4612572 res!1931696) b!4612566))

(assert (= (and b!4612566 res!1931690) b!4612578))

(assert (= (and b!4612566 (not res!1931700)) b!4612574))

(assert (= (and b!4612574 (not res!1931691)) b!4612577))

(assert (= (and b!4612577 (not res!1931697)) b!4612567))

(assert (= (and b!4612567 (not res!1931699)) b!4612575))

(assert (= (and b!4612575 (not res!1931693)) b!4612576))

(assert (= (and start!461348 ((_ is Cons!51303) oldBucket!40)) b!4612569))

(assert (= (and start!461348 ((_ is Cons!51303) newBucket!224)) b!4612570))

(declare-fun m!5443851 () Bool)

(assert (=> b!4612565 m!5443851))

(declare-fun m!5443853 () Bool)

(assert (=> b!4612574 m!5443853))

(declare-fun m!5443855 () Bool)

(assert (=> b!4612567 m!5443855))

(declare-fun m!5443857 () Bool)

(assert (=> b!4612567 m!5443857))

(declare-fun m!5443859 () Bool)

(assert (=> b!4612573 m!5443859))

(declare-fun m!5443861 () Bool)

(assert (=> b!4612573 m!5443861))

(declare-fun m!5443863 () Bool)

(assert (=> b!4612575 m!5443863))

(declare-fun m!5443865 () Bool)

(assert (=> b!4612575 m!5443865))

(declare-fun m!5443867 () Bool)

(assert (=> b!4612575 m!5443867))

(assert (=> b!4612575 m!5443865))

(declare-fun m!5443869 () Bool)

(assert (=> b!4612575 m!5443869))

(declare-fun m!5443871 () Bool)

(assert (=> b!4612575 m!5443871))

(declare-fun m!5443873 () Bool)

(assert (=> b!4612575 m!5443873))

(assert (=> b!4612575 m!5443863))

(assert (=> b!4612575 m!5443869))

(assert (=> b!4612575 m!5443873))

(declare-fun m!5443875 () Bool)

(assert (=> b!4612575 m!5443875))

(declare-fun m!5443877 () Bool)

(assert (=> b!4612575 m!5443877))

(declare-fun m!5443879 () Bool)

(assert (=> b!4612568 m!5443879))

(declare-fun m!5443881 () Bool)

(assert (=> b!4612577 m!5443881))

(declare-fun m!5443883 () Bool)

(assert (=> b!4612577 m!5443883))

(declare-fun m!5443885 () Bool)

(assert (=> start!461348 m!5443885))

(declare-fun m!5443887 () Bool)

(assert (=> b!4612564 m!5443887))

(declare-fun m!5443889 () Bool)

(assert (=> b!4612571 m!5443889))

(declare-fun m!5443891 () Bool)

(assert (=> b!4612572 m!5443891))

(declare-fun m!5443893 () Bool)

(assert (=> b!4612566 m!5443893))

(declare-fun m!5443895 () Bool)

(assert (=> b!4612566 m!5443895))

(check-sat tp_is_empty!28951 (not b!4612572) tp_is_empty!28949 (not b!4612566) (not b!4612571) (not b!4612569) (not b!4612577) (not b!4612574) (not start!461348) (not b!4612565) (not b!4612570) (not b!4612567) (not b!4612568) (not b!4612564) (not b!4612575) (not b!4612573))
(check-sat)
