; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242246 () Bool)

(assert start!242246)

(declare-fun b!2482203 () Bool)

(declare-fun b_free!72345 () Bool)

(declare-fun b_next!73049 () Bool)

(assert (=> b!2482203 (= b_free!72345 (not b_next!73049))))

(declare-fun tp!794678 () Bool)

(declare-fun b_and!188593 () Bool)

(assert (=> b!2482203 (= tp!794678 b_and!188593)))

(declare-fun b!2482198 () Bool)

(declare-fun b_free!72347 () Bool)

(declare-fun b_next!73051 () Bool)

(assert (=> b!2482198 (= b_free!72347 (not b_next!73051))))

(declare-fun tp!794675 () Bool)

(declare-fun b_and!188595 () Bool)

(assert (=> b!2482198 (= tp!794675 b_and!188595)))

(declare-fun e!1575710 () Bool)

(declare-fun e!1575709 () Bool)

(assert (=> b!2482198 (= e!1575710 (and e!1575709 tp!794675))))

(declare-fun b!2482199 () Bool)

(declare-fun res!1050810 () Bool)

(declare-fun e!1575703 () Bool)

(assert (=> b!2482199 (=> (not res!1050810) (not e!1575703))))

(declare-datatypes ((Hashable!3282 0))(
  ( (HashableExt!3281 (__x!19022 Int)) )
))
(declare-datatypes ((K!5515 0))(
  ( (K!5516 (val!8887 Int)) )
))
(declare-datatypes ((V!5717 0))(
  ( (V!5718 (val!8888 Int)) )
))
(declare-datatypes ((tuple2!28856 0))(
  ( (tuple2!28857 (_1!16969 K!5515) (_2!16969 V!5717)) )
))
(declare-datatypes ((List!29222 0))(
  ( (Nil!29122) (Cons!29122 (h!34528 tuple2!28856) (t!210881 List!29222)) )
))
(declare-datatypes ((array!11953 0))(
  ( (array!11954 (arr!5334 (Array (_ BitVec 32) List!29222)) (size!22753 (_ BitVec 32))) )
))
(declare-datatypes ((array!11955 0))(
  ( (array!11956 (arr!5335 (Array (_ BitVec 32) (_ BitVec 64))) (size!22754 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6744 0))(
  ( (LongMapFixedSize!6745 (defaultEntry!3746 Int) (mask!8547 (_ BitVec 32)) (extraKeys!3620 (_ BitVec 32)) (zeroValue!3630 List!29222) (minValue!3630 List!29222) (_size!6791 (_ BitVec 32)) (_keys!3669 array!11955) (_values!3652 array!11953) (_vacant!3433 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13305 0))(
  ( (Cell!13306 (v!31468 LongMapFixedSize!6744)) )
))
(declare-datatypes ((MutLongMap!3372 0))(
  ( (LongMap!3372 (underlying!6951 Cell!13305)) (MutLongMapExt!3371 (__x!19023 Int)) )
))
(declare-datatypes ((Cell!13307 0))(
  ( (Cell!13308 (v!31469 MutLongMap!3372)) )
))
(declare-datatypes ((MutableMap!3282 0))(
  ( (MutableMapExt!3281 (__x!19024 Int)) (HashMap!3282 (underlying!6952 Cell!13307) (hashF!5245 Hashable!3282) (_size!6792 (_ BitVec 32)) (defaultValue!3444 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3282)

(declare-fun key!2246 () K!5515)

(declare-fun contains!5118 (MutableMap!3282 K!5515) Bool)

(assert (=> b!2482199 (= res!1050810 (contains!5118 thiss!42540 key!2246))))

(declare-fun mapIsEmpty!15587 () Bool)

(declare-fun mapRes!15587 () Bool)

(assert (=> mapIsEmpty!15587 mapRes!15587))

(declare-fun b!2482200 () Bool)

(declare-fun e!1575707 () Bool)

(declare-fun e!1575708 () Bool)

(assert (=> b!2482200 (= e!1575707 e!1575708)))

(declare-fun b!2482201 () Bool)

(declare-fun res!1050811 () Bool)

(assert (=> b!2482201 (=> (not res!1050811) (not e!1575703))))

(declare-fun valid!2576 (MutableMap!3282) Bool)

(assert (=> b!2482201 (= res!1050811 (valid!2576 thiss!42540))))

(declare-fun b!2482202 () Bool)

(declare-fun e!1575705 () Bool)

(assert (=> b!2482202 (= e!1575705 e!1575707)))

(declare-fun tp!794679 () Bool)

(declare-fun tp!794681 () Bool)

(declare-fun e!1575706 () Bool)

(declare-fun array_inv!3829 (array!11955) Bool)

(declare-fun array_inv!3830 (array!11953) Bool)

(assert (=> b!2482203 (= e!1575708 (and tp!794678 tp!794679 tp!794681 (array_inv!3829 (_keys!3669 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) (array_inv!3830 (_values!3652 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) e!1575706))))

(declare-fun b!2482204 () Bool)

(declare-fun lt!888759 () MutLongMap!3372)

(get-info :version)

(assert (=> b!2482204 (= e!1575709 (and e!1575705 ((_ is LongMap!3372) lt!888759)))))

(assert (=> b!2482204 (= lt!888759 (v!31469 (underlying!6952 thiss!42540)))))

(declare-fun lt!888756 () List!29222)

(declare-fun lt!888757 () (_ BitVec 64))

(declare-fun b!2482205 () Bool)

(declare-datatypes ((tuple2!28858 0))(
  ( (tuple2!28859 (_1!16970 Bool) (_2!16970 MutLongMap!3372)) )
))
(declare-fun update!189 (MutLongMap!3372 (_ BitVec 64) List!29222) tuple2!28858)

(declare-fun removePairForKey!74 (List!29222 K!5515) List!29222)

(assert (=> b!2482205 (= e!1575703 (not ((_ is LongMap!3372) (_2!16970 (update!189 (v!31469 (underlying!6952 thiss!42540)) lt!888757 (removePairForKey!74 lt!888756 key!2246))))))))

(declare-datatypes ((ListMap!1073 0))(
  ( (ListMap!1074 (toList!1591 List!29222)) )
))
(declare-fun lt!888758 () ListMap!1073)

(declare-fun map!6214 (MutableMap!3282) ListMap!1073)

(assert (=> b!2482205 (= lt!888758 (map!6214 thiss!42540))))

(declare-fun lambda!94075 () Int)

(declare-datatypes ((Unit!42633 0))(
  ( (Unit!42634) )
))
(declare-fun lt!888760 () Unit!42633)

(declare-datatypes ((tuple2!28860 0))(
  ( (tuple2!28861 (_1!16971 (_ BitVec 64)) (_2!16971 List!29222)) )
))
(declare-datatypes ((List!29223 0))(
  ( (Nil!29123) (Cons!29123 (h!34529 tuple2!28860) (t!210882 List!29223)) )
))
(declare-fun forallContained!863 (List!29223 Int tuple2!28860) Unit!42633)

(declare-datatypes ((ListLongMap!539 0))(
  ( (ListLongMap!540 (toList!1592 List!29223)) )
))
(declare-fun map!6215 (MutLongMap!3372) ListLongMap!539)

(assert (=> b!2482205 (= lt!888760 (forallContained!863 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) lambda!94075 (tuple2!28861 lt!888757 lt!888756)))))

(declare-fun apply!6925 (MutLongMap!3372 (_ BitVec 64)) List!29222)

(assert (=> b!2482205 (= lt!888756 (apply!6925 (v!31469 (underlying!6952 thiss!42540)) lt!888757))))

(declare-fun hash!696 (Hashable!3282 K!5515) (_ BitVec 64))

(assert (=> b!2482205 (= lt!888757 (hash!696 (hashF!5245 thiss!42540) key!2246))))

(declare-fun res!1050809 () Bool)

(assert (=> start!242246 (=> (not res!1050809) (not e!1575703))))

(assert (=> start!242246 (= res!1050809 ((_ is HashMap!3282) thiss!42540))))

(assert (=> start!242246 e!1575703))

(assert (=> start!242246 e!1575710))

(declare-fun tp_is_empty!12275 () Bool)

(assert (=> start!242246 tp_is_empty!12275))

(declare-fun b!2482206 () Bool)

(declare-fun tp!794676 () Bool)

(assert (=> b!2482206 (= e!1575706 (and tp!794676 mapRes!15587))))

(declare-fun condMapEmpty!15587 () Bool)

(declare-fun mapDefault!15587 () List!29222)

(assert (=> b!2482206 (= condMapEmpty!15587 (= (arr!5334 (_values!3652 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29222)) mapDefault!15587)))))

(declare-fun mapNonEmpty!15587 () Bool)

(declare-fun tp!794680 () Bool)

(declare-fun tp!794677 () Bool)

(assert (=> mapNonEmpty!15587 (= mapRes!15587 (and tp!794680 tp!794677))))

(declare-fun mapValue!15587 () List!29222)

(declare-fun mapRest!15587 () (Array (_ BitVec 32) List!29222))

(declare-fun mapKey!15587 () (_ BitVec 32))

(assert (=> mapNonEmpty!15587 (= (arr!5334 (_values!3652 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) (store mapRest!15587 mapKey!15587 mapValue!15587))))

(assert (= (and start!242246 res!1050809) b!2482201))

(assert (= (and b!2482201 res!1050811) b!2482199))

(assert (= (and b!2482199 res!1050810) b!2482205))

(assert (= (and b!2482206 condMapEmpty!15587) mapIsEmpty!15587))

(assert (= (and b!2482206 (not condMapEmpty!15587)) mapNonEmpty!15587))

(assert (= b!2482203 b!2482206))

(assert (= b!2482200 b!2482203))

(assert (= b!2482202 b!2482200))

(assert (= (and b!2482204 ((_ is LongMap!3372) (v!31469 (underlying!6952 thiss!42540)))) b!2482202))

(assert (= b!2482198 b!2482204))

(assert (= (and start!242246 ((_ is HashMap!3282) thiss!42540)) b!2482198))

(declare-fun m!2850255 () Bool)

(assert (=> b!2482199 m!2850255))

(declare-fun m!2850257 () Bool)

(assert (=> b!2482203 m!2850257))

(declare-fun m!2850259 () Bool)

(assert (=> b!2482203 m!2850259))

(declare-fun m!2850261 () Bool)

(assert (=> b!2482205 m!2850261))

(declare-fun m!2850263 () Bool)

(assert (=> b!2482205 m!2850263))

(declare-fun m!2850265 () Bool)

(assert (=> b!2482205 m!2850265))

(declare-fun m!2850267 () Bool)

(assert (=> b!2482205 m!2850267))

(declare-fun m!2850269 () Bool)

(assert (=> b!2482205 m!2850269))

(assert (=> b!2482205 m!2850269))

(declare-fun m!2850271 () Bool)

(assert (=> b!2482205 m!2850271))

(declare-fun m!2850273 () Bool)

(assert (=> b!2482205 m!2850273))

(declare-fun m!2850275 () Bool)

(assert (=> b!2482201 m!2850275))

(declare-fun m!2850277 () Bool)

(assert (=> mapNonEmpty!15587 m!2850277))

(check-sat (not mapNonEmpty!15587) tp_is_empty!12275 (not b!2482199) (not b!2482205) b_and!188593 b_and!188595 (not b!2482201) (not b_next!73049) (not b!2482206) (not b!2482203) (not b_next!73051))
(check-sat b_and!188595 b_and!188593 (not b_next!73049) (not b_next!73051))
(get-model)

(declare-fun bs!467535 () Bool)

(declare-fun b!2482235 () Bool)

(assert (= bs!467535 (and b!2482235 b!2482205)))

(declare-fun lambda!94078 () Int)

(assert (=> bs!467535 (= lambda!94078 lambda!94075)))

(declare-fun b!2482229 () Bool)

(declare-fun e!1575725 () Unit!42633)

(declare-fun Unit!42635 () Unit!42633)

(assert (=> b!2482229 (= e!1575725 Unit!42635)))

(declare-fun b!2482230 () Bool)

(assert (=> b!2482230 false))

(declare-fun lt!888811 () Unit!42633)

(declare-fun lt!888808 () Unit!42633)

(assert (=> b!2482230 (= lt!888811 lt!888808)))

(declare-fun lt!888818 () List!29223)

(declare-fun lt!888806 () (_ BitVec 64))

(declare-fun lt!888815 () List!29222)

(declare-fun contains!5119 (List!29223 tuple2!28860) Bool)

(assert (=> b!2482230 (contains!5119 lt!888818 (tuple2!28861 lt!888806 lt!888815))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!76 (List!29223 (_ BitVec 64) List!29222) Unit!42633)

(assert (=> b!2482230 (= lt!888808 (lemmaGetValueByKeyImpliesContainsTuple!76 lt!888818 lt!888806 lt!888815))))

(assert (=> b!2482230 (= lt!888815 (apply!6925 (v!31469 (underlying!6952 thiss!42540)) lt!888806))))

(assert (=> b!2482230 (= lt!888818 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))))))

(declare-fun lt!888816 () Unit!42633)

(declare-fun lt!888805 () Unit!42633)

(assert (=> b!2482230 (= lt!888816 lt!888805)))

(declare-fun lt!888804 () List!29223)

(declare-datatypes ((Option!5753 0))(
  ( (None!5752) (Some!5752 (v!31474 List!29222)) )
))
(declare-fun isDefined!4575 (Option!5753) Bool)

(declare-fun getValueByKey!139 (List!29223 (_ BitVec 64)) Option!5753)

(assert (=> b!2482230 (isDefined!4575 (getValueByKey!139 lt!888804 lt!888806))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!96 (List!29223 (_ BitVec 64)) Unit!42633)

(assert (=> b!2482230 (= lt!888805 (lemmaContainsKeyImpliesGetValueByKeyDefined!96 lt!888804 lt!888806))))

(assert (=> b!2482230 (= lt!888804 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))))))

(declare-fun lt!888810 () Unit!42633)

(declare-fun lt!888812 () Unit!42633)

(assert (=> b!2482230 (= lt!888810 lt!888812)))

(declare-fun lt!888820 () List!29223)

(declare-fun containsKey!137 (List!29223 (_ BitVec 64)) Bool)

(assert (=> b!2482230 (containsKey!137 lt!888820 lt!888806)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!72 (List!29223 (_ BitVec 64)) Unit!42633)

(assert (=> b!2482230 (= lt!888812 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!72 lt!888820 lt!888806))))

(assert (=> b!2482230 (= lt!888820 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))))))

(declare-fun e!1575731 () Unit!42633)

(declare-fun Unit!42636 () Unit!42633)

(assert (=> b!2482230 (= e!1575731 Unit!42636)))

(declare-fun b!2482231 () Bool)

(declare-fun e!1575730 () Unit!42633)

(declare-fun e!1575726 () Unit!42633)

(assert (=> b!2482231 (= e!1575730 e!1575726)))

(declare-fun res!1050819 () Bool)

(declare-fun call!152035 () Bool)

(assert (=> b!2482231 (= res!1050819 call!152035)))

(declare-fun e!1575727 () Bool)

(assert (=> b!2482231 (=> (not res!1050819) (not e!1575727))))

(declare-fun c!394597 () Bool)

(assert (=> b!2482231 (= c!394597 e!1575727)))

(declare-fun b!2482232 () Bool)

(declare-fun call!152032 () Bool)

(assert (=> b!2482232 (= e!1575727 call!152032)))

(declare-fun e!1575729 () Bool)

(declare-fun b!2482233 () Bool)

(declare-datatypes ((Option!5754 0))(
  ( (None!5753) (Some!5753 (v!31475 tuple2!28856)) )
))
(declare-fun isDefined!4576 (Option!5754) Bool)

(declare-fun getPair!71 (List!29222 K!5515) Option!5754)

(assert (=> b!2482233 (= e!1575729 (isDefined!4576 (getPair!71 (apply!6925 (v!31469 (underlying!6952 thiss!42540)) lt!888806) key!2246)))))

(declare-fun bm!152025 () Bool)

(declare-fun call!152034 () ListLongMap!539)

(assert (=> bm!152025 (= call!152034 (map!6215 (v!31469 (underlying!6952 thiss!42540))))))

(declare-fun b!2482234 () Bool)

(declare-fun lt!888817 () Unit!42633)

(assert (=> b!2482234 (= e!1575730 lt!888817)))

(declare-fun lt!888819 () ListLongMap!539)

(assert (=> b!2482234 (= lt!888819 call!152034)))

(declare-fun lemmaInGenericMapThenInLongMap!71 (ListLongMap!539 K!5515 Hashable!3282) Unit!42633)

(assert (=> b!2482234 (= lt!888817 (lemmaInGenericMapThenInLongMap!71 lt!888819 key!2246 (hashF!5245 thiss!42540)))))

(declare-fun res!1050820 () Bool)

(assert (=> b!2482234 (= res!1050820 call!152035)))

(declare-fun e!1575728 () Bool)

(assert (=> b!2482234 (=> (not res!1050820) (not e!1575728))))

(assert (=> b!2482234 e!1575728))

(assert (=> b!2482235 (= e!1575725 (forallContained!863 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) lambda!94078 (tuple2!28861 lt!888806 (apply!6925 (v!31469 (underlying!6952 thiss!42540)) lt!888806))))))

(declare-fun c!394596 () Bool)

(assert (=> b!2482235 (= c!394596 (not (contains!5119 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) (tuple2!28861 lt!888806 (apply!6925 (v!31469 (underlying!6952 thiss!42540)) lt!888806)))))))

(declare-fun lt!888803 () Unit!42633)

(assert (=> b!2482235 (= lt!888803 e!1575731)))

(declare-fun c!394598 () Bool)

(declare-fun call!152030 () (_ BitVec 64))

(declare-fun bm!152026 () Bool)

(declare-fun contains!5120 (ListLongMap!539 (_ BitVec 64)) Bool)

(assert (=> bm!152026 (= call!152035 (contains!5120 (ite c!394598 lt!888819 call!152034) call!152030))))

(declare-fun bm!152027 () Bool)

(declare-fun call!152031 () Option!5754)

(assert (=> bm!152027 (= call!152032 (isDefined!4576 call!152031))))

(declare-fun d!712963 () Bool)

(declare-fun lt!888802 () Bool)

(declare-fun contains!5121 (ListMap!1073 K!5515) Bool)

(assert (=> d!712963 (= lt!888802 (contains!5121 (map!6214 thiss!42540) key!2246))))

(assert (=> d!712963 (= lt!888802 e!1575729)))

(declare-fun res!1050818 () Bool)

(assert (=> d!712963 (=> (not res!1050818) (not e!1575729))))

(declare-fun contains!5122 (MutLongMap!3372 (_ BitVec 64)) Bool)

(assert (=> d!712963 (= res!1050818 (contains!5122 (v!31469 (underlying!6952 thiss!42540)) lt!888806))))

(declare-fun lt!888814 () Unit!42633)

(assert (=> d!712963 (= lt!888814 e!1575730)))

(declare-fun extractMap!176 (List!29223) ListMap!1073)

(assert (=> d!712963 (= c!394598 (contains!5121 (extractMap!176 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540))))) key!2246))))

(declare-fun lt!888813 () Unit!42633)

(assert (=> d!712963 (= lt!888813 e!1575725)))

(declare-fun c!394595 () Bool)

(assert (=> d!712963 (= c!394595 (contains!5122 (v!31469 (underlying!6952 thiss!42540)) lt!888806))))

(assert (=> d!712963 (= lt!888806 (hash!696 (hashF!5245 thiss!42540) key!2246))))

(assert (=> d!712963 (valid!2576 thiss!42540)))

(assert (=> d!712963 (= (contains!5118 thiss!42540 key!2246) lt!888802)))

(declare-fun b!2482236 () Bool)

(declare-fun Unit!42637 () Unit!42633)

(assert (=> b!2482236 (= e!1575731 Unit!42637)))

(declare-fun bm!152028 () Bool)

(assert (=> bm!152028 (= call!152030 (hash!696 (hashF!5245 thiss!42540) key!2246))))

(declare-fun bm!152029 () Bool)

(declare-fun call!152033 () List!29222)

(assert (=> bm!152029 (= call!152031 (getPair!71 call!152033 key!2246))))

(declare-fun b!2482237 () Bool)

(assert (=> b!2482237 (= e!1575728 call!152032)))

(declare-fun b!2482238 () Bool)

(declare-fun Unit!42638 () Unit!42633)

(assert (=> b!2482238 (= e!1575726 Unit!42638)))

(declare-fun bm!152030 () Bool)

(declare-fun apply!6926 (ListLongMap!539 (_ BitVec 64)) List!29222)

(assert (=> bm!152030 (= call!152033 (apply!6926 (ite c!394598 lt!888819 call!152034) call!152030))))

(declare-fun b!2482239 () Bool)

(assert (=> b!2482239 false))

(declare-fun lt!888809 () Unit!42633)

(declare-fun lt!888807 () Unit!42633)

(assert (=> b!2482239 (= lt!888809 lt!888807)))

(declare-fun lt!888801 () ListLongMap!539)

(assert (=> b!2482239 (contains!5121 (extractMap!176 (toList!1592 lt!888801)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!71 (ListLongMap!539 K!5515 Hashable!3282) Unit!42633)

(assert (=> b!2482239 (= lt!888807 (lemmaInLongMapThenInGenericMap!71 lt!888801 key!2246 (hashF!5245 thiss!42540)))))

(assert (=> b!2482239 (= lt!888801 call!152034)))

(declare-fun Unit!42639 () Unit!42633)

(assert (=> b!2482239 (= e!1575726 Unit!42639)))

(assert (= (and d!712963 c!394595) b!2482235))

(assert (= (and d!712963 (not c!394595)) b!2482229))

(assert (= (and b!2482235 c!394596) b!2482230))

(assert (= (and b!2482235 (not c!394596)) b!2482236))

(assert (= (and d!712963 c!394598) b!2482234))

(assert (= (and d!712963 (not c!394598)) b!2482231))

(assert (= (and b!2482234 res!1050820) b!2482237))

(assert (= (and b!2482231 res!1050819) b!2482232))

(assert (= (and b!2482231 c!394597) b!2482239))

(assert (= (and b!2482231 (not c!394597)) b!2482238))

(assert (= (or b!2482234 b!2482231 b!2482232 b!2482239) bm!152025))

(assert (= (or b!2482234 b!2482237 b!2482231 b!2482232) bm!152028))

(assert (= (or b!2482237 b!2482232) bm!152030))

(assert (= (or b!2482234 b!2482231) bm!152026))

(assert (= (or b!2482237 b!2482232) bm!152029))

(assert (= (or b!2482237 b!2482232) bm!152027))

(assert (= (and d!712963 res!1050818) b!2482233))

(declare-fun m!2850279 () Bool)

(assert (=> b!2482234 m!2850279))

(declare-fun m!2850281 () Bool)

(assert (=> b!2482230 m!2850281))

(declare-fun m!2850283 () Bool)

(assert (=> b!2482230 m!2850283))

(declare-fun m!2850285 () Bool)

(assert (=> b!2482230 m!2850285))

(declare-fun m!2850287 () Bool)

(assert (=> b!2482230 m!2850287))

(assert (=> b!2482230 m!2850285))

(declare-fun m!2850289 () Bool)

(assert (=> b!2482230 m!2850289))

(declare-fun m!2850291 () Bool)

(assert (=> b!2482230 m!2850291))

(assert (=> b!2482230 m!2850263))

(declare-fun m!2850293 () Bool)

(assert (=> b!2482230 m!2850293))

(declare-fun m!2850295 () Bool)

(assert (=> b!2482230 m!2850295))

(assert (=> b!2482235 m!2850263))

(assert (=> b!2482235 m!2850293))

(declare-fun m!2850297 () Bool)

(assert (=> b!2482235 m!2850297))

(declare-fun m!2850299 () Bool)

(assert (=> b!2482235 m!2850299))

(assert (=> bm!152028 m!2850267))

(assert (=> b!2482233 m!2850293))

(assert (=> b!2482233 m!2850293))

(declare-fun m!2850301 () Bool)

(assert (=> b!2482233 m!2850301))

(assert (=> b!2482233 m!2850301))

(declare-fun m!2850303 () Bool)

(assert (=> b!2482233 m!2850303))

(declare-fun m!2850305 () Bool)

(assert (=> bm!152026 m!2850305))

(declare-fun m!2850307 () Bool)

(assert (=> b!2482239 m!2850307))

(assert (=> b!2482239 m!2850307))

(declare-fun m!2850309 () Bool)

(assert (=> b!2482239 m!2850309))

(declare-fun m!2850311 () Bool)

(assert (=> b!2482239 m!2850311))

(declare-fun m!2850313 () Bool)

(assert (=> bm!152030 m!2850313))

(declare-fun m!2850315 () Bool)

(assert (=> bm!152029 m!2850315))

(assert (=> d!712963 m!2850275))

(declare-fun m!2850317 () Bool)

(assert (=> d!712963 m!2850317))

(assert (=> d!712963 m!2850273))

(declare-fun m!2850319 () Bool)

(assert (=> d!712963 m!2850319))

(assert (=> d!712963 m!2850317))

(declare-fun m!2850321 () Bool)

(assert (=> d!712963 m!2850321))

(assert (=> d!712963 m!2850263))

(assert (=> d!712963 m!2850267))

(assert (=> d!712963 m!2850273))

(declare-fun m!2850323 () Bool)

(assert (=> d!712963 m!2850323))

(assert (=> bm!152025 m!2850263))

(declare-fun m!2850325 () Bool)

(assert (=> bm!152027 m!2850325))

(assert (=> b!2482199 d!712963))

(declare-fun d!712965 () Bool)

(assert (=> d!712965 (= (array_inv!3829 (_keys!3669 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) (bvsge (size!22754 (_keys!3669 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2482203 d!712965))

(declare-fun d!712967 () Bool)

(assert (=> d!712967 (= (array_inv!3830 (_values!3652 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) (bvsge (size!22753 (_values!3652 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2482203 d!712967))

(declare-fun d!712969 () Bool)

(declare-fun e!1575734 () Bool)

(assert (=> d!712969 e!1575734))

(declare-fun c!394601 () Bool)

(assert (=> d!712969 (= c!394601 (contains!5122 (v!31469 (underlying!6952 thiss!42540)) lt!888757))))

(declare-fun lt!888823 () List!29222)

(declare-fun apply!6927 (LongMapFixedSize!6744 (_ BitVec 64)) List!29222)

(assert (=> d!712969 (= lt!888823 (apply!6927 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))) lt!888757))))

(declare-fun valid!2577 (MutLongMap!3372) Bool)

(assert (=> d!712969 (valid!2577 (v!31469 (underlying!6952 thiss!42540)))))

(assert (=> d!712969 (= (apply!6925 (v!31469 (underlying!6952 thiss!42540)) lt!888757) lt!888823)))

(declare-fun b!2482244 () Bool)

(declare-fun get!8981 (Option!5753) List!29222)

(assert (=> b!2482244 (= e!1575734 (= lt!888823 (get!8981 (getValueByKey!139 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) lt!888757))))))

(declare-fun b!2482245 () Bool)

(declare-fun dynLambda!12466 (Int (_ BitVec 64)) List!29222)

(assert (=> b!2482245 (= e!1575734 (= lt!888823 (dynLambda!12466 (defaultEntry!3746 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540))))) lt!888757)))))

(assert (=> b!2482245 ((_ is LongMap!3372) (v!31469 (underlying!6952 thiss!42540)))))

(assert (= (and d!712969 c!394601) b!2482244))

(assert (= (and d!712969 (not c!394601)) b!2482245))

(declare-fun b_lambda!76131 () Bool)

(assert (=> (not b_lambda!76131) (not b!2482245)))

(declare-fun t!210884 () Bool)

(declare-fun tb!140377 () Bool)

(assert (=> (and b!2482203 (= (defaultEntry!3746 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540))))) (defaultEntry!3746 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540)))))) t!210884) tb!140377))

(assert (=> b!2482245 t!210884))

(declare-fun result!173330 () Bool)

(declare-fun b_and!188597 () Bool)

(assert (= b_and!188593 (and (=> t!210884 result!173330) b_and!188597)))

(declare-fun m!2850327 () Bool)

(assert (=> d!712969 m!2850327))

(declare-fun m!2850329 () Bool)

(assert (=> d!712969 m!2850329))

(declare-fun m!2850331 () Bool)

(assert (=> d!712969 m!2850331))

(assert (=> b!2482244 m!2850263))

(declare-fun m!2850333 () Bool)

(assert (=> b!2482244 m!2850333))

(assert (=> b!2482244 m!2850333))

(declare-fun m!2850335 () Bool)

(assert (=> b!2482244 m!2850335))

(declare-fun m!2850337 () Bool)

(assert (=> b!2482245 m!2850337))

(assert (=> b!2482205 d!712969))

(declare-fun b!2482265 () Bool)

(declare-fun res!1050827 () Bool)

(declare-fun e!1575749 () Bool)

(assert (=> b!2482265 (=> (not res!1050827) (not e!1575749))))

(declare-fun lt!888835 () tuple2!28858)

(assert (=> b!2482265 (= res!1050827 (valid!2577 (_2!16970 lt!888835)))))

(declare-fun b!2482266 () Bool)

(declare-fun e!1575748 () Bool)

(declare-fun call!152041 () ListLongMap!539)

(declare-fun call!152040 () ListLongMap!539)

(assert (=> b!2482266 (= e!1575748 (= call!152041 call!152040))))

(declare-fun bm!152035 () Bool)

(assert (=> bm!152035 (= call!152041 (map!6215 (_2!16970 lt!888835)))))

(declare-fun bm!152036 () Bool)

(assert (=> bm!152036 (= call!152040 (map!6215 (v!31469 (underlying!6952 thiss!42540))))))

(declare-fun b!2482267 () Bool)

(declare-fun e!1575747 () tuple2!28858)

(declare-fun lt!888834 () tuple2!28858)

(assert (=> b!2482267 (= e!1575747 (tuple2!28859 false (_2!16970 lt!888834)))))

(declare-fun b!2482268 () Bool)

(declare-fun e!1575746 () tuple2!28858)

(assert (=> b!2482268 (= e!1575746 (tuple2!28859 true (v!31469 (underlying!6952 thiss!42540))))))

(declare-fun b!2482269 () Bool)

(assert (=> b!2482269 (= e!1575749 e!1575748)))

(declare-fun c!394610 () Bool)

(assert (=> b!2482269 (= c!394610 (_1!16970 lt!888835))))

(declare-fun b!2482270 () Bool)

(declare-fun e!1575745 () Bool)

(declare-fun +!85 (ListLongMap!539 tuple2!28860) ListLongMap!539)

(assert (=> b!2482270 (= e!1575745 (= call!152041 (+!85 call!152040 (tuple2!28861 lt!888757 (removePairForKey!74 lt!888756 key!2246)))))))

(declare-fun b!2482271 () Bool)

(declare-fun lt!888832 () tuple2!28858)

(assert (=> b!2482271 (= e!1575746 (tuple2!28859 (_1!16970 lt!888832) (_2!16970 lt!888832)))))

(declare-fun repack!19 (MutLongMap!3372) tuple2!28858)

(assert (=> b!2482271 (= lt!888832 (repack!19 (v!31469 (underlying!6952 thiss!42540))))))

(declare-fun b!2482272 () Bool)

(declare-datatypes ((tuple2!28862 0))(
  ( (tuple2!28863 (_1!16972 Bool) (_2!16972 LongMapFixedSize!6744)) )
))
(declare-fun lt!888833 () tuple2!28862)

(assert (=> b!2482272 (= e!1575747 (tuple2!28859 (_1!16972 lt!888833) (LongMap!3372 (Cell!13306 (_2!16972 lt!888833)))))))

(declare-fun update!190 (LongMapFixedSize!6744 (_ BitVec 64) List!29222) tuple2!28862)

(assert (=> b!2482272 (= lt!888833 (update!190 (v!31468 (underlying!6951 (_2!16970 lt!888834))) lt!888757 (removePairForKey!74 lt!888756 key!2246)))))

(declare-fun d!712971 () Bool)

(assert (=> d!712971 e!1575749))

(declare-fun res!1050828 () Bool)

(assert (=> d!712971 (=> (not res!1050828) (not e!1575749))))

(assert (=> d!712971 (= res!1050828 ((_ is LongMap!3372) (_2!16970 lt!888835)))))

(assert (=> d!712971 (= lt!888835 e!1575747)))

(declare-fun c!394609 () Bool)

(assert (=> d!712971 (= c!394609 (_1!16970 lt!888834))))

(assert (=> d!712971 (= lt!888834 e!1575746)))

(declare-fun c!394608 () Bool)

(declare-fun imbalanced!15 (MutLongMap!3372) Bool)

(assert (=> d!712971 (= c!394608 (imbalanced!15 (v!31469 (underlying!6952 thiss!42540))))))

(assert (=> d!712971 (valid!2577 (v!31469 (underlying!6952 thiss!42540)))))

(assert (=> d!712971 (= (update!189 (v!31469 (underlying!6952 thiss!42540)) lt!888757 (removePairForKey!74 lt!888756 key!2246)) lt!888835)))

(declare-fun b!2482264 () Bool)

(assert (=> b!2482264 (= e!1575748 e!1575745)))

(declare-fun res!1050829 () Bool)

(assert (=> b!2482264 (= res!1050829 (contains!5120 call!152041 lt!888757))))

(assert (=> b!2482264 (=> (not res!1050829) (not e!1575745))))

(assert (= (and d!712971 c!394608) b!2482271))

(assert (= (and d!712971 (not c!394608)) b!2482268))

(assert (= (and d!712971 c!394609) b!2482272))

(assert (= (and d!712971 (not c!394609)) b!2482267))

(assert (= (and d!712971 res!1050828) b!2482265))

(assert (= (and b!2482265 res!1050827) b!2482269))

(assert (= (and b!2482269 c!394610) b!2482264))

(assert (= (and b!2482269 (not c!394610)) b!2482266))

(assert (= (and b!2482264 res!1050829) b!2482270))

(assert (= (or b!2482264 b!2482270 b!2482266) bm!152035))

(assert (= (or b!2482270 b!2482266) bm!152036))

(declare-fun m!2850339 () Bool)

(assert (=> d!712971 m!2850339))

(assert (=> d!712971 m!2850331))

(declare-fun m!2850341 () Bool)

(assert (=> b!2482265 m!2850341))

(assert (=> bm!152036 m!2850263))

(declare-fun m!2850343 () Bool)

(assert (=> b!2482271 m!2850343))

(declare-fun m!2850345 () Bool)

(assert (=> bm!152035 m!2850345))

(assert (=> b!2482272 m!2850269))

(declare-fun m!2850347 () Bool)

(assert (=> b!2482272 m!2850347))

(declare-fun m!2850349 () Bool)

(assert (=> b!2482270 m!2850349))

(declare-fun m!2850351 () Bool)

(assert (=> b!2482264 m!2850351))

(assert (=> b!2482205 d!712971))

(declare-fun d!712973 () Bool)

(declare-fun hash!697 (Hashable!3282 K!5515) (_ BitVec 64))

(assert (=> d!712973 (= (hash!696 (hashF!5245 thiss!42540) key!2246) (hash!697 (hashF!5245 thiss!42540) key!2246))))

(declare-fun bs!467536 () Bool)

(assert (= bs!467536 d!712973))

(declare-fun m!2850353 () Bool)

(assert (=> bs!467536 m!2850353))

(assert (=> b!2482205 d!712973))

(declare-fun b!2482281 () Bool)

(declare-fun e!1575754 () List!29222)

(assert (=> b!2482281 (= e!1575754 (t!210881 lt!888756))))

(declare-fun b!2482284 () Bool)

(declare-fun e!1575755 () List!29222)

(assert (=> b!2482284 (= e!1575755 Nil!29122)))

(declare-fun b!2482282 () Bool)

(assert (=> b!2482282 (= e!1575754 e!1575755)))

(declare-fun c!394615 () Bool)

(assert (=> b!2482282 (= c!394615 ((_ is Cons!29122) lt!888756))))

(declare-fun b!2482283 () Bool)

(assert (=> b!2482283 (= e!1575755 (Cons!29122 (h!34528 lt!888756) (removePairForKey!74 (t!210881 lt!888756) key!2246)))))

(declare-fun d!712975 () Bool)

(declare-fun lt!888838 () List!29222)

(declare-fun containsKey!138 (List!29222 K!5515) Bool)

(assert (=> d!712975 (not (containsKey!138 lt!888838 key!2246))))

(assert (=> d!712975 (= lt!888838 e!1575754)))

(declare-fun c!394616 () Bool)

(assert (=> d!712975 (= c!394616 (and ((_ is Cons!29122) lt!888756) (= (_1!16969 (h!34528 lt!888756)) key!2246)))))

(declare-fun noDuplicateKeys!85 (List!29222) Bool)

(assert (=> d!712975 (noDuplicateKeys!85 lt!888756)))

(assert (=> d!712975 (= (removePairForKey!74 lt!888756 key!2246) lt!888838)))

(assert (= (and d!712975 c!394616) b!2482281))

(assert (= (and d!712975 (not c!394616)) b!2482282))

(assert (= (and b!2482282 c!394615) b!2482283))

(assert (= (and b!2482282 (not c!394615)) b!2482284))

(declare-fun m!2850355 () Bool)

(assert (=> b!2482283 m!2850355))

(declare-fun m!2850357 () Bool)

(assert (=> d!712975 m!2850357))

(declare-fun m!2850359 () Bool)

(assert (=> d!712975 m!2850359))

(assert (=> b!2482205 d!712975))

(declare-fun d!712977 () Bool)

(declare-fun map!6216 (LongMapFixedSize!6744) ListLongMap!539)

(assert (=> d!712977 (= (map!6215 (v!31469 (underlying!6952 thiss!42540))) (map!6216 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540))))))))

(declare-fun bs!467537 () Bool)

(assert (= bs!467537 d!712977))

(declare-fun m!2850361 () Bool)

(assert (=> bs!467537 m!2850361))

(assert (=> b!2482205 d!712977))

(declare-fun d!712979 () Bool)

(declare-fun lt!888841 () ListMap!1073)

(declare-fun invariantList!410 (List!29222) Bool)

(assert (=> d!712979 (invariantList!410 (toList!1591 lt!888841))))

(assert (=> d!712979 (= lt!888841 (extractMap!176 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540))))))))

(assert (=> d!712979 (valid!2576 thiss!42540)))

(assert (=> d!712979 (= (map!6214 thiss!42540) lt!888841)))

(declare-fun bs!467538 () Bool)

(assert (= bs!467538 d!712979))

(declare-fun m!2850363 () Bool)

(assert (=> bs!467538 m!2850363))

(assert (=> bs!467538 m!2850263))

(assert (=> bs!467538 m!2850317))

(assert (=> bs!467538 m!2850275))

(assert (=> b!2482205 d!712979))

(declare-fun d!712981 () Bool)

(declare-fun dynLambda!12467 (Int tuple2!28860) Bool)

(assert (=> d!712981 (dynLambda!12467 lambda!94075 (tuple2!28861 lt!888757 lt!888756))))

(declare-fun lt!888844 () Unit!42633)

(declare-fun choose!14648 (List!29223 Int tuple2!28860) Unit!42633)

(assert (=> d!712981 (= lt!888844 (choose!14648 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) lambda!94075 (tuple2!28861 lt!888757 lt!888756)))))

(declare-fun e!1575758 () Bool)

(assert (=> d!712981 e!1575758))

(declare-fun res!1050832 () Bool)

(assert (=> d!712981 (=> (not res!1050832) (not e!1575758))))

(declare-fun forall!5973 (List!29223 Int) Bool)

(assert (=> d!712981 (= res!1050832 (forall!5973 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) lambda!94075))))

(assert (=> d!712981 (= (forallContained!863 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) lambda!94075 (tuple2!28861 lt!888757 lt!888756)) lt!888844)))

(declare-fun b!2482287 () Bool)

(assert (=> b!2482287 (= e!1575758 (contains!5119 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) (tuple2!28861 lt!888757 lt!888756)))))

(assert (= (and d!712981 res!1050832) b!2482287))

(declare-fun b_lambda!76133 () Bool)

(assert (=> (not b_lambda!76133) (not d!712981)))

(declare-fun m!2850365 () Bool)

(assert (=> d!712981 m!2850365))

(declare-fun m!2850367 () Bool)

(assert (=> d!712981 m!2850367))

(declare-fun m!2850369 () Bool)

(assert (=> d!712981 m!2850369))

(declare-fun m!2850371 () Bool)

(assert (=> b!2482287 m!2850371))

(assert (=> b!2482205 d!712981))

(declare-fun bs!467539 () Bool)

(declare-fun b!2482292 () Bool)

(assert (= bs!467539 (and b!2482292 b!2482205)))

(declare-fun lambda!94081 () Int)

(assert (=> bs!467539 (= lambda!94081 lambda!94075)))

(declare-fun bs!467540 () Bool)

(assert (= bs!467540 (and b!2482292 b!2482235)))

(assert (=> bs!467540 (= lambda!94081 lambda!94078)))

(declare-fun d!712983 () Bool)

(declare-fun res!1050837 () Bool)

(declare-fun e!1575761 () Bool)

(assert (=> d!712983 (=> (not res!1050837) (not e!1575761))))

(assert (=> d!712983 (= res!1050837 (valid!2577 (v!31469 (underlying!6952 thiss!42540))))))

(assert (=> d!712983 (= (valid!2576 thiss!42540) e!1575761)))

(declare-fun res!1050838 () Bool)

(assert (=> b!2482292 (=> (not res!1050838) (not e!1575761))))

(assert (=> b!2482292 (= res!1050838 (forall!5973 (toList!1592 (map!6215 (v!31469 (underlying!6952 thiss!42540)))) lambda!94081))))

(declare-fun b!2482293 () Bool)

(declare-fun allKeysSameHashInMap!167 (ListLongMap!539 Hashable!3282) Bool)

(assert (=> b!2482293 (= e!1575761 (allKeysSameHashInMap!167 (map!6215 (v!31469 (underlying!6952 thiss!42540))) (hashF!5245 thiss!42540)))))

(assert (= (and d!712983 res!1050837) b!2482292))

(assert (= (and b!2482292 res!1050838) b!2482293))

(assert (=> d!712983 m!2850331))

(assert (=> b!2482292 m!2850263))

(declare-fun m!2850373 () Bool)

(assert (=> b!2482292 m!2850373))

(assert (=> b!2482293 m!2850263))

(assert (=> b!2482293 m!2850263))

(declare-fun m!2850375 () Bool)

(assert (=> b!2482293 m!2850375))

(assert (=> b!2482201 d!712983))

(declare-fun tp_is_empty!12277 () Bool)

(declare-fun e!1575766 () Bool)

(declare-fun b!2482300 () Bool)

(declare-fun tp!794689 () Bool)

(assert (=> b!2482300 (= e!1575766 (and tp_is_empty!12275 tp_is_empty!12277 tp!794689))))

(declare-fun mapNonEmpty!15590 () Bool)

(declare-fun mapRes!15590 () Bool)

(declare-fun tp!794688 () Bool)

(assert (=> mapNonEmpty!15590 (= mapRes!15590 (and tp!794688 e!1575766))))

(declare-fun mapRest!15590 () (Array (_ BitVec 32) List!29222))

(declare-fun mapValue!15590 () List!29222)

(declare-fun mapKey!15590 () (_ BitVec 32))

(assert (=> mapNonEmpty!15590 (= mapRest!15587 (store mapRest!15590 mapKey!15590 mapValue!15590))))

(declare-fun condMapEmpty!15590 () Bool)

(declare-fun mapDefault!15590 () List!29222)

(assert (=> mapNonEmpty!15587 (= condMapEmpty!15590 (= mapRest!15587 ((as const (Array (_ BitVec 32) List!29222)) mapDefault!15590)))))

(declare-fun e!1575767 () Bool)

(assert (=> mapNonEmpty!15587 (= tp!794680 (and e!1575767 mapRes!15590))))

(declare-fun tp!794690 () Bool)

(declare-fun b!2482301 () Bool)

(assert (=> b!2482301 (= e!1575767 (and tp_is_empty!12275 tp_is_empty!12277 tp!794690))))

(declare-fun mapIsEmpty!15590 () Bool)

(assert (=> mapIsEmpty!15590 mapRes!15590))

(assert (= (and mapNonEmpty!15587 condMapEmpty!15590) mapIsEmpty!15590))

(assert (= (and mapNonEmpty!15587 (not condMapEmpty!15590)) mapNonEmpty!15590))

(assert (= (and mapNonEmpty!15590 ((_ is Cons!29122) mapValue!15590)) b!2482300))

(assert (= (and mapNonEmpty!15587 ((_ is Cons!29122) mapDefault!15590)) b!2482301))

(declare-fun m!2850377 () Bool)

(assert (=> mapNonEmpty!15590 m!2850377))

(declare-fun b!2482306 () Bool)

(declare-fun e!1575770 () Bool)

(declare-fun tp!794693 () Bool)

(assert (=> b!2482306 (= e!1575770 (and tp_is_empty!12275 tp_is_empty!12277 tp!794693))))

(assert (=> mapNonEmpty!15587 (= tp!794677 e!1575770)))

(assert (= (and mapNonEmpty!15587 ((_ is Cons!29122) mapValue!15587)) b!2482306))

(declare-fun tp!794694 () Bool)

(declare-fun b!2482307 () Bool)

(declare-fun e!1575771 () Bool)

(assert (=> b!2482307 (= e!1575771 (and tp_is_empty!12275 tp_is_empty!12277 tp!794694))))

(assert (=> b!2482203 (= tp!794679 e!1575771)))

(assert (= (and b!2482203 ((_ is Cons!29122) (zeroValue!3630 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540))))))) b!2482307))

(declare-fun e!1575772 () Bool)

(declare-fun b!2482308 () Bool)

(declare-fun tp!794695 () Bool)

(assert (=> b!2482308 (= e!1575772 (and tp_is_empty!12275 tp_is_empty!12277 tp!794695))))

(assert (=> b!2482203 (= tp!794681 e!1575772)))

(assert (= (and b!2482203 ((_ is Cons!29122) (minValue!3630 (v!31468 (underlying!6951 (v!31469 (underlying!6952 thiss!42540))))))) b!2482308))

(declare-fun tp!794696 () Bool)

(declare-fun e!1575773 () Bool)

(declare-fun b!2482309 () Bool)

(assert (=> b!2482309 (= e!1575773 (and tp_is_empty!12275 tp_is_empty!12277 tp!794696))))

(assert (=> b!2482206 (= tp!794676 e!1575773)))

(assert (= (and b!2482206 ((_ is Cons!29122) mapDefault!15587)) b!2482309))

(declare-fun b_lambda!76135 () Bool)

(assert (= b_lambda!76133 (or b!2482205 b_lambda!76135)))

(declare-fun bs!467541 () Bool)

(declare-fun d!712985 () Bool)

(assert (= bs!467541 (and d!712985 b!2482205)))

(assert (=> bs!467541 (= (dynLambda!12467 lambda!94075 (tuple2!28861 lt!888757 lt!888756)) (noDuplicateKeys!85 (_2!16971 (tuple2!28861 lt!888757 lt!888756))))))

(declare-fun m!2850379 () Bool)

(assert (=> bs!467541 m!2850379))

(assert (=> d!712981 d!712985))

(declare-fun b_lambda!76137 () Bool)

(assert (= b_lambda!76131 (or (and b!2482203 b_free!72345) b_lambda!76137)))

(check-sat (not d!712975) (not d!712977) (not b!2482270) (not b!2482264) tp_is_empty!12277 (not b!2482265) b_and!188597 (not b!2482283) (not bm!152035) (not d!712979) (not d!712971) (not b!2482308) (not bm!152025) (not b!2482271) (not b!2482230) (not b!2482306) tp_is_empty!12275 (not mapNonEmpty!15590) (not d!712969) (not b!2482292) (not d!712981) (not tb!140377) b_and!188595 (not d!712963) (not bm!152036) (not bm!152027) (not bm!152030) (not b!2482244) (not bm!152028) (not b!2482307) (not b!2482233) (not bs!467541) (not b_next!73049) (not b!2482293) (not b_next!73051) (not b!2482287) (not b!2482234) (not b!2482235) (not d!712973) (not b!2482239) (not bm!152029) (not b!2482309) (not b_lambda!76135) (not b!2482301) (not b_lambda!76137) (not bm!152026) (not b!2482272) (not b!2482300) (not d!712983))
(check-sat b_and!188595 b_and!188597 (not b_next!73049) (not b_next!73051))
