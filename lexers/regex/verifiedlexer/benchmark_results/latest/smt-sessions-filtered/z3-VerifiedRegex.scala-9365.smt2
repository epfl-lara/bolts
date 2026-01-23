; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497126 () Bool)

(assert start!497126)

(declare-fun b!4809621 () Bool)

(declare-fun b_free!130099 () Bool)

(declare-fun b_next!130889 () Bool)

(assert (=> b!4809621 (= b_free!130099 (not b_next!130889))))

(declare-fun tp!1360280 () Bool)

(declare-fun b_and!341877 () Bool)

(assert (=> b!4809621 (= tp!1360280 b_and!341877)))

(declare-fun b!4809623 () Bool)

(declare-fun b_free!130101 () Bool)

(declare-fun b_next!130891 () Bool)

(assert (=> b!4809623 (= b_free!130101 (not b_next!130891))))

(declare-fun tp!1360274 () Bool)

(declare-fun b_and!341879 () Bool)

(assert (=> b!4809623 (= tp!1360274 b_and!341879)))

(declare-fun b!4809615 () Bool)

(declare-datatypes ((Unit!141492 0))(
  ( (Unit!141493) )
))
(declare-fun e!3004371 () Unit!141492)

(declare-fun Unit!141494 () Unit!141492)

(assert (=> b!4809615 (= e!3004371 Unit!141494)))

(declare-fun b!4809616 () Bool)

(declare-fun e!3004370 () Bool)

(declare-datatypes ((K!16114 0))(
  ( (K!16115 (val!21197 Int)) )
))
(declare-datatypes ((array!18524 0))(
  ( (array!18525 (arr!8263 (Array (_ BitVec 32) (_ BitVec 64))) (size!36509 (_ BitVec 32))) )
))
(declare-datatypes ((V!16360 0))(
  ( (V!16361 (val!21198 Int)) )
))
(declare-datatypes ((tuple2!57346 0))(
  ( (tuple2!57347 (_1!31967 K!16114) (_2!31967 V!16360)) )
))
(declare-datatypes ((List!54631 0))(
  ( (Nil!54507) (Cons!54507 (h!60939 tuple2!57346) (t!362105 List!54631)) )
))
(declare-datatypes ((array!18526 0))(
  ( (array!18527 (arr!8264 (Array (_ BitVec 32) List!54631)) (size!36510 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10078 0))(
  ( (LongMapFixedSize!10079 (defaultEntry!5457 Int) (mask!15029 (_ BitVec 32)) (extraKeys!5314 (_ BitVec 32)) (zeroValue!5327 List!54631) (minValue!5327 List!54631) (_size!10103 (_ BitVec 32)) (_keys!5381 array!18524) (_values!5352 array!18526) (_vacant!5104 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19921 0))(
  ( (Cell!19922 (v!48795 LongMapFixedSize!10078)) )
))
(declare-datatypes ((MutLongMap!5039 0))(
  ( (LongMap!5039 (underlying!10285 Cell!19921)) (MutLongMapExt!5038 (__x!33215 Int)) )
))
(declare-datatypes ((Hashable!7050 0))(
  ( (HashableExt!7049 (__x!33216 Int)) )
))
(declare-datatypes ((Cell!19923 0))(
  ( (Cell!19924 (v!48796 MutLongMap!5039)) )
))
(declare-datatypes ((MutableMap!4923 0))(
  ( (MutableMapExt!4922 (__x!33217 Int)) (HashMap!4923 (underlying!10286 Cell!19923) (hashF!13318 Hashable!7050) (_size!10104 (_ BitVec 32)) (defaultValue!5094 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4923)

(declare-fun valid!4060 (MutLongMap!5039) Bool)

(assert (=> b!4809616 (= e!3004370 (not (valid!4060 (v!48796 (underlying!10286 thiss!41921)))))))

(declare-fun b!4809617 () Bool)

(declare-fun res!2045953 () Bool)

(declare-fun e!3004368 () Bool)

(assert (=> b!4809617 (=> (not res!2045953) (not e!3004368))))

(declare-fun valid!4061 (MutableMap!4923) Bool)

(assert (=> b!4809617 (= res!2045953 (valid!4061 thiss!41921))))

(declare-fun b!4809618 () Bool)

(declare-fun e!3004366 () Bool)

(declare-fun e!3004376 () Bool)

(assert (=> b!4809618 (= e!3004366 e!3004376)))

(declare-fun b!4809619 () Bool)

(declare-fun e!3004372 () Bool)

(declare-fun tp!1360278 () Bool)

(declare-fun mapRes!22277 () Bool)

(assert (=> b!4809619 (= e!3004372 (and tp!1360278 mapRes!22277))))

(declare-fun condMapEmpty!22277 () Bool)

(declare-fun mapDefault!22277 () List!54631)

(assert (=> b!4809619 (= condMapEmpty!22277 (= (arr!8264 (_values!5352 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54631)) mapDefault!22277)))))

(declare-fun b!4809620 () Bool)

(declare-fun e!3004377 () Bool)

(declare-fun lt!1962022 () MutLongMap!5039)

(get-info :version)

(assert (=> b!4809620 (= e!3004377 (and e!3004366 ((_ is LongMap!5039) lt!1962022)))))

(assert (=> b!4809620 (= lt!1962022 (v!48796 (underlying!10286 thiss!41921)))))

(declare-fun tp!1360275 () Bool)

(declare-fun e!3004369 () Bool)

(declare-fun tp!1360276 () Bool)

(declare-fun array_inv!5967 (array!18524) Bool)

(declare-fun array_inv!5968 (array!18526) Bool)

(assert (=> b!4809621 (= e!3004369 (and tp!1360280 tp!1360276 tp!1360275 (array_inv!5967 (_keys!5381 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) (array_inv!5968 (_values!5352 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) e!3004372))))

(declare-fun b!4809622 () Bool)

(declare-fun e!3004375 () Unit!141492)

(declare-fun lt!1962028 () Unit!141492)

(assert (=> b!4809622 (= e!3004375 lt!1962028)))

(declare-fun key!1652 () K!16114)

(declare-datatypes ((tuple2!57348 0))(
  ( (tuple2!57349 (_1!31968 (_ BitVec 64)) (_2!31968 List!54631)) )
))
(declare-datatypes ((List!54632 0))(
  ( (Nil!54508) (Cons!54508 (h!60940 tuple2!57348) (t!362106 List!54632)) )
))
(declare-datatypes ((ListLongMap!5579 0))(
  ( (ListLongMap!5580 (toList!7125 List!54632)) )
))
(declare-fun lt!1962027 () ListLongMap!5579)

(declare-fun lemmaInGenericMapThenInLongMap!385 (ListLongMap!5579 K!16114 Hashable!7050) Unit!141492)

(assert (=> b!4809622 (= lt!1962028 (lemmaInGenericMapThenInLongMap!385 lt!1962027 key!1652 (hashF!13318 thiss!41921)))))

(declare-fun res!2045957 () Bool)

(declare-fun call!335661 () Bool)

(assert (=> b!4809622 (= res!2045957 call!335661)))

(declare-fun e!3004365 () Bool)

(assert (=> b!4809622 (=> (not res!2045957) (not e!3004365))))

(assert (=> b!4809622 e!3004365))

(declare-fun bm!335653 () Bool)

(declare-fun lt!1962033 () (_ BitVec 64))

(declare-fun contains!18221 (ListLongMap!5579 (_ BitVec 64)) Bool)

(assert (=> bm!335653 (= call!335661 (contains!18221 lt!1962027 lt!1962033))))

(declare-fun e!3004364 () Bool)

(assert (=> b!4809623 (= e!3004364 (and e!3004377 tp!1360274))))

(declare-fun b!4809624 () Bool)

(assert (=> b!4809624 (= e!3004368 e!3004370)))

(declare-fun res!2045954 () Bool)

(assert (=> b!4809624 (=> (not res!2045954) (not e!3004370))))

(assert (=> b!4809624 (= res!2045954 ((_ is LongMap!5039) (v!48796 (underlying!10286 thiss!41921))))))

(declare-fun lt!1962021 () Unit!141492)

(assert (=> b!4809624 (= lt!1962021 e!3004375)))

(declare-fun c!819731 () Bool)

(declare-datatypes ((ListMap!6565 0))(
  ( (ListMap!6566 (toList!7126 List!54631)) )
))
(declare-fun contains!18222 (ListMap!6565 K!16114) Bool)

(declare-fun extractMap!2534 (List!54632) ListMap!6565)

(assert (=> b!4809624 (= c!819731 (contains!18222 (extractMap!2534 (toList!7125 lt!1962027)) key!1652))))

(declare-fun map!12396 (MutLongMap!5039) ListLongMap!5579)

(assert (=> b!4809624 (= lt!1962027 (map!12396 (v!48796 (underlying!10286 thiss!41921))))))

(declare-fun lt!1962023 () Unit!141492)

(declare-fun e!3004367 () Unit!141492)

(assert (=> b!4809624 (= lt!1962023 e!3004367)))

(declare-fun c!819730 () Bool)

(declare-fun contains!18223 (MutLongMap!5039 (_ BitVec 64)) Bool)

(assert (=> b!4809624 (= c!819730 (contains!18223 (v!48796 (underlying!10286 thiss!41921)) lt!1962033))))

(declare-fun hash!5120 (Hashable!7050 K!16114) (_ BitVec 64))

(assert (=> b!4809624 (= lt!1962033 (hash!5120 (hashF!13318 thiss!41921) key!1652))))

(declare-fun bm!335654 () Bool)

(declare-fun call!335658 () Bool)

(declare-datatypes ((Option!13292 0))(
  ( (None!13291) (Some!13291 (v!48797 tuple2!57346)) )
))
(declare-fun call!335659 () Option!13292)

(declare-fun isDefined!10431 (Option!13292) Bool)

(assert (=> bm!335654 (= call!335658 (isDefined!10431 call!335659))))

(declare-fun mapNonEmpty!22277 () Bool)

(declare-fun tp!1360277 () Bool)

(declare-fun tp!1360279 () Bool)

(assert (=> mapNonEmpty!22277 (= mapRes!22277 (and tp!1360277 tp!1360279))))

(declare-fun mapKey!22277 () (_ BitVec 32))

(declare-fun mapValue!22277 () List!54631)

(declare-fun mapRest!22277 () (Array (_ BitVec 32) List!54631))

(assert (=> mapNonEmpty!22277 (= (arr!8264 (_values!5352 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) (store mapRest!22277 mapKey!22277 mapValue!22277))))

(declare-fun bm!335655 () Bool)

(declare-fun call!335660 () List!54631)

(declare-fun getPair!961 (List!54631 K!16114) Option!13292)

(assert (=> bm!335655 (= call!335659 (getPair!961 call!335660 key!1652))))

(declare-fun b!4809625 () Bool)

(assert (=> b!4809625 false))

(declare-fun lt!1962032 () List!54631)

(declare-fun lt!1962024 () Unit!141492)

(declare-fun lt!1962025 () ListLongMap!5579)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!993 (List!54632 (_ BitVec 64) List!54631) Unit!141492)

(assert (=> b!4809625 (= lt!1962024 (lemmaGetValueByKeyImpliesContainsTuple!993 (toList!7125 lt!1962025) lt!1962033 lt!1962032))))

(declare-datatypes ((Option!13293 0))(
  ( (None!13292) (Some!13292 (v!48798 List!54631)) )
))
(declare-fun isDefined!10432 (Option!13293) Bool)

(declare-fun getValueByKey!2479 (List!54632 (_ BitVec 64)) Option!13293)

(assert (=> b!4809625 (isDefined!10432 (getValueByKey!2479 (toList!7125 lt!1962025) lt!1962033))))

(declare-fun lt!1962034 () Unit!141492)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2267 (List!54632 (_ BitVec 64)) Unit!141492)

(assert (=> b!4809625 (= lt!1962034 (lemmaContainsKeyImpliesGetValueByKeyDefined!2267 (toList!7125 lt!1962025) lt!1962033))))

(declare-fun containsKey!4136 (List!54632 (_ BitVec 64)) Bool)

(assert (=> b!4809625 (containsKey!4136 (toList!7125 lt!1962025) lt!1962033)))

(declare-fun lt!1962026 () Unit!141492)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!264 (List!54632 (_ BitVec 64)) Unit!141492)

(assert (=> b!4809625 (= lt!1962026 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!264 (toList!7125 lt!1962025) lt!1962033))))

(declare-fun e!3004363 () Unit!141492)

(declare-fun Unit!141495 () Unit!141492)

(assert (=> b!4809625 (= e!3004363 Unit!141495)))

(declare-fun b!4809626 () Bool)

(declare-fun Unit!141496 () Unit!141492)

(assert (=> b!4809626 (= e!3004367 Unit!141496)))

(declare-fun b!4809627 () Bool)

(assert (=> b!4809627 false))

(declare-fun lt!1962029 () Unit!141492)

(declare-fun lemmaInLongMapThenInGenericMap!215 (ListLongMap!5579 K!16114 Hashable!7050) Unit!141492)

(assert (=> b!4809627 (= lt!1962029 (lemmaInLongMapThenInGenericMap!215 lt!1962027 key!1652 (hashF!13318 thiss!41921)))))

(declare-fun Unit!141497 () Unit!141492)

(assert (=> b!4809627 (= e!3004371 Unit!141497)))

(declare-fun b!4809628 () Bool)

(assert (=> b!4809628 (= e!3004376 e!3004369)))

(declare-fun b!4809629 () Bool)

(assert (=> b!4809629 (= e!3004365 call!335658)))

(declare-fun res!2045955 () Bool)

(assert (=> start!497126 (=> (not res!2045955) (not e!3004368))))

(assert (=> start!497126 (= res!2045955 ((_ is HashMap!4923) thiss!41921))))

(assert (=> start!497126 e!3004368))

(assert (=> start!497126 e!3004364))

(declare-fun tp_is_empty!33947 () Bool)

(assert (=> start!497126 tp_is_empty!33947))

(declare-fun b!4809630 () Bool)

(declare-fun Unit!141498 () Unit!141492)

(assert (=> b!4809630 (= e!3004363 Unit!141498)))

(declare-fun bm!335656 () Bool)

(declare-fun apply!13133 (ListLongMap!5579 (_ BitVec 64)) List!54631)

(assert (=> bm!335656 (= call!335660 (apply!13133 lt!1962027 lt!1962033))))

(declare-fun b!4809631 () Bool)

(declare-fun lt!1962031 () tuple2!57348)

(declare-fun lambda!233700 () Int)

(declare-fun forallContained!4262 (List!54632 Int tuple2!57348) Unit!141492)

(assert (=> b!4809631 (= e!3004367 (forallContained!4262 (toList!7125 lt!1962025) lambda!233700 lt!1962031))))

(assert (=> b!4809631 (= lt!1962025 (map!12396 (v!48796 (underlying!10286 thiss!41921))))))

(declare-fun apply!13134 (MutLongMap!5039 (_ BitVec 64)) List!54631)

(assert (=> b!4809631 (= lt!1962032 (apply!13134 (v!48796 (underlying!10286 thiss!41921)) lt!1962033))))

(assert (=> b!4809631 (= lt!1962031 (tuple2!57349 lt!1962033 lt!1962032))))

(declare-fun c!819729 () Bool)

(declare-fun contains!18224 (List!54632 tuple2!57348) Bool)

(assert (=> b!4809631 (= c!819729 (not (contains!18224 (toList!7125 lt!1962025) lt!1962031)))))

(declare-fun lt!1962030 () Unit!141492)

(assert (=> b!4809631 (= lt!1962030 e!3004363)))

(declare-fun b!4809632 () Bool)

(assert (=> b!4809632 (= e!3004375 e!3004371)))

(declare-fun res!2045956 () Bool)

(assert (=> b!4809632 (= res!2045956 call!335661)))

(declare-fun e!3004373 () Bool)

(assert (=> b!4809632 (=> (not res!2045956) (not e!3004373))))

(declare-fun c!819732 () Bool)

(assert (=> b!4809632 (= c!819732 e!3004373)))

(declare-fun mapIsEmpty!22277 () Bool)

(assert (=> mapIsEmpty!22277 mapRes!22277))

(declare-fun b!4809633 () Bool)

(assert (=> b!4809633 (= e!3004373 call!335658)))

(assert (= (and start!497126 res!2045955) b!4809617))

(assert (= (and b!4809617 res!2045953) b!4809624))

(assert (= (and b!4809624 c!819730) b!4809631))

(assert (= (and b!4809624 (not c!819730)) b!4809626))

(assert (= (and b!4809631 c!819729) b!4809625))

(assert (= (and b!4809631 (not c!819729)) b!4809630))

(assert (= (and b!4809624 c!819731) b!4809622))

(assert (= (and b!4809624 (not c!819731)) b!4809632))

(assert (= (and b!4809622 res!2045957) b!4809629))

(assert (= (and b!4809632 res!2045956) b!4809633))

(assert (= (and b!4809632 c!819732) b!4809627))

(assert (= (and b!4809632 (not c!819732)) b!4809615))

(assert (= (or b!4809629 b!4809633) bm!335656))

(assert (= (or b!4809622 b!4809632) bm!335653))

(assert (= (or b!4809629 b!4809633) bm!335655))

(assert (= (or b!4809629 b!4809633) bm!335654))

(assert (= (and b!4809624 res!2045954) b!4809616))

(assert (= (and b!4809619 condMapEmpty!22277) mapIsEmpty!22277))

(assert (= (and b!4809619 (not condMapEmpty!22277)) mapNonEmpty!22277))

(assert (= b!4809621 b!4809619))

(assert (= b!4809628 b!4809621))

(assert (= b!4809618 b!4809628))

(assert (= (and b!4809620 ((_ is LongMap!5039) (v!48796 (underlying!10286 thiss!41921)))) b!4809618))

(assert (= b!4809623 b!4809620))

(assert (= (and start!497126 ((_ is HashMap!4923) thiss!41921)) b!4809623))

(declare-fun m!5795624 () Bool)

(assert (=> bm!335653 m!5795624))

(declare-fun m!5795626 () Bool)

(assert (=> b!4809622 m!5795626))

(declare-fun m!5795628 () Bool)

(assert (=> b!4809625 m!5795628))

(declare-fun m!5795630 () Bool)

(assert (=> b!4809625 m!5795630))

(declare-fun m!5795632 () Bool)

(assert (=> b!4809625 m!5795632))

(assert (=> b!4809625 m!5795630))

(declare-fun m!5795634 () Bool)

(assert (=> b!4809625 m!5795634))

(declare-fun m!5795636 () Bool)

(assert (=> b!4809625 m!5795636))

(declare-fun m!5795638 () Bool)

(assert (=> b!4809625 m!5795638))

(declare-fun m!5795640 () Bool)

(assert (=> bm!335656 m!5795640))

(declare-fun m!5795642 () Bool)

(assert (=> bm!335654 m!5795642))

(declare-fun m!5795644 () Bool)

(assert (=> b!4809631 m!5795644))

(declare-fun m!5795646 () Bool)

(assert (=> b!4809631 m!5795646))

(declare-fun m!5795648 () Bool)

(assert (=> b!4809631 m!5795648))

(declare-fun m!5795650 () Bool)

(assert (=> b!4809631 m!5795650))

(declare-fun m!5795652 () Bool)

(assert (=> mapNonEmpty!22277 m!5795652))

(declare-fun m!5795654 () Bool)

(assert (=> b!4809616 m!5795654))

(declare-fun m!5795656 () Bool)

(assert (=> bm!335655 m!5795656))

(declare-fun m!5795658 () Bool)

(assert (=> b!4809627 m!5795658))

(declare-fun m!5795660 () Bool)

(assert (=> b!4809624 m!5795660))

(assert (=> b!4809624 m!5795660))

(declare-fun m!5795662 () Bool)

(assert (=> b!4809624 m!5795662))

(declare-fun m!5795664 () Bool)

(assert (=> b!4809624 m!5795664))

(declare-fun m!5795666 () Bool)

(assert (=> b!4809624 m!5795666))

(assert (=> b!4809624 m!5795646))

(declare-fun m!5795668 () Bool)

(assert (=> b!4809617 m!5795668))

(declare-fun m!5795670 () Bool)

(assert (=> b!4809621 m!5795670))

(declare-fun m!5795672 () Bool)

(assert (=> b!4809621 m!5795672))

(check-sat (not b!4809617) b_and!341879 (not b!4809621) (not b!4809622) b_and!341877 (not bm!335654) tp_is_empty!33947 (not b_next!130891) (not bm!335655) (not b!4809631) (not bm!335653) (not b_next!130889) (not bm!335656) (not b!4809625) (not b!4809624) (not mapNonEmpty!22277) (not b!4809616) (not b!4809627) (not b!4809619))
(check-sat b_and!341877 b_and!341879 (not b_next!130889) (not b_next!130891))
(get-model)

(declare-fun d!1540172 () Bool)

(assert (=> d!1540172 (isDefined!10432 (getValueByKey!2479 (toList!7125 lt!1962025) lt!1962033))))

(declare-fun lt!1962037 () Unit!141492)

(declare-fun choose!34836 (List!54632 (_ BitVec 64)) Unit!141492)

(assert (=> d!1540172 (= lt!1962037 (choose!34836 (toList!7125 lt!1962025) lt!1962033))))

(declare-fun e!3004380 () Bool)

(assert (=> d!1540172 e!3004380))

(declare-fun res!2045960 () Bool)

(assert (=> d!1540172 (=> (not res!2045960) (not e!3004380))))

(declare-fun isStrictlySorted!926 (List!54632) Bool)

(assert (=> d!1540172 (= res!2045960 (isStrictlySorted!926 (toList!7125 lt!1962025)))))

(assert (=> d!1540172 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2267 (toList!7125 lt!1962025) lt!1962033) lt!1962037)))

(declare-fun b!4809636 () Bool)

(assert (=> b!4809636 (= e!3004380 (containsKey!4136 (toList!7125 lt!1962025) lt!1962033))))

(assert (= (and d!1540172 res!2045960) b!4809636))

(assert (=> d!1540172 m!5795630))

(assert (=> d!1540172 m!5795630))

(assert (=> d!1540172 m!5795634))

(declare-fun m!5795674 () Bool)

(assert (=> d!1540172 m!5795674))

(declare-fun m!5795676 () Bool)

(assert (=> d!1540172 m!5795676))

(assert (=> b!4809636 m!5795638))

(assert (=> b!4809625 d!1540172))

(declare-fun d!1540174 () Bool)

(declare-fun isEmpty!29545 (Option!13293) Bool)

(assert (=> d!1540174 (= (isDefined!10432 (getValueByKey!2479 (toList!7125 lt!1962025) lt!1962033)) (not (isEmpty!29545 (getValueByKey!2479 (toList!7125 lt!1962025) lt!1962033))))))

(declare-fun bs!1160025 () Bool)

(assert (= bs!1160025 d!1540174))

(assert (=> bs!1160025 m!5795630))

(declare-fun m!5795678 () Bool)

(assert (=> bs!1160025 m!5795678))

(assert (=> b!4809625 d!1540174))

(declare-fun d!1540176 () Bool)

(assert (=> d!1540176 (contains!18224 (toList!7125 lt!1962025) (tuple2!57349 lt!1962033 lt!1962032))))

(declare-fun lt!1962040 () Unit!141492)

(declare-fun choose!34837 (List!54632 (_ BitVec 64) List!54631) Unit!141492)

(assert (=> d!1540176 (= lt!1962040 (choose!34837 (toList!7125 lt!1962025) lt!1962033 lt!1962032))))

(declare-fun e!3004383 () Bool)

(assert (=> d!1540176 e!3004383))

(declare-fun res!2045963 () Bool)

(assert (=> d!1540176 (=> (not res!2045963) (not e!3004383))))

(assert (=> d!1540176 (= res!2045963 (isStrictlySorted!926 (toList!7125 lt!1962025)))))

(assert (=> d!1540176 (= (lemmaGetValueByKeyImpliesContainsTuple!993 (toList!7125 lt!1962025) lt!1962033 lt!1962032) lt!1962040)))

(declare-fun b!4809639 () Bool)

(assert (=> b!4809639 (= e!3004383 (= (getValueByKey!2479 (toList!7125 lt!1962025) lt!1962033) (Some!13292 lt!1962032)))))

(assert (= (and d!1540176 res!2045963) b!4809639))

(declare-fun m!5795680 () Bool)

(assert (=> d!1540176 m!5795680))

(declare-fun m!5795682 () Bool)

(assert (=> d!1540176 m!5795682))

(assert (=> d!1540176 m!5795676))

(assert (=> b!4809639 m!5795630))

(assert (=> b!4809625 d!1540176))

(declare-fun b!4809648 () Bool)

(declare-fun e!3004388 () Option!13293)

(assert (=> b!4809648 (= e!3004388 (Some!13292 (_2!31968 (h!60940 (toList!7125 lt!1962025)))))))

(declare-fun b!4809649 () Bool)

(declare-fun e!3004389 () Option!13293)

(assert (=> b!4809649 (= e!3004388 e!3004389)))

(declare-fun c!819738 () Bool)

(assert (=> b!4809649 (= c!819738 (and ((_ is Cons!54508) (toList!7125 lt!1962025)) (not (= (_1!31968 (h!60940 (toList!7125 lt!1962025))) lt!1962033))))))

(declare-fun d!1540178 () Bool)

(declare-fun c!819737 () Bool)

(assert (=> d!1540178 (= c!819737 (and ((_ is Cons!54508) (toList!7125 lt!1962025)) (= (_1!31968 (h!60940 (toList!7125 lt!1962025))) lt!1962033)))))

(assert (=> d!1540178 (= (getValueByKey!2479 (toList!7125 lt!1962025) lt!1962033) e!3004388)))

(declare-fun b!4809650 () Bool)

(assert (=> b!4809650 (= e!3004389 (getValueByKey!2479 (t!362106 (toList!7125 lt!1962025)) lt!1962033))))

(declare-fun b!4809651 () Bool)

(assert (=> b!4809651 (= e!3004389 None!13292)))

(assert (= (and d!1540178 c!819737) b!4809648))

(assert (= (and d!1540178 (not c!819737)) b!4809649))

(assert (= (and b!4809649 c!819738) b!4809650))

(assert (= (and b!4809649 (not c!819738)) b!4809651))

(declare-fun m!5795684 () Bool)

(assert (=> b!4809650 m!5795684))

(assert (=> b!4809625 d!1540178))

(declare-fun d!1540180 () Bool)

(assert (=> d!1540180 (containsKey!4136 (toList!7125 lt!1962025) lt!1962033)))

(declare-fun lt!1962043 () Unit!141492)

(declare-fun choose!34838 (List!54632 (_ BitVec 64)) Unit!141492)

(assert (=> d!1540180 (= lt!1962043 (choose!34838 (toList!7125 lt!1962025) lt!1962033))))

(declare-fun e!3004392 () Bool)

(assert (=> d!1540180 e!3004392))

(declare-fun res!2045966 () Bool)

(assert (=> d!1540180 (=> (not res!2045966) (not e!3004392))))

(assert (=> d!1540180 (= res!2045966 (isStrictlySorted!926 (toList!7125 lt!1962025)))))

(assert (=> d!1540180 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!264 (toList!7125 lt!1962025) lt!1962033) lt!1962043)))

(declare-fun b!4809654 () Bool)

(assert (=> b!4809654 (= e!3004392 (isDefined!10432 (getValueByKey!2479 (toList!7125 lt!1962025) lt!1962033)))))

(assert (= (and d!1540180 res!2045966) b!4809654))

(assert (=> d!1540180 m!5795638))

(declare-fun m!5795686 () Bool)

(assert (=> d!1540180 m!5795686))

(assert (=> d!1540180 m!5795676))

(assert (=> b!4809654 m!5795630))

(assert (=> b!4809654 m!5795630))

(assert (=> b!4809654 m!5795634))

(assert (=> b!4809625 d!1540180))

(declare-fun d!1540182 () Bool)

(declare-fun res!2045971 () Bool)

(declare-fun e!3004397 () Bool)

(assert (=> d!1540182 (=> res!2045971 e!3004397)))

(assert (=> d!1540182 (= res!2045971 (and ((_ is Cons!54508) (toList!7125 lt!1962025)) (= (_1!31968 (h!60940 (toList!7125 lt!1962025))) lt!1962033)))))

(assert (=> d!1540182 (= (containsKey!4136 (toList!7125 lt!1962025) lt!1962033) e!3004397)))

(declare-fun b!4809659 () Bool)

(declare-fun e!3004398 () Bool)

(assert (=> b!4809659 (= e!3004397 e!3004398)))

(declare-fun res!2045972 () Bool)

(assert (=> b!4809659 (=> (not res!2045972) (not e!3004398))))

(assert (=> b!4809659 (= res!2045972 (and (or (not ((_ is Cons!54508) (toList!7125 lt!1962025))) (bvsle (_1!31968 (h!60940 (toList!7125 lt!1962025))) lt!1962033)) ((_ is Cons!54508) (toList!7125 lt!1962025)) (bvslt (_1!31968 (h!60940 (toList!7125 lt!1962025))) lt!1962033)))))

(declare-fun b!4809660 () Bool)

(assert (=> b!4809660 (= e!3004398 (containsKey!4136 (t!362106 (toList!7125 lt!1962025)) lt!1962033))))

(assert (= (and d!1540182 (not res!2045971)) b!4809659))

(assert (= (and b!4809659 res!2045972) b!4809660))

(declare-fun m!5795688 () Bool)

(assert (=> b!4809660 m!5795688))

(assert (=> b!4809625 d!1540182))

(declare-fun b!4809677 () Bool)

(declare-fun e!3004413 () Option!13292)

(assert (=> b!4809677 (= e!3004413 (Some!13291 (h!60939 call!335660)))))

(declare-fun b!4809678 () Bool)

(declare-fun e!3004412 () Option!13292)

(assert (=> b!4809678 (= e!3004412 None!13291)))

(declare-fun d!1540184 () Bool)

(declare-fun e!3004409 () Bool)

(assert (=> d!1540184 e!3004409))

(declare-fun res!2045982 () Bool)

(assert (=> d!1540184 (=> res!2045982 e!3004409)))

(declare-fun e!3004410 () Bool)

(assert (=> d!1540184 (= res!2045982 e!3004410)))

(declare-fun res!2045981 () Bool)

(assert (=> d!1540184 (=> (not res!2045981) (not e!3004410))))

(declare-fun lt!1962046 () Option!13292)

(declare-fun isEmpty!29546 (Option!13292) Bool)

(assert (=> d!1540184 (= res!2045981 (isEmpty!29546 lt!1962046))))

(assert (=> d!1540184 (= lt!1962046 e!3004413)))

(declare-fun c!819744 () Bool)

(assert (=> d!1540184 (= c!819744 (and ((_ is Cons!54507) call!335660) (= (_1!31967 (h!60939 call!335660)) key!1652)))))

(declare-fun noDuplicateKeys!2386 (List!54631) Bool)

(assert (=> d!1540184 (noDuplicateKeys!2386 call!335660)))

(assert (=> d!1540184 (= (getPair!961 call!335660 key!1652) lt!1962046)))

(declare-fun b!4809679 () Bool)

(assert (=> b!4809679 (= e!3004413 e!3004412)))

(declare-fun c!819743 () Bool)

(assert (=> b!4809679 (= c!819743 ((_ is Cons!54507) call!335660))))

(declare-fun b!4809680 () Bool)

(assert (=> b!4809680 (= e!3004412 (getPair!961 (t!362105 call!335660) key!1652))))

(declare-fun b!4809681 () Bool)

(declare-fun e!3004411 () Bool)

(declare-fun contains!18225 (List!54631 tuple2!57346) Bool)

(declare-fun get!18645 (Option!13292) tuple2!57346)

(assert (=> b!4809681 (= e!3004411 (contains!18225 call!335660 (get!18645 lt!1962046)))))

(declare-fun b!4809682 () Bool)

(declare-fun containsKey!4137 (List!54631 K!16114) Bool)

(assert (=> b!4809682 (= e!3004410 (not (containsKey!4137 call!335660 key!1652)))))

(declare-fun b!4809683 () Bool)

(declare-fun res!2045984 () Bool)

(assert (=> b!4809683 (=> (not res!2045984) (not e!3004411))))

(assert (=> b!4809683 (= res!2045984 (= (_1!31967 (get!18645 lt!1962046)) key!1652))))

(declare-fun b!4809684 () Bool)

(assert (=> b!4809684 (= e!3004409 e!3004411)))

(declare-fun res!2045983 () Bool)

(assert (=> b!4809684 (=> (not res!2045983) (not e!3004411))))

(assert (=> b!4809684 (= res!2045983 (isDefined!10431 lt!1962046))))

(assert (= (and d!1540184 c!819744) b!4809677))

(assert (= (and d!1540184 (not c!819744)) b!4809679))

(assert (= (and b!4809679 c!819743) b!4809680))

(assert (= (and b!4809679 (not c!819743)) b!4809678))

(assert (= (and d!1540184 res!2045981) b!4809682))

(assert (= (and d!1540184 (not res!2045982)) b!4809684))

(assert (= (and b!4809684 res!2045983) b!4809683))

(assert (= (and b!4809683 res!2045984) b!4809681))

(declare-fun m!5795690 () Bool)

(assert (=> b!4809682 m!5795690))

(declare-fun m!5795692 () Bool)

(assert (=> b!4809681 m!5795692))

(assert (=> b!4809681 m!5795692))

(declare-fun m!5795694 () Bool)

(assert (=> b!4809681 m!5795694))

(declare-fun m!5795696 () Bool)

(assert (=> b!4809680 m!5795696))

(declare-fun m!5795698 () Bool)

(assert (=> d!1540184 m!5795698))

(declare-fun m!5795700 () Bool)

(assert (=> d!1540184 m!5795700))

(declare-fun m!5795702 () Bool)

(assert (=> b!4809684 m!5795702))

(assert (=> b!4809683 m!5795692))

(assert (=> bm!335655 d!1540184))

(declare-fun d!1540186 () Bool)

(assert (=> d!1540186 (= (array_inv!5967 (_keys!5381 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) (bvsge (size!36509 (_keys!5381 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4809621 d!1540186))

(declare-fun d!1540188 () Bool)

(assert (=> d!1540188 (= (array_inv!5968 (_values!5352 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) (bvsge (size!36510 (_values!5352 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4809621 d!1540188))

(declare-fun bs!1160026 () Bool)

(declare-fun d!1540190 () Bool)

(assert (= bs!1160026 (and d!1540190 b!4809631)))

(declare-fun lambda!233703 () Int)

(assert (=> bs!1160026 (= lambda!233703 lambda!233700)))

(assert (=> d!1540190 (contains!18222 (extractMap!2534 (toList!7125 lt!1962027)) key!1652)))

(declare-fun lt!1962049 () Unit!141492)

(declare-fun choose!34839 (ListLongMap!5579 K!16114 Hashable!7050) Unit!141492)

(assert (=> d!1540190 (= lt!1962049 (choose!34839 lt!1962027 key!1652 (hashF!13318 thiss!41921)))))

(declare-fun forall!12391 (List!54632 Int) Bool)

(assert (=> d!1540190 (forall!12391 (toList!7125 lt!1962027) lambda!233703)))

(assert (=> d!1540190 (= (lemmaInLongMapThenInGenericMap!215 lt!1962027 key!1652 (hashF!13318 thiss!41921)) lt!1962049)))

(declare-fun bs!1160027 () Bool)

(assert (= bs!1160027 d!1540190))

(assert (=> bs!1160027 m!5795660))

(assert (=> bs!1160027 m!5795660))

(assert (=> bs!1160027 m!5795662))

(declare-fun m!5795704 () Bool)

(assert (=> bs!1160027 m!5795704))

(declare-fun m!5795706 () Bool)

(assert (=> bs!1160027 m!5795706))

(assert (=> b!4809627 d!1540190))

(declare-fun bs!1160028 () Bool)

(declare-fun d!1540192 () Bool)

(assert (= bs!1160028 (and d!1540192 b!4809631)))

(declare-fun lambda!233706 () Int)

(assert (=> bs!1160028 (= lambda!233706 lambda!233700)))

(declare-fun bs!1160029 () Bool)

(assert (= bs!1160029 (and d!1540192 d!1540190)))

(assert (=> bs!1160029 (= lambda!233706 lambda!233703)))

(declare-fun e!3004416 () Bool)

(assert (=> d!1540192 e!3004416))

(declare-fun res!2045987 () Bool)

(assert (=> d!1540192 (=> (not res!2045987) (not e!3004416))))

(assert (=> d!1540192 (= res!2045987 (contains!18221 lt!1962027 (hash!5120 (hashF!13318 thiss!41921) key!1652)))))

(declare-fun lt!1962052 () Unit!141492)

(declare-fun choose!34840 (ListLongMap!5579 K!16114 Hashable!7050) Unit!141492)

(assert (=> d!1540192 (= lt!1962052 (choose!34840 lt!1962027 key!1652 (hashF!13318 thiss!41921)))))

(assert (=> d!1540192 (forall!12391 (toList!7125 lt!1962027) lambda!233706)))

(assert (=> d!1540192 (= (lemmaInGenericMapThenInLongMap!385 lt!1962027 key!1652 (hashF!13318 thiss!41921)) lt!1962052)))

(declare-fun b!4809687 () Bool)

(assert (=> b!4809687 (= e!3004416 (isDefined!10431 (getPair!961 (apply!13133 lt!1962027 (hash!5120 (hashF!13318 thiss!41921) key!1652)) key!1652)))))

(assert (= (and d!1540192 res!2045987) b!4809687))

(assert (=> d!1540192 m!5795666))

(assert (=> d!1540192 m!5795666))

(declare-fun m!5795708 () Bool)

(assert (=> d!1540192 m!5795708))

(declare-fun m!5795710 () Bool)

(assert (=> d!1540192 m!5795710))

(declare-fun m!5795712 () Bool)

(assert (=> d!1540192 m!5795712))

(assert (=> b!4809687 m!5795666))

(assert (=> b!4809687 m!5795666))

(declare-fun m!5795714 () Bool)

(assert (=> b!4809687 m!5795714))

(assert (=> b!4809687 m!5795714))

(declare-fun m!5795716 () Bool)

(assert (=> b!4809687 m!5795716))

(assert (=> b!4809687 m!5795716))

(declare-fun m!5795718 () Bool)

(assert (=> b!4809687 m!5795718))

(assert (=> b!4809622 d!1540192))

(declare-fun d!1540194 () Bool)

(declare-fun e!3004421 () Bool)

(assert (=> d!1540194 e!3004421))

(declare-fun res!2045990 () Bool)

(assert (=> d!1540194 (=> res!2045990 e!3004421)))

(declare-fun lt!1962061 () Bool)

(assert (=> d!1540194 (= res!2045990 (not lt!1962061))))

(declare-fun lt!1962062 () Bool)

(assert (=> d!1540194 (= lt!1962061 lt!1962062)))

(declare-fun lt!1962063 () Unit!141492)

(declare-fun e!3004422 () Unit!141492)

(assert (=> d!1540194 (= lt!1962063 e!3004422)))

(declare-fun c!819747 () Bool)

(assert (=> d!1540194 (= c!819747 lt!1962062)))

(assert (=> d!1540194 (= lt!1962062 (containsKey!4136 (toList!7125 lt!1962027) lt!1962033))))

(assert (=> d!1540194 (= (contains!18221 lt!1962027 lt!1962033) lt!1962061)))

(declare-fun b!4809694 () Bool)

(declare-fun lt!1962064 () Unit!141492)

(assert (=> b!4809694 (= e!3004422 lt!1962064)))

(assert (=> b!4809694 (= lt!1962064 (lemmaContainsKeyImpliesGetValueByKeyDefined!2267 (toList!7125 lt!1962027) lt!1962033))))

(assert (=> b!4809694 (isDefined!10432 (getValueByKey!2479 (toList!7125 lt!1962027) lt!1962033))))

(declare-fun b!4809695 () Bool)

(declare-fun Unit!141499 () Unit!141492)

(assert (=> b!4809695 (= e!3004422 Unit!141499)))

(declare-fun b!4809696 () Bool)

(assert (=> b!4809696 (= e!3004421 (isDefined!10432 (getValueByKey!2479 (toList!7125 lt!1962027) lt!1962033)))))

(assert (= (and d!1540194 c!819747) b!4809694))

(assert (= (and d!1540194 (not c!819747)) b!4809695))

(assert (= (and d!1540194 (not res!2045990)) b!4809696))

(declare-fun m!5795720 () Bool)

(assert (=> d!1540194 m!5795720))

(declare-fun m!5795722 () Bool)

(assert (=> b!4809694 m!5795722))

(declare-fun m!5795724 () Bool)

(assert (=> b!4809694 m!5795724))

(assert (=> b!4809694 m!5795724))

(declare-fun m!5795726 () Bool)

(assert (=> b!4809694 m!5795726))

(assert (=> b!4809696 m!5795724))

(assert (=> b!4809696 m!5795724))

(assert (=> b!4809696 m!5795726))

(assert (=> bm!335653 d!1540194))

(declare-fun b!4809715 () Bool)

(declare-fun e!3004436 () Unit!141492)

(declare-fun e!3004440 () Unit!141492)

(assert (=> b!4809715 (= e!3004436 e!3004440)))

(declare-fun c!819754 () Bool)

(declare-fun call!335664 () Bool)

(assert (=> b!4809715 (= c!819754 call!335664)))

(declare-fun b!4809716 () Bool)

(declare-fun Unit!141500 () Unit!141492)

(assert (=> b!4809716 (= e!3004440 Unit!141500)))

(declare-fun b!4809717 () Bool)

(assert (=> b!4809717 false))

(declare-fun lt!1962088 () Unit!141492)

(declare-fun lt!1962085 () Unit!141492)

(assert (=> b!4809717 (= lt!1962088 lt!1962085)))

(declare-fun containsKey!4138 (List!54631 K!16114) Bool)

(assert (=> b!4809717 (containsKey!4138 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1119 (List!54631 K!16114) Unit!141492)

(assert (=> b!4809717 (= lt!1962085 (lemmaInGetKeysListThenContainsKey!1119 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027))) key!1652))))

(declare-fun Unit!141501 () Unit!141492)

(assert (=> b!4809717 (= e!3004440 Unit!141501)))

(declare-fun b!4809718 () Bool)

(declare-fun lt!1962086 () Unit!141492)

(assert (=> b!4809718 (= e!3004436 lt!1962086)))

(declare-fun lt!1962087 () Unit!141492)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2268 (List!54631 K!16114) Unit!141492)

(assert (=> b!4809718 (= lt!1962087 (lemmaContainsKeyImpliesGetValueByKeyDefined!2268 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027))) key!1652))))

(declare-datatypes ((Option!13294 0))(
  ( (None!13293) (Some!13293 (v!48801 V!16360)) )
))
(declare-fun isDefined!10433 (Option!13294) Bool)

(declare-fun getValueByKey!2480 (List!54631 K!16114) Option!13294)

(assert (=> b!4809718 (isDefined!10433 (getValueByKey!2480 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027))) key!1652))))

(declare-fun lt!1962084 () Unit!141492)

(assert (=> b!4809718 (= lt!1962084 lt!1962087)))

(declare-fun lemmaInListThenGetKeysListContains!1114 (List!54631 K!16114) Unit!141492)

(assert (=> b!4809718 (= lt!1962086 (lemmaInListThenGetKeysListContains!1114 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027))) key!1652))))

(assert (=> b!4809718 call!335664))

(declare-fun b!4809719 () Bool)

(declare-datatypes ((List!54633 0))(
  ( (Nil!54509) (Cons!54509 (h!60941 K!16114) (t!362109 List!54633)) )
))
(declare-fun e!3004439 () List!54633)

(declare-fun keys!19968 (ListMap!6565) List!54633)

(assert (=> b!4809719 (= e!3004439 (keys!19968 (extractMap!2534 (toList!7125 lt!1962027))))))

(declare-fun b!4809720 () Bool)

(declare-fun getKeysList!1119 (List!54631) List!54633)

(assert (=> b!4809720 (= e!3004439 (getKeysList!1119 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027)))))))

(declare-fun d!1540196 () Bool)

(declare-fun e!3004437 () Bool)

(assert (=> d!1540196 e!3004437))

(declare-fun res!2045998 () Bool)

(assert (=> d!1540196 (=> res!2045998 e!3004437)))

(declare-fun e!3004435 () Bool)

(assert (=> d!1540196 (= res!2045998 e!3004435)))

(declare-fun res!2045999 () Bool)

(assert (=> d!1540196 (=> (not res!2045999) (not e!3004435))))

(declare-fun lt!1962083 () Bool)

(assert (=> d!1540196 (= res!2045999 (not lt!1962083))))

(declare-fun lt!1962081 () Bool)

(assert (=> d!1540196 (= lt!1962083 lt!1962081)))

(declare-fun lt!1962082 () Unit!141492)

(assert (=> d!1540196 (= lt!1962082 e!3004436)))

(declare-fun c!819756 () Bool)

(assert (=> d!1540196 (= c!819756 lt!1962081)))

(assert (=> d!1540196 (= lt!1962081 (containsKey!4138 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027))) key!1652))))

(assert (=> d!1540196 (= (contains!18222 (extractMap!2534 (toList!7125 lt!1962027)) key!1652) lt!1962083)))

(declare-fun b!4809721 () Bool)

(declare-fun e!3004438 () Bool)

(assert (=> b!4809721 (= e!3004437 e!3004438)))

(declare-fun res!2045997 () Bool)

(assert (=> b!4809721 (=> (not res!2045997) (not e!3004438))))

(assert (=> b!4809721 (= res!2045997 (isDefined!10433 (getValueByKey!2480 (toList!7126 (extractMap!2534 (toList!7125 lt!1962027))) key!1652)))))

(declare-fun bm!335659 () Bool)

(declare-fun contains!18226 (List!54633 K!16114) Bool)

(assert (=> bm!335659 (= call!335664 (contains!18226 e!3004439 key!1652))))

(declare-fun c!819755 () Bool)

(assert (=> bm!335659 (= c!819755 c!819756)))

(declare-fun b!4809722 () Bool)

(assert (=> b!4809722 (= e!3004435 (not (contains!18226 (keys!19968 (extractMap!2534 (toList!7125 lt!1962027))) key!1652)))))

(declare-fun b!4809723 () Bool)

(assert (=> b!4809723 (= e!3004438 (contains!18226 (keys!19968 (extractMap!2534 (toList!7125 lt!1962027))) key!1652))))

(assert (= (and d!1540196 c!819756) b!4809718))

(assert (= (and d!1540196 (not c!819756)) b!4809715))

(assert (= (and b!4809715 c!819754) b!4809717))

(assert (= (and b!4809715 (not c!819754)) b!4809716))

(assert (= (or b!4809718 b!4809715) bm!335659))

(assert (= (and bm!335659 c!819755) b!4809720))

(assert (= (and bm!335659 (not c!819755)) b!4809719))

(assert (= (and d!1540196 res!2045999) b!4809722))

(assert (= (and d!1540196 (not res!2045998)) b!4809721))

(assert (= (and b!4809721 res!2045997) b!4809723))

(assert (=> b!4809722 m!5795660))

(declare-fun m!5795728 () Bool)

(assert (=> b!4809722 m!5795728))

(assert (=> b!4809722 m!5795728))

(declare-fun m!5795730 () Bool)

(assert (=> b!4809722 m!5795730))

(declare-fun m!5795732 () Bool)

(assert (=> b!4809721 m!5795732))

(assert (=> b!4809721 m!5795732))

(declare-fun m!5795734 () Bool)

(assert (=> b!4809721 m!5795734))

(assert (=> b!4809723 m!5795660))

(assert (=> b!4809723 m!5795728))

(assert (=> b!4809723 m!5795728))

(assert (=> b!4809723 m!5795730))

(declare-fun m!5795736 () Bool)

(assert (=> b!4809718 m!5795736))

(assert (=> b!4809718 m!5795732))

(assert (=> b!4809718 m!5795732))

(assert (=> b!4809718 m!5795734))

(declare-fun m!5795738 () Bool)

(assert (=> b!4809718 m!5795738))

(declare-fun m!5795740 () Bool)

(assert (=> b!4809720 m!5795740))

(declare-fun m!5795742 () Bool)

(assert (=> d!1540196 m!5795742))

(assert (=> b!4809719 m!5795660))

(assert (=> b!4809719 m!5795728))

(assert (=> b!4809717 m!5795742))

(declare-fun m!5795744 () Bool)

(assert (=> b!4809717 m!5795744))

(declare-fun m!5795746 () Bool)

(assert (=> bm!335659 m!5795746))

(assert (=> b!4809624 d!1540196))

(declare-fun d!1540198 () Bool)

(declare-fun hash!5121 (Hashable!7050 K!16114) (_ BitVec 64))

(assert (=> d!1540198 (= (hash!5120 (hashF!13318 thiss!41921) key!1652) (hash!5121 (hashF!13318 thiss!41921) key!1652))))

(declare-fun bs!1160030 () Bool)

(assert (= bs!1160030 d!1540198))

(declare-fun m!5795748 () Bool)

(assert (=> bs!1160030 m!5795748))

(assert (=> b!4809624 d!1540198))

(declare-fun bs!1160031 () Bool)

(declare-fun d!1540200 () Bool)

(assert (= bs!1160031 (and d!1540200 b!4809631)))

(declare-fun lambda!233709 () Int)

(assert (=> bs!1160031 (= lambda!233709 lambda!233700)))

(declare-fun bs!1160032 () Bool)

(assert (= bs!1160032 (and d!1540200 d!1540190)))

(assert (=> bs!1160032 (= lambda!233709 lambda!233703)))

(declare-fun bs!1160033 () Bool)

(assert (= bs!1160033 (and d!1540200 d!1540192)))

(assert (=> bs!1160033 (= lambda!233709 lambda!233706)))

(declare-fun lt!1962091 () ListMap!6565)

(declare-fun invariantList!1773 (List!54631) Bool)

(assert (=> d!1540200 (invariantList!1773 (toList!7126 lt!1962091))))

(declare-fun e!3004443 () ListMap!6565)

(assert (=> d!1540200 (= lt!1962091 e!3004443)))

(declare-fun c!819759 () Bool)

(assert (=> d!1540200 (= c!819759 ((_ is Cons!54508) (toList!7125 lt!1962027)))))

(assert (=> d!1540200 (forall!12391 (toList!7125 lt!1962027) lambda!233709)))

(assert (=> d!1540200 (= (extractMap!2534 (toList!7125 lt!1962027)) lt!1962091)))

(declare-fun b!4809728 () Bool)

(declare-fun addToMapMapFromBucket!1750 (List!54631 ListMap!6565) ListMap!6565)

(assert (=> b!4809728 (= e!3004443 (addToMapMapFromBucket!1750 (_2!31968 (h!60940 (toList!7125 lt!1962027))) (extractMap!2534 (t!362106 (toList!7125 lt!1962027)))))))

(declare-fun b!4809729 () Bool)

(assert (=> b!4809729 (= e!3004443 (ListMap!6566 Nil!54507))))

(assert (= (and d!1540200 c!819759) b!4809728))

(assert (= (and d!1540200 (not c!819759)) b!4809729))

(declare-fun m!5795750 () Bool)

(assert (=> d!1540200 m!5795750))

(declare-fun m!5795752 () Bool)

(assert (=> d!1540200 m!5795752))

(declare-fun m!5795754 () Bool)

(assert (=> b!4809728 m!5795754))

(assert (=> b!4809728 m!5795754))

(declare-fun m!5795756 () Bool)

(assert (=> b!4809728 m!5795756))

(assert (=> b!4809624 d!1540200))

(declare-fun d!1540202 () Bool)

(declare-fun map!12397 (LongMapFixedSize!10078) ListLongMap!5579)

(assert (=> d!1540202 (= (map!12396 (v!48796 (underlying!10286 thiss!41921))) (map!12397 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921))))))))

(declare-fun bs!1160034 () Bool)

(assert (= bs!1160034 d!1540202))

(declare-fun m!5795758 () Bool)

(assert (=> bs!1160034 m!5795758))

(assert (=> b!4809624 d!1540202))

(declare-fun d!1540204 () Bool)

(declare-fun lt!1962094 () Bool)

(assert (=> d!1540204 (= lt!1962094 (contains!18221 (map!12396 (v!48796 (underlying!10286 thiss!41921))) lt!1962033))))

(declare-fun contains!18227 (LongMapFixedSize!10078 (_ BitVec 64)) Bool)

(assert (=> d!1540204 (= lt!1962094 (contains!18227 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))) lt!1962033))))

(assert (=> d!1540204 (valid!4060 (v!48796 (underlying!10286 thiss!41921)))))

(assert (=> d!1540204 (= (contains!18223 (v!48796 (underlying!10286 thiss!41921)) lt!1962033) lt!1962094)))

(declare-fun bs!1160035 () Bool)

(assert (= bs!1160035 d!1540204))

(assert (=> bs!1160035 m!5795646))

(assert (=> bs!1160035 m!5795646))

(declare-fun m!5795760 () Bool)

(assert (=> bs!1160035 m!5795760))

(declare-fun m!5795762 () Bool)

(assert (=> bs!1160035 m!5795762))

(assert (=> bs!1160035 m!5795654))

(assert (=> b!4809624 d!1540204))

(declare-fun d!1540206 () Bool)

(declare-fun get!18646 (Option!13293) List!54631)

(assert (=> d!1540206 (= (apply!13133 lt!1962027 lt!1962033) (get!18646 (getValueByKey!2479 (toList!7125 lt!1962027) lt!1962033)))))

(declare-fun bs!1160036 () Bool)

(assert (= bs!1160036 d!1540206))

(assert (=> bs!1160036 m!5795724))

(assert (=> bs!1160036 m!5795724))

(declare-fun m!5795764 () Bool)

(assert (=> bs!1160036 m!5795764))

(assert (=> bm!335656 d!1540206))

(declare-fun d!1540208 () Bool)

(assert (=> d!1540208 (= (isDefined!10431 call!335659) (not (isEmpty!29546 call!335659)))))

(declare-fun bs!1160037 () Bool)

(assert (= bs!1160037 d!1540208))

(declare-fun m!5795766 () Bool)

(assert (=> bs!1160037 m!5795766))

(assert (=> bm!335654 d!1540208))

(declare-fun d!1540210 () Bool)

(declare-fun dynLambda!22130 (Int tuple2!57348) Bool)

(assert (=> d!1540210 (dynLambda!22130 lambda!233700 lt!1962031)))

(declare-fun lt!1962097 () Unit!141492)

(declare-fun choose!34841 (List!54632 Int tuple2!57348) Unit!141492)

(assert (=> d!1540210 (= lt!1962097 (choose!34841 (toList!7125 lt!1962025) lambda!233700 lt!1962031))))

(declare-fun e!3004446 () Bool)

(assert (=> d!1540210 e!3004446))

(declare-fun res!2046002 () Bool)

(assert (=> d!1540210 (=> (not res!2046002) (not e!3004446))))

(assert (=> d!1540210 (= res!2046002 (forall!12391 (toList!7125 lt!1962025) lambda!233700))))

(assert (=> d!1540210 (= (forallContained!4262 (toList!7125 lt!1962025) lambda!233700 lt!1962031) lt!1962097)))

(declare-fun b!4809732 () Bool)

(assert (=> b!4809732 (= e!3004446 (contains!18224 (toList!7125 lt!1962025) lt!1962031))))

(assert (= (and d!1540210 res!2046002) b!4809732))

(declare-fun b_lambda!188189 () Bool)

(assert (=> (not b_lambda!188189) (not d!1540210)))

(declare-fun m!5795768 () Bool)

(assert (=> d!1540210 m!5795768))

(declare-fun m!5795770 () Bool)

(assert (=> d!1540210 m!5795770))

(declare-fun m!5795772 () Bool)

(assert (=> d!1540210 m!5795772))

(assert (=> b!4809732 m!5795650))

(assert (=> b!4809631 d!1540210))

(assert (=> b!4809631 d!1540202))

(declare-fun d!1540212 () Bool)

(declare-fun e!3004449 () Bool)

(assert (=> d!1540212 e!3004449))

(declare-fun c!819762 () Bool)

(assert (=> d!1540212 (= c!819762 (contains!18223 (v!48796 (underlying!10286 thiss!41921)) lt!1962033))))

(declare-fun lt!1962100 () List!54631)

(declare-fun apply!13135 (LongMapFixedSize!10078 (_ BitVec 64)) List!54631)

(assert (=> d!1540212 (= lt!1962100 (apply!13135 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))) lt!1962033))))

(assert (=> d!1540212 (valid!4060 (v!48796 (underlying!10286 thiss!41921)))))

(assert (=> d!1540212 (= (apply!13134 (v!48796 (underlying!10286 thiss!41921)) lt!1962033) lt!1962100)))

(declare-fun b!4809737 () Bool)

(assert (=> b!4809737 (= e!3004449 (= lt!1962100 (get!18646 (getValueByKey!2479 (toList!7125 (map!12396 (v!48796 (underlying!10286 thiss!41921)))) lt!1962033))))))

(declare-fun b!4809738 () Bool)

(declare-fun dynLambda!22131 (Int (_ BitVec 64)) List!54631)

(assert (=> b!4809738 (= e!3004449 (= lt!1962100 (dynLambda!22131 (defaultEntry!5457 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921))))) lt!1962033)))))

(assert (=> b!4809738 ((_ is LongMap!5039) (v!48796 (underlying!10286 thiss!41921)))))

(assert (= (and d!1540212 c!819762) b!4809737))

(assert (= (and d!1540212 (not c!819762)) b!4809738))

(declare-fun b_lambda!188191 () Bool)

(assert (=> (not b_lambda!188191) (not b!4809738)))

(declare-fun t!362108 () Bool)

(declare-fun tb!257527 () Bool)

(assert (=> (and b!4809621 (= (defaultEntry!5457 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921))))) (defaultEntry!5457 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921)))))) t!362108) tb!257527))

(assert (=> b!4809738 t!362108))

(declare-fun result!319594 () Bool)

(declare-fun b_and!341881 () Bool)

(assert (= b_and!341877 (and (=> t!362108 result!319594) b_and!341881)))

(assert (=> d!1540212 m!5795664))

(declare-fun m!5795774 () Bool)

(assert (=> d!1540212 m!5795774))

(assert (=> d!1540212 m!5795654))

(assert (=> b!4809737 m!5795646))

(declare-fun m!5795776 () Bool)

(assert (=> b!4809737 m!5795776))

(assert (=> b!4809737 m!5795776))

(declare-fun m!5795778 () Bool)

(assert (=> b!4809737 m!5795778))

(declare-fun m!5795780 () Bool)

(assert (=> b!4809738 m!5795780))

(assert (=> b!4809631 d!1540212))

(declare-fun d!1540214 () Bool)

(declare-fun lt!1962103 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9773 (List!54632) (InoxSet tuple2!57348))

(assert (=> d!1540214 (= lt!1962103 (select (content!9773 (toList!7125 lt!1962025)) lt!1962031))))

(declare-fun e!3004455 () Bool)

(assert (=> d!1540214 (= lt!1962103 e!3004455)))

(declare-fun res!2046008 () Bool)

(assert (=> d!1540214 (=> (not res!2046008) (not e!3004455))))

(assert (=> d!1540214 (= res!2046008 ((_ is Cons!54508) (toList!7125 lt!1962025)))))

(assert (=> d!1540214 (= (contains!18224 (toList!7125 lt!1962025) lt!1962031) lt!1962103)))

(declare-fun b!4809743 () Bool)

(declare-fun e!3004454 () Bool)

(assert (=> b!4809743 (= e!3004455 e!3004454)))

(declare-fun res!2046007 () Bool)

(assert (=> b!4809743 (=> res!2046007 e!3004454)))

(assert (=> b!4809743 (= res!2046007 (= (h!60940 (toList!7125 lt!1962025)) lt!1962031))))

(declare-fun b!4809744 () Bool)

(assert (=> b!4809744 (= e!3004454 (contains!18224 (t!362106 (toList!7125 lt!1962025)) lt!1962031))))

(assert (= (and d!1540214 res!2046008) b!4809743))

(assert (= (and b!4809743 (not res!2046007)) b!4809744))

(declare-fun m!5795782 () Bool)

(assert (=> d!1540214 m!5795782))

(declare-fun m!5795784 () Bool)

(assert (=> d!1540214 m!5795784))

(declare-fun m!5795786 () Bool)

(assert (=> b!4809744 m!5795786))

(assert (=> b!4809631 d!1540214))

(declare-fun bs!1160038 () Bool)

(declare-fun b!4809749 () Bool)

(assert (= bs!1160038 (and b!4809749 b!4809631)))

(declare-fun lambda!233712 () Int)

(assert (=> bs!1160038 (= lambda!233712 lambda!233700)))

(declare-fun bs!1160039 () Bool)

(assert (= bs!1160039 (and b!4809749 d!1540190)))

(assert (=> bs!1160039 (= lambda!233712 lambda!233703)))

(declare-fun bs!1160040 () Bool)

(assert (= bs!1160040 (and b!4809749 d!1540192)))

(assert (=> bs!1160040 (= lambda!233712 lambda!233706)))

(declare-fun bs!1160041 () Bool)

(assert (= bs!1160041 (and b!4809749 d!1540200)))

(assert (=> bs!1160041 (= lambda!233712 lambda!233709)))

(declare-fun d!1540216 () Bool)

(declare-fun res!2046013 () Bool)

(declare-fun e!3004458 () Bool)

(assert (=> d!1540216 (=> (not res!2046013) (not e!3004458))))

(assert (=> d!1540216 (= res!2046013 (valid!4060 (v!48796 (underlying!10286 thiss!41921))))))

(assert (=> d!1540216 (= (valid!4061 thiss!41921) e!3004458)))

(declare-fun res!2046014 () Bool)

(assert (=> b!4809749 (=> (not res!2046014) (not e!3004458))))

(assert (=> b!4809749 (= res!2046014 (forall!12391 (toList!7125 (map!12396 (v!48796 (underlying!10286 thiss!41921)))) lambda!233712))))

(declare-fun b!4809750 () Bool)

(declare-fun allKeysSameHashInMap!2406 (ListLongMap!5579 Hashable!7050) Bool)

(assert (=> b!4809750 (= e!3004458 (allKeysSameHashInMap!2406 (map!12396 (v!48796 (underlying!10286 thiss!41921))) (hashF!13318 thiss!41921)))))

(assert (= (and d!1540216 res!2046013) b!4809749))

(assert (= (and b!4809749 res!2046014) b!4809750))

(assert (=> d!1540216 m!5795654))

(assert (=> b!4809749 m!5795646))

(declare-fun m!5795788 () Bool)

(assert (=> b!4809749 m!5795788))

(assert (=> b!4809750 m!5795646))

(assert (=> b!4809750 m!5795646))

(declare-fun m!5795790 () Bool)

(assert (=> b!4809750 m!5795790))

(assert (=> b!4809617 d!1540216))

(declare-fun d!1540218 () Bool)

(declare-fun valid!4062 (LongMapFixedSize!10078) Bool)

(assert (=> d!1540218 (= (valid!4060 (v!48796 (underlying!10286 thiss!41921))) (valid!4062 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921))))))))

(declare-fun bs!1160042 () Bool)

(assert (= bs!1160042 d!1540218))

(declare-fun m!5795792 () Bool)

(assert (=> bs!1160042 m!5795792))

(assert (=> b!4809616 d!1540218))

(declare-fun b!4809755 () Bool)

(declare-fun e!3004461 () Bool)

(declare-fun tp!1360283 () Bool)

(declare-fun tp_is_empty!33949 () Bool)

(assert (=> b!4809755 (= e!3004461 (and tp_is_empty!33947 tp_is_empty!33949 tp!1360283))))

(assert (=> b!4809619 (= tp!1360278 e!3004461)))

(assert (= (and b!4809619 ((_ is Cons!54507) mapDefault!22277)) b!4809755))

(declare-fun tp!1360284 () Bool)

(declare-fun e!3004462 () Bool)

(declare-fun b!4809756 () Bool)

(assert (=> b!4809756 (= e!3004462 (and tp_is_empty!33947 tp_is_empty!33949 tp!1360284))))

(assert (=> b!4809621 (= tp!1360276 e!3004462)))

(assert (= (and b!4809621 ((_ is Cons!54507) (zeroValue!5327 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921))))))) b!4809756))

(declare-fun tp!1360285 () Bool)

(declare-fun b!4809757 () Bool)

(declare-fun e!3004463 () Bool)

(assert (=> b!4809757 (= e!3004463 (and tp_is_empty!33947 tp_is_empty!33949 tp!1360285))))

(assert (=> b!4809621 (= tp!1360275 e!3004463)))

(assert (= (and b!4809621 ((_ is Cons!54507) (minValue!5327 (v!48795 (underlying!10285 (v!48796 (underlying!10286 thiss!41921))))))) b!4809757))

(declare-fun b!4809765 () Bool)

(declare-fun tp!1360292 () Bool)

(declare-fun e!3004468 () Bool)

(assert (=> b!4809765 (= e!3004468 (and tp_is_empty!33947 tp_is_empty!33949 tp!1360292))))

(declare-fun condMapEmpty!22280 () Bool)

(declare-fun mapDefault!22280 () List!54631)

(assert (=> mapNonEmpty!22277 (= condMapEmpty!22280 (= mapRest!22277 ((as const (Array (_ BitVec 32) List!54631)) mapDefault!22280)))))

(declare-fun mapRes!22280 () Bool)

(assert (=> mapNonEmpty!22277 (= tp!1360277 (and e!3004468 mapRes!22280))))

(declare-fun mapNonEmpty!22280 () Bool)

(declare-fun tp!1360293 () Bool)

(declare-fun e!3004469 () Bool)

(assert (=> mapNonEmpty!22280 (= mapRes!22280 (and tp!1360293 e!3004469))))

(declare-fun mapKey!22280 () (_ BitVec 32))

(declare-fun mapRest!22280 () (Array (_ BitVec 32) List!54631))

(declare-fun mapValue!22280 () List!54631)

(assert (=> mapNonEmpty!22280 (= mapRest!22277 (store mapRest!22280 mapKey!22280 mapValue!22280))))

(declare-fun b!4809764 () Bool)

(declare-fun tp!1360294 () Bool)

(assert (=> b!4809764 (= e!3004469 (and tp_is_empty!33947 tp_is_empty!33949 tp!1360294))))

(declare-fun mapIsEmpty!22280 () Bool)

(assert (=> mapIsEmpty!22280 mapRes!22280))

(assert (= (and mapNonEmpty!22277 condMapEmpty!22280) mapIsEmpty!22280))

(assert (= (and mapNonEmpty!22277 (not condMapEmpty!22280)) mapNonEmpty!22280))

(assert (= (and mapNonEmpty!22280 ((_ is Cons!54507) mapValue!22280)) b!4809764))

(assert (= (and mapNonEmpty!22277 ((_ is Cons!54507) mapDefault!22280)) b!4809765))

(declare-fun m!5795794 () Bool)

(assert (=> mapNonEmpty!22280 m!5795794))

(declare-fun b!4809766 () Bool)

(declare-fun tp!1360295 () Bool)

(declare-fun e!3004470 () Bool)

(assert (=> b!4809766 (= e!3004470 (and tp_is_empty!33947 tp_is_empty!33949 tp!1360295))))

(assert (=> mapNonEmpty!22277 (= tp!1360279 e!3004470)))

(assert (= (and mapNonEmpty!22277 ((_ is Cons!54507) mapValue!22277)) b!4809766))

(declare-fun b_lambda!188193 () Bool)

(assert (= b_lambda!188189 (or b!4809631 b_lambda!188193)))

(declare-fun bs!1160043 () Bool)

(declare-fun d!1540220 () Bool)

(assert (= bs!1160043 (and d!1540220 b!4809631)))

(assert (=> bs!1160043 (= (dynLambda!22130 lambda!233700 lt!1962031) (noDuplicateKeys!2386 (_2!31968 lt!1962031)))))

(declare-fun m!5795796 () Bool)

(assert (=> bs!1160043 m!5795796))

(assert (=> d!1540210 d!1540220))

(declare-fun b_lambda!188195 () Bool)

(assert (= b_lambda!188191 (or (and b!4809621 b_free!130099) b_lambda!188195)))

(check-sat (not d!1540202) (not b!4809687) (not d!1540218) (not d!1540176) (not b!4809636) tp_is_empty!33949 (not b!4809683) (not d!1540208) (not b!4809728) (not b!4809764) b_and!341879 (not d!1540214) (not d!1540180) (not b!4809749) (not d!1540196) (not b!4809680) (not d!1540206) (not tb!257527) (not b!4809681) (not b!4809723) (not d!1540172) (not b!4809737) (not b!4809660) (not d!1540194) (not b!4809684) (not d!1540192) (not b!4809719) (not mapNonEmpty!22280) (not b!4809755) (not b!4809717) (not b!4809682) (not b!4809639) (not b_next!130889) (not b!4809750) (not b!4809654) (not d!1540210) (not d!1540184) (not d!1540216) (not d!1540204) tp_is_empty!33947 (not b_lambda!188193) (not b_next!130891) (not b!4809722) (not b!4809765) (not b!4809650) (not d!1540174) (not b!4809732) (not d!1540200) (not b_lambda!188195) (not b!4809694) (not d!1540212) (not b!4809766) b_and!341881 (not b!4809696) (not d!1540190) (not b!4809720) (not b!4809721) (not d!1540198) (not b!4809757) (not bm!335659) (not b!4809756) (not bs!1160043) (not b!4809718) (not b!4809744))
(check-sat b_and!341881 b_and!341879 (not b_next!130889) (not b_next!130891))
