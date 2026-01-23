; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413196 () Bool)

(assert start!413196)

(declare-fun b!4302762 () Bool)

(declare-fun b_free!128219 () Bool)

(declare-fun b_next!128923 () Bool)

(assert (=> b!4302762 (= b_free!128219 (not b_next!128923))))

(declare-fun tp!1322184 () Bool)

(declare-fun b_and!339605 () Bool)

(assert (=> b!4302762 (= tp!1322184 b_and!339605)))

(declare-fun b!4302761 () Bool)

(declare-fun b_free!128221 () Bool)

(declare-fun b_next!128925 () Bool)

(assert (=> b!4302761 (= b_free!128221 (not b_next!128925))))

(declare-fun tp!1322183 () Bool)

(declare-fun b_and!339607 () Bool)

(assert (=> b!4302761 (= tp!1322183 b_and!339607)))

(declare-fun b!4302748 () Bool)

(declare-fun e!2674934 () Bool)

(declare-fun tp!1322188 () Bool)

(declare-fun mapRes!20470 () Bool)

(assert (=> b!4302748 (= e!2674934 (and tp!1322188 mapRes!20470))))

(declare-fun condMapEmpty!20470 () Bool)

(declare-datatypes ((V!9361 0))(
  ( (V!9362 (val!15585 Int)) )
))
(declare-datatypes ((K!9159 0))(
  ( (K!9160 (val!15586 Int)) )
))
(declare-datatypes ((tuple2!46106 0))(
  ( (tuple2!46107 (_1!26332 K!9159) (_2!26332 V!9361)) )
))
(declare-datatypes ((List!48139 0))(
  ( (Nil!48015) (Cons!48015 (h!53436 tuple2!46106) (t!354910 List!48139)) )
))
(declare-datatypes ((array!16384 0))(
  ( (array!16385 (arr!7315 (Array (_ BitVec 32) (_ BitVec 64))) (size!35354 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4481 0))(
  ( (HashableExt!4480 (__x!29720 Int)) )
))
(declare-datatypes ((array!16386 0))(
  ( (array!16387 (arr!7316 (Array (_ BitVec 32) List!48139)) (size!35355 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9130 0))(
  ( (LongMapFixedSize!9131 (defaultEntry!4950 Int) (mask!13076 (_ BitVec 32)) (extraKeys!4814 (_ BitVec 32)) (zeroValue!4824 List!48139) (minValue!4824 List!48139) (_size!9173 (_ BitVec 32)) (_keys!4865 array!16384) (_values!4846 array!16386) (_vacant!4626 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18069 0))(
  ( (Cell!18070 (v!42018 LongMapFixedSize!9130)) )
))
(declare-datatypes ((MutLongMap!4565 0))(
  ( (LongMap!4565 (underlying!9359 Cell!18069)) (MutLongMapExt!4564 (__x!29721 Int)) )
))
(declare-datatypes ((Cell!18071 0))(
  ( (Cell!18072 (v!42019 MutLongMap!4565)) )
))
(declare-datatypes ((MutableMap!4471 0))(
  ( (MutableMapExt!4470 (__x!29722 Int)) (HashMap!4471 (underlying!9360 Cell!18071) (hashF!6519 Hashable!4481) (_size!9174 (_ BitVec 32)) (defaultValue!4642 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4471)

(declare-fun mapDefault!20470 () List!48139)

(assert (=> b!4302748 (= condMapEmpty!20470 (= (arr!7316 (_values!4846 (v!42018 (underlying!9359 (v!42019 (underlying!9360 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48139)) mapDefault!20470)))))

(declare-fun b!4302749 () Bool)

(declare-fun e!2674941 () Bool)

(declare-fun e!2674937 () Bool)

(assert (=> b!4302749 (= e!2674941 e!2674937)))

(declare-fun b!4302750 () Bool)

(declare-fun res!1763519 () Bool)

(declare-fun e!2674933 () Bool)

(assert (=> b!4302750 (=> res!1763519 e!2674933)))

(declare-datatypes ((tuple2!46108 0))(
  ( (tuple2!46109 (_1!26333 (_ BitVec 64)) (_2!26333 List!48139)) )
))
(declare-datatypes ((List!48140 0))(
  ( (Nil!48016) (Cons!48016 (h!53437 tuple2!46108) (t!354911 List!48140)) )
))
(declare-datatypes ((ListLongMap!861 0))(
  ( (ListLongMap!862 (toList!2253 List!48140)) )
))
(declare-fun lt!1524301 () ListLongMap!861)

(declare-fun lambda!132161 () Int)

(declare-fun forall!8661 (List!48140 Int) Bool)

(assert (=> b!4302750 (= res!1763519 (not (forall!8661 (toList!2253 lt!1524301) lambda!132161)))))

(declare-fun b!4302751 () Bool)

(declare-fun res!1763531 () Bool)

(declare-fun e!2674945 () Bool)

(assert (=> b!4302751 (=> (not res!1763531) (not e!2674945))))

(declare-fun lt!1524309 () List!48139)

(declare-fun key!2048 () K!9159)

(declare-fun containsKey!256 (List!48139 K!9159) Bool)

(assert (=> b!4302751 (= res!1763531 (not (containsKey!256 lt!1524309 key!2048)))))

(declare-fun b!4302752 () Bool)

(assert (=> b!4302752 (= e!2674933 true)))

(declare-fun lt!1524297 () tuple2!46108)

(declare-datatypes ((Unit!66997 0))(
  ( (Unit!66998) )
))
(declare-fun lt!1524302 () Unit!66997)

(declare-fun forallContained!1480 (List!48140 Int tuple2!46108) Unit!66997)

(assert (=> b!4302752 (= lt!1524302 (forallContained!1480 (toList!2253 lt!1524301) lambda!132161 lt!1524297))))

(declare-fun b!4302753 () Bool)

(declare-fun lt!1524299 () List!48139)

(declare-fun noDuplicateKeys!169 (List!48139) Bool)

(assert (=> b!4302753 (= e!2674945 (noDuplicateKeys!169 lt!1524299))))

(declare-fun b!4302754 () Bool)

(declare-fun res!1763518 () Bool)

(declare-fun e!2674936 () Bool)

(assert (=> b!4302754 (=> res!1763518 e!2674936)))

(declare-fun lt!1524294 () (_ BitVec 64))

(declare-fun contains!9937 (ListLongMap!861 (_ BitVec 64)) Bool)

(assert (=> b!4302754 (= res!1763518 (not (contains!9937 lt!1524301 lt!1524294)))))

(declare-fun mapIsEmpty!20470 () Bool)

(assert (=> mapIsEmpty!20470 mapRes!20470))

(declare-fun b!4302755 () Bool)

(declare-fun res!1763521 () Bool)

(assert (=> b!4302755 (=> res!1763521 e!2674936)))

(declare-fun allKeysSameHashInMap!288 (ListLongMap!861 Hashable!4481) Bool)

(assert (=> b!4302755 (= res!1763521 (not (allKeysSameHashInMap!288 lt!1524301 (hashF!6519 thiss!42308))))))

(declare-fun b!4302756 () Bool)

(declare-fun e!2674944 () Bool)

(declare-fun lt!1524306 () MutLongMap!4565)

(get-info :version)

(assert (=> b!4302756 (= e!2674944 (and e!2674941 ((_ is LongMap!4565) lt!1524306)))))

(assert (=> b!4302756 (= lt!1524306 (v!42019 (underlying!9360 thiss!42308)))))

(declare-fun b!4302757 () Bool)

(declare-fun e!2674940 () Bool)

(assert (=> b!4302757 (= e!2674937 e!2674940)))

(declare-fun b!4302758 () Bool)

(declare-fun res!1763528 () Bool)

(assert (=> b!4302758 (=> res!1763528 e!2674936)))

(declare-fun allKeysSameHash!139 (List!48139 (_ BitVec 64) Hashable!4481) Bool)

(assert (=> b!4302758 (= res!1763528 (not (allKeysSameHash!139 lt!1524299 lt!1524294 (hashF!6519 thiss!42308))))))

(declare-fun b!4302759 () Bool)

(declare-fun e!2674935 () Bool)

(assert (=> b!4302759 (= e!2674935 (not e!2674936))))

(declare-fun res!1763526 () Bool)

(assert (=> b!4302759 (=> res!1763526 e!2674936)))

(assert (=> b!4302759 (= res!1763526 (not (forall!8661 (toList!2253 lt!1524301) lambda!132161)))))

(declare-fun e!2674938 () Bool)

(assert (=> b!4302759 e!2674938))

(declare-fun res!1763530 () Bool)

(assert (=> b!4302759 (=> (not res!1763530) (not e!2674938))))

(declare-fun lt!1524305 () ListLongMap!861)

(assert (=> b!4302759 (= res!1763530 (forall!8661 (toList!2253 lt!1524305) lambda!132161))))

(declare-fun +!192 (ListLongMap!861 tuple2!46108) ListLongMap!861)

(assert (=> b!4302759 (= lt!1524305 (+!192 lt!1524301 (tuple2!46109 lt!1524294 lt!1524299)))))

(declare-fun lt!1524298 () Unit!66997)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!110 (ListLongMap!861 (_ BitVec 64) List!48139 Hashable!4481) Unit!66997)

(assert (=> b!4302759 (= lt!1524298 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!110 lt!1524301 lt!1524294 lt!1524299 (hashF!6519 thiss!42308)))))

(assert (=> b!4302759 e!2674945))

(declare-fun res!1763522 () Bool)

(assert (=> b!4302759 (=> (not res!1763522) (not e!2674945))))

(assert (=> b!4302759 (= res!1763522 (noDuplicateKeys!169 lt!1524309))))

(declare-fun lt!1524307 () Unit!66997)

(declare-fun lt!1524293 () List!48139)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!142 (List!48139 K!9159) Unit!66997)

(assert (=> b!4302759 (= lt!1524307 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!142 lt!1524293 key!2048))))

(assert (=> b!4302759 (allKeysSameHash!139 lt!1524309 lt!1524294 (hashF!6519 thiss!42308))))

(declare-fun lt!1524295 () Unit!66997)

(declare-fun lemmaRemovePairForKeyPreservesHash!125 (List!48139 K!9159 (_ BitVec 64) Hashable!4481) Unit!66997)

(assert (=> b!4302759 (= lt!1524295 (lemmaRemovePairForKeyPreservesHash!125 lt!1524293 key!2048 lt!1524294 (hashF!6519 thiss!42308)))))

(assert (=> b!4302759 (allKeysSameHash!139 lt!1524293 lt!1524294 (hashF!6519 thiss!42308))))

(declare-fun lt!1524308 () Unit!66997)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!130 (List!48140 (_ BitVec 64) List!48139 Hashable!4481) Unit!66997)

(assert (=> b!4302759 (= lt!1524308 (lemmaInLongMapAllKeySameHashThenForTuple!130 (toList!2253 lt!1524301) lt!1524294 lt!1524293 (hashF!6519 thiss!42308)))))

(declare-fun res!1763529 () Bool)

(declare-fun e!2674942 () Bool)

(assert (=> start!413196 (=> (not res!1763529) (not e!2674942))))

(assert (=> start!413196 (= res!1763529 ((_ is HashMap!4471) thiss!42308))))

(assert (=> start!413196 e!2674942))

(declare-fun e!2674939 () Bool)

(assert (=> start!413196 e!2674939))

(declare-fun tp_is_empty!23399 () Bool)

(assert (=> start!413196 tp_is_empty!23399))

(declare-fun tp_is_empty!23401 () Bool)

(assert (=> start!413196 tp_is_empty!23401))

(declare-fun b!4302760 () Bool)

(declare-fun res!1763523 () Bool)

(assert (=> b!4302760 (=> (not res!1763523) (not e!2674942))))

(declare-fun valid!3548 (MutableMap!4471) Bool)

(assert (=> b!4302760 (= res!1763523 (valid!3548 thiss!42308))))

(assert (=> b!4302761 (= e!2674939 (and e!2674944 tp!1322183))))

(declare-fun tp!1322185 () Bool)

(declare-fun tp!1322187 () Bool)

(declare-fun array_inv!5247 (array!16384) Bool)

(declare-fun array_inv!5248 (array!16386) Bool)

(assert (=> b!4302762 (= e!2674940 (and tp!1322184 tp!1322187 tp!1322185 (array_inv!5247 (_keys!4865 (v!42018 (underlying!9359 (v!42019 (underlying!9360 thiss!42308)))))) (array_inv!5248 (_values!4846 (v!42018 (underlying!9359 (v!42019 (underlying!9360 thiss!42308)))))) e!2674934))))

(declare-fun b!4302763 () Bool)

(declare-fun res!1763520 () Bool)

(assert (=> b!4302763 (=> res!1763520 e!2674936)))

(declare-datatypes ((ListMap!1539 0))(
  ( (ListMap!1540 (toList!2254 List!48139)) )
))
(declare-fun contains!9938 (ListMap!1539 K!9159) Bool)

(declare-fun extractMap!283 (List!48140) ListMap!1539)

(assert (=> b!4302763 (= res!1763520 (not (contains!9938 (extractMap!283 (toList!2253 lt!1524301)) key!2048)))))

(declare-fun b!4302764 () Bool)

(declare-fun e!2674946 () Bool)

(assert (=> b!4302764 (= e!2674942 e!2674946)))

(declare-fun res!1763524 () Bool)

(assert (=> b!4302764 (=> (not res!1763524) (not e!2674946))))

(declare-fun contains!9939 (MutableMap!4471 K!9159) Bool)

(assert (=> b!4302764 (= res!1763524 (contains!9939 thiss!42308 key!2048))))

(declare-fun map!9979 (MutLongMap!4565) ListLongMap!861)

(assert (=> b!4302764 (= lt!1524301 (map!9979 (v!42019 (underlying!9360 thiss!42308))))))

(declare-fun lt!1524300 () ListMap!1539)

(declare-fun map!9980 (MutableMap!4471) ListMap!1539)

(assert (=> b!4302764 (= lt!1524300 (map!9980 thiss!42308))))

(declare-fun b!4302765 () Bool)

(assert (=> b!4302765 (= e!2674936 e!2674933)))

(declare-fun res!1763527 () Bool)

(assert (=> b!4302765 (=> res!1763527 e!2674933)))

(declare-fun lt!1524303 () List!48139)

(declare-fun removePairForKey!163 (List!48139 K!9159) List!48139)

(assert (=> b!4302765 (= res!1763527 (not (= lt!1524309 (removePairForKey!163 lt!1524303 key!2048))))))

(declare-fun lt!1524304 () Unit!66997)

(assert (=> b!4302765 (= lt!1524304 (forallContained!1480 (toList!2253 lt!1524301) lambda!132161 lt!1524297))))

(declare-fun contains!9940 (List!48140 tuple2!46108) Bool)

(assert (=> b!4302765 (contains!9940 (toList!2253 lt!1524301) lt!1524297)))

(assert (=> b!4302765 (= lt!1524297 (tuple2!46109 lt!1524294 lt!1524303))))

(declare-fun lt!1524296 () Unit!66997)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!124 (List!48140 (_ BitVec 64) List!48139) Unit!66997)

(assert (=> b!4302765 (= lt!1524296 (lemmaGetValueByKeyImpliesContainsTuple!124 (toList!2253 lt!1524301) lt!1524294 lt!1524303))))

(declare-fun apply!10912 (ListLongMap!861 (_ BitVec 64)) List!48139)

(assert (=> b!4302765 (= lt!1524303 (apply!10912 lt!1524301 lt!1524294))))

(declare-fun b!4302766 () Bool)

(assert (=> b!4302766 (= e!2674946 e!2674935)))

(declare-fun res!1763525 () Bool)

(assert (=> b!4302766 (=> (not res!1763525) (not e!2674935))))

(declare-datatypes ((tuple2!46110 0))(
  ( (tuple2!46111 (_1!26334 Bool) (_2!26334 MutLongMap!4565)) )
))
(declare-fun update!361 (MutLongMap!4565 (_ BitVec 64) List!48139) tuple2!46110)

(assert (=> b!4302766 (= res!1763525 (_1!26334 (update!361 (v!42019 (underlying!9360 thiss!42308)) lt!1524294 lt!1524299)))))

(declare-fun v!9179 () V!9361)

(assert (=> b!4302766 (= lt!1524299 (Cons!48015 (tuple2!46107 key!2048 v!9179) lt!1524309))))

(assert (=> b!4302766 (= lt!1524309 (removePairForKey!163 lt!1524293 key!2048))))

(declare-fun apply!10913 (MutLongMap!4565 (_ BitVec 64)) List!48139)

(assert (=> b!4302766 (= lt!1524293 (apply!10913 (v!42019 (underlying!9360 thiss!42308)) lt!1524294))))

(declare-fun hash!869 (Hashable!4481 K!9159) (_ BitVec 64))

(assert (=> b!4302766 (= lt!1524294 (hash!869 (hashF!6519 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!20470 () Bool)

(declare-fun tp!1322189 () Bool)

(declare-fun tp!1322186 () Bool)

(assert (=> mapNonEmpty!20470 (= mapRes!20470 (and tp!1322189 tp!1322186))))

(declare-fun mapKey!20470 () (_ BitVec 32))

(declare-fun mapRest!20470 () (Array (_ BitVec 32) List!48139))

(declare-fun mapValue!20470 () List!48139)

(assert (=> mapNonEmpty!20470 (= (arr!7316 (_values!4846 (v!42018 (underlying!9359 (v!42019 (underlying!9360 thiss!42308)))))) (store mapRest!20470 mapKey!20470 mapValue!20470))))

(declare-fun b!4302767 () Bool)

(assert (=> b!4302767 (= e!2674938 (allKeysSameHashInMap!288 lt!1524305 (hashF!6519 thiss!42308)))))

(assert (= (and start!413196 res!1763529) b!4302760))

(assert (= (and b!4302760 res!1763523) b!4302764))

(assert (= (and b!4302764 res!1763524) b!4302766))

(assert (= (and b!4302766 res!1763525) b!4302759))

(assert (= (and b!4302759 res!1763522) b!4302751))

(assert (= (and b!4302751 res!1763531) b!4302753))

(assert (= (and b!4302759 res!1763530) b!4302767))

(assert (= (and b!4302759 (not res!1763526)) b!4302755))

(assert (= (and b!4302755 (not res!1763521)) b!4302758))

(assert (= (and b!4302758 (not res!1763528)) b!4302763))

(assert (= (and b!4302763 (not res!1763520)) b!4302754))

(assert (= (and b!4302754 (not res!1763518)) b!4302765))

(assert (= (and b!4302765 (not res!1763527)) b!4302750))

(assert (= (and b!4302750 (not res!1763519)) b!4302752))

(assert (= (and b!4302748 condMapEmpty!20470) mapIsEmpty!20470))

(assert (= (and b!4302748 (not condMapEmpty!20470)) mapNonEmpty!20470))

(assert (= b!4302762 b!4302748))

(assert (= b!4302757 b!4302762))

(assert (= b!4302749 b!4302757))

(assert (= (and b!4302756 ((_ is LongMap!4565) (v!42019 (underlying!9360 thiss!42308)))) b!4302749))

(assert (= b!4302761 b!4302756))

(assert (= (and start!413196 ((_ is HashMap!4471) thiss!42308)) b!4302761))

(declare-fun m!4894875 () Bool)

(assert (=> b!4302760 m!4894875))

(declare-fun m!4894877 () Bool)

(assert (=> b!4302767 m!4894877))

(declare-fun m!4894879 () Bool)

(assert (=> b!4302750 m!4894879))

(declare-fun m!4894881 () Bool)

(assert (=> b!4302753 m!4894881))

(declare-fun m!4894883 () Bool)

(assert (=> b!4302752 m!4894883))

(declare-fun m!4894885 () Bool)

(assert (=> b!4302762 m!4894885))

(declare-fun m!4894887 () Bool)

(assert (=> b!4302762 m!4894887))

(declare-fun m!4894889 () Bool)

(assert (=> b!4302765 m!4894889))

(declare-fun m!4894891 () Bool)

(assert (=> b!4302765 m!4894891))

(declare-fun m!4894893 () Bool)

(assert (=> b!4302765 m!4894893))

(declare-fun m!4894895 () Bool)

(assert (=> b!4302765 m!4894895))

(assert (=> b!4302765 m!4894883))

(declare-fun m!4894897 () Bool)

(assert (=> b!4302764 m!4894897))

(declare-fun m!4894899 () Bool)

(assert (=> b!4302764 m!4894899))

(declare-fun m!4894901 () Bool)

(assert (=> b!4302764 m!4894901))

(declare-fun m!4894903 () Bool)

(assert (=> b!4302766 m!4894903))

(declare-fun m!4894905 () Bool)

(assert (=> b!4302766 m!4894905))

(declare-fun m!4894907 () Bool)

(assert (=> b!4302766 m!4894907))

(declare-fun m!4894909 () Bool)

(assert (=> b!4302766 m!4894909))

(declare-fun m!4894911 () Bool)

(assert (=> b!4302755 m!4894911))

(declare-fun m!4894913 () Bool)

(assert (=> b!4302763 m!4894913))

(assert (=> b!4302763 m!4894913))

(declare-fun m!4894915 () Bool)

(assert (=> b!4302763 m!4894915))

(declare-fun m!4894917 () Bool)

(assert (=> b!4302754 m!4894917))

(declare-fun m!4894919 () Bool)

(assert (=> mapNonEmpty!20470 m!4894919))

(assert (=> b!4302759 m!4894879))

(declare-fun m!4894921 () Bool)

(assert (=> b!4302759 m!4894921))

(declare-fun m!4894923 () Bool)

(assert (=> b!4302759 m!4894923))

(declare-fun m!4894925 () Bool)

(assert (=> b!4302759 m!4894925))

(declare-fun m!4894927 () Bool)

(assert (=> b!4302759 m!4894927))

(declare-fun m!4894929 () Bool)

(assert (=> b!4302759 m!4894929))

(declare-fun m!4894931 () Bool)

(assert (=> b!4302759 m!4894931))

(declare-fun m!4894933 () Bool)

(assert (=> b!4302759 m!4894933))

(declare-fun m!4894935 () Bool)

(assert (=> b!4302759 m!4894935))

(declare-fun m!4894937 () Bool)

(assert (=> b!4302759 m!4894937))

(declare-fun m!4894939 () Bool)

(assert (=> b!4302751 m!4894939))

(declare-fun m!4894941 () Bool)

(assert (=> b!4302758 m!4894941))

(check-sat tp_is_empty!23401 (not b!4302751) (not b!4302760) (not b!4302762) (not b!4302767) (not b!4302758) (not b!4302748) (not b_next!128925) tp_is_empty!23399 (not b!4302750) (not b!4302752) (not b!4302754) (not b!4302766) (not mapNonEmpty!20470) (not b_next!128923) b_and!339607 (not b!4302755) (not b!4302763) (not b!4302753) b_and!339605 (not b!4302759) (not b!4302765) (not b!4302764))
(check-sat b_and!339605 b_and!339607 (not b_next!128925) (not b_next!128923))
