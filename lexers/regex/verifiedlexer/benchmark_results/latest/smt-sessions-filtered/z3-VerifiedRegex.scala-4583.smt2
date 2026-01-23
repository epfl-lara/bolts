; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241672 () Bool)

(assert start!241672)

(declare-fun b!2477567 () Bool)

(declare-fun b_free!72001 () Bool)

(declare-fun b_next!72705 () Bool)

(assert (=> b!2477567 (= b_free!72001 (not b_next!72705))))

(declare-fun tp!792656 () Bool)

(declare-fun b_and!188227 () Bool)

(assert (=> b!2477567 (= tp!792656 b_and!188227)))

(declare-fun b!2477563 () Bool)

(declare-fun b_free!72003 () Bool)

(declare-fun b_next!72707 () Bool)

(assert (=> b!2477563 (= b_free!72003 (not b_next!72707))))

(declare-fun tp!792653 () Bool)

(declare-fun b_and!188229 () Bool)

(assert (=> b!2477563 (= tp!792653 b_and!188229)))

(declare-fun b!2477561 () Bool)

(declare-fun e!1572094 () Bool)

(declare-fun e!1572095 () Bool)

(assert (=> b!2477561 (= e!1572094 e!1572095)))

(declare-fun res!1048812 () Bool)

(declare-fun e!1572090 () Bool)

(assert (=> start!241672 (=> (not res!1048812) (not e!1572090))))

(declare-datatypes ((Hashable!3196 0))(
  ( (HashableExt!3195 (__x!18764 Int)) )
))
(declare-datatypes ((K!5300 0))(
  ( (K!5301 (val!8715 Int)) )
))
(declare-datatypes ((V!5502 0))(
  ( (V!5503 (val!8716 Int)) )
))
(declare-datatypes ((tuple2!28404 0))(
  ( (tuple2!28405 (_1!16743 K!5300) (_2!16743 V!5502)) )
))
(declare-datatypes ((List!29067 0))(
  ( (Nil!28967) (Cons!28967 (h!34369 tuple2!28404) (t!210704 List!29067)) )
))
(declare-datatypes ((array!11581 0))(
  ( (array!11582 (arr!5162 (Array (_ BitVec 32) List!29067)) (size!22581 (_ BitVec 32))) )
))
(declare-datatypes ((array!11583 0))(
  ( (array!11584 (arr!5163 (Array (_ BitVec 32) (_ BitVec 64))) (size!22582 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6572 0))(
  ( (LongMapFixedSize!6573 (defaultEntry!3660 Int) (mask!8418 (_ BitVec 32)) (extraKeys!3534 (_ BitVec 32)) (zeroValue!3544 List!29067) (minValue!3544 List!29067) (_size!6619 (_ BitVec 32)) (_keys!3583 array!11583) (_values!3566 array!11581) (_vacant!3347 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12961 0))(
  ( (Cell!12962 (v!31247 LongMapFixedSize!6572)) )
))
(declare-datatypes ((MutLongMap!3286 0))(
  ( (LongMap!3286 (underlying!6779 Cell!12961)) (MutLongMapExt!3285 (__x!18765 Int)) )
))
(declare-datatypes ((Cell!12963 0))(
  ( (Cell!12964 (v!31248 MutLongMap!3286)) )
))
(declare-datatypes ((MutableMap!3196 0))(
  ( (MutableMapExt!3195 (__x!18766 Int)) (HashMap!3196 (underlying!6780 Cell!12963) (hashF!5134 Hashable!3196) (_size!6620 (_ BitVec 32)) (defaultValue!3358 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3196)

(get-info :version)

(assert (=> start!241672 (= res!1048812 ((_ is HashMap!3196) thiss!42540))))

(assert (=> start!241672 e!1572090))

(declare-fun e!1572096 () Bool)

(assert (=> start!241672 e!1572096))

(declare-fun tp_is_empty!12075 () Bool)

(assert (=> start!241672 tp_is_empty!12075))

(declare-fun b!2477562 () Bool)

(declare-fun res!1048813 () Bool)

(assert (=> b!2477562 (=> (not res!1048813) (not e!1572090))))

(declare-fun key!2246 () K!5300)

(declare-fun contains!4968 (MutableMap!3196 K!5300) Bool)

(assert (=> b!2477562 (= res!1048813 (contains!4968 thiss!42540 key!2246))))

(declare-fun e!1572091 () Bool)

(assert (=> b!2477563 (= e!1572096 (and e!1572091 tp!792653))))

(declare-fun b!2477564 () Bool)

(declare-fun e!1572093 () Bool)

(assert (=> b!2477564 (= e!1572090 e!1572093)))

(declare-fun res!1048811 () Bool)

(assert (=> b!2477564 (=> (not res!1048811) (not e!1572093))))

(assert (=> b!2477564 (= res!1048811 ((_ is LongMap!3286) (v!31248 (underlying!6780 thiss!42540))))))

(declare-fun lt!884933 () List!29067)

(declare-fun apply!6837 (MutLongMap!3286 (_ BitVec 64)) List!29067)

(declare-fun hash!614 (Hashable!3196 K!5300) (_ BitVec 64))

(assert (=> b!2477564 (= lt!884933 (apply!6837 (v!31248 (underlying!6780 thiss!42540)) (hash!614 (hashF!5134 thiss!42540) key!2246)))))

(declare-fun mapIsEmpty!15286 () Bool)

(declare-fun mapRes!15286 () Bool)

(assert (=> mapIsEmpty!15286 mapRes!15286))

(declare-fun b!2477565 () Bool)

(declare-fun e!1572097 () Bool)

(assert (=> b!2477565 (= e!1572097 e!1572094)))

(declare-fun b!2477566 () Bool)

(declare-fun res!1048810 () Bool)

(assert (=> b!2477566 (=> (not res!1048810) (not e!1572090))))

(declare-fun valid!2491 (MutableMap!3196) Bool)

(assert (=> b!2477566 (= res!1048810 (valid!2491 thiss!42540))))

(declare-fun tp!792650 () Bool)

(declare-fun tp!792654 () Bool)

(declare-fun e!1572098 () Bool)

(declare-fun array_inv!3703 (array!11583) Bool)

(declare-fun array_inv!3704 (array!11581) Bool)

(assert (=> b!2477567 (= e!1572095 (and tp!792656 tp!792650 tp!792654 (array_inv!3703 (_keys!3583 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) (array_inv!3704 (_values!3566 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) e!1572098))))

(declare-fun b!2477568 () Bool)

(declare-fun tp!792655 () Bool)

(assert (=> b!2477568 (= e!1572098 (and tp!792655 mapRes!15286))))

(declare-fun condMapEmpty!15286 () Bool)

(declare-fun mapDefault!15286 () List!29067)

(assert (=> b!2477568 (= condMapEmpty!15286 (= (arr!5162 (_values!3566 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29067)) mapDefault!15286)))))

(declare-fun mapNonEmpty!15286 () Bool)

(declare-fun tp!792652 () Bool)

(declare-fun tp!792651 () Bool)

(assert (=> mapNonEmpty!15286 (= mapRes!15286 (and tp!792652 tp!792651))))

(declare-fun mapKey!15286 () (_ BitVec 32))

(declare-fun mapValue!15286 () List!29067)

(declare-fun mapRest!15286 () (Array (_ BitVec 32) List!29067))

(assert (=> mapNonEmpty!15286 (= (arr!5162 (_values!3566 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) (store mapRest!15286 mapKey!15286 mapValue!15286))))

(declare-fun b!2477569 () Bool)

(declare-fun lt!884934 () MutLongMap!3286)

(assert (=> b!2477569 (= e!1572091 (and e!1572097 ((_ is LongMap!3286) lt!884934)))))

(assert (=> b!2477569 (= lt!884934 (v!31248 (underlying!6780 thiss!42540)))))

(declare-fun b!2477570 () Bool)

(declare-fun valid!2492 (MutLongMap!3286) Bool)

(assert (=> b!2477570 (= e!1572093 (not (valid!2492 (v!31248 (underlying!6780 thiss!42540)))))))

(assert (= (and start!241672 res!1048812) b!2477566))

(assert (= (and b!2477566 res!1048810) b!2477562))

(assert (= (and b!2477562 res!1048813) b!2477564))

(assert (= (and b!2477564 res!1048811) b!2477570))

(assert (= (and b!2477568 condMapEmpty!15286) mapIsEmpty!15286))

(assert (= (and b!2477568 (not condMapEmpty!15286)) mapNonEmpty!15286))

(assert (= b!2477567 b!2477568))

(assert (= b!2477561 b!2477567))

(assert (= b!2477565 b!2477561))

(assert (= (and b!2477569 ((_ is LongMap!3286) (v!31248 (underlying!6780 thiss!42540)))) b!2477565))

(assert (= b!2477563 b!2477569))

(assert (= (and start!241672 ((_ is HashMap!3196) thiss!42540)) b!2477563))

(declare-fun m!2845385 () Bool)

(assert (=> b!2477567 m!2845385))

(declare-fun m!2845387 () Bool)

(assert (=> b!2477567 m!2845387))

(declare-fun m!2845389 () Bool)

(assert (=> b!2477564 m!2845389))

(assert (=> b!2477564 m!2845389))

(declare-fun m!2845391 () Bool)

(assert (=> b!2477564 m!2845391))

(declare-fun m!2845393 () Bool)

(assert (=> b!2477570 m!2845393))

(declare-fun m!2845395 () Bool)

(assert (=> b!2477566 m!2845395))

(declare-fun m!2845397 () Bool)

(assert (=> b!2477562 m!2845397))

(declare-fun m!2845399 () Bool)

(assert (=> mapNonEmpty!15286 m!2845399))

(check-sat (not b!2477564) (not mapNonEmpty!15286) (not b!2477566) (not b!2477568) (not b!2477567) (not b_next!72707) (not b_next!72705) b_and!188229 b_and!188227 (not b!2477570) (not b!2477562) tp_is_empty!12075)
(check-sat b_and!188229 b_and!188227 (not b_next!72705) (not b_next!72707))
(get-model)

(declare-fun d!712426 () Bool)

(assert (=> d!712426 (= (array_inv!3703 (_keys!3583 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) (bvsge (size!22582 (_keys!3583 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477567 d!712426))

(declare-fun d!712428 () Bool)

(assert (=> d!712428 (= (array_inv!3704 (_values!3566 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) (bvsge (size!22581 (_values!3566 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477567 d!712428))

(declare-fun bm!151734 () Bool)

(declare-datatypes ((Option!5724 0))(
  ( (None!5723) (Some!5723 (v!31249 tuple2!28404)) )
))
(declare-fun call!151744 () Option!5724)

(declare-fun call!151741 () List!29067)

(declare-fun getPair!57 (List!29067 K!5300) Option!5724)

(assert (=> bm!151734 (= call!151744 (getPair!57 call!151741 key!2246))))

(declare-fun b!2477593 () Bool)

(assert (=> b!2477593 false))

(declare-datatypes ((Unit!42351 0))(
  ( (Unit!42352) )
))
(declare-fun lt!884985 () Unit!42351)

(declare-fun lt!884992 () Unit!42351)

(assert (=> b!2477593 (= lt!884985 lt!884992)))

(declare-datatypes ((tuple2!28406 0))(
  ( (tuple2!28407 (_1!16744 (_ BitVec 64)) (_2!16744 List!29067)) )
))
(declare-datatypes ((List!29068 0))(
  ( (Nil!28968) (Cons!28968 (h!34370 tuple2!28406) (t!210707 List!29068)) )
))
(declare-datatypes ((ListLongMap!405 0))(
  ( (ListLongMap!406 (toList!1466 List!29068)) )
))
(declare-fun lt!884976 () ListLongMap!405)

(declare-datatypes ((ListMap!957 0))(
  ( (ListMap!958 (toList!1467 List!29067)) )
))
(declare-fun contains!4969 (ListMap!957 K!5300) Bool)

(declare-fun extractMap!145 (List!29068) ListMap!957)

(assert (=> b!2477593 (contains!4969 (extractMap!145 (toList!1466 lt!884976)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!57 (ListLongMap!405 K!5300 Hashable!3196) Unit!42351)

(assert (=> b!2477593 (= lt!884992 (lemmaInLongMapThenInGenericMap!57 lt!884976 key!2246 (hashF!5134 thiss!42540)))))

(declare-fun call!151739 () ListLongMap!405)

(assert (=> b!2477593 (= lt!884976 call!151739)))

(declare-fun e!1572117 () Unit!42351)

(declare-fun Unit!42353 () Unit!42351)

(assert (=> b!2477593 (= e!1572117 Unit!42353)))

(declare-fun b!2477594 () Bool)

(declare-fun e!1572114 () Unit!42351)

(assert (=> b!2477594 (= e!1572114 e!1572117)))

(declare-fun res!1048821 () Bool)

(declare-fun call!151743 () Bool)

(assert (=> b!2477594 (= res!1048821 call!151743)))

(declare-fun e!1572115 () Bool)

(assert (=> b!2477594 (=> (not res!1048821) (not e!1572115))))

(declare-fun c!394243 () Bool)

(assert (=> b!2477594 (= c!394243 e!1572115)))

(declare-fun b!2477595 () Bool)

(declare-fun e!1572116 () Bool)

(declare-fun call!151742 () Bool)

(assert (=> b!2477595 (= e!1572116 call!151742)))

(declare-fun b!2477596 () Bool)

(declare-fun e!1572119 () Unit!42351)

(declare-fun Unit!42354 () Unit!42351)

(assert (=> b!2477596 (= e!1572119 Unit!42354)))

(declare-fun d!712430 () Bool)

(declare-fun lt!884978 () Bool)

(declare-fun map!6042 (MutableMap!3196) ListMap!957)

(assert (=> d!712430 (= lt!884978 (contains!4969 (map!6042 thiss!42540) key!2246))))

(declare-fun e!1572118 () Bool)

(assert (=> d!712430 (= lt!884978 e!1572118)))

(declare-fun res!1048820 () Bool)

(assert (=> d!712430 (=> (not res!1048820) (not e!1572118))))

(declare-fun lt!884980 () (_ BitVec 64))

(declare-fun contains!4970 (MutLongMap!3286 (_ BitVec 64)) Bool)

(assert (=> d!712430 (= res!1048820 (contains!4970 (v!31248 (underlying!6780 thiss!42540)) lt!884980))))

(declare-fun lt!884994 () Unit!42351)

(assert (=> d!712430 (= lt!884994 e!1572114)))

(declare-fun c!394242 () Bool)

(declare-fun map!6043 (MutLongMap!3286) ListLongMap!405)

(assert (=> d!712430 (= c!394242 (contains!4969 (extractMap!145 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540))))) key!2246))))

(declare-fun lt!884977 () Unit!42351)

(declare-fun e!1572113 () Unit!42351)

(assert (=> d!712430 (= lt!884977 e!1572113)))

(declare-fun c!394244 () Bool)

(assert (=> d!712430 (= c!394244 (contains!4970 (v!31248 (underlying!6780 thiss!42540)) lt!884980))))

(assert (=> d!712430 (= lt!884980 (hash!614 (hashF!5134 thiss!42540) key!2246))))

(assert (=> d!712430 (valid!2491 thiss!42540)))

(assert (=> d!712430 (= (contains!4968 thiss!42540 key!2246) lt!884978)))

(declare-fun bm!151735 () Bool)

(declare-fun isDefined!4546 (Option!5724) Bool)

(assert (=> bm!151735 (= call!151742 (isDefined!4546 call!151744))))

(declare-fun b!2477597 () Bool)

(declare-fun lt!884983 () Unit!42351)

(assert (=> b!2477597 (= e!1572114 lt!884983)))

(declare-fun lt!884986 () ListLongMap!405)

(assert (=> b!2477597 (= lt!884986 call!151739)))

(declare-fun lemmaInGenericMapThenInLongMap!57 (ListLongMap!405 K!5300 Hashable!3196) Unit!42351)

(assert (=> b!2477597 (= lt!884983 (lemmaInGenericMapThenInLongMap!57 lt!884986 key!2246 (hashF!5134 thiss!42540)))))

(declare-fun res!1048822 () Bool)

(assert (=> b!2477597 (= res!1048822 call!151743)))

(assert (=> b!2477597 (=> (not res!1048822) (not e!1572116))))

(assert (=> b!2477597 e!1572116))

(declare-fun b!2477598 () Bool)

(declare-fun Unit!42355 () Unit!42351)

(assert (=> b!2477598 (= e!1572113 Unit!42355)))

(declare-fun b!2477599 () Bool)

(declare-fun Unit!42356 () Unit!42351)

(assert (=> b!2477599 (= e!1572117 Unit!42356)))

(declare-fun bm!151736 () Bool)

(assert (=> bm!151736 (= call!151739 (map!6043 (v!31248 (underlying!6780 thiss!42540))))))

(declare-fun b!2477600 () Bool)

(assert (=> b!2477600 (= e!1572115 call!151742)))

(declare-fun b!2477601 () Bool)

(assert (=> b!2477601 (= e!1572118 (isDefined!4546 (getPair!57 (apply!6837 (v!31248 (underlying!6780 thiss!42540)) lt!884980) key!2246)))))

(declare-fun b!2477602 () Bool)

(assert (=> b!2477602 false))

(declare-fun lt!884984 () Unit!42351)

(declare-fun lt!884982 () Unit!42351)

(assert (=> b!2477602 (= lt!884984 lt!884982)))

(declare-fun lt!884981 () List!29068)

(declare-fun lt!884991 () List!29067)

(declare-fun contains!4971 (List!29068 tuple2!28406) Bool)

(assert (=> b!2477602 (contains!4971 lt!884981 (tuple2!28407 lt!884980 lt!884991))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!58 (List!29068 (_ BitVec 64) List!29067) Unit!42351)

(assert (=> b!2477602 (= lt!884982 (lemmaGetValueByKeyImpliesContainsTuple!58 lt!884981 lt!884980 lt!884991))))

(assert (=> b!2477602 (= lt!884991 (apply!6837 (v!31248 (underlying!6780 thiss!42540)) lt!884980))))

(assert (=> b!2477602 (= lt!884981 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540)))))))

(declare-fun lt!884988 () Unit!42351)

(declare-fun lt!884975 () Unit!42351)

(assert (=> b!2477602 (= lt!884988 lt!884975)))

(declare-fun lt!884979 () List!29068)

(declare-datatypes ((Option!5725 0))(
  ( (None!5724) (Some!5724 (v!31250 List!29067)) )
))
(declare-fun isDefined!4547 (Option!5725) Bool)

(declare-fun getValueByKey!124 (List!29068 (_ BitVec 64)) Option!5725)

(assert (=> b!2477602 (isDefined!4547 (getValueByKey!124 lt!884979 lt!884980))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!81 (List!29068 (_ BitVec 64)) Unit!42351)

(assert (=> b!2477602 (= lt!884975 (lemmaContainsKeyImpliesGetValueByKeyDefined!81 lt!884979 lt!884980))))

(assert (=> b!2477602 (= lt!884979 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540)))))))

(declare-fun lt!884993 () Unit!42351)

(declare-fun lt!884990 () Unit!42351)

(assert (=> b!2477602 (= lt!884993 lt!884990)))

(declare-fun lt!884989 () List!29068)

(declare-fun containsKey!115 (List!29068 (_ BitVec 64)) Bool)

(assert (=> b!2477602 (containsKey!115 lt!884989 lt!884980)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!58 (List!29068 (_ BitVec 64)) Unit!42351)

(assert (=> b!2477602 (= lt!884990 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!58 lt!884989 lt!884980))))

(assert (=> b!2477602 (= lt!884989 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540)))))))

(declare-fun Unit!42357 () Unit!42351)

(assert (=> b!2477602 (= e!1572119 Unit!42357)))

(declare-fun bm!151737 () Bool)

(declare-fun call!151740 () (_ BitVec 64))

(declare-fun apply!6838 (ListLongMap!405 (_ BitVec 64)) List!29067)

(assert (=> bm!151737 (= call!151741 (apply!6838 (ite c!394242 lt!884986 call!151739) call!151740))))

(declare-fun bm!151738 () Bool)

(declare-fun contains!4972 (ListLongMap!405 (_ BitVec 64)) Bool)

(assert (=> bm!151738 (= call!151743 (contains!4972 (ite c!394242 lt!884986 call!151739) call!151740))))

(declare-fun lambda!93475 () Int)

(declare-fun b!2477603 () Bool)

(declare-fun forallContained!807 (List!29068 Int tuple2!28406) Unit!42351)

(assert (=> b!2477603 (= e!1572113 (forallContained!807 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540)))) lambda!93475 (tuple2!28407 lt!884980 (apply!6837 (v!31248 (underlying!6780 thiss!42540)) lt!884980))))))

(declare-fun c!394245 () Bool)

(assert (=> b!2477603 (= c!394245 (not (contains!4971 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540)))) (tuple2!28407 lt!884980 (apply!6837 (v!31248 (underlying!6780 thiss!42540)) lt!884980)))))))

(declare-fun lt!884987 () Unit!42351)

(assert (=> b!2477603 (= lt!884987 e!1572119)))

(declare-fun bm!151739 () Bool)

(assert (=> bm!151739 (= call!151740 (hash!614 (hashF!5134 thiss!42540) key!2246))))

(assert (= (and d!712430 c!394244) b!2477603))

(assert (= (and d!712430 (not c!394244)) b!2477598))

(assert (= (and b!2477603 c!394245) b!2477602))

(assert (= (and b!2477603 (not c!394245)) b!2477596))

(assert (= (and d!712430 c!394242) b!2477597))

(assert (= (and d!712430 (not c!394242)) b!2477594))

(assert (= (and b!2477597 res!1048822) b!2477595))

(assert (= (and b!2477594 res!1048821) b!2477600))

(assert (= (and b!2477594 c!394243) b!2477593))

(assert (= (and b!2477594 (not c!394243)) b!2477599))

(assert (= (or b!2477597 b!2477594 b!2477600 b!2477593) bm!151736))

(assert (= (or b!2477597 b!2477595 b!2477594 b!2477600) bm!151739))

(assert (= (or b!2477595 b!2477600) bm!151737))

(assert (= (or b!2477597 b!2477594) bm!151738))

(assert (= (or b!2477595 b!2477600) bm!151734))

(assert (= (or b!2477595 b!2477600) bm!151735))

(assert (= (and d!712430 res!1048820) b!2477601))

(declare-fun m!2845401 () Bool)

(assert (=> bm!151737 m!2845401))

(declare-fun m!2845403 () Bool)

(assert (=> b!2477597 m!2845403))

(declare-fun m!2845405 () Bool)

(assert (=> b!2477603 m!2845405))

(declare-fun m!2845407 () Bool)

(assert (=> b!2477603 m!2845407))

(declare-fun m!2845409 () Bool)

(assert (=> b!2477603 m!2845409))

(declare-fun m!2845411 () Bool)

(assert (=> b!2477603 m!2845411))

(declare-fun m!2845413 () Bool)

(assert (=> bm!151738 m!2845413))

(declare-fun m!2845415 () Bool)

(assert (=> b!2477593 m!2845415))

(assert (=> b!2477593 m!2845415))

(declare-fun m!2845417 () Bool)

(assert (=> b!2477593 m!2845417))

(declare-fun m!2845419 () Bool)

(assert (=> b!2477593 m!2845419))

(assert (=> b!2477602 m!2845407))

(declare-fun m!2845421 () Bool)

(assert (=> b!2477602 m!2845421))

(declare-fun m!2845423 () Bool)

(assert (=> b!2477602 m!2845423))

(declare-fun m!2845425 () Bool)

(assert (=> b!2477602 m!2845425))

(assert (=> b!2477602 m!2845405))

(declare-fun m!2845427 () Bool)

(assert (=> b!2477602 m!2845427))

(assert (=> b!2477602 m!2845427))

(declare-fun m!2845429 () Bool)

(assert (=> b!2477602 m!2845429))

(declare-fun m!2845431 () Bool)

(assert (=> b!2477602 m!2845431))

(declare-fun m!2845433 () Bool)

(assert (=> b!2477602 m!2845433))

(declare-fun m!2845435 () Bool)

(assert (=> bm!151734 m!2845435))

(assert (=> bm!151736 m!2845405))

(declare-fun m!2845437 () Bool)

(assert (=> d!712430 m!2845437))

(assert (=> d!712430 m!2845389))

(assert (=> d!712430 m!2845395))

(assert (=> d!712430 m!2845405))

(declare-fun m!2845439 () Bool)

(assert (=> d!712430 m!2845439))

(declare-fun m!2845441 () Bool)

(assert (=> d!712430 m!2845441))

(declare-fun m!2845443 () Bool)

(assert (=> d!712430 m!2845443))

(assert (=> d!712430 m!2845441))

(assert (=> d!712430 m!2845439))

(declare-fun m!2845445 () Bool)

(assert (=> d!712430 m!2845445))

(assert (=> b!2477601 m!2845407))

(assert (=> b!2477601 m!2845407))

(declare-fun m!2845447 () Bool)

(assert (=> b!2477601 m!2845447))

(assert (=> b!2477601 m!2845447))

(declare-fun m!2845449 () Bool)

(assert (=> b!2477601 m!2845449))

(declare-fun m!2845451 () Bool)

(assert (=> bm!151735 m!2845451))

(assert (=> bm!151739 m!2845389))

(assert (=> b!2477562 d!712430))

(declare-fun d!712432 () Bool)

(declare-fun e!1572122 () Bool)

(assert (=> d!712432 e!1572122))

(declare-fun c!394248 () Bool)

(assert (=> d!712432 (= c!394248 (contains!4970 (v!31248 (underlying!6780 thiss!42540)) (hash!614 (hashF!5134 thiss!42540) key!2246)))))

(declare-fun lt!884997 () List!29067)

(declare-fun apply!6839 (LongMapFixedSize!6572 (_ BitVec 64)) List!29067)

(assert (=> d!712432 (= lt!884997 (apply!6839 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))) (hash!614 (hashF!5134 thiss!42540) key!2246)))))

(assert (=> d!712432 (valid!2492 (v!31248 (underlying!6780 thiss!42540)))))

(assert (=> d!712432 (= (apply!6837 (v!31248 (underlying!6780 thiss!42540)) (hash!614 (hashF!5134 thiss!42540) key!2246)) lt!884997)))

(declare-fun b!2477608 () Bool)

(declare-fun get!8926 (Option!5725) List!29067)

(assert (=> b!2477608 (= e!1572122 (= lt!884997 (get!8926 (getValueByKey!124 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540)))) (hash!614 (hashF!5134 thiss!42540) key!2246)))))))

(declare-fun b!2477609 () Bool)

(declare-fun dynLambda!12432 (Int (_ BitVec 64)) List!29067)

(assert (=> b!2477609 (= e!1572122 (= lt!884997 (dynLambda!12432 (defaultEntry!3660 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540))))) (hash!614 (hashF!5134 thiss!42540) key!2246))))))

(assert (=> b!2477609 ((_ is LongMap!3286) (v!31248 (underlying!6780 thiss!42540)))))

(assert (= (and d!712432 c!394248) b!2477608))

(assert (= (and d!712432 (not c!394248)) b!2477609))

(declare-fun b_lambda!75999 () Bool)

(assert (=> (not b_lambda!75999) (not b!2477609)))

(declare-fun t!210706 () Bool)

(declare-fun tb!140355 () Bool)

(assert (=> (and b!2477567 (= (defaultEntry!3660 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540))))) (defaultEntry!3660 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540)))))) t!210706) tb!140355))

(assert (=> b!2477609 t!210706))

(declare-fun result!173252 () Bool)

(declare-fun b_and!188231 () Bool)

(assert (= b_and!188227 (and (=> t!210706 result!173252) b_and!188231)))

(assert (=> d!712432 m!2845389))

(declare-fun m!2845453 () Bool)

(assert (=> d!712432 m!2845453))

(assert (=> d!712432 m!2845389))

(declare-fun m!2845455 () Bool)

(assert (=> d!712432 m!2845455))

(assert (=> d!712432 m!2845393))

(assert (=> b!2477608 m!2845405))

(assert (=> b!2477608 m!2845389))

(declare-fun m!2845457 () Bool)

(assert (=> b!2477608 m!2845457))

(assert (=> b!2477608 m!2845457))

(declare-fun m!2845459 () Bool)

(assert (=> b!2477608 m!2845459))

(assert (=> b!2477609 m!2845389))

(declare-fun m!2845461 () Bool)

(assert (=> b!2477609 m!2845461))

(assert (=> b!2477564 d!712432))

(declare-fun d!712434 () Bool)

(declare-fun hash!615 (Hashable!3196 K!5300) (_ BitVec 64))

(assert (=> d!712434 (= (hash!614 (hashF!5134 thiss!42540) key!2246) (hash!615 (hashF!5134 thiss!42540) key!2246))))

(declare-fun bs!467182 () Bool)

(assert (= bs!467182 d!712434))

(declare-fun m!2845463 () Bool)

(assert (=> bs!467182 m!2845463))

(assert (=> b!2477564 d!712434))

(declare-fun d!712436 () Bool)

(declare-fun valid!2493 (LongMapFixedSize!6572) Bool)

(assert (=> d!712436 (= (valid!2492 (v!31248 (underlying!6780 thiss!42540))) (valid!2493 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540))))))))

(declare-fun bs!467183 () Bool)

(assert (= bs!467183 d!712436))

(declare-fun m!2845465 () Bool)

(assert (=> bs!467183 m!2845465))

(assert (=> b!2477570 d!712436))

(declare-fun bs!467184 () Bool)

(declare-fun b!2477614 () Bool)

(assert (= bs!467184 (and b!2477614 b!2477603)))

(declare-fun lambda!93478 () Int)

(assert (=> bs!467184 (= lambda!93478 lambda!93475)))

(declare-fun d!712438 () Bool)

(declare-fun res!1048827 () Bool)

(declare-fun e!1572125 () Bool)

(assert (=> d!712438 (=> (not res!1048827) (not e!1572125))))

(assert (=> d!712438 (= res!1048827 (valid!2492 (v!31248 (underlying!6780 thiss!42540))))))

(assert (=> d!712438 (= (valid!2491 thiss!42540) e!1572125)))

(declare-fun res!1048828 () Bool)

(assert (=> b!2477614 (=> (not res!1048828) (not e!1572125))))

(declare-fun forall!5931 (List!29068 Int) Bool)

(assert (=> b!2477614 (= res!1048828 (forall!5931 (toList!1466 (map!6043 (v!31248 (underlying!6780 thiss!42540)))) lambda!93478))))

(declare-fun b!2477615 () Bool)

(declare-fun allKeysSameHashInMap!131 (ListLongMap!405 Hashable!3196) Bool)

(assert (=> b!2477615 (= e!1572125 (allKeysSameHashInMap!131 (map!6043 (v!31248 (underlying!6780 thiss!42540))) (hashF!5134 thiss!42540)))))

(assert (= (and d!712438 res!1048827) b!2477614))

(assert (= (and b!2477614 res!1048828) b!2477615))

(assert (=> d!712438 m!2845393))

(assert (=> b!2477614 m!2845405))

(declare-fun m!2845467 () Bool)

(assert (=> b!2477614 m!2845467))

(assert (=> b!2477615 m!2845405))

(assert (=> b!2477615 m!2845405))

(declare-fun m!2845469 () Bool)

(assert (=> b!2477615 m!2845469))

(assert (=> b!2477566 d!712438))

(declare-fun tp_is_empty!12077 () Bool)

(declare-fun e!1572128 () Bool)

(declare-fun b!2477620 () Bool)

(declare-fun tp!792659 () Bool)

(assert (=> b!2477620 (= e!1572128 (and tp_is_empty!12075 tp_is_empty!12077 tp!792659))))

(assert (=> b!2477567 (= tp!792650 e!1572128)))

(assert (= (and b!2477567 ((_ is Cons!28967) (zeroValue!3544 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540))))))) b!2477620))

(declare-fun tp!792660 () Bool)

(declare-fun e!1572129 () Bool)

(declare-fun b!2477621 () Bool)

(assert (=> b!2477621 (= e!1572129 (and tp_is_empty!12075 tp_is_empty!12077 tp!792660))))

(assert (=> b!2477567 (= tp!792654 e!1572129)))

(assert (= (and b!2477567 ((_ is Cons!28967) (minValue!3544 (v!31247 (underlying!6779 (v!31248 (underlying!6780 thiss!42540))))))) b!2477621))

(declare-fun b!2477622 () Bool)

(declare-fun e!1572130 () Bool)

(declare-fun tp!792661 () Bool)

(assert (=> b!2477622 (= e!1572130 (and tp_is_empty!12075 tp_is_empty!12077 tp!792661))))

(assert (=> b!2477568 (= tp!792655 e!1572130)))

(assert (= (and b!2477568 ((_ is Cons!28967) mapDefault!15286)) b!2477622))

(declare-fun mapNonEmpty!15289 () Bool)

(declare-fun mapRes!15289 () Bool)

(declare-fun tp!792669 () Bool)

(declare-fun e!1572135 () Bool)

(assert (=> mapNonEmpty!15289 (= mapRes!15289 (and tp!792669 e!1572135))))

(declare-fun mapValue!15289 () List!29067)

(declare-fun mapRest!15289 () (Array (_ BitVec 32) List!29067))

(declare-fun mapKey!15289 () (_ BitVec 32))

(assert (=> mapNonEmpty!15289 (= mapRest!15286 (store mapRest!15289 mapKey!15289 mapValue!15289))))

(declare-fun mapIsEmpty!15289 () Bool)

(assert (=> mapIsEmpty!15289 mapRes!15289))

(declare-fun condMapEmpty!15289 () Bool)

(declare-fun mapDefault!15289 () List!29067)

(assert (=> mapNonEmpty!15286 (= condMapEmpty!15289 (= mapRest!15286 ((as const (Array (_ BitVec 32) List!29067)) mapDefault!15289)))))

(declare-fun e!1572136 () Bool)

(assert (=> mapNonEmpty!15286 (= tp!792652 (and e!1572136 mapRes!15289))))

(declare-fun tp!792670 () Bool)

(declare-fun b!2477629 () Bool)

(assert (=> b!2477629 (= e!1572135 (and tp_is_empty!12075 tp_is_empty!12077 tp!792670))))

(declare-fun b!2477630 () Bool)

(declare-fun tp!792668 () Bool)

(assert (=> b!2477630 (= e!1572136 (and tp_is_empty!12075 tp_is_empty!12077 tp!792668))))

(assert (= (and mapNonEmpty!15286 condMapEmpty!15289) mapIsEmpty!15289))

(assert (= (and mapNonEmpty!15286 (not condMapEmpty!15289)) mapNonEmpty!15289))

(assert (= (and mapNonEmpty!15289 ((_ is Cons!28967) mapValue!15289)) b!2477629))

(assert (= (and mapNonEmpty!15286 ((_ is Cons!28967) mapDefault!15289)) b!2477630))

(declare-fun m!2845471 () Bool)

(assert (=> mapNonEmpty!15289 m!2845471))

(declare-fun b!2477631 () Bool)

(declare-fun e!1572137 () Bool)

(declare-fun tp!792671 () Bool)

(assert (=> b!2477631 (= e!1572137 (and tp_is_empty!12075 tp_is_empty!12077 tp!792671))))

(assert (=> mapNonEmpty!15286 (= tp!792651 e!1572137)))

(assert (= (and mapNonEmpty!15286 ((_ is Cons!28967) mapValue!15286)) b!2477631))

(declare-fun b_lambda!76001 () Bool)

(assert (= b_lambda!75999 (or (and b!2477567 b_free!72001) b_lambda!76001)))

(check-sat (not b!2477620) (not d!712438) (not b_lambda!76001) b_and!188229 b_and!188231 (not b!2477630) (not tb!140355) (not b!2477615) (not b_next!72707) (not b!2477608) (not mapNonEmpty!15289) (not bm!151735) (not b!2477614) (not b!2477602) (not b!2477621) tp_is_empty!12077 (not bm!151736) (not b!2477597) (not bm!151734) (not b!2477631) (not bm!151738) (not b!2477593) (not b!2477622) (not b!2477603) (not d!712436) tp_is_empty!12075 (not b!2477629) (not d!712432) (not b!2477601) (not d!712430) (not b_next!72705) (not d!712434) (not bm!151739) (not bm!151737))
(check-sat b_and!188229 b_and!188231 (not b_next!72705) (not b_next!72707))
