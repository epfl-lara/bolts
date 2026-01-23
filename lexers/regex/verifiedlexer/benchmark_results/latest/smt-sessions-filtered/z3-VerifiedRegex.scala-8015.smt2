; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415078 () Bool)

(assert start!415078)

(declare-fun b!4315362 () Bool)

(declare-fun b_free!128803 () Bool)

(declare-fun b_next!129507 () Bool)

(assert (=> b!4315362 (= b_free!128803 (not b_next!129507))))

(declare-fun tp!1325810 () Bool)

(declare-fun b_and!340279 () Bool)

(assert (=> b!4315362 (= tp!1325810 b_and!340279)))

(declare-fun b!4315355 () Bool)

(declare-fun b_free!128805 () Bool)

(declare-fun b_next!129509 () Bool)

(assert (=> b!4315355 (= b_free!128805 (not b_next!129509))))

(declare-fun tp!1325808 () Bool)

(declare-fun b_and!340281 () Bool)

(assert (=> b!4315355 (= tp!1325808 b_and!340281)))

(declare-fun b!4315351 () Bool)

(declare-fun e!2684367 () Bool)

(declare-fun e!2684366 () Bool)

(declare-datatypes ((V!9726 0))(
  ( (V!9727 (val!15877 Int)) )
))
(declare-datatypes ((K!9524 0))(
  ( (K!9525 (val!15878 Int)) )
))
(declare-datatypes ((tuple2!46926 0))(
  ( (tuple2!46927 (_1!26745 K!9524) (_2!26745 V!9726)) )
))
(declare-datatypes ((List!48417 0))(
  ( (Nil!48293) (Cons!48293 (h!53744 tuple2!46926) (t!355260 List!48417)) )
))
(declare-datatypes ((array!17038 0))(
  ( (array!17039 (arr!7607 (Array (_ BitVec 32) (_ BitVec 64))) (size!35646 (_ BitVec 32))) )
))
(declare-datatypes ((array!17040 0))(
  ( (array!17041 (arr!7608 (Array (_ BitVec 32) List!48417)) (size!35647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9422 0))(
  ( (LongMapFixedSize!9423 (defaultEntry!5096 Int) (mask!13295 (_ BitVec 32)) (extraKeys!4960 (_ BitVec 32)) (zeroValue!4970 List!48417) (minValue!4970 List!48417) (_size!9465 (_ BitVec 32)) (_keys!5011 array!17038) (_values!4992 array!17040) (_vacant!4772 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18653 0))(
  ( (Cell!18654 (v!42555 LongMapFixedSize!9422)) )
))
(declare-datatypes ((MutLongMap!4711 0))(
  ( (LongMap!4711 (underlying!9651 Cell!18653)) (MutLongMapExt!4710 (__x!30158 Int)) )
))
(declare-fun lt!1534984 () MutLongMap!4711)

(get-info :version)

(assert (=> b!4315351 (= e!2684367 (and e!2684366 ((_ is LongMap!4711) lt!1534984)))))

(declare-datatypes ((Hashable!4627 0))(
  ( (HashableExt!4626 (__x!30159 Int)) )
))
(declare-datatypes ((Cell!18655 0))(
  ( (Cell!18656 (v!42556 MutLongMap!4711)) )
))
(declare-datatypes ((MutableMap!4617 0))(
  ( (MutableMapExt!4616 (__x!30160 Int)) (HashMap!4617 (underlying!9652 Cell!18655) (hashF!6826 Hashable!4627) (_size!9466 (_ BitVec 32)) (defaultValue!4788 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4617)

(assert (=> b!4315351 (= lt!1534984 (v!42556 (underlying!9652 thiss!42308)))))

(declare-fun b!4315352 () Bool)

(declare-fun e!2684362 () Bool)

(declare-datatypes ((tuple2!46928 0))(
  ( (tuple2!46929 (_1!26746 (_ BitVec 64)) (_2!26746 List!48417)) )
))
(declare-datatypes ((List!48418 0))(
  ( (Nil!48294) (Cons!48294 (h!53745 tuple2!46928) (t!355261 List!48418)) )
))
(declare-datatypes ((ListLongMap!1097 0))(
  ( (ListLongMap!1098 (toList!2483 List!48418)) )
))
(declare-fun lt!1534989 () ListLongMap!1097)

(declare-fun allKeysSameHashInMap!368 (ListLongMap!1097 Hashable!4627) Bool)

(assert (=> b!4315352 (= e!2684362 (allKeysSameHashInMap!368 lt!1534989 (hashF!6826 thiss!42308)))))

(declare-fun b!4315353 () Bool)

(declare-fun e!2684369 () Bool)

(declare-fun lt!1534987 () ListLongMap!1097)

(assert (=> b!4315353 (= e!2684369 (allKeysSameHashInMap!368 lt!1534987 (hashF!6826 thiss!42308)))))

(declare-fun b!4315354 () Bool)

(declare-fun e!2684363 () Bool)

(declare-datatypes ((ListMap!1763 0))(
  ( (ListMap!1764 (toList!2484 List!48417)) )
))
(declare-fun lt!1534997 () ListMap!1763)

(declare-fun lt!1534995 () ListMap!1763)

(declare-fun eq!149 (ListMap!1763 ListMap!1763) Bool)

(assert (=> b!4315354 (= e!2684363 (not (eq!149 lt!1534997 lt!1534995)))))

(assert (=> b!4315354 e!2684369))

(declare-fun res!1768789 () Bool)

(assert (=> b!4315354 (=> (not res!1768789) (not e!2684369))))

(declare-fun lambda!133434 () Int)

(declare-fun forall!8778 (List!48418 Int) Bool)

(assert (=> b!4315354 (= res!1768789 (forall!8778 (toList!2483 lt!1534987) lambda!133434))))

(declare-datatypes ((tuple2!46930 0))(
  ( (tuple2!46931 (_1!26747 Bool) (_2!26747 MutLongMap!4711)) )
))
(declare-fun lt!1534990 () tuple2!46930)

(declare-fun map!10303 (MutLongMap!4711) ListLongMap!1097)

(assert (=> b!4315354 (= lt!1534987 (map!10303 (_2!26747 lt!1534990)))))

(declare-fun key!2048 () K!9524)

(declare-fun contains!10298 (ListMap!1763 K!9524) Bool)

(assert (=> b!4315354 (= (contains!10298 lt!1534997 key!2048) (contains!10298 lt!1534995 key!2048))))

(declare-datatypes ((Unit!67503 0))(
  ( (Unit!67504) )
))
(declare-fun lt!1534982 () Unit!67503)

(declare-fun lemmaEquivalentThenSameContains!63 (ListMap!1763 ListMap!1763 K!9524) Unit!67503)

(assert (=> b!4315354 (= lt!1534982 (lemmaEquivalentThenSameContains!63 lt!1534997 lt!1534995 key!2048))))

(declare-fun lt!1534980 () ListMap!1763)

(declare-fun lt!1534986 () tuple2!46926)

(declare-fun +!305 (ListMap!1763 tuple2!46926) ListMap!1763)

(assert (=> b!4315354 (= lt!1534995 (+!305 lt!1534980 lt!1534986))))

(declare-fun map!10304 (MutableMap!4617) ListMap!1763)

(assert (=> b!4315354 (= lt!1534997 (map!10304 (HashMap!4617 (Cell!18656 (_2!26747 lt!1534990)) (hashF!6826 thiss!42308) (_size!9466 thiss!42308) (defaultValue!4788 thiss!42308))))))

(declare-fun lt!1534983 () ListLongMap!1097)

(declare-fun extractMap!352 (List!48418) ListMap!1763)

(assert (=> b!4315354 (eq!149 (extractMap!352 (toList!2483 lt!1534989)) (+!305 (extractMap!352 (toList!2483 lt!1534983)) lt!1534986))))

(declare-fun lt!1534988 () Unit!67503)

(declare-fun lt!1534993 () (_ BitVec 64))

(declare-fun v!9179 () V!9726)

(declare-fun lt!1534985 () List!48417)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!68 (ListLongMap!1097 (_ BitVec 64) List!48417 K!9524 V!9726 Hashable!4627) Unit!67503)

(assert (=> b!4315354 (= lt!1534988 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!68 lt!1534983 lt!1534993 lt!1534985 key!2048 v!9179 (hashF!6826 thiss!42308)))))

(assert (=> b!4315354 e!2684362))

(declare-fun res!1768792 () Bool)

(assert (=> b!4315354 (=> (not res!1768792) (not e!2684362))))

(assert (=> b!4315354 (= res!1768792 (forall!8778 (toList!2483 lt!1534989) lambda!133434))))

(declare-fun +!306 (ListLongMap!1097 tuple2!46928) ListLongMap!1097)

(assert (=> b!4315354 (= lt!1534989 (+!306 lt!1534983 (tuple2!46929 lt!1534993 lt!1534985)))))

(declare-fun lt!1534981 () Unit!67503)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!170 (ListLongMap!1097 (_ BitVec 64) List!48417 Hashable!4627) Unit!67503)

(assert (=> b!4315354 (= lt!1534981 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!170 lt!1534983 lt!1534993 lt!1534985 (hashF!6826 thiss!42308)))))

(declare-fun e!2684359 () Bool)

(assert (=> b!4315354 e!2684359))

(declare-fun res!1768790 () Bool)

(assert (=> b!4315354 (=> (not res!1768790) (not e!2684359))))

(declare-fun lt!1534992 () List!48417)

(declare-fun noDuplicateKeys!248 (List!48417) Bool)

(assert (=> b!4315354 (= res!1768790 (noDuplicateKeys!248 lt!1534992))))

(declare-fun lt!1534991 () Unit!67503)

(declare-fun lt!1534994 () List!48417)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!196 (List!48417 K!9524) Unit!67503)

(assert (=> b!4315354 (= lt!1534991 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!196 lt!1534994 key!2048))))

(declare-fun allKeysSameHash!221 (List!48417 (_ BitVec 64) Hashable!4627) Bool)

(assert (=> b!4315354 (allKeysSameHash!221 lt!1534992 lt!1534993 (hashF!6826 thiss!42308))))

(declare-fun lt!1534996 () Unit!67503)

(declare-fun lemmaRemovePairForKeyPreservesHash!201 (List!48417 K!9524 (_ BitVec 64) Hashable!4627) Unit!67503)

(assert (=> b!4315354 (= lt!1534996 (lemmaRemovePairForKeyPreservesHash!201 lt!1534994 key!2048 lt!1534993 (hashF!6826 thiss!42308)))))

(assert (=> b!4315354 (allKeysSameHash!221 lt!1534994 lt!1534993 (hashF!6826 thiss!42308))))

(declare-fun lt!1534979 () Unit!67503)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!208 (List!48418 (_ BitVec 64) List!48417 Hashable!4627) Unit!67503)

(assert (=> b!4315354 (= lt!1534979 (lemmaInLongMapAllKeySameHashThenForTuple!208 (toList!2483 lt!1534983) lt!1534993 lt!1534994 (hashF!6826 thiss!42308)))))

(declare-fun e!2684361 () Bool)

(assert (=> b!4315355 (= e!2684361 (and e!2684367 tp!1325808))))

(declare-fun mapIsEmpty!21016 () Bool)

(declare-fun mapRes!21016 () Bool)

(assert (=> mapIsEmpty!21016 mapRes!21016))

(declare-fun b!4315356 () Bool)

(assert (=> b!4315356 (= e!2684359 (noDuplicateKeys!248 lt!1534985))))

(declare-fun b!4315357 () Bool)

(declare-fun e!2684357 () Bool)

(declare-fun e!2684365 () Bool)

(assert (=> b!4315357 (= e!2684357 e!2684365)))

(declare-fun b!4315358 () Bool)

(declare-fun e!2684360 () Bool)

(assert (=> b!4315358 (= e!2684360 e!2684363)))

(declare-fun res!1768791 () Bool)

(assert (=> b!4315358 (=> (not res!1768791) (not e!2684363))))

(assert (=> b!4315358 (= res!1768791 (_1!26747 lt!1534990))))

(declare-fun update!486 (MutLongMap!4711 (_ BitVec 64) List!48417) tuple2!46930)

(assert (=> b!4315358 (= lt!1534990 (update!486 (v!42556 (underlying!9652 thiss!42308)) lt!1534993 lt!1534985))))

(assert (=> b!4315358 (= lt!1534985 (Cons!48293 lt!1534986 lt!1534992))))

(declare-fun removePairForKey!246 (List!48417 K!9524) List!48417)

(assert (=> b!4315358 (= lt!1534992 (removePairForKey!246 lt!1534994 key!2048))))

(assert (=> b!4315358 (= lt!1534986 (tuple2!46927 key!2048 v!9179))))

(declare-fun apply!11082 (MutLongMap!4711 (_ BitVec 64)) List!48417)

(assert (=> b!4315358 (= lt!1534994 (apply!11082 (v!42556 (underlying!9652 thiss!42308)) lt!1534993))))

(declare-fun hash!1104 (Hashable!4627 K!9524) (_ BitVec 64))

(assert (=> b!4315358 (= lt!1534993 (hash!1104 (hashF!6826 thiss!42308) key!2048))))

(declare-fun res!1768795 () Bool)

(declare-fun e!2684358 () Bool)

(assert (=> start!415078 (=> (not res!1768795) (not e!2684358))))

(assert (=> start!415078 (= res!1768795 ((_ is HashMap!4617) thiss!42308))))

(assert (=> start!415078 e!2684358))

(assert (=> start!415078 e!2684361))

(declare-fun tp_is_empty!23949 () Bool)

(assert (=> start!415078 tp_is_empty!23949))

(declare-fun tp_is_empty!23951 () Bool)

(assert (=> start!415078 tp_is_empty!23951))

(declare-fun mapNonEmpty!21016 () Bool)

(declare-fun tp!1325806 () Bool)

(declare-fun tp!1325804 () Bool)

(assert (=> mapNonEmpty!21016 (= mapRes!21016 (and tp!1325806 tp!1325804))))

(declare-fun mapValue!21016 () List!48417)

(declare-fun mapKey!21016 () (_ BitVec 32))

(declare-fun mapRest!21016 () (Array (_ BitVec 32) List!48417))

(assert (=> mapNonEmpty!21016 (= (arr!7608 (_values!4992 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) (store mapRest!21016 mapKey!21016 mapValue!21016))))

(declare-fun b!4315359 () Bool)

(declare-fun res!1768794 () Bool)

(assert (=> b!4315359 (=> (not res!1768794) (not e!2684359))))

(declare-fun containsKey!368 (List!48417 K!9524) Bool)

(assert (=> b!4315359 (= res!1768794 (not (containsKey!368 lt!1534992 key!2048)))))

(declare-fun b!4315360 () Bool)

(assert (=> b!4315360 (= e!2684366 e!2684357)))

(declare-fun b!4315361 () Bool)

(assert (=> b!4315361 (= e!2684358 e!2684360)))

(declare-fun res!1768793 () Bool)

(assert (=> b!4315361 (=> (not res!1768793) (not e!2684360))))

(declare-fun contains!10299 (MutableMap!4617 K!9524) Bool)

(assert (=> b!4315361 (= res!1768793 (contains!10299 thiss!42308 key!2048))))

(assert (=> b!4315361 (= lt!1534983 (map!10303 (v!42556 (underlying!9652 thiss!42308))))))

(assert (=> b!4315361 (= lt!1534980 (map!10304 thiss!42308))))

(declare-fun tp!1325805 () Bool)

(declare-fun e!2684368 () Bool)

(declare-fun tp!1325809 () Bool)

(declare-fun array_inv!5469 (array!17038) Bool)

(declare-fun array_inv!5470 (array!17040) Bool)

(assert (=> b!4315362 (= e!2684365 (and tp!1325810 tp!1325809 tp!1325805 (array_inv!5469 (_keys!5011 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) (array_inv!5470 (_values!4992 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) e!2684368))))

(declare-fun b!4315363 () Bool)

(declare-fun tp!1325807 () Bool)

(assert (=> b!4315363 (= e!2684368 (and tp!1325807 mapRes!21016))))

(declare-fun condMapEmpty!21016 () Bool)

(declare-fun mapDefault!21016 () List!48417)

(assert (=> b!4315363 (= condMapEmpty!21016 (= (arr!7608 (_values!4992 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48417)) mapDefault!21016)))))

(declare-fun b!4315364 () Bool)

(declare-fun res!1768788 () Bool)

(assert (=> b!4315364 (=> (not res!1768788) (not e!2684358))))

(declare-fun valid!3709 (MutableMap!4617) Bool)

(assert (=> b!4315364 (= res!1768788 (valid!3709 thiss!42308))))

(assert (= (and start!415078 res!1768795) b!4315364))

(assert (= (and b!4315364 res!1768788) b!4315361))

(assert (= (and b!4315361 res!1768793) b!4315358))

(assert (= (and b!4315358 res!1768791) b!4315354))

(assert (= (and b!4315354 res!1768790) b!4315359))

(assert (= (and b!4315359 res!1768794) b!4315356))

(assert (= (and b!4315354 res!1768792) b!4315352))

(assert (= (and b!4315354 res!1768789) b!4315353))

(assert (= (and b!4315363 condMapEmpty!21016) mapIsEmpty!21016))

(assert (= (and b!4315363 (not condMapEmpty!21016)) mapNonEmpty!21016))

(assert (= b!4315362 b!4315363))

(assert (= b!4315357 b!4315362))

(assert (= b!4315360 b!4315357))

(assert (= (and b!4315351 ((_ is LongMap!4711) (v!42556 (underlying!9652 thiss!42308)))) b!4315360))

(assert (= b!4315355 b!4315351))

(assert (= (and start!415078 ((_ is HashMap!4617) thiss!42308)) b!4315355))

(declare-fun m!4909111 () Bool)

(assert (=> b!4315358 m!4909111))

(declare-fun m!4909113 () Bool)

(assert (=> b!4315358 m!4909113))

(declare-fun m!4909115 () Bool)

(assert (=> b!4315358 m!4909115))

(declare-fun m!4909117 () Bool)

(assert (=> b!4315358 m!4909117))

(declare-fun m!4909119 () Bool)

(assert (=> b!4315362 m!4909119))

(declare-fun m!4909121 () Bool)

(assert (=> b!4315362 m!4909121))

(declare-fun m!4909123 () Bool)

(assert (=> b!4315356 m!4909123))

(declare-fun m!4909125 () Bool)

(assert (=> b!4315361 m!4909125))

(declare-fun m!4909127 () Bool)

(assert (=> b!4315361 m!4909127))

(declare-fun m!4909129 () Bool)

(assert (=> b!4315361 m!4909129))

(declare-fun m!4909131 () Bool)

(assert (=> b!4315364 m!4909131))

(declare-fun m!4909133 () Bool)

(assert (=> b!4315353 m!4909133))

(declare-fun m!4909135 () Bool)

(assert (=> mapNonEmpty!21016 m!4909135))

(declare-fun m!4909137 () Bool)

(assert (=> b!4315354 m!4909137))

(declare-fun m!4909139 () Bool)

(assert (=> b!4315354 m!4909139))

(declare-fun m!4909141 () Bool)

(assert (=> b!4315354 m!4909141))

(declare-fun m!4909143 () Bool)

(assert (=> b!4315354 m!4909143))

(declare-fun m!4909145 () Bool)

(assert (=> b!4315354 m!4909145))

(declare-fun m!4909147 () Bool)

(assert (=> b!4315354 m!4909147))

(declare-fun m!4909149 () Bool)

(assert (=> b!4315354 m!4909149))

(declare-fun m!4909151 () Bool)

(assert (=> b!4315354 m!4909151))

(assert (=> b!4315354 m!4909139))

(declare-fun m!4909153 () Bool)

(assert (=> b!4315354 m!4909153))

(declare-fun m!4909155 () Bool)

(assert (=> b!4315354 m!4909155))

(declare-fun m!4909157 () Bool)

(assert (=> b!4315354 m!4909157))

(declare-fun m!4909159 () Bool)

(assert (=> b!4315354 m!4909159))

(declare-fun m!4909161 () Bool)

(assert (=> b!4315354 m!4909161))

(declare-fun m!4909163 () Bool)

(assert (=> b!4315354 m!4909163))

(declare-fun m!4909165 () Bool)

(assert (=> b!4315354 m!4909165))

(declare-fun m!4909167 () Bool)

(assert (=> b!4315354 m!4909167))

(declare-fun m!4909169 () Bool)

(assert (=> b!4315354 m!4909169))

(declare-fun m!4909171 () Bool)

(assert (=> b!4315354 m!4909171))

(assert (=> b!4315354 m!4909167))

(assert (=> b!4315354 m!4909141))

(declare-fun m!4909173 () Bool)

(assert (=> b!4315354 m!4909173))

(declare-fun m!4909175 () Bool)

(assert (=> b!4315354 m!4909175))

(declare-fun m!4909177 () Bool)

(assert (=> b!4315354 m!4909177))

(declare-fun m!4909179 () Bool)

(assert (=> b!4315354 m!4909179))

(declare-fun m!4909181 () Bool)

(assert (=> b!4315359 m!4909181))

(declare-fun m!4909183 () Bool)

(assert (=> b!4315352 m!4909183))

(check-sat (not b!4315352) (not mapNonEmpty!21016) tp_is_empty!23949 (not b_next!129509) (not b!4315361) (not b_next!129507) (not b!4315358) (not b!4315353) b_and!340279 tp_is_empty!23951 (not b!4315354) (not b!4315359) b_and!340281 (not b!4315362) (not b!4315363) (not b!4315364) (not b!4315356))
(check-sat b_and!340279 b_and!340281 (not b_next!129509) (not b_next!129507))
(get-model)

(declare-fun bs!605770 () Bool)

(declare-fun d!1269166 () Bool)

(assert (= bs!605770 (and d!1269166 b!4315354)))

(declare-fun lambda!133437 () Int)

(assert (=> bs!605770 (not (= lambda!133437 lambda!133434))))

(assert (=> d!1269166 true))

(assert (=> d!1269166 (= (allKeysSameHashInMap!368 lt!1534987 (hashF!6826 thiss!42308)) (forall!8778 (toList!2483 lt!1534987) lambda!133437))))

(declare-fun bs!605771 () Bool)

(assert (= bs!605771 d!1269166))

(declare-fun m!4909185 () Bool)

(assert (=> bs!605771 m!4909185))

(assert (=> b!4315353 d!1269166))

(declare-fun b!4315385 () Bool)

(declare-fun e!2684380 () Bool)

(declare-fun call!298539 () ListLongMap!1097)

(declare-fun call!298540 () ListLongMap!1097)

(assert (=> b!4315385 (= e!2684380 (= call!298539 call!298540))))

(declare-fun b!4315386 () Bool)

(declare-fun e!2684381 () tuple2!46930)

(declare-fun lt!1535006 () tuple2!46930)

(assert (=> b!4315386 (= e!2684381 (tuple2!46931 false (_2!26747 lt!1535006)))))

(declare-fun b!4315387 () Bool)

(declare-fun e!2684384 () tuple2!46930)

(assert (=> b!4315387 (= e!2684384 (tuple2!46931 true (v!42556 (underlying!9652 thiss!42308))))))

(declare-fun bm!298534 () Bool)

(assert (=> bm!298534 (= call!298540 (map!10303 (v!42556 (underlying!9652 thiss!42308))))))

(declare-fun b!4315388 () Bool)

(declare-fun e!2684382 () Bool)

(assert (=> b!4315388 (= e!2684382 e!2684380)))

(declare-fun c!733631 () Bool)

(declare-fun lt!1535008 () tuple2!46930)

(assert (=> b!4315388 (= c!733631 (_1!26747 lt!1535008))))

(declare-fun b!4315389 () Bool)

(declare-fun e!2684383 () Bool)

(assert (=> b!4315389 (= e!2684380 e!2684383)))

(declare-fun res!1768802 () Bool)

(declare-fun contains!10300 (ListLongMap!1097 (_ BitVec 64)) Bool)

(assert (=> b!4315389 (= res!1768802 (contains!10300 call!298539 lt!1534993))))

(assert (=> b!4315389 (=> (not res!1768802) (not e!2684383))))

(declare-fun bm!298535 () Bool)

(assert (=> bm!298535 (= call!298539 (map!10303 (_2!26747 lt!1535008)))))

(declare-fun b!4315391 () Bool)

(declare-fun lt!1535009 () tuple2!46930)

(assert (=> b!4315391 (= e!2684384 (tuple2!46931 (_1!26747 lt!1535009) (_2!26747 lt!1535009)))))

(declare-fun repack!71 (MutLongMap!4711) tuple2!46930)

(assert (=> b!4315391 (= lt!1535009 (repack!71 (v!42556 (underlying!9652 thiss!42308))))))

(declare-fun b!4315392 () Bool)

(declare-datatypes ((tuple2!46932 0))(
  ( (tuple2!46933 (_1!26748 Bool) (_2!26748 LongMapFixedSize!9422)) )
))
(declare-fun lt!1535007 () tuple2!46932)

(assert (=> b!4315392 (= e!2684381 (tuple2!46931 (_1!26748 lt!1535007) (LongMap!4711 (Cell!18654 (_2!26748 lt!1535007)))))))

(declare-fun update!487 (LongMapFixedSize!9422 (_ BitVec 64) List!48417) tuple2!46932)

(assert (=> b!4315392 (= lt!1535007 (update!487 (v!42555 (underlying!9651 (_2!26747 lt!1535006))) lt!1534993 lt!1534985))))

(declare-fun b!4315393 () Bool)

(assert (=> b!4315393 (= e!2684383 (= call!298539 (+!306 call!298540 (tuple2!46929 lt!1534993 lt!1534985))))))

(declare-fun b!4315390 () Bool)

(declare-fun res!1768804 () Bool)

(assert (=> b!4315390 (=> (not res!1768804) (not e!2684382))))

(declare-fun valid!3710 (MutLongMap!4711) Bool)

(assert (=> b!4315390 (= res!1768804 (valid!3710 (_2!26747 lt!1535008)))))

(declare-fun d!1269168 () Bool)

(assert (=> d!1269168 e!2684382))

(declare-fun res!1768803 () Bool)

(assert (=> d!1269168 (=> (not res!1768803) (not e!2684382))))

(assert (=> d!1269168 (= res!1768803 ((_ is LongMap!4711) (_2!26747 lt!1535008)))))

(assert (=> d!1269168 (= lt!1535008 e!2684381)))

(declare-fun c!733632 () Bool)

(assert (=> d!1269168 (= c!733632 (_1!26747 lt!1535006))))

(assert (=> d!1269168 (= lt!1535006 e!2684384)))

(declare-fun c!733633 () Bool)

(declare-fun imbalanced!67 (MutLongMap!4711) Bool)

(assert (=> d!1269168 (= c!733633 (imbalanced!67 (v!42556 (underlying!9652 thiss!42308))))))

(assert (=> d!1269168 (valid!3710 (v!42556 (underlying!9652 thiss!42308)))))

(assert (=> d!1269168 (= (update!486 (v!42556 (underlying!9652 thiss!42308)) lt!1534993 lt!1534985) lt!1535008)))

(assert (= (and d!1269168 c!733633) b!4315391))

(assert (= (and d!1269168 (not c!733633)) b!4315387))

(assert (= (and d!1269168 c!733632) b!4315392))

(assert (= (and d!1269168 (not c!733632)) b!4315386))

(assert (= (and d!1269168 res!1768803) b!4315390))

(assert (= (and b!4315390 res!1768804) b!4315388))

(assert (= (and b!4315388 c!733631) b!4315389))

(assert (= (and b!4315388 (not c!733631)) b!4315385))

(assert (= (and b!4315389 res!1768802) b!4315393))

(assert (= (or b!4315393 b!4315385) bm!298534))

(assert (= (or b!4315389 b!4315393 b!4315385) bm!298535))

(declare-fun m!4909187 () Bool)

(assert (=> b!4315389 m!4909187))

(declare-fun m!4909189 () Bool)

(assert (=> d!1269168 m!4909189))

(declare-fun m!4909191 () Bool)

(assert (=> d!1269168 m!4909191))

(declare-fun m!4909193 () Bool)

(assert (=> bm!298535 m!4909193))

(assert (=> bm!298534 m!4909127))

(declare-fun m!4909195 () Bool)

(assert (=> b!4315391 m!4909195))

(declare-fun m!4909197 () Bool)

(assert (=> b!4315392 m!4909197))

(declare-fun m!4909199 () Bool)

(assert (=> b!4315393 m!4909199))

(declare-fun m!4909201 () Bool)

(assert (=> b!4315390 m!4909201))

(assert (=> b!4315358 d!1269168))

(declare-fun d!1269170 () Bool)

(declare-fun lt!1535012 () List!48417)

(assert (=> d!1269170 (not (containsKey!368 lt!1535012 key!2048))))

(declare-fun e!2684389 () List!48417)

(assert (=> d!1269170 (= lt!1535012 e!2684389)))

(declare-fun c!733639 () Bool)

(assert (=> d!1269170 (= c!733639 (and ((_ is Cons!48293) lt!1534994) (= (_1!26745 (h!53744 lt!1534994)) key!2048)))))

(assert (=> d!1269170 (noDuplicateKeys!248 lt!1534994)))

(assert (=> d!1269170 (= (removePairForKey!246 lt!1534994 key!2048) lt!1535012)))

(declare-fun b!4315404 () Bool)

(declare-fun e!2684390 () List!48417)

(assert (=> b!4315404 (= e!2684390 (Cons!48293 (h!53744 lt!1534994) (removePairForKey!246 (t!355260 lt!1534994) key!2048)))))

(declare-fun b!4315405 () Bool)

(assert (=> b!4315405 (= e!2684390 Nil!48293)))

(declare-fun b!4315402 () Bool)

(assert (=> b!4315402 (= e!2684389 (t!355260 lt!1534994))))

(declare-fun b!4315403 () Bool)

(assert (=> b!4315403 (= e!2684389 e!2684390)))

(declare-fun c!733638 () Bool)

(assert (=> b!4315403 (= c!733638 ((_ is Cons!48293) lt!1534994))))

(assert (= (and d!1269170 c!733639) b!4315402))

(assert (= (and d!1269170 (not c!733639)) b!4315403))

(assert (= (and b!4315403 c!733638) b!4315404))

(assert (= (and b!4315403 (not c!733638)) b!4315405))

(declare-fun m!4909203 () Bool)

(assert (=> d!1269170 m!4909203))

(declare-fun m!4909205 () Bool)

(assert (=> d!1269170 m!4909205))

(declare-fun m!4909207 () Bool)

(assert (=> b!4315404 m!4909207))

(assert (=> b!4315358 d!1269170))

(declare-fun d!1269172 () Bool)

(declare-fun e!2684393 () Bool)

(assert (=> d!1269172 e!2684393))

(declare-fun c!733642 () Bool)

(declare-fun contains!10301 (MutLongMap!4711 (_ BitVec 64)) Bool)

(assert (=> d!1269172 (= c!733642 (contains!10301 (v!42556 (underlying!9652 thiss!42308)) lt!1534993))))

(declare-fun lt!1535015 () List!48417)

(declare-fun apply!11083 (LongMapFixedSize!9422 (_ BitVec 64)) List!48417)

(assert (=> d!1269172 (= lt!1535015 (apply!11083 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))) lt!1534993))))

(assert (=> d!1269172 (valid!3710 (v!42556 (underlying!9652 thiss!42308)))))

(assert (=> d!1269172 (= (apply!11082 (v!42556 (underlying!9652 thiss!42308)) lt!1534993) lt!1535015)))

(declare-fun b!4315410 () Bool)

(declare-datatypes ((Option!10269 0))(
  ( (None!10268) (Some!10268 (v!42561 List!48417)) )
))
(declare-fun get!15637 (Option!10269) List!48417)

(declare-fun getValueByKey!279 (List!48418 (_ BitVec 64)) Option!10269)

(assert (=> b!4315410 (= e!2684393 (= lt!1535015 (get!15637 (getValueByKey!279 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308)))) lt!1534993))))))

(declare-fun b!4315411 () Bool)

(declare-fun dynLambda!20468 (Int (_ BitVec 64)) List!48417)

(assert (=> b!4315411 (= e!2684393 (= lt!1535015 (dynLambda!20468 (defaultEntry!5096 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308))))) lt!1534993)))))

(assert (=> b!4315411 ((_ is LongMap!4711) (v!42556 (underlying!9652 thiss!42308)))))

(assert (= (and d!1269172 c!733642) b!4315410))

(assert (= (and d!1269172 (not c!733642)) b!4315411))

(declare-fun b_lambda!126891 () Bool)

(assert (=> (not b_lambda!126891) (not b!4315411)))

(declare-fun t!355263 () Bool)

(declare-fun tb!257329 () Bool)

(assert (=> (and b!4315362 (= (defaultEntry!5096 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308))))) (defaultEntry!5096 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) t!355263) tb!257329))

(assert (=> b!4315411 t!355263))

(declare-fun result!314790 () Bool)

(declare-fun b_and!340283 () Bool)

(assert (= b_and!340279 (and (=> t!355263 result!314790) b_and!340283)))

(declare-fun m!4909209 () Bool)

(assert (=> d!1269172 m!4909209))

(declare-fun m!4909211 () Bool)

(assert (=> d!1269172 m!4909211))

(assert (=> d!1269172 m!4909191))

(assert (=> b!4315410 m!4909127))

(declare-fun m!4909213 () Bool)

(assert (=> b!4315410 m!4909213))

(assert (=> b!4315410 m!4909213))

(declare-fun m!4909215 () Bool)

(assert (=> b!4315410 m!4909215))

(declare-fun m!4909217 () Bool)

(assert (=> b!4315411 m!4909217))

(assert (=> b!4315358 d!1269172))

(declare-fun d!1269174 () Bool)

(declare-fun hash!1109 (Hashable!4627 K!9524) (_ BitVec 64))

(assert (=> d!1269174 (= (hash!1104 (hashF!6826 thiss!42308) key!2048) (hash!1109 (hashF!6826 thiss!42308) key!2048))))

(declare-fun bs!605772 () Bool)

(assert (= bs!605772 d!1269174))

(declare-fun m!4909219 () Bool)

(assert (=> bs!605772 m!4909219))

(assert (=> b!4315358 d!1269174))

(declare-fun d!1269176 () Bool)

(assert (=> d!1269176 (= (array_inv!5469 (_keys!5011 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) (bvsge (size!35646 (_keys!5011 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315362 d!1269176))

(declare-fun d!1269178 () Bool)

(assert (=> d!1269178 (= (array_inv!5470 (_values!4992 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) (bvsge (size!35647 (_values!4992 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4315362 d!1269178))

(declare-fun d!1269180 () Bool)

(declare-fun res!1768809 () Bool)

(declare-fun e!2684398 () Bool)

(assert (=> d!1269180 (=> res!1768809 e!2684398)))

(assert (=> d!1269180 (= res!1768809 (not ((_ is Cons!48293) lt!1534985)))))

(assert (=> d!1269180 (= (noDuplicateKeys!248 lt!1534985) e!2684398)))

(declare-fun b!4315416 () Bool)

(declare-fun e!2684399 () Bool)

(assert (=> b!4315416 (= e!2684398 e!2684399)))

(declare-fun res!1768810 () Bool)

(assert (=> b!4315416 (=> (not res!1768810) (not e!2684399))))

(assert (=> b!4315416 (= res!1768810 (not (containsKey!368 (t!355260 lt!1534985) (_1!26745 (h!53744 lt!1534985)))))))

(declare-fun b!4315417 () Bool)

(assert (=> b!4315417 (= e!2684399 (noDuplicateKeys!248 (t!355260 lt!1534985)))))

(assert (= (and d!1269180 (not res!1768809)) b!4315416))

(assert (= (and b!4315416 res!1768810) b!4315417))

(declare-fun m!4909221 () Bool)

(assert (=> b!4315416 m!4909221))

(declare-fun m!4909223 () Bool)

(assert (=> b!4315417 m!4909223))

(assert (=> b!4315356 d!1269180))

(declare-fun bs!605773 () Bool)

(declare-fun b!4315445 () Bool)

(assert (= bs!605773 (and b!4315445 b!4315354)))

(declare-fun lambda!133440 () Int)

(assert (=> bs!605773 (= lambda!133440 lambda!133434)))

(declare-fun bs!605774 () Bool)

(assert (= bs!605774 (and b!4315445 d!1269166)))

(assert (=> bs!605774 (not (= lambda!133440 lambda!133437))))

(declare-fun b!4315440 () Bool)

(assert (=> b!4315440 false))

(declare-fun lt!1535065 () Unit!67503)

(declare-fun lt!1535061 () Unit!67503)

(assert (=> b!4315440 (= lt!1535065 lt!1535061)))

(declare-fun lt!1535058 () List!48418)

(declare-fun lt!1535073 () (_ BitVec 64))

(declare-fun lt!1535062 () List!48417)

(declare-fun contains!10302 (List!48418 tuple2!46928) Bool)

(assert (=> b!4315440 (contains!10302 lt!1535058 (tuple2!46929 lt!1535073 lt!1535062))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!161 (List!48418 (_ BitVec 64) List!48417) Unit!67503)

(assert (=> b!4315440 (= lt!1535061 (lemmaGetValueByKeyImpliesContainsTuple!161 lt!1535058 lt!1535073 lt!1535062))))

(assert (=> b!4315440 (= lt!1535062 (apply!11082 (v!42556 (underlying!9652 thiss!42308)) lt!1535073))))

(assert (=> b!4315440 (= lt!1535058 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308)))))))

(declare-fun lt!1535064 () Unit!67503)

(declare-fun lt!1535059 () Unit!67503)

(assert (=> b!4315440 (= lt!1535064 lt!1535059)))

(declare-fun lt!1535072 () List!48418)

(declare-fun isDefined!7570 (Option!10269) Bool)

(assert (=> b!4315440 (isDefined!7570 (getValueByKey!279 lt!1535072 lt!1535073))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!198 (List!48418 (_ BitVec 64)) Unit!67503)

(assert (=> b!4315440 (= lt!1535059 (lemmaContainsKeyImpliesGetValueByKeyDefined!198 lt!1535072 lt!1535073))))

(assert (=> b!4315440 (= lt!1535072 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308)))))))

(declare-fun lt!1535075 () Unit!67503)

(declare-fun lt!1535070 () Unit!67503)

(assert (=> b!4315440 (= lt!1535075 lt!1535070)))

(declare-fun lt!1535057 () List!48418)

(declare-fun containsKey!369 (List!48418 (_ BitVec 64)) Bool)

(assert (=> b!4315440 (containsKey!369 lt!1535057 lt!1535073)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!150 (List!48418 (_ BitVec 64)) Unit!67503)

(assert (=> b!4315440 (= lt!1535070 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!150 lt!1535057 lt!1535073))))

(assert (=> b!4315440 (= lt!1535057 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308)))))))

(declare-fun e!2684417 () Unit!67503)

(declare-fun Unit!67505 () Unit!67503)

(assert (=> b!4315440 (= e!2684417 Unit!67505)))

(declare-fun call!298555 () (_ BitVec 64))

(declare-fun call!298558 () ListLongMap!1097)

(declare-fun call!298553 () List!48417)

(declare-fun lt!1535063 () ListLongMap!1097)

(declare-fun bm!298548 () Bool)

(declare-fun c!733651 () Bool)

(declare-fun apply!11084 (ListLongMap!1097 (_ BitVec 64)) List!48417)

(assert (=> bm!298548 (= call!298553 (apply!11084 (ite c!733651 lt!1535063 call!298558) call!298555))))

(declare-fun b!4315441 () Bool)

(assert (=> b!4315441 false))

(declare-fun lt!1535071 () Unit!67503)

(declare-fun lt!1535068 () Unit!67503)

(assert (=> b!4315441 (= lt!1535071 lt!1535068)))

(declare-fun lt!1535067 () ListLongMap!1097)

(assert (=> b!4315441 (contains!10298 (extractMap!352 (toList!2483 lt!1535067)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!149 (ListLongMap!1097 K!9524 Hashable!4627) Unit!67503)

(assert (=> b!4315441 (= lt!1535068 (lemmaInLongMapThenInGenericMap!149 lt!1535067 key!2048 (hashF!6826 thiss!42308)))))

(assert (=> b!4315441 (= lt!1535067 call!298558)))

(declare-fun e!2684415 () Unit!67503)

(declare-fun Unit!67506 () Unit!67503)

(assert (=> b!4315441 (= e!2684415 Unit!67506)))

(declare-fun d!1269182 () Bool)

(declare-fun lt!1535056 () Bool)

(assert (=> d!1269182 (= lt!1535056 (contains!10298 (map!10304 thiss!42308) key!2048))))

(declare-fun e!2684420 () Bool)

(assert (=> d!1269182 (= lt!1535056 e!2684420)))

(declare-fun res!1768817 () Bool)

(assert (=> d!1269182 (=> (not res!1768817) (not e!2684420))))

(assert (=> d!1269182 (= res!1768817 (contains!10301 (v!42556 (underlying!9652 thiss!42308)) lt!1535073))))

(declare-fun lt!1535066 () Unit!67503)

(declare-fun e!2684414 () Unit!67503)

(assert (=> d!1269182 (= lt!1535066 e!2684414)))

(assert (=> d!1269182 (= c!733651 (contains!10298 (extractMap!352 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308))))) key!2048))))

(declare-fun lt!1535069 () Unit!67503)

(declare-fun e!2684416 () Unit!67503)

(assert (=> d!1269182 (= lt!1535069 e!2684416)))

(declare-fun c!733654 () Bool)

(assert (=> d!1269182 (= c!733654 (contains!10301 (v!42556 (underlying!9652 thiss!42308)) lt!1535073))))

(assert (=> d!1269182 (= lt!1535073 (hash!1104 (hashF!6826 thiss!42308) key!2048))))

(assert (=> d!1269182 (valid!3709 thiss!42308)))

(assert (=> d!1269182 (= (contains!10299 thiss!42308 key!2048) lt!1535056)))

(declare-fun b!4315442 () Bool)

(declare-datatypes ((Option!10270 0))(
  ( (None!10269) (Some!10269 (v!42562 tuple2!46926)) )
))
(declare-fun isDefined!7571 (Option!10270) Bool)

(declare-fun getPair!149 (List!48417 K!9524) Option!10270)

(assert (=> b!4315442 (= e!2684420 (isDefined!7571 (getPair!149 (apply!11082 (v!42556 (underlying!9652 thiss!42308)) lt!1535073) key!2048)))))

(declare-fun bm!298549 () Bool)

(assert (=> bm!298549 (= call!298555 (hash!1104 (hashF!6826 thiss!42308) key!2048))))

(declare-fun b!4315443 () Bool)

(declare-fun e!2684418 () Bool)

(declare-fun call!298556 () Bool)

(assert (=> b!4315443 (= e!2684418 call!298556)))

(declare-fun b!4315444 () Bool)

(declare-fun Unit!67507 () Unit!67503)

(assert (=> b!4315444 (= e!2684417 Unit!67507)))

(declare-fun forallContained!1517 (List!48418 Int tuple2!46928) Unit!67503)

(assert (=> b!4315445 (= e!2684416 (forallContained!1517 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308)))) lambda!133440 (tuple2!46929 lt!1535073 (apply!11082 (v!42556 (underlying!9652 thiss!42308)) lt!1535073))))))

(declare-fun c!733652 () Bool)

(assert (=> b!4315445 (= c!733652 (not (contains!10302 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308)))) (tuple2!46929 lt!1535073 (apply!11082 (v!42556 (underlying!9652 thiss!42308)) lt!1535073)))))))

(declare-fun lt!1535060 () Unit!67503)

(assert (=> b!4315445 (= lt!1535060 e!2684417)))

(declare-fun b!4315446 () Bool)

(declare-fun lt!1535074 () Unit!67503)

(assert (=> b!4315446 (= e!2684414 lt!1535074)))

(assert (=> b!4315446 (= lt!1535063 call!298558)))

(declare-fun lemmaInGenericMapThenInLongMap!149 (ListLongMap!1097 K!9524 Hashable!4627) Unit!67503)

(assert (=> b!4315446 (= lt!1535074 (lemmaInGenericMapThenInLongMap!149 lt!1535063 key!2048 (hashF!6826 thiss!42308)))))

(declare-fun res!1768819 () Bool)

(declare-fun call!298554 () Bool)

(assert (=> b!4315446 (= res!1768819 call!298554)))

(declare-fun e!2684419 () Bool)

(assert (=> b!4315446 (=> (not res!1768819) (not e!2684419))))

(assert (=> b!4315446 e!2684419))

(declare-fun bm!298550 () Bool)

(declare-fun call!298557 () Option!10270)

(assert (=> bm!298550 (= call!298557 (getPair!149 call!298553 key!2048))))

(declare-fun b!4315447 () Bool)

(declare-fun Unit!67508 () Unit!67503)

(assert (=> b!4315447 (= e!2684415 Unit!67508)))

(declare-fun b!4315448 () Bool)

(declare-fun Unit!67509 () Unit!67503)

(assert (=> b!4315448 (= e!2684416 Unit!67509)))

(declare-fun b!4315449 () Bool)

(assert (=> b!4315449 (= e!2684414 e!2684415)))

(declare-fun res!1768818 () Bool)

(assert (=> b!4315449 (= res!1768818 call!298554)))

(assert (=> b!4315449 (=> (not res!1768818) (not e!2684418))))

(declare-fun c!733653 () Bool)

(assert (=> b!4315449 (= c!733653 e!2684418)))

(declare-fun b!4315450 () Bool)

(assert (=> b!4315450 (= e!2684419 call!298556)))

(declare-fun bm!298551 () Bool)

(assert (=> bm!298551 (= call!298554 (contains!10300 (ite c!733651 lt!1535063 call!298558) call!298555))))

(declare-fun bm!298552 () Bool)

(assert (=> bm!298552 (= call!298558 (map!10303 (v!42556 (underlying!9652 thiss!42308))))))

(declare-fun bm!298553 () Bool)

(assert (=> bm!298553 (= call!298556 (isDefined!7571 call!298557))))

(assert (= (and d!1269182 c!733654) b!4315445))

(assert (= (and d!1269182 (not c!733654)) b!4315448))

(assert (= (and b!4315445 c!733652) b!4315440))

(assert (= (and b!4315445 (not c!733652)) b!4315444))

(assert (= (and d!1269182 c!733651) b!4315446))

(assert (= (and d!1269182 (not c!733651)) b!4315449))

(assert (= (and b!4315446 res!1768819) b!4315450))

(assert (= (and b!4315449 res!1768818) b!4315443))

(assert (= (and b!4315449 c!733653) b!4315441))

(assert (= (and b!4315449 (not c!733653)) b!4315447))

(assert (= (or b!4315446 b!4315449 b!4315443 b!4315441) bm!298552))

(assert (= (or b!4315446 b!4315450 b!4315449 b!4315443) bm!298549))

(assert (= (or b!4315450 b!4315443) bm!298548))

(assert (= (or b!4315446 b!4315449) bm!298551))

(assert (= (or b!4315450 b!4315443) bm!298550))

(assert (= (or b!4315450 b!4315443) bm!298553))

(assert (= (and d!1269182 res!1768817) b!4315442))

(declare-fun m!4909225 () Bool)

(assert (=> bm!298551 m!4909225))

(declare-fun m!4909227 () Bool)

(assert (=> b!4315441 m!4909227))

(assert (=> b!4315441 m!4909227))

(declare-fun m!4909229 () Bool)

(assert (=> b!4315441 m!4909229))

(declare-fun m!4909231 () Bool)

(assert (=> b!4315441 m!4909231))

(assert (=> bm!298552 m!4909127))

(declare-fun m!4909233 () Bool)

(assert (=> b!4315446 m!4909233))

(declare-fun m!4909235 () Bool)

(assert (=> b!4315442 m!4909235))

(assert (=> b!4315442 m!4909235))

(declare-fun m!4909237 () Bool)

(assert (=> b!4315442 m!4909237))

(assert (=> b!4315442 m!4909237))

(declare-fun m!4909239 () Bool)

(assert (=> b!4315442 m!4909239))

(declare-fun m!4909241 () Bool)

(assert (=> bm!298553 m!4909241))

(assert (=> b!4315445 m!4909127))

(assert (=> b!4315445 m!4909235))

(declare-fun m!4909243 () Bool)

(assert (=> b!4315445 m!4909243))

(declare-fun m!4909245 () Bool)

(assert (=> b!4315445 m!4909245))

(declare-fun m!4909247 () Bool)

(assert (=> b!4315440 m!4909247))

(declare-fun m!4909249 () Bool)

(assert (=> b!4315440 m!4909249))

(assert (=> b!4315440 m!4909235))

(declare-fun m!4909251 () Bool)

(assert (=> b!4315440 m!4909251))

(assert (=> b!4315440 m!4909127))

(declare-fun m!4909253 () Bool)

(assert (=> b!4315440 m!4909253))

(assert (=> b!4315440 m!4909249))

(declare-fun m!4909255 () Bool)

(assert (=> b!4315440 m!4909255))

(declare-fun m!4909257 () Bool)

(assert (=> b!4315440 m!4909257))

(declare-fun m!4909259 () Bool)

(assert (=> b!4315440 m!4909259))

(assert (=> bm!298549 m!4909117))

(declare-fun m!4909261 () Bool)

(assert (=> d!1269182 m!4909261))

(assert (=> d!1269182 m!4909261))

(declare-fun m!4909263 () Bool)

(assert (=> d!1269182 m!4909263))

(assert (=> d!1269182 m!4909131))

(declare-fun m!4909265 () Bool)

(assert (=> d!1269182 m!4909265))

(assert (=> d!1269182 m!4909117))

(assert (=> d!1269182 m!4909129))

(assert (=> d!1269182 m!4909127))

(assert (=> d!1269182 m!4909129))

(declare-fun m!4909267 () Bool)

(assert (=> d!1269182 m!4909267))

(declare-fun m!4909269 () Bool)

(assert (=> bm!298548 m!4909269))

(declare-fun m!4909271 () Bool)

(assert (=> bm!298550 m!4909271))

(assert (=> b!4315361 d!1269182))

(declare-fun d!1269184 () Bool)

(declare-fun map!10305 (LongMapFixedSize!9422) ListLongMap!1097)

(assert (=> d!1269184 (= (map!10303 (v!42556 (underlying!9652 thiss!42308))) (map!10305 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308))))))))

(declare-fun bs!605775 () Bool)

(assert (= bs!605775 d!1269184))

(declare-fun m!4909273 () Bool)

(assert (=> bs!605775 m!4909273))

(assert (=> b!4315361 d!1269184))

(declare-fun d!1269186 () Bool)

(declare-fun lt!1535078 () ListMap!1763)

(declare-fun invariantList!588 (List!48417) Bool)

(assert (=> d!1269186 (invariantList!588 (toList!2484 lt!1535078))))

(assert (=> d!1269186 (= lt!1535078 (extractMap!352 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308))))))))

(assert (=> d!1269186 (valid!3709 thiss!42308)))

(assert (=> d!1269186 (= (map!10304 thiss!42308) lt!1535078)))

(declare-fun bs!605776 () Bool)

(assert (= bs!605776 d!1269186))

(declare-fun m!4909275 () Bool)

(assert (=> bs!605776 m!4909275))

(assert (=> bs!605776 m!4909127))

(assert (=> bs!605776 m!4909261))

(assert (=> bs!605776 m!4909131))

(assert (=> b!4315361 d!1269186))

(declare-fun bs!605777 () Bool)

(declare-fun d!1269188 () Bool)

(assert (= bs!605777 (and d!1269188 b!4315354)))

(declare-fun lambda!133441 () Int)

(assert (=> bs!605777 (not (= lambda!133441 lambda!133434))))

(declare-fun bs!605778 () Bool)

(assert (= bs!605778 (and d!1269188 d!1269166)))

(assert (=> bs!605778 (= lambda!133441 lambda!133437)))

(declare-fun bs!605779 () Bool)

(assert (= bs!605779 (and d!1269188 b!4315445)))

(assert (=> bs!605779 (not (= lambda!133441 lambda!133440))))

(assert (=> d!1269188 true))

(assert (=> d!1269188 (= (allKeysSameHashInMap!368 lt!1534989 (hashF!6826 thiss!42308)) (forall!8778 (toList!2483 lt!1534989) lambda!133441))))

(declare-fun bs!605780 () Bool)

(assert (= bs!605780 d!1269188))

(declare-fun m!4909277 () Bool)

(assert (=> bs!605780 m!4909277))

(assert (=> b!4315352 d!1269188))

(declare-fun d!1269190 () Bool)

(declare-fun res!1768824 () Bool)

(declare-fun e!2684425 () Bool)

(assert (=> d!1269190 (=> res!1768824 e!2684425)))

(assert (=> d!1269190 (= res!1768824 (and ((_ is Cons!48293) lt!1534992) (= (_1!26745 (h!53744 lt!1534992)) key!2048)))))

(assert (=> d!1269190 (= (containsKey!368 lt!1534992 key!2048) e!2684425)))

(declare-fun b!4315455 () Bool)

(declare-fun e!2684426 () Bool)

(assert (=> b!4315455 (= e!2684425 e!2684426)))

(declare-fun res!1768825 () Bool)

(assert (=> b!4315455 (=> (not res!1768825) (not e!2684426))))

(assert (=> b!4315455 (= res!1768825 ((_ is Cons!48293) lt!1534992))))

(declare-fun b!4315456 () Bool)

(assert (=> b!4315456 (= e!2684426 (containsKey!368 (t!355260 lt!1534992) key!2048))))

(assert (= (and d!1269190 (not res!1768824)) b!4315455))

(assert (= (and b!4315455 res!1768825) b!4315456))

(declare-fun m!4909279 () Bool)

(assert (=> b!4315456 m!4909279))

(assert (=> b!4315359 d!1269190))

(declare-fun bs!605781 () Bool)

(declare-fun b!4315461 () Bool)

(assert (= bs!605781 (and b!4315461 b!4315354)))

(declare-fun lambda!133444 () Int)

(assert (=> bs!605781 (= lambda!133444 lambda!133434)))

(declare-fun bs!605782 () Bool)

(assert (= bs!605782 (and b!4315461 d!1269166)))

(assert (=> bs!605782 (not (= lambda!133444 lambda!133437))))

(declare-fun bs!605783 () Bool)

(assert (= bs!605783 (and b!4315461 b!4315445)))

(assert (=> bs!605783 (= lambda!133444 lambda!133440)))

(declare-fun bs!605784 () Bool)

(assert (= bs!605784 (and b!4315461 d!1269188)))

(assert (=> bs!605784 (not (= lambda!133444 lambda!133441))))

(declare-fun d!1269192 () Bool)

(declare-fun res!1768830 () Bool)

(declare-fun e!2684429 () Bool)

(assert (=> d!1269192 (=> (not res!1768830) (not e!2684429))))

(assert (=> d!1269192 (= res!1768830 (valid!3710 (v!42556 (underlying!9652 thiss!42308))))))

(assert (=> d!1269192 (= (valid!3709 thiss!42308) e!2684429)))

(declare-fun res!1768831 () Bool)

(assert (=> b!4315461 (=> (not res!1768831) (not e!2684429))))

(assert (=> b!4315461 (= res!1768831 (forall!8778 (toList!2483 (map!10303 (v!42556 (underlying!9652 thiss!42308)))) lambda!133444))))

(declare-fun b!4315462 () Bool)

(assert (=> b!4315462 (= e!2684429 (allKeysSameHashInMap!368 (map!10303 (v!42556 (underlying!9652 thiss!42308))) (hashF!6826 thiss!42308)))))

(assert (= (and d!1269192 res!1768830) b!4315461))

(assert (= (and b!4315461 res!1768831) b!4315462))

(assert (=> d!1269192 m!4909191))

(assert (=> b!4315461 m!4909127))

(declare-fun m!4909281 () Bool)

(assert (=> b!4315461 m!4909281))

(assert (=> b!4315462 m!4909127))

(assert (=> b!4315462 m!4909127))

(declare-fun m!4909283 () Bool)

(assert (=> b!4315462 m!4909283))

(assert (=> b!4315364 d!1269192))

(declare-fun d!1269194 () Bool)

(declare-fun res!1768836 () Bool)

(declare-fun e!2684434 () Bool)

(assert (=> d!1269194 (=> res!1768836 e!2684434)))

(assert (=> d!1269194 (= res!1768836 ((_ is Nil!48294) (toList!2483 lt!1534989)))))

(assert (=> d!1269194 (= (forall!8778 (toList!2483 lt!1534989) lambda!133434) e!2684434)))

(declare-fun b!4315467 () Bool)

(declare-fun e!2684435 () Bool)

(assert (=> b!4315467 (= e!2684434 e!2684435)))

(declare-fun res!1768837 () Bool)

(assert (=> b!4315467 (=> (not res!1768837) (not e!2684435))))

(declare-fun dynLambda!20469 (Int tuple2!46928) Bool)

(assert (=> b!4315467 (= res!1768837 (dynLambda!20469 lambda!133434 (h!53745 (toList!2483 lt!1534989))))))

(declare-fun b!4315468 () Bool)

(assert (=> b!4315468 (= e!2684435 (forall!8778 (t!355261 (toList!2483 lt!1534989)) lambda!133434))))

(assert (= (and d!1269194 (not res!1768836)) b!4315467))

(assert (= (and b!4315467 res!1768837) b!4315468))

(declare-fun b_lambda!126893 () Bool)

(assert (=> (not b_lambda!126893) (not b!4315467)))

(declare-fun m!4909285 () Bool)

(assert (=> b!4315467 m!4909285))

(declare-fun m!4909287 () Bool)

(assert (=> b!4315468 m!4909287))

(assert (=> b!4315354 d!1269194))

(declare-fun bs!605785 () Bool)

(declare-fun d!1269196 () Bool)

(assert (= bs!605785 (and d!1269196 d!1269188)))

(declare-fun lambda!133447 () Int)

(assert (=> bs!605785 (not (= lambda!133447 lambda!133441))))

(declare-fun bs!605786 () Bool)

(assert (= bs!605786 (and d!1269196 b!4315445)))

(assert (=> bs!605786 (= lambda!133447 lambda!133440)))

(declare-fun bs!605787 () Bool)

(assert (= bs!605787 (and d!1269196 b!4315461)))

(assert (=> bs!605787 (= lambda!133447 lambda!133444)))

(declare-fun bs!605788 () Bool)

(assert (= bs!605788 (and d!1269196 b!4315354)))

(assert (=> bs!605788 (= lambda!133447 lambda!133434)))

(declare-fun bs!605789 () Bool)

(assert (= bs!605789 (and d!1269196 d!1269166)))

(assert (=> bs!605789 (not (= lambda!133447 lambda!133437))))

(assert (=> d!1269196 (eq!149 (extractMap!352 (toList!2483 (+!306 lt!1534983 (tuple2!46929 lt!1534993 lt!1534985)))) (+!305 (extractMap!352 (toList!2483 lt!1534983)) (tuple2!46927 key!2048 v!9179)))))

(declare-fun lt!1535081 () Unit!67503)

(declare-fun choose!26331 (ListLongMap!1097 (_ BitVec 64) List!48417 K!9524 V!9726 Hashable!4627) Unit!67503)

(assert (=> d!1269196 (= lt!1535081 (choose!26331 lt!1534983 lt!1534993 lt!1534985 key!2048 v!9179 (hashF!6826 thiss!42308)))))

(assert (=> d!1269196 (forall!8778 (toList!2483 lt!1534983) lambda!133447)))

(assert (=> d!1269196 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!68 lt!1534983 lt!1534993 lt!1534985 key!2048 v!9179 (hashF!6826 thiss!42308)) lt!1535081)))

(declare-fun bs!605790 () Bool)

(assert (= bs!605790 d!1269196))

(declare-fun m!4909289 () Bool)

(assert (=> bs!605790 m!4909289))

(assert (=> bs!605790 m!4909289))

(declare-fun m!4909291 () Bool)

(assert (=> bs!605790 m!4909291))

(declare-fun m!4909293 () Bool)

(assert (=> bs!605790 m!4909293))

(declare-fun m!4909295 () Bool)

(assert (=> bs!605790 m!4909295))

(assert (=> bs!605790 m!4909139))

(assert (=> bs!605790 m!4909291))

(assert (=> bs!605790 m!4909157))

(declare-fun m!4909297 () Bool)

(assert (=> bs!605790 m!4909297))

(assert (=> bs!605790 m!4909139))

(assert (=> b!4315354 d!1269196))

(declare-fun d!1269198 () Bool)

(declare-fun e!2684438 () Bool)

(assert (=> d!1269198 e!2684438))

(declare-fun res!1768842 () Bool)

(assert (=> d!1269198 (=> (not res!1768842) (not e!2684438))))

(declare-fun lt!1535090 () ListMap!1763)

(assert (=> d!1269198 (= res!1768842 (contains!10298 lt!1535090 (_1!26745 lt!1534986)))))

(declare-fun lt!1535092 () List!48417)

(assert (=> d!1269198 (= lt!1535090 (ListMap!1764 lt!1535092))))

(declare-fun lt!1535091 () Unit!67503)

(declare-fun lt!1535093 () Unit!67503)

(assert (=> d!1269198 (= lt!1535091 lt!1535093)))

(declare-datatypes ((Option!10271 0))(
  ( (None!10270) (Some!10270 (v!42563 V!9726)) )
))
(declare-fun getValueByKey!280 (List!48417 K!9524) Option!10271)

(assert (=> d!1269198 (= (getValueByKey!280 lt!1535092 (_1!26745 lt!1534986)) (Some!10270 (_2!26745 lt!1534986)))))

(declare-fun lemmaContainsTupThenGetReturnValue!88 (List!48417 K!9524 V!9726) Unit!67503)

(assert (=> d!1269198 (= lt!1535093 (lemmaContainsTupThenGetReturnValue!88 lt!1535092 (_1!26745 lt!1534986) (_2!26745 lt!1534986)))))

(declare-fun insertNoDuplicatedKeys!48 (List!48417 K!9524 V!9726) List!48417)

(assert (=> d!1269198 (= lt!1535092 (insertNoDuplicatedKeys!48 (toList!2484 (extractMap!352 (toList!2483 lt!1534983))) (_1!26745 lt!1534986) (_2!26745 lt!1534986)))))

(assert (=> d!1269198 (= (+!305 (extractMap!352 (toList!2483 lt!1534983)) lt!1534986) lt!1535090)))

(declare-fun b!4315473 () Bool)

(declare-fun res!1768843 () Bool)

(assert (=> b!4315473 (=> (not res!1768843) (not e!2684438))))

(assert (=> b!4315473 (= res!1768843 (= (getValueByKey!280 (toList!2484 lt!1535090) (_1!26745 lt!1534986)) (Some!10270 (_2!26745 lt!1534986))))))

(declare-fun b!4315474 () Bool)

(declare-fun contains!10303 (List!48417 tuple2!46926) Bool)

(assert (=> b!4315474 (= e!2684438 (contains!10303 (toList!2484 lt!1535090) lt!1534986))))

(assert (= (and d!1269198 res!1768842) b!4315473))

(assert (= (and b!4315473 res!1768843) b!4315474))

(declare-fun m!4909299 () Bool)

(assert (=> d!1269198 m!4909299))

(declare-fun m!4909301 () Bool)

(assert (=> d!1269198 m!4909301))

(declare-fun m!4909303 () Bool)

(assert (=> d!1269198 m!4909303))

(declare-fun m!4909305 () Bool)

(assert (=> d!1269198 m!4909305))

(declare-fun m!4909307 () Bool)

(assert (=> b!4315473 m!4909307))

(declare-fun m!4909309 () Bool)

(assert (=> b!4315474 m!4909309))

(assert (=> b!4315354 d!1269198))

(declare-fun d!1269200 () Bool)

(declare-fun res!1768844 () Bool)

(declare-fun e!2684439 () Bool)

(assert (=> d!1269200 (=> res!1768844 e!2684439)))

(assert (=> d!1269200 (= res!1768844 ((_ is Nil!48294) (toList!2483 lt!1534987)))))

(assert (=> d!1269200 (= (forall!8778 (toList!2483 lt!1534987) lambda!133434) e!2684439)))

(declare-fun b!4315475 () Bool)

(declare-fun e!2684440 () Bool)

(assert (=> b!4315475 (= e!2684439 e!2684440)))

(declare-fun res!1768845 () Bool)

(assert (=> b!4315475 (=> (not res!1768845) (not e!2684440))))

(assert (=> b!4315475 (= res!1768845 (dynLambda!20469 lambda!133434 (h!53745 (toList!2483 lt!1534987))))))

(declare-fun b!4315476 () Bool)

(assert (=> b!4315476 (= e!2684440 (forall!8778 (t!355261 (toList!2483 lt!1534987)) lambda!133434))))

(assert (= (and d!1269200 (not res!1768844)) b!4315475))

(assert (= (and b!4315475 res!1768845) b!4315476))

(declare-fun b_lambda!126895 () Bool)

(assert (=> (not b_lambda!126895) (not b!4315475)))

(declare-fun m!4909311 () Bool)

(assert (=> b!4315475 m!4909311))

(declare-fun m!4909313 () Bool)

(assert (=> b!4315476 m!4909313))

(assert (=> b!4315354 d!1269200))

(declare-fun d!1269202 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7562 (List!48417) (InoxSet tuple2!46926))

(assert (=> d!1269202 (= (eq!149 (extractMap!352 (toList!2483 lt!1534989)) (+!305 (extractMap!352 (toList!2483 lt!1534983)) lt!1534986)) (= (content!7562 (toList!2484 (extractMap!352 (toList!2483 lt!1534989)))) (content!7562 (toList!2484 (+!305 (extractMap!352 (toList!2483 lt!1534983)) lt!1534986)))))))

(declare-fun bs!605791 () Bool)

(assert (= bs!605791 d!1269202))

(declare-fun m!4909315 () Bool)

(assert (=> bs!605791 m!4909315))

(declare-fun m!4909317 () Bool)

(assert (=> bs!605791 m!4909317))

(assert (=> b!4315354 d!1269202))

(declare-fun bs!605792 () Bool)

(declare-fun d!1269204 () Bool)

(assert (= bs!605792 (and d!1269204 d!1269196)))

(declare-fun lambda!133450 () Int)

(assert (=> bs!605792 (= lambda!133450 lambda!133447)))

(declare-fun bs!605793 () Bool)

(assert (= bs!605793 (and d!1269204 d!1269188)))

(assert (=> bs!605793 (not (= lambda!133450 lambda!133441))))

(declare-fun bs!605794 () Bool)

(assert (= bs!605794 (and d!1269204 b!4315445)))

(assert (=> bs!605794 (= lambda!133450 lambda!133440)))

(declare-fun bs!605795 () Bool)

(assert (= bs!605795 (and d!1269204 b!4315461)))

(assert (=> bs!605795 (= lambda!133450 lambda!133444)))

(declare-fun bs!605796 () Bool)

(assert (= bs!605796 (and d!1269204 b!4315354)))

(assert (=> bs!605796 (= lambda!133450 lambda!133434)))

(declare-fun bs!605797 () Bool)

(assert (= bs!605797 (and d!1269204 d!1269166)))

(assert (=> bs!605797 (not (= lambda!133450 lambda!133437))))

(declare-fun lt!1535096 () ListMap!1763)

(assert (=> d!1269204 (invariantList!588 (toList!2484 lt!1535096))))

(declare-fun e!2684443 () ListMap!1763)

(assert (=> d!1269204 (= lt!1535096 e!2684443)))

(declare-fun c!733657 () Bool)

(assert (=> d!1269204 (= c!733657 ((_ is Cons!48294) (toList!2483 lt!1534983)))))

(assert (=> d!1269204 (forall!8778 (toList!2483 lt!1534983) lambda!133450)))

(assert (=> d!1269204 (= (extractMap!352 (toList!2483 lt!1534983)) lt!1535096)))

(declare-fun b!4315481 () Bool)

(declare-fun addToMapMapFromBucket!46 (List!48417 ListMap!1763) ListMap!1763)

(assert (=> b!4315481 (= e!2684443 (addToMapMapFromBucket!46 (_2!26746 (h!53745 (toList!2483 lt!1534983))) (extractMap!352 (t!355261 (toList!2483 lt!1534983)))))))

(declare-fun b!4315482 () Bool)

(assert (=> b!4315482 (= e!2684443 (ListMap!1764 Nil!48293))))

(assert (= (and d!1269204 c!733657) b!4315481))

(assert (= (and d!1269204 (not c!733657)) b!4315482))

(declare-fun m!4909319 () Bool)

(assert (=> d!1269204 m!4909319))

(declare-fun m!4909321 () Bool)

(assert (=> d!1269204 m!4909321))

(declare-fun m!4909323 () Bool)

(assert (=> b!4315481 m!4909323))

(assert (=> b!4315481 m!4909323))

(declare-fun m!4909325 () Bool)

(assert (=> b!4315481 m!4909325))

(assert (=> b!4315354 d!1269204))

(declare-fun d!1269206 () Bool)

(declare-fun e!2684446 () Bool)

(assert (=> d!1269206 e!2684446))

(declare-fun res!1768851 () Bool)

(assert (=> d!1269206 (=> (not res!1768851) (not e!2684446))))

(declare-fun lt!1535108 () ListLongMap!1097)

(assert (=> d!1269206 (= res!1768851 (contains!10300 lt!1535108 (_1!26746 (tuple2!46929 lt!1534993 lt!1534985))))))

(declare-fun lt!1535105 () List!48418)

(assert (=> d!1269206 (= lt!1535108 (ListLongMap!1098 lt!1535105))))

(declare-fun lt!1535106 () Unit!67503)

(declare-fun lt!1535107 () Unit!67503)

(assert (=> d!1269206 (= lt!1535106 lt!1535107)))

(assert (=> d!1269206 (= (getValueByKey!279 lt!1535105 (_1!26746 (tuple2!46929 lt!1534993 lt!1534985))) (Some!10268 (_2!26746 (tuple2!46929 lt!1534993 lt!1534985))))))

(declare-fun lemmaContainsTupThenGetReturnValue!89 (List!48418 (_ BitVec 64) List!48417) Unit!67503)

(assert (=> d!1269206 (= lt!1535107 (lemmaContainsTupThenGetReturnValue!89 lt!1535105 (_1!26746 (tuple2!46929 lt!1534993 lt!1534985)) (_2!26746 (tuple2!46929 lt!1534993 lt!1534985))))))

(declare-fun insertStrictlySorted!49 (List!48418 (_ BitVec 64) List!48417) List!48418)

(assert (=> d!1269206 (= lt!1535105 (insertStrictlySorted!49 (toList!2483 lt!1534983) (_1!26746 (tuple2!46929 lt!1534993 lt!1534985)) (_2!26746 (tuple2!46929 lt!1534993 lt!1534985))))))

(assert (=> d!1269206 (= (+!306 lt!1534983 (tuple2!46929 lt!1534993 lt!1534985)) lt!1535108)))

(declare-fun b!4315487 () Bool)

(declare-fun res!1768850 () Bool)

(assert (=> b!4315487 (=> (not res!1768850) (not e!2684446))))

(assert (=> b!4315487 (= res!1768850 (= (getValueByKey!279 (toList!2483 lt!1535108) (_1!26746 (tuple2!46929 lt!1534993 lt!1534985))) (Some!10268 (_2!26746 (tuple2!46929 lt!1534993 lt!1534985)))))))

(declare-fun b!4315488 () Bool)

(assert (=> b!4315488 (= e!2684446 (contains!10302 (toList!2483 lt!1535108) (tuple2!46929 lt!1534993 lt!1534985)))))

(assert (= (and d!1269206 res!1768851) b!4315487))

(assert (= (and b!4315487 res!1768850) b!4315488))

(declare-fun m!4909327 () Bool)

(assert (=> d!1269206 m!4909327))

(declare-fun m!4909329 () Bool)

(assert (=> d!1269206 m!4909329))

(declare-fun m!4909331 () Bool)

(assert (=> d!1269206 m!4909331))

(declare-fun m!4909333 () Bool)

(assert (=> d!1269206 m!4909333))

(declare-fun m!4909335 () Bool)

(assert (=> b!4315487 m!4909335))

(declare-fun m!4909337 () Bool)

(assert (=> b!4315488 m!4909337))

(assert (=> b!4315354 d!1269206))

(declare-fun b!4315507 () Bool)

(declare-datatypes ((List!48419 0))(
  ( (Nil!48295) (Cons!48295 (h!53747 K!9524) (t!355264 List!48419)) )
))
(declare-fun e!2684464 () List!48419)

(declare-fun getKeysList!51 (List!48417) List!48419)

(assert (=> b!4315507 (= e!2684464 (getKeysList!51 (toList!2484 lt!1534995)))))

(declare-fun b!4315508 () Bool)

(declare-fun e!2684463 () Unit!67503)

(declare-fun lt!1535129 () Unit!67503)

(assert (=> b!4315508 (= e!2684463 lt!1535129)))

(declare-fun lt!1535127 () Unit!67503)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!199 (List!48417 K!9524) Unit!67503)

(assert (=> b!4315508 (= lt!1535127 (lemmaContainsKeyImpliesGetValueByKeyDefined!199 (toList!2484 lt!1534995) key!2048))))

(declare-fun isDefined!7572 (Option!10271) Bool)

(assert (=> b!4315508 (isDefined!7572 (getValueByKey!280 (toList!2484 lt!1534995) key!2048))))

(declare-fun lt!1535128 () Unit!67503)

(assert (=> b!4315508 (= lt!1535128 lt!1535127)))

(declare-fun lemmaInListThenGetKeysListContains!48 (List!48417 K!9524) Unit!67503)

(assert (=> b!4315508 (= lt!1535129 (lemmaInListThenGetKeysListContains!48 (toList!2484 lt!1534995) key!2048))))

(declare-fun call!298561 () Bool)

(assert (=> b!4315508 call!298561))

(declare-fun b!4315509 () Bool)

(declare-fun e!2684462 () Bool)

(declare-fun e!2684461 () Bool)

(assert (=> b!4315509 (= e!2684462 e!2684461)))

(declare-fun res!1768858 () Bool)

(assert (=> b!4315509 (=> (not res!1768858) (not e!2684461))))

(assert (=> b!4315509 (= res!1768858 (isDefined!7572 (getValueByKey!280 (toList!2484 lt!1534995) key!2048)))))

(declare-fun b!4315510 () Bool)

(assert (=> b!4315510 false))

(declare-fun lt!1535132 () Unit!67503)

(declare-fun lt!1535131 () Unit!67503)

(assert (=> b!4315510 (= lt!1535132 lt!1535131)))

(declare-fun containsKey!370 (List!48417 K!9524) Bool)

(assert (=> b!4315510 (containsKey!370 (toList!2484 lt!1534995) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!48 (List!48417 K!9524) Unit!67503)

(assert (=> b!4315510 (= lt!1535131 (lemmaInGetKeysListThenContainsKey!48 (toList!2484 lt!1534995) key!2048))))

(declare-fun e!2684460 () Unit!67503)

(declare-fun Unit!67510 () Unit!67503)

(assert (=> b!4315510 (= e!2684460 Unit!67510)))

(declare-fun b!4315511 () Bool)

(assert (=> b!4315511 (= e!2684463 e!2684460)))

(declare-fun c!733665 () Bool)

(assert (=> b!4315511 (= c!733665 call!298561)))

(declare-fun b!4315512 () Bool)

(declare-fun keys!16126 (ListMap!1763) List!48419)

(assert (=> b!4315512 (= e!2684464 (keys!16126 lt!1534995))))

(declare-fun b!4315513 () Bool)

(declare-fun Unit!67511 () Unit!67503)

(assert (=> b!4315513 (= e!2684460 Unit!67511)))

(declare-fun d!1269208 () Bool)

(assert (=> d!1269208 e!2684462))

(declare-fun res!1768859 () Bool)

(assert (=> d!1269208 (=> res!1768859 e!2684462)))

(declare-fun e!2684459 () Bool)

(assert (=> d!1269208 (= res!1768859 e!2684459)))

(declare-fun res!1768860 () Bool)

(assert (=> d!1269208 (=> (not res!1768860) (not e!2684459))))

(declare-fun lt!1535130 () Bool)

(assert (=> d!1269208 (= res!1768860 (not lt!1535130))))

(declare-fun lt!1535125 () Bool)

(assert (=> d!1269208 (= lt!1535130 lt!1535125)))

(declare-fun lt!1535126 () Unit!67503)

(assert (=> d!1269208 (= lt!1535126 e!2684463)))

(declare-fun c!733664 () Bool)

(assert (=> d!1269208 (= c!733664 lt!1535125)))

(assert (=> d!1269208 (= lt!1535125 (containsKey!370 (toList!2484 lt!1534995) key!2048))))

(assert (=> d!1269208 (= (contains!10298 lt!1534995 key!2048) lt!1535130)))

(declare-fun b!4315514 () Bool)

(declare-fun contains!10304 (List!48419 K!9524) Bool)

(assert (=> b!4315514 (= e!2684459 (not (contains!10304 (keys!16126 lt!1534995) key!2048)))))

(declare-fun bm!298556 () Bool)

(assert (=> bm!298556 (= call!298561 (contains!10304 e!2684464 key!2048))))

(declare-fun c!733666 () Bool)

(assert (=> bm!298556 (= c!733666 c!733664)))

(declare-fun b!4315515 () Bool)

(assert (=> b!4315515 (= e!2684461 (contains!10304 (keys!16126 lt!1534995) key!2048))))

(assert (= (and d!1269208 c!733664) b!4315508))

(assert (= (and d!1269208 (not c!733664)) b!4315511))

(assert (= (and b!4315511 c!733665) b!4315510))

(assert (= (and b!4315511 (not c!733665)) b!4315513))

(assert (= (or b!4315508 b!4315511) bm!298556))

(assert (= (and bm!298556 c!733666) b!4315507))

(assert (= (and bm!298556 (not c!733666)) b!4315512))

(assert (= (and d!1269208 res!1768860) b!4315514))

(assert (= (and d!1269208 (not res!1768859)) b!4315509))

(assert (= (and b!4315509 res!1768858) b!4315515))

(declare-fun m!4909339 () Bool)

(assert (=> b!4315510 m!4909339))

(declare-fun m!4909341 () Bool)

(assert (=> b!4315510 m!4909341))

(declare-fun m!4909343 () Bool)

(assert (=> b!4315514 m!4909343))

(assert (=> b!4315514 m!4909343))

(declare-fun m!4909345 () Bool)

(assert (=> b!4315514 m!4909345))

(declare-fun m!4909347 () Bool)

(assert (=> b!4315507 m!4909347))

(declare-fun m!4909349 () Bool)

(assert (=> b!4315509 m!4909349))

(assert (=> b!4315509 m!4909349))

(declare-fun m!4909351 () Bool)

(assert (=> b!4315509 m!4909351))

(assert (=> b!4315515 m!4909343))

(assert (=> b!4315515 m!4909343))

(assert (=> b!4315515 m!4909345))

(assert (=> b!4315512 m!4909343))

(declare-fun m!4909353 () Bool)

(assert (=> bm!298556 m!4909353))

(declare-fun m!4909355 () Bool)

(assert (=> b!4315508 m!4909355))

(assert (=> b!4315508 m!4909349))

(assert (=> b!4315508 m!4909349))

(assert (=> b!4315508 m!4909351))

(declare-fun m!4909357 () Bool)

(assert (=> b!4315508 m!4909357))

(assert (=> d!1269208 m!4909339))

(assert (=> b!4315354 d!1269208))

(declare-fun d!1269210 () Bool)

(declare-fun res!1768861 () Bool)

(declare-fun e!2684465 () Bool)

(assert (=> d!1269210 (=> res!1768861 e!2684465)))

(assert (=> d!1269210 (= res!1768861 (not ((_ is Cons!48293) lt!1534992)))))

(assert (=> d!1269210 (= (noDuplicateKeys!248 lt!1534992) e!2684465)))

(declare-fun b!4315516 () Bool)

(declare-fun e!2684466 () Bool)

(assert (=> b!4315516 (= e!2684465 e!2684466)))

(declare-fun res!1768862 () Bool)

(assert (=> b!4315516 (=> (not res!1768862) (not e!2684466))))

(assert (=> b!4315516 (= res!1768862 (not (containsKey!368 (t!355260 lt!1534992) (_1!26745 (h!53744 lt!1534992)))))))

(declare-fun b!4315517 () Bool)

(assert (=> b!4315517 (= e!2684466 (noDuplicateKeys!248 (t!355260 lt!1534992)))))

(assert (= (and d!1269210 (not res!1768861)) b!4315516))

(assert (= (and b!4315516 res!1768862) b!4315517))

(declare-fun m!4909359 () Bool)

(assert (=> b!4315516 m!4909359))

(declare-fun m!4909361 () Bool)

(assert (=> b!4315517 m!4909361))

(assert (=> b!4315354 d!1269210))

(declare-fun bs!605798 () Bool)

(declare-fun d!1269212 () Bool)

(assert (= bs!605798 (and d!1269212 d!1269196)))

(declare-fun lambda!133455 () Int)

(assert (=> bs!605798 (= lambda!133455 lambda!133447)))

(declare-fun bs!605799 () Bool)

(assert (= bs!605799 (and d!1269212 d!1269188)))

(assert (=> bs!605799 (not (= lambda!133455 lambda!133441))))

(declare-fun bs!605800 () Bool)

(assert (= bs!605800 (and d!1269212 b!4315445)))

(assert (=> bs!605800 (= lambda!133455 lambda!133440)))

(declare-fun bs!605801 () Bool)

(assert (= bs!605801 (and d!1269212 b!4315461)))

(assert (=> bs!605801 (= lambda!133455 lambda!133444)))

(declare-fun bs!605802 () Bool)

(assert (= bs!605802 (and d!1269212 b!4315354)))

(assert (=> bs!605802 (= lambda!133455 lambda!133434)))

(declare-fun bs!605803 () Bool)

(assert (= bs!605803 (and d!1269212 d!1269204)))

(assert (=> bs!605803 (= lambda!133455 lambda!133450)))

(declare-fun bs!605804 () Bool)

(assert (= bs!605804 (and d!1269212 d!1269166)))

(assert (=> bs!605804 (not (= lambda!133455 lambda!133437))))

(declare-fun e!2684469 () Bool)

(assert (=> d!1269212 e!2684469))

(declare-fun res!1768865 () Bool)

(assert (=> d!1269212 (=> (not res!1768865) (not e!2684469))))

(declare-fun lt!1535138 () ListLongMap!1097)

(assert (=> d!1269212 (= res!1768865 (forall!8778 (toList!2483 lt!1535138) lambda!133455))))

(assert (=> d!1269212 (= lt!1535138 (+!306 lt!1534983 (tuple2!46929 lt!1534993 lt!1534985)))))

(declare-fun lt!1535137 () Unit!67503)

(declare-fun choose!26332 (ListLongMap!1097 (_ BitVec 64) List!48417 Hashable!4627) Unit!67503)

(assert (=> d!1269212 (= lt!1535137 (choose!26332 lt!1534983 lt!1534993 lt!1534985 (hashF!6826 thiss!42308)))))

(assert (=> d!1269212 (forall!8778 (toList!2483 lt!1534983) lambda!133455)))

(assert (=> d!1269212 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!170 lt!1534983 lt!1534993 lt!1534985 (hashF!6826 thiss!42308)) lt!1535137)))

(declare-fun b!4315520 () Bool)

(assert (=> b!4315520 (= e!2684469 (allKeysSameHashInMap!368 lt!1535138 (hashF!6826 thiss!42308)))))

(assert (= (and d!1269212 res!1768865) b!4315520))

(declare-fun m!4909363 () Bool)

(assert (=> d!1269212 m!4909363))

(assert (=> d!1269212 m!4909157))

(declare-fun m!4909365 () Bool)

(assert (=> d!1269212 m!4909365))

(declare-fun m!4909367 () Bool)

(assert (=> d!1269212 m!4909367))

(declare-fun m!4909369 () Bool)

(assert (=> b!4315520 m!4909369))

(assert (=> b!4315354 d!1269212))

(declare-fun d!1269214 () Bool)

(assert (=> d!1269214 (allKeysSameHash!221 (removePairForKey!246 lt!1534994 key!2048) lt!1534993 (hashF!6826 thiss!42308))))

(declare-fun lt!1535141 () Unit!67503)

(declare-fun choose!26333 (List!48417 K!9524 (_ BitVec 64) Hashable!4627) Unit!67503)

(assert (=> d!1269214 (= lt!1535141 (choose!26333 lt!1534994 key!2048 lt!1534993 (hashF!6826 thiss!42308)))))

(assert (=> d!1269214 (noDuplicateKeys!248 lt!1534994)))

(assert (=> d!1269214 (= (lemmaRemovePairForKeyPreservesHash!201 lt!1534994 key!2048 lt!1534993 (hashF!6826 thiss!42308)) lt!1535141)))

(declare-fun bs!605805 () Bool)

(assert (= bs!605805 d!1269214))

(assert (=> bs!605805 m!4909113))

(assert (=> bs!605805 m!4909113))

(declare-fun m!4909371 () Bool)

(assert (=> bs!605805 m!4909371))

(declare-fun m!4909373 () Bool)

(assert (=> bs!605805 m!4909373))

(assert (=> bs!605805 m!4909205))

(assert (=> b!4315354 d!1269214))

(declare-fun d!1269216 () Bool)

(assert (=> d!1269216 true))

(assert (=> d!1269216 true))

(declare-fun lambda!133458 () Int)

(declare-fun forall!8779 (List!48417 Int) Bool)

(assert (=> d!1269216 (= (allKeysSameHash!221 lt!1534992 lt!1534993 (hashF!6826 thiss!42308)) (forall!8779 lt!1534992 lambda!133458))))

(declare-fun bs!605806 () Bool)

(assert (= bs!605806 d!1269216))

(declare-fun m!4909375 () Bool)

(assert (=> bs!605806 m!4909375))

(assert (=> b!4315354 d!1269216))

(declare-fun d!1269218 () Bool)

(declare-fun e!2684470 () Bool)

(assert (=> d!1269218 e!2684470))

(declare-fun res!1768866 () Bool)

(assert (=> d!1269218 (=> (not res!1768866) (not e!2684470))))

(declare-fun lt!1535142 () ListMap!1763)

(assert (=> d!1269218 (= res!1768866 (contains!10298 lt!1535142 (_1!26745 lt!1534986)))))

(declare-fun lt!1535144 () List!48417)

(assert (=> d!1269218 (= lt!1535142 (ListMap!1764 lt!1535144))))

(declare-fun lt!1535143 () Unit!67503)

(declare-fun lt!1535145 () Unit!67503)

(assert (=> d!1269218 (= lt!1535143 lt!1535145)))

(assert (=> d!1269218 (= (getValueByKey!280 lt!1535144 (_1!26745 lt!1534986)) (Some!10270 (_2!26745 lt!1534986)))))

(assert (=> d!1269218 (= lt!1535145 (lemmaContainsTupThenGetReturnValue!88 lt!1535144 (_1!26745 lt!1534986) (_2!26745 lt!1534986)))))

(assert (=> d!1269218 (= lt!1535144 (insertNoDuplicatedKeys!48 (toList!2484 lt!1534980) (_1!26745 lt!1534986) (_2!26745 lt!1534986)))))

(assert (=> d!1269218 (= (+!305 lt!1534980 lt!1534986) lt!1535142)))

(declare-fun b!4315525 () Bool)

(declare-fun res!1768867 () Bool)

(assert (=> b!4315525 (=> (not res!1768867) (not e!2684470))))

(assert (=> b!4315525 (= res!1768867 (= (getValueByKey!280 (toList!2484 lt!1535142) (_1!26745 lt!1534986)) (Some!10270 (_2!26745 lt!1534986))))))

(declare-fun b!4315526 () Bool)

(assert (=> b!4315526 (= e!2684470 (contains!10303 (toList!2484 lt!1535142) lt!1534986))))

(assert (= (and d!1269218 res!1768866) b!4315525))

(assert (= (and b!4315525 res!1768867) b!4315526))

(declare-fun m!4909377 () Bool)

(assert (=> d!1269218 m!4909377))

(declare-fun m!4909379 () Bool)

(assert (=> d!1269218 m!4909379))

(declare-fun m!4909381 () Bool)

(assert (=> d!1269218 m!4909381))

(declare-fun m!4909383 () Bool)

(assert (=> d!1269218 m!4909383))

(declare-fun m!4909385 () Bool)

(assert (=> b!4315525 m!4909385))

(declare-fun m!4909387 () Bool)

(assert (=> b!4315526 m!4909387))

(assert (=> b!4315354 d!1269218))

(declare-fun bs!605807 () Bool)

(declare-fun d!1269220 () Bool)

(assert (= bs!605807 (and d!1269220 d!1269196)))

(declare-fun lambda!133459 () Int)

(assert (=> bs!605807 (= lambda!133459 lambda!133447)))

(declare-fun bs!605808 () Bool)

(assert (= bs!605808 (and d!1269220 d!1269188)))

(assert (=> bs!605808 (not (= lambda!133459 lambda!133441))))

(declare-fun bs!605809 () Bool)

(assert (= bs!605809 (and d!1269220 d!1269212)))

(assert (=> bs!605809 (= lambda!133459 lambda!133455)))

(declare-fun bs!605810 () Bool)

(assert (= bs!605810 (and d!1269220 b!4315445)))

(assert (=> bs!605810 (= lambda!133459 lambda!133440)))

(declare-fun bs!605811 () Bool)

(assert (= bs!605811 (and d!1269220 b!4315461)))

(assert (=> bs!605811 (= lambda!133459 lambda!133444)))

(declare-fun bs!605812 () Bool)

(assert (= bs!605812 (and d!1269220 b!4315354)))

(assert (=> bs!605812 (= lambda!133459 lambda!133434)))

(declare-fun bs!605813 () Bool)

(assert (= bs!605813 (and d!1269220 d!1269204)))

(assert (=> bs!605813 (= lambda!133459 lambda!133450)))

(declare-fun bs!605814 () Bool)

(assert (= bs!605814 (and d!1269220 d!1269166)))

(assert (=> bs!605814 (not (= lambda!133459 lambda!133437))))

(declare-fun lt!1535146 () ListMap!1763)

(assert (=> d!1269220 (invariantList!588 (toList!2484 lt!1535146))))

(declare-fun e!2684471 () ListMap!1763)

(assert (=> d!1269220 (= lt!1535146 e!2684471)))

(declare-fun c!733667 () Bool)

(assert (=> d!1269220 (= c!733667 ((_ is Cons!48294) (toList!2483 lt!1534989)))))

(assert (=> d!1269220 (forall!8778 (toList!2483 lt!1534989) lambda!133459)))

(assert (=> d!1269220 (= (extractMap!352 (toList!2483 lt!1534989)) lt!1535146)))

(declare-fun b!4315527 () Bool)

(assert (=> b!4315527 (= e!2684471 (addToMapMapFromBucket!46 (_2!26746 (h!53745 (toList!2483 lt!1534989))) (extractMap!352 (t!355261 (toList!2483 lt!1534989)))))))

(declare-fun b!4315528 () Bool)

(assert (=> b!4315528 (= e!2684471 (ListMap!1764 Nil!48293))))

(assert (= (and d!1269220 c!733667) b!4315527))

(assert (= (and d!1269220 (not c!733667)) b!4315528))

(declare-fun m!4909389 () Bool)

(assert (=> d!1269220 m!4909389))

(declare-fun m!4909391 () Bool)

(assert (=> d!1269220 m!4909391))

(declare-fun m!4909393 () Bool)

(assert (=> b!4315527 m!4909393))

(assert (=> b!4315527 m!4909393))

(declare-fun m!4909395 () Bool)

(assert (=> b!4315527 m!4909395))

(assert (=> b!4315354 d!1269220))

(declare-fun d!1269222 () Bool)

(assert (=> d!1269222 (noDuplicateKeys!248 (removePairForKey!246 lt!1534994 key!2048))))

(declare-fun lt!1535149 () Unit!67503)

(declare-fun choose!26334 (List!48417 K!9524) Unit!67503)

(assert (=> d!1269222 (= lt!1535149 (choose!26334 lt!1534994 key!2048))))

(assert (=> d!1269222 (noDuplicateKeys!248 lt!1534994)))

(assert (=> d!1269222 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!196 lt!1534994 key!2048) lt!1535149)))

(declare-fun bs!605815 () Bool)

(assert (= bs!605815 d!1269222))

(assert (=> bs!605815 m!4909113))

(assert (=> bs!605815 m!4909113))

(declare-fun m!4909397 () Bool)

(assert (=> bs!605815 m!4909397))

(declare-fun m!4909399 () Bool)

(assert (=> bs!605815 m!4909399))

(assert (=> bs!605815 m!4909205))

(assert (=> b!4315354 d!1269222))

(declare-fun d!1269224 () Bool)

(declare-fun lt!1535150 () ListMap!1763)

(assert (=> d!1269224 (invariantList!588 (toList!2484 lt!1535150))))

(assert (=> d!1269224 (= lt!1535150 (extractMap!352 (toList!2483 (map!10303 (v!42556 (underlying!9652 (HashMap!4617 (Cell!18656 (_2!26747 lt!1534990)) (hashF!6826 thiss!42308) (_size!9466 thiss!42308) (defaultValue!4788 thiss!42308))))))))))

(assert (=> d!1269224 (valid!3709 (HashMap!4617 (Cell!18656 (_2!26747 lt!1534990)) (hashF!6826 thiss!42308) (_size!9466 thiss!42308) (defaultValue!4788 thiss!42308)))))

(assert (=> d!1269224 (= (map!10304 (HashMap!4617 (Cell!18656 (_2!26747 lt!1534990)) (hashF!6826 thiss!42308) (_size!9466 thiss!42308) (defaultValue!4788 thiss!42308))) lt!1535150)))

(declare-fun bs!605816 () Bool)

(assert (= bs!605816 d!1269224))

(declare-fun m!4909401 () Bool)

(assert (=> bs!605816 m!4909401))

(declare-fun m!4909403 () Bool)

(assert (=> bs!605816 m!4909403))

(declare-fun m!4909405 () Bool)

(assert (=> bs!605816 m!4909405))

(declare-fun m!4909407 () Bool)

(assert (=> bs!605816 m!4909407))

(assert (=> b!4315354 d!1269224))

(declare-fun d!1269226 () Bool)

(assert (=> d!1269226 (= (map!10303 (_2!26747 lt!1534990)) (map!10305 (v!42555 (underlying!9651 (_2!26747 lt!1534990)))))))

(declare-fun bs!605817 () Bool)

(assert (= bs!605817 d!1269226))

(declare-fun m!4909409 () Bool)

(assert (=> bs!605817 m!4909409))

(assert (=> b!4315354 d!1269226))

(declare-fun d!1269228 () Bool)

(assert (=> d!1269228 (= (contains!10298 lt!1534997 key!2048) (contains!10298 lt!1534995 key!2048))))

(declare-fun lt!1535153 () Unit!67503)

(declare-fun choose!26335 (ListMap!1763 ListMap!1763 K!9524) Unit!67503)

(assert (=> d!1269228 (= lt!1535153 (choose!26335 lt!1534997 lt!1534995 key!2048))))

(assert (=> d!1269228 (eq!149 lt!1534997 lt!1534995)))

(assert (=> d!1269228 (= (lemmaEquivalentThenSameContains!63 lt!1534997 lt!1534995 key!2048) lt!1535153)))

(declare-fun bs!605818 () Bool)

(assert (= bs!605818 d!1269228))

(assert (=> bs!605818 m!4909179))

(assert (=> bs!605818 m!4909159))

(declare-fun m!4909411 () Bool)

(assert (=> bs!605818 m!4909411))

(assert (=> bs!605818 m!4909165))

(assert (=> b!4315354 d!1269228))

(declare-fun bs!605819 () Bool)

(declare-fun d!1269230 () Bool)

(assert (= bs!605819 (and d!1269230 d!1269196)))

(declare-fun lambda!133462 () Int)

(assert (=> bs!605819 (not (= lambda!133462 lambda!133447))))

(declare-fun bs!605820 () Bool)

(assert (= bs!605820 (and d!1269230 d!1269220)))

(assert (=> bs!605820 (not (= lambda!133462 lambda!133459))))

(declare-fun bs!605821 () Bool)

(assert (= bs!605821 (and d!1269230 d!1269188)))

(assert (=> bs!605821 (= lambda!133462 lambda!133441)))

(declare-fun bs!605822 () Bool)

(assert (= bs!605822 (and d!1269230 d!1269212)))

(assert (=> bs!605822 (not (= lambda!133462 lambda!133455))))

(declare-fun bs!605823 () Bool)

(assert (= bs!605823 (and d!1269230 b!4315445)))

(assert (=> bs!605823 (not (= lambda!133462 lambda!133440))))

(declare-fun bs!605824 () Bool)

(assert (= bs!605824 (and d!1269230 b!4315461)))

(assert (=> bs!605824 (not (= lambda!133462 lambda!133444))))

(declare-fun bs!605825 () Bool)

(assert (= bs!605825 (and d!1269230 b!4315354)))

(assert (=> bs!605825 (not (= lambda!133462 lambda!133434))))

(declare-fun bs!605826 () Bool)

(assert (= bs!605826 (and d!1269230 d!1269204)))

(assert (=> bs!605826 (not (= lambda!133462 lambda!133450))))

(declare-fun bs!605827 () Bool)

(assert (= bs!605827 (and d!1269230 d!1269166)))

(assert (=> bs!605827 (= lambda!133462 lambda!133437)))

(assert (=> d!1269230 true))

(assert (=> d!1269230 (allKeysSameHash!221 lt!1534994 lt!1534993 (hashF!6826 thiss!42308))))

(declare-fun lt!1535156 () Unit!67503)

(declare-fun choose!26336 (List!48418 (_ BitVec 64) List!48417 Hashable!4627) Unit!67503)

(assert (=> d!1269230 (= lt!1535156 (choose!26336 (toList!2483 lt!1534983) lt!1534993 lt!1534994 (hashF!6826 thiss!42308)))))

(assert (=> d!1269230 (forall!8778 (toList!2483 lt!1534983) lambda!133462)))

(assert (=> d!1269230 (= (lemmaInLongMapAllKeySameHashThenForTuple!208 (toList!2483 lt!1534983) lt!1534993 lt!1534994 (hashF!6826 thiss!42308)) lt!1535156)))

(declare-fun bs!605828 () Bool)

(assert (= bs!605828 d!1269230))

(assert (=> bs!605828 m!4909155))

(declare-fun m!4909413 () Bool)

(assert (=> bs!605828 m!4909413))

(declare-fun m!4909415 () Bool)

(assert (=> bs!605828 m!4909415))

(assert (=> b!4315354 d!1269230))

(declare-fun b!4315529 () Bool)

(declare-fun e!2684477 () List!48419)

(assert (=> b!4315529 (= e!2684477 (getKeysList!51 (toList!2484 lt!1534997)))))

(declare-fun b!4315530 () Bool)

(declare-fun e!2684476 () Unit!67503)

(declare-fun lt!1535161 () Unit!67503)

(assert (=> b!4315530 (= e!2684476 lt!1535161)))

(declare-fun lt!1535159 () Unit!67503)

(assert (=> b!4315530 (= lt!1535159 (lemmaContainsKeyImpliesGetValueByKeyDefined!199 (toList!2484 lt!1534997) key!2048))))

(assert (=> b!4315530 (isDefined!7572 (getValueByKey!280 (toList!2484 lt!1534997) key!2048))))

(declare-fun lt!1535160 () Unit!67503)

(assert (=> b!4315530 (= lt!1535160 lt!1535159)))

(assert (=> b!4315530 (= lt!1535161 (lemmaInListThenGetKeysListContains!48 (toList!2484 lt!1534997) key!2048))))

(declare-fun call!298562 () Bool)

(assert (=> b!4315530 call!298562))

(declare-fun b!4315531 () Bool)

(declare-fun e!2684475 () Bool)

(declare-fun e!2684474 () Bool)

(assert (=> b!4315531 (= e!2684475 e!2684474)))

(declare-fun res!1768868 () Bool)

(assert (=> b!4315531 (=> (not res!1768868) (not e!2684474))))

(assert (=> b!4315531 (= res!1768868 (isDefined!7572 (getValueByKey!280 (toList!2484 lt!1534997) key!2048)))))

(declare-fun b!4315532 () Bool)

(assert (=> b!4315532 false))

(declare-fun lt!1535164 () Unit!67503)

(declare-fun lt!1535163 () Unit!67503)

(assert (=> b!4315532 (= lt!1535164 lt!1535163)))

(assert (=> b!4315532 (containsKey!370 (toList!2484 lt!1534997) key!2048)))

(assert (=> b!4315532 (= lt!1535163 (lemmaInGetKeysListThenContainsKey!48 (toList!2484 lt!1534997) key!2048))))

(declare-fun e!2684473 () Unit!67503)

(declare-fun Unit!67512 () Unit!67503)

(assert (=> b!4315532 (= e!2684473 Unit!67512)))

(declare-fun b!4315533 () Bool)

(assert (=> b!4315533 (= e!2684476 e!2684473)))

(declare-fun c!733669 () Bool)

(assert (=> b!4315533 (= c!733669 call!298562)))

(declare-fun b!4315534 () Bool)

(assert (=> b!4315534 (= e!2684477 (keys!16126 lt!1534997))))

(declare-fun b!4315535 () Bool)

(declare-fun Unit!67513 () Unit!67503)

(assert (=> b!4315535 (= e!2684473 Unit!67513)))

(declare-fun d!1269232 () Bool)

(assert (=> d!1269232 e!2684475))

(declare-fun res!1768869 () Bool)

(assert (=> d!1269232 (=> res!1768869 e!2684475)))

(declare-fun e!2684472 () Bool)

(assert (=> d!1269232 (= res!1768869 e!2684472)))

(declare-fun res!1768870 () Bool)

(assert (=> d!1269232 (=> (not res!1768870) (not e!2684472))))

(declare-fun lt!1535162 () Bool)

(assert (=> d!1269232 (= res!1768870 (not lt!1535162))))

(declare-fun lt!1535157 () Bool)

(assert (=> d!1269232 (= lt!1535162 lt!1535157)))

(declare-fun lt!1535158 () Unit!67503)

(assert (=> d!1269232 (= lt!1535158 e!2684476)))

(declare-fun c!733668 () Bool)

(assert (=> d!1269232 (= c!733668 lt!1535157)))

(assert (=> d!1269232 (= lt!1535157 (containsKey!370 (toList!2484 lt!1534997) key!2048))))

(assert (=> d!1269232 (= (contains!10298 lt!1534997 key!2048) lt!1535162)))

(declare-fun b!4315536 () Bool)

(assert (=> b!4315536 (= e!2684472 (not (contains!10304 (keys!16126 lt!1534997) key!2048)))))

(declare-fun bm!298557 () Bool)

(assert (=> bm!298557 (= call!298562 (contains!10304 e!2684477 key!2048))))

(declare-fun c!733670 () Bool)

(assert (=> bm!298557 (= c!733670 c!733668)))

(declare-fun b!4315537 () Bool)

(assert (=> b!4315537 (= e!2684474 (contains!10304 (keys!16126 lt!1534997) key!2048))))

(assert (= (and d!1269232 c!733668) b!4315530))

(assert (= (and d!1269232 (not c!733668)) b!4315533))

(assert (= (and b!4315533 c!733669) b!4315532))

(assert (= (and b!4315533 (not c!733669)) b!4315535))

(assert (= (or b!4315530 b!4315533) bm!298557))

(assert (= (and bm!298557 c!733670) b!4315529))

(assert (= (and bm!298557 (not c!733670)) b!4315534))

(assert (= (and d!1269232 res!1768870) b!4315536))

(assert (= (and d!1269232 (not res!1768869)) b!4315531))

(assert (= (and b!4315531 res!1768868) b!4315537))

(declare-fun m!4909417 () Bool)

(assert (=> b!4315532 m!4909417))

(declare-fun m!4909419 () Bool)

(assert (=> b!4315532 m!4909419))

(declare-fun m!4909421 () Bool)

(assert (=> b!4315536 m!4909421))

(assert (=> b!4315536 m!4909421))

(declare-fun m!4909423 () Bool)

(assert (=> b!4315536 m!4909423))

(declare-fun m!4909425 () Bool)

(assert (=> b!4315529 m!4909425))

(declare-fun m!4909427 () Bool)

(assert (=> b!4315531 m!4909427))

(assert (=> b!4315531 m!4909427))

(declare-fun m!4909429 () Bool)

(assert (=> b!4315531 m!4909429))

(assert (=> b!4315537 m!4909421))

(assert (=> b!4315537 m!4909421))

(assert (=> b!4315537 m!4909423))

(assert (=> b!4315534 m!4909421))

(declare-fun m!4909431 () Bool)

(assert (=> bm!298557 m!4909431))

(declare-fun m!4909433 () Bool)

(assert (=> b!4315530 m!4909433))

(assert (=> b!4315530 m!4909427))

(assert (=> b!4315530 m!4909427))

(assert (=> b!4315530 m!4909429))

(declare-fun m!4909435 () Bool)

(assert (=> b!4315530 m!4909435))

(assert (=> d!1269232 m!4909417))

(assert (=> b!4315354 d!1269232))

(declare-fun d!1269234 () Bool)

(assert (=> d!1269234 (= (eq!149 lt!1534997 lt!1534995) (= (content!7562 (toList!2484 lt!1534997)) (content!7562 (toList!2484 lt!1534995))))))

(declare-fun bs!605829 () Bool)

(assert (= bs!605829 d!1269234))

(declare-fun m!4909437 () Bool)

(assert (=> bs!605829 m!4909437))

(declare-fun m!4909439 () Bool)

(assert (=> bs!605829 m!4909439))

(assert (=> b!4315354 d!1269234))

(declare-fun bs!605830 () Bool)

(declare-fun d!1269236 () Bool)

(assert (= bs!605830 (and d!1269236 d!1269216)))

(declare-fun lambda!133463 () Int)

(assert (=> bs!605830 (= lambda!133463 lambda!133458)))

(assert (=> d!1269236 true))

(assert (=> d!1269236 true))

(assert (=> d!1269236 (= (allKeysSameHash!221 lt!1534994 lt!1534993 (hashF!6826 thiss!42308)) (forall!8779 lt!1534994 lambda!133463))))

(declare-fun bs!605831 () Bool)

(assert (= bs!605831 d!1269236))

(declare-fun m!4909441 () Bool)

(assert (=> bs!605831 m!4909441))

(assert (=> b!4315354 d!1269236))

(declare-fun tp!1325813 () Bool)

(declare-fun e!2684480 () Bool)

(declare-fun b!4315542 () Bool)

(assert (=> b!4315542 (= e!2684480 (and tp_is_empty!23951 tp_is_empty!23949 tp!1325813))))

(assert (=> b!4315362 (= tp!1325809 e!2684480)))

(assert (= (and b!4315362 ((_ is Cons!48293) (zeroValue!4970 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308))))))) b!4315542))

(declare-fun e!2684481 () Bool)

(declare-fun b!4315543 () Bool)

(declare-fun tp!1325814 () Bool)

(assert (=> b!4315543 (= e!2684481 (and tp_is_empty!23951 tp_is_empty!23949 tp!1325814))))

(assert (=> b!4315362 (= tp!1325805 e!2684481)))

(assert (= (and b!4315362 ((_ is Cons!48293) (minValue!4970 (v!42555 (underlying!9651 (v!42556 (underlying!9652 thiss!42308))))))) b!4315543))

(declare-fun e!2684482 () Bool)

(declare-fun tp!1325815 () Bool)

(declare-fun b!4315544 () Bool)

(assert (=> b!4315544 (= e!2684482 (and tp_is_empty!23951 tp_is_empty!23949 tp!1325815))))

(assert (=> b!4315363 (= tp!1325807 e!2684482)))

(assert (= (and b!4315363 ((_ is Cons!48293) mapDefault!21016)) b!4315544))

(declare-fun mapNonEmpty!21019 () Bool)

(declare-fun mapRes!21019 () Bool)

(declare-fun tp!1325824 () Bool)

(declare-fun e!2684487 () Bool)

(assert (=> mapNonEmpty!21019 (= mapRes!21019 (and tp!1325824 e!2684487))))

(declare-fun mapKey!21019 () (_ BitVec 32))

(declare-fun mapValue!21019 () List!48417)

(declare-fun mapRest!21019 () (Array (_ BitVec 32) List!48417))

(assert (=> mapNonEmpty!21019 (= mapRest!21016 (store mapRest!21019 mapKey!21019 mapValue!21019))))

(declare-fun mapIsEmpty!21019 () Bool)

(assert (=> mapIsEmpty!21019 mapRes!21019))

(declare-fun condMapEmpty!21019 () Bool)

(declare-fun mapDefault!21019 () List!48417)

(assert (=> mapNonEmpty!21016 (= condMapEmpty!21019 (= mapRest!21016 ((as const (Array (_ BitVec 32) List!48417)) mapDefault!21019)))))

(declare-fun e!2684488 () Bool)

(assert (=> mapNonEmpty!21016 (= tp!1325806 (and e!2684488 mapRes!21019))))

(declare-fun b!4315551 () Bool)

(declare-fun tp!1325822 () Bool)

(assert (=> b!4315551 (= e!2684487 (and tp_is_empty!23951 tp_is_empty!23949 tp!1325822))))

(declare-fun b!4315552 () Bool)

(declare-fun tp!1325823 () Bool)

(assert (=> b!4315552 (= e!2684488 (and tp_is_empty!23951 tp_is_empty!23949 tp!1325823))))

(assert (= (and mapNonEmpty!21016 condMapEmpty!21019) mapIsEmpty!21019))

(assert (= (and mapNonEmpty!21016 (not condMapEmpty!21019)) mapNonEmpty!21019))

(assert (= (and mapNonEmpty!21019 ((_ is Cons!48293) mapValue!21019)) b!4315551))

(assert (= (and mapNonEmpty!21016 ((_ is Cons!48293) mapDefault!21019)) b!4315552))

(declare-fun m!4909443 () Bool)

(assert (=> mapNonEmpty!21019 m!4909443))

(declare-fun b!4315553 () Bool)

(declare-fun tp!1325825 () Bool)

(declare-fun e!2684489 () Bool)

(assert (=> b!4315553 (= e!2684489 (and tp_is_empty!23951 tp_is_empty!23949 tp!1325825))))

(assert (=> mapNonEmpty!21016 (= tp!1325804 e!2684489)))

(assert (= (and mapNonEmpty!21016 ((_ is Cons!48293) mapValue!21016)) b!4315553))

(declare-fun b_lambda!126897 () Bool)

(assert (= b_lambda!126893 (or b!4315354 b_lambda!126897)))

(declare-fun bs!605832 () Bool)

(declare-fun d!1269238 () Bool)

(assert (= bs!605832 (and d!1269238 b!4315354)))

(assert (=> bs!605832 (= (dynLambda!20469 lambda!133434 (h!53745 (toList!2483 lt!1534989))) (noDuplicateKeys!248 (_2!26746 (h!53745 (toList!2483 lt!1534989)))))))

(declare-fun m!4909445 () Bool)

(assert (=> bs!605832 m!4909445))

(assert (=> b!4315467 d!1269238))

(declare-fun b_lambda!126899 () Bool)

(assert (= b_lambda!126891 (or (and b!4315362 b_free!128803) b_lambda!126899)))

(declare-fun b_lambda!126901 () Bool)

(assert (= b_lambda!126895 (or b!4315354 b_lambda!126901)))

(declare-fun bs!605833 () Bool)

(declare-fun d!1269240 () Bool)

(assert (= bs!605833 (and d!1269240 b!4315354)))

(assert (=> bs!605833 (= (dynLambda!20469 lambda!133434 (h!53745 (toList!2483 lt!1534987))) (noDuplicateKeys!248 (_2!26746 (h!53745 (toList!2483 lt!1534987)))))))

(declare-fun m!4909447 () Bool)

(assert (=> bs!605833 m!4909447))

(assert (=> b!4315475 d!1269240))

(check-sat (not b!4315509) (not b!4315543) (not d!1269234) (not d!1269172) (not b!4315530) (not bm!298534) (not bm!298535) (not b!4315512) (not b!4315392) (not d!1269192) (not d!1269170) (not d!1269222) (not tb!257329) (not b!4315531) (not bs!605832) (not mapNonEmpty!21019) (not bm!298552) (not b!4315468) (not bm!298549) (not b!4315481) (not b!4315536) b_and!340281 (not b!4315529) (not b!4315393) (not b!4315417) (not d!1269196) (not b!4315462) (not b!4315515) tp_is_empty!23949 (not b!4315389) (not b_next!129509) (not d!1269236) (not b!4315534) (not d!1269232) (not b!4315507) (not d!1269186) (not d!1269168) (not b_lambda!126897) (not b_lambda!126901) (not b!4315544) (not b!4315488) (not b!4315474) (not bm!298550) (not b!4315525) (not d!1269204) (not b!4315461) (not b!4315520) (not d!1269202) (not bm!298551) (not b!4315553) (not bm!298553) (not b!4315391) (not b!4315532) (not b!4315390) (not bm!298557) (not b!4315510) (not d!1269212) (not b!4315476) (not d!1269206) (not b_next!129507) (not d!1269224) (not b!4315552) (not d!1269188) (not b!4315404) (not b!4315473) (not b!4315527) (not b!4315542) (not b!4315441) (not b!4315487) (not bs!605833) (not b!4315442) (not b!4315526) (not d!1269216) (not b!4315440) (not b!4315445) (not d!1269218) (not bm!298548) (not d!1269174) (not d!1269230) (not b!4315410) tp_is_empty!23951 (not b!4315537) (not d!1269228) b_and!340283 (not d!1269184) (not b!4315516) (not b!4315456) (not b!4315446) (not d!1269182) (not d!1269166) (not d!1269198) (not b!4315508) (not b!4315416) (not d!1269214) (not b!4315551) (not d!1269220) (not b_lambda!126899) (not b!4315517) (not d!1269208) (not d!1269226) (not bm!298556) (not b!4315514))
(check-sat b_and!340283 b_and!340281 (not b_next!129509) (not b_next!129507))
