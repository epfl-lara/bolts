; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413204 () Bool)

(assert start!413204)

(declare-fun b!4302922 () Bool)

(declare-fun b_free!128235 () Bool)

(declare-fun b_next!128939 () Bool)

(assert (=> b!4302922 (= b_free!128235 (not b_next!128939))))

(declare-fun tp!1322271 () Bool)

(declare-fun b_and!339621 () Bool)

(assert (=> b!4302922 (= tp!1322271 b_and!339621)))

(declare-fun b!4302921 () Bool)

(declare-fun b_free!128237 () Bool)

(declare-fun b_next!128941 () Bool)

(assert (=> b!4302921 (= b_free!128237 (not b_next!128941))))

(declare-fun tp!1322267 () Bool)

(declare-fun b_and!339623 () Bool)

(assert (=> b!4302921 (= tp!1322267 b_and!339623)))

(declare-fun b!4302911 () Bool)

(declare-fun e!2675087 () Bool)

(declare-datatypes ((K!9169 0))(
  ( (K!9170 (val!15593 Int)) )
))
(declare-datatypes ((V!9371 0))(
  ( (V!9372 (val!15594 Int)) )
))
(declare-datatypes ((tuple2!46126 0))(
  ( (tuple2!46127 (_1!26342 K!9169) (_2!26342 V!9371)) )
))
(declare-datatypes ((List!48146 0))(
  ( (Nil!48022) (Cons!48022 (h!53443 tuple2!46126) (t!354917 List!48146)) )
))
(declare-fun lt!1524474 () List!48146)

(declare-fun noDuplicateKeys!172 (List!48146) Bool)

(assert (=> b!4302911 (= e!2675087 (noDuplicateKeys!172 lt!1524474))))

(declare-fun b!4302912 () Bool)

(declare-fun res!1763612 () Bool)

(declare-fun e!2675080 () Bool)

(assert (=> b!4302912 (=> (not res!1763612) (not e!2675080))))

(declare-datatypes ((array!16400 0))(
  ( (array!16401 (arr!7323 (Array (_ BitVec 32) (_ BitVec 64))) (size!35362 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4485 0))(
  ( (HashableExt!4484 (__x!29732 Int)) )
))
(declare-datatypes ((array!16402 0))(
  ( (array!16403 (arr!7324 (Array (_ BitVec 32) List!48146)) (size!35363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9138 0))(
  ( (LongMapFixedSize!9139 (defaultEntry!4954 Int) (mask!13082 (_ BitVec 32)) (extraKeys!4818 (_ BitVec 32)) (zeroValue!4828 List!48146) (minValue!4828 List!48146) (_size!9181 (_ BitVec 32)) (_keys!4869 array!16400) (_values!4850 array!16402) (_vacant!4630 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18085 0))(
  ( (Cell!18086 (v!42026 LongMapFixedSize!9138)) )
))
(declare-datatypes ((MutLongMap!4569 0))(
  ( (LongMap!4569 (underlying!9367 Cell!18085)) (MutLongMapExt!4568 (__x!29733 Int)) )
))
(declare-datatypes ((Cell!18087 0))(
  ( (Cell!18088 (v!42027 MutLongMap!4569)) )
))
(declare-datatypes ((MutableMap!4475 0))(
  ( (MutableMapExt!4474 (__x!29734 Int)) (HashMap!4475 (underlying!9368 Cell!18087) (hashF!6523 Hashable!4485) (_size!9182 (_ BitVec 32)) (defaultValue!4646 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4475)

(declare-fun valid!3551 (MutableMap!4475) Bool)

(assert (=> b!4302912 (= res!1763612 (valid!3551 thiss!42308))))

(declare-fun b!4302913 () Bool)

(declare-fun e!2675086 () Bool)

(declare-fun e!2675079 () Bool)

(assert (=> b!4302913 (= e!2675086 e!2675079)))

(declare-fun b!4302914 () Bool)

(declare-fun e!2675083 () Bool)

(declare-datatypes ((tuple2!46128 0))(
  ( (tuple2!46129 (_1!26343 Bool) (_2!26343 MutLongMap!4569)) )
))
(declare-fun lt!1524477 () tuple2!46128)

(assert (=> b!4302914 (= e!2675083 (not (valid!3551 (HashMap!4475 (Cell!18088 (_2!26343 lt!1524477)) (hashF!6523 thiss!42308) (_size!9182 thiss!42308) (defaultValue!4646 thiss!42308)))))))

(declare-datatypes ((tuple2!46130 0))(
  ( (tuple2!46131 (_1!26344 (_ BitVec 64)) (_2!26344 List!48146)) )
))
(declare-datatypes ((List!48147 0))(
  ( (Nil!48023) (Cons!48023 (h!53444 tuple2!46130) (t!354918 List!48147)) )
))
(declare-datatypes ((ListLongMap!867 0))(
  ( (ListLongMap!868 (toList!2259 List!48147)) )
))
(declare-fun lt!1524473 () ListLongMap!867)

(declare-fun lt!1524470 () ListLongMap!867)

(declare-fun lt!1524483 () tuple2!46126)

(declare-datatypes ((ListMap!1545 0))(
  ( (ListMap!1546 (toList!2260 List!48146)) )
))
(declare-fun eq!110 (ListMap!1545 ListMap!1545) Bool)

(declare-fun extractMap!286 (List!48147) ListMap!1545)

(declare-fun +!197 (ListMap!1545 tuple2!46126) ListMap!1545)

(assert (=> b!4302914 (eq!110 (extractMap!286 (toList!2259 lt!1524473)) (+!197 (extractMap!286 (toList!2259 lt!1524470)) lt!1524483))))

(declare-datatypes ((Unit!67003 0))(
  ( (Unit!67004) )
))
(declare-fun lt!1524481 () Unit!67003)

(declare-fun lt!1524475 () (_ BitVec 64))

(declare-fun v!9179 () V!9371)

(declare-fun key!2048 () K!9169)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!42 (ListLongMap!867 (_ BitVec 64) List!48146 K!9169 V!9371 Hashable!4485) Unit!67003)

(assert (=> b!4302914 (= lt!1524481 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!42 lt!1524470 lt!1524475 lt!1524474 key!2048 v!9179 (hashF!6523 thiss!42308)))))

(declare-fun e!2675084 () Bool)

(assert (=> b!4302914 e!2675084))

(declare-fun res!1763611 () Bool)

(assert (=> b!4302914 (=> (not res!1763611) (not e!2675084))))

(declare-fun lambda!132173 () Int)

(declare-fun forall!8664 (List!48147 Int) Bool)

(assert (=> b!4302914 (= res!1763611 (forall!8664 (toList!2259 lt!1524473) lambda!132173))))

(declare-fun +!198 (ListLongMap!867 tuple2!46130) ListLongMap!867)

(assert (=> b!4302914 (= lt!1524473 (+!198 lt!1524470 (tuple2!46131 lt!1524475 lt!1524474)))))

(declare-fun lt!1524482 () Unit!67003)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!113 (ListLongMap!867 (_ BitVec 64) List!48146 Hashable!4485) Unit!67003)

(assert (=> b!4302914 (= lt!1524482 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!113 lt!1524470 lt!1524475 lt!1524474 (hashF!6523 thiss!42308)))))

(assert (=> b!4302914 e!2675087))

(declare-fun res!1763615 () Bool)

(assert (=> b!4302914 (=> (not res!1763615) (not e!2675087))))

(declare-fun lt!1524471 () List!48146)

(assert (=> b!4302914 (= res!1763615 (noDuplicateKeys!172 lt!1524471))))

(declare-fun lt!1524479 () Unit!67003)

(declare-fun lt!1524472 () List!48146)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!145 (List!48146 K!9169) Unit!67003)

(assert (=> b!4302914 (= lt!1524479 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!145 lt!1524472 key!2048))))

(declare-fun allKeysSameHash!142 (List!48146 (_ BitVec 64) Hashable!4485) Bool)

(assert (=> b!4302914 (allKeysSameHash!142 lt!1524471 lt!1524475 (hashF!6523 thiss!42308))))

(declare-fun lt!1524480 () Unit!67003)

(declare-fun lemmaRemovePairForKeyPreservesHash!128 (List!48146 K!9169 (_ BitVec 64) Hashable!4485) Unit!67003)

(assert (=> b!4302914 (= lt!1524480 (lemmaRemovePairForKeyPreservesHash!128 lt!1524472 key!2048 lt!1524475 (hashF!6523 thiss!42308)))))

(assert (=> b!4302914 (allKeysSameHash!142 lt!1524472 lt!1524475 (hashF!6523 thiss!42308))))

(declare-fun lt!1524476 () Unit!67003)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!133 (List!48147 (_ BitVec 64) List!48146 Hashable!4485) Unit!67003)

(assert (=> b!4302914 (= lt!1524476 (lemmaInLongMapAllKeySameHashThenForTuple!133 (toList!2259 lt!1524470) lt!1524475 lt!1524472 (hashF!6523 thiss!42308)))))

(declare-fun b!4302915 () Bool)

(declare-fun e!2675082 () Bool)

(declare-fun tp!1322269 () Bool)

(declare-fun mapRes!20482 () Bool)

(assert (=> b!4302915 (= e!2675082 (and tp!1322269 mapRes!20482))))

(declare-fun condMapEmpty!20482 () Bool)

(declare-fun mapDefault!20482 () List!48146)

(assert (=> b!4302915 (= condMapEmpty!20482 (= (arr!7324 (_values!4850 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48146)) mapDefault!20482)))))

(declare-fun b!4302916 () Bool)

(declare-fun e!2675088 () Bool)

(assert (=> b!4302916 (= e!2675079 e!2675088)))

(declare-fun b!4302917 () Bool)

(declare-fun allKeysSameHashInMap!291 (ListLongMap!867 Hashable!4485) Bool)

(assert (=> b!4302917 (= e!2675084 (allKeysSameHashInMap!291 lt!1524473 (hashF!6523 thiss!42308)))))

(declare-fun b!4302918 () Bool)

(declare-fun res!1763609 () Bool)

(assert (=> b!4302918 (=> (not res!1763609) (not e!2675087))))

(declare-fun containsKey!258 (List!48146 K!9169) Bool)

(assert (=> b!4302918 (= res!1763609 (not (containsKey!258 lt!1524471 key!2048)))))

(declare-fun mapIsEmpty!20482 () Bool)

(assert (=> mapIsEmpty!20482 mapRes!20482))

(declare-fun b!4302919 () Bool)

(declare-fun e!2675085 () Bool)

(declare-fun lt!1524469 () MutLongMap!4569)

(get-info :version)

(assert (=> b!4302919 (= e!2675085 (and e!2675086 ((_ is LongMap!4569) lt!1524469)))))

(assert (=> b!4302919 (= lt!1524469 (v!42027 (underlying!9368 thiss!42308)))))

(declare-fun mapNonEmpty!20482 () Bool)

(declare-fun tp!1322272 () Bool)

(declare-fun tp!1322273 () Bool)

(assert (=> mapNonEmpty!20482 (= mapRes!20482 (and tp!1322272 tp!1322273))))

(declare-fun mapRest!20482 () (Array (_ BitVec 32) List!48146))

(declare-fun mapKey!20482 () (_ BitVec 32))

(declare-fun mapValue!20482 () List!48146)

(assert (=> mapNonEmpty!20482 (= (arr!7324 (_values!4850 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) (store mapRest!20482 mapKey!20482 mapValue!20482))))

(declare-fun e!2675081 () Bool)

(assert (=> b!4302921 (= e!2675081 (and e!2675085 tp!1322267))))

(declare-fun b!4302920 () Bool)

(declare-fun e!2675089 () Bool)

(assert (=> b!4302920 (= e!2675080 e!2675089)))

(declare-fun res!1763610 () Bool)

(assert (=> b!4302920 (=> (not res!1763610) (not e!2675089))))

(declare-fun contains!9943 (MutableMap!4475 K!9169) Bool)

(assert (=> b!4302920 (= res!1763610 (contains!9943 thiss!42308 key!2048))))

(declare-fun map!9987 (MutLongMap!4569) ListLongMap!867)

(assert (=> b!4302920 (= lt!1524470 (map!9987 (v!42027 (underlying!9368 thiss!42308))))))

(declare-fun lt!1524478 () ListMap!1545)

(declare-fun map!9988 (MutableMap!4475) ListMap!1545)

(assert (=> b!4302920 (= lt!1524478 (map!9988 thiss!42308))))

(declare-fun res!1763614 () Bool)

(assert (=> start!413204 (=> (not res!1763614) (not e!2675080))))

(assert (=> start!413204 (= res!1763614 ((_ is HashMap!4475) thiss!42308))))

(assert (=> start!413204 e!2675080))

(assert (=> start!413204 e!2675081))

(declare-fun tp_is_empty!23415 () Bool)

(assert (=> start!413204 tp_is_empty!23415))

(declare-fun tp_is_empty!23417 () Bool)

(assert (=> start!413204 tp_is_empty!23417))

(declare-fun tp!1322268 () Bool)

(declare-fun tp!1322270 () Bool)

(declare-fun array_inv!5253 (array!16400) Bool)

(declare-fun array_inv!5254 (array!16402) Bool)

(assert (=> b!4302922 (= e!2675088 (and tp!1322271 tp!1322268 tp!1322270 (array_inv!5253 (_keys!4869 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) (array_inv!5254 (_values!4850 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) e!2675082))))

(declare-fun b!4302923 () Bool)

(assert (=> b!4302923 (= e!2675089 e!2675083)))

(declare-fun res!1763613 () Bool)

(assert (=> b!4302923 (=> (not res!1763613) (not e!2675083))))

(assert (=> b!4302923 (= res!1763613 (_1!26343 lt!1524477))))

(declare-fun update!364 (MutLongMap!4569 (_ BitVec 64) List!48146) tuple2!46128)

(assert (=> b!4302923 (= lt!1524477 (update!364 (v!42027 (underlying!9368 thiss!42308)) lt!1524475 lt!1524474))))

(assert (=> b!4302923 (= lt!1524474 (Cons!48022 lt!1524483 lt!1524471))))

(declare-fun removePairForKey!166 (List!48146 K!9169) List!48146)

(assert (=> b!4302923 (= lt!1524471 (removePairForKey!166 lt!1524472 key!2048))))

(assert (=> b!4302923 (= lt!1524483 (tuple2!46127 key!2048 v!9179))))

(declare-fun apply!10916 (MutLongMap!4569 (_ BitVec 64)) List!48146)

(assert (=> b!4302923 (= lt!1524472 (apply!10916 (v!42027 (underlying!9368 thiss!42308)) lt!1524475))))

(declare-fun hash!872 (Hashable!4485 K!9169) (_ BitVec 64))

(assert (=> b!4302923 (= lt!1524475 (hash!872 (hashF!6523 thiss!42308) key!2048))))

(assert (= (and start!413204 res!1763614) b!4302912))

(assert (= (and b!4302912 res!1763612) b!4302920))

(assert (= (and b!4302920 res!1763610) b!4302923))

(assert (= (and b!4302923 res!1763613) b!4302914))

(assert (= (and b!4302914 res!1763615) b!4302918))

(assert (= (and b!4302918 res!1763609) b!4302911))

(assert (= (and b!4302914 res!1763611) b!4302917))

(assert (= (and b!4302915 condMapEmpty!20482) mapIsEmpty!20482))

(assert (= (and b!4302915 (not condMapEmpty!20482)) mapNonEmpty!20482))

(assert (= b!4302922 b!4302915))

(assert (= b!4302916 b!4302922))

(assert (= b!4302913 b!4302916))

(assert (= (and b!4302919 ((_ is LongMap!4569) (v!42027 (underlying!9368 thiss!42308)))) b!4302913))

(assert (= b!4302921 b!4302919))

(assert (= (and start!413204 ((_ is HashMap!4475) thiss!42308)) b!4302921))

(declare-fun m!4895113 () Bool)

(assert (=> b!4302914 m!4895113))

(declare-fun m!4895115 () Bool)

(assert (=> b!4302914 m!4895115))

(declare-fun m!4895117 () Bool)

(assert (=> b!4302914 m!4895117))

(declare-fun m!4895119 () Bool)

(assert (=> b!4302914 m!4895119))

(declare-fun m!4895121 () Bool)

(assert (=> b!4302914 m!4895121))

(declare-fun m!4895123 () Bool)

(assert (=> b!4302914 m!4895123))

(declare-fun m!4895125 () Bool)

(assert (=> b!4302914 m!4895125))

(declare-fun m!4895127 () Bool)

(assert (=> b!4302914 m!4895127))

(assert (=> b!4302914 m!4895113))

(declare-fun m!4895129 () Bool)

(assert (=> b!4302914 m!4895129))

(declare-fun m!4895131 () Bool)

(assert (=> b!4302914 m!4895131))

(assert (=> b!4302914 m!4895115))

(declare-fun m!4895133 () Bool)

(assert (=> b!4302914 m!4895133))

(declare-fun m!4895135 () Bool)

(assert (=> b!4302914 m!4895135))

(declare-fun m!4895137 () Bool)

(assert (=> b!4302914 m!4895137))

(assert (=> b!4302914 m!4895131))

(declare-fun m!4895139 () Bool)

(assert (=> b!4302914 m!4895139))

(declare-fun m!4895141 () Bool)

(assert (=> b!4302914 m!4895141))

(declare-fun m!4895143 () Bool)

(assert (=> b!4302922 m!4895143))

(declare-fun m!4895145 () Bool)

(assert (=> b!4302922 m!4895145))

(declare-fun m!4895147 () Bool)

(assert (=> b!4302918 m!4895147))

(declare-fun m!4895149 () Bool)

(assert (=> b!4302920 m!4895149))

(declare-fun m!4895151 () Bool)

(assert (=> b!4302920 m!4895151))

(declare-fun m!4895153 () Bool)

(assert (=> b!4302920 m!4895153))

(declare-fun m!4895155 () Bool)

(assert (=> b!4302912 m!4895155))

(declare-fun m!4895157 () Bool)

(assert (=> b!4302911 m!4895157))

(declare-fun m!4895159 () Bool)

(assert (=> mapNonEmpty!20482 m!4895159))

(declare-fun m!4895161 () Bool)

(assert (=> b!4302917 m!4895161))

(declare-fun m!4895163 () Bool)

(assert (=> b!4302923 m!4895163))

(declare-fun m!4895165 () Bool)

(assert (=> b!4302923 m!4895165))

(declare-fun m!4895167 () Bool)

(assert (=> b!4302923 m!4895167))

(declare-fun m!4895169 () Bool)

(assert (=> b!4302923 m!4895169))

(check-sat (not b!4302922) b_and!339621 (not b!4302915) tp_is_empty!23417 (not b!4302920) (not b!4302923) (not b!4302914) (not b_next!128939) (not mapNonEmpty!20482) tp_is_empty!23415 (not b!4302917) (not b!4302918) (not b!4302912) (not b_next!128941) (not b!4302911) b_and!339623)
(check-sat b_and!339621 b_and!339623 (not b_next!128941) (not b_next!128939))
(get-model)

(declare-fun d!1266917 () Bool)

(declare-fun res!1763620 () Bool)

(declare-fun e!2675095 () Bool)

(assert (=> d!1266917 (=> res!1763620 e!2675095)))

(assert (=> d!1266917 (= res!1763620 (and ((_ is Cons!48022) lt!1524471) (= (_1!26342 (h!53443 lt!1524471)) key!2048)))))

(assert (=> d!1266917 (= (containsKey!258 lt!1524471 key!2048) e!2675095)))

(declare-fun b!4302928 () Bool)

(declare-fun e!2675096 () Bool)

(assert (=> b!4302928 (= e!2675095 e!2675096)))

(declare-fun res!1763621 () Bool)

(assert (=> b!4302928 (=> (not res!1763621) (not e!2675096))))

(assert (=> b!4302928 (= res!1763621 ((_ is Cons!48022) lt!1524471))))

(declare-fun b!4302929 () Bool)

(assert (=> b!4302929 (= e!2675096 (containsKey!258 (t!354917 lt!1524471) key!2048))))

(assert (= (and d!1266917 (not res!1763620)) b!4302928))

(assert (= (and b!4302928 res!1763621) b!4302929))

(declare-fun m!4895171 () Bool)

(assert (=> b!4302929 m!4895171))

(assert (=> b!4302918 d!1266917))

(declare-fun bs!604111 () Bool)

(declare-fun b!4302934 () Bool)

(assert (= bs!604111 (and b!4302934 b!4302914)))

(declare-fun lambda!132176 () Int)

(assert (=> bs!604111 (= lambda!132176 lambda!132173)))

(declare-fun d!1266919 () Bool)

(declare-fun res!1763626 () Bool)

(declare-fun e!2675099 () Bool)

(assert (=> d!1266919 (=> (not res!1763626) (not e!2675099))))

(declare-fun valid!3552 (MutLongMap!4569) Bool)

(assert (=> d!1266919 (= res!1763626 (valid!3552 (v!42027 (underlying!9368 thiss!42308))))))

(assert (=> d!1266919 (= (valid!3551 thiss!42308) e!2675099)))

(declare-fun res!1763627 () Bool)

(assert (=> b!4302934 (=> (not res!1763627) (not e!2675099))))

(assert (=> b!4302934 (= res!1763627 (forall!8664 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308)))) lambda!132176))))

(declare-fun b!4302935 () Bool)

(assert (=> b!4302935 (= e!2675099 (allKeysSameHashInMap!291 (map!9987 (v!42027 (underlying!9368 thiss!42308))) (hashF!6523 thiss!42308)))))

(assert (= (and d!1266919 res!1763626) b!4302934))

(assert (= (and b!4302934 res!1763627) b!4302935))

(declare-fun m!4895173 () Bool)

(assert (=> d!1266919 m!4895173))

(assert (=> b!4302934 m!4895151))

(declare-fun m!4895175 () Bool)

(assert (=> b!4302934 m!4895175))

(assert (=> b!4302935 m!4895151))

(assert (=> b!4302935 m!4895151))

(declare-fun m!4895177 () Bool)

(assert (=> b!4302935 m!4895177))

(assert (=> b!4302912 d!1266919))

(declare-fun bs!604112 () Bool)

(declare-fun d!1266921 () Bool)

(assert (= bs!604112 (and d!1266921 b!4302914)))

(declare-fun lambda!132179 () Int)

(assert (=> bs!604112 (not (= lambda!132179 lambda!132173))))

(declare-fun bs!604113 () Bool)

(assert (= bs!604113 (and d!1266921 b!4302934)))

(assert (=> bs!604113 (not (= lambda!132179 lambda!132176))))

(assert (=> d!1266921 true))

(assert (=> d!1266921 (= (allKeysSameHashInMap!291 lt!1524473 (hashF!6523 thiss!42308)) (forall!8664 (toList!2259 lt!1524473) lambda!132179))))

(declare-fun bs!604114 () Bool)

(assert (= bs!604114 d!1266921))

(declare-fun m!4895179 () Bool)

(assert (=> bs!604114 m!4895179))

(assert (=> b!4302917 d!1266921))

(declare-fun bs!604115 () Bool)

(declare-fun d!1266923 () Bool)

(assert (= bs!604115 (and d!1266923 b!4302914)))

(declare-fun lambda!132184 () Int)

(assert (=> bs!604115 (= lambda!132184 lambda!132173)))

(declare-fun bs!604116 () Bool)

(assert (= bs!604116 (and d!1266923 b!4302934)))

(assert (=> bs!604116 (= lambda!132184 lambda!132176)))

(declare-fun bs!604117 () Bool)

(assert (= bs!604117 (and d!1266923 d!1266921)))

(assert (=> bs!604117 (not (= lambda!132184 lambda!132179))))

(declare-fun e!2675102 () Bool)

(assert (=> d!1266923 e!2675102))

(declare-fun res!1763630 () Bool)

(assert (=> d!1266923 (=> (not res!1763630) (not e!2675102))))

(declare-fun lt!1524489 () ListLongMap!867)

(assert (=> d!1266923 (= res!1763630 (forall!8664 (toList!2259 lt!1524489) lambda!132184))))

(assert (=> d!1266923 (= lt!1524489 (+!198 lt!1524470 (tuple2!46131 lt!1524475 lt!1524474)))))

(declare-fun lt!1524488 () Unit!67003)

(declare-fun choose!26184 (ListLongMap!867 (_ BitVec 64) List!48146 Hashable!4485) Unit!67003)

(assert (=> d!1266923 (= lt!1524488 (choose!26184 lt!1524470 lt!1524475 lt!1524474 (hashF!6523 thiss!42308)))))

(assert (=> d!1266923 (forall!8664 (toList!2259 lt!1524470) lambda!132184)))

(assert (=> d!1266923 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!113 lt!1524470 lt!1524475 lt!1524474 (hashF!6523 thiss!42308)) lt!1524488)))

(declare-fun b!4302940 () Bool)

(assert (=> b!4302940 (= e!2675102 (allKeysSameHashInMap!291 lt!1524489 (hashF!6523 thiss!42308)))))

(assert (= (and d!1266923 res!1763630) b!4302940))

(declare-fun m!4895181 () Bool)

(assert (=> d!1266923 m!4895181))

(assert (=> d!1266923 m!4895121))

(declare-fun m!4895183 () Bool)

(assert (=> d!1266923 m!4895183))

(declare-fun m!4895185 () Bool)

(assert (=> d!1266923 m!4895185))

(declare-fun m!4895187 () Bool)

(assert (=> b!4302940 m!4895187))

(assert (=> b!4302914 d!1266923))

(declare-fun bs!604118 () Bool)

(declare-fun d!1266925 () Bool)

(assert (= bs!604118 (and d!1266925 b!4302914)))

(declare-fun lambda!132187 () Int)

(assert (=> bs!604118 (= lambda!132187 lambda!132173)))

(declare-fun bs!604119 () Bool)

(assert (= bs!604119 (and d!1266925 b!4302934)))

(assert (=> bs!604119 (= lambda!132187 lambda!132176)))

(declare-fun bs!604120 () Bool)

(assert (= bs!604120 (and d!1266925 d!1266921)))

(assert (=> bs!604120 (not (= lambda!132187 lambda!132179))))

(declare-fun bs!604121 () Bool)

(assert (= bs!604121 (and d!1266925 d!1266923)))

(assert (=> bs!604121 (= lambda!132187 lambda!132184)))

(declare-fun lt!1524492 () ListMap!1545)

(declare-fun invariantList!553 (List!48146) Bool)

(assert (=> d!1266925 (invariantList!553 (toList!2260 lt!1524492))))

(declare-fun e!2675105 () ListMap!1545)

(assert (=> d!1266925 (= lt!1524492 e!2675105)))

(declare-fun c!731726 () Bool)

(assert (=> d!1266925 (= c!731726 ((_ is Cons!48023) (toList!2259 lt!1524473)))))

(assert (=> d!1266925 (forall!8664 (toList!2259 lt!1524473) lambda!132187)))

(assert (=> d!1266925 (= (extractMap!286 (toList!2259 lt!1524473)) lt!1524492)))

(declare-fun b!4302945 () Bool)

(declare-fun addToMapMapFromBucket!24 (List!48146 ListMap!1545) ListMap!1545)

(assert (=> b!4302945 (= e!2675105 (addToMapMapFromBucket!24 (_2!26344 (h!53444 (toList!2259 lt!1524473))) (extractMap!286 (t!354918 (toList!2259 lt!1524473)))))))

(declare-fun b!4302946 () Bool)

(assert (=> b!4302946 (= e!2675105 (ListMap!1546 Nil!48022))))

(assert (= (and d!1266925 c!731726) b!4302945))

(assert (= (and d!1266925 (not c!731726)) b!4302946))

(declare-fun m!4895189 () Bool)

(assert (=> d!1266925 m!4895189))

(declare-fun m!4895191 () Bool)

(assert (=> d!1266925 m!4895191))

(declare-fun m!4895193 () Bool)

(assert (=> b!4302945 m!4895193))

(assert (=> b!4302945 m!4895193))

(declare-fun m!4895195 () Bool)

(assert (=> b!4302945 m!4895195))

(assert (=> b!4302914 d!1266925))

(declare-fun d!1266927 () Bool)

(assert (=> d!1266927 (noDuplicateKeys!172 (removePairForKey!166 lt!1524472 key!2048))))

(declare-fun lt!1524495 () Unit!67003)

(declare-fun choose!26185 (List!48146 K!9169) Unit!67003)

(assert (=> d!1266927 (= lt!1524495 (choose!26185 lt!1524472 key!2048))))

(assert (=> d!1266927 (noDuplicateKeys!172 lt!1524472)))

(assert (=> d!1266927 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!145 lt!1524472 key!2048) lt!1524495)))

(declare-fun bs!604122 () Bool)

(assert (= bs!604122 d!1266927))

(assert (=> bs!604122 m!4895165))

(assert (=> bs!604122 m!4895165))

(declare-fun m!4895197 () Bool)

(assert (=> bs!604122 m!4895197))

(declare-fun m!4895199 () Bool)

(assert (=> bs!604122 m!4895199))

(declare-fun m!4895201 () Bool)

(assert (=> bs!604122 m!4895201))

(assert (=> b!4302914 d!1266927))

(declare-fun d!1266929 () Bool)

(declare-fun e!2675108 () Bool)

(assert (=> d!1266929 e!2675108))

(declare-fun res!1763636 () Bool)

(assert (=> d!1266929 (=> (not res!1763636) (not e!2675108))))

(declare-fun lt!1524504 () ListMap!1545)

(declare-fun contains!9944 (ListMap!1545 K!9169) Bool)

(assert (=> d!1266929 (= res!1763636 (contains!9944 lt!1524504 (_1!26342 lt!1524483)))))

(declare-fun lt!1524506 () List!48146)

(assert (=> d!1266929 (= lt!1524504 (ListMap!1546 lt!1524506))))

(declare-fun lt!1524507 () Unit!67003)

(declare-fun lt!1524505 () Unit!67003)

(assert (=> d!1266929 (= lt!1524507 lt!1524505)))

(declare-datatypes ((Option!10177 0))(
  ( (None!10176) (Some!10176 (v!42032 V!9371)) )
))
(declare-fun getValueByKey!222 (List!48146 K!9169) Option!10177)

(assert (=> d!1266929 (= (getValueByKey!222 lt!1524506 (_1!26342 lt!1524483)) (Some!10176 (_2!26342 lt!1524483)))))

(declare-fun lemmaContainsTupThenGetReturnValue!48 (List!48146 K!9169 V!9371) Unit!67003)

(assert (=> d!1266929 (= lt!1524505 (lemmaContainsTupThenGetReturnValue!48 lt!1524506 (_1!26342 lt!1524483) (_2!26342 lt!1524483)))))

(declare-fun insertNoDuplicatedKeys!32 (List!48146 K!9169 V!9371) List!48146)

(assert (=> d!1266929 (= lt!1524506 (insertNoDuplicatedKeys!32 (toList!2260 (extractMap!286 (toList!2259 lt!1524470))) (_1!26342 lt!1524483) (_2!26342 lt!1524483)))))

(assert (=> d!1266929 (= (+!197 (extractMap!286 (toList!2259 lt!1524470)) lt!1524483) lt!1524504)))

(declare-fun b!4302951 () Bool)

(declare-fun res!1763635 () Bool)

(assert (=> b!4302951 (=> (not res!1763635) (not e!2675108))))

(assert (=> b!4302951 (= res!1763635 (= (getValueByKey!222 (toList!2260 lt!1524504) (_1!26342 lt!1524483)) (Some!10176 (_2!26342 lt!1524483))))))

(declare-fun b!4302952 () Bool)

(declare-fun contains!9945 (List!48146 tuple2!46126) Bool)

(assert (=> b!4302952 (= e!2675108 (contains!9945 (toList!2260 lt!1524504) lt!1524483))))

(assert (= (and d!1266929 res!1763636) b!4302951))

(assert (= (and b!4302951 res!1763635) b!4302952))

(declare-fun m!4895203 () Bool)

(assert (=> d!1266929 m!4895203))

(declare-fun m!4895205 () Bool)

(assert (=> d!1266929 m!4895205))

(declare-fun m!4895207 () Bool)

(assert (=> d!1266929 m!4895207))

(declare-fun m!4895209 () Bool)

(assert (=> d!1266929 m!4895209))

(declare-fun m!4895211 () Bool)

(assert (=> b!4302951 m!4895211))

(declare-fun m!4895213 () Bool)

(assert (=> b!4302952 m!4895213))

(assert (=> b!4302914 d!1266929))

(declare-fun d!1266931 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7541 (List!48146) (InoxSet tuple2!46126))

(assert (=> d!1266931 (= (eq!110 (extractMap!286 (toList!2259 lt!1524473)) (+!197 (extractMap!286 (toList!2259 lt!1524470)) lt!1524483)) (= (content!7541 (toList!2260 (extractMap!286 (toList!2259 lt!1524473)))) (content!7541 (toList!2260 (+!197 (extractMap!286 (toList!2259 lt!1524470)) lt!1524483)))))))

(declare-fun bs!604123 () Bool)

(assert (= bs!604123 d!1266931))

(declare-fun m!4895215 () Bool)

(assert (=> bs!604123 m!4895215))

(declare-fun m!4895217 () Bool)

(assert (=> bs!604123 m!4895217))

(assert (=> b!4302914 d!1266931))

(declare-fun d!1266933 () Bool)

(declare-fun e!2675111 () Bool)

(assert (=> d!1266933 e!2675111))

(declare-fun res!1763642 () Bool)

(assert (=> d!1266933 (=> (not res!1763642) (not e!2675111))))

(declare-fun lt!1524519 () ListLongMap!867)

(declare-fun contains!9946 (ListLongMap!867 (_ BitVec 64)) Bool)

(assert (=> d!1266933 (= res!1763642 (contains!9946 lt!1524519 (_1!26344 (tuple2!46131 lt!1524475 lt!1524474))))))

(declare-fun lt!1524518 () List!48147)

(assert (=> d!1266933 (= lt!1524519 (ListLongMap!868 lt!1524518))))

(declare-fun lt!1524517 () Unit!67003)

(declare-fun lt!1524516 () Unit!67003)

(assert (=> d!1266933 (= lt!1524517 lt!1524516)))

(declare-datatypes ((Option!10178 0))(
  ( (None!10177) (Some!10177 (v!42033 List!48146)) )
))
(declare-fun getValueByKey!223 (List!48147 (_ BitVec 64)) Option!10178)

(assert (=> d!1266933 (= (getValueByKey!223 lt!1524518 (_1!26344 (tuple2!46131 lt!1524475 lt!1524474))) (Some!10177 (_2!26344 (tuple2!46131 lt!1524475 lt!1524474))))))

(declare-fun lemmaContainsTupThenGetReturnValue!49 (List!48147 (_ BitVec 64) List!48146) Unit!67003)

(assert (=> d!1266933 (= lt!1524516 (lemmaContainsTupThenGetReturnValue!49 lt!1524518 (_1!26344 (tuple2!46131 lt!1524475 lt!1524474)) (_2!26344 (tuple2!46131 lt!1524475 lt!1524474))))))

(declare-fun insertStrictlySorted!25 (List!48147 (_ BitVec 64) List!48146) List!48147)

(assert (=> d!1266933 (= lt!1524518 (insertStrictlySorted!25 (toList!2259 lt!1524470) (_1!26344 (tuple2!46131 lt!1524475 lt!1524474)) (_2!26344 (tuple2!46131 lt!1524475 lt!1524474))))))

(assert (=> d!1266933 (= (+!198 lt!1524470 (tuple2!46131 lt!1524475 lt!1524474)) lt!1524519)))

(declare-fun b!4302957 () Bool)

(declare-fun res!1763641 () Bool)

(assert (=> b!4302957 (=> (not res!1763641) (not e!2675111))))

(assert (=> b!4302957 (= res!1763641 (= (getValueByKey!223 (toList!2259 lt!1524519) (_1!26344 (tuple2!46131 lt!1524475 lt!1524474))) (Some!10177 (_2!26344 (tuple2!46131 lt!1524475 lt!1524474)))))))

(declare-fun b!4302958 () Bool)

(declare-fun contains!9947 (List!48147 tuple2!46130) Bool)

(assert (=> b!4302958 (= e!2675111 (contains!9947 (toList!2259 lt!1524519) (tuple2!46131 lt!1524475 lt!1524474)))))

(assert (= (and d!1266933 res!1763642) b!4302957))

(assert (= (and b!4302957 res!1763641) b!4302958))

(declare-fun m!4895219 () Bool)

(assert (=> d!1266933 m!4895219))

(declare-fun m!4895221 () Bool)

(assert (=> d!1266933 m!4895221))

(declare-fun m!4895223 () Bool)

(assert (=> d!1266933 m!4895223))

(declare-fun m!4895225 () Bool)

(assert (=> d!1266933 m!4895225))

(declare-fun m!4895227 () Bool)

(assert (=> b!4302957 m!4895227))

(declare-fun m!4895229 () Bool)

(assert (=> b!4302958 m!4895229))

(assert (=> b!4302914 d!1266933))

(declare-fun d!1266935 () Bool)

(assert (=> d!1266935 (allKeysSameHash!142 (removePairForKey!166 lt!1524472 key!2048) lt!1524475 (hashF!6523 thiss!42308))))

(declare-fun lt!1524522 () Unit!67003)

(declare-fun choose!26186 (List!48146 K!9169 (_ BitVec 64) Hashable!4485) Unit!67003)

(assert (=> d!1266935 (= lt!1524522 (choose!26186 lt!1524472 key!2048 lt!1524475 (hashF!6523 thiss!42308)))))

(assert (=> d!1266935 (noDuplicateKeys!172 lt!1524472)))

(assert (=> d!1266935 (= (lemmaRemovePairForKeyPreservesHash!128 lt!1524472 key!2048 lt!1524475 (hashF!6523 thiss!42308)) lt!1524522)))

(declare-fun bs!604124 () Bool)

(assert (= bs!604124 d!1266935))

(assert (=> bs!604124 m!4895165))

(assert (=> bs!604124 m!4895165))

(declare-fun m!4895231 () Bool)

(assert (=> bs!604124 m!4895231))

(declare-fun m!4895233 () Bool)

(assert (=> bs!604124 m!4895233))

(assert (=> bs!604124 m!4895201))

(assert (=> b!4302914 d!1266935))

(declare-fun d!1266937 () Bool)

(declare-fun res!1763647 () Bool)

(declare-fun e!2675116 () Bool)

(assert (=> d!1266937 (=> res!1763647 e!2675116)))

(assert (=> d!1266937 (= res!1763647 ((_ is Nil!48023) (toList!2259 lt!1524473)))))

(assert (=> d!1266937 (= (forall!8664 (toList!2259 lt!1524473) lambda!132173) e!2675116)))

(declare-fun b!4302963 () Bool)

(declare-fun e!2675117 () Bool)

(assert (=> b!4302963 (= e!2675116 e!2675117)))

(declare-fun res!1763648 () Bool)

(assert (=> b!4302963 (=> (not res!1763648) (not e!2675117))))

(declare-fun dynLambda!20382 (Int tuple2!46130) Bool)

(assert (=> b!4302963 (= res!1763648 (dynLambda!20382 lambda!132173 (h!53444 (toList!2259 lt!1524473))))))

(declare-fun b!4302964 () Bool)

(assert (=> b!4302964 (= e!2675117 (forall!8664 (t!354918 (toList!2259 lt!1524473)) lambda!132173))))

(assert (= (and d!1266937 (not res!1763647)) b!4302963))

(assert (= (and b!4302963 res!1763648) b!4302964))

(declare-fun b_lambda!126443 () Bool)

(assert (=> (not b_lambda!126443) (not b!4302963)))

(declare-fun m!4895235 () Bool)

(assert (=> b!4302963 m!4895235))

(declare-fun m!4895237 () Bool)

(assert (=> b!4302964 m!4895237))

(assert (=> b!4302914 d!1266937))

(declare-fun d!1266939 () Bool)

(assert (=> d!1266939 true))

(assert (=> d!1266939 true))

(declare-fun lambda!132190 () Int)

(declare-fun forall!8665 (List!48146 Int) Bool)

(assert (=> d!1266939 (= (allKeysSameHash!142 lt!1524471 lt!1524475 (hashF!6523 thiss!42308)) (forall!8665 lt!1524471 lambda!132190))))

(declare-fun bs!604125 () Bool)

(assert (= bs!604125 d!1266939))

(declare-fun m!4895239 () Bool)

(assert (=> bs!604125 m!4895239))

(assert (=> b!4302914 d!1266939))

(declare-fun bs!604126 () Bool)

(declare-fun b!4302969 () Bool)

(assert (= bs!604126 (and b!4302969 d!1266921)))

(declare-fun lambda!132191 () Int)

(assert (=> bs!604126 (not (= lambda!132191 lambda!132179))))

(declare-fun bs!604127 () Bool)

(assert (= bs!604127 (and b!4302969 d!1266925)))

(assert (=> bs!604127 (= lambda!132191 lambda!132187)))

(declare-fun bs!604128 () Bool)

(assert (= bs!604128 (and b!4302969 b!4302934)))

(assert (=> bs!604128 (= lambda!132191 lambda!132176)))

(declare-fun bs!604129 () Bool)

(assert (= bs!604129 (and b!4302969 b!4302914)))

(assert (=> bs!604129 (= lambda!132191 lambda!132173)))

(declare-fun bs!604130 () Bool)

(assert (= bs!604130 (and b!4302969 d!1266923)))

(assert (=> bs!604130 (= lambda!132191 lambda!132184)))

(declare-fun d!1266941 () Bool)

(declare-fun res!1763649 () Bool)

(declare-fun e!2675118 () Bool)

(assert (=> d!1266941 (=> (not res!1763649) (not e!2675118))))

(assert (=> d!1266941 (= res!1763649 (valid!3552 (v!42027 (underlying!9368 (HashMap!4475 (Cell!18088 (_2!26343 lt!1524477)) (hashF!6523 thiss!42308) (_size!9182 thiss!42308) (defaultValue!4646 thiss!42308))))))))

(assert (=> d!1266941 (= (valid!3551 (HashMap!4475 (Cell!18088 (_2!26343 lt!1524477)) (hashF!6523 thiss!42308) (_size!9182 thiss!42308) (defaultValue!4646 thiss!42308))) e!2675118)))

(declare-fun res!1763650 () Bool)

(assert (=> b!4302969 (=> (not res!1763650) (not e!2675118))))

(assert (=> b!4302969 (= res!1763650 (forall!8664 (toList!2259 (map!9987 (v!42027 (underlying!9368 (HashMap!4475 (Cell!18088 (_2!26343 lt!1524477)) (hashF!6523 thiss!42308) (_size!9182 thiss!42308) (defaultValue!4646 thiss!42308)))))) lambda!132191))))

(declare-fun b!4302970 () Bool)

(assert (=> b!4302970 (= e!2675118 (allKeysSameHashInMap!291 (map!9987 (v!42027 (underlying!9368 (HashMap!4475 (Cell!18088 (_2!26343 lt!1524477)) (hashF!6523 thiss!42308) (_size!9182 thiss!42308) (defaultValue!4646 thiss!42308))))) (hashF!6523 (HashMap!4475 (Cell!18088 (_2!26343 lt!1524477)) (hashF!6523 thiss!42308) (_size!9182 thiss!42308) (defaultValue!4646 thiss!42308)))))))

(assert (= (and d!1266941 res!1763649) b!4302969))

(assert (= (and b!4302969 res!1763650) b!4302970))

(declare-fun m!4895241 () Bool)

(assert (=> d!1266941 m!4895241))

(declare-fun m!4895243 () Bool)

(assert (=> b!4302969 m!4895243))

(declare-fun m!4895245 () Bool)

(assert (=> b!4302969 m!4895245))

(assert (=> b!4302970 m!4895243))

(assert (=> b!4302970 m!4895243))

(declare-fun m!4895247 () Bool)

(assert (=> b!4302970 m!4895247))

(assert (=> b!4302914 d!1266941))

(declare-fun bs!604131 () Bool)

(declare-fun d!1266943 () Bool)

(assert (= bs!604131 (and d!1266943 d!1266925)))

(declare-fun lambda!132194 () Int)

(assert (=> bs!604131 (= lambda!132194 lambda!132187)))

(declare-fun bs!604132 () Bool)

(assert (= bs!604132 (and d!1266943 b!4302934)))

(assert (=> bs!604132 (= lambda!132194 lambda!132176)))

(declare-fun bs!604133 () Bool)

(assert (= bs!604133 (and d!1266943 b!4302914)))

(assert (=> bs!604133 (= lambda!132194 lambda!132173)))

(declare-fun bs!604134 () Bool)

(assert (= bs!604134 (and d!1266943 d!1266923)))

(assert (=> bs!604134 (= lambda!132194 lambda!132184)))

(declare-fun bs!604135 () Bool)

(assert (= bs!604135 (and d!1266943 b!4302969)))

(assert (=> bs!604135 (= lambda!132194 lambda!132191)))

(declare-fun bs!604136 () Bool)

(assert (= bs!604136 (and d!1266943 d!1266921)))

(assert (=> bs!604136 (not (= lambda!132194 lambda!132179))))

(assert (=> d!1266943 (eq!110 (extractMap!286 (toList!2259 (+!198 lt!1524470 (tuple2!46131 lt!1524475 lt!1524474)))) (+!197 (extractMap!286 (toList!2259 lt!1524470)) (tuple2!46127 key!2048 v!9179)))))

(declare-fun lt!1524525 () Unit!67003)

(declare-fun choose!26187 (ListLongMap!867 (_ BitVec 64) List!48146 K!9169 V!9371 Hashable!4485) Unit!67003)

(assert (=> d!1266943 (= lt!1524525 (choose!26187 lt!1524470 lt!1524475 lt!1524474 key!2048 v!9179 (hashF!6523 thiss!42308)))))

(assert (=> d!1266943 (forall!8664 (toList!2259 lt!1524470) lambda!132194)))

(assert (=> d!1266943 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!42 lt!1524470 lt!1524475 lt!1524474 key!2048 v!9179 (hashF!6523 thiss!42308)) lt!1524525)))

(declare-fun bs!604137 () Bool)

(assert (= bs!604137 d!1266943))

(declare-fun m!4895249 () Bool)

(assert (=> bs!604137 m!4895249))

(assert (=> bs!604137 m!4895113))

(declare-fun m!4895251 () Bool)

(assert (=> bs!604137 m!4895251))

(assert (=> bs!604137 m!4895113))

(declare-fun m!4895253 () Bool)

(assert (=> bs!604137 m!4895253))

(declare-fun m!4895255 () Bool)

(assert (=> bs!604137 m!4895255))

(assert (=> bs!604137 m!4895121))

(assert (=> bs!604137 m!4895251))

(assert (=> bs!604137 m!4895253))

(declare-fun m!4895257 () Bool)

(assert (=> bs!604137 m!4895257))

(assert (=> b!4302914 d!1266943))

(declare-fun bs!604138 () Bool)

(declare-fun d!1266945 () Bool)

(assert (= bs!604138 (and d!1266945 d!1266939)))

(declare-fun lambda!132195 () Int)

(assert (=> bs!604138 (= lambda!132195 lambda!132190)))

(assert (=> d!1266945 true))

(assert (=> d!1266945 true))

(assert (=> d!1266945 (= (allKeysSameHash!142 lt!1524472 lt!1524475 (hashF!6523 thiss!42308)) (forall!8665 lt!1524472 lambda!132195))))

(declare-fun bs!604139 () Bool)

(assert (= bs!604139 d!1266945))

(declare-fun m!4895259 () Bool)

(assert (=> bs!604139 m!4895259))

(assert (=> b!4302914 d!1266945))

(declare-fun bs!604140 () Bool)

(declare-fun d!1266947 () Bool)

(assert (= bs!604140 (and d!1266947 d!1266925)))

(declare-fun lambda!132196 () Int)

(assert (=> bs!604140 (= lambda!132196 lambda!132187)))

(declare-fun bs!604141 () Bool)

(assert (= bs!604141 (and d!1266947 b!4302934)))

(assert (=> bs!604141 (= lambda!132196 lambda!132176)))

(declare-fun bs!604142 () Bool)

(assert (= bs!604142 (and d!1266947 d!1266943)))

(assert (=> bs!604142 (= lambda!132196 lambda!132194)))

(declare-fun bs!604143 () Bool)

(assert (= bs!604143 (and d!1266947 b!4302914)))

(assert (=> bs!604143 (= lambda!132196 lambda!132173)))

(declare-fun bs!604144 () Bool)

(assert (= bs!604144 (and d!1266947 d!1266923)))

(assert (=> bs!604144 (= lambda!132196 lambda!132184)))

(declare-fun bs!604145 () Bool)

(assert (= bs!604145 (and d!1266947 b!4302969)))

(assert (=> bs!604145 (= lambda!132196 lambda!132191)))

(declare-fun bs!604146 () Bool)

(assert (= bs!604146 (and d!1266947 d!1266921)))

(assert (=> bs!604146 (not (= lambda!132196 lambda!132179))))

(declare-fun lt!1524526 () ListMap!1545)

(assert (=> d!1266947 (invariantList!553 (toList!2260 lt!1524526))))

(declare-fun e!2675119 () ListMap!1545)

(assert (=> d!1266947 (= lt!1524526 e!2675119)))

(declare-fun c!731727 () Bool)

(assert (=> d!1266947 (= c!731727 ((_ is Cons!48023) (toList!2259 lt!1524470)))))

(assert (=> d!1266947 (forall!8664 (toList!2259 lt!1524470) lambda!132196)))

(assert (=> d!1266947 (= (extractMap!286 (toList!2259 lt!1524470)) lt!1524526)))

(declare-fun b!4302971 () Bool)

(assert (=> b!4302971 (= e!2675119 (addToMapMapFromBucket!24 (_2!26344 (h!53444 (toList!2259 lt!1524470))) (extractMap!286 (t!354918 (toList!2259 lt!1524470)))))))

(declare-fun b!4302972 () Bool)

(assert (=> b!4302972 (= e!2675119 (ListMap!1546 Nil!48022))))

(assert (= (and d!1266947 c!731727) b!4302971))

(assert (= (and d!1266947 (not c!731727)) b!4302972))

(declare-fun m!4895261 () Bool)

(assert (=> d!1266947 m!4895261))

(declare-fun m!4895263 () Bool)

(assert (=> d!1266947 m!4895263))

(declare-fun m!4895265 () Bool)

(assert (=> b!4302971 m!4895265))

(assert (=> b!4302971 m!4895265))

(declare-fun m!4895267 () Bool)

(assert (=> b!4302971 m!4895267))

(assert (=> b!4302914 d!1266947))

(declare-fun d!1266949 () Bool)

(declare-fun res!1763655 () Bool)

(declare-fun e!2675124 () Bool)

(assert (=> d!1266949 (=> res!1763655 e!2675124)))

(assert (=> d!1266949 (= res!1763655 (not ((_ is Cons!48022) lt!1524471)))))

(assert (=> d!1266949 (= (noDuplicateKeys!172 lt!1524471) e!2675124)))

(declare-fun b!4302977 () Bool)

(declare-fun e!2675125 () Bool)

(assert (=> b!4302977 (= e!2675124 e!2675125)))

(declare-fun res!1763656 () Bool)

(assert (=> b!4302977 (=> (not res!1763656) (not e!2675125))))

(assert (=> b!4302977 (= res!1763656 (not (containsKey!258 (t!354917 lt!1524471) (_1!26342 (h!53443 lt!1524471)))))))

(declare-fun b!4302978 () Bool)

(assert (=> b!4302978 (= e!2675125 (noDuplicateKeys!172 (t!354917 lt!1524471)))))

(assert (= (and d!1266949 (not res!1763655)) b!4302977))

(assert (= (and b!4302977 res!1763656) b!4302978))

(declare-fun m!4895269 () Bool)

(assert (=> b!4302977 m!4895269))

(declare-fun m!4895271 () Bool)

(assert (=> b!4302978 m!4895271))

(assert (=> b!4302914 d!1266949))

(declare-fun bs!604147 () Bool)

(declare-fun d!1266951 () Bool)

(assert (= bs!604147 (and d!1266951 d!1266947)))

(declare-fun lambda!132199 () Int)

(assert (=> bs!604147 (not (= lambda!132199 lambda!132196))))

(declare-fun bs!604148 () Bool)

(assert (= bs!604148 (and d!1266951 d!1266925)))

(assert (=> bs!604148 (not (= lambda!132199 lambda!132187))))

(declare-fun bs!604149 () Bool)

(assert (= bs!604149 (and d!1266951 b!4302934)))

(assert (=> bs!604149 (not (= lambda!132199 lambda!132176))))

(declare-fun bs!604150 () Bool)

(assert (= bs!604150 (and d!1266951 d!1266943)))

(assert (=> bs!604150 (not (= lambda!132199 lambda!132194))))

(declare-fun bs!604151 () Bool)

(assert (= bs!604151 (and d!1266951 b!4302914)))

(assert (=> bs!604151 (not (= lambda!132199 lambda!132173))))

(declare-fun bs!604152 () Bool)

(assert (= bs!604152 (and d!1266951 d!1266923)))

(assert (=> bs!604152 (not (= lambda!132199 lambda!132184))))

(declare-fun bs!604153 () Bool)

(assert (= bs!604153 (and d!1266951 b!4302969)))

(assert (=> bs!604153 (not (= lambda!132199 lambda!132191))))

(declare-fun bs!604154 () Bool)

(assert (= bs!604154 (and d!1266951 d!1266921)))

(assert (=> bs!604154 (= lambda!132199 lambda!132179)))

(assert (=> d!1266951 true))

(assert (=> d!1266951 (allKeysSameHash!142 lt!1524472 lt!1524475 (hashF!6523 thiss!42308))))

(declare-fun lt!1524529 () Unit!67003)

(declare-fun choose!26188 (List!48147 (_ BitVec 64) List!48146 Hashable!4485) Unit!67003)

(assert (=> d!1266951 (= lt!1524529 (choose!26188 (toList!2259 lt!1524470) lt!1524475 lt!1524472 (hashF!6523 thiss!42308)))))

(assert (=> d!1266951 (forall!8664 (toList!2259 lt!1524470) lambda!132199)))

(assert (=> d!1266951 (= (lemmaInLongMapAllKeySameHashThenForTuple!133 (toList!2259 lt!1524470) lt!1524475 lt!1524472 (hashF!6523 thiss!42308)) lt!1524529)))

(declare-fun bs!604155 () Bool)

(assert (= bs!604155 d!1266951))

(assert (=> bs!604155 m!4895141))

(declare-fun m!4895273 () Bool)

(assert (=> bs!604155 m!4895273))

(declare-fun m!4895275 () Bool)

(assert (=> bs!604155 m!4895275))

(assert (=> b!4302914 d!1266951))

(declare-fun d!1266953 () Bool)

(assert (=> d!1266953 (= (array_inv!5253 (_keys!4869 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) (bvsge (size!35362 (_keys!4869 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4302922 d!1266953))

(declare-fun d!1266955 () Bool)

(assert (=> d!1266955 (= (array_inv!5254 (_values!4850 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) (bvsge (size!35363 (_values!4850 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4302922 d!1266955))

(declare-fun b!4302997 () Bool)

(declare-fun e!2675139 () tuple2!46128)

(declare-fun lt!1524538 () tuple2!46128)

(assert (=> b!4302997 (= e!2675139 (tuple2!46129 false (_2!26343 lt!1524538)))))

(declare-fun b!4302998 () Bool)

(declare-fun e!2675136 () tuple2!46128)

(declare-fun lt!1524540 () tuple2!46128)

(assert (=> b!4302998 (= e!2675136 (tuple2!46129 (_1!26343 lt!1524540) (_2!26343 lt!1524540)))))

(declare-fun repack!39 (MutLongMap!4569) tuple2!46128)

(assert (=> b!4302998 (= lt!1524540 (repack!39 (v!42027 (underlying!9368 thiss!42308))))))

(declare-fun bm!296687 () Bool)

(declare-fun call!296693 () ListLongMap!867)

(declare-fun lt!1524539 () tuple2!46128)

(assert (=> bm!296687 (= call!296693 (map!9987 (_2!26343 lt!1524539)))))

(declare-fun d!1266957 () Bool)

(declare-fun e!2675140 () Bool)

(assert (=> d!1266957 e!2675140))

(declare-fun res!1763664 () Bool)

(assert (=> d!1266957 (=> (not res!1763664) (not e!2675140))))

(assert (=> d!1266957 (= res!1763664 ((_ is LongMap!4569) (_2!26343 lt!1524539)))))

(assert (=> d!1266957 (= lt!1524539 e!2675139)))

(declare-fun c!731735 () Bool)

(assert (=> d!1266957 (= c!731735 (_1!26343 lt!1524538))))

(assert (=> d!1266957 (= lt!1524538 e!2675136)))

(declare-fun c!731736 () Bool)

(declare-fun imbalanced!35 (MutLongMap!4569) Bool)

(assert (=> d!1266957 (= c!731736 (imbalanced!35 (v!42027 (underlying!9368 thiss!42308))))))

(assert (=> d!1266957 (valid!3552 (v!42027 (underlying!9368 thiss!42308)))))

(assert (=> d!1266957 (= (update!364 (v!42027 (underlying!9368 thiss!42308)) lt!1524475 lt!1524474) lt!1524539)))

(declare-fun b!4302999 () Bool)

(declare-fun e!2675137 () Bool)

(assert (=> b!4302999 (= e!2675140 e!2675137)))

(declare-fun c!731734 () Bool)

(assert (=> b!4302999 (= c!731734 (_1!26343 lt!1524539))))

(declare-fun b!4303000 () Bool)

(declare-datatypes ((tuple2!46132 0))(
  ( (tuple2!46133 (_1!26345 Bool) (_2!26345 LongMapFixedSize!9138)) )
))
(declare-fun lt!1524541 () tuple2!46132)

(assert (=> b!4303000 (= e!2675139 (tuple2!46129 (_1!26345 lt!1524541) (LongMap!4569 (Cell!18086 (_2!26345 lt!1524541)))))))

(declare-fun update!365 (LongMapFixedSize!9138 (_ BitVec 64) List!48146) tuple2!46132)

(assert (=> b!4303000 (= lt!1524541 (update!365 (v!42026 (underlying!9367 (_2!26343 lt!1524538))) lt!1524475 lt!1524474))))

(declare-fun bm!296688 () Bool)

(declare-fun call!296692 () ListLongMap!867)

(assert (=> bm!296688 (= call!296692 (map!9987 (v!42027 (underlying!9368 thiss!42308))))))

(declare-fun b!4303001 () Bool)

(assert (=> b!4303001 (= e!2675137 (= call!296693 call!296692))))

(declare-fun b!4303002 () Bool)

(declare-fun e!2675138 () Bool)

(assert (=> b!4303002 (= e!2675138 (= call!296693 (+!198 call!296692 (tuple2!46131 lt!1524475 lt!1524474))))))

(declare-fun b!4303003 () Bool)

(declare-fun res!1763663 () Bool)

(assert (=> b!4303003 (=> (not res!1763663) (not e!2675140))))

(assert (=> b!4303003 (= res!1763663 (valid!3552 (_2!26343 lt!1524539)))))

(declare-fun b!4303004 () Bool)

(assert (=> b!4303004 (= e!2675136 (tuple2!46129 true (v!42027 (underlying!9368 thiss!42308))))))

(declare-fun b!4303005 () Bool)

(assert (=> b!4303005 (= e!2675137 e!2675138)))

(declare-fun res!1763665 () Bool)

(assert (=> b!4303005 (= res!1763665 (contains!9946 call!296693 lt!1524475))))

(assert (=> b!4303005 (=> (not res!1763665) (not e!2675138))))

(assert (= (and d!1266957 c!731736) b!4302998))

(assert (= (and d!1266957 (not c!731736)) b!4303004))

(assert (= (and d!1266957 c!731735) b!4303000))

(assert (= (and d!1266957 (not c!731735)) b!4302997))

(assert (= (and d!1266957 res!1763664) b!4303003))

(assert (= (and b!4303003 res!1763663) b!4302999))

(assert (= (and b!4302999 c!731734) b!4303005))

(assert (= (and b!4302999 (not c!731734)) b!4303001))

(assert (= (and b!4303005 res!1763665) b!4303002))

(assert (= (or b!4303002 b!4303001) bm!296688))

(assert (= (or b!4303005 b!4303002 b!4303001) bm!296687))

(assert (=> bm!296688 m!4895151))

(declare-fun m!4895277 () Bool)

(assert (=> b!4303002 m!4895277))

(declare-fun m!4895279 () Bool)

(assert (=> b!4303000 m!4895279))

(declare-fun m!4895281 () Bool)

(assert (=> d!1266957 m!4895281))

(assert (=> d!1266957 m!4895173))

(declare-fun m!4895283 () Bool)

(assert (=> bm!296687 m!4895283))

(declare-fun m!4895285 () Bool)

(assert (=> b!4303003 m!4895285))

(declare-fun m!4895287 () Bool)

(assert (=> b!4303005 m!4895287))

(declare-fun m!4895289 () Bool)

(assert (=> b!4302998 m!4895289))

(assert (=> b!4302923 d!1266957))

(declare-fun b!4303014 () Bool)

(declare-fun e!2675145 () List!48146)

(assert (=> b!4303014 (= e!2675145 (t!354917 lt!1524472))))

(declare-fun b!4303017 () Bool)

(declare-fun e!2675146 () List!48146)

(assert (=> b!4303017 (= e!2675146 Nil!48022)))

(declare-fun b!4303016 () Bool)

(assert (=> b!4303016 (= e!2675146 (Cons!48022 (h!53443 lt!1524472) (removePairForKey!166 (t!354917 lt!1524472) key!2048)))))

(declare-fun d!1266959 () Bool)

(declare-fun lt!1524544 () List!48146)

(assert (=> d!1266959 (not (containsKey!258 lt!1524544 key!2048))))

(assert (=> d!1266959 (= lt!1524544 e!2675145)))

(declare-fun c!731741 () Bool)

(assert (=> d!1266959 (= c!731741 (and ((_ is Cons!48022) lt!1524472) (= (_1!26342 (h!53443 lt!1524472)) key!2048)))))

(assert (=> d!1266959 (noDuplicateKeys!172 lt!1524472)))

(assert (=> d!1266959 (= (removePairForKey!166 lt!1524472 key!2048) lt!1524544)))

(declare-fun b!4303015 () Bool)

(assert (=> b!4303015 (= e!2675145 e!2675146)))

(declare-fun c!731742 () Bool)

(assert (=> b!4303015 (= c!731742 ((_ is Cons!48022) lt!1524472))))

(assert (= (and d!1266959 c!731741) b!4303014))

(assert (= (and d!1266959 (not c!731741)) b!4303015))

(assert (= (and b!4303015 c!731742) b!4303016))

(assert (= (and b!4303015 (not c!731742)) b!4303017))

(declare-fun m!4895291 () Bool)

(assert (=> b!4303016 m!4895291))

(declare-fun m!4895293 () Bool)

(assert (=> d!1266959 m!4895293))

(assert (=> d!1266959 m!4895201))

(assert (=> b!4302923 d!1266959))

(declare-fun d!1266961 () Bool)

(declare-fun e!2675149 () Bool)

(assert (=> d!1266961 e!2675149))

(declare-fun c!731745 () Bool)

(declare-fun contains!9948 (MutLongMap!4569 (_ BitVec 64)) Bool)

(assert (=> d!1266961 (= c!731745 (contains!9948 (v!42027 (underlying!9368 thiss!42308)) lt!1524475))))

(declare-fun lt!1524547 () List!48146)

(declare-fun apply!10917 (LongMapFixedSize!9138 (_ BitVec 64)) List!48146)

(assert (=> d!1266961 (= lt!1524547 (apply!10917 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))) lt!1524475))))

(assert (=> d!1266961 (valid!3552 (v!42027 (underlying!9368 thiss!42308)))))

(assert (=> d!1266961 (= (apply!10916 (v!42027 (underlying!9368 thiss!42308)) lt!1524475) lt!1524547)))

(declare-fun b!4303022 () Bool)

(declare-fun get!15530 (Option!10178) List!48146)

(assert (=> b!4303022 (= e!2675149 (= lt!1524547 (get!15530 (getValueByKey!223 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308)))) lt!1524475))))))

(declare-fun b!4303023 () Bool)

(declare-fun dynLambda!20383 (Int (_ BitVec 64)) List!48146)

(assert (=> b!4303023 (= e!2675149 (= lt!1524547 (dynLambda!20383 (defaultEntry!4954 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308))))) lt!1524475)))))

(assert (=> b!4303023 ((_ is LongMap!4569) (v!42027 (underlying!9368 thiss!42308)))))

(assert (= (and d!1266961 c!731745) b!4303022))

(assert (= (and d!1266961 (not c!731745)) b!4303023))

(declare-fun b_lambda!126445 () Bool)

(assert (=> (not b_lambda!126445) (not b!4303023)))

(declare-fun t!354920 () Bool)

(declare-fun tb!257257 () Bool)

(assert (=> (and b!4302922 (= (defaultEntry!4954 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308))))) (defaultEntry!4954 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308)))))) t!354920) tb!257257))

(assert (=> b!4303023 t!354920))

(declare-fun result!314578 () Bool)

(declare-fun b_and!339625 () Bool)

(assert (= b_and!339621 (and (=> t!354920 result!314578) b_and!339625)))

(declare-fun m!4895295 () Bool)

(assert (=> d!1266961 m!4895295))

(declare-fun m!4895297 () Bool)

(assert (=> d!1266961 m!4895297))

(assert (=> d!1266961 m!4895173))

(assert (=> b!4303022 m!4895151))

(declare-fun m!4895299 () Bool)

(assert (=> b!4303022 m!4895299))

(assert (=> b!4303022 m!4895299))

(declare-fun m!4895301 () Bool)

(assert (=> b!4303022 m!4895301))

(declare-fun m!4895303 () Bool)

(assert (=> b!4303023 m!4895303))

(assert (=> b!4302923 d!1266961))

(declare-fun d!1266963 () Bool)

(declare-fun hash!877 (Hashable!4485 K!9169) (_ BitVec 64))

(assert (=> d!1266963 (= (hash!872 (hashF!6523 thiss!42308) key!2048) (hash!877 (hashF!6523 thiss!42308) key!2048))))

(declare-fun bs!604156 () Bool)

(assert (= bs!604156 d!1266963))

(declare-fun m!4895305 () Bool)

(assert (=> bs!604156 m!4895305))

(assert (=> b!4302923 d!1266963))

(declare-fun bs!604157 () Bool)

(declare-fun b!4303050 () Bool)

(assert (= bs!604157 (and b!4303050 d!1266947)))

(declare-fun lambda!132202 () Int)

(assert (=> bs!604157 (= lambda!132202 lambda!132196)))

(declare-fun bs!604158 () Bool)

(assert (= bs!604158 (and b!4303050 d!1266951)))

(assert (=> bs!604158 (not (= lambda!132202 lambda!132199))))

(declare-fun bs!604159 () Bool)

(assert (= bs!604159 (and b!4303050 d!1266925)))

(assert (=> bs!604159 (= lambda!132202 lambda!132187)))

(declare-fun bs!604160 () Bool)

(assert (= bs!604160 (and b!4303050 b!4302934)))

(assert (=> bs!604160 (= lambda!132202 lambda!132176)))

(declare-fun bs!604161 () Bool)

(assert (= bs!604161 (and b!4303050 d!1266943)))

(assert (=> bs!604161 (= lambda!132202 lambda!132194)))

(declare-fun bs!604162 () Bool)

(assert (= bs!604162 (and b!4303050 b!4302914)))

(assert (=> bs!604162 (= lambda!132202 lambda!132173)))

(declare-fun bs!604163 () Bool)

(assert (= bs!604163 (and b!4303050 d!1266923)))

(assert (=> bs!604163 (= lambda!132202 lambda!132184)))

(declare-fun bs!604164 () Bool)

(assert (= bs!604164 (and b!4303050 b!4302969)))

(assert (=> bs!604164 (= lambda!132202 lambda!132191)))

(declare-fun bs!604165 () Bool)

(assert (= bs!604165 (and b!4303050 d!1266921)))

(assert (=> bs!604165 (not (= lambda!132202 lambda!132179))))

(declare-fun bm!296701 () Bool)

(declare-fun call!296708 () ListLongMap!867)

(assert (=> bm!296701 (= call!296708 (map!9987 (v!42027 (underlying!9368 thiss!42308))))))

(declare-fun b!4303046 () Bool)

(declare-fun e!2675167 () Unit!67003)

(declare-fun Unit!67005 () Unit!67003)

(assert (=> b!4303046 (= e!2675167 Unit!67005)))

(declare-fun b!4303047 () Bool)

(declare-fun e!2675166 () Unit!67003)

(declare-fun Unit!67006 () Unit!67003)

(assert (=> b!4303047 (= e!2675166 Unit!67006)))

(declare-fun b!4303048 () Bool)

(declare-fun e!2675170 () Unit!67003)

(declare-fun lt!1524592 () Unit!67003)

(assert (=> b!4303048 (= e!2675170 lt!1524592)))

(declare-fun lt!1524605 () ListLongMap!867)

(assert (=> b!4303048 (= lt!1524605 call!296708)))

(declare-fun lemmaInGenericMapThenInLongMap!114 (ListLongMap!867 K!9169 Hashable!4485) Unit!67003)

(assert (=> b!4303048 (= lt!1524592 (lemmaInGenericMapThenInLongMap!114 lt!1524605 key!2048 (hashF!6523 thiss!42308)))))

(declare-fun res!1763672 () Bool)

(declare-fun call!296709 () Bool)

(assert (=> b!4303048 (= res!1763672 call!296709)))

(declare-fun e!2675169 () Bool)

(assert (=> b!4303048 (=> (not res!1763672) (not e!2675169))))

(assert (=> b!4303048 e!2675169))

(declare-fun bm!296703 () Bool)

(declare-datatypes ((Option!10179 0))(
  ( (None!10178) (Some!10178 (v!42034 tuple2!46126)) )
))
(declare-fun call!296710 () Option!10179)

(declare-fun call!296707 () List!48146)

(declare-fun getPair!114 (List!48146 K!9169) Option!10179)

(assert (=> bm!296703 (= call!296710 (getPair!114 call!296707 key!2048))))

(declare-fun b!4303049 () Bool)

(assert (=> b!4303049 false))

(declare-fun lt!1524602 () Unit!67003)

(declare-fun lt!1524589 () Unit!67003)

(assert (=> b!4303049 (= lt!1524602 lt!1524589)))

(declare-fun lt!1524601 () ListLongMap!867)

(assert (=> b!4303049 (contains!9944 (extractMap!286 (toList!2259 lt!1524601)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!114 (ListLongMap!867 K!9169 Hashable!4485) Unit!67003)

(assert (=> b!4303049 (= lt!1524589 (lemmaInLongMapThenInGenericMap!114 lt!1524601 key!2048 (hashF!6523 thiss!42308)))))

(assert (=> b!4303049 (= lt!1524601 call!296708)))

(declare-fun Unit!67007 () Unit!67003)

(assert (=> b!4303049 (= e!2675166 Unit!67007)))

(declare-fun e!2675164 () Unit!67003)

(declare-fun lt!1524596 () (_ BitVec 64))

(declare-fun forallContained!1481 (List!48147 Int tuple2!46130) Unit!67003)

(assert (=> b!4303050 (= e!2675164 (forallContained!1481 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308)))) lambda!132202 (tuple2!46131 lt!1524596 (apply!10916 (v!42027 (underlying!9368 thiss!42308)) lt!1524596))))))

(declare-fun c!731757 () Bool)

(assert (=> b!4303050 (= c!731757 (not (contains!9947 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308)))) (tuple2!46131 lt!1524596 (apply!10916 (v!42027 (underlying!9368 thiss!42308)) lt!1524596)))))))

(declare-fun lt!1524600 () Unit!67003)

(assert (=> b!4303050 (= lt!1524600 e!2675167)))

(declare-fun b!4303051 () Bool)

(declare-fun e!2675168 () Bool)

(declare-fun call!296706 () Bool)

(assert (=> b!4303051 (= e!2675168 call!296706)))

(declare-fun bm!296704 () Bool)

(declare-fun isDefined!7486 (Option!10179) Bool)

(assert (=> bm!296704 (= call!296706 (isDefined!7486 call!296710))))

(declare-fun bm!296702 () Bool)

(declare-fun c!731756 () Bool)

(declare-fun call!296711 () (_ BitVec 64))

(assert (=> bm!296702 (= call!296709 (contains!9946 (ite c!731756 lt!1524605 call!296708) call!296711))))

(declare-fun d!1266965 () Bool)

(declare-fun lt!1524594 () Bool)

(assert (=> d!1266965 (= lt!1524594 (contains!9944 (map!9988 thiss!42308) key!2048))))

(declare-fun e!2675165 () Bool)

(assert (=> d!1266965 (= lt!1524594 e!2675165)))

(declare-fun res!1763673 () Bool)

(assert (=> d!1266965 (=> (not res!1763673) (not e!2675165))))

(assert (=> d!1266965 (= res!1763673 (contains!9948 (v!42027 (underlying!9368 thiss!42308)) lt!1524596))))

(declare-fun lt!1524604 () Unit!67003)

(assert (=> d!1266965 (= lt!1524604 e!2675170)))

(assert (=> d!1266965 (= c!731756 (contains!9944 (extractMap!286 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308))))) key!2048))))

(declare-fun lt!1524598 () Unit!67003)

(assert (=> d!1266965 (= lt!1524598 e!2675164)))

(declare-fun c!731755 () Bool)

(assert (=> d!1266965 (= c!731755 (contains!9948 (v!42027 (underlying!9368 thiss!42308)) lt!1524596))))

(assert (=> d!1266965 (= lt!1524596 (hash!872 (hashF!6523 thiss!42308) key!2048))))

(assert (=> d!1266965 (valid!3551 thiss!42308)))

(assert (=> d!1266965 (= (contains!9943 thiss!42308 key!2048) lt!1524594)))

(declare-fun bm!296705 () Bool)

(assert (=> bm!296705 (= call!296711 (hash!872 (hashF!6523 thiss!42308) key!2048))))

(declare-fun b!4303052 () Bool)

(assert (=> b!4303052 (= e!2675169 call!296706)))

(declare-fun b!4303053 () Bool)

(assert (=> b!4303053 (= e!2675165 (isDefined!7486 (getPair!114 (apply!10916 (v!42027 (underlying!9368 thiss!42308)) lt!1524596) key!2048)))))

(declare-fun b!4303054 () Bool)

(assert (=> b!4303054 false))

(declare-fun lt!1524591 () Unit!67003)

(declare-fun lt!1524588 () Unit!67003)

(assert (=> b!4303054 (= lt!1524591 lt!1524588)))

(declare-fun lt!1524606 () List!48147)

(declare-fun lt!1524590 () List!48146)

(assert (=> b!4303054 (contains!9947 lt!1524606 (tuple2!46131 lt!1524596 lt!1524590))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!125 (List!48147 (_ BitVec 64) List!48146) Unit!67003)

(assert (=> b!4303054 (= lt!1524588 (lemmaGetValueByKeyImpliesContainsTuple!125 lt!1524606 lt!1524596 lt!1524590))))

(assert (=> b!4303054 (= lt!1524590 (apply!10916 (v!42027 (underlying!9368 thiss!42308)) lt!1524596))))

(assert (=> b!4303054 (= lt!1524606 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308)))))))

(declare-fun lt!1524599 () Unit!67003)

(declare-fun lt!1524593 () Unit!67003)

(assert (=> b!4303054 (= lt!1524599 lt!1524593)))

(declare-fun lt!1524595 () List!48147)

(declare-fun isDefined!7487 (Option!10178) Bool)

(assert (=> b!4303054 (isDefined!7487 (getValueByKey!223 lt!1524595 lt!1524596))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!149 (List!48147 (_ BitVec 64)) Unit!67003)

(assert (=> b!4303054 (= lt!1524593 (lemmaContainsKeyImpliesGetValueByKeyDefined!149 lt!1524595 lt!1524596))))

(assert (=> b!4303054 (= lt!1524595 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308)))))))

(declare-fun lt!1524603 () Unit!67003)

(declare-fun lt!1524607 () Unit!67003)

(assert (=> b!4303054 (= lt!1524603 lt!1524607)))

(declare-fun lt!1524597 () List!48147)

(declare-fun containsKey!259 (List!48147 (_ BitVec 64)) Bool)

(assert (=> b!4303054 (containsKey!259 lt!1524597 lt!1524596)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!115 (List!48147 (_ BitVec 64)) Unit!67003)

(assert (=> b!4303054 (= lt!1524607 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!115 lt!1524597 lt!1524596))))

(assert (=> b!4303054 (= lt!1524597 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308)))))))

(declare-fun Unit!67008 () Unit!67003)

(assert (=> b!4303054 (= e!2675167 Unit!67008)))

(declare-fun bm!296706 () Bool)

(declare-fun apply!10918 (ListLongMap!867 (_ BitVec 64)) List!48146)

(assert (=> bm!296706 (= call!296707 (apply!10918 (ite c!731756 lt!1524605 call!296708) call!296711))))

(declare-fun b!4303055 () Bool)

(assert (=> b!4303055 (= e!2675170 e!2675166)))

(declare-fun res!1763674 () Bool)

(assert (=> b!4303055 (= res!1763674 call!296709)))

(assert (=> b!4303055 (=> (not res!1763674) (not e!2675168))))

(declare-fun c!731754 () Bool)

(assert (=> b!4303055 (= c!731754 e!2675168)))

(declare-fun b!4303056 () Bool)

(declare-fun Unit!67009 () Unit!67003)

(assert (=> b!4303056 (= e!2675164 Unit!67009)))

(assert (= (and d!1266965 c!731755) b!4303050))

(assert (= (and d!1266965 (not c!731755)) b!4303056))

(assert (= (and b!4303050 c!731757) b!4303054))

(assert (= (and b!4303050 (not c!731757)) b!4303046))

(assert (= (and d!1266965 c!731756) b!4303048))

(assert (= (and d!1266965 (not c!731756)) b!4303055))

(assert (= (and b!4303048 res!1763672) b!4303052))

(assert (= (and b!4303055 res!1763674) b!4303051))

(assert (= (and b!4303055 c!731754) b!4303049))

(assert (= (and b!4303055 (not c!731754)) b!4303047))

(assert (= (or b!4303048 b!4303052 b!4303055 b!4303051) bm!296705))

(assert (= (or b!4303048 b!4303055 b!4303051 b!4303049) bm!296701))

(assert (= (or b!4303052 b!4303051) bm!296706))

(assert (= (or b!4303048 b!4303055) bm!296702))

(assert (= (or b!4303052 b!4303051) bm!296703))

(assert (= (or b!4303052 b!4303051) bm!296704))

(assert (= (and d!1266965 res!1763673) b!4303053))

(assert (=> bm!296705 m!4895169))

(declare-fun m!4895307 () Bool)

(assert (=> b!4303048 m!4895307))

(assert (=> bm!296701 m!4895151))

(declare-fun m!4895309 () Bool)

(assert (=> b!4303053 m!4895309))

(assert (=> b!4303053 m!4895309))

(declare-fun m!4895311 () Bool)

(assert (=> b!4303053 m!4895311))

(assert (=> b!4303053 m!4895311))

(declare-fun m!4895313 () Bool)

(assert (=> b!4303053 m!4895313))

(declare-fun m!4895315 () Bool)

(assert (=> bm!296703 m!4895315))

(assert (=> b!4303050 m!4895151))

(assert (=> b!4303050 m!4895309))

(declare-fun m!4895317 () Bool)

(assert (=> b!4303050 m!4895317))

(declare-fun m!4895319 () Bool)

(assert (=> b!4303050 m!4895319))

(declare-fun m!4895321 () Bool)

(assert (=> b!4303054 m!4895321))

(assert (=> b!4303054 m!4895309))

(declare-fun m!4895323 () Bool)

(assert (=> b!4303054 m!4895323))

(assert (=> b!4303054 m!4895151))

(declare-fun m!4895325 () Bool)

(assert (=> b!4303054 m!4895325))

(declare-fun m!4895327 () Bool)

(assert (=> b!4303054 m!4895327))

(declare-fun m!4895329 () Bool)

(assert (=> b!4303054 m!4895329))

(declare-fun m!4895331 () Bool)

(assert (=> b!4303054 m!4895331))

(assert (=> b!4303054 m!4895331))

(declare-fun m!4895333 () Bool)

(assert (=> b!4303054 m!4895333))

(declare-fun m!4895335 () Bool)

(assert (=> bm!296702 m!4895335))

(declare-fun m!4895337 () Bool)

(assert (=> bm!296706 m!4895337))

(assert (=> d!1266965 m!4895169))

(assert (=> d!1266965 m!4895155))

(assert (=> d!1266965 m!4895151))

(declare-fun m!4895339 () Bool)

(assert (=> d!1266965 m!4895339))

(assert (=> d!1266965 m!4895153))

(assert (=> d!1266965 m!4895153))

(declare-fun m!4895341 () Bool)

(assert (=> d!1266965 m!4895341))

(declare-fun m!4895343 () Bool)

(assert (=> d!1266965 m!4895343))

(declare-fun m!4895345 () Bool)

(assert (=> d!1266965 m!4895345))

(assert (=> d!1266965 m!4895343))

(declare-fun m!4895347 () Bool)

(assert (=> bm!296704 m!4895347))

(declare-fun m!4895349 () Bool)

(assert (=> b!4303049 m!4895349))

(assert (=> b!4303049 m!4895349))

(declare-fun m!4895351 () Bool)

(assert (=> b!4303049 m!4895351))

(declare-fun m!4895353 () Bool)

(assert (=> b!4303049 m!4895353))

(assert (=> b!4302920 d!1266965))

(declare-fun d!1266967 () Bool)

(declare-fun map!9989 (LongMapFixedSize!9138) ListLongMap!867)

(assert (=> d!1266967 (= (map!9987 (v!42027 (underlying!9368 thiss!42308))) (map!9989 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308))))))))

(declare-fun bs!604166 () Bool)

(assert (= bs!604166 d!1266967))

(declare-fun m!4895355 () Bool)

(assert (=> bs!604166 m!4895355))

(assert (=> b!4302920 d!1266967))

(declare-fun d!1266969 () Bool)

(declare-fun lt!1524610 () ListMap!1545)

(assert (=> d!1266969 (invariantList!553 (toList!2260 lt!1524610))))

(assert (=> d!1266969 (= lt!1524610 (extractMap!286 (toList!2259 (map!9987 (v!42027 (underlying!9368 thiss!42308))))))))

(assert (=> d!1266969 (valid!3551 thiss!42308)))

(assert (=> d!1266969 (= (map!9988 thiss!42308) lt!1524610)))

(declare-fun bs!604167 () Bool)

(assert (= bs!604167 d!1266969))

(declare-fun m!4895357 () Bool)

(assert (=> bs!604167 m!4895357))

(assert (=> bs!604167 m!4895151))

(assert (=> bs!604167 m!4895343))

(assert (=> bs!604167 m!4895155))

(assert (=> b!4302920 d!1266969))

(declare-fun d!1266971 () Bool)

(declare-fun res!1763675 () Bool)

(declare-fun e!2675171 () Bool)

(assert (=> d!1266971 (=> res!1763675 e!2675171)))

(assert (=> d!1266971 (= res!1763675 (not ((_ is Cons!48022) lt!1524474)))))

(assert (=> d!1266971 (= (noDuplicateKeys!172 lt!1524474) e!2675171)))

(declare-fun b!4303057 () Bool)

(declare-fun e!2675172 () Bool)

(assert (=> b!4303057 (= e!2675171 e!2675172)))

(declare-fun res!1763676 () Bool)

(assert (=> b!4303057 (=> (not res!1763676) (not e!2675172))))

(assert (=> b!4303057 (= res!1763676 (not (containsKey!258 (t!354917 lt!1524474) (_1!26342 (h!53443 lt!1524474)))))))

(declare-fun b!4303058 () Bool)

(assert (=> b!4303058 (= e!2675172 (noDuplicateKeys!172 (t!354917 lt!1524474)))))

(assert (= (and d!1266971 (not res!1763675)) b!4303057))

(assert (= (and b!4303057 res!1763676) b!4303058))

(declare-fun m!4895359 () Bool)

(assert (=> b!4303057 m!4895359))

(declare-fun m!4895361 () Bool)

(assert (=> b!4303058 m!4895361))

(assert (=> b!4302911 d!1266971))

(declare-fun b!4303063 () Bool)

(declare-fun tp!1322276 () Bool)

(declare-fun e!2675175 () Bool)

(assert (=> b!4303063 (= e!2675175 (and tp_is_empty!23415 tp_is_empty!23417 tp!1322276))))

(assert (=> b!4302922 (= tp!1322268 e!2675175)))

(assert (= (and b!4302922 ((_ is Cons!48022) (zeroValue!4828 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308))))))) b!4303063))

(declare-fun e!2675176 () Bool)

(declare-fun b!4303064 () Bool)

(declare-fun tp!1322277 () Bool)

(assert (=> b!4303064 (= e!2675176 (and tp_is_empty!23415 tp_is_empty!23417 tp!1322277))))

(assert (=> b!4302922 (= tp!1322270 e!2675176)))

(assert (= (and b!4302922 ((_ is Cons!48022) (minValue!4828 (v!42026 (underlying!9367 (v!42027 (underlying!9368 thiss!42308))))))) b!4303064))

(declare-fun tp!1322278 () Bool)

(declare-fun e!2675177 () Bool)

(declare-fun b!4303065 () Bool)

(assert (=> b!4303065 (= e!2675177 (and tp_is_empty!23415 tp_is_empty!23417 tp!1322278))))

(assert (=> b!4302915 (= tp!1322269 e!2675177)))

(assert (= (and b!4302915 ((_ is Cons!48022) mapDefault!20482)) b!4303065))

(declare-fun condMapEmpty!20485 () Bool)

(declare-fun mapDefault!20485 () List!48146)

(assert (=> mapNonEmpty!20482 (= condMapEmpty!20485 (= mapRest!20482 ((as const (Array (_ BitVec 32) List!48146)) mapDefault!20485)))))

(declare-fun e!2675182 () Bool)

(declare-fun mapRes!20485 () Bool)

(assert (=> mapNonEmpty!20482 (= tp!1322272 (and e!2675182 mapRes!20485))))

(declare-fun mapIsEmpty!20485 () Bool)

(assert (=> mapIsEmpty!20485 mapRes!20485))

(declare-fun tp!1322286 () Bool)

(declare-fun b!4303072 () Bool)

(declare-fun e!2675183 () Bool)

(assert (=> b!4303072 (= e!2675183 (and tp_is_empty!23415 tp_is_empty!23417 tp!1322286))))

(declare-fun b!4303073 () Bool)

(declare-fun tp!1322285 () Bool)

(assert (=> b!4303073 (= e!2675182 (and tp_is_empty!23415 tp_is_empty!23417 tp!1322285))))

(declare-fun mapNonEmpty!20485 () Bool)

(declare-fun tp!1322287 () Bool)

(assert (=> mapNonEmpty!20485 (= mapRes!20485 (and tp!1322287 e!2675183))))

(declare-fun mapValue!20485 () List!48146)

(declare-fun mapRest!20485 () (Array (_ BitVec 32) List!48146))

(declare-fun mapKey!20485 () (_ BitVec 32))

(assert (=> mapNonEmpty!20485 (= mapRest!20482 (store mapRest!20485 mapKey!20485 mapValue!20485))))

(assert (= (and mapNonEmpty!20482 condMapEmpty!20485) mapIsEmpty!20485))

(assert (= (and mapNonEmpty!20482 (not condMapEmpty!20485)) mapNonEmpty!20485))

(assert (= (and mapNonEmpty!20485 ((_ is Cons!48022) mapValue!20485)) b!4303072))

(assert (= (and mapNonEmpty!20482 ((_ is Cons!48022) mapDefault!20485)) b!4303073))

(declare-fun m!4895363 () Bool)

(assert (=> mapNonEmpty!20485 m!4895363))

(declare-fun tp!1322288 () Bool)

(declare-fun b!4303074 () Bool)

(declare-fun e!2675184 () Bool)

(assert (=> b!4303074 (= e!2675184 (and tp_is_empty!23415 tp_is_empty!23417 tp!1322288))))

(assert (=> mapNonEmpty!20482 (= tp!1322273 e!2675184)))

(assert (= (and mapNonEmpty!20482 ((_ is Cons!48022) mapValue!20482)) b!4303074))

(declare-fun b_lambda!126447 () Bool)

(assert (= b_lambda!126445 (or (and b!4302922 b_free!128235) b_lambda!126447)))

(declare-fun b_lambda!126449 () Bool)

(assert (= b_lambda!126443 (or b!4302914 b_lambda!126449)))

(declare-fun bs!604168 () Bool)

(declare-fun d!1266973 () Bool)

(assert (= bs!604168 (and d!1266973 b!4302914)))

(assert (=> bs!604168 (= (dynLambda!20382 lambda!132173 (h!53444 (toList!2259 lt!1524473))) (noDuplicateKeys!172 (_2!26344 (h!53444 (toList!2259 lt!1524473)))))))

(declare-fun m!4895365 () Bool)

(assert (=> bs!604168 m!4895365))

(assert (=> b!4302963 d!1266973))

(check-sat (not b!4302969) (not mapNonEmpty!20485) (not b!4302945) (not bm!296705) b_and!339625 (not b!4302964) (not bm!296687) (not d!1266965) (not b_lambda!126449) (not d!1266961) (not b!4302952) (not b!4302940) (not d!1266929) (not b!4303048) (not b!4302998) (not b!4303074) (not d!1266947) (not b!4303000) (not b_next!128941) (not b!4303058) (not b!4303064) (not d!1266921) (not b!4302958) (not d!1266935) (not b!4302957) (not b!4303073) tp_is_empty!23417 (not b!4302970) (not b!4303065) (not b!4303016) (not bm!296688) (not d!1266925) (not b!4303072) (not d!1266933) (not b!4303054) (not b!4303053) (not b!4303049) (not tb!257257) (not d!1266959) (not b!4303022) (not b!4303057) (not d!1266927) (not bm!296706) (not b!4303063) (not b!4302951) (not d!1266943) (not d!1266967) (not b_lambda!126447) (not b!4302978) (not d!1266941) (not d!1266969) (not bm!296703) (not d!1266919) (not d!1266963) (not d!1266951) (not d!1266939) (not b!4303003) (not b!4302977) (not d!1266957) (not d!1266931) (not b!4303050) (not b!4302971) (not b!4303002) (not b!4302929) (not b_next!128939) (not b!4302935) (not b!4302934) (not b!4303005) (not d!1266923) (not bm!296702) (not bm!296704) (not d!1266945) tp_is_empty!23415 b_and!339623 (not bs!604168) (not bm!296701))
(check-sat b_and!339625 b_and!339623 (not b_next!128941) (not b_next!128939))
