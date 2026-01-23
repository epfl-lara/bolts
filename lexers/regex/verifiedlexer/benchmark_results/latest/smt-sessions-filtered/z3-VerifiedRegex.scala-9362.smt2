; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497114 () Bool)

(assert start!497114)

(declare-fun b!4809290 () Bool)

(declare-fun b_free!130075 () Bool)

(declare-fun b_next!130865 () Bool)

(assert (=> b!4809290 (= b_free!130075 (not b_next!130865))))

(declare-fun tp!1360154 () Bool)

(declare-fun b_and!341853 () Bool)

(assert (=> b!4809290 (= tp!1360154 b_and!341853)))

(declare-fun b!4809302 () Bool)

(declare-fun b_free!130077 () Bool)

(declare-fun b_next!130867 () Bool)

(assert (=> b!4809302 (= b_free!130077 (not b_next!130867))))

(declare-fun tp!1360150 () Bool)

(declare-fun b_and!341855 () Bool)

(assert (=> b!4809302 (= tp!1360150 b_and!341855)))

(declare-fun bs!1160016 () Bool)

(declare-fun b!4809294 () Bool)

(declare-fun b!4809303 () Bool)

(assert (= bs!1160016 (and b!4809294 b!4809303)))

(declare-fun lambda!233664 () Int)

(declare-fun lambda!233663 () Int)

(assert (=> bs!1160016 (= lambda!233664 lambda!233663)))

(declare-fun b!4809287 () Bool)

(declare-fun res!2045851 () Bool)

(declare-fun e!3004119 () Bool)

(assert (=> b!4809287 (=> (not res!2045851) (not e!3004119))))

(declare-datatypes ((K!16099 0))(
  ( (K!16100 (val!21185 Int)) )
))
(declare-datatypes ((array!18500 0))(
  ( (array!18501 (arr!8251 (Array (_ BitVec 32) (_ BitVec 64))) (size!36497 (_ BitVec 32))) )
))
(declare-datatypes ((V!16345 0))(
  ( (V!16346 (val!21186 Int)) )
))
(declare-datatypes ((tuple2!57324 0))(
  ( (tuple2!57325 (_1!31956 K!16099) (_2!31956 V!16345)) )
))
(declare-datatypes ((List!54620 0))(
  ( (Nil!54496) (Cons!54496 (h!60928 tuple2!57324) (t!362094 List!54620)) )
))
(declare-datatypes ((array!18502 0))(
  ( (array!18503 (arr!8252 (Array (_ BitVec 32) List!54620)) (size!36498 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10066 0))(
  ( (LongMapFixedSize!10067 (defaultEntry!5451 Int) (mask!15020 (_ BitVec 32)) (extraKeys!5308 (_ BitVec 32)) (zeroValue!5321 List!54620) (minValue!5321 List!54620) (_size!10091 (_ BitVec 32)) (_keys!5375 array!18500) (_values!5346 array!18502) (_vacant!5098 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19897 0))(
  ( (Cell!19898 (v!48773 LongMapFixedSize!10066)) )
))
(declare-datatypes ((MutLongMap!5033 0))(
  ( (LongMap!5033 (underlying!10273 Cell!19897)) (MutLongMapExt!5032 (__x!33197 Int)) )
))
(declare-datatypes ((Hashable!7044 0))(
  ( (HashableExt!7043 (__x!33198 Int)) )
))
(declare-datatypes ((Cell!19899 0))(
  ( (Cell!19900 (v!48774 MutLongMap!5033)) )
))
(declare-datatypes ((MutableMap!4917 0))(
  ( (MutableMapExt!4916 (__x!33199 Int)) (HashMap!4917 (underlying!10274 Cell!19899) (hashF!13312 Hashable!7044) (_size!10092 (_ BitVec 32)) (defaultValue!5088 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4917)

(declare-fun valid!4055 (MutableMap!4917) Bool)

(assert (=> b!4809287 (= res!2045851 (valid!4055 thiss!41921))))

(declare-fun b!4809288 () Bool)

(declare-fun e!3004125 () Bool)

(declare-fun e!3004121 () Bool)

(assert (=> b!4809288 (= e!3004125 e!3004121)))

(declare-fun res!2045853 () Bool)

(assert (=> b!4809288 (=> (not res!2045853) (not e!3004121))))

(declare-fun lt!1961765 () List!54620)

(declare-fun key!1652 () K!16099)

(declare-datatypes ((Option!13282 0))(
  ( (None!13281) (Some!13281 (v!48775 tuple2!57324)) )
))
(declare-fun isDefined!10421 (Option!13282) Bool)

(declare-fun getPair!956 (List!54620 K!16099) Option!13282)

(assert (=> b!4809288 (= res!2045853 (isDefined!10421 (getPair!956 lt!1961765 key!1652)))))

(declare-datatypes ((tuple2!57326 0))(
  ( (tuple2!57327 (_1!31957 (_ BitVec 64)) (_2!31957 List!54620)) )
))
(declare-datatypes ((List!54621 0))(
  ( (Nil!54497) (Cons!54497 (h!60929 tuple2!57326) (t!362095 List!54621)) )
))
(declare-datatypes ((ListLongMap!5569 0))(
  ( (ListLongMap!5570 (toList!7115 List!54621)) )
))
(declare-fun lt!1961766 () ListLongMap!5569)

(declare-fun lt!1961767 () (_ BitVec 64))

(declare-fun apply!13123 (ListLongMap!5569 (_ BitVec 64)) List!54620)

(assert (=> b!4809288 (= lt!1961765 (apply!13123 lt!1961766 lt!1961767))))

(declare-fun res!2045854 () Bool)

(assert (=> start!497114 (=> (not res!2045854) (not e!3004119))))

(get-info :version)

(assert (=> start!497114 (= res!2045854 ((_ is HashMap!4917) thiss!41921))))

(assert (=> start!497114 e!3004119))

(declare-fun e!3004123 () Bool)

(assert (=> start!497114 e!3004123))

(declare-fun tp_is_empty!33935 () Bool)

(assert (=> start!497114 tp_is_empty!33935))

(declare-fun b!4809289 () Bool)

(declare-fun res!2045852 () Bool)

(assert (=> b!4809289 (=> (not res!2045852) (not e!3004121))))

(declare-fun allKeysSameHashInMap!2403 (ListLongMap!5569 Hashable!7044) Bool)

(assert (=> b!4809289 (= res!2045852 (allKeysSameHashInMap!2403 lt!1961766 (hashF!13312 thiss!41921)))))

(declare-fun tp!1360149 () Bool)

(declare-fun tp!1360148 () Bool)

(declare-fun e!3004124 () Bool)

(declare-fun e!3004115 () Bool)

(declare-fun array_inv!5957 (array!18500) Bool)

(declare-fun array_inv!5958 (array!18502) Bool)

(assert (=> b!4809290 (= e!3004124 (and tp!1360154 tp!1360148 tp!1360149 (array_inv!5957 (_keys!5375 (v!48773 (underlying!10273 (v!48774 (underlying!10274 thiss!41921)))))) (array_inv!5958 (_values!5346 (v!48773 (underlying!10273 (v!48774 (underlying!10274 thiss!41921)))))) e!3004115))))

(declare-fun b!4809291 () Bool)

(assert (=> b!4809291 (= e!3004119 e!3004125)))

(declare-fun res!2045855 () Bool)

(assert (=> b!4809291 (=> (not res!2045855) (not e!3004125))))

(declare-datatypes ((ListMap!6555 0))(
  ( (ListMap!6556 (toList!7116 List!54620)) )
))
(declare-fun contains!18201 (ListMap!6555 K!16099) Bool)

(declare-fun extractMap!2529 (List!54621) ListMap!6555)

(assert (=> b!4809291 (= res!2045855 (not (contains!18201 (extractMap!2529 (toList!7115 lt!1961766)) key!1652)))))

(declare-fun map!12388 (MutLongMap!5033) ListLongMap!5569)

(assert (=> b!4809291 (= lt!1961766 (map!12388 (v!48774 (underlying!10274 thiss!41921))))))

(declare-datatypes ((Unit!141461 0))(
  ( (Unit!141462) )
))
(declare-fun lt!1961758 () Unit!141461)

(declare-fun e!3004114 () Unit!141461)

(assert (=> b!4809291 (= lt!1961758 e!3004114)))

(declare-fun c!819672 () Bool)

(declare-fun contains!18202 (MutLongMap!5033 (_ BitVec 64)) Bool)

(assert (=> b!4809291 (= c!819672 (contains!18202 (v!48774 (underlying!10274 thiss!41921)) lt!1961767))))

(declare-fun hash!5115 (Hashable!7044 K!16099) (_ BitVec 64))

(assert (=> b!4809291 (= lt!1961767 (hash!5115 (hashF!13312 thiss!41921) key!1652))))

(declare-fun b!4809292 () Bool)

(declare-fun e!3004120 () Unit!141461)

(declare-fun Unit!141463 () Unit!141461)

(assert (=> b!4809292 (= e!3004120 Unit!141463)))

(declare-fun b!4809293 () Bool)

(declare-fun Unit!141464 () Unit!141461)

(assert (=> b!4809293 (= e!3004114 Unit!141464)))

(declare-fun res!2045850 () Bool)

(assert (=> b!4809294 (=> (not res!2045850) (not e!3004121))))

(declare-fun forall!12388 (List!54621 Int) Bool)

(assert (=> b!4809294 (= res!2045850 (forall!12388 (toList!7115 lt!1961766) lambda!233664))))

(declare-fun b!4809295 () Bool)

(declare-fun e!3004116 () Bool)

(declare-fun e!3004118 () Bool)

(assert (=> b!4809295 (= e!3004116 e!3004118)))

(declare-fun b!4809296 () Bool)

(declare-fun e!3004122 () Bool)

(declare-fun lt!1961757 () MutLongMap!5033)

(assert (=> b!4809296 (= e!3004122 (and e!3004116 ((_ is LongMap!5033) lt!1961757)))))

(assert (=> b!4809296 (= lt!1961757 (v!48774 (underlying!10274 thiss!41921)))))

(declare-fun b!4809297 () Bool)

(declare-fun res!2045849 () Bool)

(assert (=> b!4809297 (=> (not res!2045849) (not e!3004125))))

(declare-fun contains!18203 (ListLongMap!5569 (_ BitVec 64)) Bool)

(assert (=> b!4809297 (= res!2045849 (contains!18203 lt!1961766 lt!1961767))))

(declare-fun mapIsEmpty!22259 () Bool)

(declare-fun mapRes!22259 () Bool)

(assert (=> mapIsEmpty!22259 mapRes!22259))

(declare-fun b!4809298 () Bool)

(assert (=> b!4809298 false))

(declare-fun lt!1961756 () Unit!141461)

(declare-fun lt!1961764 () List!54620)

(declare-fun lt!1961759 () ListLongMap!5569)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!988 (List!54621 (_ BitVec 64) List!54620) Unit!141461)

(assert (=> b!4809298 (= lt!1961756 (lemmaGetValueByKeyImpliesContainsTuple!988 (toList!7115 lt!1961759) lt!1961767 lt!1961764))))

(declare-datatypes ((Option!13283 0))(
  ( (None!13282) (Some!13282 (v!48776 List!54620)) )
))
(declare-fun isDefined!10422 (Option!13283) Bool)

(declare-fun getValueByKey!2474 (List!54621 (_ BitVec 64)) Option!13283)

(assert (=> b!4809298 (isDefined!10422 (getValueByKey!2474 (toList!7115 lt!1961759) lt!1961767))))

(declare-fun lt!1961762 () Unit!141461)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2262 (List!54621 (_ BitVec 64)) Unit!141461)

(assert (=> b!4809298 (= lt!1961762 (lemmaContainsKeyImpliesGetValueByKeyDefined!2262 (toList!7115 lt!1961759) lt!1961767))))

(declare-fun containsKey!4131 (List!54621 (_ BitVec 64)) Bool)

(assert (=> b!4809298 (containsKey!4131 (toList!7115 lt!1961759) lt!1961767)))

(declare-fun lt!1961760 () Unit!141461)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!259 (List!54621 (_ BitVec 64)) Unit!141461)

(assert (=> b!4809298 (= lt!1961760 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!259 (toList!7115 lt!1961759) lt!1961767))))

(declare-fun Unit!141465 () Unit!141461)

(assert (=> b!4809298 (= e!3004120 Unit!141465)))

(declare-fun mapNonEmpty!22259 () Bool)

(declare-fun tp!1360151 () Bool)

(declare-fun tp!1360153 () Bool)

(assert (=> mapNonEmpty!22259 (= mapRes!22259 (and tp!1360151 tp!1360153))))

(declare-fun mapKey!22259 () (_ BitVec 32))

(declare-fun mapRest!22259 () (Array (_ BitVec 32) List!54620))

(declare-fun mapValue!22259 () List!54620)

(assert (=> mapNonEmpty!22259 (= (arr!8252 (_values!5346 (v!48773 (underlying!10273 (v!48774 (underlying!10274 thiss!41921)))))) (store mapRest!22259 mapKey!22259 mapValue!22259))))

(declare-fun b!4809299 () Bool)

(assert (=> b!4809299 (= e!3004121 (not true))))

(declare-fun lt!1961770 () Unit!141461)

(declare-fun lt!1961763 () tuple2!57326)

(declare-fun forallContained!4257 (List!54621 Int tuple2!57326) Unit!141461)

(assert (=> b!4809299 (= lt!1961770 (forallContained!4257 (toList!7115 lt!1961766) lambda!233664 lt!1961763))))

(declare-fun contains!18204 (List!54621 tuple2!57326) Bool)

(assert (=> b!4809299 (contains!18204 (toList!7115 lt!1961766) lt!1961763)))

(assert (=> b!4809299 (= lt!1961763 (tuple2!57327 lt!1961767 lt!1961765))))

(declare-fun lt!1961769 () Unit!141461)

(declare-fun lemmaGetValueImpliesTupleContained!644 (ListLongMap!5569 (_ BitVec 64) List!54620) Unit!141461)

(assert (=> b!4809299 (= lt!1961769 (lemmaGetValueImpliesTupleContained!644 lt!1961766 lt!1961767 lt!1961765))))

(declare-fun b!4809300 () Bool)

(declare-fun tp!1360152 () Bool)

(assert (=> b!4809300 (= e!3004115 (and tp!1360152 mapRes!22259))))

(declare-fun condMapEmpty!22259 () Bool)

(declare-fun mapDefault!22259 () List!54620)

(assert (=> b!4809300 (= condMapEmpty!22259 (= (arr!8252 (_values!5346 (v!48773 (underlying!10273 (v!48774 (underlying!10274 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54620)) mapDefault!22259)))))

(declare-fun b!4809301 () Bool)

(assert (=> b!4809301 (= e!3004118 e!3004124)))

(assert (=> b!4809302 (= e!3004123 (and e!3004122 tp!1360150))))

(declare-fun lt!1961761 () tuple2!57326)

(assert (=> b!4809303 (= e!3004114 (forallContained!4257 (toList!7115 lt!1961759) lambda!233663 lt!1961761))))

(assert (=> b!4809303 (= lt!1961759 (map!12388 (v!48774 (underlying!10274 thiss!41921))))))

(declare-fun apply!13124 (MutLongMap!5033 (_ BitVec 64)) List!54620)

(assert (=> b!4809303 (= lt!1961764 (apply!13124 (v!48774 (underlying!10274 thiss!41921)) lt!1961767))))

(assert (=> b!4809303 (= lt!1961761 (tuple2!57327 lt!1961767 lt!1961764))))

(declare-fun c!819671 () Bool)

(assert (=> b!4809303 (= c!819671 (not (contains!18204 (toList!7115 lt!1961759) lt!1961761)))))

(declare-fun lt!1961768 () Unit!141461)

(assert (=> b!4809303 (= lt!1961768 e!3004120)))

(assert (= (and start!497114 res!2045854) b!4809287))

(assert (= (and b!4809287 res!2045851) b!4809291))

(assert (= (and b!4809291 c!819672) b!4809303))

(assert (= (and b!4809291 (not c!819672)) b!4809293))

(assert (= (and b!4809303 c!819671) b!4809298))

(assert (= (and b!4809303 (not c!819671)) b!4809292))

(assert (= (and b!4809291 res!2045855) b!4809297))

(assert (= (and b!4809297 res!2045849) b!4809288))

(assert (= (and b!4809288 res!2045853) b!4809294))

(assert (= (and b!4809294 res!2045850) b!4809289))

(assert (= (and b!4809289 res!2045852) b!4809299))

(assert (= (and b!4809300 condMapEmpty!22259) mapIsEmpty!22259))

(assert (= (and b!4809300 (not condMapEmpty!22259)) mapNonEmpty!22259))

(assert (= b!4809290 b!4809300))

(assert (= b!4809301 b!4809290))

(assert (= b!4809295 b!4809301))

(assert (= (and b!4809296 ((_ is LongMap!5033) (v!48774 (underlying!10274 thiss!41921)))) b!4809295))

(assert (= b!4809302 b!4809296))

(assert (= (and start!497114 ((_ is HashMap!4917) thiss!41921)) b!4809302))

(declare-fun m!5795316 () Bool)

(assert (=> b!4809294 m!5795316))

(declare-fun m!5795318 () Bool)

(assert (=> b!4809289 m!5795318))

(declare-fun m!5795320 () Bool)

(assert (=> b!4809298 m!5795320))

(declare-fun m!5795322 () Bool)

(assert (=> b!4809298 m!5795322))

(declare-fun m!5795324 () Bool)

(assert (=> b!4809298 m!5795324))

(declare-fun m!5795326 () Bool)

(assert (=> b!4809298 m!5795326))

(declare-fun m!5795328 () Bool)

(assert (=> b!4809298 m!5795328))

(assert (=> b!4809298 m!5795324))

(declare-fun m!5795330 () Bool)

(assert (=> b!4809298 m!5795330))

(declare-fun m!5795332 () Bool)

(assert (=> b!4809291 m!5795332))

(declare-fun m!5795334 () Bool)

(assert (=> b!4809291 m!5795334))

(declare-fun m!5795336 () Bool)

(assert (=> b!4809291 m!5795336))

(assert (=> b!4809291 m!5795332))

(declare-fun m!5795338 () Bool)

(assert (=> b!4809291 m!5795338))

(declare-fun m!5795340 () Bool)

(assert (=> b!4809291 m!5795340))

(declare-fun m!5795342 () Bool)

(assert (=> b!4809299 m!5795342))

(declare-fun m!5795344 () Bool)

(assert (=> b!4809299 m!5795344))

(declare-fun m!5795346 () Bool)

(assert (=> b!4809299 m!5795346))

(declare-fun m!5795348 () Bool)

(assert (=> b!4809303 m!5795348))

(assert (=> b!4809303 m!5795340))

(declare-fun m!5795350 () Bool)

(assert (=> b!4809303 m!5795350))

(declare-fun m!5795352 () Bool)

(assert (=> b!4809303 m!5795352))

(declare-fun m!5795354 () Bool)

(assert (=> b!4809290 m!5795354))

(declare-fun m!5795356 () Bool)

(assert (=> b!4809290 m!5795356))

(declare-fun m!5795358 () Bool)

(assert (=> b!4809288 m!5795358))

(assert (=> b!4809288 m!5795358))

(declare-fun m!5795360 () Bool)

(assert (=> b!4809288 m!5795360))

(declare-fun m!5795362 () Bool)

(assert (=> b!4809288 m!5795362))

(declare-fun m!5795364 () Bool)

(assert (=> mapNonEmpty!22259 m!5795364))

(declare-fun m!5795366 () Bool)

(assert (=> b!4809287 m!5795366))

(declare-fun m!5795368 () Bool)

(assert (=> b!4809297 m!5795368))

(check-sat (not b!4809294) (not b!4809300) (not b!4809303) (not b!4809298) (not b_next!130867) b_and!341853 (not b_next!130865) (not b!4809288) (not mapNonEmpty!22259) (not b!4809289) b_and!341855 (not b!4809299) tp_is_empty!33935 (not b!4809297) (not b!4809291) (not b!4809287) (not b!4809290))
(check-sat b_and!341853 b_and!341855 (not b_next!130865) (not b_next!130867))
