; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496792 () Bool)

(assert start!496792)

(declare-fun b!4807240 () Bool)

(declare-fun b_free!129947 () Bool)

(declare-fun b_next!130737 () Bool)

(assert (=> b!4807240 (= b_free!129947 (not b_next!130737))))

(declare-fun tp!1359373 () Bool)

(declare-fun b_and!341711 () Bool)

(assert (=> b!4807240 (= tp!1359373 b_and!341711)))

(declare-fun b!4807243 () Bool)

(declare-fun b_free!129949 () Bool)

(declare-fun b_next!130739 () Bool)

(assert (=> b!4807243 (= b_free!129949 (not b_next!130739))))

(declare-fun tp!1359374 () Bool)

(declare-fun b_and!341713 () Bool)

(assert (=> b!4807243 (= tp!1359374 b_and!341713)))

(declare-fun mapIsEmpty!22142 () Bool)

(declare-fun mapRes!22142 () Bool)

(assert (=> mapIsEmpty!22142 mapRes!22142))

(declare-fun res!2045146 () Bool)

(declare-fun e!3002573 () Bool)

(assert (=> start!496792 (=> (not res!2045146) (not e!3002573))))

(declare-datatypes ((K!16019 0))(
  ( (K!16020 (val!21121 Int)) )
))
(declare-datatypes ((array!18358 0))(
  ( (array!18359 (arr!8187 (Array (_ BitVec 32) (_ BitVec 64))) (size!36433 (_ BitVec 32))) )
))
(declare-datatypes ((V!16265 0))(
  ( (V!16266 (val!21122 Int)) )
))
(declare-datatypes ((tuple2!57198 0))(
  ( (tuple2!57199 (_1!31893 K!16019) (_2!31893 V!16265)) )
))
(declare-datatypes ((List!54552 0))(
  ( (Nil!54428) (Cons!54428 (h!60860 tuple2!57198) (t!362012 List!54552)) )
))
(declare-datatypes ((array!18360 0))(
  ( (array!18361 (arr!8188 (Array (_ BitVec 32) List!54552)) (size!36434 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10002 0))(
  ( (LongMapFixedSize!10003 (defaultEntry!5419 Int) (mask!14972 (_ BitVec 32)) (extraKeys!5276 (_ BitVec 32)) (zeroValue!5289 List!54552) (minValue!5289 List!54552) (_size!10027 (_ BitVec 32)) (_keys!5343 array!18358) (_values!5314 array!18360) (_vacant!5066 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19769 0))(
  ( (Cell!19770 (v!48657 LongMapFixedSize!10002)) )
))
(declare-datatypes ((MutLongMap!5001 0))(
  ( (LongMap!5001 (underlying!10209 Cell!19769)) (MutLongMapExt!5000 (__x!33101 Int)) )
))
(declare-datatypes ((Hashable!7012 0))(
  ( (HashableExt!7011 (__x!33102 Int)) )
))
(declare-datatypes ((Cell!19771 0))(
  ( (Cell!19772 (v!48658 MutLongMap!5001)) )
))
(declare-datatypes ((MutableMap!4885 0))(
  ( (MutableMapExt!4884 (__x!33103 Int)) (HashMap!4885 (underlying!10210 Cell!19771) (hashF!13280 Hashable!7012) (_size!10028 (_ BitVec 32)) (defaultValue!5056 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4885)

(get-info :version)

(assert (=> start!496792 (= res!2045146 ((_ is HashMap!4885) thiss!41921))))

(assert (=> start!496792 e!3002573))

(declare-fun e!3002574 () Bool)

(assert (=> start!496792 e!3002574))

(declare-fun tp_is_empty!33857 () Bool)

(assert (=> start!496792 tp_is_empty!33857))

(declare-fun b!4807236 () Bool)

(assert (=> b!4807236 false))

(declare-datatypes ((Unit!141299 0))(
  ( (Unit!141300) )
))
(declare-fun lt!1960366 () Unit!141299)

(declare-fun lt!1960374 () List!54552)

(declare-fun lt!1960375 () (_ BitVec 64))

(declare-datatypes ((tuple2!57200 0))(
  ( (tuple2!57201 (_1!31894 (_ BitVec 64)) (_2!31894 List!54552)) )
))
(declare-datatypes ((List!54553 0))(
  ( (Nil!54429) (Cons!54429 (h!60861 tuple2!57200) (t!362013 List!54553)) )
))
(declare-datatypes ((ListLongMap!5507 0))(
  ( (ListLongMap!5508 (toList!7061 List!54553)) )
))
(declare-fun lt!1960372 () ListLongMap!5507)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!960 (List!54553 (_ BitVec 64) List!54552) Unit!141299)

(assert (=> b!4807236 (= lt!1960366 (lemmaGetValueByKeyImpliesContainsTuple!960 (toList!7061 lt!1960372) lt!1960375 lt!1960374))))

(declare-datatypes ((Option!13244 0))(
  ( (None!13243) (Some!13243 (v!48659 List!54552)) )
))
(declare-fun isDefined!10383 (Option!13244) Bool)

(declare-fun getValueByKey!2441 (List!54553 (_ BitVec 64)) Option!13244)

(assert (=> b!4807236 (isDefined!10383 (getValueByKey!2441 (toList!7061 lt!1960372) lt!1960375))))

(declare-fun lt!1960368 () Unit!141299)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2229 (List!54553 (_ BitVec 64)) Unit!141299)

(assert (=> b!4807236 (= lt!1960368 (lemmaContainsKeyImpliesGetValueByKeyDefined!2229 (toList!7061 lt!1960372) lt!1960375))))

(declare-fun containsKey!4096 (List!54553 (_ BitVec 64)) Bool)

(assert (=> b!4807236 (containsKey!4096 (toList!7061 lt!1960372) lt!1960375)))

(declare-fun lt!1960367 () Unit!141299)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!231 (List!54553 (_ BitVec 64)) Unit!141299)

(assert (=> b!4807236 (= lt!1960367 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!231 (toList!7061 lt!1960372) lt!1960375))))

(declare-fun e!3002575 () Unit!141299)

(declare-fun Unit!141301 () Unit!141299)

(assert (=> b!4807236 (= e!3002575 Unit!141301)))

(declare-fun b!4807237 () Bool)

(declare-fun e!3002569 () Bool)

(declare-fun e!3002570 () Bool)

(assert (=> b!4807237 (= e!3002569 e!3002570)))

(declare-fun b!4807238 () Bool)

(declare-fun e!3002572 () Unit!141299)

(declare-fun lt!1960370 () tuple2!57200)

(declare-fun lambda!233486 () Int)

(declare-fun forallContained!4232 (List!54553 Int tuple2!57200) Unit!141299)

(assert (=> b!4807238 (= e!3002572 (forallContained!4232 (toList!7061 lt!1960372) lambda!233486 lt!1960370))))

(declare-fun map!12336 (MutLongMap!5001) ListLongMap!5507)

(assert (=> b!4807238 (= lt!1960372 (map!12336 (v!48658 (underlying!10210 thiss!41921))))))

(declare-fun apply!13084 (MutLongMap!5001 (_ BitVec 64)) List!54552)

(assert (=> b!4807238 (= lt!1960374 (apply!13084 (v!48658 (underlying!10210 thiss!41921)) lt!1960375))))

(assert (=> b!4807238 (= lt!1960370 (tuple2!57201 lt!1960375 lt!1960374))))

(declare-fun c!819342 () Bool)

(declare-fun contains!18094 (List!54553 tuple2!57200) Bool)

(assert (=> b!4807238 (= c!819342 (not (contains!18094 (toList!7061 lt!1960372) lt!1960370)))))

(declare-fun lt!1960371 () Unit!141299)

(assert (=> b!4807238 (= lt!1960371 e!3002575)))

(declare-fun b!4807239 () Bool)

(declare-fun res!2045147 () Bool)

(assert (=> b!4807239 (=> (not res!2045147) (not e!3002573))))

(declare-fun valid!4014 (MutableMap!4885) Bool)

(assert (=> b!4807239 (= res!2045147 (valid!4014 thiss!41921))))

(declare-fun tp!1359371 () Bool)

(declare-fun e!3002571 () Bool)

(declare-fun tp!1359376 () Bool)

(declare-fun array_inv!5897 (array!18358) Bool)

(declare-fun array_inv!5898 (array!18360) Bool)

(assert (=> b!4807240 (= e!3002570 (and tp!1359373 tp!1359376 tp!1359371 (array_inv!5897 (_keys!5343 (v!48657 (underlying!10209 (v!48658 (underlying!10210 thiss!41921)))))) (array_inv!5898 (_values!5314 (v!48657 (underlying!10209 (v!48658 (underlying!10210 thiss!41921)))))) e!3002571))))

(declare-fun b!4807241 () Bool)

(declare-fun Unit!141302 () Unit!141299)

(assert (=> b!4807241 (= e!3002575 Unit!141302)))

(declare-fun b!4807242 () Bool)

(declare-fun tp!1359372 () Bool)

(assert (=> b!4807242 (= e!3002571 (and tp!1359372 mapRes!22142))))

(declare-fun condMapEmpty!22142 () Bool)

(declare-fun mapDefault!22142 () List!54552)

(assert (=> b!4807242 (= condMapEmpty!22142 (= (arr!8188 (_values!5314 (v!48657 (underlying!10209 (v!48658 (underlying!10210 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54552)) mapDefault!22142)))))

(declare-fun e!3002568 () Bool)

(assert (=> b!4807243 (= e!3002574 (and e!3002568 tp!1359374))))

(declare-fun b!4807244 () Bool)

(declare-fun e!3002577 () Bool)

(assert (=> b!4807244 (= e!3002577 e!3002569)))

(declare-fun b!4807245 () Bool)

(declare-fun Unit!141303 () Unit!141299)

(assert (=> b!4807245 (= e!3002572 Unit!141303)))

(declare-fun b!4807246 () Bool)

(declare-fun lt!1960369 () MutLongMap!5001)

(assert (=> b!4807246 (= e!3002568 (and e!3002577 ((_ is LongMap!5001) lt!1960369)))))

(assert (=> b!4807246 (= lt!1960369 (v!48658 (underlying!10210 thiss!41921)))))

(declare-fun b!4807247 () Bool)

(assert (=> b!4807247 (= e!3002573 (not ((_ is LongMap!5001) (v!48658 (underlying!10210 thiss!41921)))))))

(declare-fun lt!1960373 () Unit!141299)

(assert (=> b!4807247 (= lt!1960373 e!3002572)))

(declare-fun c!819341 () Bool)

(declare-fun contains!18095 (MutLongMap!5001 (_ BitVec 64)) Bool)

(assert (=> b!4807247 (= c!819341 (contains!18095 (v!48658 (underlying!10210 thiss!41921)) lt!1960375))))

(declare-fun key!1652 () K!16019)

(declare-fun hash!5080 (Hashable!7012 K!16019) (_ BitVec 64))

(assert (=> b!4807247 (= lt!1960375 (hash!5080 (hashF!13280 thiss!41921) key!1652))))

(declare-fun mapNonEmpty!22142 () Bool)

(declare-fun tp!1359377 () Bool)

(declare-fun tp!1359375 () Bool)

(assert (=> mapNonEmpty!22142 (= mapRes!22142 (and tp!1359377 tp!1359375))))

(declare-fun mapKey!22142 () (_ BitVec 32))

(declare-fun mapRest!22142 () (Array (_ BitVec 32) List!54552))

(declare-fun mapValue!22142 () List!54552)

(assert (=> mapNonEmpty!22142 (= (arr!8188 (_values!5314 (v!48657 (underlying!10209 (v!48658 (underlying!10210 thiss!41921)))))) (store mapRest!22142 mapKey!22142 mapValue!22142))))

(assert (= (and start!496792 res!2045146) b!4807239))

(assert (= (and b!4807239 res!2045147) b!4807247))

(assert (= (and b!4807247 c!819341) b!4807238))

(assert (= (and b!4807247 (not c!819341)) b!4807245))

(assert (= (and b!4807238 c!819342) b!4807236))

(assert (= (and b!4807238 (not c!819342)) b!4807241))

(assert (= (and b!4807242 condMapEmpty!22142) mapIsEmpty!22142))

(assert (= (and b!4807242 (not condMapEmpty!22142)) mapNonEmpty!22142))

(assert (= b!4807240 b!4807242))

(assert (= b!4807237 b!4807240))

(assert (= b!4807244 b!4807237))

(assert (= (and b!4807246 ((_ is LongMap!5001) (v!48658 (underlying!10210 thiss!41921)))) b!4807244))

(assert (= b!4807243 b!4807246))

(assert (= (and start!496792 ((_ is HashMap!4885) thiss!41921)) b!4807243))

(declare-fun m!5793462 () Bool)

(assert (=> b!4807238 m!5793462))

(declare-fun m!5793464 () Bool)

(assert (=> b!4807238 m!5793464))

(declare-fun m!5793466 () Bool)

(assert (=> b!4807238 m!5793466))

(declare-fun m!5793468 () Bool)

(assert (=> b!4807238 m!5793468))

(declare-fun m!5793470 () Bool)

(assert (=> b!4807240 m!5793470))

(declare-fun m!5793472 () Bool)

(assert (=> b!4807240 m!5793472))

(declare-fun m!5793474 () Bool)

(assert (=> b!4807236 m!5793474))

(declare-fun m!5793476 () Bool)

(assert (=> b!4807236 m!5793476))

(declare-fun m!5793478 () Bool)

(assert (=> b!4807236 m!5793478))

(declare-fun m!5793480 () Bool)

(assert (=> b!4807236 m!5793480))

(assert (=> b!4807236 m!5793474))

(declare-fun m!5793482 () Bool)

(assert (=> b!4807236 m!5793482))

(declare-fun m!5793484 () Bool)

(assert (=> b!4807236 m!5793484))

(declare-fun m!5793486 () Bool)

(assert (=> b!4807239 m!5793486))

(declare-fun m!5793488 () Bool)

(assert (=> mapNonEmpty!22142 m!5793488))

(declare-fun m!5793490 () Bool)

(assert (=> b!4807247 m!5793490))

(declare-fun m!5793492 () Bool)

(assert (=> b!4807247 m!5793492))

(check-sat b_and!341713 b_and!341711 (not b!4807240) (not b_next!130739) (not b!4807239) (not b_next!130737) (not b!4807247) (not mapNonEmpty!22142) (not b!4807236) (not b!4807242) (not b!4807238) tp_is_empty!33857)
(check-sat b_and!341711 b_and!341713 (not b_next!130737) (not b_next!130739))
