; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496964 () Bool)

(assert start!496964)

(declare-fun b!4808311 () Bool)

(declare-fun b_free!130019 () Bool)

(declare-fun b_next!130809 () Bool)

(assert (=> b!4808311 (= b_free!130019 (not b_next!130809))))

(declare-fun tp!1359814 () Bool)

(declare-fun b_and!341791 () Bool)

(assert (=> b!4808311 (= tp!1359814 b_and!341791)))

(declare-fun b!4808308 () Bool)

(declare-fun b_free!130021 () Bool)

(declare-fun b_next!130811 () Bool)

(assert (=> b!4808308 (= b_free!130021 (not b_next!130811))))

(declare-fun tp!1359811 () Bool)

(declare-fun b_and!341793 () Bool)

(assert (=> b!4808308 (= tp!1359811 b_and!341793)))

(declare-fun mapIsEmpty!22208 () Bool)

(declare-fun mapRes!22208 () Bool)

(assert (=> mapIsEmpty!22208 mapRes!22208))

(declare-datatypes ((K!16064 0))(
  ( (K!16065 (val!21157 Int)) )
))
(declare-datatypes ((V!16310 0))(
  ( (V!16311 (val!21158 Int)) )
))
(declare-datatypes ((tuple2!57268 0))(
  ( (tuple2!57269 (_1!31928 K!16064) (_2!31928 V!16310)) )
))
(declare-datatypes ((List!54589 0))(
  ( (Nil!54465) (Cons!54465 (h!60897 tuple2!57268) (t!362057 List!54589)) )
))
(declare-datatypes ((tuple2!57270 0))(
  ( (tuple2!57271 (_1!31929 (_ BitVec 64)) (_2!31929 List!54589)) )
))
(declare-fun lt!1961069 () tuple2!57270)

(declare-fun b!4808300 () Bool)

(declare-datatypes ((List!54590 0))(
  ( (Nil!54466) (Cons!54466 (h!60898 tuple2!57270) (t!362058 List!54590)) )
))
(declare-datatypes ((ListLongMap!5541 0))(
  ( (ListLongMap!5542 (toList!7088 List!54590)) )
))
(declare-fun lt!1961061 () ListLongMap!5541)

(declare-fun lambda!233580 () Int)

(declare-datatypes ((Unit!141386 0))(
  ( (Unit!141387) )
))
(declare-fun e!3003405 () Unit!141386)

(declare-fun forallContained!4247 (List!54590 Int tuple2!57270) Unit!141386)

(assert (=> b!4808300 (= e!3003405 (forallContained!4247 (toList!7088 lt!1961061) lambda!233580 lt!1961069))))

(declare-datatypes ((array!18438 0))(
  ( (array!18439 (arr!8223 (Array (_ BitVec 32) (_ BitVec 64))) (size!36469 (_ BitVec 32))) )
))
(declare-datatypes ((array!18440 0))(
  ( (array!18441 (arr!8224 (Array (_ BitVec 32) List!54589)) (size!36470 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10038 0))(
  ( (LongMapFixedSize!10039 (defaultEntry!5437 Int) (mask!14999 (_ BitVec 32)) (extraKeys!5294 (_ BitVec 32)) (zeroValue!5307 List!54589) (minValue!5307 List!54589) (_size!10063 (_ BitVec 32)) (_keys!5361 array!18438) (_values!5332 array!18440) (_vacant!5084 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19841 0))(
  ( (Cell!19842 (v!48718 LongMapFixedSize!10038)) )
))
(declare-datatypes ((MutLongMap!5019 0))(
  ( (LongMap!5019 (underlying!10245 Cell!19841)) (MutLongMapExt!5018 (__x!33155 Int)) )
))
(declare-datatypes ((Hashable!7030 0))(
  ( (HashableExt!7029 (__x!33156 Int)) )
))
(declare-datatypes ((Cell!19843 0))(
  ( (Cell!19844 (v!48719 MutLongMap!5019)) )
))
(declare-datatypes ((MutableMap!4903 0))(
  ( (MutableMapExt!4902 (__x!33157 Int)) (HashMap!4903 (underlying!10246 Cell!19843) (hashF!13298 Hashable!7030) (_size!10064 (_ BitVec 32)) (defaultValue!5074 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4903)

(declare-fun map!12364 (MutLongMap!5019) ListLongMap!5541)

(assert (=> b!4808300 (= lt!1961061 (map!12364 (v!48719 (underlying!10246 thiss!41921))))))

(declare-fun lt!1961062 () List!54589)

(declare-fun lt!1961071 () (_ BitVec 64))

(declare-fun apply!13103 (MutLongMap!5019 (_ BitVec 64)) List!54589)

(assert (=> b!4808300 (= lt!1961062 (apply!13103 (v!48719 (underlying!10246 thiss!41921)) lt!1961071))))

(assert (=> b!4808300 (= lt!1961069 (tuple2!57271 lt!1961071 lt!1961062))))

(declare-fun c!819509 () Bool)

(declare-fun contains!18145 (List!54590 tuple2!57270) Bool)

(assert (=> b!4808300 (= c!819509 (not (contains!18145 (toList!7088 lt!1961061) lt!1961069)))))

(declare-fun lt!1961070 () Unit!141386)

(declare-fun e!3003397 () Unit!141386)

(assert (=> b!4808300 (= lt!1961070 e!3003397)))

(declare-fun res!2045486 () Bool)

(declare-fun e!3003395 () Bool)

(assert (=> start!496964 (=> (not res!2045486) (not e!3003395))))

(get-info :version)

(assert (=> start!496964 (= res!2045486 ((_ is HashMap!4903) thiss!41921))))

(assert (=> start!496964 e!3003395))

(declare-fun e!3003401 () Bool)

(assert (=> start!496964 e!3003401))

(declare-fun tp_is_empty!33901 () Bool)

(assert (=> start!496964 tp_is_empty!33901))

(declare-fun b!4808301 () Bool)

(assert (=> b!4808301 false))

(declare-fun lt!1961063 () Unit!141386)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!975 (List!54590 (_ BitVec 64) List!54589) Unit!141386)

(assert (=> b!4808301 (= lt!1961063 (lemmaGetValueByKeyImpliesContainsTuple!975 (toList!7088 lt!1961061) lt!1961071 lt!1961062))))

(declare-datatypes ((Option!13261 0))(
  ( (None!13260) (Some!13260 (v!48720 List!54589)) )
))
(declare-fun isDefined!10400 (Option!13261) Bool)

(declare-fun getValueByKey!2458 (List!54590 (_ BitVec 64)) Option!13261)

(assert (=> b!4808301 (isDefined!10400 (getValueByKey!2458 (toList!7088 lt!1961061) lt!1961071))))

(declare-fun lt!1961068 () Unit!141386)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2246 (List!54590 (_ BitVec 64)) Unit!141386)

(assert (=> b!4808301 (= lt!1961068 (lemmaContainsKeyImpliesGetValueByKeyDefined!2246 (toList!7088 lt!1961061) lt!1961071))))

(declare-fun containsKey!4113 (List!54590 (_ BitVec 64)) Bool)

(assert (=> b!4808301 (containsKey!4113 (toList!7088 lt!1961061) lt!1961071)))

(declare-fun lt!1961066 () Unit!141386)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!246 (List!54590 (_ BitVec 64)) Unit!141386)

(assert (=> b!4808301 (= lt!1961066 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!246 (toList!7088 lt!1961061) lt!1961071))))

(declare-fun Unit!141388 () Unit!141386)

(assert (=> b!4808301 (= e!3003397 Unit!141388)))

(declare-fun b!4808302 () Bool)

(declare-fun e!3003403 () Bool)

(declare-fun e!3003402 () Bool)

(assert (=> b!4808302 (= e!3003403 e!3003402)))

(declare-fun b!4808303 () Bool)

(declare-fun Unit!141389 () Unit!141386)

(assert (=> b!4808303 (= e!3003405 Unit!141389)))

(declare-fun b!4808304 () Bool)

(declare-fun e!3003400 () Bool)

(declare-fun tp!1359813 () Bool)

(assert (=> b!4808304 (= e!3003400 (and tp!1359813 mapRes!22208))))

(declare-fun condMapEmpty!22208 () Bool)

(declare-fun mapDefault!22208 () List!54589)

(assert (=> b!4808304 (= condMapEmpty!22208 (= (arr!8224 (_values!5332 (v!48718 (underlying!10245 (v!48719 (underlying!10246 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54589)) mapDefault!22208)))))

(declare-fun b!4808305 () Bool)

(declare-fun res!2045487 () Bool)

(declare-fun e!3003398 () Bool)

(assert (=> b!4808305 (=> (not res!2045487) (not e!3003398))))

(declare-fun lt!1961064 () ListLongMap!5541)

(declare-fun contains!18146 (ListLongMap!5541 (_ BitVec 64)) Bool)

(assert (=> b!4808305 (= res!2045487 (contains!18146 lt!1961064 lt!1961071))))

(declare-fun b!4808306 () Bool)

(declare-fun res!2045489 () Bool)

(assert (=> b!4808306 (=> (not res!2045489) (not e!3003395))))

(declare-fun valid!4037 (MutableMap!4903) Bool)

(assert (=> b!4808306 (= res!2045489 (valid!4037 thiss!41921))))

(declare-fun mapNonEmpty!22208 () Bool)

(declare-fun tp!1359810 () Bool)

(declare-fun tp!1359809 () Bool)

(assert (=> mapNonEmpty!22208 (= mapRes!22208 (and tp!1359810 tp!1359809))))

(declare-fun mapRest!22208 () (Array (_ BitVec 32) List!54589))

(declare-fun mapKey!22208 () (_ BitVec 32))

(declare-fun mapValue!22208 () List!54589)

(assert (=> mapNonEmpty!22208 (= (arr!8224 (_values!5332 (v!48718 (underlying!10245 (v!48719 (underlying!10246 thiss!41921)))))) (store mapRest!22208 mapKey!22208 mapValue!22208))))

(declare-fun b!4808307 () Bool)

(assert (=> b!4808307 (= e!3003395 e!3003398)))

(declare-fun res!2045488 () Bool)

(assert (=> b!4808307 (=> (not res!2045488) (not e!3003398))))

(declare-fun key!1652 () K!16064)

(declare-datatypes ((ListMap!6529 0))(
  ( (ListMap!6530 (toList!7089 List!54589)) )
))
(declare-fun contains!18147 (ListMap!6529 K!16064) Bool)

(declare-fun extractMap!2516 (List!54590) ListMap!6529)

(assert (=> b!4808307 (= res!2045488 (not (contains!18147 (extractMap!2516 (toList!7088 lt!1961064)) key!1652)))))

(assert (=> b!4808307 (= lt!1961064 (map!12364 (v!48719 (underlying!10246 thiss!41921))))))

(declare-fun lt!1961065 () Unit!141386)

(assert (=> b!4808307 (= lt!1961065 e!3003405)))

(declare-fun c!819510 () Bool)

(declare-fun contains!18148 (MutLongMap!5019 (_ BitVec 64)) Bool)

(assert (=> b!4808307 (= c!819510 (contains!18148 (v!48719 (underlying!10246 thiss!41921)) lt!1961071))))

(declare-fun hash!5099 (Hashable!7030 K!16064) (_ BitVec 64))

(assert (=> b!4808307 (= lt!1961071 (hash!5099 (hashF!13298 thiss!41921) key!1652))))

(declare-fun e!3003404 () Bool)

(assert (=> b!4808308 (= e!3003401 (and e!3003404 tp!1359811))))

(declare-fun b!4808309 () Bool)

(declare-fun e!3003399 () Bool)

(assert (=> b!4808309 (= e!3003399 e!3003403)))

(declare-fun b!4808310 () Bool)

(declare-fun lt!1961067 () MutLongMap!5019)

(assert (=> b!4808310 (= e!3003404 (and e!3003399 ((_ is LongMap!5019) lt!1961067)))))

(assert (=> b!4808310 (= lt!1961067 (v!48719 (underlying!10246 thiss!41921)))))

(declare-fun tp!1359815 () Bool)

(declare-fun tp!1359812 () Bool)

(declare-fun array_inv!5929 (array!18438) Bool)

(declare-fun array_inv!5930 (array!18440) Bool)

(assert (=> b!4808311 (= e!3003402 (and tp!1359814 tp!1359812 tp!1359815 (array_inv!5929 (_keys!5361 (v!48718 (underlying!10245 (v!48719 (underlying!10246 thiss!41921)))))) (array_inv!5930 (_values!5332 (v!48718 (underlying!10245 (v!48719 (underlying!10246 thiss!41921)))))) e!3003400))))

(declare-fun b!4808312 () Bool)

(declare-fun Unit!141390 () Unit!141386)

(assert (=> b!4808312 (= e!3003397 Unit!141390)))

(declare-fun b!4808313 () Bool)

(assert (=> b!4808313 (= e!3003398 (not ((_ is LongMap!5019) (v!48719 (underlying!10246 thiss!41921)))))))

(assert (= (and start!496964 res!2045486) b!4808306))

(assert (= (and b!4808306 res!2045489) b!4808307))

(assert (= (and b!4808307 c!819510) b!4808300))

(assert (= (and b!4808307 (not c!819510)) b!4808303))

(assert (= (and b!4808300 c!819509) b!4808301))

(assert (= (and b!4808300 (not c!819509)) b!4808312))

(assert (= (and b!4808307 res!2045488) b!4808305))

(assert (= (and b!4808305 res!2045487) b!4808313))

(assert (= (and b!4808304 condMapEmpty!22208) mapIsEmpty!22208))

(assert (= (and b!4808304 (not condMapEmpty!22208)) mapNonEmpty!22208))

(assert (= b!4808311 b!4808304))

(assert (= b!4808302 b!4808311))

(assert (= b!4808309 b!4808302))

(assert (= (and b!4808310 ((_ is LongMap!5019) (v!48719 (underlying!10246 thiss!41921)))) b!4808309))

(assert (= b!4808308 b!4808310))

(assert (= (and start!496964 ((_ is HashMap!4903) thiss!41921)) b!4808308))

(declare-fun m!5794402 () Bool)

(assert (=> b!4808301 m!5794402))

(declare-fun m!5794404 () Bool)

(assert (=> b!4808301 m!5794404))

(declare-fun m!5794406 () Bool)

(assert (=> b!4808301 m!5794406))

(assert (=> b!4808301 m!5794402))

(declare-fun m!5794408 () Bool)

(assert (=> b!4808301 m!5794408))

(declare-fun m!5794410 () Bool)

(assert (=> b!4808301 m!5794410))

(declare-fun m!5794412 () Bool)

(assert (=> b!4808301 m!5794412))

(declare-fun m!5794414 () Bool)

(assert (=> b!4808307 m!5794414))

(declare-fun m!5794416 () Bool)

(assert (=> b!4808307 m!5794416))

(declare-fun m!5794418 () Bool)

(assert (=> b!4808307 m!5794418))

(assert (=> b!4808307 m!5794414))

(declare-fun m!5794420 () Bool)

(assert (=> b!4808307 m!5794420))

(declare-fun m!5794422 () Bool)

(assert (=> b!4808307 m!5794422))

(declare-fun m!5794424 () Bool)

(assert (=> b!4808311 m!5794424))

(declare-fun m!5794426 () Bool)

(assert (=> b!4808311 m!5794426))

(declare-fun m!5794428 () Bool)

(assert (=> mapNonEmpty!22208 m!5794428))

(declare-fun m!5794430 () Bool)

(assert (=> b!4808300 m!5794430))

(assert (=> b!4808300 m!5794422))

(declare-fun m!5794432 () Bool)

(assert (=> b!4808300 m!5794432))

(declare-fun m!5794434 () Bool)

(assert (=> b!4808300 m!5794434))

(declare-fun m!5794436 () Bool)

(assert (=> b!4808306 m!5794436))

(declare-fun m!5794438 () Bool)

(assert (=> b!4808305 m!5794438))

(check-sat (not b!4808307) b_and!341791 (not b_next!130811) (not b!4808305) tp_is_empty!33901 (not b!4808301) (not b!4808311) (not mapNonEmpty!22208) (not b!4808306) (not b!4808304) b_and!341793 (not b_next!130809) (not b!4808300))
(check-sat b_and!341791 b_and!341793 (not b_next!130809) (not b_next!130811))
