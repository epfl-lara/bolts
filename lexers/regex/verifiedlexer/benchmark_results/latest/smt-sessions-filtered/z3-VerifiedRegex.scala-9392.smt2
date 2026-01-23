; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497700 () Bool)

(assert start!497700)

(declare-fun b!4813353 () Bool)

(declare-fun b_free!130315 () Bool)

(declare-fun b_next!131105 () Bool)

(assert (=> b!4813353 (= b_free!130315 (not b_next!131105))))

(declare-fun tp!1361593 () Bool)

(declare-fun b_and!342125 () Bool)

(assert (=> b!4813353 (= tp!1361593 b_and!342125)))

(declare-fun b!4813356 () Bool)

(declare-fun b_free!130317 () Bool)

(declare-fun b_next!131107 () Bool)

(assert (=> b!4813356 (= b_free!130317 (not b_next!131107))))

(declare-fun tp!1361594 () Bool)

(declare-fun b_and!342127 () Bool)

(assert (=> b!4813356 (= tp!1361594 b_and!342127)))

(declare-fun b!4813350 () Bool)

(declare-fun res!2047247 () Bool)

(declare-fun e!3007262 () Bool)

(assert (=> b!4813350 (=> (not res!2047247) (not e!3007262))))

(declare-datatypes ((K!16249 0))(
  ( (K!16250 (val!21305 Int)) )
))
(declare-datatypes ((array!18760 0))(
  ( (array!18761 (arr!8371 (Array (_ BitVec 32) (_ BitVec 64))) (size!36617 (_ BitVec 32))) )
))
(declare-datatypes ((V!16495 0))(
  ( (V!16496 (val!21306 Int)) )
))
(declare-datatypes ((tuple2!57546 0))(
  ( (tuple2!57547 (_1!32067 K!16249) (_2!32067 V!16495)) )
))
(declare-datatypes ((List!54739 0))(
  ( (Nil!54615) (Cons!54615 (h!61047 tuple2!57546) (t!362233 List!54739)) )
))
(declare-datatypes ((array!18762 0))(
  ( (array!18763 (arr!8372 (Array (_ BitVec 32) List!54739)) (size!36618 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10186 0))(
  ( (LongMapFixedSize!10187 (defaultEntry!5515 Int) (mask!15120 (_ BitVec 32)) (extraKeys!5373 (_ BitVec 32)) (zeroValue!5386 List!54739) (minValue!5386 List!54739) (_size!10211 (_ BitVec 32)) (_keys!5442 array!18760) (_values!5411 array!18762) (_vacant!5158 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20137 0))(
  ( (Cell!20138 (v!48977 LongMapFixedSize!10186)) )
))
(declare-datatypes ((MutLongMap!5093 0))(
  ( (LongMap!5093 (underlying!10393 Cell!20137)) (MutLongMapExt!5092 (__x!33377 Int)) )
))
(declare-datatypes ((Hashable!7104 0))(
  ( (HashableExt!7103 (__x!33378 Int)) )
))
(declare-datatypes ((Cell!20139 0))(
  ( (Cell!20140 (v!48978 MutLongMap!5093)) )
))
(declare-datatypes ((MutableMap!4977 0))(
  ( (MutableMapExt!4976 (__x!33379 Int)) (HashMap!4977 (underlying!10394 Cell!20139) (hashF!13382 Hashable!7104) (_size!10212 (_ BitVec 32)) (defaultValue!5148 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4977)

(declare-fun valid!4120 (MutableMap!4977) Bool)

(assert (=> b!4813350 (= res!2047247 (valid!4120 thiss!41921))))

(declare-fun b!4813351 () Bool)

(declare-datatypes ((Unit!141705 0))(
  ( (Unit!141706) )
))
(declare-fun e!3007253 () Unit!141705)

(declare-fun Unit!141707 () Unit!141705)

(assert (=> b!4813351 (= e!3007253 Unit!141707)))

(declare-fun b!4813352 () Bool)

(declare-fun e!3007266 () Unit!141705)

(declare-fun Unit!141708 () Unit!141705)

(assert (=> b!4813352 (= e!3007266 Unit!141708)))

(declare-fun e!3007264 () Bool)

(declare-fun e!3007261 () Bool)

(declare-fun tp!1361591 () Bool)

(declare-fun tp!1361590 () Bool)

(declare-fun array_inv!6047 (array!18760) Bool)

(declare-fun array_inv!6048 (array!18762) Bool)

(assert (=> b!4813353 (= e!3007261 (and tp!1361593 tp!1361590 tp!1361591 (array_inv!6047 (_keys!5442 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) (array_inv!6048 (_values!5411 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) e!3007264))))

(declare-datatypes ((tuple2!57548 0))(
  ( (tuple2!57549 (_1!32068 (_ BitVec 64)) (_2!32068 List!54739)) )
))
(declare-datatypes ((List!54740 0))(
  ( (Nil!54616) (Cons!54616 (h!61048 tuple2!57548) (t!362234 List!54740)) )
))
(declare-datatypes ((ListLongMap!5671 0))(
  ( (ListLongMap!5672 (toList!7191 List!54740)) )
))
(declare-fun lt!1964388 () ListLongMap!5671)

(declare-fun e!3007260 () Unit!141705)

(declare-fun b!4813354 () Bool)

(declare-fun lambda!233929 () Int)

(declare-fun lt!1964399 () tuple2!57548)

(declare-fun forallContained!4290 (List!54740 Int tuple2!57548) Unit!141705)

(assert (=> b!4813354 (= e!3007260 (forallContained!4290 (toList!7191 lt!1964388) lambda!233929 lt!1964399))))

(declare-fun map!12477 (MutLongMap!5093) ListLongMap!5671)

(assert (=> b!4813354 (= lt!1964388 (map!12477 (v!48978 (underlying!10394 thiss!41921))))))

(declare-fun lt!1964389 () List!54739)

(declare-fun lt!1964396 () (_ BitVec 64))

(declare-fun apply!13207 (MutLongMap!5093 (_ BitVec 64)) List!54739)

(assert (=> b!4813354 (= lt!1964389 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396))))

(assert (=> b!4813354 (= lt!1964399 (tuple2!57549 lt!1964396 lt!1964389))))

(declare-fun c!820368 () Bool)

(declare-fun contains!18362 (List!54740 tuple2!57548) Bool)

(assert (=> b!4813354 (= c!820368 (not (contains!18362 (toList!7191 lt!1964388) lt!1964399)))))

(declare-fun lt!1964397 () Unit!141705)

(assert (=> b!4813354 (= lt!1964397 e!3007266)))

(declare-fun bm!335896 () Bool)

(declare-fun call!335903 () Bool)

(declare-datatypes ((Option!13349 0))(
  ( (None!13348) (Some!13348 (v!48979 tuple2!57546)) )
))
(declare-fun call!335901 () Option!13349)

(declare-fun isDefined!10486 (Option!13349) Bool)

(assert (=> bm!335896 (= call!335903 (isDefined!10486 call!335901))))

(declare-fun b!4813355 () Bool)

(declare-fun e!3007256 () Bool)

(declare-fun e!3007257 () Bool)

(declare-fun lt!1964400 () MutLongMap!5093)

(get-info :version)

(assert (=> b!4813355 (= e!3007256 (and e!3007257 ((_ is LongMap!5093) lt!1964400)))))

(assert (=> b!4813355 (= lt!1964400 (v!48978 (underlying!10394 thiss!41921)))))

(declare-fun res!2047245 () Bool)

(assert (=> start!497700 (=> (not res!2047245) (not e!3007262))))

(assert (=> start!497700 (= res!2047245 ((_ is HashMap!4977) thiss!41921))))

(assert (=> start!497700 e!3007262))

(declare-fun e!3007263 () Bool)

(assert (=> start!497700 e!3007263))

(declare-fun tp_is_empty!34075 () Bool)

(assert (=> start!497700 tp_is_empty!34075))

(declare-fun bm!335897 () Bool)

(declare-fun call!335904 () List!54739)

(declare-fun key!1652 () K!16249)

(declare-fun getPair!980 (List!54739 K!16249) Option!13349)

(assert (=> bm!335897 (= call!335901 (getPair!980 call!335904 key!1652))))

(assert (=> b!4813356 (= e!3007263 (and e!3007256 tp!1361594))))

(declare-fun b!4813357 () Bool)

(declare-fun e!3007255 () Bool)

(assert (=> b!4813357 (= e!3007257 e!3007255)))

(declare-fun b!4813358 () Bool)

(assert (=> b!4813358 false))

(declare-fun lt!1964387 () ListLongMap!5671)

(declare-fun lt!1964392 () Unit!141705)

(declare-fun lemmaInLongMapThenInGenericMap!224 (ListLongMap!5671 K!16249 Hashable!7104) Unit!141705)

(assert (=> b!4813358 (= lt!1964392 (lemmaInLongMapThenInGenericMap!224 lt!1964387 key!1652 (hashF!13382 thiss!41921)))))

(declare-fun Unit!141709 () Unit!141705)

(assert (=> b!4813358 (= e!3007253 Unit!141709)))

(declare-fun b!4813359 () Bool)

(assert (=> b!4813359 false))

(declare-fun lt!1964395 () Unit!141705)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1020 (List!54740 (_ BitVec 64) List!54739) Unit!141705)

(assert (=> b!4813359 (= lt!1964395 (lemmaGetValueByKeyImpliesContainsTuple!1020 (toList!7191 lt!1964388) lt!1964396 lt!1964389))))

(declare-datatypes ((Option!13350 0))(
  ( (None!13349) (Some!13349 (v!48980 List!54739)) )
))
(declare-fun isDefined!10487 (Option!13350) Bool)

(declare-fun getValueByKey!2517 (List!54740 (_ BitVec 64)) Option!13350)

(assert (=> b!4813359 (isDefined!10487 (getValueByKey!2517 (toList!7191 lt!1964388) lt!1964396))))

(declare-fun lt!1964398 () Unit!141705)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2304 (List!54740 (_ BitVec 64)) Unit!141705)

(assert (=> b!4813359 (= lt!1964398 (lemmaContainsKeyImpliesGetValueByKeyDefined!2304 (toList!7191 lt!1964388) lt!1964396))))

(declare-fun containsKey!4183 (List!54740 (_ BitVec 64)) Bool)

(assert (=> b!4813359 (containsKey!4183 (toList!7191 lt!1964388) lt!1964396)))

(declare-fun lt!1964390 () Unit!141705)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!297 (List!54740 (_ BitVec 64)) Unit!141705)

(assert (=> b!4813359 (= lt!1964390 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!297 (toList!7191 lt!1964388) lt!1964396))))

(declare-fun Unit!141710 () Unit!141705)

(assert (=> b!4813359 (= e!3007266 Unit!141710)))

(declare-fun mapNonEmpty!22472 () Bool)

(declare-fun mapRes!22472 () Bool)

(declare-fun tp!1361592 () Bool)

(declare-fun tp!1361595 () Bool)

(assert (=> mapNonEmpty!22472 (= mapRes!22472 (and tp!1361592 tp!1361595))))

(declare-fun mapValue!22472 () List!54739)

(declare-fun mapRest!22472 () (Array (_ BitVec 32) List!54739))

(declare-fun mapKey!22472 () (_ BitVec 32))

(assert (=> mapNonEmpty!22472 (= (arr!8372 (_values!5411 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) (store mapRest!22472 mapKey!22472 mapValue!22472))))

(declare-fun b!4813360 () Bool)

(assert (=> b!4813360 (= e!3007255 e!3007261)))

(declare-fun b!4813361 () Bool)

(declare-fun tp!1361596 () Bool)

(assert (=> b!4813361 (= e!3007264 (and tp!1361596 mapRes!22472))))

(declare-fun condMapEmpty!22472 () Bool)

(declare-fun mapDefault!22472 () List!54739)

(assert (=> b!4813361 (= condMapEmpty!22472 (= (arr!8372 (_values!5411 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54739)) mapDefault!22472)))))

(declare-fun b!4813362 () Bool)

(declare-fun e!3007265 () Unit!141705)

(declare-fun lt!1964386 () Unit!141705)

(assert (=> b!4813362 (= e!3007265 lt!1964386)))

(declare-fun lemmaInGenericMapThenInLongMap!394 (ListLongMap!5671 K!16249 Hashable!7104) Unit!141705)

(assert (=> b!4813362 (= lt!1964386 (lemmaInGenericMapThenInLongMap!394 lt!1964387 key!1652 (hashF!13382 thiss!41921)))))

(declare-fun res!2047248 () Bool)

(declare-fun call!335902 () Bool)

(assert (=> b!4813362 (= res!2047248 call!335902)))

(declare-fun e!3007254 () Bool)

(assert (=> b!4813362 (=> (not res!2047248) (not e!3007254))))

(assert (=> b!4813362 e!3007254))

(declare-fun b!4813363 () Bool)

(declare-fun Unit!141711 () Unit!141705)

(assert (=> b!4813363 (= e!3007260 Unit!141711)))

(declare-fun b!4813364 () Bool)

(declare-fun e!3007252 () Bool)

(assert (=> b!4813364 (= e!3007252 call!335903)))

(declare-fun b!4813365 () Bool)

(declare-fun e!3007259 () Bool)

(declare-datatypes ((ListMap!6605 0))(
  ( (ListMap!6606 (toList!7192 List!54739)) )
))
(declare-fun contains!18363 (ListMap!6605 K!16249) Bool)

(declare-fun map!12478 (MutableMap!4977) ListMap!6605)

(assert (=> b!4813365 (= e!3007262 (not (= e!3007259 (contains!18363 (map!12478 thiss!41921) key!1652))))))

(declare-fun res!2047246 () Bool)

(assert (=> b!4813365 (=> (not res!2047246) (not e!3007259))))

(declare-fun lt!1964394 () Bool)

(assert (=> b!4813365 (= res!2047246 lt!1964394)))

(declare-fun lt!1964391 () Unit!141705)

(assert (=> b!4813365 (= lt!1964391 e!3007265)))

(declare-fun c!820369 () Bool)

(declare-fun extractMap!2554 (List!54740) ListMap!6605)

(assert (=> b!4813365 (= c!820369 (contains!18363 (extractMap!2554 (toList!7191 lt!1964387)) key!1652))))

(assert (=> b!4813365 (= lt!1964387 (map!12477 (v!48978 (underlying!10394 thiss!41921))))))

(declare-fun lt!1964393 () Unit!141705)

(assert (=> b!4813365 (= lt!1964393 e!3007260)))

(declare-fun c!820371 () Bool)

(assert (=> b!4813365 (= c!820371 lt!1964394)))

(declare-fun contains!18364 (MutLongMap!5093 (_ BitVec 64)) Bool)

(assert (=> b!4813365 (= lt!1964394 (contains!18364 (v!48978 (underlying!10394 thiss!41921)) lt!1964396))))

(declare-fun hash!5166 (Hashable!7104 K!16249) (_ BitVec 64))

(assert (=> b!4813365 (= lt!1964396 (hash!5166 (hashF!13382 thiss!41921) key!1652))))

(declare-fun b!4813366 () Bool)

(assert (=> b!4813366 (= e!3007259 (isDefined!10486 (getPair!980 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) key!1652)))))

(declare-fun mapIsEmpty!22472 () Bool)

(assert (=> mapIsEmpty!22472 mapRes!22472))

(declare-fun bm!335898 () Bool)

(declare-fun apply!13208 (ListLongMap!5671 (_ BitVec 64)) List!54739)

(assert (=> bm!335898 (= call!335904 (apply!13208 lt!1964387 lt!1964396))))

(declare-fun b!4813367 () Bool)

(assert (=> b!4813367 (= e!3007265 e!3007253)))

(declare-fun res!2047244 () Bool)

(assert (=> b!4813367 (= res!2047244 call!335902)))

(assert (=> b!4813367 (=> (not res!2047244) (not e!3007252))))

(declare-fun c!820370 () Bool)

(assert (=> b!4813367 (= c!820370 e!3007252)))

(declare-fun b!4813368 () Bool)

(assert (=> b!4813368 (= e!3007254 call!335903)))

(declare-fun bm!335899 () Bool)

(declare-fun contains!18365 (ListLongMap!5671 (_ BitVec 64)) Bool)

(assert (=> bm!335899 (= call!335902 (contains!18365 lt!1964387 lt!1964396))))

(assert (= (and start!497700 res!2047245) b!4813350))

(assert (= (and b!4813350 res!2047247) b!4813365))

(assert (= (and b!4813365 c!820371) b!4813354))

(assert (= (and b!4813365 (not c!820371)) b!4813363))

(assert (= (and b!4813354 c!820368) b!4813359))

(assert (= (and b!4813354 (not c!820368)) b!4813352))

(assert (= (and b!4813365 c!820369) b!4813362))

(assert (= (and b!4813365 (not c!820369)) b!4813367))

(assert (= (and b!4813362 res!2047248) b!4813368))

(assert (= (and b!4813367 res!2047244) b!4813364))

(assert (= (and b!4813367 c!820370) b!4813358))

(assert (= (and b!4813367 (not c!820370)) b!4813351))

(assert (= (or b!4813368 b!4813364) bm!335898))

(assert (= (or b!4813362 b!4813367) bm!335899))

(assert (= (or b!4813368 b!4813364) bm!335897))

(assert (= (or b!4813368 b!4813364) bm!335896))

(assert (= (and b!4813365 res!2047246) b!4813366))

(assert (= (and b!4813361 condMapEmpty!22472) mapIsEmpty!22472))

(assert (= (and b!4813361 (not condMapEmpty!22472)) mapNonEmpty!22472))

(assert (= b!4813353 b!4813361))

(assert (= b!4813360 b!4813353))

(assert (= b!4813357 b!4813360))

(assert (= (and b!4813355 ((_ is LongMap!5093) (v!48978 (underlying!10394 thiss!41921)))) b!4813357))

(assert (= b!4813356 b!4813355))

(assert (= (and start!497700 ((_ is HashMap!4977) thiss!41921)) b!4813356))

(declare-fun m!5798886 () Bool)

(assert (=> b!4813359 m!5798886))

(declare-fun m!5798888 () Bool)

(assert (=> b!4813359 m!5798888))

(declare-fun m!5798890 () Bool)

(assert (=> b!4813359 m!5798890))

(assert (=> b!4813359 m!5798886))

(declare-fun m!5798892 () Bool)

(assert (=> b!4813359 m!5798892))

(declare-fun m!5798894 () Bool)

(assert (=> b!4813359 m!5798894))

(declare-fun m!5798896 () Bool)

(assert (=> b!4813359 m!5798896))

(declare-fun m!5798898 () Bool)

(assert (=> b!4813350 m!5798898))

(declare-fun m!5798900 () Bool)

(assert (=> b!4813362 m!5798900))

(declare-fun m!5798902 () Bool)

(assert (=> b!4813353 m!5798902))

(declare-fun m!5798904 () Bool)

(assert (=> b!4813353 m!5798904))

(declare-fun m!5798906 () Bool)

(assert (=> bm!335897 m!5798906))

(declare-fun m!5798908 () Bool)

(assert (=> b!4813358 m!5798908))

(declare-fun m!5798910 () Bool)

(assert (=> mapNonEmpty!22472 m!5798910))

(declare-fun m!5798912 () Bool)

(assert (=> bm!335896 m!5798912))

(declare-fun m!5798914 () Bool)

(assert (=> b!4813365 m!5798914))

(declare-fun m!5798916 () Bool)

(assert (=> b!4813365 m!5798916))

(declare-fun m!5798918 () Bool)

(assert (=> b!4813365 m!5798918))

(declare-fun m!5798920 () Bool)

(assert (=> b!4813365 m!5798920))

(assert (=> b!4813365 m!5798914))

(assert (=> b!4813365 m!5798920))

(declare-fun m!5798922 () Bool)

(assert (=> b!4813365 m!5798922))

(declare-fun m!5798924 () Bool)

(assert (=> b!4813365 m!5798924))

(declare-fun m!5798926 () Bool)

(assert (=> b!4813365 m!5798926))

(declare-fun m!5798928 () Bool)

(assert (=> bm!335899 m!5798928))

(declare-fun m!5798930 () Bool)

(assert (=> bm!335898 m!5798930))

(declare-fun m!5798932 () Bool)

(assert (=> b!4813354 m!5798932))

(assert (=> b!4813354 m!5798926))

(declare-fun m!5798934 () Bool)

(assert (=> b!4813354 m!5798934))

(declare-fun m!5798936 () Bool)

(assert (=> b!4813354 m!5798936))

(assert (=> b!4813366 m!5798934))

(assert (=> b!4813366 m!5798934))

(declare-fun m!5798938 () Bool)

(assert (=> b!4813366 m!5798938))

(assert (=> b!4813366 m!5798938))

(declare-fun m!5798940 () Bool)

(assert (=> b!4813366 m!5798940))

(check-sat (not b!4813361) (not b!4813358) b_and!342127 (not bm!335896) (not b!4813365) (not b!4813362) (not b_next!131105) (not b!4813353) (not mapNonEmpty!22472) (not bm!335897) (not bm!335899) tp_is_empty!34075 (not b!4813359) (not b!4813354) (not bm!335898) (not b_next!131107) (not b!4813366) (not b!4813350) b_and!342125)
(check-sat b_and!342125 b_and!342127 (not b_next!131105) (not b_next!131107))
(get-model)

(declare-fun d!1540745 () Bool)

(declare-fun lt!1964403 () ListMap!6605)

(declare-fun invariantList!1780 (List!54739) Bool)

(assert (=> d!1540745 (invariantList!1780 (toList!7192 lt!1964403))))

(assert (=> d!1540745 (= lt!1964403 (extractMap!2554 (toList!7191 (map!12477 (v!48978 (underlying!10394 thiss!41921))))))))

(assert (=> d!1540745 (valid!4120 thiss!41921)))

(assert (=> d!1540745 (= (map!12478 thiss!41921) lt!1964403)))

(declare-fun bs!1160241 () Bool)

(assert (= bs!1160241 d!1540745))

(declare-fun m!5798942 () Bool)

(assert (=> bs!1160241 m!5798942))

(assert (=> bs!1160241 m!5798926))

(declare-fun m!5798944 () Bool)

(assert (=> bs!1160241 m!5798944))

(assert (=> bs!1160241 m!5798898))

(assert (=> b!4813365 d!1540745))

(declare-fun d!1540747 () Bool)

(declare-fun hash!5167 (Hashable!7104 K!16249) (_ BitVec 64))

(assert (=> d!1540747 (= (hash!5166 (hashF!13382 thiss!41921) key!1652) (hash!5167 (hashF!13382 thiss!41921) key!1652))))

(declare-fun bs!1160242 () Bool)

(assert (= bs!1160242 d!1540747))

(declare-fun m!5798946 () Bool)

(assert (=> bs!1160242 m!5798946))

(assert (=> b!4813365 d!1540747))

(declare-fun d!1540749 () Bool)

(declare-fun map!12479 (LongMapFixedSize!10186) ListLongMap!5671)

(assert (=> d!1540749 (= (map!12477 (v!48978 (underlying!10394 thiss!41921))) (map!12479 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921))))))))

(declare-fun bs!1160243 () Bool)

(assert (= bs!1160243 d!1540749))

(declare-fun m!5798948 () Bool)

(assert (=> bs!1160243 m!5798948))

(assert (=> b!4813365 d!1540749))

(declare-fun bm!335902 () Bool)

(declare-fun call!335907 () Bool)

(declare-datatypes ((List!54741 0))(
  ( (Nil!54617) (Cons!54617 (h!61049 K!16249) (t!362237 List!54741)) )
))
(declare-fun e!3007283 () List!54741)

(declare-fun contains!18366 (List!54741 K!16249) Bool)

(assert (=> bm!335902 (= call!335907 (contains!18366 e!3007283 key!1652))))

(declare-fun c!820380 () Bool)

(declare-fun c!820378 () Bool)

(assert (=> bm!335902 (= c!820380 c!820378)))

(declare-fun b!4813387 () Bool)

(declare-fun e!3007280 () Unit!141705)

(declare-fun e!3007281 () Unit!141705)

(assert (=> b!4813387 (= e!3007280 e!3007281)))

(declare-fun c!820379 () Bool)

(assert (=> b!4813387 (= c!820379 call!335907)))

(declare-fun b!4813388 () Bool)

(declare-fun e!3007284 () Bool)

(declare-fun keys!20029 (ListMap!6605) List!54741)

(assert (=> b!4813388 (= e!3007284 (not (contains!18366 (keys!20029 (extractMap!2554 (toList!7191 lt!1964387))) key!1652)))))

(declare-fun b!4813389 () Bool)

(declare-fun e!3007279 () Bool)

(declare-fun e!3007282 () Bool)

(assert (=> b!4813389 (= e!3007279 e!3007282)))

(declare-fun res!2047255 () Bool)

(assert (=> b!4813389 (=> (not res!2047255) (not e!3007282))))

(declare-datatypes ((Option!13351 0))(
  ( (None!13350) (Some!13350 (v!48983 V!16495)) )
))
(declare-fun isDefined!10488 (Option!13351) Bool)

(declare-fun getValueByKey!2518 (List!54739 K!16249) Option!13351)

(assert (=> b!4813389 (= res!2047255 (isDefined!10488 (getValueByKey!2518 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387))) key!1652)))))

(declare-fun b!4813391 () Bool)

(assert (=> b!4813391 false))

(declare-fun lt!1964426 () Unit!141705)

(declare-fun lt!1964425 () Unit!141705)

(assert (=> b!4813391 (= lt!1964426 lt!1964425)))

(declare-fun containsKey!4184 (List!54739 K!16249) Bool)

(assert (=> b!4813391 (containsKey!4184 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1126 (List!54739 K!16249) Unit!141705)

(assert (=> b!4813391 (= lt!1964425 (lemmaInGetKeysListThenContainsKey!1126 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387))) key!1652))))

(declare-fun Unit!141712 () Unit!141705)

(assert (=> b!4813391 (= e!3007281 Unit!141712)))

(declare-fun b!4813392 () Bool)

(assert (=> b!4813392 (= e!3007283 (keys!20029 (extractMap!2554 (toList!7191 lt!1964387))))))

(declare-fun b!4813393 () Bool)

(declare-fun lt!1964424 () Unit!141705)

(assert (=> b!4813393 (= e!3007280 lt!1964424)))

(declare-fun lt!1964420 () Unit!141705)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2305 (List!54739 K!16249) Unit!141705)

(assert (=> b!4813393 (= lt!1964420 (lemmaContainsKeyImpliesGetValueByKeyDefined!2305 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387))) key!1652))))

(assert (=> b!4813393 (isDefined!10488 (getValueByKey!2518 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387))) key!1652))))

(declare-fun lt!1964421 () Unit!141705)

(assert (=> b!4813393 (= lt!1964421 lt!1964420)))

(declare-fun lemmaInListThenGetKeysListContains!1121 (List!54739 K!16249) Unit!141705)

(assert (=> b!4813393 (= lt!1964424 (lemmaInListThenGetKeysListContains!1121 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387))) key!1652))))

(assert (=> b!4813393 call!335907))

(declare-fun d!1540751 () Bool)

(assert (=> d!1540751 e!3007279))

(declare-fun res!2047257 () Bool)

(assert (=> d!1540751 (=> res!2047257 e!3007279)))

(assert (=> d!1540751 (= res!2047257 e!3007284)))

(declare-fun res!2047256 () Bool)

(assert (=> d!1540751 (=> (not res!2047256) (not e!3007284))))

(declare-fun lt!1964422 () Bool)

(assert (=> d!1540751 (= res!2047256 (not lt!1964422))))

(declare-fun lt!1964423 () Bool)

(assert (=> d!1540751 (= lt!1964422 lt!1964423)))

(declare-fun lt!1964427 () Unit!141705)

(assert (=> d!1540751 (= lt!1964427 e!3007280)))

(assert (=> d!1540751 (= c!820378 lt!1964423)))

(assert (=> d!1540751 (= lt!1964423 (containsKey!4184 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387))) key!1652))))

(assert (=> d!1540751 (= (contains!18363 (extractMap!2554 (toList!7191 lt!1964387)) key!1652) lt!1964422)))

(declare-fun b!4813390 () Bool)

(declare-fun Unit!141713 () Unit!141705)

(assert (=> b!4813390 (= e!3007281 Unit!141713)))

(declare-fun b!4813394 () Bool)

(declare-fun getKeysList!1126 (List!54739) List!54741)

(assert (=> b!4813394 (= e!3007283 (getKeysList!1126 (toList!7192 (extractMap!2554 (toList!7191 lt!1964387)))))))

(declare-fun b!4813395 () Bool)

(assert (=> b!4813395 (= e!3007282 (contains!18366 (keys!20029 (extractMap!2554 (toList!7191 lt!1964387))) key!1652))))

(assert (= (and d!1540751 c!820378) b!4813393))

(assert (= (and d!1540751 (not c!820378)) b!4813387))

(assert (= (and b!4813387 c!820379) b!4813391))

(assert (= (and b!4813387 (not c!820379)) b!4813390))

(assert (= (or b!4813393 b!4813387) bm!335902))

(assert (= (and bm!335902 c!820380) b!4813394))

(assert (= (and bm!335902 (not c!820380)) b!4813392))

(assert (= (and d!1540751 res!2047256) b!4813388))

(assert (= (and d!1540751 (not res!2047257)) b!4813389))

(assert (= (and b!4813389 res!2047255) b!4813395))

(declare-fun m!5798950 () Bool)

(assert (=> b!4813389 m!5798950))

(assert (=> b!4813389 m!5798950))

(declare-fun m!5798952 () Bool)

(assert (=> b!4813389 m!5798952))

(assert (=> b!4813395 m!5798920))

(declare-fun m!5798954 () Bool)

(assert (=> b!4813395 m!5798954))

(assert (=> b!4813395 m!5798954))

(declare-fun m!5798956 () Bool)

(assert (=> b!4813395 m!5798956))

(declare-fun m!5798958 () Bool)

(assert (=> b!4813391 m!5798958))

(declare-fun m!5798960 () Bool)

(assert (=> b!4813391 m!5798960))

(assert (=> d!1540751 m!5798958))

(declare-fun m!5798962 () Bool)

(assert (=> b!4813394 m!5798962))

(assert (=> b!4813392 m!5798920))

(assert (=> b!4813392 m!5798954))

(declare-fun m!5798964 () Bool)

(assert (=> b!4813393 m!5798964))

(assert (=> b!4813393 m!5798950))

(assert (=> b!4813393 m!5798950))

(assert (=> b!4813393 m!5798952))

(declare-fun m!5798966 () Bool)

(assert (=> b!4813393 m!5798966))

(declare-fun m!5798968 () Bool)

(assert (=> bm!335902 m!5798968))

(assert (=> b!4813388 m!5798920))

(assert (=> b!4813388 m!5798954))

(assert (=> b!4813388 m!5798954))

(assert (=> b!4813388 m!5798956))

(assert (=> b!4813365 d!1540751))

(declare-fun d!1540753 () Bool)

(declare-fun lt!1964430 () Bool)

(assert (=> d!1540753 (= lt!1964430 (contains!18365 (map!12477 (v!48978 (underlying!10394 thiss!41921))) lt!1964396))))

(declare-fun contains!18367 (LongMapFixedSize!10186 (_ BitVec 64)) Bool)

(assert (=> d!1540753 (= lt!1964430 (contains!18367 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))) lt!1964396))))

(declare-fun valid!4121 (MutLongMap!5093) Bool)

(assert (=> d!1540753 (valid!4121 (v!48978 (underlying!10394 thiss!41921)))))

(assert (=> d!1540753 (= (contains!18364 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) lt!1964430)))

(declare-fun bs!1160244 () Bool)

(assert (= bs!1160244 d!1540753))

(assert (=> bs!1160244 m!5798926))

(assert (=> bs!1160244 m!5798926))

(declare-fun m!5798970 () Bool)

(assert (=> bs!1160244 m!5798970))

(declare-fun m!5798972 () Bool)

(assert (=> bs!1160244 m!5798972))

(declare-fun m!5798974 () Bool)

(assert (=> bs!1160244 m!5798974))

(assert (=> b!4813365 d!1540753))

(declare-fun bs!1160245 () Bool)

(declare-fun d!1540755 () Bool)

(assert (= bs!1160245 (and d!1540755 b!4813354)))

(declare-fun lambda!233932 () Int)

(assert (=> bs!1160245 (= lambda!233932 lambda!233929)))

(declare-fun lt!1964433 () ListMap!6605)

(assert (=> d!1540755 (invariantList!1780 (toList!7192 lt!1964433))))

(declare-fun e!3007287 () ListMap!6605)

(assert (=> d!1540755 (= lt!1964433 e!3007287)))

(declare-fun c!820383 () Bool)

(assert (=> d!1540755 (= c!820383 ((_ is Cons!54616) (toList!7191 lt!1964387)))))

(declare-fun forall!12408 (List!54740 Int) Bool)

(assert (=> d!1540755 (forall!12408 (toList!7191 lt!1964387) lambda!233932)))

(assert (=> d!1540755 (= (extractMap!2554 (toList!7191 lt!1964387)) lt!1964433)))

(declare-fun b!4813400 () Bool)

(declare-fun addToMapMapFromBucket!1757 (List!54739 ListMap!6605) ListMap!6605)

(assert (=> b!4813400 (= e!3007287 (addToMapMapFromBucket!1757 (_2!32068 (h!61048 (toList!7191 lt!1964387))) (extractMap!2554 (t!362234 (toList!7191 lt!1964387)))))))

(declare-fun b!4813401 () Bool)

(assert (=> b!4813401 (= e!3007287 (ListMap!6606 Nil!54615))))

(assert (= (and d!1540755 c!820383) b!4813400))

(assert (= (and d!1540755 (not c!820383)) b!4813401))

(declare-fun m!5798976 () Bool)

(assert (=> d!1540755 m!5798976))

(declare-fun m!5798978 () Bool)

(assert (=> d!1540755 m!5798978))

(declare-fun m!5798980 () Bool)

(assert (=> b!4813400 m!5798980))

(assert (=> b!4813400 m!5798980))

(declare-fun m!5798982 () Bool)

(assert (=> b!4813400 m!5798982))

(assert (=> b!4813365 d!1540755))

(declare-fun bm!335903 () Bool)

(declare-fun call!335908 () Bool)

(declare-fun e!3007292 () List!54741)

(assert (=> bm!335903 (= call!335908 (contains!18366 e!3007292 key!1652))))

(declare-fun c!820386 () Bool)

(declare-fun c!820384 () Bool)

(assert (=> bm!335903 (= c!820386 c!820384)))

(declare-fun b!4813402 () Bool)

(declare-fun e!3007289 () Unit!141705)

(declare-fun e!3007290 () Unit!141705)

(assert (=> b!4813402 (= e!3007289 e!3007290)))

(declare-fun c!820385 () Bool)

(assert (=> b!4813402 (= c!820385 call!335908)))

(declare-fun b!4813403 () Bool)

(declare-fun e!3007293 () Bool)

(assert (=> b!4813403 (= e!3007293 (not (contains!18366 (keys!20029 (map!12478 thiss!41921)) key!1652)))))

(declare-fun b!4813404 () Bool)

(declare-fun e!3007288 () Bool)

(declare-fun e!3007291 () Bool)

(assert (=> b!4813404 (= e!3007288 e!3007291)))

(declare-fun res!2047258 () Bool)

(assert (=> b!4813404 (=> (not res!2047258) (not e!3007291))))

(assert (=> b!4813404 (= res!2047258 (isDefined!10488 (getValueByKey!2518 (toList!7192 (map!12478 thiss!41921)) key!1652)))))

(declare-fun b!4813406 () Bool)

(assert (=> b!4813406 false))

(declare-fun lt!1964440 () Unit!141705)

(declare-fun lt!1964439 () Unit!141705)

(assert (=> b!4813406 (= lt!1964440 lt!1964439)))

(assert (=> b!4813406 (containsKey!4184 (toList!7192 (map!12478 thiss!41921)) key!1652)))

(assert (=> b!4813406 (= lt!1964439 (lemmaInGetKeysListThenContainsKey!1126 (toList!7192 (map!12478 thiss!41921)) key!1652))))

(declare-fun Unit!141714 () Unit!141705)

(assert (=> b!4813406 (= e!3007290 Unit!141714)))

(declare-fun b!4813407 () Bool)

(assert (=> b!4813407 (= e!3007292 (keys!20029 (map!12478 thiss!41921)))))

(declare-fun b!4813408 () Bool)

(declare-fun lt!1964438 () Unit!141705)

(assert (=> b!4813408 (= e!3007289 lt!1964438)))

(declare-fun lt!1964434 () Unit!141705)

(assert (=> b!4813408 (= lt!1964434 (lemmaContainsKeyImpliesGetValueByKeyDefined!2305 (toList!7192 (map!12478 thiss!41921)) key!1652))))

(assert (=> b!4813408 (isDefined!10488 (getValueByKey!2518 (toList!7192 (map!12478 thiss!41921)) key!1652))))

(declare-fun lt!1964435 () Unit!141705)

(assert (=> b!4813408 (= lt!1964435 lt!1964434)))

(assert (=> b!4813408 (= lt!1964438 (lemmaInListThenGetKeysListContains!1121 (toList!7192 (map!12478 thiss!41921)) key!1652))))

(assert (=> b!4813408 call!335908))

(declare-fun d!1540757 () Bool)

(assert (=> d!1540757 e!3007288))

(declare-fun res!2047260 () Bool)

(assert (=> d!1540757 (=> res!2047260 e!3007288)))

(assert (=> d!1540757 (= res!2047260 e!3007293)))

(declare-fun res!2047259 () Bool)

(assert (=> d!1540757 (=> (not res!2047259) (not e!3007293))))

(declare-fun lt!1964436 () Bool)

(assert (=> d!1540757 (= res!2047259 (not lt!1964436))))

(declare-fun lt!1964437 () Bool)

(assert (=> d!1540757 (= lt!1964436 lt!1964437)))

(declare-fun lt!1964441 () Unit!141705)

(assert (=> d!1540757 (= lt!1964441 e!3007289)))

(assert (=> d!1540757 (= c!820384 lt!1964437)))

(assert (=> d!1540757 (= lt!1964437 (containsKey!4184 (toList!7192 (map!12478 thiss!41921)) key!1652))))

(assert (=> d!1540757 (= (contains!18363 (map!12478 thiss!41921) key!1652) lt!1964436)))

(declare-fun b!4813405 () Bool)

(declare-fun Unit!141715 () Unit!141705)

(assert (=> b!4813405 (= e!3007290 Unit!141715)))

(declare-fun b!4813409 () Bool)

(assert (=> b!4813409 (= e!3007292 (getKeysList!1126 (toList!7192 (map!12478 thiss!41921))))))

(declare-fun b!4813410 () Bool)

(assert (=> b!4813410 (= e!3007291 (contains!18366 (keys!20029 (map!12478 thiss!41921)) key!1652))))

(assert (= (and d!1540757 c!820384) b!4813408))

(assert (= (and d!1540757 (not c!820384)) b!4813402))

(assert (= (and b!4813402 c!820385) b!4813406))

(assert (= (and b!4813402 (not c!820385)) b!4813405))

(assert (= (or b!4813408 b!4813402) bm!335903))

(assert (= (and bm!335903 c!820386) b!4813409))

(assert (= (and bm!335903 (not c!820386)) b!4813407))

(assert (= (and d!1540757 res!2047259) b!4813403))

(assert (= (and d!1540757 (not res!2047260)) b!4813404))

(assert (= (and b!4813404 res!2047258) b!4813410))

(declare-fun m!5798984 () Bool)

(assert (=> b!4813404 m!5798984))

(assert (=> b!4813404 m!5798984))

(declare-fun m!5798986 () Bool)

(assert (=> b!4813404 m!5798986))

(assert (=> b!4813410 m!5798914))

(declare-fun m!5798988 () Bool)

(assert (=> b!4813410 m!5798988))

(assert (=> b!4813410 m!5798988))

(declare-fun m!5798990 () Bool)

(assert (=> b!4813410 m!5798990))

(declare-fun m!5798992 () Bool)

(assert (=> b!4813406 m!5798992))

(declare-fun m!5798994 () Bool)

(assert (=> b!4813406 m!5798994))

(assert (=> d!1540757 m!5798992))

(declare-fun m!5798996 () Bool)

(assert (=> b!4813409 m!5798996))

(assert (=> b!4813407 m!5798914))

(assert (=> b!4813407 m!5798988))

(declare-fun m!5798998 () Bool)

(assert (=> b!4813408 m!5798998))

(assert (=> b!4813408 m!5798984))

(assert (=> b!4813408 m!5798984))

(assert (=> b!4813408 m!5798986))

(declare-fun m!5799000 () Bool)

(assert (=> b!4813408 m!5799000))

(declare-fun m!5799002 () Bool)

(assert (=> bm!335903 m!5799002))

(assert (=> b!4813403 m!5798914))

(assert (=> b!4813403 m!5798988))

(assert (=> b!4813403 m!5798988))

(assert (=> b!4813403 m!5798990))

(assert (=> b!4813365 d!1540757))

(declare-fun b!4813427 () Bool)

(declare-fun e!3007304 () Option!13349)

(assert (=> b!4813427 (= e!3007304 (getPair!980 (t!362233 call!335904) key!1652))))

(declare-fun b!4813428 () Bool)

(declare-fun e!3007307 () Bool)

(declare-fun e!3007305 () Bool)

(assert (=> b!4813428 (= e!3007307 e!3007305)))

(declare-fun res!2047271 () Bool)

(assert (=> b!4813428 (=> (not res!2047271) (not e!3007305))))

(declare-fun lt!1964444 () Option!13349)

(assert (=> b!4813428 (= res!2047271 (isDefined!10486 lt!1964444))))

(declare-fun b!4813429 () Bool)

(assert (=> b!4813429 (= e!3007304 None!13348)))

(declare-fun d!1540759 () Bool)

(assert (=> d!1540759 e!3007307))

(declare-fun res!2047269 () Bool)

(assert (=> d!1540759 (=> res!2047269 e!3007307)))

(declare-fun e!3007306 () Bool)

(assert (=> d!1540759 (= res!2047269 e!3007306)))

(declare-fun res!2047272 () Bool)

(assert (=> d!1540759 (=> (not res!2047272) (not e!3007306))))

(declare-fun isEmpty!29559 (Option!13349) Bool)

(assert (=> d!1540759 (= res!2047272 (isEmpty!29559 lt!1964444))))

(declare-fun e!3007308 () Option!13349)

(assert (=> d!1540759 (= lt!1964444 e!3007308)))

(declare-fun c!820391 () Bool)

(assert (=> d!1540759 (= c!820391 (and ((_ is Cons!54615) call!335904) (= (_1!32067 (h!61047 call!335904)) key!1652)))))

(declare-fun noDuplicateKeys!2395 (List!54739) Bool)

(assert (=> d!1540759 (noDuplicateKeys!2395 call!335904)))

(assert (=> d!1540759 (= (getPair!980 call!335904 key!1652) lt!1964444)))

(declare-fun b!4813430 () Bool)

(assert (=> b!4813430 (= e!3007308 e!3007304)))

(declare-fun c!820392 () Bool)

(assert (=> b!4813430 (= c!820392 ((_ is Cons!54615) call!335904))))

(declare-fun b!4813431 () Bool)

(declare-fun containsKey!4185 (List!54739 K!16249) Bool)

(assert (=> b!4813431 (= e!3007306 (not (containsKey!4185 call!335904 key!1652)))))

(declare-fun b!4813432 () Bool)

(declare-fun res!2047270 () Bool)

(assert (=> b!4813432 (=> (not res!2047270) (not e!3007305))))

(declare-fun get!18687 (Option!13349) tuple2!57546)

(assert (=> b!4813432 (= res!2047270 (= (_1!32067 (get!18687 lt!1964444)) key!1652))))

(declare-fun b!4813433 () Bool)

(assert (=> b!4813433 (= e!3007308 (Some!13348 (h!61047 call!335904)))))

(declare-fun b!4813434 () Bool)

(declare-fun contains!18368 (List!54739 tuple2!57546) Bool)

(assert (=> b!4813434 (= e!3007305 (contains!18368 call!335904 (get!18687 lt!1964444)))))

(assert (= (and d!1540759 c!820391) b!4813433))

(assert (= (and d!1540759 (not c!820391)) b!4813430))

(assert (= (and b!4813430 c!820392) b!4813427))

(assert (= (and b!4813430 (not c!820392)) b!4813429))

(assert (= (and d!1540759 res!2047272) b!4813431))

(assert (= (and d!1540759 (not res!2047269)) b!4813428))

(assert (= (and b!4813428 res!2047271) b!4813432))

(assert (= (and b!4813432 res!2047270) b!4813434))

(declare-fun m!5799004 () Bool)

(assert (=> b!4813428 m!5799004))

(declare-fun m!5799006 () Bool)

(assert (=> b!4813434 m!5799006))

(assert (=> b!4813434 m!5799006))

(declare-fun m!5799008 () Bool)

(assert (=> b!4813434 m!5799008))

(declare-fun m!5799010 () Bool)

(assert (=> d!1540759 m!5799010))

(declare-fun m!5799012 () Bool)

(assert (=> d!1540759 m!5799012))

(declare-fun m!5799014 () Bool)

(assert (=> b!4813431 m!5799014))

(assert (=> b!4813432 m!5799006))

(declare-fun m!5799016 () Bool)

(assert (=> b!4813427 m!5799016))

(assert (=> bm!335897 d!1540759))

(declare-fun d!1540761 () Bool)

(assert (=> d!1540761 (= (isDefined!10486 call!335901) (not (isEmpty!29559 call!335901)))))

(declare-fun bs!1160246 () Bool)

(assert (= bs!1160246 d!1540761))

(declare-fun m!5799018 () Bool)

(assert (=> bs!1160246 m!5799018))

(assert (=> bm!335896 d!1540761))

(declare-fun bs!1160247 () Bool)

(declare-fun d!1540763 () Bool)

(assert (= bs!1160247 (and d!1540763 b!4813354)))

(declare-fun lambda!233935 () Int)

(assert (=> bs!1160247 (= lambda!233935 lambda!233929)))

(declare-fun bs!1160248 () Bool)

(assert (= bs!1160248 (and d!1540763 d!1540755)))

(assert (=> bs!1160248 (= lambda!233935 lambda!233932)))

(assert (=> d!1540763 (contains!18363 (extractMap!2554 (toList!7191 lt!1964387)) key!1652)))

(declare-fun lt!1964447 () Unit!141705)

(declare-fun choose!34880 (ListLongMap!5671 K!16249 Hashable!7104) Unit!141705)

(assert (=> d!1540763 (= lt!1964447 (choose!34880 lt!1964387 key!1652 (hashF!13382 thiss!41921)))))

(assert (=> d!1540763 (forall!12408 (toList!7191 lt!1964387) lambda!233935)))

(assert (=> d!1540763 (= (lemmaInLongMapThenInGenericMap!224 lt!1964387 key!1652 (hashF!13382 thiss!41921)) lt!1964447)))

(declare-fun bs!1160249 () Bool)

(assert (= bs!1160249 d!1540763))

(assert (=> bs!1160249 m!5798920))

(assert (=> bs!1160249 m!5798920))

(assert (=> bs!1160249 m!5798922))

(declare-fun m!5799020 () Bool)

(assert (=> bs!1160249 m!5799020))

(declare-fun m!5799022 () Bool)

(assert (=> bs!1160249 m!5799022))

(assert (=> b!4813358 d!1540763))

(declare-fun d!1540765 () Bool)

(assert (=> d!1540765 (= (isDefined!10486 (getPair!980 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) key!1652)) (not (isEmpty!29559 (getPair!980 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) key!1652))))))

(declare-fun bs!1160250 () Bool)

(assert (= bs!1160250 d!1540765))

(assert (=> bs!1160250 m!5798938))

(declare-fun m!5799024 () Bool)

(assert (=> bs!1160250 m!5799024))

(assert (=> b!4813366 d!1540765))

(declare-fun b!4813435 () Bool)

(declare-fun e!3007309 () Option!13349)

(assert (=> b!4813435 (= e!3007309 (getPair!980 (t!362233 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396)) key!1652))))

(declare-fun b!4813436 () Bool)

(declare-fun e!3007312 () Bool)

(declare-fun e!3007310 () Bool)

(assert (=> b!4813436 (= e!3007312 e!3007310)))

(declare-fun res!2047275 () Bool)

(assert (=> b!4813436 (=> (not res!2047275) (not e!3007310))))

(declare-fun lt!1964448 () Option!13349)

(assert (=> b!4813436 (= res!2047275 (isDefined!10486 lt!1964448))))

(declare-fun b!4813437 () Bool)

(assert (=> b!4813437 (= e!3007309 None!13348)))

(declare-fun d!1540767 () Bool)

(assert (=> d!1540767 e!3007312))

(declare-fun res!2047273 () Bool)

(assert (=> d!1540767 (=> res!2047273 e!3007312)))

(declare-fun e!3007311 () Bool)

(assert (=> d!1540767 (= res!2047273 e!3007311)))

(declare-fun res!2047276 () Bool)

(assert (=> d!1540767 (=> (not res!2047276) (not e!3007311))))

(assert (=> d!1540767 (= res!2047276 (isEmpty!29559 lt!1964448))))

(declare-fun e!3007313 () Option!13349)

(assert (=> d!1540767 (= lt!1964448 e!3007313)))

(declare-fun c!820393 () Bool)

(assert (=> d!1540767 (= c!820393 (and ((_ is Cons!54615) (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396)) (= (_1!32067 (h!61047 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396))) key!1652)))))

(assert (=> d!1540767 (noDuplicateKeys!2395 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396))))

(assert (=> d!1540767 (= (getPair!980 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) key!1652) lt!1964448)))

(declare-fun b!4813438 () Bool)

(assert (=> b!4813438 (= e!3007313 e!3007309)))

(declare-fun c!820394 () Bool)

(assert (=> b!4813438 (= c!820394 ((_ is Cons!54615) (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396)))))

(declare-fun b!4813439 () Bool)

(assert (=> b!4813439 (= e!3007311 (not (containsKey!4185 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) key!1652)))))

(declare-fun b!4813440 () Bool)

(declare-fun res!2047274 () Bool)

(assert (=> b!4813440 (=> (not res!2047274) (not e!3007310))))

(assert (=> b!4813440 (= res!2047274 (= (_1!32067 (get!18687 lt!1964448)) key!1652))))

(declare-fun b!4813441 () Bool)

(assert (=> b!4813441 (= e!3007313 (Some!13348 (h!61047 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396))))))

(declare-fun b!4813442 () Bool)

(assert (=> b!4813442 (= e!3007310 (contains!18368 (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) (get!18687 lt!1964448)))))

(assert (= (and d!1540767 c!820393) b!4813441))

(assert (= (and d!1540767 (not c!820393)) b!4813438))

(assert (= (and b!4813438 c!820394) b!4813435))

(assert (= (and b!4813438 (not c!820394)) b!4813437))

(assert (= (and d!1540767 res!2047276) b!4813439))

(assert (= (and d!1540767 (not res!2047273)) b!4813436))

(assert (= (and b!4813436 res!2047275) b!4813440))

(assert (= (and b!4813440 res!2047274) b!4813442))

(declare-fun m!5799026 () Bool)

(assert (=> b!4813436 m!5799026))

(declare-fun m!5799028 () Bool)

(assert (=> b!4813442 m!5799028))

(assert (=> b!4813442 m!5798934))

(assert (=> b!4813442 m!5799028))

(declare-fun m!5799030 () Bool)

(assert (=> b!4813442 m!5799030))

(declare-fun m!5799032 () Bool)

(assert (=> d!1540767 m!5799032))

(assert (=> d!1540767 m!5798934))

(declare-fun m!5799034 () Bool)

(assert (=> d!1540767 m!5799034))

(assert (=> b!4813439 m!5798934))

(declare-fun m!5799036 () Bool)

(assert (=> b!4813439 m!5799036))

(assert (=> b!4813440 m!5799028))

(declare-fun m!5799038 () Bool)

(assert (=> b!4813435 m!5799038))

(assert (=> b!4813366 d!1540767))

(declare-fun d!1540769 () Bool)

(declare-fun e!3007316 () Bool)

(assert (=> d!1540769 e!3007316))

(declare-fun c!820397 () Bool)

(assert (=> d!1540769 (= c!820397 (contains!18364 (v!48978 (underlying!10394 thiss!41921)) lt!1964396))))

(declare-fun lt!1964451 () List!54739)

(declare-fun apply!13209 (LongMapFixedSize!10186 (_ BitVec 64)) List!54739)

(assert (=> d!1540769 (= lt!1964451 (apply!13209 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))) lt!1964396))))

(assert (=> d!1540769 (valid!4121 (v!48978 (underlying!10394 thiss!41921)))))

(assert (=> d!1540769 (= (apply!13207 (v!48978 (underlying!10394 thiss!41921)) lt!1964396) lt!1964451)))

(declare-fun b!4813447 () Bool)

(declare-fun get!18688 (Option!13350) List!54739)

(assert (=> b!4813447 (= e!3007316 (= lt!1964451 (get!18688 (getValueByKey!2517 (toList!7191 (map!12477 (v!48978 (underlying!10394 thiss!41921)))) lt!1964396))))))

(declare-fun b!4813448 () Bool)

(declare-fun dynLambda!22149 (Int (_ BitVec 64)) List!54739)

(assert (=> b!4813448 (= e!3007316 (= lt!1964451 (dynLambda!22149 (defaultEntry!5515 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921))))) lt!1964396)))))

(assert (=> b!4813448 ((_ is LongMap!5093) (v!48978 (underlying!10394 thiss!41921)))))

(assert (= (and d!1540769 c!820397) b!4813447))

(assert (= (and d!1540769 (not c!820397)) b!4813448))

(declare-fun b_lambda!188313 () Bool)

(assert (=> (not b_lambda!188313) (not b!4813448)))

(declare-fun t!362236 () Bool)

(declare-fun tb!257547 () Bool)

(assert (=> (and b!4813353 (= (defaultEntry!5515 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921))))) (defaultEntry!5515 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) t!362236) tb!257547))

(assert (=> b!4813448 t!362236))

(declare-fun result!319654 () Bool)

(declare-fun b_and!342129 () Bool)

(assert (= b_and!342125 (and (=> t!362236 result!319654) b_and!342129)))

(assert (=> d!1540769 m!5798918))

(declare-fun m!5799040 () Bool)

(assert (=> d!1540769 m!5799040))

(assert (=> d!1540769 m!5798974))

(assert (=> b!4813447 m!5798926))

(declare-fun m!5799042 () Bool)

(assert (=> b!4813447 m!5799042))

(assert (=> b!4813447 m!5799042))

(declare-fun m!5799044 () Bool)

(assert (=> b!4813447 m!5799044))

(declare-fun m!5799046 () Bool)

(assert (=> b!4813448 m!5799046))

(assert (=> b!4813366 d!1540769))

(declare-fun d!1540771 () Bool)

(declare-fun isEmpty!29560 (Option!13350) Bool)

(assert (=> d!1540771 (= (isDefined!10487 (getValueByKey!2517 (toList!7191 lt!1964388) lt!1964396)) (not (isEmpty!29560 (getValueByKey!2517 (toList!7191 lt!1964388) lt!1964396))))))

(declare-fun bs!1160251 () Bool)

(assert (= bs!1160251 d!1540771))

(assert (=> bs!1160251 m!5798886))

(declare-fun m!5799048 () Bool)

(assert (=> bs!1160251 m!5799048))

(assert (=> b!4813359 d!1540771))

(declare-fun d!1540773 () Bool)

(assert (=> d!1540773 (isDefined!10487 (getValueByKey!2517 (toList!7191 lt!1964388) lt!1964396))))

(declare-fun lt!1964454 () Unit!141705)

(declare-fun choose!34881 (List!54740 (_ BitVec 64)) Unit!141705)

(assert (=> d!1540773 (= lt!1964454 (choose!34881 (toList!7191 lt!1964388) lt!1964396))))

(declare-fun e!3007319 () Bool)

(assert (=> d!1540773 e!3007319))

(declare-fun res!2047279 () Bool)

(assert (=> d!1540773 (=> (not res!2047279) (not e!3007319))))

(declare-fun isStrictlySorted!937 (List!54740) Bool)

(assert (=> d!1540773 (= res!2047279 (isStrictlySorted!937 (toList!7191 lt!1964388)))))

(assert (=> d!1540773 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2304 (toList!7191 lt!1964388) lt!1964396) lt!1964454)))

(declare-fun b!4813451 () Bool)

(assert (=> b!4813451 (= e!3007319 (containsKey!4183 (toList!7191 lt!1964388) lt!1964396))))

(assert (= (and d!1540773 res!2047279) b!4813451))

(assert (=> d!1540773 m!5798886))

(assert (=> d!1540773 m!5798886))

(assert (=> d!1540773 m!5798888))

(declare-fun m!5799050 () Bool)

(assert (=> d!1540773 m!5799050))

(declare-fun m!5799052 () Bool)

(assert (=> d!1540773 m!5799052))

(assert (=> b!4813451 m!5798896))

(assert (=> b!4813359 d!1540773))

(declare-fun d!1540775 () Bool)

(declare-fun res!2047284 () Bool)

(declare-fun e!3007324 () Bool)

(assert (=> d!1540775 (=> res!2047284 e!3007324)))

(assert (=> d!1540775 (= res!2047284 (and ((_ is Cons!54616) (toList!7191 lt!1964388)) (= (_1!32068 (h!61048 (toList!7191 lt!1964388))) lt!1964396)))))

(assert (=> d!1540775 (= (containsKey!4183 (toList!7191 lt!1964388) lt!1964396) e!3007324)))

(declare-fun b!4813456 () Bool)

(declare-fun e!3007325 () Bool)

(assert (=> b!4813456 (= e!3007324 e!3007325)))

(declare-fun res!2047285 () Bool)

(assert (=> b!4813456 (=> (not res!2047285) (not e!3007325))))

(assert (=> b!4813456 (= res!2047285 (and (or (not ((_ is Cons!54616) (toList!7191 lt!1964388))) (bvsle (_1!32068 (h!61048 (toList!7191 lt!1964388))) lt!1964396)) ((_ is Cons!54616) (toList!7191 lt!1964388)) (bvslt (_1!32068 (h!61048 (toList!7191 lt!1964388))) lt!1964396)))))

(declare-fun b!4813457 () Bool)

(assert (=> b!4813457 (= e!3007325 (containsKey!4183 (t!362234 (toList!7191 lt!1964388)) lt!1964396))))

(assert (= (and d!1540775 (not res!2047284)) b!4813456))

(assert (= (and b!4813456 res!2047285) b!4813457))

(declare-fun m!5799054 () Bool)

(assert (=> b!4813457 m!5799054))

(assert (=> b!4813359 d!1540775))

(declare-fun d!1540777 () Bool)

(assert (=> d!1540777 (contains!18362 (toList!7191 lt!1964388) (tuple2!57549 lt!1964396 lt!1964389))))

(declare-fun lt!1964457 () Unit!141705)

(declare-fun choose!34882 (List!54740 (_ BitVec 64) List!54739) Unit!141705)

(assert (=> d!1540777 (= lt!1964457 (choose!34882 (toList!7191 lt!1964388) lt!1964396 lt!1964389))))

(declare-fun e!3007328 () Bool)

(assert (=> d!1540777 e!3007328))

(declare-fun res!2047288 () Bool)

(assert (=> d!1540777 (=> (not res!2047288) (not e!3007328))))

(assert (=> d!1540777 (= res!2047288 (isStrictlySorted!937 (toList!7191 lt!1964388)))))

(assert (=> d!1540777 (= (lemmaGetValueByKeyImpliesContainsTuple!1020 (toList!7191 lt!1964388) lt!1964396 lt!1964389) lt!1964457)))

(declare-fun b!4813460 () Bool)

(assert (=> b!4813460 (= e!3007328 (= (getValueByKey!2517 (toList!7191 lt!1964388) lt!1964396) (Some!13349 lt!1964389)))))

(assert (= (and d!1540777 res!2047288) b!4813460))

(declare-fun m!5799056 () Bool)

(assert (=> d!1540777 m!5799056))

(declare-fun m!5799058 () Bool)

(assert (=> d!1540777 m!5799058))

(assert (=> d!1540777 m!5799052))

(assert (=> b!4813460 m!5798886))

(assert (=> b!4813359 d!1540777))

(declare-fun d!1540779 () Bool)

(declare-fun c!820402 () Bool)

(assert (=> d!1540779 (= c!820402 (and ((_ is Cons!54616) (toList!7191 lt!1964388)) (= (_1!32068 (h!61048 (toList!7191 lt!1964388))) lt!1964396)))))

(declare-fun e!3007333 () Option!13350)

(assert (=> d!1540779 (= (getValueByKey!2517 (toList!7191 lt!1964388) lt!1964396) e!3007333)))

(declare-fun b!4813470 () Bool)

(declare-fun e!3007334 () Option!13350)

(assert (=> b!4813470 (= e!3007333 e!3007334)))

(declare-fun c!820403 () Bool)

(assert (=> b!4813470 (= c!820403 (and ((_ is Cons!54616) (toList!7191 lt!1964388)) (not (= (_1!32068 (h!61048 (toList!7191 lt!1964388))) lt!1964396))))))

(declare-fun b!4813472 () Bool)

(assert (=> b!4813472 (= e!3007334 None!13349)))

(declare-fun b!4813469 () Bool)

(assert (=> b!4813469 (= e!3007333 (Some!13349 (_2!32068 (h!61048 (toList!7191 lt!1964388)))))))

(declare-fun b!4813471 () Bool)

(assert (=> b!4813471 (= e!3007334 (getValueByKey!2517 (t!362234 (toList!7191 lt!1964388)) lt!1964396))))

(assert (= (and d!1540779 c!820402) b!4813469))

(assert (= (and d!1540779 (not c!820402)) b!4813470))

(assert (= (and b!4813470 c!820403) b!4813471))

(assert (= (and b!4813470 (not c!820403)) b!4813472))

(declare-fun m!5799060 () Bool)

(assert (=> b!4813471 m!5799060))

(assert (=> b!4813359 d!1540779))

(declare-fun d!1540781 () Bool)

(assert (=> d!1540781 (containsKey!4183 (toList!7191 lt!1964388) lt!1964396)))

(declare-fun lt!1964460 () Unit!141705)

(declare-fun choose!34883 (List!54740 (_ BitVec 64)) Unit!141705)

(assert (=> d!1540781 (= lt!1964460 (choose!34883 (toList!7191 lt!1964388) lt!1964396))))

(declare-fun e!3007337 () Bool)

(assert (=> d!1540781 e!3007337))

(declare-fun res!2047291 () Bool)

(assert (=> d!1540781 (=> (not res!2047291) (not e!3007337))))

(assert (=> d!1540781 (= res!2047291 (isStrictlySorted!937 (toList!7191 lt!1964388)))))

(assert (=> d!1540781 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!297 (toList!7191 lt!1964388) lt!1964396) lt!1964460)))

(declare-fun b!4813475 () Bool)

(assert (=> b!4813475 (= e!3007337 (isDefined!10487 (getValueByKey!2517 (toList!7191 lt!1964388) lt!1964396)))))

(assert (= (and d!1540781 res!2047291) b!4813475))

(assert (=> d!1540781 m!5798896))

(declare-fun m!5799062 () Bool)

(assert (=> d!1540781 m!5799062))

(assert (=> d!1540781 m!5799052))

(assert (=> b!4813475 m!5798886))

(assert (=> b!4813475 m!5798886))

(assert (=> b!4813475 m!5798888))

(assert (=> b!4813359 d!1540781))

(declare-fun bs!1160252 () Bool)

(declare-fun b!4813480 () Bool)

(assert (= bs!1160252 (and b!4813480 b!4813354)))

(declare-fun lambda!233938 () Int)

(assert (=> bs!1160252 (= lambda!233938 lambda!233929)))

(declare-fun bs!1160253 () Bool)

(assert (= bs!1160253 (and b!4813480 d!1540755)))

(assert (=> bs!1160253 (= lambda!233938 lambda!233932)))

(declare-fun bs!1160254 () Bool)

(assert (= bs!1160254 (and b!4813480 d!1540763)))

(assert (=> bs!1160254 (= lambda!233938 lambda!233935)))

(declare-fun d!1540783 () Bool)

(declare-fun res!2047296 () Bool)

(declare-fun e!3007340 () Bool)

(assert (=> d!1540783 (=> (not res!2047296) (not e!3007340))))

(assert (=> d!1540783 (= res!2047296 (valid!4121 (v!48978 (underlying!10394 thiss!41921))))))

(assert (=> d!1540783 (= (valid!4120 thiss!41921) e!3007340)))

(declare-fun res!2047297 () Bool)

(assert (=> b!4813480 (=> (not res!2047297) (not e!3007340))))

(assert (=> b!4813480 (= res!2047297 (forall!12408 (toList!7191 (map!12477 (v!48978 (underlying!10394 thiss!41921)))) lambda!233938))))

(declare-fun b!4813481 () Bool)

(declare-fun allKeysSameHashInMap!2420 (ListLongMap!5671 Hashable!7104) Bool)

(assert (=> b!4813481 (= e!3007340 (allKeysSameHashInMap!2420 (map!12477 (v!48978 (underlying!10394 thiss!41921))) (hashF!13382 thiss!41921)))))

(assert (= (and d!1540783 res!2047296) b!4813480))

(assert (= (and b!4813480 res!2047297) b!4813481))

(assert (=> d!1540783 m!5798974))

(assert (=> b!4813480 m!5798926))

(declare-fun m!5799064 () Bool)

(assert (=> b!4813480 m!5799064))

(assert (=> b!4813481 m!5798926))

(assert (=> b!4813481 m!5798926))

(declare-fun m!5799066 () Bool)

(assert (=> b!4813481 m!5799066))

(assert (=> b!4813350 d!1540783))

(declare-fun d!1540785 () Bool)

(assert (=> d!1540785 (= (apply!13208 lt!1964387 lt!1964396) (get!18688 (getValueByKey!2517 (toList!7191 lt!1964387) lt!1964396)))))

(declare-fun bs!1160255 () Bool)

(assert (= bs!1160255 d!1540785))

(declare-fun m!5799068 () Bool)

(assert (=> bs!1160255 m!5799068))

(assert (=> bs!1160255 m!5799068))

(declare-fun m!5799070 () Bool)

(assert (=> bs!1160255 m!5799070))

(assert (=> bm!335898 d!1540785))

(declare-fun bs!1160256 () Bool)

(declare-fun d!1540787 () Bool)

(assert (= bs!1160256 (and d!1540787 b!4813354)))

(declare-fun lambda!233941 () Int)

(assert (=> bs!1160256 (= lambda!233941 lambda!233929)))

(declare-fun bs!1160257 () Bool)

(assert (= bs!1160257 (and d!1540787 d!1540755)))

(assert (=> bs!1160257 (= lambda!233941 lambda!233932)))

(declare-fun bs!1160258 () Bool)

(assert (= bs!1160258 (and d!1540787 d!1540763)))

(assert (=> bs!1160258 (= lambda!233941 lambda!233935)))

(declare-fun bs!1160259 () Bool)

(assert (= bs!1160259 (and d!1540787 b!4813480)))

(assert (=> bs!1160259 (= lambda!233941 lambda!233938)))

(declare-fun e!3007343 () Bool)

(assert (=> d!1540787 e!3007343))

(declare-fun res!2047300 () Bool)

(assert (=> d!1540787 (=> (not res!2047300) (not e!3007343))))

(assert (=> d!1540787 (= res!2047300 (contains!18365 lt!1964387 (hash!5166 (hashF!13382 thiss!41921) key!1652)))))

(declare-fun lt!1964463 () Unit!141705)

(declare-fun choose!34884 (ListLongMap!5671 K!16249 Hashable!7104) Unit!141705)

(assert (=> d!1540787 (= lt!1964463 (choose!34884 lt!1964387 key!1652 (hashF!13382 thiss!41921)))))

(assert (=> d!1540787 (forall!12408 (toList!7191 lt!1964387) lambda!233941)))

(assert (=> d!1540787 (= (lemmaInGenericMapThenInLongMap!394 lt!1964387 key!1652 (hashF!13382 thiss!41921)) lt!1964463)))

(declare-fun b!4813484 () Bool)

(assert (=> b!4813484 (= e!3007343 (isDefined!10486 (getPair!980 (apply!13208 lt!1964387 (hash!5166 (hashF!13382 thiss!41921) key!1652)) key!1652)))))

(assert (= (and d!1540787 res!2047300) b!4813484))

(assert (=> d!1540787 m!5798924))

(assert (=> d!1540787 m!5798924))

(declare-fun m!5799072 () Bool)

(assert (=> d!1540787 m!5799072))

(declare-fun m!5799074 () Bool)

(assert (=> d!1540787 m!5799074))

(declare-fun m!5799076 () Bool)

(assert (=> d!1540787 m!5799076))

(assert (=> b!4813484 m!5798924))

(assert (=> b!4813484 m!5798924))

(declare-fun m!5799078 () Bool)

(assert (=> b!4813484 m!5799078))

(assert (=> b!4813484 m!5799078))

(declare-fun m!5799080 () Bool)

(assert (=> b!4813484 m!5799080))

(assert (=> b!4813484 m!5799080))

(declare-fun m!5799082 () Bool)

(assert (=> b!4813484 m!5799082))

(assert (=> b!4813362 d!1540787))

(declare-fun d!1540789 () Bool)

(declare-fun dynLambda!22150 (Int tuple2!57548) Bool)

(assert (=> d!1540789 (dynLambda!22150 lambda!233929 lt!1964399)))

(declare-fun lt!1964466 () Unit!141705)

(declare-fun choose!34885 (List!54740 Int tuple2!57548) Unit!141705)

(assert (=> d!1540789 (= lt!1964466 (choose!34885 (toList!7191 lt!1964388) lambda!233929 lt!1964399))))

(declare-fun e!3007346 () Bool)

(assert (=> d!1540789 e!3007346))

(declare-fun res!2047303 () Bool)

(assert (=> d!1540789 (=> (not res!2047303) (not e!3007346))))

(assert (=> d!1540789 (= res!2047303 (forall!12408 (toList!7191 lt!1964388) lambda!233929))))

(assert (=> d!1540789 (= (forallContained!4290 (toList!7191 lt!1964388) lambda!233929 lt!1964399) lt!1964466)))

(declare-fun b!4813487 () Bool)

(assert (=> b!4813487 (= e!3007346 (contains!18362 (toList!7191 lt!1964388) lt!1964399))))

(assert (= (and d!1540789 res!2047303) b!4813487))

(declare-fun b_lambda!188315 () Bool)

(assert (=> (not b_lambda!188315) (not d!1540789)))

(declare-fun m!5799084 () Bool)

(assert (=> d!1540789 m!5799084))

(declare-fun m!5799086 () Bool)

(assert (=> d!1540789 m!5799086))

(declare-fun m!5799088 () Bool)

(assert (=> d!1540789 m!5799088))

(assert (=> b!4813487 m!5798936))

(assert (=> b!4813354 d!1540789))

(assert (=> b!4813354 d!1540749))

(assert (=> b!4813354 d!1540769))

(declare-fun d!1540791 () Bool)

(declare-fun lt!1964469 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9783 (List!54740) (InoxSet tuple2!57548))

(assert (=> d!1540791 (= lt!1964469 (select (content!9783 (toList!7191 lt!1964388)) lt!1964399))))

(declare-fun e!3007351 () Bool)

(assert (=> d!1540791 (= lt!1964469 e!3007351)))

(declare-fun res!2047308 () Bool)

(assert (=> d!1540791 (=> (not res!2047308) (not e!3007351))))

(assert (=> d!1540791 (= res!2047308 ((_ is Cons!54616) (toList!7191 lt!1964388)))))

(assert (=> d!1540791 (= (contains!18362 (toList!7191 lt!1964388) lt!1964399) lt!1964469)))

(declare-fun b!4813492 () Bool)

(declare-fun e!3007352 () Bool)

(assert (=> b!4813492 (= e!3007351 e!3007352)))

(declare-fun res!2047309 () Bool)

(assert (=> b!4813492 (=> res!2047309 e!3007352)))

(assert (=> b!4813492 (= res!2047309 (= (h!61048 (toList!7191 lt!1964388)) lt!1964399))))

(declare-fun b!4813493 () Bool)

(assert (=> b!4813493 (= e!3007352 (contains!18362 (t!362234 (toList!7191 lt!1964388)) lt!1964399))))

(assert (= (and d!1540791 res!2047308) b!4813492))

(assert (= (and b!4813492 (not res!2047309)) b!4813493))

(declare-fun m!5799090 () Bool)

(assert (=> d!1540791 m!5799090))

(declare-fun m!5799092 () Bool)

(assert (=> d!1540791 m!5799092))

(declare-fun m!5799094 () Bool)

(assert (=> b!4813493 m!5799094))

(assert (=> b!4813354 d!1540791))

(declare-fun d!1540793 () Bool)

(assert (=> d!1540793 (= (array_inv!6047 (_keys!5442 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) (bvsge (size!36617 (_keys!5442 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4813353 d!1540793))

(declare-fun d!1540795 () Bool)

(assert (=> d!1540795 (= (array_inv!6048 (_values!5411 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) (bvsge (size!36618 (_values!5411 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4813353 d!1540795))

(declare-fun d!1540797 () Bool)

(declare-fun e!3007357 () Bool)

(assert (=> d!1540797 e!3007357))

(declare-fun res!2047312 () Bool)

(assert (=> d!1540797 (=> res!2047312 e!3007357)))

(declare-fun lt!1964481 () Bool)

(assert (=> d!1540797 (= res!2047312 (not lt!1964481))))

(declare-fun lt!1964480 () Bool)

(assert (=> d!1540797 (= lt!1964481 lt!1964480)))

(declare-fun lt!1964479 () Unit!141705)

(declare-fun e!3007358 () Unit!141705)

(assert (=> d!1540797 (= lt!1964479 e!3007358)))

(declare-fun c!820406 () Bool)

(assert (=> d!1540797 (= c!820406 lt!1964480)))

(assert (=> d!1540797 (= lt!1964480 (containsKey!4183 (toList!7191 lt!1964387) lt!1964396))))

(assert (=> d!1540797 (= (contains!18365 lt!1964387 lt!1964396) lt!1964481)))

(declare-fun b!4813500 () Bool)

(declare-fun lt!1964478 () Unit!141705)

(assert (=> b!4813500 (= e!3007358 lt!1964478)))

(assert (=> b!4813500 (= lt!1964478 (lemmaContainsKeyImpliesGetValueByKeyDefined!2304 (toList!7191 lt!1964387) lt!1964396))))

(assert (=> b!4813500 (isDefined!10487 (getValueByKey!2517 (toList!7191 lt!1964387) lt!1964396))))

(declare-fun b!4813501 () Bool)

(declare-fun Unit!141716 () Unit!141705)

(assert (=> b!4813501 (= e!3007358 Unit!141716)))

(declare-fun b!4813502 () Bool)

(assert (=> b!4813502 (= e!3007357 (isDefined!10487 (getValueByKey!2517 (toList!7191 lt!1964387) lt!1964396)))))

(assert (= (and d!1540797 c!820406) b!4813500))

(assert (= (and d!1540797 (not c!820406)) b!4813501))

(assert (= (and d!1540797 (not res!2047312)) b!4813502))

(declare-fun m!5799096 () Bool)

(assert (=> d!1540797 m!5799096))

(declare-fun m!5799098 () Bool)

(assert (=> b!4813500 m!5799098))

(assert (=> b!4813500 m!5799068))

(assert (=> b!4813500 m!5799068))

(declare-fun m!5799100 () Bool)

(assert (=> b!4813500 m!5799100))

(assert (=> b!4813502 m!5799068))

(assert (=> b!4813502 m!5799068))

(assert (=> b!4813502 m!5799100))

(assert (=> bm!335899 d!1540797))

(declare-fun mapIsEmpty!22475 () Bool)

(declare-fun mapRes!22475 () Bool)

(assert (=> mapIsEmpty!22475 mapRes!22475))

(declare-fun tp!1361605 () Bool)

(declare-fun tp_is_empty!34077 () Bool)

(declare-fun b!4813509 () Bool)

(declare-fun e!3007364 () Bool)

(assert (=> b!4813509 (= e!3007364 (and tp_is_empty!34075 tp_is_empty!34077 tp!1361605))))

(declare-fun e!3007363 () Bool)

(declare-fun tp!1361604 () Bool)

(declare-fun b!4813510 () Bool)

(assert (=> b!4813510 (= e!3007363 (and tp_is_empty!34075 tp_is_empty!34077 tp!1361604))))

(declare-fun condMapEmpty!22475 () Bool)

(declare-fun mapDefault!22475 () List!54739)

(assert (=> mapNonEmpty!22472 (= condMapEmpty!22475 (= mapRest!22472 ((as const (Array (_ BitVec 32) List!54739)) mapDefault!22475)))))

(assert (=> mapNonEmpty!22472 (= tp!1361592 (and e!3007363 mapRes!22475))))

(declare-fun mapNonEmpty!22475 () Bool)

(declare-fun tp!1361603 () Bool)

(assert (=> mapNonEmpty!22475 (= mapRes!22475 (and tp!1361603 e!3007364))))

(declare-fun mapKey!22475 () (_ BitVec 32))

(declare-fun mapValue!22475 () List!54739)

(declare-fun mapRest!22475 () (Array (_ BitVec 32) List!54739))

(assert (=> mapNonEmpty!22475 (= mapRest!22472 (store mapRest!22475 mapKey!22475 mapValue!22475))))

(assert (= (and mapNonEmpty!22472 condMapEmpty!22475) mapIsEmpty!22475))

(assert (= (and mapNonEmpty!22472 (not condMapEmpty!22475)) mapNonEmpty!22475))

(assert (= (and mapNonEmpty!22475 ((_ is Cons!54615) mapValue!22475)) b!4813509))

(assert (= (and mapNonEmpty!22472 ((_ is Cons!54615) mapDefault!22475)) b!4813510))

(declare-fun m!5799102 () Bool)

(assert (=> mapNonEmpty!22475 m!5799102))

(declare-fun e!3007367 () Bool)

(declare-fun tp!1361608 () Bool)

(declare-fun b!4813515 () Bool)

(assert (=> b!4813515 (= e!3007367 (and tp_is_empty!34075 tp_is_empty!34077 tp!1361608))))

(assert (=> mapNonEmpty!22472 (= tp!1361595 e!3007367)))

(assert (= (and mapNonEmpty!22472 ((_ is Cons!54615) mapValue!22472)) b!4813515))

(declare-fun b!4813516 () Bool)

(declare-fun tp!1361609 () Bool)

(declare-fun e!3007368 () Bool)

(assert (=> b!4813516 (= e!3007368 (and tp_is_empty!34075 tp_is_empty!34077 tp!1361609))))

(assert (=> b!4813361 (= tp!1361596 e!3007368)))

(assert (= (and b!4813361 ((_ is Cons!54615) mapDefault!22472)) b!4813516))

(declare-fun e!3007369 () Bool)

(declare-fun b!4813517 () Bool)

(declare-fun tp!1361610 () Bool)

(assert (=> b!4813517 (= e!3007369 (and tp_is_empty!34075 tp_is_empty!34077 tp!1361610))))

(assert (=> b!4813353 (= tp!1361590 e!3007369)))

(assert (= (and b!4813353 ((_ is Cons!54615) (zeroValue!5386 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921))))))) b!4813517))

(declare-fun e!3007370 () Bool)

(declare-fun tp!1361611 () Bool)

(declare-fun b!4813518 () Bool)

(assert (=> b!4813518 (= e!3007370 (and tp_is_empty!34075 tp_is_empty!34077 tp!1361611))))

(assert (=> b!4813353 (= tp!1361591 e!3007370)))

(assert (= (and b!4813353 ((_ is Cons!54615) (minValue!5386 (v!48977 (underlying!10393 (v!48978 (underlying!10394 thiss!41921))))))) b!4813518))

(declare-fun b_lambda!188317 () Bool)

(assert (= b_lambda!188315 (or b!4813354 b_lambda!188317)))

(declare-fun bs!1160260 () Bool)

(declare-fun d!1540799 () Bool)

(assert (= bs!1160260 (and d!1540799 b!4813354)))

(assert (=> bs!1160260 (= (dynLambda!22150 lambda!233929 lt!1964399) (noDuplicateKeys!2395 (_2!32068 lt!1964399)))))

(declare-fun m!5799104 () Bool)

(assert (=> bs!1160260 m!5799104))

(assert (=> d!1540789 d!1540799))

(declare-fun b_lambda!188319 () Bool)

(assert (= b_lambda!188313 (or (and b!4813353 b_free!130315) b_lambda!188319)))

(check-sat (not b!4813403) (not b!4813410) (not bm!335903) (not d!1540747) (not b_lambda!188317) (not b!4813388) (not b!4813409) (not d!1540757) (not b!4813436) (not b!4813502) (not d!1540751) (not b!4813394) (not b!4813392) (not b!4813428) (not b!4813440) (not b!4813510) (not b!4813447) (not b!4813407) tp_is_empty!34075 (not d!1540749) (not b_lambda!188319) (not b!4813389) (not b!4813400) (not d!1540785) (not b!4813427) (not d!1540787) (not b!4813516) (not b!4813518) tp_is_empty!34077 (not tb!257547) (not b!4813442) (not b!4813500) (not b!4813484) (not d!1540771) b_and!342127 (not d!1540789) (not bm!335902) (not b!4813434) (not d!1540755) (not b!4813439) (not b!4813404) (not bs!1160260) (not b!4813432) (not b!4813395) (not b!4813471) (not b!4813435) (not b!4813493) (not d!1540781) (not d!1540745) (not b!4813393) (not d!1540761) (not b!4813451) (not d!1540765) (not d!1540767) (not b!4813509) (not b!4813391) (not d!1540763) (not d!1540777) (not b_next!131107) (not b!4813457) (not b!4813406) (not b_next!131105) b_and!342129 (not b!4813475) (not b!4813460) (not b!4813517) (not d!1540791) (not b!4813487) (not d!1540783) (not d!1540773) (not b!4813480) (not b!4813431) (not b!4813408) (not b!4813481) (not b!4813515) (not d!1540797) (not mapNonEmpty!22475) (not d!1540753) (not d!1540769) (not d!1540759))
(check-sat b_and!342129 b_and!342127 (not b_next!131105) (not b_next!131107))
