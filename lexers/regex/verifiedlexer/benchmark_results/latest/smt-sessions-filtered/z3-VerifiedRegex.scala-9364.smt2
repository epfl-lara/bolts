; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497122 () Bool)

(assert start!497122)

(declare-fun b!4809516 () Bool)

(declare-fun b_free!130091 () Bool)

(declare-fun b_next!130881 () Bool)

(assert (=> b!4809516 (= b_free!130091 (not b_next!130881))))

(declare-fun tp!1360233 () Bool)

(declare-fun b_and!341869 () Bool)

(assert (=> b!4809516 (= tp!1360233 b_and!341869)))

(declare-fun b!4809513 () Bool)

(declare-fun b_free!130093 () Bool)

(declare-fun b_next!130883 () Bool)

(assert (=> b!4809513 (= b_free!130093 (not b_next!130883))))

(declare-fun tp!1360237 () Bool)

(declare-fun b_and!341871 () Bool)

(assert (=> b!4809513 (= tp!1360237 b_and!341871)))

(declare-fun b!4809502 () Bool)

(declare-fun e!3004278 () Bool)

(declare-fun e!3004275 () Bool)

(assert (=> b!4809502 (= e!3004278 e!3004275)))

(declare-fun b!4809503 () Bool)

(declare-fun e!3004280 () Bool)

(declare-fun call!335636 () Bool)

(assert (=> b!4809503 (= e!3004280 call!335636)))

(declare-fun b!4809504 () Bool)

(declare-datatypes ((Unit!141479 0))(
  ( (Unit!141480) )
))
(declare-fun e!3004274 () Unit!141479)

(declare-fun e!3004282 () Unit!141479)

(assert (=> b!4809504 (= e!3004274 e!3004282)))

(declare-fun res!2045927 () Bool)

(declare-fun call!335635 () Bool)

(assert (=> b!4809504 (= res!2045927 call!335635)))

(assert (=> b!4809504 (=> (not res!2045927) (not e!3004280))))

(declare-fun c!819705 () Bool)

(assert (=> b!4809504 (= c!819705 e!3004280)))

(declare-fun res!2045926 () Bool)

(declare-fun e!3004285 () Bool)

(assert (=> start!497122 (=> (not res!2045926) (not e!3004285))))

(declare-datatypes ((K!16109 0))(
  ( (K!16110 (val!21193 Int)) )
))
(declare-datatypes ((array!18516 0))(
  ( (array!18517 (arr!8259 (Array (_ BitVec 32) (_ BitVec 64))) (size!36505 (_ BitVec 32))) )
))
(declare-datatypes ((V!16355 0))(
  ( (V!16356 (val!21194 Int)) )
))
(declare-datatypes ((tuple2!57338 0))(
  ( (tuple2!57339 (_1!31963 K!16109) (_2!31963 V!16355)) )
))
(declare-datatypes ((List!54627 0))(
  ( (Nil!54503) (Cons!54503 (h!60935 tuple2!57338) (t!362101 List!54627)) )
))
(declare-datatypes ((array!18518 0))(
  ( (array!18519 (arr!8260 (Array (_ BitVec 32) List!54627)) (size!36506 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10074 0))(
  ( (LongMapFixedSize!10075 (defaultEntry!5455 Int) (mask!15026 (_ BitVec 32)) (extraKeys!5312 (_ BitVec 32)) (zeroValue!5325 List!54627) (minValue!5325 List!54627) (_size!10099 (_ BitVec 32)) (_keys!5379 array!18516) (_values!5350 array!18518) (_vacant!5102 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19913 0))(
  ( (Cell!19914 (v!48787 LongMapFixedSize!10074)) )
))
(declare-datatypes ((MutLongMap!5037 0))(
  ( (LongMap!5037 (underlying!10281 Cell!19913)) (MutLongMapExt!5036 (__x!33209 Int)) )
))
(declare-datatypes ((Hashable!7048 0))(
  ( (HashableExt!7047 (__x!33210 Int)) )
))
(declare-datatypes ((Cell!19915 0))(
  ( (Cell!19916 (v!48788 MutLongMap!5037)) )
))
(declare-datatypes ((MutableMap!4921 0))(
  ( (MutableMapExt!4920 (__x!33211 Int)) (HashMap!4921 (underlying!10282 Cell!19915) (hashF!13316 Hashable!7048) (_size!10100 (_ BitVec 32)) (defaultValue!5092 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4921)

(get-info :version)

(assert (=> start!497122 (= res!2045926 ((_ is HashMap!4921) thiss!41921))))

(assert (=> start!497122 e!3004285))

(declare-fun e!3004284 () Bool)

(assert (=> start!497122 e!3004284))

(declare-fun tp_is_empty!33943 () Bool)

(assert (=> start!497122 tp_is_empty!33943))

(declare-fun mapIsEmpty!22271 () Bool)

(declare-fun mapRes!22271 () Bool)

(assert (=> mapIsEmpty!22271 mapRes!22271))

(declare-fun b!4809505 () Bool)

(declare-fun e!3004286 () Bool)

(declare-fun tp!1360232 () Bool)

(assert (=> b!4809505 (= e!3004286 (and tp!1360232 mapRes!22271))))

(declare-fun condMapEmpty!22271 () Bool)

(declare-fun mapDefault!22271 () List!54627)

(assert (=> b!4809505 (= condMapEmpty!22271 (= (arr!8260 (_values!5350 (v!48787 (underlying!10281 (v!48788 (underlying!10282 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54627)) mapDefault!22271)))))

(declare-fun b!4809506 () Bool)

(declare-datatypes ((tuple2!57340 0))(
  ( (tuple2!57341 (_1!31964 (_ BitVec 64)) (_2!31964 List!54627)) )
))
(declare-fun lt!1961946 () tuple2!57340)

(declare-fun e!3004283 () Unit!141479)

(declare-fun lambda!233694 () Int)

(declare-datatypes ((List!54628 0))(
  ( (Nil!54504) (Cons!54504 (h!60936 tuple2!57340) (t!362102 List!54628)) )
))
(declare-datatypes ((ListLongMap!5575 0))(
  ( (ListLongMap!5576 (toList!7121 List!54628)) )
))
(declare-fun lt!1961937 () ListLongMap!5575)

(declare-fun forallContained!4260 (List!54628 Int tuple2!57340) Unit!141479)

(assert (=> b!4809506 (= e!3004283 (forallContained!4260 (toList!7121 lt!1961937) lambda!233694 lt!1961946))))

(declare-fun map!12393 (MutLongMap!5037) ListLongMap!5575)

(assert (=> b!4809506 (= lt!1961937 (map!12393 (v!48788 (underlying!10282 thiss!41921))))))

(declare-fun lt!1961944 () List!54627)

(declare-fun lt!1961947 () (_ BitVec 64))

(declare-fun apply!13129 (MutLongMap!5037 (_ BitVec 64)) List!54627)

(assert (=> b!4809506 (= lt!1961944 (apply!13129 (v!48788 (underlying!10282 thiss!41921)) lt!1961947))))

(assert (=> b!4809506 (= lt!1961946 (tuple2!57341 lt!1961947 lt!1961944))))

(declare-fun c!819708 () Bool)

(declare-fun contains!18213 (List!54628 tuple2!57340) Bool)

(assert (=> b!4809506 (= c!819708 (not (contains!18213 (toList!7121 lt!1961937) lt!1961946)))))

(declare-fun lt!1961942 () Unit!141479)

(declare-fun e!3004277 () Unit!141479)

(assert (=> b!4809506 (= lt!1961942 e!3004277)))

(declare-fun b!4809507 () Bool)

(declare-fun e!3004279 () Bool)

(assert (=> b!4809507 (= e!3004279 call!335636)))

(declare-fun b!4809508 () Bool)

(declare-fun Unit!141481 () Unit!141479)

(assert (=> b!4809508 (= e!3004283 Unit!141481)))

(declare-fun bm!335629 () Bool)

(declare-datatypes ((Option!13288 0))(
  ( (None!13287) (Some!13287 (v!48789 tuple2!57338)) )
))
(declare-fun call!335637 () Option!13288)

(declare-fun call!335634 () List!54627)

(declare-fun key!1652 () K!16109)

(declare-fun getPair!959 (List!54627 K!16109) Option!13288)

(assert (=> bm!335629 (= call!335637 (getPair!959 call!335634 key!1652))))

(declare-fun mapNonEmpty!22271 () Bool)

(declare-fun tp!1360234 () Bool)

(declare-fun tp!1360236 () Bool)

(assert (=> mapNonEmpty!22271 (= mapRes!22271 (and tp!1360234 tp!1360236))))

(declare-fun mapRest!22271 () (Array (_ BitVec 32) List!54627))

(declare-fun mapValue!22271 () List!54627)

(declare-fun mapKey!22271 () (_ BitVec 32))

(assert (=> mapNonEmpty!22271 (= (arr!8260 (_values!5350 (v!48787 (underlying!10281 (v!48788 (underlying!10282 thiss!41921)))))) (store mapRest!22271 mapKey!22271 mapValue!22271))))

(declare-fun b!4809509 () Bool)

(declare-fun Unit!141482 () Unit!141479)

(assert (=> b!4809509 (= e!3004277 Unit!141482)))

(declare-fun b!4809510 () Bool)

(assert (=> b!4809510 (= e!3004285 (not ((_ is LongMap!5037) (v!48788 (underlying!10282 thiss!41921)))))))

(declare-fun lt!1961949 () Unit!141479)

(assert (=> b!4809510 (= lt!1961949 e!3004274)))

(declare-fun c!819707 () Bool)

(declare-fun lt!1961945 () ListLongMap!5575)

(declare-datatypes ((ListMap!6561 0))(
  ( (ListMap!6562 (toList!7122 List!54627)) )
))
(declare-fun contains!18214 (ListMap!6561 K!16109) Bool)

(declare-fun extractMap!2532 (List!54628) ListMap!6561)

(assert (=> b!4809510 (= c!819707 (contains!18214 (extractMap!2532 (toList!7121 lt!1961945)) key!1652))))

(assert (=> b!4809510 (= lt!1961945 (map!12393 (v!48788 (underlying!10282 thiss!41921))))))

(declare-fun lt!1961938 () Unit!141479)

(assert (=> b!4809510 (= lt!1961938 e!3004283)))

(declare-fun c!819706 () Bool)

(declare-fun contains!18215 (MutLongMap!5037 (_ BitVec 64)) Bool)

(assert (=> b!4809510 (= c!819706 (contains!18215 (v!48788 (underlying!10282 thiss!41921)) lt!1961947))))

(declare-fun hash!5118 (Hashable!7048 K!16109) (_ BitVec 64))

(assert (=> b!4809510 (= lt!1961947 (hash!5118 (hashF!13316 thiss!41921) key!1652))))

(declare-fun bm!335630 () Bool)

(declare-fun contains!18216 (ListLongMap!5575 (_ BitVec 64)) Bool)

(assert (=> bm!335630 (= call!335635 (contains!18216 lt!1961945 lt!1961947))))

(declare-fun b!4809511 () Bool)

(declare-fun res!2045924 () Bool)

(assert (=> b!4809511 (=> (not res!2045924) (not e!3004285))))

(declare-fun valid!4058 (MutableMap!4921) Bool)

(assert (=> b!4809511 (= res!2045924 (valid!4058 thiss!41921))))

(declare-fun b!4809512 () Bool)

(declare-fun lt!1961940 () Unit!141479)

(assert (=> b!4809512 (= e!3004274 lt!1961940)))

(declare-fun lemmaInGenericMapThenInLongMap!383 (ListLongMap!5575 K!16109 Hashable!7048) Unit!141479)

(assert (=> b!4809512 (= lt!1961940 (lemmaInGenericMapThenInLongMap!383 lt!1961945 key!1652 (hashF!13316 thiss!41921)))))

(declare-fun res!2045925 () Bool)

(assert (=> b!4809512 (= res!2045925 call!335635)))

(assert (=> b!4809512 (=> (not res!2045925) (not e!3004279))))

(assert (=> b!4809512 e!3004279))

(declare-fun e!3004287 () Bool)

(assert (=> b!4809513 (= e!3004284 (and e!3004287 tp!1360237))))

(declare-fun b!4809514 () Bool)

(assert (=> b!4809514 false))

(declare-fun lt!1961939 () Unit!141479)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!991 (List!54628 (_ BitVec 64) List!54627) Unit!141479)

(assert (=> b!4809514 (= lt!1961939 (lemmaGetValueByKeyImpliesContainsTuple!991 (toList!7121 lt!1961937) lt!1961947 lt!1961944))))

(declare-datatypes ((Option!13289 0))(
  ( (None!13288) (Some!13288 (v!48790 List!54627)) )
))
(declare-fun isDefined!10427 (Option!13289) Bool)

(declare-fun getValueByKey!2477 (List!54628 (_ BitVec 64)) Option!13289)

(assert (=> b!4809514 (isDefined!10427 (getValueByKey!2477 (toList!7121 lt!1961937) lt!1961947))))

(declare-fun lt!1961941 () Unit!141479)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2265 (List!54628 (_ BitVec 64)) Unit!141479)

(assert (=> b!4809514 (= lt!1961941 (lemmaContainsKeyImpliesGetValueByKeyDefined!2265 (toList!7121 lt!1961937) lt!1961947))))

(declare-fun containsKey!4134 (List!54628 (_ BitVec 64)) Bool)

(assert (=> b!4809514 (containsKey!4134 (toList!7121 lt!1961937) lt!1961947)))

(declare-fun lt!1961948 () Unit!141479)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!262 (List!54628 (_ BitVec 64)) Unit!141479)

(assert (=> b!4809514 (= lt!1961948 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!262 (toList!7121 lt!1961937) lt!1961947))))

(declare-fun Unit!141483 () Unit!141479)

(assert (=> b!4809514 (= e!3004277 Unit!141483)))

(declare-fun b!4809515 () Bool)

(declare-fun Unit!141484 () Unit!141479)

(assert (=> b!4809515 (= e!3004282 Unit!141484)))

(declare-fun tp!1360235 () Bool)

(declare-fun tp!1360238 () Bool)

(declare-fun e!3004276 () Bool)

(declare-fun array_inv!5963 (array!18516) Bool)

(declare-fun array_inv!5964 (array!18518) Bool)

(assert (=> b!4809516 (= e!3004276 (and tp!1360233 tp!1360238 tp!1360235 (array_inv!5963 (_keys!5379 (v!48787 (underlying!10281 (v!48788 (underlying!10282 thiss!41921)))))) (array_inv!5964 (_values!5350 (v!48787 (underlying!10281 (v!48788 (underlying!10282 thiss!41921)))))) e!3004286))))

(declare-fun b!4809517 () Bool)

(declare-fun lt!1961950 () MutLongMap!5037)

(assert (=> b!4809517 (= e!3004287 (and e!3004278 ((_ is LongMap!5037) lt!1961950)))))

(assert (=> b!4809517 (= lt!1961950 (v!48788 (underlying!10282 thiss!41921)))))

(declare-fun bm!335631 () Bool)

(declare-fun apply!13130 (ListLongMap!5575 (_ BitVec 64)) List!54627)

(assert (=> bm!335631 (= call!335634 (apply!13130 lt!1961945 lt!1961947))))

(declare-fun b!4809518 () Bool)

(assert (=> b!4809518 (= e!3004275 e!3004276)))

(declare-fun bm!335632 () Bool)

(declare-fun isDefined!10428 (Option!13288) Bool)

(assert (=> bm!335632 (= call!335636 (isDefined!10428 call!335637))))

(declare-fun b!4809519 () Bool)

(assert (=> b!4809519 false))

(declare-fun lt!1961943 () Unit!141479)

(declare-fun lemmaInLongMapThenInGenericMap!213 (ListLongMap!5575 K!16109 Hashable!7048) Unit!141479)

(assert (=> b!4809519 (= lt!1961943 (lemmaInLongMapThenInGenericMap!213 lt!1961945 key!1652 (hashF!13316 thiss!41921)))))

(declare-fun Unit!141485 () Unit!141479)

(assert (=> b!4809519 (= e!3004282 Unit!141485)))

(assert (= (and start!497122 res!2045926) b!4809511))

(assert (= (and b!4809511 res!2045924) b!4809510))

(assert (= (and b!4809510 c!819706) b!4809506))

(assert (= (and b!4809510 (not c!819706)) b!4809508))

(assert (= (and b!4809506 c!819708) b!4809514))

(assert (= (and b!4809506 (not c!819708)) b!4809509))

(assert (= (and b!4809510 c!819707) b!4809512))

(assert (= (and b!4809510 (not c!819707)) b!4809504))

(assert (= (and b!4809512 res!2045925) b!4809507))

(assert (= (and b!4809504 res!2045927) b!4809503))

(assert (= (and b!4809504 c!819705) b!4809519))

(assert (= (and b!4809504 (not c!819705)) b!4809515))

(assert (= (or b!4809507 b!4809503) bm!335631))

(assert (= (or b!4809512 b!4809504) bm!335630))

(assert (= (or b!4809507 b!4809503) bm!335629))

(assert (= (or b!4809507 b!4809503) bm!335632))

(assert (= (and b!4809505 condMapEmpty!22271) mapIsEmpty!22271))

(assert (= (and b!4809505 (not condMapEmpty!22271)) mapNonEmpty!22271))

(assert (= b!4809516 b!4809505))

(assert (= b!4809518 b!4809516))

(assert (= b!4809502 b!4809518))

(assert (= (and b!4809517 ((_ is LongMap!5037) (v!48788 (underlying!10282 thiss!41921)))) b!4809502))

(assert (= b!4809513 b!4809517))

(assert (= (and start!497122 ((_ is HashMap!4921) thiss!41921)) b!4809513))

(declare-fun m!5795526 () Bool)

(assert (=> b!4809519 m!5795526))

(declare-fun m!5795528 () Bool)

(assert (=> bm!335632 m!5795528))

(declare-fun m!5795530 () Bool)

(assert (=> mapNonEmpty!22271 m!5795530))

(declare-fun m!5795532 () Bool)

(assert (=> b!4809514 m!5795532))

(declare-fun m!5795534 () Bool)

(assert (=> b!4809514 m!5795534))

(declare-fun m!5795536 () Bool)

(assert (=> b!4809514 m!5795536))

(assert (=> b!4809514 m!5795534))

(declare-fun m!5795538 () Bool)

(assert (=> b!4809514 m!5795538))

(declare-fun m!5795540 () Bool)

(assert (=> b!4809514 m!5795540))

(declare-fun m!5795542 () Bool)

(assert (=> b!4809514 m!5795542))

(declare-fun m!5795544 () Bool)

(assert (=> b!4809512 m!5795544))

(declare-fun m!5795546 () Bool)

(assert (=> b!4809506 m!5795546))

(declare-fun m!5795548 () Bool)

(assert (=> b!4809506 m!5795548))

(declare-fun m!5795550 () Bool)

(assert (=> b!4809506 m!5795550))

(declare-fun m!5795552 () Bool)

(assert (=> b!4809506 m!5795552))

(declare-fun m!5795554 () Bool)

(assert (=> b!4809516 m!5795554))

(declare-fun m!5795556 () Bool)

(assert (=> b!4809516 m!5795556))

(declare-fun m!5795558 () Bool)

(assert (=> bm!335629 m!5795558))

(declare-fun m!5795560 () Bool)

(assert (=> b!4809510 m!5795560))

(declare-fun m!5795562 () Bool)

(assert (=> b!4809510 m!5795562))

(declare-fun m!5795564 () Bool)

(assert (=> b!4809510 m!5795564))

(assert (=> b!4809510 m!5795562))

(declare-fun m!5795566 () Bool)

(assert (=> b!4809510 m!5795566))

(assert (=> b!4809510 m!5795548))

(declare-fun m!5795568 () Bool)

(assert (=> bm!335630 m!5795568))

(declare-fun m!5795570 () Bool)

(assert (=> bm!335631 m!5795570))

(declare-fun m!5795572 () Bool)

(assert (=> b!4809511 m!5795572))

(check-sat (not bm!335631) (not bm!335629) tp_is_empty!33943 (not b!4809519) b_and!341871 (not b_next!130881) (not mapNonEmpty!22271) (not b_next!130883) (not bm!335632) (not b!4809512) (not b!4809511) (not b!4809516) (not b!4809514) b_and!341869 (not bm!335630) (not b!4809505) (not b!4809506) (not b!4809510))
(check-sat b_and!341869 b_and!341871 (not b_next!130881) (not b_next!130883))
