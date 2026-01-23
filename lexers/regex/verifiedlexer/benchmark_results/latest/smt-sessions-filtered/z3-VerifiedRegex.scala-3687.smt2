; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208430 () Bool)

(assert start!208430)

(declare-fun b!2148959 () Bool)

(declare-fun b_free!63453 () Bool)

(declare-fun b_next!64157 () Bool)

(assert (=> b!2148959 (= b_free!63453 (not b_next!64157))))

(declare-fun tp!667250 () Bool)

(declare-fun b_and!173049 () Bool)

(assert (=> b!2148959 (= tp!667250 b_and!173049)))

(declare-fun b!2148955 () Bool)

(declare-fun b_free!63455 () Bool)

(declare-fun b_next!64159 () Bool)

(assert (=> b!2148955 (= b_free!63455 (not b_next!64159))))

(declare-fun tp!667253 () Bool)

(declare-fun b_and!173051 () Bool)

(assert (=> b!2148955 (= tp!667253 b_and!173051)))

(declare-fun b!2148949 () Bool)

(assert (=> b!2148949 true))

(declare-fun b!2148946 () Bool)

(declare-fun e!1374004 () Bool)

(declare-fun e!1373997 () Bool)

(assert (=> b!2148946 (= e!1374004 e!1373997)))

(declare-fun setRes!17032 () Bool)

(declare-fun setNonEmpty!17032 () Bool)

(declare-fun e!1374001 () Bool)

(declare-datatypes ((C!11828 0))(
  ( (C!11829 (val!6900 Int)) )
))
(declare-datatypes ((Regex!5841 0))(
  ( (ElementMatch!5841 (c!341010 C!11828)) (Concat!10143 (regOne!12194 Regex!5841) (regTwo!12194 Regex!5841)) (EmptyExpr!5841) (Star!5841 (reg!6170 Regex!5841)) (EmptyLang!5841) (Union!5841 (regOne!12195 Regex!5841) (regTwo!12195 Regex!5841)) )
))
(declare-datatypes ((List!24682 0))(
  ( (Nil!24598) (Cons!24598 (h!29999 Regex!5841) (t!197220 List!24682)) )
))
(declare-datatypes ((Context!2822 0))(
  ( (Context!2823 (exprs!1911 List!24682)) )
))
(declare-fun setElem!17032 () Context!2822)

(declare-fun tp!667257 () Bool)

(declare-fun inv!32392 (Context!2822) Bool)

(assert (=> setNonEmpty!17032 (= setRes!17032 (and tp!667257 (inv!32392 setElem!17032) e!1374001))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!514 () (InoxSet Context!2822))

(declare-fun setRest!17032 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17032 (= z!514 ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17032 true) setRest!17032))))

(declare-fun b!2148948 () Bool)

(declare-fun e!1374000 () Bool)

(declare-datatypes ((List!24683 0))(
  ( (Nil!24599) (Cons!24599 (h!30000 C!11828) (t!197221 List!24683)) )
))
(declare-datatypes ((tuple3!3614 0))(
  ( (tuple3!3615 (_1!14497 (InoxSet Context!2822)) (_2!14497 Int) (_3!2277 Int)) )
))
(declare-datatypes ((tuple2!24440 0))(
  ( (tuple2!24441 (_1!14498 tuple3!3614) (_2!14498 Int)) )
))
(declare-datatypes ((List!24684 0))(
  ( (Nil!24600) (Cons!24600 (h!30001 tuple2!24440) (t!197222 List!24684)) )
))
(declare-datatypes ((array!9689 0))(
  ( (array!9690 (arr!4328 (Array (_ BitVec 32) (_ BitVec 64))) (size!19264 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2780 0))(
  ( (HashableExt!2779 (__x!16774 Int)) )
))
(declare-datatypes ((array!9691 0))(
  ( (array!9692 (arr!4329 (Array (_ BitVec 32) List!24684)) (size!19265 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5732 0))(
  ( (LongMapFixedSize!5733 (defaultEntry!3231 Int) (mask!7102 (_ BitVec 32)) (extraKeys!3114 (_ BitVec 32)) (zeroValue!3124 List!24684) (minValue!3124 List!24684) (_size!5783 (_ BitVec 32)) (_keys!3163 array!9689) (_values!3146 array!9691) (_vacant!2927 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11289 0))(
  ( (Cell!11290 (v!29170 LongMapFixedSize!5732)) )
))
(declare-datatypes ((MutLongMap!2866 0))(
  ( (LongMap!2866 (underlying!5927 Cell!11289)) (MutLongMapExt!2865 (__x!16775 Int)) )
))
(declare-datatypes ((Cell!11291 0))(
  ( (Cell!11292 (v!29171 MutLongMap!2866)) )
))
(declare-datatypes ((MutableMap!2780 0))(
  ( (MutableMapExt!2779 (__x!16776 Int)) (HashMap!2780 (underlying!5928 Cell!11291) (hashF!4703 Hashable!2780) (_size!5784 (_ BitVec 32)) (defaultValue!2942 Int)) )
))
(declare-datatypes ((IArray!15959 0))(
  ( (IArray!15960 (innerList!8037 List!24683)) )
))
(declare-datatypes ((Conc!7977 0))(
  ( (Node!7977 (left!18884 Conc!7977) (right!19214 Conc!7977) (csize!16184 Int) (cheight!8188 Int)) (Leaf!11665 (xs!10919 IArray!15959) (csize!16185 Int)) (Empty!7977) )
))
(declare-datatypes ((BalanceConc!15716 0))(
  ( (BalanceConc!15717 (c!341011 Conc!7977)) )
))
(declare-datatypes ((CacheFurthestNullable!918 0))(
  ( (CacheFurthestNullable!919 (cache!3161 MutableMap!2780) (totalInput!3226 BalanceConc!15716)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!918)

(declare-fun tp!667254 () Bool)

(declare-fun inv!32393 (Conc!7977) Bool)

(assert (=> b!2148948 (= e!1374000 (and (inv!32393 (c!341011 (totalInput!3226 thiss!29110))) tp!667254))))

(declare-fun e!1374008 () Bool)

(get-info :version)

(assert (=> b!2148949 (= e!1374008 ((_ is HashMap!2780) (cache!3161 thiss!29110)))))

(declare-fun lt!799920 () tuple3!3614)

(declare-fun localTotalInput!13 () BalanceConc!15716)

(declare-fun validCacheMapFurthestNullableBody!17 (tuple2!24440 BalanceConc!15716) Bool)

(declare-fun apply!6005 (MutableMap!2780 tuple3!3614) Int)

(assert (=> b!2148949 (validCacheMapFurthestNullableBody!17 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)) localTotalInput!13)))

(declare-fun lambda!80726 () Int)

(declare-datatypes ((Unit!37770 0))(
  ( (Unit!37771) )
))
(declare-fun lt!799921 () Unit!37770)

(declare-fun lemmaForallPairsThenForLookup!1 (MutableMap!2780 tuple3!3614 Int) Unit!37770)

(assert (=> b!2148949 (= lt!799921 (lemmaForallPairsThenForLookup!1 (cache!3161 thiss!29110) lt!799920 lambda!80726))))

(declare-fun e!1374003 () Bool)

(declare-fun b!2148950 () Bool)

(declare-fun e!1374009 () Bool)

(declare-fun inv!32394 (BalanceConc!15716) Bool)

(assert (=> b!2148950 (= e!1374009 (and e!1374003 (inv!32394 (totalInput!3226 thiss!29110)) e!1374000))))

(declare-fun b!2148951 () Bool)

(declare-fun e!1373999 () Bool)

(declare-fun tp!667249 () Bool)

(assert (=> b!2148951 (= e!1373999 (and (inv!32393 (c!341011 localTotalInput!13)) tp!667249))))

(declare-fun b!2148952 () Bool)

(declare-fun tp!667259 () Bool)

(assert (=> b!2148952 (= e!1374001 tp!667259)))

(declare-fun b!2148953 () Bool)

(declare-fun e!1374002 () Bool)

(assert (=> b!2148953 (= e!1374002 (not e!1374008))))

(declare-fun res!926903 () Bool)

(assert (=> b!2148953 (=> res!926903 e!1374008)))

(declare-fun contains!4192 (MutableMap!2780 tuple3!3614) Bool)

(assert (=> b!2148953 (= res!926903 (not (contains!4192 (cache!3161 thiss!29110) lt!799920)))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2148953 (= lt!799920 (tuple3!3615 z!514 from!952 lastNullablePos!91))))

(declare-fun validCacheMapFurthestNullable!138 (MutableMap!2780 BalanceConc!15716) Bool)

(assert (=> b!2148953 (validCacheMapFurthestNullable!138 (cache!3161 thiss!29110) localTotalInput!13)))

(declare-fun b!2148954 () Bool)

(declare-fun e!1374006 () Bool)

(declare-fun tp!667255 () Bool)

(declare-fun mapRes!13583 () Bool)

(assert (=> b!2148954 (= e!1374006 (and tp!667255 mapRes!13583))))

(declare-fun condMapEmpty!13583 () Bool)

(declare-fun mapDefault!13583 () List!24684)

(assert (=> b!2148954 (= condMapEmpty!13583 (= (arr!4329 (_values!3146 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24684)) mapDefault!13583)))))

(declare-fun setIsEmpty!17032 () Bool)

(assert (=> setIsEmpty!17032 setRes!17032))

(declare-fun b!2148947 () Bool)

(declare-fun e!1373998 () Bool)

(assert (=> b!2148947 (= e!1373998 e!1374004)))

(declare-fun res!926901 () Bool)

(assert (=> start!208430 (=> (not res!926901) (not e!1374002))))

(assert (=> start!208430 (= res!926901 (and (= localTotalInput!13 (totalInput!3226 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208430 e!1374002))

(declare-fun condSetEmpty!17032 () Bool)

(assert (=> start!208430 (= condSetEmpty!17032 (= z!514 ((as const (Array Context!2822 Bool)) false)))))

(assert (=> start!208430 setRes!17032))

(assert (=> start!208430 true))

(declare-fun inv!32395 (CacheFurthestNullable!918) Bool)

(assert (=> start!208430 (and (inv!32395 thiss!29110) e!1374009)))

(assert (=> start!208430 (and (inv!32394 localTotalInput!13) e!1373999)))

(declare-fun e!1374005 () Bool)

(assert (=> b!2148955 (= e!1374003 (and e!1374005 tp!667253))))

(declare-fun mapIsEmpty!13583 () Bool)

(assert (=> mapIsEmpty!13583 mapRes!13583))

(declare-fun b!2148956 () Bool)

(declare-fun res!926904 () Bool)

(assert (=> b!2148956 (=> (not res!926904) (not e!1374002))))

(declare-fun e!1373996 () Bool)

(assert (=> b!2148956 (= res!926904 e!1373996)))

(declare-fun res!926900 () Bool)

(assert (=> b!2148956 (=> res!926900 e!1373996)))

(declare-fun nullableZipper!181 ((InoxSet Context!2822)) Bool)

(assert (=> b!2148956 (= res!926900 (not (nullableZipper!181 z!514)))))

(declare-fun b!2148957 () Bool)

(declare-fun res!926902 () Bool)

(assert (=> b!2148957 (=> (not res!926902) (not e!1374002))))

(assert (=> b!2148957 (= res!926902 (validCacheMapFurthestNullable!138 (cache!3161 thiss!29110) (totalInput!3226 thiss!29110)))))

(declare-fun b!2148958 () Bool)

(declare-fun lt!799922 () MutLongMap!2866)

(assert (=> b!2148958 (= e!1374005 (and e!1373998 ((_ is LongMap!2866) lt!799922)))))

(assert (=> b!2148958 (= lt!799922 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))

(declare-fun tp!667258 () Bool)

(declare-fun tp!667252 () Bool)

(declare-fun array_inv!3104 (array!9689) Bool)

(declare-fun array_inv!3105 (array!9691) Bool)

(assert (=> b!2148959 (= e!1373997 (and tp!667250 tp!667252 tp!667258 (array_inv!3104 (_keys!3163 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) (array_inv!3105 (_values!3146 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) e!1374006))))

(declare-fun b!2148960 () Bool)

(assert (=> b!2148960 (= e!1373996 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun mapNonEmpty!13583 () Bool)

(declare-fun tp!667251 () Bool)

(declare-fun tp!667256 () Bool)

(assert (=> mapNonEmpty!13583 (= mapRes!13583 (and tp!667251 tp!667256))))

(declare-fun mapValue!13583 () List!24684)

(declare-fun mapRest!13583 () (Array (_ BitVec 32) List!24684))

(declare-fun mapKey!13583 () (_ BitVec 32))

(assert (=> mapNonEmpty!13583 (= (arr!4329 (_values!3146 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) (store mapRest!13583 mapKey!13583 mapValue!13583))))

(assert (= (and start!208430 res!926901) b!2148956))

(assert (= (and b!2148956 (not res!926900)) b!2148960))

(assert (= (and b!2148956 res!926904) b!2148957))

(assert (= (and b!2148957 res!926902) b!2148953))

(assert (= (and b!2148953 (not res!926903)) b!2148949))

(assert (= (and start!208430 condSetEmpty!17032) setIsEmpty!17032))

(assert (= (and start!208430 (not condSetEmpty!17032)) setNonEmpty!17032))

(assert (= setNonEmpty!17032 b!2148952))

(assert (= (and b!2148954 condMapEmpty!13583) mapIsEmpty!13583))

(assert (= (and b!2148954 (not condMapEmpty!13583)) mapNonEmpty!13583))

(assert (= b!2148959 b!2148954))

(assert (= b!2148946 b!2148959))

(assert (= b!2148947 b!2148946))

(assert (= (and b!2148958 ((_ is LongMap!2866) (v!29171 (underlying!5928 (cache!3161 thiss!29110))))) b!2148947))

(assert (= b!2148955 b!2148958))

(assert (= (and b!2148950 ((_ is HashMap!2780) (cache!3161 thiss!29110))) b!2148955))

(assert (= b!2148950 b!2148948))

(assert (= start!208430 b!2148950))

(assert (= start!208430 b!2148951))

(declare-fun m!2591832 () Bool)

(assert (=> mapNonEmpty!13583 m!2591832))

(declare-fun m!2591834 () Bool)

(assert (=> b!2148950 m!2591834))

(declare-fun m!2591836 () Bool)

(assert (=> b!2148959 m!2591836))

(declare-fun m!2591838 () Bool)

(assert (=> b!2148959 m!2591838))

(declare-fun m!2591840 () Bool)

(assert (=> b!2148951 m!2591840))

(declare-fun m!2591842 () Bool)

(assert (=> setNonEmpty!17032 m!2591842))

(declare-fun m!2591844 () Bool)

(assert (=> start!208430 m!2591844))

(declare-fun m!2591846 () Bool)

(assert (=> start!208430 m!2591846))

(declare-fun m!2591848 () Bool)

(assert (=> b!2148957 m!2591848))

(declare-fun m!2591850 () Bool)

(assert (=> b!2148948 m!2591850))

(declare-fun m!2591852 () Bool)

(assert (=> b!2148949 m!2591852))

(declare-fun m!2591854 () Bool)

(assert (=> b!2148949 m!2591854))

(declare-fun m!2591856 () Bool)

(assert (=> b!2148949 m!2591856))

(declare-fun m!2591858 () Bool)

(assert (=> b!2148956 m!2591858))

(declare-fun m!2591860 () Bool)

(assert (=> b!2148953 m!2591860))

(declare-fun m!2591862 () Bool)

(assert (=> b!2148953 m!2591862))

(check-sat (not start!208430) b_and!173049 (not setNonEmpty!17032) (not b!2148948) (not b_next!64157) (not b!2148956) (not b!2148959) (not mapNonEmpty!13583) b_and!173051 (not b!2148950) (not b!2148957) (not b!2148954) (not b!2148953) (not b_next!64159) (not b!2148949) (not b!2148952) (not b!2148951))
(check-sat b_and!173051 b_and!173049 (not b_next!64157) (not b_next!64159))
(get-model)

(declare-fun d!645476 () Bool)

(assert (=> d!645476 (= (array_inv!3104 (_keys!3163 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) (bvsge (size!19264 (_keys!3163 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148959 d!645476))

(declare-fun d!645478 () Bool)

(assert (=> d!645478 (= (array_inv!3105 (_values!3146 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) (bvsge (size!19265 (_values!3146 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148959 d!645478))

(declare-fun d!645480 () Bool)

(declare-fun isBalanced!2473 (Conc!7977) Bool)

(assert (=> d!645480 (= (inv!32394 (totalInput!3226 thiss!29110)) (isBalanced!2473 (c!341011 (totalInput!3226 thiss!29110))))))

(declare-fun bs!445519 () Bool)

(assert (= bs!445519 d!645480))

(declare-fun m!2591864 () Bool)

(assert (=> bs!445519 m!2591864))

(assert (=> b!2148950 d!645480))

(declare-fun b!2148973 () Bool)

(declare-fun res!926915 () Bool)

(declare-fun e!1374014 () Bool)

(assert (=> b!2148973 (=> (not res!926915) (not e!1374014))))

(assert (=> b!2148973 (= res!926915 (and (>= (_3!2277 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) (- 1)) (< (_3!2277 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) (_2!14497 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))))))))

(declare-fun b!2148974 () Bool)

(declare-fun res!926916 () Bool)

(assert (=> b!2148974 (=> (not res!926916) (not e!1374014))))

(declare-fun e!1374015 () Bool)

(assert (=> b!2148974 (= res!926916 e!1374015)))

(declare-fun res!926918 () Bool)

(assert (=> b!2148974 (=> res!926918 e!1374015)))

(assert (=> b!2148974 (= res!926918 (not (nullableZipper!181 (_1!14497 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))))))))

(declare-fun b!2148975 () Bool)

(assert (=> b!2148975 (= e!1374015 (= (_3!2277 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) (- (_2!14497 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) 1)))))

(declare-fun d!645482 () Bool)

(declare-fun res!926917 () Bool)

(assert (=> d!645482 (=> (not res!926917) (not e!1374014))))

(assert (=> d!645482 (= res!926917 (>= (_2!14497 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) 0))))

(assert (=> d!645482 (= (validCacheMapFurthestNullableBody!17 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)) localTotalInput!13) e!1374014)))

(declare-fun b!2148976 () Bool)

(declare-fun res!926919 () Bool)

(assert (=> b!2148976 (=> (not res!926919) (not e!1374014))))

(declare-fun size!19266 (BalanceConc!15716) Int)

(assert (=> b!2148976 (= res!926919 (<= (_2!14497 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) (size!19266 localTotalInput!13)))))

(declare-fun b!2148977 () Bool)

(declare-fun furthestNullablePosition!106 ((InoxSet Context!2822) Int BalanceConc!15716 Int Int) Int)

(assert (=> b!2148977 (= e!1374014 (= (_2!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920))) (furthestNullablePosition!106 (_1!14497 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) (_2!14497 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))) localTotalInput!13 (size!19266 localTotalInput!13) (_3!2277 (_1!14498 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))))))))

(assert (= (and d!645482 res!926917) b!2148976))

(assert (= (and b!2148976 res!926919) b!2148973))

(assert (= (and b!2148973 res!926915) b!2148974))

(assert (= (and b!2148974 (not res!926918)) b!2148975))

(assert (= (and b!2148974 res!926916) b!2148977))

(declare-fun m!2591866 () Bool)

(assert (=> b!2148974 m!2591866))

(declare-fun m!2591868 () Bool)

(assert (=> b!2148976 m!2591868))

(assert (=> b!2148977 m!2591868))

(assert (=> b!2148977 m!2591868))

(declare-fun m!2591870 () Bool)

(assert (=> b!2148977 m!2591870))

(assert (=> b!2148949 d!645482))

(declare-fun b!2148990 () Bool)

(declare-fun lt!799997 () Int)

(declare-fun e!1374023 () Bool)

(declare-fun dynLambda!11386 (Int tuple3!3614) Int)

(assert (=> b!2148990 (= e!1374023 (= lt!799997 (dynLambda!11386 (defaultValue!2942 (cache!3161 thiss!29110)) lt!799920)))))

(declare-fun b!2148991 () Bool)

(declare-datatypes ((Option!4974 0))(
  ( (None!4973) (Some!4973 (v!29172 Int)) )
))
(declare-fun get!7496 (Option!4974) Int)

(declare-fun getValueByKey!41 (List!24684 tuple3!3614) Option!4974)

(declare-datatypes ((ListMap!689 0))(
  ( (ListMap!690 (toList!1098 List!24684)) )
))
(declare-fun map!4945 (MutableMap!2780) ListMap!689)

(assert (=> b!2148991 (= e!1374023 (= lt!799997 (get!7496 (getValueByKey!41 (toList!1098 (map!4945 (cache!3161 thiss!29110))) lt!799920))))))

(declare-fun b!2148992 () Bool)

(declare-fun e!1374024 () Unit!37770)

(declare-fun Unit!37772 () Unit!37770)

(assert (=> b!2148992 (= e!1374024 Unit!37772)))

(declare-fun lt!800009 () (_ BitVec 64))

(declare-fun b!2148993 () Bool)

(declare-fun e!1374022 () Int)

(declare-datatypes ((Option!4975 0))(
  ( (None!4974) (Some!4974 (v!29173 tuple2!24440)) )
))
(declare-fun get!7497 (Option!4975) tuple2!24440)

(declare-fun getPair!10 (List!24684 tuple3!3614) Option!4975)

(declare-fun apply!6006 (MutLongMap!2866 (_ BitVec 64)) List!24684)

(assert (=> b!2148993 (= e!1374022 (_2!14498 (get!7497 (getPair!10 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800009) lt!799920))))))

(declare-fun hash!545 (Hashable!2780 tuple3!3614) (_ BitVec 64))

(assert (=> b!2148993 (= lt!800009 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920))))

(declare-fun c!341019 () Bool)

(declare-datatypes ((tuple2!24442 0))(
  ( (tuple2!24443 (_1!14499 (_ BitVec 64)) (_2!14499 List!24684)) )
))
(declare-datatypes ((List!24685 0))(
  ( (Nil!24601) (Cons!24601 (h!30002 tuple2!24442) (t!197225 List!24685)) )
))
(declare-fun contains!4193 (List!24685 tuple2!24442) Bool)

(declare-datatypes ((ListLongMap!245 0))(
  ( (ListLongMap!246 (toList!1099 List!24685)) )
))
(declare-fun map!4946 (MutLongMap!2866) ListLongMap!245)

(assert (=> b!2148993 (= c!341019 (not (contains!4193 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))) (tuple2!24443 lt!800009 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800009)))))))

(declare-fun lt!799991 () Unit!37770)

(assert (=> b!2148993 (= lt!799991 e!1374024)))

(declare-fun lambda!80733 () Int)

(declare-fun lt!800003 () Unit!37770)

(declare-fun forallContained!757 (List!24685 Int tuple2!24442) Unit!37770)

(assert (=> b!2148993 (= lt!800003 (forallContained!757 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))) lambda!80733 (tuple2!24443 lt!800009 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800009))))))

(declare-fun lt!799983 () ListLongMap!245)

(assert (=> b!2148993 (= lt!799983 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110)))))))

(declare-fun lt!800005 () Unit!37770)

(declare-fun lemmaGetPairGetSameValueAsMap!5 (ListLongMap!245 tuple3!3614 Int Hashable!2780) Unit!37770)

(assert (=> b!2148993 (= lt!800005 (lemmaGetPairGetSameValueAsMap!5 lt!799983 lt!799920 (_2!14498 (get!7497 (getPair!10 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800009) lt!799920))) (hashF!4703 (cache!3161 thiss!29110))))))

(declare-fun lt!799985 () Unit!37770)

(declare-fun lemmaInGenMapThenLongMapContainsHash!5 (ListLongMap!245 tuple3!3614 Hashable!2780) Unit!37770)

(assert (=> b!2148993 (= lt!799985 (lemmaInGenMapThenLongMapContainsHash!5 lt!799983 lt!799920 (hashF!4703 (cache!3161 thiss!29110))))))

(declare-fun contains!4194 (ListLongMap!245 (_ BitVec 64)) Bool)

(assert (=> b!2148993 (contains!4194 lt!799983 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920))))

(declare-fun lt!800012 () Unit!37770)

(assert (=> b!2148993 (= lt!800012 lt!799985)))

(declare-fun lt!799999 () (_ BitVec 64))

(assert (=> b!2148993 (= lt!799999 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920))))

(declare-fun lt!799990 () List!24684)

(declare-fun apply!6007 (ListLongMap!245 (_ BitVec 64)) List!24684)

(assert (=> b!2148993 (= lt!799990 (apply!6007 lt!799983 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920)))))

(declare-fun lt!800002 () Unit!37770)

(declare-fun lemmaGetValueImpliesTupleContained!6 (ListLongMap!245 (_ BitVec 64) List!24684) Unit!37770)

(assert (=> b!2148993 (= lt!800002 (lemmaGetValueImpliesTupleContained!6 lt!799983 lt!799999 lt!799990))))

(assert (=> b!2148993 (contains!4193 (toList!1099 lt!799983) (tuple2!24443 lt!799999 lt!799990))))

(declare-fun lt!800004 () Unit!37770)

(assert (=> b!2148993 (= lt!800004 lt!800002)))

(declare-fun lt!799988 () Unit!37770)

(assert (=> b!2148993 (= lt!799988 (forallContained!757 (toList!1099 lt!799983) lambda!80733 (tuple2!24443 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920) (apply!6007 lt!799983 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920)))))))

(declare-fun lt!799989 () Unit!37770)

(declare-fun lemmaInGenMapThenGetPairDefined!5 (ListLongMap!245 tuple3!3614 Hashable!2780) Unit!37770)

(assert (=> b!2148993 (= lt!799989 (lemmaInGenMapThenGetPairDefined!5 lt!799983 lt!799920 (hashF!4703 (cache!3161 thiss!29110))))))

(declare-fun lt!799996 () Unit!37770)

(assert (=> b!2148993 (= lt!799996 (lemmaInGenMapThenLongMapContainsHash!5 lt!799983 lt!799920 (hashF!4703 (cache!3161 thiss!29110))))))

(declare-fun lt!799998 () Unit!37770)

(assert (=> b!2148993 (= lt!799998 lt!799996)))

(declare-fun lt!800010 () (_ BitVec 64))

(assert (=> b!2148993 (= lt!800010 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920))))

(declare-fun lt!800007 () List!24684)

(assert (=> b!2148993 (= lt!800007 (apply!6007 lt!799983 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920)))))

(declare-fun lt!799994 () Unit!37770)

(assert (=> b!2148993 (= lt!799994 (lemmaGetValueImpliesTupleContained!6 lt!799983 lt!800010 lt!800007))))

(assert (=> b!2148993 (contains!4193 (toList!1099 lt!799983) (tuple2!24443 lt!800010 lt!800007))))

(declare-fun lt!800011 () Unit!37770)

(assert (=> b!2148993 (= lt!800011 lt!799994)))

(declare-fun lt!799995 () Unit!37770)

(assert (=> b!2148993 (= lt!799995 (forallContained!757 (toList!1099 lt!799983) lambda!80733 (tuple2!24443 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920) (apply!6007 lt!799983 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920)))))))

(declare-fun isDefined!4086 (Option!4975) Bool)

(assert (=> b!2148993 (isDefined!4086 (getPair!10 (apply!6007 lt!799983 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920)) lt!799920))))

(declare-fun lt!799993 () Unit!37770)

(assert (=> b!2148993 (= lt!799993 lt!799989)))

(declare-fun extractMap!73 (List!24685) ListMap!689)

(assert (=> b!2148993 (= (_2!14498 (get!7497 (getPair!10 (apply!6007 lt!799983 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920)) lt!799920))) (get!7496 (getValueByKey!41 (toList!1098 (extractMap!73 (toList!1099 lt!799983))) lt!799920)))))

(declare-fun lt!800000 () Unit!37770)

(assert (=> b!2148993 (= lt!800000 lt!800005)))

(declare-fun b!2148994 () Bool)

(assert (=> b!2148994 (= e!1374022 (dynLambda!11386 (defaultValue!2942 (cache!3161 thiss!29110)) lt!799920))))

(declare-fun b!2148995 () Bool)

(assert (=> b!2148995 false))

(declare-fun lt!799987 () Unit!37770)

(declare-fun lt!800001 () Unit!37770)

(assert (=> b!2148995 (= lt!799987 lt!800001)))

(declare-fun lt!799986 () List!24685)

(declare-fun lt!800006 () List!24684)

(assert (=> b!2148995 (contains!4193 lt!799986 (tuple2!24443 lt!800009 lt!800006))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!11 (List!24685 (_ BitVec 64) List!24684) Unit!37770)

(assert (=> b!2148995 (= lt!800001 (lemmaGetValueByKeyImpliesContainsTuple!11 lt!799986 lt!800009 lt!800006))))

(assert (=> b!2148995 (= lt!800006 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800009))))

(assert (=> b!2148995 (= lt!799986 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))

(declare-fun lt!799992 () Unit!37770)

(declare-fun lt!799984 () Unit!37770)

(assert (=> b!2148995 (= lt!799992 lt!799984)))

(declare-fun lt!800008 () List!24685)

(declare-datatypes ((Option!4976 0))(
  ( (None!4975) (Some!4975 (v!29174 List!24684)) )
))
(declare-fun isDefined!4087 (Option!4976) Bool)

(declare-fun getValueByKey!42 (List!24685 (_ BitVec 64)) Option!4976)

(assert (=> b!2148995 (isDefined!4087 (getValueByKey!42 lt!800008 lt!800009))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!27 (List!24685 (_ BitVec 64)) Unit!37770)

(assert (=> b!2148995 (= lt!799984 (lemmaContainsKeyImpliesGetValueByKeyDefined!27 lt!800008 lt!800009))))

(assert (=> b!2148995 (= lt!800008 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))

(declare-fun Unit!37773 () Unit!37770)

(assert (=> b!2148995 (= e!1374024 Unit!37773)))

(declare-fun d!645484 () Bool)

(assert (=> d!645484 e!1374023))

(declare-fun c!341018 () Bool)

(assert (=> d!645484 (= c!341018 (contains!4192 (cache!3161 thiss!29110) lt!799920))))

(assert (=> d!645484 (= lt!799997 e!1374022)))

(declare-fun c!341020 () Bool)

(assert (=> d!645484 (= c!341020 (not (contains!4192 (cache!3161 thiss!29110) lt!799920)))))

(declare-fun valid!2216 (MutableMap!2780) Bool)

(assert (=> d!645484 (valid!2216 (cache!3161 thiss!29110))))

(assert (=> d!645484 (= (apply!6005 (cache!3161 thiss!29110) lt!799920) lt!799997)))

(assert (= (and d!645484 c!341020) b!2148994))

(assert (= (and d!645484 (not c!341020)) b!2148993))

(assert (= (and b!2148993 c!341019) b!2148995))

(assert (= (and b!2148993 (not c!341019)) b!2148992))

(assert (= (and d!645484 c!341018) b!2148991))

(assert (= (and d!645484 (not c!341018)) b!2148990))

(declare-fun b_lambda!70769 () Bool)

(assert (=> (not b_lambda!70769) (not b!2148990)))

(declare-fun t!197224 () Bool)

(declare-fun tb!132291 () Bool)

(assert (=> (and b!2148955 (= (defaultValue!2942 (cache!3161 thiss!29110)) (defaultValue!2942 (cache!3161 thiss!29110))) t!197224) tb!132291))

(declare-fun result!159254 () Bool)

(assert (=> tb!132291 (= result!159254 true)))

(assert (=> b!2148990 t!197224))

(declare-fun b_and!173053 () Bool)

(assert (= b_and!173051 (and (=> t!197224 result!159254) b_and!173053)))

(declare-fun b_lambda!70771 () Bool)

(assert (=> (not b_lambda!70771) (not b!2148994)))

(assert (=> b!2148994 t!197224))

(declare-fun b_and!173055 () Bool)

(assert (= b_and!173053 (and (=> t!197224 result!159254) b_and!173055)))

(declare-fun m!2591872 () Bool)

(assert (=> b!2148994 m!2591872))

(assert (=> d!645484 m!2591860))

(declare-fun m!2591874 () Bool)

(assert (=> d!645484 m!2591874))

(assert (=> b!2148990 m!2591872))

(declare-fun m!2591876 () Bool)

(assert (=> b!2148993 m!2591876))

(declare-fun m!2591878 () Bool)

(assert (=> b!2148993 m!2591878))

(declare-fun m!2591880 () Bool)

(assert (=> b!2148993 m!2591880))

(declare-fun m!2591882 () Bool)

(assert (=> b!2148993 m!2591882))

(declare-fun m!2591884 () Bool)

(assert (=> b!2148993 m!2591884))

(declare-fun m!2591886 () Bool)

(assert (=> b!2148993 m!2591886))

(assert (=> b!2148993 m!2591876))

(assert (=> b!2148993 m!2591878))

(declare-fun m!2591888 () Bool)

(assert (=> b!2148993 m!2591888))

(assert (=> b!2148993 m!2591880))

(declare-fun m!2591890 () Bool)

(assert (=> b!2148993 m!2591890))

(assert (=> b!2148993 m!2591882))

(declare-fun m!2591892 () Bool)

(assert (=> b!2148993 m!2591892))

(declare-fun m!2591894 () Bool)

(assert (=> b!2148993 m!2591894))

(declare-fun m!2591896 () Bool)

(assert (=> b!2148993 m!2591896))

(assert (=> b!2148993 m!2591892))

(assert (=> b!2148993 m!2591876))

(declare-fun m!2591898 () Bool)

(assert (=> b!2148993 m!2591898))

(declare-fun m!2591900 () Bool)

(assert (=> b!2148993 m!2591900))

(assert (=> b!2148993 m!2591888))

(declare-fun m!2591902 () Bool)

(assert (=> b!2148993 m!2591902))

(declare-fun m!2591904 () Bool)

(assert (=> b!2148993 m!2591904))

(assert (=> b!2148993 m!2591890))

(declare-fun m!2591906 () Bool)

(assert (=> b!2148993 m!2591906))

(declare-fun m!2591908 () Bool)

(assert (=> b!2148993 m!2591908))

(declare-fun m!2591910 () Bool)

(assert (=> b!2148993 m!2591910))

(declare-fun m!2591912 () Bool)

(assert (=> b!2148993 m!2591912))

(assert (=> b!2148993 m!2591888))

(declare-fun m!2591914 () Bool)

(assert (=> b!2148993 m!2591914))

(declare-fun m!2591916 () Bool)

(assert (=> b!2148993 m!2591916))

(declare-fun m!2591918 () Bool)

(assert (=> b!2148993 m!2591918))

(declare-fun m!2591920 () Bool)

(assert (=> b!2148993 m!2591920))

(declare-fun m!2591922 () Bool)

(assert (=> b!2148991 m!2591922))

(declare-fun m!2591924 () Bool)

(assert (=> b!2148991 m!2591924))

(assert (=> b!2148991 m!2591924))

(declare-fun m!2591926 () Bool)

(assert (=> b!2148991 m!2591926))

(assert (=> b!2148995 m!2591896))

(declare-fun m!2591928 () Bool)

(assert (=> b!2148995 m!2591928))

(declare-fun m!2591930 () Bool)

(assert (=> b!2148995 m!2591930))

(assert (=> b!2148995 m!2591890))

(assert (=> b!2148995 m!2591930))

(declare-fun m!2591932 () Bool)

(assert (=> b!2148995 m!2591932))

(declare-fun m!2591934 () Bool)

(assert (=> b!2148995 m!2591934))

(declare-fun m!2591936 () Bool)

(assert (=> b!2148995 m!2591936))

(assert (=> b!2148949 d!645484))

(declare-fun d!645486 () Bool)

(declare-fun dynLambda!11387 (Int tuple2!24440) Bool)

(assert (=> d!645486 (dynLambda!11387 lambda!80726 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)))))

(declare-fun lt!800015 () Unit!37770)

(declare-fun choose!12701 (MutableMap!2780 tuple3!3614 Int) Unit!37770)

(assert (=> d!645486 (= lt!800015 (choose!12701 (cache!3161 thiss!29110) lt!799920 lambda!80726))))

(assert (=> d!645486 (valid!2216 (cache!3161 thiss!29110))))

(assert (=> d!645486 (= (lemmaForallPairsThenForLookup!1 (cache!3161 thiss!29110) lt!799920 lambda!80726) lt!800015)))

(declare-fun b_lambda!70773 () Bool)

(assert (=> (not b_lambda!70773) (not d!645486)))

(declare-fun bs!445520 () Bool)

(assert (= bs!445520 d!645486))

(assert (=> bs!445520 m!2591852))

(declare-fun m!2591938 () Bool)

(assert (=> bs!445520 m!2591938))

(declare-fun m!2591940 () Bool)

(assert (=> bs!445520 m!2591940))

(assert (=> bs!445520 m!2591874))

(assert (=> b!2148949 d!645486))

(declare-fun d!645488 () Bool)

(declare-fun res!926922 () Bool)

(declare-fun e!1374027 () Bool)

(assert (=> d!645488 (=> (not res!926922) (not e!1374027))))

(assert (=> d!645488 (= res!926922 ((_ is HashMap!2780) (cache!3161 thiss!29110)))))

(assert (=> d!645488 (= (inv!32395 thiss!29110) e!1374027)))

(declare-fun b!2148998 () Bool)

(assert (=> b!2148998 (= e!1374027 (validCacheMapFurthestNullable!138 (cache!3161 thiss!29110) (totalInput!3226 thiss!29110)))))

(assert (= (and d!645488 res!926922) b!2148998))

(assert (=> b!2148998 m!2591848))

(assert (=> start!208430 d!645488))

(declare-fun d!645490 () Bool)

(assert (=> d!645490 (= (inv!32394 localTotalInput!13) (isBalanced!2473 (c!341011 localTotalInput!13)))))

(declare-fun bs!445521 () Bool)

(assert (= bs!445521 d!645490))

(declare-fun m!2591942 () Bool)

(assert (=> bs!445521 m!2591942))

(assert (=> start!208430 d!645490))

(declare-fun bs!445522 () Bool)

(declare-fun b!2149004 () Bool)

(assert (= bs!445522 (and b!2149004 b!2148949)))

(declare-fun lambda!80736 () Int)

(assert (=> bs!445522 (= (= (totalInput!3226 thiss!29110) localTotalInput!13) (= lambda!80736 lambda!80726))))

(assert (=> b!2149004 true))

(declare-fun d!645492 () Bool)

(declare-fun res!926927 () Bool)

(declare-fun e!1374030 () Bool)

(assert (=> d!645492 (=> (not res!926927) (not e!1374030))))

(assert (=> d!645492 (= res!926927 (valid!2216 (cache!3161 thiss!29110)))))

(assert (=> d!645492 (= (validCacheMapFurthestNullable!138 (cache!3161 thiss!29110) (totalInput!3226 thiss!29110)) e!1374030)))

(declare-fun b!2149003 () Bool)

(declare-fun res!926928 () Bool)

(assert (=> b!2149003 (=> (not res!926928) (not e!1374030))))

(declare-fun invariantList!318 (List!24684) Bool)

(assert (=> b!2149003 (= res!926928 (invariantList!318 (toList!1098 (map!4945 (cache!3161 thiss!29110)))))))

(declare-fun forall!5017 (List!24684 Int) Bool)

(assert (=> b!2149004 (= e!1374030 (forall!5017 (toList!1098 (map!4945 (cache!3161 thiss!29110))) lambda!80736))))

(assert (= (and d!645492 res!926927) b!2149003))

(assert (= (and b!2149003 res!926928) b!2149004))

(assert (=> d!645492 m!2591874))

(assert (=> b!2149003 m!2591922))

(declare-fun m!2591945 () Bool)

(assert (=> b!2149003 m!2591945))

(assert (=> b!2149004 m!2591922))

(declare-fun m!2591947 () Bool)

(assert (=> b!2149004 m!2591947))

(assert (=> b!2148957 d!645492))

(declare-fun d!645494 () Bool)

(declare-fun c!341023 () Bool)

(assert (=> d!645494 (= c!341023 ((_ is Node!7977) (c!341011 (totalInput!3226 thiss!29110))))))

(declare-fun e!1374035 () Bool)

(assert (=> d!645494 (= (inv!32393 (c!341011 (totalInput!3226 thiss!29110))) e!1374035)))

(declare-fun b!2149011 () Bool)

(declare-fun inv!32396 (Conc!7977) Bool)

(assert (=> b!2149011 (= e!1374035 (inv!32396 (c!341011 (totalInput!3226 thiss!29110))))))

(declare-fun b!2149012 () Bool)

(declare-fun e!1374036 () Bool)

(assert (=> b!2149012 (= e!1374035 e!1374036)))

(declare-fun res!926931 () Bool)

(assert (=> b!2149012 (= res!926931 (not ((_ is Leaf!11665) (c!341011 (totalInput!3226 thiss!29110)))))))

(assert (=> b!2149012 (=> res!926931 e!1374036)))

(declare-fun b!2149013 () Bool)

(declare-fun inv!32397 (Conc!7977) Bool)

(assert (=> b!2149013 (= e!1374036 (inv!32397 (c!341011 (totalInput!3226 thiss!29110))))))

(assert (= (and d!645494 c!341023) b!2149011))

(assert (= (and d!645494 (not c!341023)) b!2149012))

(assert (= (and b!2149012 (not res!926931)) b!2149013))

(declare-fun m!2591949 () Bool)

(assert (=> b!2149011 m!2591949))

(declare-fun m!2591951 () Bool)

(assert (=> b!2149013 m!2591951))

(assert (=> b!2148948 d!645494))

(declare-fun bs!445523 () Bool)

(declare-fun b!2149044 () Bool)

(assert (= bs!445523 (and b!2149044 b!2148993)))

(declare-fun lambda!80739 () Int)

(assert (=> bs!445523 (= lambda!80739 lambda!80733)))

(declare-fun d!645496 () Bool)

(declare-fun lt!800056 () Bool)

(declare-fun contains!4195 (ListMap!689 tuple3!3614) Bool)

(assert (=> d!645496 (= lt!800056 (contains!4195 (map!4945 (cache!3161 thiss!29110)) lt!799920))))

(declare-fun e!1374052 () Bool)

(assert (=> d!645496 (= lt!800056 e!1374052)))

(declare-fun res!926939 () Bool)

(assert (=> d!645496 (=> (not res!926939) (not e!1374052))))

(declare-fun lt!800071 () (_ BitVec 64))

(declare-fun contains!4196 (MutLongMap!2866 (_ BitVec 64)) Bool)

(assert (=> d!645496 (= res!926939 (contains!4196 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800071))))

(declare-fun lt!800067 () Unit!37770)

(declare-fun e!1374055 () Unit!37770)

(assert (=> d!645496 (= lt!800067 e!1374055)))

(declare-fun c!341034 () Bool)

(assert (=> d!645496 (= c!341034 (contains!4195 (extractMap!73 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110)))))) lt!799920))))

(declare-fun lt!800075 () Unit!37770)

(declare-fun e!1374053 () Unit!37770)

(assert (=> d!645496 (= lt!800075 e!1374053)))

(declare-fun c!341033 () Bool)

(assert (=> d!645496 (= c!341033 (contains!4196 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800071))))

(assert (=> d!645496 (= lt!800071 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920))))

(assert (=> d!645496 (valid!2216 (cache!3161 thiss!29110))))

(assert (=> d!645496 (= (contains!4192 (cache!3161 thiss!29110) lt!799920) lt!800056)))

(declare-fun b!2149036 () Bool)

(declare-fun e!1374056 () Unit!37770)

(declare-fun Unit!37774 () Unit!37770)

(assert (=> b!2149036 (= e!1374056 Unit!37774)))

(declare-fun b!2149037 () Bool)

(assert (=> b!2149037 false))

(declare-fun lt!800060 () Unit!37770)

(declare-fun lt!800072 () Unit!37770)

(assert (=> b!2149037 (= lt!800060 lt!800072)))

(declare-fun lt!800065 () List!24685)

(declare-fun lt!800062 () List!24684)

(assert (=> b!2149037 (contains!4193 lt!800065 (tuple2!24443 lt!800071 lt!800062))))

(assert (=> b!2149037 (= lt!800072 (lemmaGetValueByKeyImpliesContainsTuple!11 lt!800065 lt!800071 lt!800062))))

(assert (=> b!2149037 (= lt!800062 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800071))))

(assert (=> b!2149037 (= lt!800065 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))

(declare-fun lt!800068 () Unit!37770)

(declare-fun lt!800066 () Unit!37770)

(assert (=> b!2149037 (= lt!800068 lt!800066)))

(declare-fun lt!800058 () List!24685)

(assert (=> b!2149037 (isDefined!4087 (getValueByKey!42 lt!800058 lt!800071))))

(assert (=> b!2149037 (= lt!800066 (lemmaContainsKeyImpliesGetValueByKeyDefined!27 lt!800058 lt!800071))))

(assert (=> b!2149037 (= lt!800058 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))

(declare-fun lt!800057 () Unit!37770)

(declare-fun lt!800059 () Unit!37770)

(assert (=> b!2149037 (= lt!800057 lt!800059)))

(declare-fun lt!800061 () List!24685)

(declare-fun containsKey!46 (List!24685 (_ BitVec 64)) Bool)

(assert (=> b!2149037 (containsKey!46 lt!800061 lt!800071)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!11 (List!24685 (_ BitVec 64)) Unit!37770)

(assert (=> b!2149037 (= lt!800059 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!11 lt!800061 lt!800071))))

(assert (=> b!2149037 (= lt!800061 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))

(declare-fun Unit!37775 () Unit!37770)

(assert (=> b!2149037 (= e!1374056 Unit!37775)))

(declare-fun b!2149038 () Bool)

(assert (=> b!2149038 (= e!1374052 (isDefined!4086 (getPair!10 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800071) lt!799920)))))

(declare-fun bm!128920 () Bool)

(declare-fun call!128925 () ListLongMap!245)

(assert (=> bm!128920 (= call!128925 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110)))))))

(declare-fun bm!128921 () Bool)

(declare-fun lt!800073 () ListLongMap!245)

(declare-fun call!128930 () Bool)

(declare-fun call!128929 () (_ BitVec 64))

(assert (=> bm!128921 (= call!128930 (contains!4194 (ite c!341034 lt!800073 call!128925) call!128929))))

(declare-fun bm!128922 () Bool)

(assert (=> bm!128922 (= call!128929 (hash!545 (hashF!4703 (cache!3161 thiss!29110)) lt!799920))))

(declare-fun bm!128923 () Bool)

(declare-fun call!128927 () Option!4975)

(declare-fun call!128928 () List!24684)

(assert (=> bm!128923 (= call!128927 (getPair!10 call!128928 lt!799920))))

(declare-fun b!2149039 () Bool)

(assert (=> b!2149039 false))

(declare-fun lt!800069 () Unit!37770)

(declare-fun lt!800070 () Unit!37770)

(assert (=> b!2149039 (= lt!800069 lt!800070)))

(declare-fun lt!800064 () ListLongMap!245)

(assert (=> b!2149039 (contains!4195 (extractMap!73 (toList!1099 lt!800064)) lt!799920)))

(declare-fun lemmaInLongMapThenInGenericMap!10 (ListLongMap!245 tuple3!3614 Hashable!2780) Unit!37770)

(assert (=> b!2149039 (= lt!800070 (lemmaInLongMapThenInGenericMap!10 lt!800064 lt!799920 (hashF!4703 (cache!3161 thiss!29110))))))

(assert (=> b!2149039 (= lt!800064 call!128925)))

(declare-fun e!1374057 () Unit!37770)

(declare-fun Unit!37776 () Unit!37770)

(assert (=> b!2149039 (= e!1374057 Unit!37776)))

(declare-fun b!2149040 () Bool)

(declare-fun e!1374054 () Bool)

(declare-fun call!128926 () Bool)

(assert (=> b!2149040 (= e!1374054 call!128926)))

(declare-fun b!2149041 () Bool)

(declare-fun Unit!37777 () Unit!37770)

(assert (=> b!2149041 (= e!1374057 Unit!37777)))

(declare-fun b!2149042 () Bool)

(declare-fun Unit!37778 () Unit!37770)

(assert (=> b!2149042 (= e!1374053 Unit!37778)))

(declare-fun b!2149043 () Bool)

(declare-fun lt!800063 () Unit!37770)

(assert (=> b!2149043 (= e!1374055 lt!800063)))

(assert (=> b!2149043 (= lt!800073 call!128925)))

(declare-fun lemmaInGenericMapThenInLongMap!10 (ListLongMap!245 tuple3!3614 Hashable!2780) Unit!37770)

(assert (=> b!2149043 (= lt!800063 (lemmaInGenericMapThenInLongMap!10 lt!800073 lt!799920 (hashF!4703 (cache!3161 thiss!29110))))))

(declare-fun res!926940 () Bool)

(assert (=> b!2149043 (= res!926940 call!128930)))

(declare-fun e!1374051 () Bool)

(assert (=> b!2149043 (=> (not res!926940) (not e!1374051))))

(assert (=> b!2149043 e!1374051))

(declare-fun bm!128924 () Bool)

(assert (=> bm!128924 (= call!128928 (apply!6007 (ite c!341034 lt!800073 call!128925) call!128929))))

(assert (=> b!2149044 (= e!1374053 (forallContained!757 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))) lambda!80739 (tuple2!24443 lt!800071 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800071))))))

(declare-fun c!341035 () Bool)

(assert (=> b!2149044 (= c!341035 (not (contains!4193 (toList!1099 (map!4946 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))) (tuple2!24443 lt!800071 (apply!6006 (v!29171 (underlying!5928 (cache!3161 thiss!29110))) lt!800071)))))))

(declare-fun lt!800074 () Unit!37770)

(assert (=> b!2149044 (= lt!800074 e!1374056)))

(declare-fun bm!128925 () Bool)

(assert (=> bm!128925 (= call!128926 (isDefined!4086 call!128927))))

(declare-fun b!2149045 () Bool)

(assert (=> b!2149045 (= e!1374055 e!1374057)))

(declare-fun res!926938 () Bool)

(assert (=> b!2149045 (= res!926938 call!128930)))

(assert (=> b!2149045 (=> (not res!926938) (not e!1374054))))

(declare-fun c!341032 () Bool)

(assert (=> b!2149045 (= c!341032 e!1374054)))

(declare-fun b!2149046 () Bool)

(assert (=> b!2149046 (= e!1374051 call!128926)))

(assert (= (and d!645496 c!341033) b!2149044))

(assert (= (and d!645496 (not c!341033)) b!2149042))

(assert (= (and b!2149044 c!341035) b!2149037))

(assert (= (and b!2149044 (not c!341035)) b!2149036))

(assert (= (and d!645496 c!341034) b!2149043))

(assert (= (and d!645496 (not c!341034)) b!2149045))

(assert (= (and b!2149043 res!926940) b!2149046))

(assert (= (and b!2149045 res!926938) b!2149040))

(assert (= (and b!2149045 c!341032) b!2149039))

(assert (= (and b!2149045 (not c!341032)) b!2149041))

(assert (= (or b!2149043 b!2149046 b!2149045 b!2149040) bm!128922))

(assert (= (or b!2149043 b!2149045 b!2149040 b!2149039) bm!128920))

(assert (= (or b!2149043 b!2149045) bm!128921))

(assert (= (or b!2149046 b!2149040) bm!128924))

(assert (= (or b!2149046 b!2149040) bm!128923))

(assert (= (or b!2149046 b!2149040) bm!128925))

(assert (= (and d!645496 res!926939) b!2149038))

(assert (=> d!645496 m!2591896))

(declare-fun m!2591953 () Bool)

(assert (=> d!645496 m!2591953))

(assert (=> d!645496 m!2591922))

(declare-fun m!2591955 () Bool)

(assert (=> d!645496 m!2591955))

(declare-fun m!2591957 () Bool)

(assert (=> d!645496 m!2591957))

(assert (=> d!645496 m!2591957))

(declare-fun m!2591959 () Bool)

(assert (=> d!645496 m!2591959))

(assert (=> d!645496 m!2591874))

(assert (=> d!645496 m!2591876))

(assert (=> d!645496 m!2591922))

(assert (=> b!2149044 m!2591896))

(declare-fun m!2591961 () Bool)

(assert (=> b!2149044 m!2591961))

(declare-fun m!2591963 () Bool)

(assert (=> b!2149044 m!2591963))

(declare-fun m!2591965 () Bool)

(assert (=> b!2149044 m!2591965))

(declare-fun m!2591967 () Bool)

(assert (=> b!2149043 m!2591967))

(assert (=> b!2149038 m!2591961))

(assert (=> b!2149038 m!2591961))

(declare-fun m!2591969 () Bool)

(assert (=> b!2149038 m!2591969))

(assert (=> b!2149038 m!2591969))

(declare-fun m!2591971 () Bool)

(assert (=> b!2149038 m!2591971))

(assert (=> bm!128922 m!2591876))

(declare-fun m!2591973 () Bool)

(assert (=> b!2149039 m!2591973))

(assert (=> b!2149039 m!2591973))

(declare-fun m!2591975 () Bool)

(assert (=> b!2149039 m!2591975))

(declare-fun m!2591977 () Bool)

(assert (=> b!2149039 m!2591977))

(assert (=> bm!128920 m!2591896))

(declare-fun m!2591979 () Bool)

(assert (=> b!2149037 m!2591979))

(assert (=> b!2149037 m!2591961))

(assert (=> b!2149037 m!2591979))

(declare-fun m!2591981 () Bool)

(assert (=> b!2149037 m!2591981))

(declare-fun m!2591983 () Bool)

(assert (=> b!2149037 m!2591983))

(declare-fun m!2591985 () Bool)

(assert (=> b!2149037 m!2591985))

(assert (=> b!2149037 m!2591896))

(declare-fun m!2591987 () Bool)

(assert (=> b!2149037 m!2591987))

(declare-fun m!2591989 () Bool)

(assert (=> b!2149037 m!2591989))

(declare-fun m!2591991 () Bool)

(assert (=> b!2149037 m!2591991))

(declare-fun m!2591993 () Bool)

(assert (=> bm!128925 m!2591993))

(declare-fun m!2591995 () Bool)

(assert (=> bm!128924 m!2591995))

(declare-fun m!2591997 () Bool)

(assert (=> bm!128923 m!2591997))

(declare-fun m!2591999 () Bool)

(assert (=> bm!128921 m!2591999))

(assert (=> b!2148953 d!645496))

(declare-fun bs!445524 () Bool)

(declare-fun b!2149048 () Bool)

(assert (= bs!445524 (and b!2149048 b!2148949)))

(declare-fun lambda!80740 () Int)

(assert (=> bs!445524 (= lambda!80740 lambda!80726)))

(declare-fun bs!445525 () Bool)

(assert (= bs!445525 (and b!2149048 b!2149004)))

(assert (=> bs!445525 (= (= localTotalInput!13 (totalInput!3226 thiss!29110)) (= lambda!80740 lambda!80736))))

(assert (=> b!2149048 true))

(declare-fun d!645498 () Bool)

(declare-fun res!926941 () Bool)

(declare-fun e!1374058 () Bool)

(assert (=> d!645498 (=> (not res!926941) (not e!1374058))))

(assert (=> d!645498 (= res!926941 (valid!2216 (cache!3161 thiss!29110)))))

(assert (=> d!645498 (= (validCacheMapFurthestNullable!138 (cache!3161 thiss!29110) localTotalInput!13) e!1374058)))

(declare-fun b!2149047 () Bool)

(declare-fun res!926942 () Bool)

(assert (=> b!2149047 (=> (not res!926942) (not e!1374058))))

(assert (=> b!2149047 (= res!926942 (invariantList!318 (toList!1098 (map!4945 (cache!3161 thiss!29110)))))))

(assert (=> b!2149048 (= e!1374058 (forall!5017 (toList!1098 (map!4945 (cache!3161 thiss!29110))) lambda!80740))))

(assert (= (and d!645498 res!926941) b!2149047))

(assert (= (and b!2149047 res!926942) b!2149048))

(assert (=> d!645498 m!2591874))

(assert (=> b!2149047 m!2591922))

(assert (=> b!2149047 m!2591945))

(assert (=> b!2149048 m!2591922))

(declare-fun m!2592001 () Bool)

(assert (=> b!2149048 m!2592001))

(assert (=> b!2148953 d!645498))

(declare-fun d!645500 () Bool)

(declare-fun lambda!80743 () Int)

(declare-fun exists!727 ((InoxSet Context!2822) Int) Bool)

(assert (=> d!645500 (= (nullableZipper!181 z!514) (exists!727 z!514 lambda!80743))))

(declare-fun bs!445526 () Bool)

(assert (= bs!445526 d!645500))

(declare-fun m!2592003 () Bool)

(assert (=> bs!445526 m!2592003))

(assert (=> b!2148956 d!645500))

(declare-fun d!645502 () Bool)

(declare-fun lambda!80746 () Int)

(declare-fun forall!5018 (List!24682 Int) Bool)

(assert (=> d!645502 (= (inv!32392 setElem!17032) (forall!5018 (exprs!1911 setElem!17032) lambda!80746))))

(declare-fun bs!445527 () Bool)

(assert (= bs!445527 d!645502))

(declare-fun m!2592005 () Bool)

(assert (=> bs!445527 m!2592005))

(assert (=> setNonEmpty!17032 d!645502))

(declare-fun d!645504 () Bool)

(declare-fun c!341038 () Bool)

(assert (=> d!645504 (= c!341038 ((_ is Node!7977) (c!341011 localTotalInput!13)))))

(declare-fun e!1374059 () Bool)

(assert (=> d!645504 (= (inv!32393 (c!341011 localTotalInput!13)) e!1374059)))

(declare-fun b!2149049 () Bool)

(assert (=> b!2149049 (= e!1374059 (inv!32396 (c!341011 localTotalInput!13)))))

(declare-fun b!2149050 () Bool)

(declare-fun e!1374060 () Bool)

(assert (=> b!2149050 (= e!1374059 e!1374060)))

(declare-fun res!926943 () Bool)

(assert (=> b!2149050 (= res!926943 (not ((_ is Leaf!11665) (c!341011 localTotalInput!13))))))

(assert (=> b!2149050 (=> res!926943 e!1374060)))

(declare-fun b!2149051 () Bool)

(assert (=> b!2149051 (= e!1374060 (inv!32397 (c!341011 localTotalInput!13)))))

(assert (= (and d!645504 c!341038) b!2149049))

(assert (= (and d!645504 (not c!341038)) b!2149050))

(assert (= (and b!2149050 (not res!926943)) b!2149051))

(declare-fun m!2592007 () Bool)

(assert (=> b!2149049 m!2592007))

(declare-fun m!2592009 () Bool)

(assert (=> b!2149051 m!2592009))

(assert (=> b!2148951 d!645504))

(declare-fun b!2149059 () Bool)

(declare-fun e!1374066 () Bool)

(declare-fun tp!667268 () Bool)

(assert (=> b!2149059 (= e!1374066 tp!667268)))

(declare-fun b!2149058 () Bool)

(declare-fun e!1374065 () Bool)

(declare-fun setRes!17035 () Bool)

(declare-fun tp!667267 () Bool)

(assert (=> b!2149058 (= e!1374065 (and setRes!17035 tp!667267))))

(declare-fun condSetEmpty!17035 () Bool)

(assert (=> b!2149058 (= condSetEmpty!17035 (= (_1!14497 (_1!14498 (h!30001 (zeroValue!3124 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))) ((as const (Array Context!2822 Bool)) false)))))

(assert (=> b!2148959 (= tp!667252 e!1374065)))

(declare-fun setIsEmpty!17035 () Bool)

(assert (=> setIsEmpty!17035 setRes!17035))

(declare-fun tp!667266 () Bool)

(declare-fun setNonEmpty!17035 () Bool)

(declare-fun setElem!17035 () Context!2822)

(assert (=> setNonEmpty!17035 (= setRes!17035 (and tp!667266 (inv!32392 setElem!17035) e!1374066))))

(declare-fun setRest!17035 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17035 (= (_1!14497 (_1!14498 (h!30001 (zeroValue!3124 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17035 true) setRest!17035))))

(assert (= (and b!2149058 condSetEmpty!17035) setIsEmpty!17035))

(assert (= (and b!2149058 (not condSetEmpty!17035)) setNonEmpty!17035))

(assert (= setNonEmpty!17035 b!2149059))

(assert (= (and b!2148959 ((_ is Cons!24600) (zeroValue!3124 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110)))))))) b!2149058))

(declare-fun m!2592011 () Bool)

(assert (=> setNonEmpty!17035 m!2592011))

(declare-fun b!2149061 () Bool)

(declare-fun e!1374068 () Bool)

(declare-fun tp!667271 () Bool)

(assert (=> b!2149061 (= e!1374068 tp!667271)))

(declare-fun b!2149060 () Bool)

(declare-fun e!1374067 () Bool)

(declare-fun setRes!17036 () Bool)

(declare-fun tp!667270 () Bool)

(assert (=> b!2149060 (= e!1374067 (and setRes!17036 tp!667270))))

(declare-fun condSetEmpty!17036 () Bool)

(assert (=> b!2149060 (= condSetEmpty!17036 (= (_1!14497 (_1!14498 (h!30001 (minValue!3124 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))) ((as const (Array Context!2822 Bool)) false)))))

(assert (=> b!2148959 (= tp!667258 e!1374067)))

(declare-fun setIsEmpty!17036 () Bool)

(assert (=> setIsEmpty!17036 setRes!17036))

(declare-fun tp!667269 () Bool)

(declare-fun setElem!17036 () Context!2822)

(declare-fun setNonEmpty!17036 () Bool)

(assert (=> setNonEmpty!17036 (= setRes!17036 (and tp!667269 (inv!32392 setElem!17036) e!1374068))))

(declare-fun setRest!17036 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17036 (= (_1!14497 (_1!14498 (h!30001 (minValue!3124 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17036 true) setRest!17036))))

(assert (= (and b!2149060 condSetEmpty!17036) setIsEmpty!17036))

(assert (= (and b!2149060 (not condSetEmpty!17036)) setNonEmpty!17036))

(assert (= setNonEmpty!17036 b!2149061))

(assert (= (and b!2148959 ((_ is Cons!24600) (minValue!3124 (v!29170 (underlying!5927 (v!29171 (underlying!5928 (cache!3161 thiss!29110)))))))) b!2149060))

(declare-fun m!2592013 () Bool)

(assert (=> setNonEmpty!17036 m!2592013))

(declare-fun b!2149063 () Bool)

(declare-fun e!1374070 () Bool)

(declare-fun tp!667274 () Bool)

(assert (=> b!2149063 (= e!1374070 tp!667274)))

(declare-fun b!2149062 () Bool)

(declare-fun e!1374069 () Bool)

(declare-fun setRes!17037 () Bool)

(declare-fun tp!667273 () Bool)

(assert (=> b!2149062 (= e!1374069 (and setRes!17037 tp!667273))))

(declare-fun condSetEmpty!17037 () Bool)

(assert (=> b!2149062 (= condSetEmpty!17037 (= (_1!14497 (_1!14498 (h!30001 mapDefault!13583))) ((as const (Array Context!2822 Bool)) false)))))

(assert (=> b!2148954 (= tp!667255 e!1374069)))

(declare-fun setIsEmpty!17037 () Bool)

(assert (=> setIsEmpty!17037 setRes!17037))

(declare-fun setNonEmpty!17037 () Bool)

(declare-fun setElem!17037 () Context!2822)

(declare-fun tp!667272 () Bool)

(assert (=> setNonEmpty!17037 (= setRes!17037 (and tp!667272 (inv!32392 setElem!17037) e!1374070))))

(declare-fun setRest!17037 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17037 (= (_1!14497 (_1!14498 (h!30001 mapDefault!13583))) ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17037 true) setRest!17037))))

(assert (= (and b!2149062 condSetEmpty!17037) setIsEmpty!17037))

(assert (= (and b!2149062 (not condSetEmpty!17037)) setNonEmpty!17037))

(assert (= setNonEmpty!17037 b!2149063))

(assert (= (and b!2148954 ((_ is Cons!24600) mapDefault!13583)) b!2149062))

(declare-fun m!2592015 () Bool)

(assert (=> setNonEmpty!17037 m!2592015))

(declare-fun tp!667282 () Bool)

(declare-fun b!2149072 () Bool)

(declare-fun tp!667281 () Bool)

(declare-fun e!1374076 () Bool)

(assert (=> b!2149072 (= e!1374076 (and (inv!32393 (left!18884 (c!341011 (totalInput!3226 thiss!29110)))) tp!667282 (inv!32393 (right!19214 (c!341011 (totalInput!3226 thiss!29110)))) tp!667281))))

(declare-fun b!2149074 () Bool)

(declare-fun e!1374075 () Bool)

(declare-fun tp!667283 () Bool)

(assert (=> b!2149074 (= e!1374075 tp!667283)))

(declare-fun b!2149073 () Bool)

(declare-fun inv!32398 (IArray!15959) Bool)

(assert (=> b!2149073 (= e!1374076 (and (inv!32398 (xs!10919 (c!341011 (totalInput!3226 thiss!29110)))) e!1374075))))

(assert (=> b!2148948 (= tp!667254 (and (inv!32393 (c!341011 (totalInput!3226 thiss!29110))) e!1374076))))

(assert (= (and b!2148948 ((_ is Node!7977) (c!341011 (totalInput!3226 thiss!29110)))) b!2149072))

(assert (= b!2149073 b!2149074))

(assert (= (and b!2148948 ((_ is Leaf!11665) (c!341011 (totalInput!3226 thiss!29110)))) b!2149073))

(declare-fun m!2592017 () Bool)

(assert (=> b!2149072 m!2592017))

(declare-fun m!2592019 () Bool)

(assert (=> b!2149072 m!2592019))

(declare-fun m!2592021 () Bool)

(assert (=> b!2149073 m!2592021))

(assert (=> b!2148948 m!2591850))

(declare-fun setRes!17042 () Bool)

(declare-fun tp!667304 () Bool)

(declare-fun setNonEmpty!17042 () Bool)

(declare-fun setElem!17042 () Context!2822)

(declare-fun e!1374087 () Bool)

(assert (=> setNonEmpty!17042 (= setRes!17042 (and tp!667304 (inv!32392 setElem!17042) e!1374087))))

(declare-fun mapDefault!13586 () List!24684)

(declare-fun setRest!17042 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17042 (= (_1!14497 (_1!14498 (h!30001 mapDefault!13586))) ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17042 true) setRest!17042))))

(declare-fun setIsEmpty!17042 () Bool)

(declare-fun setRes!17043 () Bool)

(assert (=> setIsEmpty!17042 setRes!17043))

(declare-fun b!2149085 () Bool)

(declare-fun e!1374088 () Bool)

(declare-fun tp!667300 () Bool)

(assert (=> b!2149085 (= e!1374088 (and setRes!17042 tp!667300))))

(declare-fun condSetEmpty!17042 () Bool)

(assert (=> b!2149085 (= condSetEmpty!17042 (= (_1!14497 (_1!14498 (h!30001 mapDefault!13586))) ((as const (Array Context!2822 Bool)) false)))))

(declare-fun setIsEmpty!17043 () Bool)

(assert (=> setIsEmpty!17043 setRes!17042))

(declare-fun e!1374085 () Bool)

(declare-fun setNonEmpty!17043 () Bool)

(declare-fun tp!667299 () Bool)

(declare-fun setElem!17043 () Context!2822)

(assert (=> setNonEmpty!17043 (= setRes!17043 (and tp!667299 (inv!32392 setElem!17043) e!1374085))))

(declare-fun mapValue!13586 () List!24684)

(declare-fun setRest!17043 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17043 (= (_1!14497 (_1!14498 (h!30001 mapValue!13586))) ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17043 true) setRest!17043))))

(declare-fun mapIsEmpty!13586 () Bool)

(declare-fun mapRes!13586 () Bool)

(assert (=> mapIsEmpty!13586 mapRes!13586))

(declare-fun b!2149086 () Bool)

(declare-fun tp!667298 () Bool)

(assert (=> b!2149086 (= e!1374087 tp!667298)))

(declare-fun b!2149087 () Bool)

(declare-fun e!1374086 () Bool)

(declare-fun tp!667303 () Bool)

(assert (=> b!2149087 (= e!1374086 (and setRes!17043 tp!667303))))

(declare-fun condSetEmpty!17043 () Bool)

(assert (=> b!2149087 (= condSetEmpty!17043 (= (_1!14497 (_1!14498 (h!30001 mapValue!13586))) ((as const (Array Context!2822 Bool)) false)))))

(declare-fun condMapEmpty!13586 () Bool)

(assert (=> mapNonEmpty!13583 (= condMapEmpty!13586 (= mapRest!13583 ((as const (Array (_ BitVec 32) List!24684)) mapDefault!13586)))))

(assert (=> mapNonEmpty!13583 (= tp!667251 (and e!1374088 mapRes!13586))))

(declare-fun b!2149088 () Bool)

(declare-fun tp!667302 () Bool)

(assert (=> b!2149088 (= e!1374085 tp!667302)))

(declare-fun mapNonEmpty!13586 () Bool)

(declare-fun tp!667301 () Bool)

(assert (=> mapNonEmpty!13586 (= mapRes!13586 (and tp!667301 e!1374086))))

(declare-fun mapRest!13586 () (Array (_ BitVec 32) List!24684))

(declare-fun mapKey!13586 () (_ BitVec 32))

(assert (=> mapNonEmpty!13586 (= mapRest!13583 (store mapRest!13586 mapKey!13586 mapValue!13586))))

(assert (= (and mapNonEmpty!13583 condMapEmpty!13586) mapIsEmpty!13586))

(assert (= (and mapNonEmpty!13583 (not condMapEmpty!13586)) mapNonEmpty!13586))

(assert (= (and b!2149087 condSetEmpty!17043) setIsEmpty!17042))

(assert (= (and b!2149087 (not condSetEmpty!17043)) setNonEmpty!17043))

(assert (= setNonEmpty!17043 b!2149088))

(assert (= (and mapNonEmpty!13586 ((_ is Cons!24600) mapValue!13586)) b!2149087))

(assert (= (and b!2149085 condSetEmpty!17042) setIsEmpty!17043))

(assert (= (and b!2149085 (not condSetEmpty!17042)) setNonEmpty!17042))

(assert (= setNonEmpty!17042 b!2149086))

(assert (= (and mapNonEmpty!13583 ((_ is Cons!24600) mapDefault!13586)) b!2149085))

(declare-fun m!2592023 () Bool)

(assert (=> setNonEmpty!17042 m!2592023))

(declare-fun m!2592025 () Bool)

(assert (=> setNonEmpty!17043 m!2592025))

(declare-fun m!2592027 () Bool)

(assert (=> mapNonEmpty!13586 m!2592027))

(declare-fun b!2149090 () Bool)

(declare-fun e!1374090 () Bool)

(declare-fun tp!667307 () Bool)

(assert (=> b!2149090 (= e!1374090 tp!667307)))

(declare-fun b!2149089 () Bool)

(declare-fun e!1374089 () Bool)

(declare-fun setRes!17044 () Bool)

(declare-fun tp!667306 () Bool)

(assert (=> b!2149089 (= e!1374089 (and setRes!17044 tp!667306))))

(declare-fun condSetEmpty!17044 () Bool)

(assert (=> b!2149089 (= condSetEmpty!17044 (= (_1!14497 (_1!14498 (h!30001 mapValue!13583))) ((as const (Array Context!2822 Bool)) false)))))

(assert (=> mapNonEmpty!13583 (= tp!667256 e!1374089)))

(declare-fun setIsEmpty!17044 () Bool)

(assert (=> setIsEmpty!17044 setRes!17044))

(declare-fun setNonEmpty!17044 () Bool)

(declare-fun setElem!17044 () Context!2822)

(declare-fun tp!667305 () Bool)

(assert (=> setNonEmpty!17044 (= setRes!17044 (and tp!667305 (inv!32392 setElem!17044) e!1374090))))

(declare-fun setRest!17044 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17044 (= (_1!14497 (_1!14498 (h!30001 mapValue!13583))) ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17044 true) setRest!17044))))

(assert (= (and b!2149089 condSetEmpty!17044) setIsEmpty!17044))

(assert (= (and b!2149089 (not condSetEmpty!17044)) setNonEmpty!17044))

(assert (= setNonEmpty!17044 b!2149090))

(assert (= (and mapNonEmpty!13583 ((_ is Cons!24600) mapValue!13583)) b!2149089))

(declare-fun m!2592029 () Bool)

(assert (=> setNonEmpty!17044 m!2592029))

(declare-fun condSetEmpty!17047 () Bool)

(assert (=> setNonEmpty!17032 (= condSetEmpty!17047 (= setRest!17032 ((as const (Array Context!2822 Bool)) false)))))

(declare-fun setRes!17047 () Bool)

(assert (=> setNonEmpty!17032 (= tp!667257 setRes!17047)))

(declare-fun setIsEmpty!17047 () Bool)

(assert (=> setIsEmpty!17047 setRes!17047))

(declare-fun e!1374093 () Bool)

(declare-fun setElem!17047 () Context!2822)

(declare-fun setNonEmpty!17047 () Bool)

(declare-fun tp!667313 () Bool)

(assert (=> setNonEmpty!17047 (= setRes!17047 (and tp!667313 (inv!32392 setElem!17047) e!1374093))))

(declare-fun setRest!17047 () (InoxSet Context!2822))

(assert (=> setNonEmpty!17047 (= setRest!17032 ((_ map or) (store ((as const (Array Context!2822 Bool)) false) setElem!17047 true) setRest!17047))))

(declare-fun b!2149095 () Bool)

(declare-fun tp!667312 () Bool)

(assert (=> b!2149095 (= e!1374093 tp!667312)))

(assert (= (and setNonEmpty!17032 condSetEmpty!17047) setIsEmpty!17047))

(assert (= (and setNonEmpty!17032 (not condSetEmpty!17047)) setNonEmpty!17047))

(assert (= setNonEmpty!17047 b!2149095))

(declare-fun m!2592031 () Bool)

(assert (=> setNonEmpty!17047 m!2592031))

(declare-fun b!2149100 () Bool)

(declare-fun e!1374096 () Bool)

(declare-fun tp!667318 () Bool)

(declare-fun tp!667319 () Bool)

(assert (=> b!2149100 (= e!1374096 (and tp!667318 tp!667319))))

(assert (=> b!2148952 (= tp!667259 e!1374096)))

(assert (= (and b!2148952 ((_ is Cons!24598) (exprs!1911 setElem!17032))) b!2149100))

(declare-fun tp!667321 () Bool)

(declare-fun e!1374098 () Bool)

(declare-fun tp!667320 () Bool)

(declare-fun b!2149101 () Bool)

(assert (=> b!2149101 (= e!1374098 (and (inv!32393 (left!18884 (c!341011 localTotalInput!13))) tp!667321 (inv!32393 (right!19214 (c!341011 localTotalInput!13))) tp!667320))))

(declare-fun b!2149103 () Bool)

(declare-fun e!1374097 () Bool)

(declare-fun tp!667322 () Bool)

(assert (=> b!2149103 (= e!1374097 tp!667322)))

(declare-fun b!2149102 () Bool)

(assert (=> b!2149102 (= e!1374098 (and (inv!32398 (xs!10919 (c!341011 localTotalInput!13))) e!1374097))))

(assert (=> b!2148951 (= tp!667249 (and (inv!32393 (c!341011 localTotalInput!13)) e!1374098))))

(assert (= (and b!2148951 ((_ is Node!7977) (c!341011 localTotalInput!13))) b!2149101))

(assert (= b!2149102 b!2149103))

(assert (= (and b!2148951 ((_ is Leaf!11665) (c!341011 localTotalInput!13))) b!2149102))

(declare-fun m!2592033 () Bool)

(assert (=> b!2149101 m!2592033))

(declare-fun m!2592035 () Bool)

(assert (=> b!2149101 m!2592035))

(declare-fun m!2592037 () Bool)

(assert (=> b!2149102 m!2592037))

(assert (=> b!2148951 m!2591840))

(declare-fun b_lambda!70775 () Bool)

(assert (= b_lambda!70773 (or b!2148949 b_lambda!70775)))

(declare-fun bs!445528 () Bool)

(declare-fun d!645506 () Bool)

(assert (= bs!445528 (and d!645506 b!2148949)))

(assert (=> bs!445528 (= (dynLambda!11387 lambda!80726 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920))) (validCacheMapFurthestNullableBody!17 (tuple2!24441 lt!799920 (apply!6005 (cache!3161 thiss!29110) lt!799920)) localTotalInput!13))))

(assert (=> bs!445528 m!2591854))

(assert (=> d!645486 d!645506))

(declare-fun b_lambda!70777 () Bool)

(assert (= b_lambda!70769 (or (and b!2148955 b_free!63455) b_lambda!70777)))

(declare-fun b_lambda!70779 () Bool)

(assert (= b_lambda!70771 (or (and b!2148955 b_free!63455) b_lambda!70779)))

(check-sat (not b!2148993) (not b!2149051) (not b!2149063) (not b!2149059) (not b!2149043) (not b!2149011) (not bm!128921) (not b!2148974) (not bm!128922) (not d!645498) (not b!2148995) (not b!2149100) (not bm!128924) (not b!2149095) (not d!645492) (not setNonEmpty!17044) (not b!2148991) (not b!2149037) b_and!173049 (not b!2149072) (not setNonEmpty!17035) (not b!2149074) (not b!2149058) (not b_lambda!70777) (not b_next!64159) (not b!2149061) (not setNonEmpty!17043) (not b!2149060) (not b!2149013) b_and!173055 (not b!2149103) (not setNonEmpty!17047) (not setNonEmpty!17036) (not b!2149047) (not bm!128923) (not b!2149102) (not d!645484) (not setNonEmpty!17037) (not b!2149038) (not b!2148948) (not d!645486) (not d!645502) (not b_next!64157) (not b!2149101) (not mapNonEmpty!13586) (not b!2149086) (not b!2149048) (not d!645500) (not d!645496) (not b!2149039) (not b!2149087) (not d!645490) (not d!645480) (not b!2148976) (not b!2148977) (not b!2149049) (not b!2149044) (not b_lambda!70779) (not b_lambda!70775) (not setNonEmpty!17042) (not b!2149090) (not b!2149004) (not bs!445528) (not b!2149062) (not b!2149085) (not b!2149088) (not b!2148998) (not bm!128925) (not b!2149073) (not bm!128920) (not b!2149003) (not b!2149089) (not b!2148951))
(check-sat b_and!173055 b_and!173049 (not b_next!64157) (not b_next!64159))
