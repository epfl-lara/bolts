; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497182 () Bool)

(assert start!497182)

(declare-fun b!4809974 () Bool)

(declare-fun b_free!130115 () Bool)

(declare-fun b_next!130905 () Bool)

(assert (=> b!4809974 (= b_free!130115 (not b_next!130905))))

(declare-fun tp!1360377 () Bool)

(declare-fun b_and!341895 () Bool)

(assert (=> b!4809974 (= tp!1360377 b_and!341895)))

(declare-fun b!4809970 () Bool)

(declare-fun b_free!130117 () Bool)

(declare-fun b_next!130907 () Bool)

(assert (=> b!4809970 (= b_free!130117 (not b_next!130907))))

(declare-fun tp!1360379 () Bool)

(declare-fun b_and!341897 () Bool)

(assert (=> b!4809970 (= tp!1360379 b_and!341897)))

(declare-fun e!3004630 () Bool)

(declare-fun e!3004637 () Bool)

(assert (=> b!4809970 (= e!3004630 (and e!3004637 tp!1360379))))

(declare-fun b!4809971 () Bool)

(declare-fun e!3004632 () Bool)

(declare-fun call!335710 () Bool)

(assert (=> b!4809971 (= e!3004632 call!335710)))

(declare-fun b!4809972 () Bool)

(assert (=> b!4809972 false))

(declare-datatypes ((K!16124 0))(
  ( (K!16125 (val!21205 Int)) )
))
(declare-datatypes ((array!18542 0))(
  ( (array!18543 (arr!8271 (Array (_ BitVec 32) (_ BitVec 64))) (size!36517 (_ BitVec 32))) )
))
(declare-datatypes ((V!16370 0))(
  ( (V!16371 (val!21206 Int)) )
))
(declare-datatypes ((tuple2!57362 0))(
  ( (tuple2!57363 (_1!31975 K!16124) (_2!31975 V!16370)) )
))
(declare-datatypes ((List!54640 0))(
  ( (Nil!54516) (Cons!54516 (h!60948 tuple2!57362) (t!362116 List!54640)) )
))
(declare-datatypes ((array!18544 0))(
  ( (array!18545 (arr!8272 (Array (_ BitVec 32) List!54640)) (size!36518 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10086 0))(
  ( (LongMapFixedSize!10087 (defaultEntry!5461 Int) (mask!15035 (_ BitVec 32)) (extraKeys!5318 (_ BitVec 32)) (zeroValue!5331 List!54640) (minValue!5331 List!54640) (_size!10111 (_ BitVec 32)) (_keys!5385 array!18542) (_values!5356 array!18544) (_vacant!5108 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19937 0))(
  ( (Cell!19938 (v!48814 LongMapFixedSize!10086)) )
))
(declare-datatypes ((MutLongMap!5043 0))(
  ( (LongMap!5043 (underlying!10293 Cell!19937)) (MutLongMapExt!5042 (__x!33227 Int)) )
))
(declare-datatypes ((Hashable!7054 0))(
  ( (HashableExt!7053 (__x!33228 Int)) )
))
(declare-datatypes ((Cell!19939 0))(
  ( (Cell!19940 (v!48815 MutLongMap!5043)) )
))
(declare-datatypes ((MutableMap!4927 0))(
  ( (MutableMapExt!4926 (__x!33229 Int)) (HashMap!4927 (underlying!10294 Cell!19939) (hashF!13324 Hashable!7054) (_size!10112 (_ BitVec 32)) (defaultValue!5098 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4927)

(declare-datatypes ((Unit!141521 0))(
  ( (Unit!141522) )
))
(declare-fun lt!1962278 () Unit!141521)

(declare-datatypes ((tuple2!57364 0))(
  ( (tuple2!57365 (_1!31976 (_ BitVec 64)) (_2!31976 List!54640)) )
))
(declare-datatypes ((List!54641 0))(
  ( (Nil!54517) (Cons!54517 (h!60949 tuple2!57364) (t!362117 List!54641)) )
))
(declare-datatypes ((ListLongMap!5587 0))(
  ( (ListLongMap!5588 (toList!7132 List!54641)) )
))
(declare-fun lt!1962280 () ListLongMap!5587)

(declare-fun key!1652 () K!16124)

(declare-fun lemmaInLongMapThenInGenericMap!219 (ListLongMap!5587 K!16124 Hashable!7054) Unit!141521)

(assert (=> b!4809972 (= lt!1962278 (lemmaInLongMapThenInGenericMap!219 lt!1962280 key!1652 (hashF!13324 thiss!41921)))))

(declare-fun e!3004636 () Unit!141521)

(declare-fun Unit!141523 () Unit!141521)

(assert (=> b!4809972 (= e!3004636 Unit!141523)))

(declare-fun bm!335704 () Bool)

(declare-datatypes ((Option!13301 0))(
  ( (None!13300) (Some!13300 (v!48816 tuple2!57362)) )
))
(declare-fun call!335712 () Option!13301)

(declare-fun call!335709 () List!54640)

(declare-fun getPair!965 (List!54640 K!16124) Option!13301)

(assert (=> bm!335704 (= call!335712 (getPair!965 call!335709 key!1652))))

(declare-fun b!4809973 () Bool)

(declare-fun e!3004643 () Bool)

(declare-fun e!3004641 () Bool)

(assert (=> b!4809973 (= e!3004643 e!3004641)))

(declare-fun bm!335705 () Bool)

(declare-fun isDefined!10439 (Option!13301) Bool)

(assert (=> bm!335705 (= call!335710 (isDefined!10439 call!335712))))

(declare-fun tp!1360376 () Bool)

(declare-fun e!3004644 () Bool)

(declare-fun tp!1360375 () Bool)

(declare-fun array_inv!5973 (array!18542) Bool)

(declare-fun array_inv!5974 (array!18544) Bool)

(assert (=> b!4809974 (= e!3004641 (and tp!1360377 tp!1360376 tp!1360375 (array_inv!5973 (_keys!5385 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) (array_inv!5974 (_values!5356 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) e!3004644))))

(declare-fun b!4809975 () Bool)

(declare-fun e!3004631 () Bool)

(assert (=> b!4809975 (= e!3004631 e!3004643)))

(declare-fun bm!335706 () Bool)

(declare-fun lt!1962282 () (_ BitVec 64))

(declare-fun apply!13142 (ListLongMap!5587 (_ BitVec 64)) List!54640)

(assert (=> bm!335706 (= call!335709 (apply!13142 lt!1962280 lt!1962282))))

(declare-fun b!4809976 () Bool)

(declare-fun e!3004634 () Unit!141521)

(declare-fun Unit!141524 () Unit!141521)

(assert (=> b!4809976 (= e!3004634 Unit!141524)))

(declare-fun b!4809977 () Bool)

(declare-fun e!3004642 () Bool)

(declare-fun valid!4067 (MutLongMap!5043) Bool)

(assert (=> b!4809977 (= e!3004642 (not (valid!4067 (v!48815 (underlying!10294 thiss!41921)))))))

(declare-fun b!4809978 () Bool)

(declare-fun e!3004635 () Bool)

(assert (=> b!4809978 (= e!3004635 e!3004642)))

(declare-fun res!2046068 () Bool)

(assert (=> b!4809978 (=> (not res!2046068) (not e!3004642))))

(declare-fun lt!1962283 () Bool)

(get-info :version)

(assert (=> b!4809978 (= res!2046068 (and lt!1962283 ((_ is LongMap!5043) (v!48815 (underlying!10294 thiss!41921)))))))

(declare-fun lt!1962276 () Unit!141521)

(declare-fun e!3004639 () Unit!141521)

(assert (=> b!4809978 (= lt!1962276 e!3004639)))

(declare-fun c!819809 () Bool)

(declare-datatypes ((ListMap!6571 0))(
  ( (ListMap!6572 (toList!7133 List!54640)) )
))
(declare-fun contains!18237 (ListMap!6571 K!16124) Bool)

(declare-fun extractMap!2537 (List!54641) ListMap!6571)

(assert (=> b!4809978 (= c!819809 (contains!18237 (extractMap!2537 (toList!7132 lt!1962280)) key!1652))))

(declare-fun map!12403 (MutLongMap!5043) ListLongMap!5587)

(assert (=> b!4809978 (= lt!1962280 (map!12403 (v!48815 (underlying!10294 thiss!41921))))))

(declare-fun lt!1962274 () Unit!141521)

(declare-fun e!3004638 () Unit!141521)

(assert (=> b!4809978 (= lt!1962274 e!3004638)))

(declare-fun c!819807 () Bool)

(assert (=> b!4809978 (= c!819807 lt!1962283)))

(declare-fun contains!18238 (MutLongMap!5043 (_ BitVec 64)) Bool)

(assert (=> b!4809978 (= lt!1962283 (contains!18238 (v!48815 (underlying!10294 thiss!41921)) lt!1962282))))

(declare-fun hash!5124 (Hashable!7054 K!16124) (_ BitVec 64))

(assert (=> b!4809978 (= lt!1962282 (hash!5124 (hashF!13324 thiss!41921) key!1652))))

(declare-fun b!4809979 () Bool)

(declare-fun Unit!141525 () Unit!141521)

(assert (=> b!4809979 (= e!3004638 Unit!141525)))

(declare-fun b!4809980 () Bool)

(declare-fun Unit!141526 () Unit!141521)

(assert (=> b!4809980 (= e!3004636 Unit!141526)))

(declare-fun b!4809981 () Bool)

(declare-fun tp!1360374 () Bool)

(declare-fun mapRes!22292 () Bool)

(assert (=> b!4809981 (= e!3004644 (and tp!1360374 mapRes!22292))))

(declare-fun condMapEmpty!22292 () Bool)

(declare-fun mapDefault!22292 () List!54640)

(assert (=> b!4809981 (= condMapEmpty!22292 (= (arr!8272 (_values!5356 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54640)) mapDefault!22292)))))

(declare-fun mapIsEmpty!22292 () Bool)

(assert (=> mapIsEmpty!22292 mapRes!22292))

(declare-fun b!4809982 () Bool)

(assert (=> b!4809982 (= e!3004639 e!3004636)))

(declare-fun res!2046065 () Bool)

(declare-fun call!335711 () Bool)

(assert (=> b!4809982 (= res!2046065 call!335711)))

(declare-fun e!3004633 () Bool)

(assert (=> b!4809982 (=> (not res!2046065) (not e!3004633))))

(declare-fun c!819810 () Bool)

(assert (=> b!4809982 (= c!819810 e!3004633)))

(declare-fun b!4809983 () Bool)

(assert (=> b!4809983 (= e!3004633 call!335710)))

(declare-fun b!4809984 () Bool)

(declare-fun lt!1962273 () Unit!141521)

(assert (=> b!4809984 (= e!3004639 lt!1962273)))

(declare-fun lemmaInGenericMapThenInLongMap!389 (ListLongMap!5587 K!16124 Hashable!7054) Unit!141521)

(assert (=> b!4809984 (= lt!1962273 (lemmaInGenericMapThenInLongMap!389 lt!1962280 key!1652 (hashF!13324 thiss!41921)))))

(declare-fun res!2046064 () Bool)

(assert (=> b!4809984 (= res!2046064 call!335711)))

(assert (=> b!4809984 (=> (not res!2046064) (not e!3004632))))

(assert (=> b!4809984 e!3004632))

(declare-fun b!4809985 () Bool)

(declare-fun res!2046067 () Bool)

(assert (=> b!4809985 (=> (not res!2046067) (not e!3004635))))

(declare-fun valid!4068 (MutableMap!4927) Bool)

(assert (=> b!4809985 (= res!2046067 (valid!4068 thiss!41921))))

(declare-fun bm!335707 () Bool)

(declare-fun contains!18239 (ListLongMap!5587 (_ BitVec 64)) Bool)

(assert (=> bm!335707 (= call!335711 (contains!18239 lt!1962280 lt!1962282))))

(declare-fun b!4809986 () Bool)

(assert (=> b!4809986 false))

(declare-fun lt!1962281 () ListLongMap!5587)

(declare-fun lt!1962269 () Unit!141521)

(declare-fun lt!1962275 () List!54640)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!997 (List!54641 (_ BitVec 64) List!54640) Unit!141521)

(assert (=> b!4809986 (= lt!1962269 (lemmaGetValueByKeyImpliesContainsTuple!997 (toList!7132 lt!1962281) lt!1962282 lt!1962275))))

(declare-datatypes ((Option!13302 0))(
  ( (None!13301) (Some!13301 (v!48817 List!54640)) )
))
(declare-fun isDefined!10440 (Option!13302) Bool)

(declare-fun getValueByKey!2484 (List!54641 (_ BitVec 64)) Option!13302)

(assert (=> b!4809986 (isDefined!10440 (getValueByKey!2484 (toList!7132 lt!1962281) lt!1962282))))

(declare-fun lt!1962277 () Unit!141521)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2272 (List!54641 (_ BitVec 64)) Unit!141521)

(assert (=> b!4809986 (= lt!1962277 (lemmaContainsKeyImpliesGetValueByKeyDefined!2272 (toList!7132 lt!1962281) lt!1962282))))

(declare-fun containsKey!4142 (List!54641 (_ BitVec 64)) Bool)

(assert (=> b!4809986 (containsKey!4142 (toList!7132 lt!1962281) lt!1962282)))

(declare-fun lt!1962272 () Unit!141521)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!268 (List!54641 (_ BitVec 64)) Unit!141521)

(assert (=> b!4809986 (= lt!1962272 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!268 (toList!7132 lt!1962281) lt!1962282))))

(declare-fun Unit!141527 () Unit!141521)

(assert (=> b!4809986 (= e!3004634 Unit!141527)))

(declare-fun lambda!233724 () Int)

(declare-fun lt!1962279 () tuple2!57364)

(declare-fun b!4809987 () Bool)

(declare-fun forallContained!4266 (List!54641 Int tuple2!57364) Unit!141521)

(assert (=> b!4809987 (= e!3004638 (forallContained!4266 (toList!7132 lt!1962281) lambda!233724 lt!1962279))))

(assert (=> b!4809987 (= lt!1962281 (map!12403 (v!48815 (underlying!10294 thiss!41921))))))

(declare-fun apply!13143 (MutLongMap!5043 (_ BitVec 64)) List!54640)

(assert (=> b!4809987 (= lt!1962275 (apply!13143 (v!48815 (underlying!10294 thiss!41921)) lt!1962282))))

(assert (=> b!4809987 (= lt!1962279 (tuple2!57365 lt!1962282 lt!1962275))))

(declare-fun c!819808 () Bool)

(declare-fun contains!18240 (List!54641 tuple2!57364) Bool)

(assert (=> b!4809987 (= c!819808 (not (contains!18240 (toList!7132 lt!1962281) lt!1962279)))))

(declare-fun lt!1962271 () Unit!141521)

(assert (=> b!4809987 (= lt!1962271 e!3004634)))

(declare-fun b!4809988 () Bool)

(declare-fun lt!1962270 () MutLongMap!5043)

(assert (=> b!4809988 (= e!3004637 (and e!3004631 ((_ is LongMap!5043) lt!1962270)))))

(assert (=> b!4809988 (= lt!1962270 (v!48815 (underlying!10294 thiss!41921)))))

(declare-fun res!2046066 () Bool)

(assert (=> start!497182 (=> (not res!2046066) (not e!3004635))))

(assert (=> start!497182 (= res!2046066 ((_ is HashMap!4927) thiss!41921))))

(assert (=> start!497182 e!3004635))

(assert (=> start!497182 e!3004630))

(declare-fun tp_is_empty!33957 () Bool)

(assert (=> start!497182 tp_is_empty!33957))

(declare-fun mapNonEmpty!22292 () Bool)

(declare-fun tp!1360373 () Bool)

(declare-fun tp!1360378 () Bool)

(assert (=> mapNonEmpty!22292 (= mapRes!22292 (and tp!1360373 tp!1360378))))

(declare-fun mapKey!22292 () (_ BitVec 32))

(declare-fun mapValue!22292 () List!54640)

(declare-fun mapRest!22292 () (Array (_ BitVec 32) List!54640))

(assert (=> mapNonEmpty!22292 (= (arr!8272 (_values!5356 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) (store mapRest!22292 mapKey!22292 mapValue!22292))))

(assert (= (and start!497182 res!2046066) b!4809985))

(assert (= (and b!4809985 res!2046067) b!4809978))

(assert (= (and b!4809978 c!819807) b!4809987))

(assert (= (and b!4809978 (not c!819807)) b!4809979))

(assert (= (and b!4809987 c!819808) b!4809986))

(assert (= (and b!4809987 (not c!819808)) b!4809976))

(assert (= (and b!4809978 c!819809) b!4809984))

(assert (= (and b!4809978 (not c!819809)) b!4809982))

(assert (= (and b!4809984 res!2046064) b!4809971))

(assert (= (and b!4809982 res!2046065) b!4809983))

(assert (= (and b!4809982 c!819810) b!4809972))

(assert (= (and b!4809982 (not c!819810)) b!4809980))

(assert (= (or b!4809971 b!4809983) bm!335706))

(assert (= (or b!4809984 b!4809982) bm!335707))

(assert (= (or b!4809971 b!4809983) bm!335704))

(assert (= (or b!4809971 b!4809983) bm!335705))

(assert (= (and b!4809978 res!2046068) b!4809977))

(assert (= (and b!4809981 condMapEmpty!22292) mapIsEmpty!22292))

(assert (= (and b!4809981 (not condMapEmpty!22292)) mapNonEmpty!22292))

(assert (= b!4809974 b!4809981))

(assert (= b!4809973 b!4809974))

(assert (= b!4809975 b!4809973))

(assert (= (and b!4809988 ((_ is LongMap!5043) (v!48815 (underlying!10294 thiss!41921)))) b!4809975))

(assert (= b!4809970 b!4809988))

(assert (= (and start!497182 ((_ is HashMap!4927) thiss!41921)) b!4809970))

(declare-fun m!5795944 () Bool)

(assert (=> b!4809984 m!5795944))

(declare-fun m!5795946 () Bool)

(assert (=> b!4809978 m!5795946))

(assert (=> b!4809978 m!5795946))

(declare-fun m!5795948 () Bool)

(assert (=> b!4809978 m!5795948))

(declare-fun m!5795950 () Bool)

(assert (=> b!4809978 m!5795950))

(declare-fun m!5795952 () Bool)

(assert (=> b!4809978 m!5795952))

(declare-fun m!5795954 () Bool)

(assert (=> b!4809978 m!5795954))

(declare-fun m!5795956 () Bool)

(assert (=> mapNonEmpty!22292 m!5795956))

(declare-fun m!5795958 () Bool)

(assert (=> b!4809987 m!5795958))

(assert (=> b!4809987 m!5795954))

(declare-fun m!5795960 () Bool)

(assert (=> b!4809987 m!5795960))

(declare-fun m!5795962 () Bool)

(assert (=> b!4809987 m!5795962))

(declare-fun m!5795964 () Bool)

(assert (=> bm!335704 m!5795964))

(declare-fun m!5795966 () Bool)

(assert (=> b!4809974 m!5795966))

(declare-fun m!5795968 () Bool)

(assert (=> b!4809974 m!5795968))

(declare-fun m!5795970 () Bool)

(assert (=> b!4809986 m!5795970))

(declare-fun m!5795972 () Bool)

(assert (=> b!4809986 m!5795972))

(declare-fun m!5795974 () Bool)

(assert (=> b!4809986 m!5795974))

(declare-fun m!5795976 () Bool)

(assert (=> b!4809986 m!5795976))

(assert (=> b!4809986 m!5795970))

(declare-fun m!5795978 () Bool)

(assert (=> b!4809986 m!5795978))

(declare-fun m!5795980 () Bool)

(assert (=> b!4809986 m!5795980))

(declare-fun m!5795982 () Bool)

(assert (=> b!4809972 m!5795982))

(declare-fun m!5795984 () Bool)

(assert (=> b!4809985 m!5795984))

(declare-fun m!5795986 () Bool)

(assert (=> bm!335706 m!5795986))

(declare-fun m!5795988 () Bool)

(assert (=> bm!335705 m!5795988))

(declare-fun m!5795990 () Bool)

(assert (=> bm!335707 m!5795990))

(declare-fun m!5795992 () Bool)

(assert (=> b!4809977 m!5795992))

(check-sat (not bm!335704) (not b!4809984) (not b_next!130907) (not bm!335707) (not bm!335706) (not b!4809981) b_and!341897 (not b_next!130905) (not b!4809974) (not bm!335705) (not b!4809986) (not b!4809977) (not b!4809985) (not mapNonEmpty!22292) (not b!4809972) tp_is_empty!33957 b_and!341895 (not b!4809978) (not b!4809987))
(check-sat b_and!341895 b_and!341897 (not b_next!130905) (not b_next!130907))
(get-model)

(declare-fun bs!1160048 () Bool)

(declare-fun d!1540224 () Bool)

(assert (= bs!1160048 (and d!1540224 b!4809987)))

(declare-fun lambda!233727 () Int)

(assert (=> bs!1160048 (= lambda!233727 lambda!233724)))

(declare-fun e!3004647 () Bool)

(assert (=> d!1540224 e!3004647))

(declare-fun res!2046071 () Bool)

(assert (=> d!1540224 (=> (not res!2046071) (not e!3004647))))

(assert (=> d!1540224 (= res!2046071 (contains!18239 lt!1962280 (hash!5124 (hashF!13324 thiss!41921) key!1652)))))

(declare-fun lt!1962286 () Unit!141521)

(declare-fun choose!34842 (ListLongMap!5587 K!16124 Hashable!7054) Unit!141521)

(assert (=> d!1540224 (= lt!1962286 (choose!34842 lt!1962280 key!1652 (hashF!13324 thiss!41921)))))

(declare-fun forall!12392 (List!54641 Int) Bool)

(assert (=> d!1540224 (forall!12392 (toList!7132 lt!1962280) lambda!233727)))

(assert (=> d!1540224 (= (lemmaInGenericMapThenInLongMap!389 lt!1962280 key!1652 (hashF!13324 thiss!41921)) lt!1962286)))

(declare-fun b!4809991 () Bool)

(assert (=> b!4809991 (= e!3004647 (isDefined!10439 (getPair!965 (apply!13142 lt!1962280 (hash!5124 (hashF!13324 thiss!41921) key!1652)) key!1652)))))

(assert (= (and d!1540224 res!2046071) b!4809991))

(assert (=> d!1540224 m!5795952))

(assert (=> d!1540224 m!5795952))

(declare-fun m!5795994 () Bool)

(assert (=> d!1540224 m!5795994))

(declare-fun m!5795996 () Bool)

(assert (=> d!1540224 m!5795996))

(declare-fun m!5795998 () Bool)

(assert (=> d!1540224 m!5795998))

(assert (=> b!4809991 m!5795952))

(assert (=> b!4809991 m!5795952))

(declare-fun m!5796000 () Bool)

(assert (=> b!4809991 m!5796000))

(assert (=> b!4809991 m!5796000))

(declare-fun m!5796002 () Bool)

(assert (=> b!4809991 m!5796002))

(assert (=> b!4809991 m!5796002))

(declare-fun m!5796004 () Bool)

(assert (=> b!4809991 m!5796004))

(assert (=> b!4809984 d!1540224))

(declare-fun d!1540226 () Bool)

(declare-fun get!18649 (Option!13302) List!54640)

(assert (=> d!1540226 (= (apply!13142 lt!1962280 lt!1962282) (get!18649 (getValueByKey!2484 (toList!7132 lt!1962280) lt!1962282)))))

(declare-fun bs!1160049 () Bool)

(assert (= bs!1160049 d!1540226))

(declare-fun m!5796006 () Bool)

(assert (=> bs!1160049 m!5796006))

(assert (=> bs!1160049 m!5796006))

(declare-fun m!5796008 () Bool)

(assert (=> bs!1160049 m!5796008))

(assert (=> bm!335706 d!1540226))

(declare-fun d!1540228 () Bool)

(assert (=> d!1540228 (= (array_inv!5973 (_keys!5385 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) (bvsge (size!36517 (_keys!5385 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4809974 d!1540228))

(declare-fun d!1540230 () Bool)

(assert (=> d!1540230 (= (array_inv!5974 (_values!5356 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) (bvsge (size!36518 (_values!5356 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4809974 d!1540230))

(declare-fun d!1540232 () Bool)

(declare-fun isEmpty!29547 (Option!13301) Bool)

(assert (=> d!1540232 (= (isDefined!10439 call!335712) (not (isEmpty!29547 call!335712)))))

(declare-fun bs!1160050 () Bool)

(assert (= bs!1160050 d!1540232))

(declare-fun m!5796010 () Bool)

(assert (=> bs!1160050 m!5796010))

(assert (=> bm!335705 d!1540232))

(declare-fun b!4810008 () Bool)

(declare-fun e!3004660 () Option!13301)

(assert (=> b!4810008 (= e!3004660 (Some!13300 (h!60948 call!335709)))))

(declare-fun b!4810009 () Bool)

(declare-fun e!3004661 () Option!13301)

(assert (=> b!4810009 (= e!3004660 e!3004661)))

(declare-fun c!819816 () Bool)

(assert (=> b!4810009 (= c!819816 ((_ is Cons!54516) call!335709))))

(declare-fun b!4810010 () Bool)

(assert (=> b!4810010 (= e!3004661 (getPair!965 (t!362116 call!335709) key!1652))))

(declare-fun b!4810011 () Bool)

(assert (=> b!4810011 (= e!3004661 None!13300)))

(declare-fun b!4810012 () Bool)

(declare-fun res!2046082 () Bool)

(declare-fun e!3004658 () Bool)

(assert (=> b!4810012 (=> (not res!2046082) (not e!3004658))))

(declare-fun lt!1962289 () Option!13301)

(declare-fun get!18650 (Option!13301) tuple2!57362)

(assert (=> b!4810012 (= res!2046082 (= (_1!31975 (get!18650 lt!1962289)) key!1652))))

(declare-fun b!4810014 () Bool)

(declare-fun e!3004662 () Bool)

(assert (=> b!4810014 (= e!3004662 e!3004658)))

(declare-fun res!2046081 () Bool)

(assert (=> b!4810014 (=> (not res!2046081) (not e!3004658))))

(assert (=> b!4810014 (= res!2046081 (isDefined!10439 lt!1962289))))

(declare-fun b!4810015 () Bool)

(declare-fun contains!18241 (List!54640 tuple2!57362) Bool)

(assert (=> b!4810015 (= e!3004658 (contains!18241 call!335709 (get!18650 lt!1962289)))))

(declare-fun d!1540234 () Bool)

(assert (=> d!1540234 e!3004662))

(declare-fun res!2046083 () Bool)

(assert (=> d!1540234 (=> res!2046083 e!3004662)))

(declare-fun e!3004659 () Bool)

(assert (=> d!1540234 (= res!2046083 e!3004659)))

(declare-fun res!2046080 () Bool)

(assert (=> d!1540234 (=> (not res!2046080) (not e!3004659))))

(assert (=> d!1540234 (= res!2046080 (isEmpty!29547 lt!1962289))))

(assert (=> d!1540234 (= lt!1962289 e!3004660)))

(declare-fun c!819815 () Bool)

(assert (=> d!1540234 (= c!819815 (and ((_ is Cons!54516) call!335709) (= (_1!31975 (h!60948 call!335709)) key!1652)))))

(declare-fun noDuplicateKeys!2387 (List!54640) Bool)

(assert (=> d!1540234 (noDuplicateKeys!2387 call!335709)))

(assert (=> d!1540234 (= (getPair!965 call!335709 key!1652) lt!1962289)))

(declare-fun b!4810013 () Bool)

(declare-fun containsKey!4143 (List!54640 K!16124) Bool)

(assert (=> b!4810013 (= e!3004659 (not (containsKey!4143 call!335709 key!1652)))))

(assert (= (and d!1540234 c!819815) b!4810008))

(assert (= (and d!1540234 (not c!819815)) b!4810009))

(assert (= (and b!4810009 c!819816) b!4810010))

(assert (= (and b!4810009 (not c!819816)) b!4810011))

(assert (= (and d!1540234 res!2046080) b!4810013))

(assert (= (and d!1540234 (not res!2046083)) b!4810014))

(assert (= (and b!4810014 res!2046081) b!4810012))

(assert (= (and b!4810012 res!2046082) b!4810015))

(declare-fun m!5796012 () Bool)

(assert (=> b!4810010 m!5796012))

(declare-fun m!5796014 () Bool)

(assert (=> d!1540234 m!5796014))

(declare-fun m!5796016 () Bool)

(assert (=> d!1540234 m!5796016))

(declare-fun m!5796018 () Bool)

(assert (=> b!4810012 m!5796018))

(declare-fun m!5796020 () Bool)

(assert (=> b!4810013 m!5796020))

(assert (=> b!4810015 m!5796018))

(assert (=> b!4810015 m!5796018))

(declare-fun m!5796022 () Bool)

(assert (=> b!4810015 m!5796022))

(declare-fun m!5796024 () Bool)

(assert (=> b!4810014 m!5796024))

(assert (=> bm!335704 d!1540234))

(declare-fun bs!1160051 () Bool)

(declare-fun d!1540236 () Bool)

(assert (= bs!1160051 (and d!1540236 b!4809987)))

(declare-fun lambda!233730 () Int)

(assert (=> bs!1160051 (= lambda!233730 lambda!233724)))

(declare-fun bs!1160052 () Bool)

(assert (= bs!1160052 (and d!1540236 d!1540224)))

(assert (=> bs!1160052 (= lambda!233730 lambda!233727)))

(assert (=> d!1540236 (contains!18237 (extractMap!2537 (toList!7132 lt!1962280)) key!1652)))

(declare-fun lt!1962292 () Unit!141521)

(declare-fun choose!34843 (ListLongMap!5587 K!16124 Hashable!7054) Unit!141521)

(assert (=> d!1540236 (= lt!1962292 (choose!34843 lt!1962280 key!1652 (hashF!13324 thiss!41921)))))

(assert (=> d!1540236 (forall!12392 (toList!7132 lt!1962280) lambda!233730)))

(assert (=> d!1540236 (= (lemmaInLongMapThenInGenericMap!219 lt!1962280 key!1652 (hashF!13324 thiss!41921)) lt!1962292)))

(declare-fun bs!1160053 () Bool)

(assert (= bs!1160053 d!1540236))

(assert (=> bs!1160053 m!5795946))

(assert (=> bs!1160053 m!5795946))

(assert (=> bs!1160053 m!5795948))

(declare-fun m!5796026 () Bool)

(assert (=> bs!1160053 m!5796026))

(declare-fun m!5796028 () Bool)

(assert (=> bs!1160053 m!5796028))

(assert (=> b!4809972 d!1540236))

(declare-fun d!1540238 () Bool)

(declare-fun dynLambda!22132 (Int tuple2!57364) Bool)

(assert (=> d!1540238 (dynLambda!22132 lambda!233724 lt!1962279)))

(declare-fun lt!1962295 () Unit!141521)

(declare-fun choose!34844 (List!54641 Int tuple2!57364) Unit!141521)

(assert (=> d!1540238 (= lt!1962295 (choose!34844 (toList!7132 lt!1962281) lambda!233724 lt!1962279))))

(declare-fun e!3004665 () Bool)

(assert (=> d!1540238 e!3004665))

(declare-fun res!2046086 () Bool)

(assert (=> d!1540238 (=> (not res!2046086) (not e!3004665))))

(assert (=> d!1540238 (= res!2046086 (forall!12392 (toList!7132 lt!1962281) lambda!233724))))

(assert (=> d!1540238 (= (forallContained!4266 (toList!7132 lt!1962281) lambda!233724 lt!1962279) lt!1962295)))

(declare-fun b!4810018 () Bool)

(assert (=> b!4810018 (= e!3004665 (contains!18240 (toList!7132 lt!1962281) lt!1962279))))

(assert (= (and d!1540238 res!2046086) b!4810018))

(declare-fun b_lambda!188197 () Bool)

(assert (=> (not b_lambda!188197) (not d!1540238)))

(declare-fun m!5796030 () Bool)

(assert (=> d!1540238 m!5796030))

(declare-fun m!5796032 () Bool)

(assert (=> d!1540238 m!5796032))

(declare-fun m!5796034 () Bool)

(assert (=> d!1540238 m!5796034))

(assert (=> b!4810018 m!5795962))

(assert (=> b!4809987 d!1540238))

(declare-fun d!1540240 () Bool)

(declare-fun map!12404 (LongMapFixedSize!10086) ListLongMap!5587)

(assert (=> d!1540240 (= (map!12403 (v!48815 (underlying!10294 thiss!41921))) (map!12404 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921))))))))

(declare-fun bs!1160054 () Bool)

(assert (= bs!1160054 d!1540240))

(declare-fun m!5796036 () Bool)

(assert (=> bs!1160054 m!5796036))

(assert (=> b!4809987 d!1540240))

(declare-fun d!1540242 () Bool)

(declare-fun e!3004668 () Bool)

(assert (=> d!1540242 e!3004668))

(declare-fun c!819819 () Bool)

(assert (=> d!1540242 (= c!819819 (contains!18238 (v!48815 (underlying!10294 thiss!41921)) lt!1962282))))

(declare-fun lt!1962298 () List!54640)

(declare-fun apply!13144 (LongMapFixedSize!10086 (_ BitVec 64)) List!54640)

(assert (=> d!1540242 (= lt!1962298 (apply!13144 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))) lt!1962282))))

(assert (=> d!1540242 (valid!4067 (v!48815 (underlying!10294 thiss!41921)))))

(assert (=> d!1540242 (= (apply!13143 (v!48815 (underlying!10294 thiss!41921)) lt!1962282) lt!1962298)))

(declare-fun b!4810023 () Bool)

(assert (=> b!4810023 (= e!3004668 (= lt!1962298 (get!18649 (getValueByKey!2484 (toList!7132 (map!12403 (v!48815 (underlying!10294 thiss!41921)))) lt!1962282))))))

(declare-fun b!4810024 () Bool)

(declare-fun dynLambda!22133 (Int (_ BitVec 64)) List!54640)

(assert (=> b!4810024 (= e!3004668 (= lt!1962298 (dynLambda!22133 (defaultEntry!5461 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921))))) lt!1962282)))))

(assert (=> b!4810024 ((_ is LongMap!5043) (v!48815 (underlying!10294 thiss!41921)))))

(assert (= (and d!1540242 c!819819) b!4810023))

(assert (= (and d!1540242 (not c!819819)) b!4810024))

(declare-fun b_lambda!188199 () Bool)

(assert (=> (not b_lambda!188199) (not b!4810024)))

(declare-fun t!362119 () Bool)

(declare-fun tb!257529 () Bool)

(assert (=> (and b!4809974 (= (defaultEntry!5461 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921))))) (defaultEntry!5461 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))))) t!362119) tb!257529))

(assert (=> b!4810024 t!362119))

(declare-fun result!319600 () Bool)

(declare-fun b_and!341899 () Bool)

(assert (= b_and!341895 (and (=> t!362119 result!319600) b_and!341899)))

(assert (=> d!1540242 m!5795950))

(declare-fun m!5796038 () Bool)

(assert (=> d!1540242 m!5796038))

(assert (=> d!1540242 m!5795992))

(assert (=> b!4810023 m!5795954))

(declare-fun m!5796040 () Bool)

(assert (=> b!4810023 m!5796040))

(assert (=> b!4810023 m!5796040))

(declare-fun m!5796042 () Bool)

(assert (=> b!4810023 m!5796042))

(declare-fun m!5796044 () Bool)

(assert (=> b!4810024 m!5796044))

(assert (=> b!4809987 d!1540242))

(declare-fun d!1540244 () Bool)

(declare-fun lt!1962301 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9774 (List!54641) (InoxSet tuple2!57364))

(assert (=> d!1540244 (= lt!1962301 (select (content!9774 (toList!7132 lt!1962281)) lt!1962279))))

(declare-fun e!3004674 () Bool)

(assert (=> d!1540244 (= lt!1962301 e!3004674)))

(declare-fun res!2046092 () Bool)

(assert (=> d!1540244 (=> (not res!2046092) (not e!3004674))))

(assert (=> d!1540244 (= res!2046092 ((_ is Cons!54517) (toList!7132 lt!1962281)))))

(assert (=> d!1540244 (= (contains!18240 (toList!7132 lt!1962281) lt!1962279) lt!1962301)))

(declare-fun b!4810029 () Bool)

(declare-fun e!3004673 () Bool)

(assert (=> b!4810029 (= e!3004674 e!3004673)))

(declare-fun res!2046091 () Bool)

(assert (=> b!4810029 (=> res!2046091 e!3004673)))

(assert (=> b!4810029 (= res!2046091 (= (h!60949 (toList!7132 lt!1962281)) lt!1962279))))

(declare-fun b!4810030 () Bool)

(assert (=> b!4810030 (= e!3004673 (contains!18240 (t!362117 (toList!7132 lt!1962281)) lt!1962279))))

(assert (= (and d!1540244 res!2046092) b!4810029))

(assert (= (and b!4810029 (not res!2046091)) b!4810030))

(declare-fun m!5796046 () Bool)

(assert (=> d!1540244 m!5796046))

(declare-fun m!5796048 () Bool)

(assert (=> d!1540244 m!5796048))

(declare-fun m!5796050 () Bool)

(assert (=> b!4810030 m!5796050))

(assert (=> b!4809987 d!1540244))

(declare-fun bs!1160055 () Bool)

(declare-fun d!1540246 () Bool)

(assert (= bs!1160055 (and d!1540246 b!4809987)))

(declare-fun lambda!233733 () Int)

(assert (=> bs!1160055 (= lambda!233733 lambda!233724)))

(declare-fun bs!1160056 () Bool)

(assert (= bs!1160056 (and d!1540246 d!1540224)))

(assert (=> bs!1160056 (= lambda!233733 lambda!233727)))

(declare-fun bs!1160057 () Bool)

(assert (= bs!1160057 (and d!1540246 d!1540236)))

(assert (=> bs!1160057 (= lambda!233733 lambda!233730)))

(declare-fun lt!1962304 () ListMap!6571)

(declare-fun invariantList!1774 (List!54640) Bool)

(assert (=> d!1540246 (invariantList!1774 (toList!7133 lt!1962304))))

(declare-fun e!3004677 () ListMap!6571)

(assert (=> d!1540246 (= lt!1962304 e!3004677)))

(declare-fun c!819822 () Bool)

(assert (=> d!1540246 (= c!819822 ((_ is Cons!54517) (toList!7132 lt!1962280)))))

(assert (=> d!1540246 (forall!12392 (toList!7132 lt!1962280) lambda!233733)))

(assert (=> d!1540246 (= (extractMap!2537 (toList!7132 lt!1962280)) lt!1962304)))

(declare-fun b!4810035 () Bool)

(declare-fun addToMapMapFromBucket!1751 (List!54640 ListMap!6571) ListMap!6571)

(assert (=> b!4810035 (= e!3004677 (addToMapMapFromBucket!1751 (_2!31976 (h!60949 (toList!7132 lt!1962280))) (extractMap!2537 (t!362117 (toList!7132 lt!1962280)))))))

(declare-fun b!4810036 () Bool)

(assert (=> b!4810036 (= e!3004677 (ListMap!6572 Nil!54516))))

(assert (= (and d!1540246 c!819822) b!4810035))

(assert (= (and d!1540246 (not c!819822)) b!4810036))

(declare-fun m!5796052 () Bool)

(assert (=> d!1540246 m!5796052))

(declare-fun m!5796054 () Bool)

(assert (=> d!1540246 m!5796054))

(declare-fun m!5796056 () Bool)

(assert (=> b!4810035 m!5796056))

(assert (=> b!4810035 m!5796056))

(declare-fun m!5796058 () Bool)

(assert (=> b!4810035 m!5796058))

(assert (=> b!4809978 d!1540246))

(declare-fun d!1540248 () Bool)

(declare-fun lt!1962307 () Bool)

(assert (=> d!1540248 (= lt!1962307 (contains!18239 (map!12403 (v!48815 (underlying!10294 thiss!41921))) lt!1962282))))

(declare-fun contains!18242 (LongMapFixedSize!10086 (_ BitVec 64)) Bool)

(assert (=> d!1540248 (= lt!1962307 (contains!18242 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921)))) lt!1962282))))

(assert (=> d!1540248 (valid!4067 (v!48815 (underlying!10294 thiss!41921)))))

(assert (=> d!1540248 (= (contains!18238 (v!48815 (underlying!10294 thiss!41921)) lt!1962282) lt!1962307)))

(declare-fun bs!1160058 () Bool)

(assert (= bs!1160058 d!1540248))

(assert (=> bs!1160058 m!5795954))

(assert (=> bs!1160058 m!5795954))

(declare-fun m!5796060 () Bool)

(assert (=> bs!1160058 m!5796060))

(declare-fun m!5796062 () Bool)

(assert (=> bs!1160058 m!5796062))

(assert (=> bs!1160058 m!5795992))

(assert (=> b!4809978 d!1540248))

(declare-fun d!1540250 () Bool)

(declare-fun hash!5125 (Hashable!7054 K!16124) (_ BitVec 64))

(assert (=> d!1540250 (= (hash!5124 (hashF!13324 thiss!41921) key!1652) (hash!5125 (hashF!13324 thiss!41921) key!1652))))

(declare-fun bs!1160059 () Bool)

(assert (= bs!1160059 d!1540250))

(declare-fun m!5796064 () Bool)

(assert (=> bs!1160059 m!5796064))

(assert (=> b!4809978 d!1540250))

(assert (=> b!4809978 d!1540240))

(declare-fun b!4810055 () Bool)

(declare-fun e!3004695 () Unit!141521)

(declare-fun Unit!141528 () Unit!141521)

(assert (=> b!4810055 (= e!3004695 Unit!141528)))

(declare-fun b!4810056 () Bool)

(declare-fun e!3004693 () Bool)

(declare-datatypes ((List!54642 0))(
  ( (Nil!54518) (Cons!54518 (h!60950 K!16124) (t!362120 List!54642)) )
))
(declare-fun contains!18243 (List!54642 K!16124) Bool)

(declare-fun keys!19973 (ListMap!6571) List!54642)

(assert (=> b!4810056 (= e!3004693 (contains!18243 (keys!19973 (extractMap!2537 (toList!7132 lt!1962280))) key!1652))))

(declare-fun b!4810057 () Bool)

(declare-fun e!3004691 () Unit!141521)

(assert (=> b!4810057 (= e!3004691 e!3004695)))

(declare-fun c!819830 () Bool)

(declare-fun call!335715 () Bool)

(assert (=> b!4810057 (= c!819830 call!335715)))

(declare-fun b!4810058 () Bool)

(declare-fun e!3004694 () List!54642)

(declare-fun getKeysList!1120 (List!54640) List!54642)

(assert (=> b!4810058 (= e!3004694 (getKeysList!1120 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280)))))))

(declare-fun b!4810059 () Bool)

(declare-fun e!3004692 () Bool)

(assert (=> b!4810059 (= e!3004692 e!3004693)))

(declare-fun res!2046101 () Bool)

(assert (=> b!4810059 (=> (not res!2046101) (not e!3004693))))

(declare-datatypes ((Option!13303 0))(
  ( (None!13302) (Some!13302 (v!48820 V!16370)) )
))
(declare-fun isDefined!10441 (Option!13303) Bool)

(declare-fun getValueByKey!2485 (List!54640 K!16124) Option!13303)

(assert (=> b!4810059 (= res!2046101 (isDefined!10441 (getValueByKey!2485 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280))) key!1652)))))

(declare-fun bm!335710 () Bool)

(assert (=> bm!335710 (= call!335715 (contains!18243 e!3004694 key!1652))))

(declare-fun c!819829 () Bool)

(declare-fun c!819831 () Bool)

(assert (=> bm!335710 (= c!819829 c!819831)))

(declare-fun b!4810060 () Bool)

(assert (=> b!4810060 false))

(declare-fun lt!1962330 () Unit!141521)

(declare-fun lt!1962324 () Unit!141521)

(assert (=> b!4810060 (= lt!1962330 lt!1962324)))

(declare-fun containsKey!4144 (List!54640 K!16124) Bool)

(assert (=> b!4810060 (containsKey!4144 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1120 (List!54640 K!16124) Unit!141521)

(assert (=> b!4810060 (= lt!1962324 (lemmaInGetKeysListThenContainsKey!1120 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280))) key!1652))))

(declare-fun Unit!141529 () Unit!141521)

(assert (=> b!4810060 (= e!3004695 Unit!141529)))

(declare-fun b!4810061 () Bool)

(declare-fun lt!1962331 () Unit!141521)

(assert (=> b!4810061 (= e!3004691 lt!1962331)))

(declare-fun lt!1962327 () Unit!141521)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2273 (List!54640 K!16124) Unit!141521)

(assert (=> b!4810061 (= lt!1962327 (lemmaContainsKeyImpliesGetValueByKeyDefined!2273 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280))) key!1652))))

(assert (=> b!4810061 (isDefined!10441 (getValueByKey!2485 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280))) key!1652))))

(declare-fun lt!1962328 () Unit!141521)

(assert (=> b!4810061 (= lt!1962328 lt!1962327)))

(declare-fun lemmaInListThenGetKeysListContains!1115 (List!54640 K!16124) Unit!141521)

(assert (=> b!4810061 (= lt!1962331 (lemmaInListThenGetKeysListContains!1115 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280))) key!1652))))

(assert (=> b!4810061 call!335715))

(declare-fun b!4810062 () Bool)

(declare-fun e!3004690 () Bool)

(assert (=> b!4810062 (= e!3004690 (not (contains!18243 (keys!19973 (extractMap!2537 (toList!7132 lt!1962280))) key!1652)))))

(declare-fun b!4810063 () Bool)

(assert (=> b!4810063 (= e!3004694 (keys!19973 (extractMap!2537 (toList!7132 lt!1962280))))))

(declare-fun d!1540252 () Bool)

(assert (=> d!1540252 e!3004692))

(declare-fun res!2046099 () Bool)

(assert (=> d!1540252 (=> res!2046099 e!3004692)))

(assert (=> d!1540252 (= res!2046099 e!3004690)))

(declare-fun res!2046100 () Bool)

(assert (=> d!1540252 (=> (not res!2046100) (not e!3004690))))

(declare-fun lt!1962329 () Bool)

(assert (=> d!1540252 (= res!2046100 (not lt!1962329))))

(declare-fun lt!1962325 () Bool)

(assert (=> d!1540252 (= lt!1962329 lt!1962325)))

(declare-fun lt!1962326 () Unit!141521)

(assert (=> d!1540252 (= lt!1962326 e!3004691)))

(assert (=> d!1540252 (= c!819831 lt!1962325)))

(assert (=> d!1540252 (= lt!1962325 (containsKey!4144 (toList!7133 (extractMap!2537 (toList!7132 lt!1962280))) key!1652))))

(assert (=> d!1540252 (= (contains!18237 (extractMap!2537 (toList!7132 lt!1962280)) key!1652) lt!1962329)))

(assert (= (and d!1540252 c!819831) b!4810061))

(assert (= (and d!1540252 (not c!819831)) b!4810057))

(assert (= (and b!4810057 c!819830) b!4810060))

(assert (= (and b!4810057 (not c!819830)) b!4810055))

(assert (= (or b!4810061 b!4810057) bm!335710))

(assert (= (and bm!335710 c!819829) b!4810058))

(assert (= (and bm!335710 (not c!819829)) b!4810063))

(assert (= (and d!1540252 res!2046100) b!4810062))

(assert (= (and d!1540252 (not res!2046099)) b!4810059))

(assert (= (and b!4810059 res!2046101) b!4810056))

(assert (=> b!4810063 m!5795946))

(declare-fun m!5796066 () Bool)

(assert (=> b!4810063 m!5796066))

(declare-fun m!5796068 () Bool)

(assert (=> bm!335710 m!5796068))

(assert (=> b!4810062 m!5795946))

(assert (=> b!4810062 m!5796066))

(assert (=> b!4810062 m!5796066))

(declare-fun m!5796070 () Bool)

(assert (=> b!4810062 m!5796070))

(declare-fun m!5796072 () Bool)

(assert (=> b!4810059 m!5796072))

(assert (=> b!4810059 m!5796072))

(declare-fun m!5796074 () Bool)

(assert (=> b!4810059 m!5796074))

(declare-fun m!5796076 () Bool)

(assert (=> b!4810058 m!5796076))

(declare-fun m!5796078 () Bool)

(assert (=> d!1540252 m!5796078))

(assert (=> b!4810056 m!5795946))

(assert (=> b!4810056 m!5796066))

(assert (=> b!4810056 m!5796066))

(assert (=> b!4810056 m!5796070))

(declare-fun m!5796080 () Bool)

(assert (=> b!4810061 m!5796080))

(assert (=> b!4810061 m!5796072))

(assert (=> b!4810061 m!5796072))

(assert (=> b!4810061 m!5796074))

(declare-fun m!5796082 () Bool)

(assert (=> b!4810061 m!5796082))

(assert (=> b!4810060 m!5796078))

(declare-fun m!5796084 () Bool)

(assert (=> b!4810060 m!5796084))

(assert (=> b!4809978 d!1540252))

(declare-fun d!1540254 () Bool)

(declare-fun isEmpty!29548 (Option!13302) Bool)

(assert (=> d!1540254 (= (isDefined!10440 (getValueByKey!2484 (toList!7132 lt!1962281) lt!1962282)) (not (isEmpty!29548 (getValueByKey!2484 (toList!7132 lt!1962281) lt!1962282))))))

(declare-fun bs!1160060 () Bool)

(assert (= bs!1160060 d!1540254))

(assert (=> bs!1160060 m!5795970))

(declare-fun m!5796086 () Bool)

(assert (=> bs!1160060 m!5796086))

(assert (=> b!4809986 d!1540254))

(declare-fun d!1540256 () Bool)

(declare-fun res!2046106 () Bool)

(declare-fun e!3004700 () Bool)

(assert (=> d!1540256 (=> res!2046106 e!3004700)))

(assert (=> d!1540256 (= res!2046106 (and ((_ is Cons!54517) (toList!7132 lt!1962281)) (= (_1!31976 (h!60949 (toList!7132 lt!1962281))) lt!1962282)))))

(assert (=> d!1540256 (= (containsKey!4142 (toList!7132 lt!1962281) lt!1962282) e!3004700)))

(declare-fun b!4810068 () Bool)

(declare-fun e!3004701 () Bool)

(assert (=> b!4810068 (= e!3004700 e!3004701)))

(declare-fun res!2046107 () Bool)

(assert (=> b!4810068 (=> (not res!2046107) (not e!3004701))))

(assert (=> b!4810068 (= res!2046107 (and (or (not ((_ is Cons!54517) (toList!7132 lt!1962281))) (bvsle (_1!31976 (h!60949 (toList!7132 lt!1962281))) lt!1962282)) ((_ is Cons!54517) (toList!7132 lt!1962281)) (bvslt (_1!31976 (h!60949 (toList!7132 lt!1962281))) lt!1962282)))))

(declare-fun b!4810069 () Bool)

(assert (=> b!4810069 (= e!3004701 (containsKey!4142 (t!362117 (toList!7132 lt!1962281)) lt!1962282))))

(assert (= (and d!1540256 (not res!2046106)) b!4810068))

(assert (= (and b!4810068 res!2046107) b!4810069))

(declare-fun m!5796088 () Bool)

(assert (=> b!4810069 m!5796088))

(assert (=> b!4809986 d!1540256))

(declare-fun d!1540258 () Bool)

(assert (=> d!1540258 (containsKey!4142 (toList!7132 lt!1962281) lt!1962282)))

(declare-fun lt!1962334 () Unit!141521)

(declare-fun choose!34845 (List!54641 (_ BitVec 64)) Unit!141521)

(assert (=> d!1540258 (= lt!1962334 (choose!34845 (toList!7132 lt!1962281) lt!1962282))))

(declare-fun e!3004704 () Bool)

(assert (=> d!1540258 e!3004704))

(declare-fun res!2046110 () Bool)

(assert (=> d!1540258 (=> (not res!2046110) (not e!3004704))))

(declare-fun isStrictlySorted!927 (List!54641) Bool)

(assert (=> d!1540258 (= res!2046110 (isStrictlySorted!927 (toList!7132 lt!1962281)))))

(assert (=> d!1540258 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!268 (toList!7132 lt!1962281) lt!1962282) lt!1962334)))

(declare-fun b!4810072 () Bool)

(assert (=> b!4810072 (= e!3004704 (isDefined!10440 (getValueByKey!2484 (toList!7132 lt!1962281) lt!1962282)))))

(assert (= (and d!1540258 res!2046110) b!4810072))

(assert (=> d!1540258 m!5795980))

(declare-fun m!5796090 () Bool)

(assert (=> d!1540258 m!5796090))

(declare-fun m!5796092 () Bool)

(assert (=> d!1540258 m!5796092))

(assert (=> b!4810072 m!5795970))

(assert (=> b!4810072 m!5795970))

(assert (=> b!4810072 m!5795972))

(assert (=> b!4809986 d!1540258))

(declare-fun d!1540260 () Bool)

(assert (=> d!1540260 (contains!18240 (toList!7132 lt!1962281) (tuple2!57365 lt!1962282 lt!1962275))))

(declare-fun lt!1962337 () Unit!141521)

(declare-fun choose!34846 (List!54641 (_ BitVec 64) List!54640) Unit!141521)

(assert (=> d!1540260 (= lt!1962337 (choose!34846 (toList!7132 lt!1962281) lt!1962282 lt!1962275))))

(declare-fun e!3004707 () Bool)

(assert (=> d!1540260 e!3004707))

(declare-fun res!2046113 () Bool)

(assert (=> d!1540260 (=> (not res!2046113) (not e!3004707))))

(assert (=> d!1540260 (= res!2046113 (isStrictlySorted!927 (toList!7132 lt!1962281)))))

(assert (=> d!1540260 (= (lemmaGetValueByKeyImpliesContainsTuple!997 (toList!7132 lt!1962281) lt!1962282 lt!1962275) lt!1962337)))

(declare-fun b!4810075 () Bool)

(assert (=> b!4810075 (= e!3004707 (= (getValueByKey!2484 (toList!7132 lt!1962281) lt!1962282) (Some!13301 lt!1962275)))))

(assert (= (and d!1540260 res!2046113) b!4810075))

(declare-fun m!5796094 () Bool)

(assert (=> d!1540260 m!5796094))

(declare-fun m!5796096 () Bool)

(assert (=> d!1540260 m!5796096))

(assert (=> d!1540260 m!5796092))

(assert (=> b!4810075 m!5795970))

(assert (=> b!4809986 d!1540260))

(declare-fun b!4810086 () Bool)

(declare-fun e!3004713 () Option!13302)

(assert (=> b!4810086 (= e!3004713 (getValueByKey!2484 (t!362117 (toList!7132 lt!1962281)) lt!1962282))))

(declare-fun b!4810084 () Bool)

(declare-fun e!3004712 () Option!13302)

(assert (=> b!4810084 (= e!3004712 (Some!13301 (_2!31976 (h!60949 (toList!7132 lt!1962281)))))))

(declare-fun b!4810087 () Bool)

(assert (=> b!4810087 (= e!3004713 None!13301)))

(declare-fun d!1540262 () Bool)

(declare-fun c!819836 () Bool)

(assert (=> d!1540262 (= c!819836 (and ((_ is Cons!54517) (toList!7132 lt!1962281)) (= (_1!31976 (h!60949 (toList!7132 lt!1962281))) lt!1962282)))))

(assert (=> d!1540262 (= (getValueByKey!2484 (toList!7132 lt!1962281) lt!1962282) e!3004712)))

(declare-fun b!4810085 () Bool)

(assert (=> b!4810085 (= e!3004712 e!3004713)))

(declare-fun c!819837 () Bool)

(assert (=> b!4810085 (= c!819837 (and ((_ is Cons!54517) (toList!7132 lt!1962281)) (not (= (_1!31976 (h!60949 (toList!7132 lt!1962281))) lt!1962282))))))

(assert (= (and d!1540262 c!819836) b!4810084))

(assert (= (and d!1540262 (not c!819836)) b!4810085))

(assert (= (and b!4810085 c!819837) b!4810086))

(assert (= (and b!4810085 (not c!819837)) b!4810087))

(declare-fun m!5796098 () Bool)

(assert (=> b!4810086 m!5796098))

(assert (=> b!4809986 d!1540262))

(declare-fun d!1540264 () Bool)

(assert (=> d!1540264 (isDefined!10440 (getValueByKey!2484 (toList!7132 lt!1962281) lt!1962282))))

(declare-fun lt!1962340 () Unit!141521)

(declare-fun choose!34847 (List!54641 (_ BitVec 64)) Unit!141521)

(assert (=> d!1540264 (= lt!1962340 (choose!34847 (toList!7132 lt!1962281) lt!1962282))))

(declare-fun e!3004716 () Bool)

(assert (=> d!1540264 e!3004716))

(declare-fun res!2046116 () Bool)

(assert (=> d!1540264 (=> (not res!2046116) (not e!3004716))))

(assert (=> d!1540264 (= res!2046116 (isStrictlySorted!927 (toList!7132 lt!1962281)))))

(assert (=> d!1540264 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2272 (toList!7132 lt!1962281) lt!1962282) lt!1962340)))

(declare-fun b!4810090 () Bool)

(assert (=> b!4810090 (= e!3004716 (containsKey!4142 (toList!7132 lt!1962281) lt!1962282))))

(assert (= (and d!1540264 res!2046116) b!4810090))

(assert (=> d!1540264 m!5795970))

(assert (=> d!1540264 m!5795970))

(assert (=> d!1540264 m!5795972))

(declare-fun m!5796100 () Bool)

(assert (=> d!1540264 m!5796100))

(assert (=> d!1540264 m!5796092))

(assert (=> b!4810090 m!5795980))

(assert (=> b!4809986 d!1540264))

(declare-fun d!1540266 () Bool)

(declare-fun valid!4069 (LongMapFixedSize!10086) Bool)

(assert (=> d!1540266 (= (valid!4067 (v!48815 (underlying!10294 thiss!41921))) (valid!4069 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921))))))))

(declare-fun bs!1160061 () Bool)

(assert (= bs!1160061 d!1540266))

(declare-fun m!5796102 () Bool)

(assert (=> bs!1160061 m!5796102))

(assert (=> b!4809977 d!1540266))

(declare-fun d!1540268 () Bool)

(declare-fun e!3004722 () Bool)

(assert (=> d!1540268 e!3004722))

(declare-fun res!2046119 () Bool)

(assert (=> d!1540268 (=> res!2046119 e!3004722)))

(declare-fun lt!1962350 () Bool)

(assert (=> d!1540268 (= res!2046119 (not lt!1962350))))

(declare-fun lt!1962352 () Bool)

(assert (=> d!1540268 (= lt!1962350 lt!1962352)))

(declare-fun lt!1962351 () Unit!141521)

(declare-fun e!3004721 () Unit!141521)

(assert (=> d!1540268 (= lt!1962351 e!3004721)))

(declare-fun c!819840 () Bool)

(assert (=> d!1540268 (= c!819840 lt!1962352)))

(assert (=> d!1540268 (= lt!1962352 (containsKey!4142 (toList!7132 lt!1962280) lt!1962282))))

(assert (=> d!1540268 (= (contains!18239 lt!1962280 lt!1962282) lt!1962350)))

(declare-fun b!4810097 () Bool)

(declare-fun lt!1962349 () Unit!141521)

(assert (=> b!4810097 (= e!3004721 lt!1962349)))

(assert (=> b!4810097 (= lt!1962349 (lemmaContainsKeyImpliesGetValueByKeyDefined!2272 (toList!7132 lt!1962280) lt!1962282))))

(assert (=> b!4810097 (isDefined!10440 (getValueByKey!2484 (toList!7132 lt!1962280) lt!1962282))))

(declare-fun b!4810098 () Bool)

(declare-fun Unit!141530 () Unit!141521)

(assert (=> b!4810098 (= e!3004721 Unit!141530)))

(declare-fun b!4810099 () Bool)

(assert (=> b!4810099 (= e!3004722 (isDefined!10440 (getValueByKey!2484 (toList!7132 lt!1962280) lt!1962282)))))

(assert (= (and d!1540268 c!819840) b!4810097))

(assert (= (and d!1540268 (not c!819840)) b!4810098))

(assert (= (and d!1540268 (not res!2046119)) b!4810099))

(declare-fun m!5796104 () Bool)

(assert (=> d!1540268 m!5796104))

(declare-fun m!5796106 () Bool)

(assert (=> b!4810097 m!5796106))

(assert (=> b!4810097 m!5796006))

(assert (=> b!4810097 m!5796006))

(declare-fun m!5796108 () Bool)

(assert (=> b!4810097 m!5796108))

(assert (=> b!4810099 m!5796006))

(assert (=> b!4810099 m!5796006))

(assert (=> b!4810099 m!5796108))

(assert (=> bm!335707 d!1540268))

(declare-fun bs!1160062 () Bool)

(declare-fun b!4810104 () Bool)

(assert (= bs!1160062 (and b!4810104 b!4809987)))

(declare-fun lambda!233736 () Int)

(assert (=> bs!1160062 (= lambda!233736 lambda!233724)))

(declare-fun bs!1160063 () Bool)

(assert (= bs!1160063 (and b!4810104 d!1540224)))

(assert (=> bs!1160063 (= lambda!233736 lambda!233727)))

(declare-fun bs!1160064 () Bool)

(assert (= bs!1160064 (and b!4810104 d!1540236)))

(assert (=> bs!1160064 (= lambda!233736 lambda!233730)))

(declare-fun bs!1160065 () Bool)

(assert (= bs!1160065 (and b!4810104 d!1540246)))

(assert (=> bs!1160065 (= lambda!233736 lambda!233733)))

(declare-fun d!1540270 () Bool)

(declare-fun res!2046124 () Bool)

(declare-fun e!3004725 () Bool)

(assert (=> d!1540270 (=> (not res!2046124) (not e!3004725))))

(assert (=> d!1540270 (= res!2046124 (valid!4067 (v!48815 (underlying!10294 thiss!41921))))))

(assert (=> d!1540270 (= (valid!4068 thiss!41921) e!3004725)))

(declare-fun res!2046125 () Bool)

(assert (=> b!4810104 (=> (not res!2046125) (not e!3004725))))

(assert (=> b!4810104 (= res!2046125 (forall!12392 (toList!7132 (map!12403 (v!48815 (underlying!10294 thiss!41921)))) lambda!233736))))

(declare-fun b!4810105 () Bool)

(declare-fun allKeysSameHashInMap!2407 (ListLongMap!5587 Hashable!7054) Bool)

(assert (=> b!4810105 (= e!3004725 (allKeysSameHashInMap!2407 (map!12403 (v!48815 (underlying!10294 thiss!41921))) (hashF!13324 thiss!41921)))))

(assert (= (and d!1540270 res!2046124) b!4810104))

(assert (= (and b!4810104 res!2046125) b!4810105))

(assert (=> d!1540270 m!5795992))

(assert (=> b!4810104 m!5795954))

(declare-fun m!5796110 () Bool)

(assert (=> b!4810104 m!5796110))

(assert (=> b!4810105 m!5795954))

(assert (=> b!4810105 m!5795954))

(declare-fun m!5796112 () Bool)

(assert (=> b!4810105 m!5796112))

(assert (=> b!4809985 d!1540270))

(declare-fun b!4810110 () Bool)

(declare-fun tp!1360382 () Bool)

(declare-fun tp_is_empty!33959 () Bool)

(declare-fun e!3004728 () Bool)

(assert (=> b!4810110 (= e!3004728 (and tp_is_empty!33957 tp_is_empty!33959 tp!1360382))))

(assert (=> b!4809974 (= tp!1360376 e!3004728)))

(assert (= (and b!4809974 ((_ is Cons!54516) (zeroValue!5331 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921))))))) b!4810110))

(declare-fun e!3004729 () Bool)

(declare-fun b!4810111 () Bool)

(declare-fun tp!1360383 () Bool)

(assert (=> b!4810111 (= e!3004729 (and tp_is_empty!33957 tp_is_empty!33959 tp!1360383))))

(assert (=> b!4809974 (= tp!1360375 e!3004729)))

(assert (= (and b!4809974 ((_ is Cons!54516) (minValue!5331 (v!48814 (underlying!10293 (v!48815 (underlying!10294 thiss!41921))))))) b!4810111))

(declare-fun tp!1360392 () Bool)

(declare-fun b!4810118 () Bool)

(declare-fun e!3004734 () Bool)

(assert (=> b!4810118 (= e!3004734 (and tp_is_empty!33957 tp_is_empty!33959 tp!1360392))))

(declare-fun condMapEmpty!22295 () Bool)

(declare-fun mapDefault!22295 () List!54640)

(assert (=> mapNonEmpty!22292 (= condMapEmpty!22295 (= mapRest!22292 ((as const (Array (_ BitVec 32) List!54640)) mapDefault!22295)))))

(declare-fun e!3004735 () Bool)

(declare-fun mapRes!22295 () Bool)

(assert (=> mapNonEmpty!22292 (= tp!1360373 (and e!3004735 mapRes!22295))))

(declare-fun mapNonEmpty!22295 () Bool)

(declare-fun tp!1360390 () Bool)

(assert (=> mapNonEmpty!22295 (= mapRes!22295 (and tp!1360390 e!3004734))))

(declare-fun mapKey!22295 () (_ BitVec 32))

(declare-fun mapValue!22295 () List!54640)

(declare-fun mapRest!22295 () (Array (_ BitVec 32) List!54640))

(assert (=> mapNonEmpty!22295 (= mapRest!22292 (store mapRest!22295 mapKey!22295 mapValue!22295))))

(declare-fun mapIsEmpty!22295 () Bool)

(assert (=> mapIsEmpty!22295 mapRes!22295))

(declare-fun b!4810119 () Bool)

(declare-fun tp!1360391 () Bool)

(assert (=> b!4810119 (= e!3004735 (and tp_is_empty!33957 tp_is_empty!33959 tp!1360391))))

(assert (= (and mapNonEmpty!22292 condMapEmpty!22295) mapIsEmpty!22295))

(assert (= (and mapNonEmpty!22292 (not condMapEmpty!22295)) mapNonEmpty!22295))

(assert (= (and mapNonEmpty!22295 ((_ is Cons!54516) mapValue!22295)) b!4810118))

(assert (= (and mapNonEmpty!22292 ((_ is Cons!54516) mapDefault!22295)) b!4810119))

(declare-fun m!5796114 () Bool)

(assert (=> mapNonEmpty!22295 m!5796114))

(declare-fun tp!1360393 () Bool)

(declare-fun e!3004736 () Bool)

(declare-fun b!4810120 () Bool)

(assert (=> b!4810120 (= e!3004736 (and tp_is_empty!33957 tp_is_empty!33959 tp!1360393))))

(assert (=> mapNonEmpty!22292 (= tp!1360378 e!3004736)))

(assert (= (and mapNonEmpty!22292 ((_ is Cons!54516) mapValue!22292)) b!4810120))

(declare-fun e!3004737 () Bool)

(declare-fun b!4810121 () Bool)

(declare-fun tp!1360394 () Bool)

(assert (=> b!4810121 (= e!3004737 (and tp_is_empty!33957 tp_is_empty!33959 tp!1360394))))

(assert (=> b!4809981 (= tp!1360374 e!3004737)))

(assert (= (and b!4809981 ((_ is Cons!54516) mapDefault!22292)) b!4810121))

(declare-fun b_lambda!188201 () Bool)

(assert (= b_lambda!188197 (or b!4809987 b_lambda!188201)))

(declare-fun bs!1160066 () Bool)

(declare-fun d!1540272 () Bool)

(assert (= bs!1160066 (and d!1540272 b!4809987)))

(assert (=> bs!1160066 (= (dynLambda!22132 lambda!233724 lt!1962279) (noDuplicateKeys!2387 (_2!31976 lt!1962279)))))

(declare-fun m!5796116 () Bool)

(assert (=> bs!1160066 m!5796116))

(assert (=> d!1540238 d!1540272))

(declare-fun b_lambda!188203 () Bool)

(assert (= b_lambda!188199 (or (and b!4809974 b_free!130115) b_lambda!188203)))

(check-sat (not b!4810015) (not b!4810018) (not b!4810118) (not d!1540248) (not d!1540240) b_and!341897 (not tb!257529) (not d!1540250) (not b!4810119) (not b!4810061) (not d!1540242) (not b!4810012) (not d!1540266) (not b!4810120) (not d!1540246) (not b!4810110) (not d!1540254) (not d!1540224) (not b!4810075) (not b!4810030) (not b!4810072) (not b!4810104) (not b_next!130907) (not d!1540258) (not b!4810060) (not b!4810010) (not b!4810014) (not b!4810056) (not b!4810059) (not b!4810097) (not b!4810035) (not b!4810013) (not d!1540238) (not b_lambda!188201) (not b!4810063) (not bm!335710) (not b!4810090) (not d!1540244) (not b!4810086) (not d!1540270) b_and!341899 tp_is_empty!33959 (not mapNonEmpty!22295) (not d!1540234) (not d!1540260) (not d!1540252) (not b!4810058) (not b!4810062) (not b_next!130905) (not d!1540236) (not b_lambda!188203) (not b!4809991) (not b!4810069) (not d!1540226) (not b!4810111) (not d!1540268) (not b!4810023) (not b!4810105) tp_is_empty!33957 (not d!1540264) (not b!4810121) (not d!1540232) (not bs!1160066) (not b!4810099))
(check-sat b_and!341899 b_and!341897 (not b_next!130905) (not b_next!130907))
