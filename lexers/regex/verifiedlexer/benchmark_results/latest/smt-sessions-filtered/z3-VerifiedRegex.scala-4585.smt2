; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241694 () Bool)

(assert start!241694)

(declare-fun b!2477738 () Bool)

(declare-fun b_free!72017 () Bool)

(declare-fun b_next!72721 () Bool)

(assert (=> b!2477738 (= b_free!72017 (not b_next!72721))))

(declare-fun tp!792749 () Bool)

(declare-fun b_and!188245 () Bool)

(assert (=> b!2477738 (= tp!792749 b_and!188245)))

(declare-fun b!2477744 () Bool)

(declare-fun b_free!72019 () Bool)

(declare-fun b_next!72723 () Bool)

(assert (=> b!2477744 (= b_free!72019 (not b_next!72723))))

(declare-fun tp!792755 () Bool)

(declare-fun b_and!188247 () Bool)

(assert (=> b!2477744 (= tp!792755 b_and!188247)))

(declare-fun b!2477736 () Bool)

(declare-fun e!1572234 () Bool)

(declare-fun tp!792750 () Bool)

(declare-fun mapRes!15301 () Bool)

(assert (=> b!2477736 (= e!1572234 (and tp!792750 mapRes!15301))))

(declare-fun condMapEmpty!15301 () Bool)

(declare-datatypes ((Hashable!3200 0))(
  ( (HashableExt!3199 (__x!18776 Int)) )
))
(declare-datatypes ((K!5310 0))(
  ( (K!5311 (val!8723 Int)) )
))
(declare-datatypes ((V!5512 0))(
  ( (V!5513 (val!8724 Int)) )
))
(declare-datatypes ((tuple2!28420 0))(
  ( (tuple2!28421 (_1!16751 K!5310) (_2!16751 V!5512)) )
))
(declare-datatypes ((List!29075 0))(
  ( (Nil!28975) (Cons!28975 (h!34377 tuple2!28420) (t!210714 List!29075)) )
))
(declare-datatypes ((array!11599 0))(
  ( (array!11600 (arr!5170 (Array (_ BitVec 32) List!29075)) (size!22589 (_ BitVec 32))) )
))
(declare-datatypes ((array!11601 0))(
  ( (array!11602 (arr!5171 (Array (_ BitVec 32) (_ BitVec 64))) (size!22590 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6580 0))(
  ( (LongMapFixedSize!6581 (defaultEntry!3664 Int) (mask!8424 (_ BitVec 32)) (extraKeys!3538 (_ BitVec 32)) (zeroValue!3548 List!29075) (minValue!3548 List!29075) (_size!6627 (_ BitVec 32)) (_keys!3587 array!11601) (_values!3570 array!11599) (_vacant!3351 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12977 0))(
  ( (Cell!12978 (v!31257 LongMapFixedSize!6580)) )
))
(declare-datatypes ((MutLongMap!3290 0))(
  ( (LongMap!3290 (underlying!6787 Cell!12977)) (MutLongMapExt!3289 (__x!18777 Int)) )
))
(declare-datatypes ((Cell!12979 0))(
  ( (Cell!12980 (v!31258 MutLongMap!3290)) )
))
(declare-datatypes ((MutableMap!3200 0))(
  ( (MutableMapExt!3199 (__x!18778 Int)) (HashMap!3200 (underlying!6788 Cell!12979) (hashF!5138 Hashable!3200) (_size!6628 (_ BitVec 32)) (defaultValue!3362 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3200)

(declare-fun mapDefault!15301 () List!29075)

(assert (=> b!2477736 (= condMapEmpty!15301 (= (arr!5170 (_values!3570 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29075)) mapDefault!15301)))))

(declare-fun b!2477737 () Bool)

(declare-fun e!1572238 () Bool)

(declare-fun e!1572236 () Bool)

(assert (=> b!2477737 (= e!1572238 e!1572236)))

(declare-fun b!2477739 () Bool)

(declare-fun res!1048867 () Bool)

(declare-fun e!1572239 () Bool)

(assert (=> b!2477739 (=> (not res!1048867) (not e!1572239))))

(declare-fun valid!2497 (MutableMap!3200) Bool)

(assert (=> b!2477739 (= res!1048867 (valid!2497 thiss!42540))))

(declare-fun b!2477740 () Bool)

(declare-fun e!1572235 () Bool)

(declare-fun valid!2498 (MutLongMap!3290) Bool)

(assert (=> b!2477740 (= e!1572235 (not (valid!2498 (v!31258 (underlying!6788 thiss!42540)))))))

(declare-fun mapIsEmpty!15301 () Bool)

(assert (=> mapIsEmpty!15301 mapRes!15301))

(declare-fun mapNonEmpty!15301 () Bool)

(declare-fun tp!792752 () Bool)

(declare-fun tp!792753 () Bool)

(assert (=> mapNonEmpty!15301 (= mapRes!15301 (and tp!792752 tp!792753))))

(declare-fun mapValue!15301 () List!29075)

(declare-fun mapKey!15301 () (_ BitVec 32))

(declare-fun mapRest!15301 () (Array (_ BitVec 32) List!29075))

(assert (=> mapNonEmpty!15301 (= (arr!5170 (_values!3570 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) (store mapRest!15301 mapKey!15301 mapValue!15301))))

(declare-fun b!2477741 () Bool)

(declare-fun res!1048869 () Bool)

(assert (=> b!2477741 (=> (not res!1048869) (not e!1572239))))

(declare-fun key!2246 () K!5310)

(declare-fun contains!4974 (MutableMap!3200 K!5310) Bool)

(assert (=> b!2477741 (= res!1048869 (contains!4974 thiss!42540 key!2246))))

(declare-fun res!1048868 () Bool)

(assert (=> start!241694 (=> (not res!1048868) (not e!1572239))))

(get-info :version)

(assert (=> start!241694 (= res!1048868 ((_ is HashMap!3200) thiss!42540))))

(assert (=> start!241694 e!1572239))

(declare-fun e!1572237 () Bool)

(assert (=> start!241694 e!1572237))

(declare-fun tp_is_empty!12085 () Bool)

(assert (=> start!241694 tp_is_empty!12085))

(declare-fun tp!792751 () Bool)

(declare-fun tp!792754 () Bool)

(declare-fun array_inv!3709 (array!11601) Bool)

(declare-fun array_inv!3710 (array!11599) Bool)

(assert (=> b!2477738 (= e!1572236 (and tp!792749 tp!792751 tp!792754 (array_inv!3709 (_keys!3587 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) (array_inv!3710 (_values!3570 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) e!1572234))))

(declare-fun b!2477742 () Bool)

(declare-fun e!1572232 () Bool)

(assert (=> b!2477742 (= e!1572232 e!1572238)))

(declare-fun b!2477743 () Bool)

(assert (=> b!2477743 (= e!1572239 e!1572235)))

(declare-fun res!1048870 () Bool)

(assert (=> b!2477743 (=> (not res!1048870) (not e!1572235))))

(assert (=> b!2477743 (= res!1048870 ((_ is LongMap!3290) (v!31258 (underlying!6788 thiss!42540))))))

(declare-datatypes ((tuple2!28422 0))(
  ( (tuple2!28423 (_1!16752 (_ BitVec 64)) (_2!16752 List!29075)) )
))
(declare-datatypes ((List!29076 0))(
  ( (Nil!28976) (Cons!28976 (h!34378 tuple2!28422) (t!210715 List!29076)) )
))
(declare-datatypes ((ListLongMap!413 0))(
  ( (ListLongMap!414 (toList!1471 List!29076)) )
))
(declare-fun lt!885033 () ListLongMap!413)

(declare-fun map!6049 (MutLongMap!3290) ListLongMap!413)

(assert (=> b!2477743 (= lt!885033 (map!6049 (v!31258 (underlying!6788 thiss!42540))))))

(declare-fun lt!885031 () List!29075)

(declare-fun apply!6843 (MutLongMap!3290 (_ BitVec 64)) List!29075)

(declare-fun hash!619 (Hashable!3200 K!5310) (_ BitVec 64))

(assert (=> b!2477743 (= lt!885031 (apply!6843 (v!31258 (underlying!6788 thiss!42540)) (hash!619 (hashF!5138 thiss!42540) key!2246)))))

(declare-fun e!1572231 () Bool)

(assert (=> b!2477744 (= e!1572237 (and e!1572231 tp!792755))))

(declare-fun b!2477745 () Bool)

(declare-fun lt!885032 () MutLongMap!3290)

(assert (=> b!2477745 (= e!1572231 (and e!1572232 ((_ is LongMap!3290) lt!885032)))))

(assert (=> b!2477745 (= lt!885032 (v!31258 (underlying!6788 thiss!42540)))))

(assert (= (and start!241694 res!1048868) b!2477739))

(assert (= (and b!2477739 res!1048867) b!2477741))

(assert (= (and b!2477741 res!1048869) b!2477743))

(assert (= (and b!2477743 res!1048870) b!2477740))

(assert (= (and b!2477736 condMapEmpty!15301) mapIsEmpty!15301))

(assert (= (and b!2477736 (not condMapEmpty!15301)) mapNonEmpty!15301))

(assert (= b!2477738 b!2477736))

(assert (= b!2477737 b!2477738))

(assert (= b!2477742 b!2477737))

(assert (= (and b!2477745 ((_ is LongMap!3290) (v!31258 (underlying!6788 thiss!42540)))) b!2477742))

(assert (= b!2477744 b!2477745))

(assert (= (and start!241694 ((_ is HashMap!3200) thiss!42540)) b!2477744))

(declare-fun m!2845523 () Bool)

(assert (=> b!2477740 m!2845523))

(declare-fun m!2845525 () Bool)

(assert (=> b!2477741 m!2845525))

(declare-fun m!2845527 () Bool)

(assert (=> b!2477739 m!2845527))

(declare-fun m!2845529 () Bool)

(assert (=> mapNonEmpty!15301 m!2845529))

(declare-fun m!2845531 () Bool)

(assert (=> b!2477738 m!2845531))

(declare-fun m!2845533 () Bool)

(assert (=> b!2477738 m!2845533))

(declare-fun m!2845535 () Bool)

(assert (=> b!2477743 m!2845535))

(declare-fun m!2845537 () Bool)

(assert (=> b!2477743 m!2845537))

(assert (=> b!2477743 m!2845537))

(declare-fun m!2845539 () Bool)

(assert (=> b!2477743 m!2845539))

(check-sat (not b!2477740) (not b!2477739) (not b!2477741) b_and!188247 (not mapNonEmpty!15301) tp_is_empty!12085 (not b!2477736) (not b_next!72723) (not b!2477738) b_and!188245 (not b!2477743) (not b_next!72721))
(check-sat b_and!188247 b_and!188245 (not b_next!72721) (not b_next!72723))
(get-model)

(declare-fun bm!151752 () Bool)

(declare-fun call!151757 () ListLongMap!413)

(assert (=> bm!151752 (= call!151757 (map!6049 (v!31258 (underlying!6788 thiss!42540))))))

(declare-fun bm!151753 () Bool)

(declare-fun call!151759 () Bool)

(declare-datatypes ((Option!5726 0))(
  ( (None!5725) (Some!5725 (v!31259 tuple2!28420)) )
))
(declare-fun call!151762 () Option!5726)

(declare-fun isDefined!4548 (Option!5726) Bool)

(assert (=> bm!151753 (= call!151759 (isDefined!4548 call!151762))))

(declare-fun b!2477769 () Bool)

(declare-fun lambda!93481 () Int)

(declare-datatypes ((Unit!42358 0))(
  ( (Unit!42359) )
))
(declare-fun e!1572256 () Unit!42358)

(declare-fun lt!885078 () (_ BitVec 64))

(declare-fun forallContained!808 (List!29076 Int tuple2!28422) Unit!42358)

(assert (=> b!2477769 (= e!1572256 (forallContained!808 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540)))) lambda!93481 (tuple2!28423 lt!885078 (apply!6843 (v!31258 (underlying!6788 thiss!42540)) lt!885078))))))

(declare-fun c!394260 () Bool)

(declare-fun contains!4975 (List!29076 tuple2!28422) Bool)

(assert (=> b!2477769 (= c!394260 (not (contains!4975 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540)))) (tuple2!28423 lt!885078 (apply!6843 (v!31258 (underlying!6788 thiss!42540)) lt!885078)))))))

(declare-fun lt!885081 () Unit!42358)

(declare-fun e!1572259 () Unit!42358)

(assert (=> b!2477769 (= lt!885081 e!1572259)))

(declare-fun b!2477770 () Bool)

(declare-fun e!1572260 () Unit!42358)

(declare-fun lt!885080 () Unit!42358)

(assert (=> b!2477770 (= e!1572260 lt!885080)))

(declare-fun lt!885089 () ListLongMap!413)

(assert (=> b!2477770 (= lt!885089 call!151757)))

(declare-fun lemmaInGenericMapThenInLongMap!58 (ListLongMap!413 K!5310 Hashable!3200) Unit!42358)

(assert (=> b!2477770 (= lt!885080 (lemmaInGenericMapThenInLongMap!58 lt!885089 key!2246 (hashF!5138 thiss!42540)))))

(declare-fun res!1048877 () Bool)

(declare-fun call!151761 () Bool)

(assert (=> b!2477770 (= res!1048877 call!151761)))

(declare-fun e!1572258 () Bool)

(assert (=> b!2477770 (=> (not res!1048877) (not e!1572258))))

(assert (=> b!2477770 e!1572258))

(declare-fun bm!151754 () Bool)

(declare-fun call!151758 () (_ BitVec 64))

(assert (=> bm!151754 (= call!151758 (hash!619 (hashF!5138 thiss!42540) key!2246))))

(declare-fun bm!151755 () Bool)

(declare-fun c!394259 () Bool)

(declare-fun contains!4976 (ListLongMap!413 (_ BitVec 64)) Bool)

(assert (=> bm!151755 (= call!151761 (contains!4976 (ite c!394259 lt!885089 call!151757) call!151758))))

(declare-fun b!2477771 () Bool)

(declare-fun Unit!42360 () Unit!42358)

(assert (=> b!2477771 (= e!1572256 Unit!42360)))

(declare-fun b!2477772 () Bool)

(assert (=> b!2477772 (= e!1572258 call!151759)))

(declare-fun e!1572257 () Bool)

(declare-fun b!2477773 () Bool)

(declare-fun getPair!58 (List!29075 K!5310) Option!5726)

(assert (=> b!2477773 (= e!1572257 (isDefined!4548 (getPair!58 (apply!6843 (v!31258 (underlying!6788 thiss!42540)) lt!885078) key!2246)))))

(declare-fun call!151760 () List!29075)

(declare-fun bm!151756 () Bool)

(declare-fun apply!6844 (ListLongMap!413 (_ BitVec 64)) List!29075)

(assert (=> bm!151756 (= call!151760 (apply!6844 (ite c!394259 lt!885089 call!151757) call!151758))))

(declare-fun b!2477774 () Bool)

(assert (=> b!2477774 false))

(declare-fun lt!885092 () Unit!42358)

(declare-fun lt!885082 () Unit!42358)

(assert (=> b!2477774 (= lt!885092 lt!885082)))

(declare-fun lt!885076 () ListLongMap!413)

(declare-datatypes ((ListMap!959 0))(
  ( (ListMap!960 (toList!1472 List!29075)) )
))
(declare-fun contains!4977 (ListMap!959 K!5310) Bool)

(declare-fun extractMap!146 (List!29076) ListMap!959)

(assert (=> b!2477774 (contains!4977 (extractMap!146 (toList!1471 lt!885076)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!58 (ListLongMap!413 K!5310 Hashable!3200) Unit!42358)

(assert (=> b!2477774 (= lt!885082 (lemmaInLongMapThenInGenericMap!58 lt!885076 key!2246 (hashF!5138 thiss!42540)))))

(assert (=> b!2477774 (= lt!885076 call!151757)))

(declare-fun e!1572254 () Unit!42358)

(declare-fun Unit!42361 () Unit!42358)

(assert (=> b!2477774 (= e!1572254 Unit!42361)))

(declare-fun b!2477775 () Bool)

(assert (=> b!2477775 (= e!1572260 e!1572254)))

(declare-fun res!1048878 () Bool)

(assert (=> b!2477775 (= res!1048878 call!151761)))

(declare-fun e!1572255 () Bool)

(assert (=> b!2477775 (=> (not res!1048878) (not e!1572255))))

(declare-fun c!394258 () Bool)

(assert (=> b!2477775 (= c!394258 e!1572255)))

(declare-fun b!2477776 () Bool)

(assert (=> b!2477776 (= e!1572255 call!151759)))

(declare-fun bm!151757 () Bool)

(assert (=> bm!151757 (= call!151762 (getPair!58 call!151760 key!2246))))

(declare-fun b!2477768 () Bool)

(assert (=> b!2477768 false))

(declare-fun lt!885084 () Unit!42358)

(declare-fun lt!885090 () Unit!42358)

(assert (=> b!2477768 (= lt!885084 lt!885090)))

(declare-fun lt!885086 () List!29076)

(declare-fun lt!885079 () List!29075)

(assert (=> b!2477768 (contains!4975 lt!885086 (tuple2!28423 lt!885078 lt!885079))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!59 (List!29076 (_ BitVec 64) List!29075) Unit!42358)

(assert (=> b!2477768 (= lt!885090 (lemmaGetValueByKeyImpliesContainsTuple!59 lt!885086 lt!885078 lt!885079))))

(assert (=> b!2477768 (= lt!885079 (apply!6843 (v!31258 (underlying!6788 thiss!42540)) lt!885078))))

(assert (=> b!2477768 (= lt!885086 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540)))))))

(declare-fun lt!885075 () Unit!42358)

(declare-fun lt!885077 () Unit!42358)

(assert (=> b!2477768 (= lt!885075 lt!885077)))

(declare-fun lt!885088 () List!29076)

(declare-datatypes ((Option!5727 0))(
  ( (None!5726) (Some!5726 (v!31260 List!29075)) )
))
(declare-fun isDefined!4549 (Option!5727) Bool)

(declare-fun getValueByKey!125 (List!29076 (_ BitVec 64)) Option!5727)

(assert (=> b!2477768 (isDefined!4549 (getValueByKey!125 lt!885088 lt!885078))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!82 (List!29076 (_ BitVec 64)) Unit!42358)

(assert (=> b!2477768 (= lt!885077 (lemmaContainsKeyImpliesGetValueByKeyDefined!82 lt!885088 lt!885078))))

(assert (=> b!2477768 (= lt!885088 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540)))))))

(declare-fun lt!885091 () Unit!42358)

(declare-fun lt!885085 () Unit!42358)

(assert (=> b!2477768 (= lt!885091 lt!885085)))

(declare-fun lt!885093 () List!29076)

(declare-fun containsKey!116 (List!29076 (_ BitVec 64)) Bool)

(assert (=> b!2477768 (containsKey!116 lt!885093 lt!885078)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!59 (List!29076 (_ BitVec 64)) Unit!42358)

(assert (=> b!2477768 (= lt!885085 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!59 lt!885093 lt!885078))))

(assert (=> b!2477768 (= lt!885093 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540)))))))

(declare-fun Unit!42362 () Unit!42358)

(assert (=> b!2477768 (= e!1572259 Unit!42362)))

(declare-fun d!712442 () Bool)

(declare-fun lt!885074 () Bool)

(declare-fun map!6050 (MutableMap!3200) ListMap!959)

(assert (=> d!712442 (= lt!885074 (contains!4977 (map!6050 thiss!42540) key!2246))))

(assert (=> d!712442 (= lt!885074 e!1572257)))

(declare-fun res!1048879 () Bool)

(assert (=> d!712442 (=> (not res!1048879) (not e!1572257))))

(declare-fun contains!4978 (MutLongMap!3290 (_ BitVec 64)) Bool)

(assert (=> d!712442 (= res!1048879 (contains!4978 (v!31258 (underlying!6788 thiss!42540)) lt!885078))))

(declare-fun lt!885083 () Unit!42358)

(assert (=> d!712442 (= lt!885083 e!1572260)))

(assert (=> d!712442 (= c!394259 (contains!4977 (extractMap!146 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540))))) key!2246))))

(declare-fun lt!885087 () Unit!42358)

(assert (=> d!712442 (= lt!885087 e!1572256)))

(declare-fun c!394257 () Bool)

(assert (=> d!712442 (= c!394257 (contains!4978 (v!31258 (underlying!6788 thiss!42540)) lt!885078))))

(assert (=> d!712442 (= lt!885078 (hash!619 (hashF!5138 thiss!42540) key!2246))))

(assert (=> d!712442 (valid!2497 thiss!42540)))

(assert (=> d!712442 (= (contains!4974 thiss!42540 key!2246) lt!885074)))

(declare-fun b!2477777 () Bool)

(declare-fun Unit!42363 () Unit!42358)

(assert (=> b!2477777 (= e!1572254 Unit!42363)))

(declare-fun b!2477778 () Bool)

(declare-fun Unit!42364 () Unit!42358)

(assert (=> b!2477778 (= e!1572259 Unit!42364)))

(assert (= (and d!712442 c!394257) b!2477769))

(assert (= (and d!712442 (not c!394257)) b!2477771))

(assert (= (and b!2477769 c!394260) b!2477768))

(assert (= (and b!2477769 (not c!394260)) b!2477778))

(assert (= (and d!712442 c!394259) b!2477770))

(assert (= (and d!712442 (not c!394259)) b!2477775))

(assert (= (and b!2477770 res!1048877) b!2477772))

(assert (= (and b!2477775 res!1048878) b!2477776))

(assert (= (and b!2477775 c!394258) b!2477774))

(assert (= (and b!2477775 (not c!394258)) b!2477777))

(assert (= (or b!2477770 b!2477772 b!2477775 b!2477776) bm!151754))

(assert (= (or b!2477770 b!2477775 b!2477776 b!2477774) bm!151752))

(assert (= (or b!2477770 b!2477775) bm!151755))

(assert (= (or b!2477772 b!2477776) bm!151756))

(assert (= (or b!2477772 b!2477776) bm!151757))

(assert (= (or b!2477772 b!2477776) bm!151753))

(assert (= (and d!712442 res!1048879) b!2477773))

(declare-fun m!2845541 () Bool)

(assert (=> d!712442 m!2845541))

(declare-fun m!2845543 () Bool)

(assert (=> d!712442 m!2845543))

(assert (=> d!712442 m!2845527))

(assert (=> d!712442 m!2845535))

(assert (=> d!712442 m!2845541))

(declare-fun m!2845545 () Bool)

(assert (=> d!712442 m!2845545))

(declare-fun m!2845547 () Bool)

(assert (=> d!712442 m!2845547))

(assert (=> d!712442 m!2845537))

(assert (=> d!712442 m!2845545))

(declare-fun m!2845549 () Bool)

(assert (=> d!712442 m!2845549))

(declare-fun m!2845551 () Bool)

(assert (=> b!2477770 m!2845551))

(declare-fun m!2845553 () Bool)

(assert (=> bm!151757 m!2845553))

(assert (=> bm!151752 m!2845535))

(declare-fun m!2845555 () Bool)

(assert (=> b!2477768 m!2845555))

(declare-fun m!2845557 () Bool)

(assert (=> b!2477768 m!2845557))

(declare-fun m!2845559 () Bool)

(assert (=> b!2477768 m!2845559))

(declare-fun m!2845561 () Bool)

(assert (=> b!2477768 m!2845561))

(assert (=> b!2477768 m!2845559))

(declare-fun m!2845563 () Bool)

(assert (=> b!2477768 m!2845563))

(declare-fun m!2845565 () Bool)

(assert (=> b!2477768 m!2845565))

(declare-fun m!2845567 () Bool)

(assert (=> b!2477768 m!2845567))

(declare-fun m!2845569 () Bool)

(assert (=> b!2477768 m!2845569))

(assert (=> b!2477768 m!2845535))

(declare-fun m!2845571 () Bool)

(assert (=> bm!151755 m!2845571))

(assert (=> b!2477769 m!2845535))

(assert (=> b!2477769 m!2845563))

(declare-fun m!2845573 () Bool)

(assert (=> b!2477769 m!2845573))

(declare-fun m!2845575 () Bool)

(assert (=> b!2477769 m!2845575))

(declare-fun m!2845577 () Bool)

(assert (=> bm!151756 m!2845577))

(assert (=> bm!151754 m!2845537))

(assert (=> b!2477773 m!2845563))

(assert (=> b!2477773 m!2845563))

(declare-fun m!2845579 () Bool)

(assert (=> b!2477773 m!2845579))

(assert (=> b!2477773 m!2845579))

(declare-fun m!2845581 () Bool)

(assert (=> b!2477773 m!2845581))

(declare-fun m!2845583 () Bool)

(assert (=> b!2477774 m!2845583))

(assert (=> b!2477774 m!2845583))

(declare-fun m!2845585 () Bool)

(assert (=> b!2477774 m!2845585))

(declare-fun m!2845587 () Bool)

(assert (=> b!2477774 m!2845587))

(declare-fun m!2845589 () Bool)

(assert (=> bm!151753 m!2845589))

(assert (=> b!2477741 d!712442))

(declare-fun d!712444 () Bool)

(assert (=> d!712444 (= (array_inv!3709 (_keys!3587 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) (bvsge (size!22590 (_keys!3587 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477738 d!712444))

(declare-fun d!712446 () Bool)

(assert (=> d!712446 (= (array_inv!3710 (_values!3570 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) (bvsge (size!22589 (_values!3570 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477738 d!712446))

(declare-fun bs!467189 () Bool)

(declare-fun b!2477783 () Bool)

(assert (= bs!467189 (and b!2477783 b!2477769)))

(declare-fun lambda!93484 () Int)

(assert (=> bs!467189 (= lambda!93484 lambda!93481)))

(declare-fun d!712448 () Bool)

(declare-fun res!1048884 () Bool)

(declare-fun e!1572263 () Bool)

(assert (=> d!712448 (=> (not res!1048884) (not e!1572263))))

(assert (=> d!712448 (= res!1048884 (valid!2498 (v!31258 (underlying!6788 thiss!42540))))))

(assert (=> d!712448 (= (valid!2497 thiss!42540) e!1572263)))

(declare-fun res!1048885 () Bool)

(assert (=> b!2477783 (=> (not res!1048885) (not e!1572263))))

(declare-fun forall!5932 (List!29076 Int) Bool)

(assert (=> b!2477783 (= res!1048885 (forall!5932 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540)))) lambda!93484))))

(declare-fun b!2477784 () Bool)

(declare-fun allKeysSameHashInMap!132 (ListLongMap!413 Hashable!3200) Bool)

(assert (=> b!2477784 (= e!1572263 (allKeysSameHashInMap!132 (map!6049 (v!31258 (underlying!6788 thiss!42540))) (hashF!5138 thiss!42540)))))

(assert (= (and d!712448 res!1048884) b!2477783))

(assert (= (and b!2477783 res!1048885) b!2477784))

(assert (=> d!712448 m!2845523))

(assert (=> b!2477783 m!2845535))

(declare-fun m!2845591 () Bool)

(assert (=> b!2477783 m!2845591))

(assert (=> b!2477784 m!2845535))

(assert (=> b!2477784 m!2845535))

(declare-fun m!2845593 () Bool)

(assert (=> b!2477784 m!2845593))

(assert (=> b!2477739 d!712448))

(declare-fun d!712450 () Bool)

(declare-fun map!6051 (LongMapFixedSize!6580) ListLongMap!413)

(assert (=> d!712450 (= (map!6049 (v!31258 (underlying!6788 thiss!42540))) (map!6051 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540))))))))

(declare-fun bs!467190 () Bool)

(assert (= bs!467190 d!712450))

(declare-fun m!2845595 () Bool)

(assert (=> bs!467190 m!2845595))

(assert (=> b!2477743 d!712450))

(declare-fun d!712452 () Bool)

(declare-fun e!1572266 () Bool)

(assert (=> d!712452 e!1572266))

(declare-fun c!394263 () Bool)

(assert (=> d!712452 (= c!394263 (contains!4978 (v!31258 (underlying!6788 thiss!42540)) (hash!619 (hashF!5138 thiss!42540) key!2246)))))

(declare-fun lt!885096 () List!29075)

(declare-fun apply!6845 (LongMapFixedSize!6580 (_ BitVec 64)) List!29075)

(assert (=> d!712452 (= lt!885096 (apply!6845 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))) (hash!619 (hashF!5138 thiss!42540) key!2246)))))

(assert (=> d!712452 (valid!2498 (v!31258 (underlying!6788 thiss!42540)))))

(assert (=> d!712452 (= (apply!6843 (v!31258 (underlying!6788 thiss!42540)) (hash!619 (hashF!5138 thiss!42540) key!2246)) lt!885096)))

(declare-fun b!2477789 () Bool)

(declare-fun get!8929 (Option!5727) List!29075)

(assert (=> b!2477789 (= e!1572266 (= lt!885096 (get!8929 (getValueByKey!125 (toList!1471 (map!6049 (v!31258 (underlying!6788 thiss!42540)))) (hash!619 (hashF!5138 thiss!42540) key!2246)))))))

(declare-fun b!2477790 () Bool)

(declare-fun dynLambda!12433 (Int (_ BitVec 64)) List!29075)

(assert (=> b!2477790 (= e!1572266 (= lt!885096 (dynLambda!12433 (defaultEntry!3664 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540))))) (hash!619 (hashF!5138 thiss!42540) key!2246))))))

(assert (=> b!2477790 ((_ is LongMap!3290) (v!31258 (underlying!6788 thiss!42540)))))

(assert (= (and d!712452 c!394263) b!2477789))

(assert (= (and d!712452 (not c!394263)) b!2477790))

(declare-fun b_lambda!76003 () Bool)

(assert (=> (not b_lambda!76003) (not b!2477790)))

(declare-fun t!210717 () Bool)

(declare-fun tb!140357 () Bool)

(assert (=> (and b!2477738 (= (defaultEntry!3664 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540))))) (defaultEntry!3664 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540)))))) t!210717) tb!140357))

(assert (=> b!2477790 t!210717))

(declare-fun result!173258 () Bool)

(declare-fun b_and!188249 () Bool)

(assert (= b_and!188245 (and (=> t!210717 result!173258) b_and!188249)))

(assert (=> d!712452 m!2845537))

(declare-fun m!2845597 () Bool)

(assert (=> d!712452 m!2845597))

(assert (=> d!712452 m!2845537))

(declare-fun m!2845599 () Bool)

(assert (=> d!712452 m!2845599))

(assert (=> d!712452 m!2845523))

(assert (=> b!2477789 m!2845535))

(assert (=> b!2477789 m!2845537))

(declare-fun m!2845601 () Bool)

(assert (=> b!2477789 m!2845601))

(assert (=> b!2477789 m!2845601))

(declare-fun m!2845603 () Bool)

(assert (=> b!2477789 m!2845603))

(assert (=> b!2477790 m!2845537))

(declare-fun m!2845605 () Bool)

(assert (=> b!2477790 m!2845605))

(assert (=> b!2477743 d!712452))

(declare-fun d!712454 () Bool)

(declare-fun hash!620 (Hashable!3200 K!5310) (_ BitVec 64))

(assert (=> d!712454 (= (hash!619 (hashF!5138 thiss!42540) key!2246) (hash!620 (hashF!5138 thiss!42540) key!2246))))

(declare-fun bs!467191 () Bool)

(assert (= bs!467191 d!712454))

(declare-fun m!2845607 () Bool)

(assert (=> bs!467191 m!2845607))

(assert (=> b!2477743 d!712454))

(declare-fun d!712456 () Bool)

(declare-fun valid!2499 (LongMapFixedSize!6580) Bool)

(assert (=> d!712456 (= (valid!2498 (v!31258 (underlying!6788 thiss!42540))) (valid!2499 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540))))))))

(declare-fun bs!467192 () Bool)

(assert (= bs!467192 d!712456))

(declare-fun m!2845609 () Bool)

(assert (=> bs!467192 m!2845609))

(assert (=> b!2477740 d!712456))

(declare-fun e!1572271 () Bool)

(declare-fun b!2477797 () Bool)

(declare-fun tp_is_empty!12087 () Bool)

(declare-fun tp!792762 () Bool)

(assert (=> b!2477797 (= e!1572271 (and tp_is_empty!12085 tp_is_empty!12087 tp!792762))))

(declare-fun mapIsEmpty!15304 () Bool)

(declare-fun mapRes!15304 () Bool)

(assert (=> mapIsEmpty!15304 mapRes!15304))

(declare-fun mapNonEmpty!15304 () Bool)

(declare-fun tp!792764 () Bool)

(assert (=> mapNonEmpty!15304 (= mapRes!15304 (and tp!792764 e!1572271))))

(declare-fun mapValue!15304 () List!29075)

(declare-fun mapRest!15304 () (Array (_ BitVec 32) List!29075))

(declare-fun mapKey!15304 () (_ BitVec 32))

(assert (=> mapNonEmpty!15304 (= mapRest!15301 (store mapRest!15304 mapKey!15304 mapValue!15304))))

(declare-fun tp!792763 () Bool)

(declare-fun b!2477798 () Bool)

(declare-fun e!1572272 () Bool)

(assert (=> b!2477798 (= e!1572272 (and tp_is_empty!12085 tp_is_empty!12087 tp!792763))))

(declare-fun condMapEmpty!15304 () Bool)

(declare-fun mapDefault!15304 () List!29075)

(assert (=> mapNonEmpty!15301 (= condMapEmpty!15304 (= mapRest!15301 ((as const (Array (_ BitVec 32) List!29075)) mapDefault!15304)))))

(assert (=> mapNonEmpty!15301 (= tp!792752 (and e!1572272 mapRes!15304))))

(assert (= (and mapNonEmpty!15301 condMapEmpty!15304) mapIsEmpty!15304))

(assert (= (and mapNonEmpty!15301 (not condMapEmpty!15304)) mapNonEmpty!15304))

(assert (= (and mapNonEmpty!15304 ((_ is Cons!28975) mapValue!15304)) b!2477797))

(assert (= (and mapNonEmpty!15301 ((_ is Cons!28975) mapDefault!15304)) b!2477798))

(declare-fun m!2845611 () Bool)

(assert (=> mapNonEmpty!15304 m!2845611))

(declare-fun tp!792767 () Bool)

(declare-fun b!2477803 () Bool)

(declare-fun e!1572275 () Bool)

(assert (=> b!2477803 (= e!1572275 (and tp_is_empty!12085 tp_is_empty!12087 tp!792767))))

(assert (=> mapNonEmpty!15301 (= tp!792753 e!1572275)))

(assert (= (and mapNonEmpty!15301 ((_ is Cons!28975) mapValue!15301)) b!2477803))

(declare-fun tp!792768 () Bool)

(declare-fun b!2477804 () Bool)

(declare-fun e!1572276 () Bool)

(assert (=> b!2477804 (= e!1572276 (and tp_is_empty!12085 tp_is_empty!12087 tp!792768))))

(assert (=> b!2477738 (= tp!792751 e!1572276)))

(assert (= (and b!2477738 ((_ is Cons!28975) (zeroValue!3548 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540))))))) b!2477804))

(declare-fun e!1572277 () Bool)

(declare-fun tp!792769 () Bool)

(declare-fun b!2477805 () Bool)

(assert (=> b!2477805 (= e!1572277 (and tp_is_empty!12085 tp_is_empty!12087 tp!792769))))

(assert (=> b!2477738 (= tp!792754 e!1572277)))

(assert (= (and b!2477738 ((_ is Cons!28975) (minValue!3548 (v!31257 (underlying!6787 (v!31258 (underlying!6788 thiss!42540))))))) b!2477805))

(declare-fun e!1572278 () Bool)

(declare-fun tp!792770 () Bool)

(declare-fun b!2477806 () Bool)

(assert (=> b!2477806 (= e!1572278 (and tp_is_empty!12085 tp_is_empty!12087 tp!792770))))

(assert (=> b!2477736 (= tp!792750 e!1572278)))

(assert (= (and b!2477736 ((_ is Cons!28975) mapDefault!15301)) b!2477806))

(declare-fun b_lambda!76005 () Bool)

(assert (= b_lambda!76003 (or (and b!2477738 b_free!72017) b_lambda!76005)))

(check-sat (not d!712454) (not bm!151757) (not bm!151754) (not b!2477789) (not b!2477769) b_and!188249 (not b_lambda!76005) (not b!2477797) (not tb!140357) (not b!2477806) (not d!712456) (not b_next!72721) tp_is_empty!12087 (not b!2477798) (not d!712452) (not d!712450) (not b!2477803) (not b!2477804) (not bm!151755) tp_is_empty!12085 (not b!2477784) (not b!2477783) (not b_next!72723) b_and!188247 (not bm!151753) (not bm!151756) (not b!2477770) (not b!2477805) (not d!712442) (not bm!151752) (not b!2477774) (not b!2477773) (not mapNonEmpty!15304) (not b!2477768) (not d!712448))
(check-sat b_and!188247 b_and!188249 (not b_next!72721) (not b_next!72723))
