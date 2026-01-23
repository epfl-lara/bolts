; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241714 () Bool)

(assert start!241714)

(declare-fun b!2477860 () Bool)

(declare-fun b_free!72025 () Bool)

(declare-fun b_next!72729 () Bool)

(assert (=> b!2477860 (= b_free!72025 (not b_next!72729))))

(declare-fun tp!792812 () Bool)

(declare-fun b_and!188255 () Bool)

(assert (=> b!2477860 (= tp!792812 b_and!188255)))

(declare-fun b!2477863 () Bool)

(declare-fun b_free!72027 () Bool)

(declare-fun b_next!72731 () Bool)

(assert (=> b!2477863 (= b_free!72027 (not b_next!72731))))

(declare-fun tp!792807 () Bool)

(declare-fun b_and!188257 () Bool)

(assert (=> b!2477863 (= tp!792807 b_and!188257)))

(declare-fun b!2477857 () Bool)

(declare-fun e!1572329 () Bool)

(declare-fun tp!792810 () Bool)

(declare-fun mapRes!15310 () Bool)

(assert (=> b!2477857 (= e!1572329 (and tp!792810 mapRes!15310))))

(declare-fun condMapEmpty!15310 () Bool)

(declare-datatypes ((Hashable!3202 0))(
  ( (HashableExt!3201 (__x!18782 Int)) )
))
(declare-datatypes ((K!5315 0))(
  ( (K!5316 (val!8727 Int)) )
))
(declare-datatypes ((V!5517 0))(
  ( (V!5518 (val!8728 Int)) )
))
(declare-datatypes ((tuple2!28426 0))(
  ( (tuple2!28427 (_1!16754 K!5315) (_2!16754 V!5517)) )
))
(declare-datatypes ((List!29078 0))(
  ( (Nil!28978) (Cons!28978 (h!34380 tuple2!28426) (t!210719 List!29078)) )
))
(declare-datatypes ((array!11609 0))(
  ( (array!11610 (arr!5174 (Array (_ BitVec 32) List!29078)) (size!22593 (_ BitVec 32))) )
))
(declare-datatypes ((array!11611 0))(
  ( (array!11612 (arr!5175 (Array (_ BitVec 32) (_ BitVec 64))) (size!22594 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6584 0))(
  ( (LongMapFixedSize!6585 (defaultEntry!3666 Int) (mask!8427 (_ BitVec 32)) (extraKeys!3540 (_ BitVec 32)) (zeroValue!3550 List!29078) (minValue!3550 List!29078) (_size!6631 (_ BitVec 32)) (_keys!3589 array!11611) (_values!3572 array!11609) (_vacant!3353 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12985 0))(
  ( (Cell!12986 (v!31263 LongMapFixedSize!6584)) )
))
(declare-datatypes ((MutLongMap!3292 0))(
  ( (LongMap!3292 (underlying!6791 Cell!12985)) (MutLongMapExt!3291 (__x!18783 Int)) )
))
(declare-datatypes ((Cell!12987 0))(
  ( (Cell!12988 (v!31264 MutLongMap!3292)) )
))
(declare-datatypes ((MutableMap!3202 0))(
  ( (MutableMapExt!3201 (__x!18784 Int)) (HashMap!3202 (underlying!6792 Cell!12987) (hashF!5140 Hashable!3202) (_size!6632 (_ BitVec 32)) (defaultValue!3364 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3202)

(declare-fun mapDefault!15310 () List!29078)

(assert (=> b!2477857 (= condMapEmpty!15310 (= (arr!5174 (_values!3572 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29078)) mapDefault!15310)))))

(declare-fun b!2477859 () Bool)

(declare-fun e!1572328 () Bool)

(declare-fun e!1572326 () Bool)

(assert (=> b!2477859 (= e!1572328 e!1572326)))

(declare-fun e!1572330 () Bool)

(declare-fun tp!792806 () Bool)

(declare-fun tp!792811 () Bool)

(declare-fun array_inv!3711 (array!11611) Bool)

(declare-fun array_inv!3712 (array!11609) Bool)

(assert (=> b!2477860 (= e!1572330 (and tp!792812 tp!792811 tp!792806 (array_inv!3711 (_keys!3589 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) (array_inv!3712 (_values!3572 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) e!1572329))))

(declare-fun b!2477861 () Bool)

(declare-fun e!1572327 () Bool)

(declare-fun lt!885117 () MutLongMap!3292)

(get-info :version)

(assert (=> b!2477861 (= e!1572327 (and e!1572328 ((_ is LongMap!3292) lt!885117)))))

(assert (=> b!2477861 (= lt!885117 (v!31264 (underlying!6792 thiss!42540)))))

(declare-fun lt!885120 () List!29078)

(declare-fun b!2477862 () Bool)

(declare-datatypes ((tuple2!28428 0))(
  ( (tuple2!28429 (_1!16755 (_ BitVec 64)) (_2!16755 List!29078)) )
))
(declare-datatypes ((List!29079 0))(
  ( (Nil!28979) (Cons!28979 (h!34381 tuple2!28428) (t!210720 List!29079)) )
))
(declare-datatypes ((ListLongMap!415 0))(
  ( (ListLongMap!416 (toList!1473 List!29079)) )
))
(declare-fun lt!885118 () ListLongMap!415)

(declare-fun e!1572331 () Bool)

(declare-fun lt!885119 () (_ BitVec 64))

(declare-fun contains!4980 (List!29079 tuple2!28428) Bool)

(assert (=> b!2477862 (= e!1572331 (not (contains!4980 (toList!1473 lt!885118) (tuple2!28429 lt!885119 lt!885120))))))

(declare-fun b!2477858 () Bool)

(assert (=> b!2477858 (= e!1572326 e!1572330)))

(declare-fun res!1048908 () Bool)

(declare-fun e!1572325 () Bool)

(assert (=> start!241714 (=> (not res!1048908) (not e!1572325))))

(assert (=> start!241714 (= res!1048908 ((_ is HashMap!3202) thiss!42540))))

(assert (=> start!241714 e!1572325))

(declare-fun e!1572324 () Bool)

(assert (=> start!241714 e!1572324))

(declare-fun tp_is_empty!12091 () Bool)

(assert (=> start!241714 tp_is_empty!12091))

(assert (=> b!2477863 (= e!1572324 (and e!1572327 tp!792807))))

(declare-fun b!2477864 () Bool)

(declare-fun res!1048907 () Bool)

(assert (=> b!2477864 (=> (not res!1048907) (not e!1572325))))

(declare-fun key!2246 () K!5315)

(declare-fun contains!4981 (MutableMap!3202 K!5315) Bool)

(assert (=> b!2477864 (= res!1048907 (contains!4981 thiss!42540 key!2246))))

(declare-fun b!2477865 () Bool)

(declare-fun res!1048909 () Bool)

(assert (=> b!2477865 (=> (not res!1048909) (not e!1572325))))

(declare-fun valid!2501 (MutableMap!3202) Bool)

(assert (=> b!2477865 (= res!1048909 (valid!2501 thiss!42540))))

(declare-fun mapNonEmpty!15310 () Bool)

(declare-fun tp!792808 () Bool)

(declare-fun tp!792809 () Bool)

(assert (=> mapNonEmpty!15310 (= mapRes!15310 (and tp!792808 tp!792809))))

(declare-fun mapValue!15310 () List!29078)

(declare-fun mapKey!15310 () (_ BitVec 32))

(declare-fun mapRest!15310 () (Array (_ BitVec 32) List!29078))

(assert (=> mapNonEmpty!15310 (= (arr!5174 (_values!3572 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) (store mapRest!15310 mapKey!15310 mapValue!15310))))

(declare-fun mapIsEmpty!15310 () Bool)

(assert (=> mapIsEmpty!15310 mapRes!15310))

(declare-fun b!2477866 () Bool)

(assert (=> b!2477866 (= e!1572325 e!1572331)))

(declare-fun res!1048906 () Bool)

(assert (=> b!2477866 (=> res!1048906 e!1572331)))

(declare-fun lambda!93490 () Int)

(declare-fun forall!5933 (List!29079 Int) Bool)

(assert (=> b!2477866 (= res!1048906 (not (forall!5933 (toList!1473 lt!885118) lambda!93490)))))

(declare-fun map!6053 (MutLongMap!3292) ListLongMap!415)

(assert (=> b!2477866 (= lt!885118 (map!6053 (v!31264 (underlying!6792 thiss!42540))))))

(declare-fun apply!6846 (MutLongMap!3292 (_ BitVec 64)) List!29078)

(assert (=> b!2477866 (= lt!885120 (apply!6846 (v!31264 (underlying!6792 thiss!42540)) lt!885119))))

(declare-fun hash!621 (Hashable!3202 K!5315) (_ BitVec 64))

(assert (=> b!2477866 (= lt!885119 (hash!621 (hashF!5140 thiss!42540) key!2246))))

(assert (= (and start!241714 res!1048908) b!2477865))

(assert (= (and b!2477865 res!1048909) b!2477864))

(assert (= (and b!2477864 res!1048907) b!2477866))

(assert (= (and b!2477866 (not res!1048906)) b!2477862))

(assert (= (and b!2477857 condMapEmpty!15310) mapIsEmpty!15310))

(assert (= (and b!2477857 (not condMapEmpty!15310)) mapNonEmpty!15310))

(assert (= b!2477860 b!2477857))

(assert (= b!2477858 b!2477860))

(assert (= b!2477859 b!2477858))

(assert (= (and b!2477861 ((_ is LongMap!3292) (v!31264 (underlying!6792 thiss!42540)))) b!2477859))

(assert (= b!2477863 b!2477861))

(assert (= (and start!241714 ((_ is HashMap!3202) thiss!42540)) b!2477863))

(declare-fun m!2845633 () Bool)

(assert (=> b!2477864 m!2845633))

(declare-fun m!2845635 () Bool)

(assert (=> b!2477865 m!2845635))

(declare-fun m!2845637 () Bool)

(assert (=> mapNonEmpty!15310 m!2845637))

(declare-fun m!2845639 () Bool)

(assert (=> b!2477862 m!2845639))

(declare-fun m!2845641 () Bool)

(assert (=> b!2477860 m!2845641))

(declare-fun m!2845643 () Bool)

(assert (=> b!2477860 m!2845643))

(declare-fun m!2845645 () Bool)

(assert (=> b!2477866 m!2845645))

(declare-fun m!2845647 () Bool)

(assert (=> b!2477866 m!2845647))

(declare-fun m!2845649 () Bool)

(assert (=> b!2477866 m!2845649))

(declare-fun m!2845651 () Bool)

(assert (=> b!2477866 m!2845651))

(check-sat (not b!2477864) tp_is_empty!12091 b_and!188257 (not b_next!72729) (not b!2477862) (not b_next!72731) (not b!2477860) (not mapNonEmpty!15310) (not b!2477866) (not b!2477865) (not b!2477857) b_and!188255)
(check-sat b_and!188257 b_and!188255 (not b_next!72729) (not b_next!72731))
(get-model)

(declare-fun lt!885123 () Bool)

(declare-fun d!712459 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3973 (List!29079) (InoxSet tuple2!28428))

(assert (=> d!712459 (= lt!885123 (select (content!3973 (toList!1473 lt!885118)) (tuple2!28429 lt!885119 lt!885120)))))

(declare-fun e!1572337 () Bool)

(assert (=> d!712459 (= lt!885123 e!1572337)))

(declare-fun res!1048915 () Bool)

(assert (=> d!712459 (=> (not res!1048915) (not e!1572337))))

(assert (=> d!712459 (= res!1048915 ((_ is Cons!28979) (toList!1473 lt!885118)))))

(assert (=> d!712459 (= (contains!4980 (toList!1473 lt!885118) (tuple2!28429 lt!885119 lt!885120)) lt!885123)))

(declare-fun b!2477871 () Bool)

(declare-fun e!1572338 () Bool)

(assert (=> b!2477871 (= e!1572337 e!1572338)))

(declare-fun res!1048914 () Bool)

(assert (=> b!2477871 (=> res!1048914 e!1572338)))

(assert (=> b!2477871 (= res!1048914 (= (h!34381 (toList!1473 lt!885118)) (tuple2!28429 lt!885119 lt!885120)))))

(declare-fun b!2477872 () Bool)

(assert (=> b!2477872 (= e!1572338 (contains!4980 (t!210720 (toList!1473 lt!885118)) (tuple2!28429 lt!885119 lt!885120)))))

(assert (= (and d!712459 res!1048915) b!2477871))

(assert (= (and b!2477871 (not res!1048914)) b!2477872))

(declare-fun m!2845653 () Bool)

(assert (=> d!712459 m!2845653))

(declare-fun m!2845655 () Bool)

(assert (=> d!712459 m!2845655))

(declare-fun m!2845657 () Bool)

(assert (=> b!2477872 m!2845657))

(assert (=> b!2477862 d!712459))

(declare-fun d!712461 () Bool)

(assert (=> d!712461 (= (array_inv!3711 (_keys!3589 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) (bvsge (size!22594 (_keys!3589 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477860 d!712461))

(declare-fun d!712463 () Bool)

(assert (=> d!712463 (= (array_inv!3712 (_values!3572 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) (bvsge (size!22593 (_values!3572 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477860 d!712463))

(declare-fun bs!467195 () Bool)

(declare-fun b!2477877 () Bool)

(assert (= bs!467195 (and b!2477877 b!2477866)))

(declare-fun lambda!93493 () Int)

(assert (=> bs!467195 (= lambda!93493 lambda!93490)))

(declare-fun d!712465 () Bool)

(declare-fun res!1048920 () Bool)

(declare-fun e!1572341 () Bool)

(assert (=> d!712465 (=> (not res!1048920) (not e!1572341))))

(declare-fun valid!2502 (MutLongMap!3292) Bool)

(assert (=> d!712465 (= res!1048920 (valid!2502 (v!31264 (underlying!6792 thiss!42540))))))

(assert (=> d!712465 (= (valid!2501 thiss!42540) e!1572341)))

(declare-fun res!1048921 () Bool)

(assert (=> b!2477877 (=> (not res!1048921) (not e!1572341))))

(assert (=> b!2477877 (= res!1048921 (forall!5933 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540)))) lambda!93493))))

(declare-fun b!2477878 () Bool)

(declare-fun allKeysSameHashInMap!133 (ListLongMap!415 Hashable!3202) Bool)

(assert (=> b!2477878 (= e!1572341 (allKeysSameHashInMap!133 (map!6053 (v!31264 (underlying!6792 thiss!42540))) (hashF!5140 thiss!42540)))))

(assert (= (and d!712465 res!1048920) b!2477877))

(assert (= (and b!2477877 res!1048921) b!2477878))

(declare-fun m!2845659 () Bool)

(assert (=> d!712465 m!2845659))

(assert (=> b!2477877 m!2845647))

(declare-fun m!2845661 () Bool)

(assert (=> b!2477877 m!2845661))

(assert (=> b!2477878 m!2845647))

(assert (=> b!2477878 m!2845647))

(declare-fun m!2845663 () Bool)

(assert (=> b!2477878 m!2845663))

(assert (=> b!2477865 d!712465))

(declare-fun bs!467196 () Bool)

(declare-fun b!2477910 () Bool)

(assert (= bs!467196 (and b!2477910 b!2477866)))

(declare-fun lambda!93496 () Int)

(assert (=> bs!467196 (= lambda!93496 lambda!93490)))

(declare-fun bs!467197 () Bool)

(assert (= bs!467197 (and b!2477910 b!2477877)))

(assert (=> bs!467197 (= lambda!93496 lambda!93493)))

(declare-fun lt!885166 () ListLongMap!415)

(declare-fun call!151780 () Bool)

(declare-fun call!151778 () (_ BitVec 64))

(declare-fun bm!151770 () Bool)

(declare-fun call!151775 () ListLongMap!415)

(declare-fun c!394275 () Bool)

(declare-fun contains!4982 (ListLongMap!415 (_ BitVec 64)) Bool)

(assert (=> bm!151770 (= call!151780 (contains!4982 (ite c!394275 lt!885166 call!151775) call!151778))))

(declare-fun b!2477901 () Bool)

(assert (=> b!2477901 false))

(declare-datatypes ((Unit!42365 0))(
  ( (Unit!42366) )
))
(declare-fun lt!885182 () Unit!42365)

(declare-fun lt!885164 () Unit!42365)

(assert (=> b!2477901 (= lt!885182 lt!885164)))

(declare-fun lt!885165 () ListLongMap!415)

(declare-datatypes ((ListMap!961 0))(
  ( (ListMap!962 (toList!1474 List!29078)) )
))
(declare-fun contains!4983 (ListMap!961 K!5315) Bool)

(declare-fun extractMap!147 (List!29079) ListMap!961)

(assert (=> b!2477901 (contains!4983 (extractMap!147 (toList!1473 lt!885165)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!59 (ListLongMap!415 K!5315 Hashable!3202) Unit!42365)

(assert (=> b!2477901 (= lt!885164 (lemmaInLongMapThenInGenericMap!59 lt!885165 key!2246 (hashF!5140 thiss!42540)))))

(assert (=> b!2477901 (= lt!885165 call!151775)))

(declare-fun e!1572361 () Unit!42365)

(declare-fun Unit!42367 () Unit!42365)

(assert (=> b!2477901 (= e!1572361 Unit!42367)))

(declare-fun d!712467 () Bool)

(declare-fun lt!885179 () Bool)

(declare-fun map!6054 (MutableMap!3202) ListMap!961)

(assert (=> d!712467 (= lt!885179 (contains!4983 (map!6054 thiss!42540) key!2246))))

(declare-fun e!1572356 () Bool)

(assert (=> d!712467 (= lt!885179 e!1572356)))

(declare-fun res!1048930 () Bool)

(assert (=> d!712467 (=> (not res!1048930) (not e!1572356))))

(declare-fun lt!885171 () (_ BitVec 64))

(declare-fun contains!4984 (MutLongMap!3292 (_ BitVec 64)) Bool)

(assert (=> d!712467 (= res!1048930 (contains!4984 (v!31264 (underlying!6792 thiss!42540)) lt!885171))))

(declare-fun lt!885174 () Unit!42365)

(declare-fun e!1572360 () Unit!42365)

(assert (=> d!712467 (= lt!885174 e!1572360)))

(assert (=> d!712467 (= c!394275 (contains!4983 (extractMap!147 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540))))) key!2246))))

(declare-fun lt!885181 () Unit!42365)

(declare-fun e!1572362 () Unit!42365)

(assert (=> d!712467 (= lt!885181 e!1572362)))

(declare-fun c!394272 () Bool)

(assert (=> d!712467 (= c!394272 (contains!4984 (v!31264 (underlying!6792 thiss!42540)) lt!885171))))

(assert (=> d!712467 (= lt!885171 (hash!621 (hashF!5140 thiss!42540) key!2246))))

(assert (=> d!712467 (valid!2501 thiss!42540)))

(assert (=> d!712467 (= (contains!4981 thiss!42540 key!2246) lt!885179)))

(declare-fun b!2477902 () Bool)

(declare-datatypes ((Option!5728 0))(
  ( (None!5727) (Some!5727 (v!31266 tuple2!28426)) )
))
(declare-fun isDefined!4550 (Option!5728) Bool)

(declare-fun getPair!59 (List!29078 K!5315) Option!5728)

(assert (=> b!2477902 (= e!1572356 (isDefined!4550 (getPair!59 (apply!6846 (v!31264 (underlying!6792 thiss!42540)) lt!885171) key!2246)))))

(declare-fun b!2477903 () Bool)

(declare-fun e!1572357 () Bool)

(declare-fun call!151776 () Bool)

(assert (=> b!2477903 (= e!1572357 call!151776)))

(declare-fun bm!151771 () Bool)

(declare-fun call!151777 () Option!5728)

(declare-fun call!151779 () List!29078)

(assert (=> bm!151771 (= call!151777 (getPair!59 call!151779 key!2246))))

(declare-fun b!2477904 () Bool)

(assert (=> b!2477904 false))

(declare-fun lt!885177 () Unit!42365)

(declare-fun lt!885176 () Unit!42365)

(assert (=> b!2477904 (= lt!885177 lt!885176)))

(declare-fun lt!885173 () List!29079)

(declare-fun lt!885183 () List!29078)

(assert (=> b!2477904 (contains!4980 lt!885173 (tuple2!28429 lt!885171 lt!885183))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!60 (List!29079 (_ BitVec 64) List!29078) Unit!42365)

(assert (=> b!2477904 (= lt!885176 (lemmaGetValueByKeyImpliesContainsTuple!60 lt!885173 lt!885171 lt!885183))))

(assert (=> b!2477904 (= lt!885183 (apply!6846 (v!31264 (underlying!6792 thiss!42540)) lt!885171))))

(assert (=> b!2477904 (= lt!885173 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540)))))))

(declare-fun lt!885172 () Unit!42365)

(declare-fun lt!885175 () Unit!42365)

(assert (=> b!2477904 (= lt!885172 lt!885175)))

(declare-fun lt!885178 () List!29079)

(declare-datatypes ((Option!5729 0))(
  ( (None!5728) (Some!5728 (v!31267 List!29078)) )
))
(declare-fun isDefined!4551 (Option!5729) Bool)

(declare-fun getValueByKey!126 (List!29079 (_ BitVec 64)) Option!5729)

(assert (=> b!2477904 (isDefined!4551 (getValueByKey!126 lt!885178 lt!885171))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!83 (List!29079 (_ BitVec 64)) Unit!42365)

(assert (=> b!2477904 (= lt!885175 (lemmaContainsKeyImpliesGetValueByKeyDefined!83 lt!885178 lt!885171))))

(assert (=> b!2477904 (= lt!885178 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540)))))))

(declare-fun lt!885167 () Unit!42365)

(declare-fun lt!885169 () Unit!42365)

(assert (=> b!2477904 (= lt!885167 lt!885169)))

(declare-fun lt!885180 () List!29079)

(declare-fun containsKey!117 (List!29079 (_ BitVec 64)) Bool)

(assert (=> b!2477904 (containsKey!117 lt!885180 lt!885171)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!60 (List!29079 (_ BitVec 64)) Unit!42365)

(assert (=> b!2477904 (= lt!885169 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!60 lt!885180 lt!885171))))

(assert (=> b!2477904 (= lt!885180 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540)))))))

(declare-fun e!1572358 () Unit!42365)

(declare-fun Unit!42368 () Unit!42365)

(assert (=> b!2477904 (= e!1572358 Unit!42368)))

(declare-fun b!2477905 () Bool)

(declare-fun Unit!42369 () Unit!42365)

(assert (=> b!2477905 (= e!1572362 Unit!42369)))

(declare-fun b!2477906 () Bool)

(declare-fun lt!885168 () Unit!42365)

(assert (=> b!2477906 (= e!1572360 lt!885168)))

(assert (=> b!2477906 (= lt!885166 call!151775)))

(declare-fun lemmaInGenericMapThenInLongMap!59 (ListLongMap!415 K!5315 Hashable!3202) Unit!42365)

(assert (=> b!2477906 (= lt!885168 (lemmaInGenericMapThenInLongMap!59 lt!885166 key!2246 (hashF!5140 thiss!42540)))))

(declare-fun res!1048928 () Bool)

(assert (=> b!2477906 (= res!1048928 call!151780)))

(assert (=> b!2477906 (=> (not res!1048928) (not e!1572357))))

(assert (=> b!2477906 e!1572357))

(declare-fun bm!151772 () Bool)

(assert (=> bm!151772 (= call!151775 (map!6053 (v!31264 (underlying!6792 thiss!42540))))))

(declare-fun b!2477907 () Bool)

(declare-fun Unit!42370 () Unit!42365)

(assert (=> b!2477907 (= e!1572361 Unit!42370)))

(declare-fun bm!151773 () Bool)

(assert (=> bm!151773 (= call!151776 (isDefined!4550 call!151777))))

(declare-fun b!2477908 () Bool)

(assert (=> b!2477908 (= e!1572360 e!1572361)))

(declare-fun res!1048929 () Bool)

(assert (=> b!2477908 (= res!1048929 call!151780)))

(declare-fun e!1572359 () Bool)

(assert (=> b!2477908 (=> (not res!1048929) (not e!1572359))))

(declare-fun c!394273 () Bool)

(assert (=> b!2477908 (= c!394273 e!1572359)))

(declare-fun bm!151774 () Bool)

(assert (=> bm!151774 (= call!151778 (hash!621 (hashF!5140 thiss!42540) key!2246))))

(declare-fun bm!151775 () Bool)

(declare-fun apply!6847 (ListLongMap!415 (_ BitVec 64)) List!29078)

(assert (=> bm!151775 (= call!151779 (apply!6847 (ite c!394275 lt!885166 call!151775) call!151778))))

(declare-fun b!2477909 () Bool)

(declare-fun Unit!42371 () Unit!42365)

(assert (=> b!2477909 (= e!1572358 Unit!42371)))

(declare-fun forallContained!809 (List!29079 Int tuple2!28428) Unit!42365)

(assert (=> b!2477910 (= e!1572362 (forallContained!809 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540)))) lambda!93496 (tuple2!28429 lt!885171 (apply!6846 (v!31264 (underlying!6792 thiss!42540)) lt!885171))))))

(declare-fun c!394274 () Bool)

(assert (=> b!2477910 (= c!394274 (not (contains!4980 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540)))) (tuple2!28429 lt!885171 (apply!6846 (v!31264 (underlying!6792 thiss!42540)) lt!885171)))))))

(declare-fun lt!885170 () Unit!42365)

(assert (=> b!2477910 (= lt!885170 e!1572358)))

(declare-fun b!2477911 () Bool)

(assert (=> b!2477911 (= e!1572359 call!151776)))

(assert (= (and d!712467 c!394272) b!2477910))

(assert (= (and d!712467 (not c!394272)) b!2477905))

(assert (= (and b!2477910 c!394274) b!2477904))

(assert (= (and b!2477910 (not c!394274)) b!2477909))

(assert (= (and d!712467 c!394275) b!2477906))

(assert (= (and d!712467 (not c!394275)) b!2477908))

(assert (= (and b!2477906 res!1048928) b!2477903))

(assert (= (and b!2477908 res!1048929) b!2477911))

(assert (= (and b!2477908 c!394273) b!2477901))

(assert (= (and b!2477908 (not c!394273)) b!2477907))

(assert (= (or b!2477906 b!2477903 b!2477908 b!2477911) bm!151774))

(assert (= (or b!2477906 b!2477908 b!2477911 b!2477901) bm!151772))

(assert (= (or b!2477903 b!2477911) bm!151775))

(assert (= (or b!2477906 b!2477908) bm!151770))

(assert (= (or b!2477903 b!2477911) bm!151771))

(assert (= (or b!2477903 b!2477911) bm!151773))

(assert (= (and d!712467 res!1048930) b!2477902))

(declare-fun m!2845665 () Bool)

(assert (=> bm!151771 m!2845665))

(declare-fun m!2845667 () Bool)

(assert (=> bm!151775 m!2845667))

(declare-fun m!2845669 () Bool)

(assert (=> bm!151770 m!2845669))

(assert (=> bm!151774 m!2845651))

(declare-fun m!2845671 () Bool)

(assert (=> b!2477901 m!2845671))

(assert (=> b!2477901 m!2845671))

(declare-fun m!2845673 () Bool)

(assert (=> b!2477901 m!2845673))

(declare-fun m!2845675 () Bool)

(assert (=> b!2477901 m!2845675))

(assert (=> b!2477910 m!2845647))

(declare-fun m!2845677 () Bool)

(assert (=> b!2477910 m!2845677))

(declare-fun m!2845679 () Bool)

(assert (=> b!2477910 m!2845679))

(declare-fun m!2845681 () Bool)

(assert (=> b!2477910 m!2845681))

(declare-fun m!2845683 () Bool)

(assert (=> b!2477906 m!2845683))

(declare-fun m!2845685 () Bool)

(assert (=> bm!151773 m!2845685))

(declare-fun m!2845687 () Bool)

(assert (=> d!712467 m!2845687))

(declare-fun m!2845689 () Bool)

(assert (=> d!712467 m!2845689))

(assert (=> d!712467 m!2845651))

(declare-fun m!2845691 () Bool)

(assert (=> d!712467 m!2845691))

(assert (=> d!712467 m!2845691))

(declare-fun m!2845693 () Bool)

(assert (=> d!712467 m!2845693))

(declare-fun m!2845695 () Bool)

(assert (=> d!712467 m!2845695))

(assert (=> d!712467 m!2845687))

(assert (=> d!712467 m!2845647))

(assert (=> d!712467 m!2845635))

(assert (=> bm!151772 m!2845647))

(assert (=> b!2477902 m!2845677))

(assert (=> b!2477902 m!2845677))

(declare-fun m!2845697 () Bool)

(assert (=> b!2477902 m!2845697))

(assert (=> b!2477902 m!2845697))

(declare-fun m!2845699 () Bool)

(assert (=> b!2477902 m!2845699))

(assert (=> b!2477904 m!2845677))

(declare-fun m!2845701 () Bool)

(assert (=> b!2477904 m!2845701))

(declare-fun m!2845703 () Bool)

(assert (=> b!2477904 m!2845703))

(declare-fun m!2845705 () Bool)

(assert (=> b!2477904 m!2845705))

(assert (=> b!2477904 m!2845647))

(declare-fun m!2845707 () Bool)

(assert (=> b!2477904 m!2845707))

(assert (=> b!2477904 m!2845703))

(declare-fun m!2845709 () Bool)

(assert (=> b!2477904 m!2845709))

(declare-fun m!2845711 () Bool)

(assert (=> b!2477904 m!2845711))

(declare-fun m!2845713 () Bool)

(assert (=> b!2477904 m!2845713))

(assert (=> b!2477864 d!712467))

(declare-fun d!712469 () Bool)

(declare-fun res!1048935 () Bool)

(declare-fun e!1572367 () Bool)

(assert (=> d!712469 (=> res!1048935 e!1572367)))

(assert (=> d!712469 (= res!1048935 ((_ is Nil!28979) (toList!1473 lt!885118)))))

(assert (=> d!712469 (= (forall!5933 (toList!1473 lt!885118) lambda!93490) e!1572367)))

(declare-fun b!2477916 () Bool)

(declare-fun e!1572368 () Bool)

(assert (=> b!2477916 (= e!1572367 e!1572368)))

(declare-fun res!1048936 () Bool)

(assert (=> b!2477916 (=> (not res!1048936) (not e!1572368))))

(declare-fun dynLambda!12434 (Int tuple2!28428) Bool)

(assert (=> b!2477916 (= res!1048936 (dynLambda!12434 lambda!93490 (h!34381 (toList!1473 lt!885118))))))

(declare-fun b!2477917 () Bool)

(assert (=> b!2477917 (= e!1572368 (forall!5933 (t!210720 (toList!1473 lt!885118)) lambda!93490))))

(assert (= (and d!712469 (not res!1048935)) b!2477916))

(assert (= (and b!2477916 res!1048936) b!2477917))

(declare-fun b_lambda!76007 () Bool)

(assert (=> (not b_lambda!76007) (not b!2477916)))

(declare-fun m!2845715 () Bool)

(assert (=> b!2477916 m!2845715))

(declare-fun m!2845717 () Bool)

(assert (=> b!2477917 m!2845717))

(assert (=> b!2477866 d!712469))

(declare-fun d!712471 () Bool)

(declare-fun map!6055 (LongMapFixedSize!6584) ListLongMap!415)

(assert (=> d!712471 (= (map!6053 (v!31264 (underlying!6792 thiss!42540))) (map!6055 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540))))))))

(declare-fun bs!467198 () Bool)

(assert (= bs!467198 d!712471))

(declare-fun m!2845719 () Bool)

(assert (=> bs!467198 m!2845719))

(assert (=> b!2477866 d!712471))

(declare-fun d!712473 () Bool)

(declare-fun e!1572371 () Bool)

(assert (=> d!712473 e!1572371))

(declare-fun c!394278 () Bool)

(assert (=> d!712473 (= c!394278 (contains!4984 (v!31264 (underlying!6792 thiss!42540)) lt!885119))))

(declare-fun lt!885186 () List!29078)

(declare-fun apply!6848 (LongMapFixedSize!6584 (_ BitVec 64)) List!29078)

(assert (=> d!712473 (= lt!885186 (apply!6848 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))) lt!885119))))

(assert (=> d!712473 (valid!2502 (v!31264 (underlying!6792 thiss!42540)))))

(assert (=> d!712473 (= (apply!6846 (v!31264 (underlying!6792 thiss!42540)) lt!885119) lt!885186)))

(declare-fun b!2477922 () Bool)

(declare-fun get!8931 (Option!5729) List!29078)

(assert (=> b!2477922 (= e!1572371 (= lt!885186 (get!8931 (getValueByKey!126 (toList!1473 (map!6053 (v!31264 (underlying!6792 thiss!42540)))) lt!885119))))))

(declare-fun b!2477923 () Bool)

(declare-fun dynLambda!12435 (Int (_ BitVec 64)) List!29078)

(assert (=> b!2477923 (= e!1572371 (= lt!885186 (dynLambda!12435 (defaultEntry!3666 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540))))) lt!885119)))))

(assert (=> b!2477923 ((_ is LongMap!3292) (v!31264 (underlying!6792 thiss!42540)))))

(assert (= (and d!712473 c!394278) b!2477922))

(assert (= (and d!712473 (not c!394278)) b!2477923))

(declare-fun b_lambda!76009 () Bool)

(assert (=> (not b_lambda!76009) (not b!2477923)))

(declare-fun t!210722 () Bool)

(declare-fun tb!140359 () Bool)

(assert (=> (and b!2477860 (= (defaultEntry!3666 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540))))) (defaultEntry!3666 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540)))))) t!210722) tb!140359))

(assert (=> b!2477923 t!210722))

(declare-fun result!173264 () Bool)

(declare-fun b_and!188259 () Bool)

(assert (= b_and!188255 (and (=> t!210722 result!173264) b_and!188259)))

(declare-fun m!2845721 () Bool)

(assert (=> d!712473 m!2845721))

(declare-fun m!2845723 () Bool)

(assert (=> d!712473 m!2845723))

(assert (=> d!712473 m!2845659))

(assert (=> b!2477922 m!2845647))

(declare-fun m!2845725 () Bool)

(assert (=> b!2477922 m!2845725))

(assert (=> b!2477922 m!2845725))

(declare-fun m!2845727 () Bool)

(assert (=> b!2477922 m!2845727))

(declare-fun m!2845729 () Bool)

(assert (=> b!2477923 m!2845729))

(assert (=> b!2477866 d!712473))

(declare-fun d!712475 () Bool)

(declare-fun hash!622 (Hashable!3202 K!5315) (_ BitVec 64))

(assert (=> d!712475 (= (hash!621 (hashF!5140 thiss!42540) key!2246) (hash!622 (hashF!5140 thiss!42540) key!2246))))

(declare-fun bs!467199 () Bool)

(assert (= bs!467199 d!712475))

(declare-fun m!2845731 () Bool)

(assert (=> bs!467199 m!2845731))

(assert (=> b!2477866 d!712475))

(declare-fun tp!792815 () Bool)

(declare-fun e!1572374 () Bool)

(declare-fun b!2477928 () Bool)

(declare-fun tp_is_empty!12093 () Bool)

(assert (=> b!2477928 (= e!1572374 (and tp_is_empty!12091 tp_is_empty!12093 tp!792815))))

(assert (=> b!2477857 (= tp!792810 e!1572374)))

(assert (= (and b!2477857 ((_ is Cons!28978) mapDefault!15310)) b!2477928))

(declare-fun mapIsEmpty!15313 () Bool)

(declare-fun mapRes!15313 () Bool)

(assert (=> mapIsEmpty!15313 mapRes!15313))

(declare-fun condMapEmpty!15313 () Bool)

(declare-fun mapDefault!15313 () List!29078)

(assert (=> mapNonEmpty!15310 (= condMapEmpty!15313 (= mapRest!15310 ((as const (Array (_ BitVec 32) List!29078)) mapDefault!15313)))))

(declare-fun e!1572379 () Bool)

(assert (=> mapNonEmpty!15310 (= tp!792808 (and e!1572379 mapRes!15313))))

(declare-fun mapNonEmpty!15313 () Bool)

(declare-fun tp!792824 () Bool)

(declare-fun e!1572380 () Bool)

(assert (=> mapNonEmpty!15313 (= mapRes!15313 (and tp!792824 e!1572380))))

(declare-fun mapKey!15313 () (_ BitVec 32))

(declare-fun mapRest!15313 () (Array (_ BitVec 32) List!29078))

(declare-fun mapValue!15313 () List!29078)

(assert (=> mapNonEmpty!15313 (= mapRest!15310 (store mapRest!15313 mapKey!15313 mapValue!15313))))

(declare-fun tp!792822 () Bool)

(declare-fun b!2477936 () Bool)

(assert (=> b!2477936 (= e!1572379 (and tp_is_empty!12091 tp_is_empty!12093 tp!792822))))

(declare-fun tp!792823 () Bool)

(declare-fun b!2477935 () Bool)

(assert (=> b!2477935 (= e!1572380 (and tp_is_empty!12091 tp_is_empty!12093 tp!792823))))

(assert (= (and mapNonEmpty!15310 condMapEmpty!15313) mapIsEmpty!15313))

(assert (= (and mapNonEmpty!15310 (not condMapEmpty!15313)) mapNonEmpty!15313))

(assert (= (and mapNonEmpty!15313 ((_ is Cons!28978) mapValue!15313)) b!2477935))

(assert (= (and mapNonEmpty!15310 ((_ is Cons!28978) mapDefault!15313)) b!2477936))

(declare-fun m!2845733 () Bool)

(assert (=> mapNonEmpty!15313 m!2845733))

(declare-fun e!1572381 () Bool)

(declare-fun b!2477937 () Bool)

(declare-fun tp!792825 () Bool)

(assert (=> b!2477937 (= e!1572381 (and tp_is_empty!12091 tp_is_empty!12093 tp!792825))))

(assert (=> mapNonEmpty!15310 (= tp!792809 e!1572381)))

(assert (= (and mapNonEmpty!15310 ((_ is Cons!28978) mapValue!15310)) b!2477937))

(declare-fun tp!792826 () Bool)

(declare-fun b!2477938 () Bool)

(declare-fun e!1572382 () Bool)

(assert (=> b!2477938 (= e!1572382 (and tp_is_empty!12091 tp_is_empty!12093 tp!792826))))

(assert (=> b!2477860 (= tp!792811 e!1572382)))

(assert (= (and b!2477860 ((_ is Cons!28978) (zeroValue!3550 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540))))))) b!2477938))

(declare-fun b!2477939 () Bool)

(declare-fun e!1572383 () Bool)

(declare-fun tp!792827 () Bool)

(assert (=> b!2477939 (= e!1572383 (and tp_is_empty!12091 tp_is_empty!12093 tp!792827))))

(assert (=> b!2477860 (= tp!792806 e!1572383)))

(assert (= (and b!2477860 ((_ is Cons!28978) (minValue!3550 (v!31263 (underlying!6791 (v!31264 (underlying!6792 thiss!42540))))))) b!2477939))

(declare-fun b_lambda!76011 () Bool)

(assert (= b_lambda!76009 (or (and b!2477860 b_free!72025) b_lambda!76011)))

(declare-fun b_lambda!76013 () Bool)

(assert (= b_lambda!76007 (or b!2477866 b_lambda!76013)))

(declare-fun bs!467200 () Bool)

(declare-fun d!712477 () Bool)

(assert (= bs!467200 (and d!712477 b!2477866)))

(declare-fun noDuplicateKeys!44 (List!29078) Bool)

(assert (=> bs!467200 (= (dynLambda!12434 lambda!93490 (h!34381 (toList!1473 lt!885118))) (noDuplicateKeys!44 (_2!16755 (h!34381 (toList!1473 lt!885118)))))))

(declare-fun m!2845735 () Bool)

(assert (=> bs!467200 m!2845735))

(assert (=> b!2477916 d!712477))

(check-sat (not b!2477938) (not b_lambda!76013) (not b!2477904) (not b!2477922) (not bm!151772) (not d!712459) (not b_next!72729) (not b!2477877) (not b!2477936) (not bm!151770) (not b!2477872) (not b_lambda!76011) (not b_next!72731) (not b!2477939) (not b!2477910) (not tb!140359) tp_is_empty!12091 (not d!712467) (not b!2477917) (not b!2477935) (not bm!151774) (not d!712465) (not bm!151775) (not d!712471) b_and!188257 (not d!712473) (not bs!467200) (not b!2477901) (not bm!151771) (not b!2477906) (not bm!151773) (not d!712475) tp_is_empty!12093 (not b!2477902) b_and!188259 (not mapNonEmpty!15313) (not b!2477937) (not b!2477878) (not b!2477928))
(check-sat b_and!188257 b_and!188259 (not b_next!72729) (not b_next!72731))
