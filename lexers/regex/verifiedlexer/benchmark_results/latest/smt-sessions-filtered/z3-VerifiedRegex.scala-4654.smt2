; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243018 () Bool)

(assert start!243018)

(declare-fun b!2487063 () Bool)

(declare-fun b_free!72569 () Bool)

(declare-fun b_next!73273 () Bool)

(assert (=> b!2487063 (= b_free!72569 (not b_next!73273))))

(declare-fun tp!796105 () Bool)

(declare-fun b_and!188857 () Bool)

(assert (=> b!2487063 (= tp!796105 b_and!188857)))

(declare-fun b!2487057 () Bool)

(declare-fun b_free!72571 () Bool)

(declare-fun b_next!73275 () Bool)

(assert (=> b!2487057 (= b_free!72571 (not b_next!73275))))

(declare-fun tp!796103 () Bool)

(declare-fun b_and!188859 () Bool)

(assert (=> b!2487057 (= tp!796103 b_and!188859)))

(declare-fun mapIsEmpty!15804 () Bool)

(declare-fun mapRes!15804 () Bool)

(assert (=> mapIsEmpty!15804 mapRes!15804))

(declare-fun b!2487056 () Bool)

(declare-fun res!1052807 () Bool)

(declare-fun e!1579226 () Bool)

(assert (=> b!2487056 (=> (not res!1052807) (not e!1579226))))

(declare-datatypes ((Hashable!3338 0))(
  ( (HashableExt!3337 (__x!19190 Int)) )
))
(declare-datatypes ((K!5655 0))(
  ( (K!5656 (val!8999 Int)) )
))
(declare-datatypes ((V!5857 0))(
  ( (V!5858 (val!9000 Int)) )
))
(declare-datatypes ((tuple2!29276 0))(
  ( (tuple2!29277 (_1!17180 K!5655) (_2!17180 V!5857)) )
))
(declare-datatypes ((List!29335 0))(
  ( (Nil!29235) (Cons!29235 (h!34654 tuple2!29276) (t!211028 List!29335)) )
))
(declare-datatypes ((array!12209 0))(
  ( (array!12210 (arr!5446 (Array (_ BitVec 32) List!29335)) (size!22865 (_ BitVec 32))) )
))
(declare-datatypes ((array!12211 0))(
  ( (array!12212 (arr!5447 (Array (_ BitVec 32) (_ BitVec 64))) (size!22866 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6856 0))(
  ( (LongMapFixedSize!6857 (defaultEntry!3802 Int) (mask!8631 (_ BitVec 32)) (extraKeys!3676 (_ BitVec 32)) (zeroValue!3686 List!29335) (minValue!3686 List!29335) (_size!6903 (_ BitVec 32)) (_keys!3725 array!12211) (_values!3708 array!12209) (_vacant!3489 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13529 0))(
  ( (Cell!13530 (v!31692 LongMapFixedSize!6856)) )
))
(declare-datatypes ((MutLongMap!3428 0))(
  ( (LongMap!3428 (underlying!7063 Cell!13529)) (MutLongMapExt!3427 (__x!19191 Int)) )
))
(declare-datatypes ((Cell!13531 0))(
  ( (Cell!13532 (v!31693 MutLongMap!3428)) )
))
(declare-datatypes ((MutableMap!3338 0))(
  ( (MutableMapExt!3337 (__x!19192 Int)) (HashMap!3338 (underlying!7064 Cell!13531) (hashF!5361 Hashable!3338) (_size!6904 (_ BitVec 32)) (defaultValue!3500 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3338)

(declare-fun key!2246 () K!5655)

(declare-fun contains!5247 (MutableMap!3338 K!5655) Bool)

(assert (=> b!2487056 (= res!1052807 (contains!5247 thiss!42540 key!2246))))

(declare-fun e!1579232 () Bool)

(declare-fun e!1579227 () Bool)

(assert (=> b!2487057 (= e!1579232 (and e!1579227 tp!796103))))

(declare-fun b!2487058 () Bool)

(declare-fun e!1579231 () Bool)

(declare-fun e!1579233 () Bool)

(assert (=> b!2487058 (= e!1579231 e!1579233)))

(declare-fun b!2487059 () Bool)

(declare-fun e!1579230 () Bool)

(assert (=> b!2487059 (= e!1579230 e!1579231)))

(declare-fun b!2487060 () Bool)

(declare-fun lt!893152 () MutLongMap!3428)

(get-info :version)

(assert (=> b!2487060 (= e!1579227 (and e!1579230 ((_ is LongMap!3428) lt!893152)))))

(assert (=> b!2487060 (= lt!893152 (v!31693 (underlying!7064 thiss!42540)))))

(declare-fun b!2487061 () Bool)

(declare-fun e!1579234 () Bool)

(declare-datatypes ((tuple2!29278 0))(
  ( (tuple2!29279 (_1!17181 Bool) (_2!17181 MutLongMap!3428)) )
))
(declare-fun lt!893149 () tuple2!29278)

(declare-fun valid!2638 (MutableMap!3338) Bool)

(assert (=> b!2487061 (= e!1579234 (valid!2638 (HashMap!3338 (Cell!13532 (_2!17181 lt!893149)) (hashF!5361 thiss!42540) (_size!6904 thiss!42540) (defaultValue!3500 thiss!42540))))))

(declare-fun b!2487062 () Bool)

(assert (=> b!2487062 (= e!1579226 (not e!1579234))))

(declare-fun res!1052805 () Bool)

(assert (=> b!2487062 (=> res!1052805 e!1579234)))

(assert (=> b!2487062 (= res!1052805 (_1!17181 lt!893149))))

(declare-fun lt!893156 () List!29335)

(declare-fun noDuplicateKeys!125 (List!29335) Bool)

(assert (=> b!2487062 (noDuplicateKeys!125 lt!893156)))

(declare-datatypes ((Unit!42918 0))(
  ( (Unit!42919) )
))
(declare-fun lt!893153 () Unit!42918)

(declare-fun lt!893154 () List!29335)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!105 (List!29335 K!5655) Unit!42918)

(assert (=> b!2487062 (= lt!893153 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!105 lt!893154 key!2246))))

(declare-fun lt!893150 () (_ BitVec 64))

(declare-fun update!248 (MutLongMap!3428 (_ BitVec 64) List!29335) tuple2!29278)

(assert (=> b!2487062 (= lt!893149 (update!248 (v!31693 (underlying!7064 thiss!42540)) lt!893150 lt!893156))))

(declare-fun removePairForKey!117 (List!29335 K!5655) List!29335)

(assert (=> b!2487062 (= lt!893156 (removePairForKey!117 lt!893154 key!2246))))

(declare-datatypes ((ListMap!1165 0))(
  ( (ListMap!1166 (toList!1687 List!29335)) )
))
(declare-fun lt!893151 () ListMap!1165)

(declare-fun map!6346 (MutableMap!3338) ListMap!1165)

(assert (=> b!2487062 (= lt!893151 (map!6346 thiss!42540))))

(declare-fun lt!893155 () Unit!42918)

(declare-fun lambda!94723 () Int)

(declare-datatypes ((tuple2!29280 0))(
  ( (tuple2!29281 (_1!17182 (_ BitVec 64)) (_2!17182 List!29335)) )
))
(declare-datatypes ((List!29336 0))(
  ( (Nil!29236) (Cons!29236 (h!34655 tuple2!29280) (t!211029 List!29336)) )
))
(declare-fun forallContained!906 (List!29336 Int tuple2!29280) Unit!42918)

(declare-datatypes ((ListLongMap!639 0))(
  ( (ListLongMap!640 (toList!1688 List!29336)) )
))
(declare-fun map!6347 (MutLongMap!3428) ListLongMap!639)

(assert (=> b!2487062 (= lt!893155 (forallContained!906 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) lambda!94723 (tuple2!29281 lt!893150 lt!893154)))))

(declare-fun apply!7001 (MutLongMap!3428 (_ BitVec 64)) List!29335)

(assert (=> b!2487062 (= lt!893154 (apply!7001 (v!31693 (underlying!7064 thiss!42540)) lt!893150))))

(declare-fun hash!789 (Hashable!3338 K!5655) (_ BitVec 64))

(assert (=> b!2487062 (= lt!893150 (hash!789 (hashF!5361 thiss!42540) key!2246))))

(declare-fun res!1052804 () Bool)

(assert (=> start!243018 (=> (not res!1052804) (not e!1579226))))

(assert (=> start!243018 (= res!1052804 ((_ is HashMap!3338) thiss!42540))))

(assert (=> start!243018 e!1579226))

(assert (=> start!243018 e!1579232))

(declare-fun tp_is_empty!12419 () Bool)

(assert (=> start!243018 tp_is_empty!12419))

(declare-fun tp!796102 () Bool)

(declare-fun tp!796104 () Bool)

(declare-fun e!1579229 () Bool)

(declare-fun array_inv!3913 (array!12211) Bool)

(declare-fun array_inv!3914 (array!12209) Bool)

(assert (=> b!2487063 (= e!1579233 (and tp!796105 tp!796102 tp!796104 (array_inv!3913 (_keys!3725 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) (array_inv!3914 (_values!3708 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) e!1579229))))

(declare-fun b!2487064 () Bool)

(declare-fun tp!796101 () Bool)

(assert (=> b!2487064 (= e!1579229 (and tp!796101 mapRes!15804))))

(declare-fun condMapEmpty!15804 () Bool)

(declare-fun mapDefault!15804 () List!29335)

(assert (=> b!2487064 (= condMapEmpty!15804 (= (arr!5446 (_values!3708 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29335)) mapDefault!15804)))))

(declare-fun b!2487065 () Bool)

(declare-fun res!1052806 () Bool)

(assert (=> b!2487065 (=> (not res!1052806) (not e!1579226))))

(assert (=> b!2487065 (= res!1052806 (valid!2638 thiss!42540))))

(declare-fun mapNonEmpty!15804 () Bool)

(declare-fun tp!796106 () Bool)

(declare-fun tp!796107 () Bool)

(assert (=> mapNonEmpty!15804 (= mapRes!15804 (and tp!796106 tp!796107))))

(declare-fun mapValue!15804 () List!29335)

(declare-fun mapKey!15804 () (_ BitVec 32))

(declare-fun mapRest!15804 () (Array (_ BitVec 32) List!29335))

(assert (=> mapNonEmpty!15804 (= (arr!5446 (_values!3708 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) (store mapRest!15804 mapKey!15804 mapValue!15804))))

(assert (= (and start!243018 res!1052804) b!2487065))

(assert (= (and b!2487065 res!1052806) b!2487056))

(assert (= (and b!2487056 res!1052807) b!2487062))

(assert (= (and b!2487062 (not res!1052805)) b!2487061))

(assert (= (and b!2487064 condMapEmpty!15804) mapIsEmpty!15804))

(assert (= (and b!2487064 (not condMapEmpty!15804)) mapNonEmpty!15804))

(assert (= b!2487063 b!2487064))

(assert (= b!2487058 b!2487063))

(assert (= b!2487059 b!2487058))

(assert (= (and b!2487060 ((_ is LongMap!3428) (v!31693 (underlying!7064 thiss!42540)))) b!2487059))

(assert (= b!2487057 b!2487060))

(assert (= (and start!243018 ((_ is HashMap!3338) thiss!42540)) b!2487057))

(declare-fun m!2855813 () Bool)

(assert (=> b!2487061 m!2855813))

(declare-fun m!2855815 () Bool)

(assert (=> b!2487056 m!2855815))

(declare-fun m!2855817 () Bool)

(assert (=> b!2487062 m!2855817))

(declare-fun m!2855819 () Bool)

(assert (=> b!2487062 m!2855819))

(declare-fun m!2855821 () Bool)

(assert (=> b!2487062 m!2855821))

(declare-fun m!2855823 () Bool)

(assert (=> b!2487062 m!2855823))

(declare-fun m!2855825 () Bool)

(assert (=> b!2487062 m!2855825))

(declare-fun m!2855827 () Bool)

(assert (=> b!2487062 m!2855827))

(declare-fun m!2855829 () Bool)

(assert (=> b!2487062 m!2855829))

(declare-fun m!2855831 () Bool)

(assert (=> b!2487062 m!2855831))

(declare-fun m!2855833 () Bool)

(assert (=> b!2487062 m!2855833))

(declare-fun m!2855835 () Bool)

(assert (=> b!2487065 m!2855835))

(declare-fun m!2855837 () Bool)

(assert (=> mapNonEmpty!15804 m!2855837))

(declare-fun m!2855839 () Bool)

(assert (=> b!2487063 m!2855839))

(declare-fun m!2855841 () Bool)

(assert (=> b!2487063 m!2855841))

(check-sat tp_is_empty!12419 (not b!2487065) (not b_next!73275) (not b!2487063) (not b!2487056) (not mapNonEmpty!15804) (not b!2487064) b_and!188859 (not b_next!73273) (not b!2487061) (not b!2487062) b_and!188857)
(check-sat b_and!188859 b_and!188857 (not b_next!73273) (not b_next!73275))
(get-model)

(declare-fun bs!468194 () Bool)

(declare-fun b!2487070 () Bool)

(assert (= bs!468194 (and b!2487070 b!2487062)))

(declare-fun lambda!94726 () Int)

(assert (=> bs!468194 (= lambda!94726 lambda!94723)))

(declare-fun d!713913 () Bool)

(declare-fun res!1052812 () Bool)

(declare-fun e!1579237 () Bool)

(assert (=> d!713913 (=> (not res!1052812) (not e!1579237))))

(declare-fun valid!2639 (MutLongMap!3428) Bool)

(assert (=> d!713913 (= res!1052812 (valid!2639 (v!31693 (underlying!7064 (HashMap!3338 (Cell!13532 (_2!17181 lt!893149)) (hashF!5361 thiss!42540) (_size!6904 thiss!42540) (defaultValue!3500 thiss!42540))))))))

(assert (=> d!713913 (= (valid!2638 (HashMap!3338 (Cell!13532 (_2!17181 lt!893149)) (hashF!5361 thiss!42540) (_size!6904 thiss!42540) (defaultValue!3500 thiss!42540))) e!1579237)))

(declare-fun res!1052813 () Bool)

(assert (=> b!2487070 (=> (not res!1052813) (not e!1579237))))

(declare-fun forall!6020 (List!29336 Int) Bool)

(assert (=> b!2487070 (= res!1052813 (forall!6020 (toList!1688 (map!6347 (v!31693 (underlying!7064 (HashMap!3338 (Cell!13532 (_2!17181 lt!893149)) (hashF!5361 thiss!42540) (_size!6904 thiss!42540) (defaultValue!3500 thiss!42540)))))) lambda!94726))))

(declare-fun b!2487071 () Bool)

(declare-fun allKeysSameHashInMap!202 (ListLongMap!639 Hashable!3338) Bool)

(assert (=> b!2487071 (= e!1579237 (allKeysSameHashInMap!202 (map!6347 (v!31693 (underlying!7064 (HashMap!3338 (Cell!13532 (_2!17181 lt!893149)) (hashF!5361 thiss!42540) (_size!6904 thiss!42540) (defaultValue!3500 thiss!42540))))) (hashF!5361 (HashMap!3338 (Cell!13532 (_2!17181 lt!893149)) (hashF!5361 thiss!42540) (_size!6904 thiss!42540) (defaultValue!3500 thiss!42540)))))))

(assert (= (and d!713913 res!1052812) b!2487070))

(assert (= (and b!2487070 res!1052813) b!2487071))

(declare-fun m!2855843 () Bool)

(assert (=> d!713913 m!2855843))

(declare-fun m!2855845 () Bool)

(assert (=> b!2487070 m!2855845))

(declare-fun m!2855847 () Bool)

(assert (=> b!2487070 m!2855847))

(assert (=> b!2487071 m!2855845))

(assert (=> b!2487071 m!2855845))

(declare-fun m!2855849 () Bool)

(assert (=> b!2487071 m!2855849))

(assert (=> b!2487061 d!713913))

(declare-fun bs!468195 () Bool)

(declare-fun b!2487072 () Bool)

(assert (= bs!468195 (and b!2487072 b!2487062)))

(declare-fun lambda!94727 () Int)

(assert (=> bs!468195 (= lambda!94727 lambda!94723)))

(declare-fun bs!468196 () Bool)

(assert (= bs!468196 (and b!2487072 b!2487070)))

(assert (=> bs!468196 (= lambda!94727 lambda!94726)))

(declare-fun d!713915 () Bool)

(declare-fun res!1052814 () Bool)

(declare-fun e!1579238 () Bool)

(assert (=> d!713915 (=> (not res!1052814) (not e!1579238))))

(assert (=> d!713915 (= res!1052814 (valid!2639 (v!31693 (underlying!7064 thiss!42540))))))

(assert (=> d!713915 (= (valid!2638 thiss!42540) e!1579238)))

(declare-fun res!1052815 () Bool)

(assert (=> b!2487072 (=> (not res!1052815) (not e!1579238))))

(assert (=> b!2487072 (= res!1052815 (forall!6020 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) lambda!94727))))

(declare-fun b!2487073 () Bool)

(assert (=> b!2487073 (= e!1579238 (allKeysSameHashInMap!202 (map!6347 (v!31693 (underlying!7064 thiss!42540))) (hashF!5361 thiss!42540)))))

(assert (= (and d!713915 res!1052814) b!2487072))

(assert (= (and b!2487072 res!1052815) b!2487073))

(declare-fun m!2855851 () Bool)

(assert (=> d!713915 m!2855851))

(assert (=> b!2487072 m!2855821))

(declare-fun m!2855853 () Bool)

(assert (=> b!2487072 m!2855853))

(assert (=> b!2487073 m!2855821))

(assert (=> b!2487073 m!2855821))

(declare-fun m!2855855 () Bool)

(assert (=> b!2487073 m!2855855))

(assert (=> b!2487065 d!713915))

(declare-fun d!713917 () Bool)

(assert (=> d!713917 (= (array_inv!3913 (_keys!3725 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) (bvsge (size!22866 (_keys!3725 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2487063 d!713917))

(declare-fun d!713919 () Bool)

(assert (=> d!713919 (= (array_inv!3914 (_values!3708 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) (bvsge (size!22865 (_values!3708 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2487063 d!713919))

(declare-fun bs!468197 () Bool)

(declare-fun b!2487100 () Bool)

(assert (= bs!468197 (and b!2487100 b!2487062)))

(declare-fun lambda!94730 () Int)

(assert (=> bs!468197 (= lambda!94730 lambda!94723)))

(declare-fun bs!468198 () Bool)

(assert (= bs!468198 (and b!2487100 b!2487070)))

(assert (=> bs!468198 (= lambda!94730 lambda!94726)))

(declare-fun bs!468199 () Bool)

(assert (= bs!468199 (and b!2487100 b!2487072)))

(assert (=> bs!468199 (= lambda!94730 lambda!94727)))

(declare-fun call!152540 () List!29335)

(declare-fun c!395269 () Bool)

(declare-fun call!152537 () (_ BitVec 64))

(declare-fun lt!893216 () ListLongMap!639)

(declare-fun call!152538 () ListLongMap!639)

(declare-fun bm!152530 () Bool)

(declare-fun apply!7002 (ListLongMap!639 (_ BitVec 64)) List!29335)

(assert (=> bm!152530 (= call!152540 (apply!7002 (ite c!395269 lt!893216 call!152538) call!152537))))

(declare-fun b!2487096 () Bool)

(declare-fun e!1579258 () Unit!42918)

(declare-fun Unit!42920 () Unit!42918)

(assert (=> b!2487096 (= e!1579258 Unit!42920)))

(declare-fun b!2487097 () Bool)

(declare-fun e!1579254 () Bool)

(declare-fun call!152536 () Bool)

(assert (=> b!2487097 (= e!1579254 call!152536)))

(declare-fun b!2487098 () Bool)

(declare-fun e!1579259 () Bool)

(assert (=> b!2487098 (= e!1579259 call!152536)))

(declare-fun b!2487099 () Bool)

(assert (=> b!2487099 false))

(declare-fun lt!893206 () Unit!42918)

(declare-fun lt!893215 () Unit!42918)

(assert (=> b!2487099 (= lt!893206 lt!893215)))

(declare-fun lt!893213 () List!29336)

(declare-fun lt!893199 () (_ BitVec 64))

(declare-fun lt!893204 () List!29335)

(declare-fun contains!5248 (List!29336 tuple2!29280) Bool)

(assert (=> b!2487099 (contains!5248 lt!893213 (tuple2!29281 lt!893199 lt!893204))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!93 (List!29336 (_ BitVec 64) List!29335) Unit!42918)

(assert (=> b!2487099 (= lt!893215 (lemmaGetValueByKeyImpliesContainsTuple!93 lt!893213 lt!893199 lt!893204))))

(assert (=> b!2487099 (= lt!893204 (apply!7001 (v!31693 (underlying!7064 thiss!42540)) lt!893199))))

(assert (=> b!2487099 (= lt!893213 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))))))

(declare-fun lt!893210 () Unit!42918)

(declare-fun lt!893197 () Unit!42918)

(assert (=> b!2487099 (= lt!893210 lt!893197)))

(declare-fun lt!893211 () List!29336)

(declare-datatypes ((Option!5792 0))(
  ( (None!5791) (Some!5791 (v!31698 List!29335)) )
))
(declare-fun isDefined!4614 (Option!5792) Bool)

(declare-fun getValueByKey!162 (List!29336 (_ BitVec 64)) Option!5792)

(assert (=> b!2487099 (isDefined!4614 (getValueByKey!162 lt!893211 lt!893199))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!119 (List!29336 (_ BitVec 64)) Unit!42918)

(assert (=> b!2487099 (= lt!893197 (lemmaContainsKeyImpliesGetValueByKeyDefined!119 lt!893211 lt!893199))))

(assert (=> b!2487099 (= lt!893211 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))))))

(declare-fun lt!893209 () Unit!42918)

(declare-fun lt!893202 () Unit!42918)

(assert (=> b!2487099 (= lt!893209 lt!893202)))

(declare-fun lt!893201 () List!29336)

(declare-fun containsKey!176 (List!29336 (_ BitVec 64)) Bool)

(assert (=> b!2487099 (containsKey!176 lt!893201 lt!893199)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!88 (List!29336 (_ BitVec 64)) Unit!42918)

(assert (=> b!2487099 (= lt!893202 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!88 lt!893201 lt!893199))))

(assert (=> b!2487099 (= lt!893201 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))))))

(declare-fun e!1579257 () Unit!42918)

(declare-fun Unit!42921 () Unit!42918)

(assert (=> b!2487099 (= e!1579257 Unit!42921)))

(declare-fun bm!152531 () Bool)

(declare-datatypes ((Option!5793 0))(
  ( (None!5792) (Some!5792 (v!31699 tuple2!29276)) )
))
(declare-fun call!152539 () Option!5793)

(declare-fun getPair!87 (List!29335 K!5655) Option!5793)

(assert (=> bm!152531 (= call!152539 (getPair!87 call!152540 key!2246))))

(declare-fun bm!152532 () Bool)

(assert (=> bm!152532 (= call!152537 (hash!789 (hashF!5361 thiss!42540) key!2246))))

(declare-fun d!713921 () Bool)

(declare-fun lt!893203 () Bool)

(declare-fun contains!5249 (ListMap!1165 K!5655) Bool)

(assert (=> d!713921 (= lt!893203 (contains!5249 (map!6346 thiss!42540) key!2246))))

(declare-fun e!1579256 () Bool)

(assert (=> d!713921 (= lt!893203 e!1579256)))

(declare-fun res!1052822 () Bool)

(assert (=> d!713921 (=> (not res!1052822) (not e!1579256))))

(declare-fun contains!5250 (MutLongMap!3428 (_ BitVec 64)) Bool)

(assert (=> d!713921 (= res!1052822 (contains!5250 (v!31693 (underlying!7064 thiss!42540)) lt!893199))))

(declare-fun lt!893212 () Unit!42918)

(declare-fun e!1579253 () Unit!42918)

(assert (=> d!713921 (= lt!893212 e!1579253)))

(declare-fun extractMap!197 (List!29336) ListMap!1165)

(assert (=> d!713921 (= c!395269 (contains!5249 (extractMap!197 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540))))) key!2246))))

(declare-fun lt!893205 () Unit!42918)

(assert (=> d!713921 (= lt!893205 e!1579258)))

(declare-fun c!395267 () Bool)

(assert (=> d!713921 (= c!395267 (contains!5250 (v!31693 (underlying!7064 thiss!42540)) lt!893199))))

(assert (=> d!713921 (= lt!893199 (hash!789 (hashF!5361 thiss!42540) key!2246))))

(assert (=> d!713921 (valid!2638 thiss!42540)))

(assert (=> d!713921 (= (contains!5247 thiss!42540 key!2246) lt!893203)))

(assert (=> b!2487100 (= e!1579258 (forallContained!906 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) lambda!94730 (tuple2!29281 lt!893199 (apply!7001 (v!31693 (underlying!7064 thiss!42540)) lt!893199))))))

(declare-fun c!395270 () Bool)

(assert (=> b!2487100 (= c!395270 (not (contains!5248 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) (tuple2!29281 lt!893199 (apply!7001 (v!31693 (underlying!7064 thiss!42540)) lt!893199)))))))

(declare-fun lt!893208 () Unit!42918)

(assert (=> b!2487100 (= lt!893208 e!1579257)))

(declare-fun b!2487101 () Bool)

(assert (=> b!2487101 false))

(declare-fun lt!893198 () Unit!42918)

(declare-fun lt!893214 () Unit!42918)

(assert (=> b!2487101 (= lt!893198 lt!893214)))

(declare-fun lt!893207 () ListLongMap!639)

(assert (=> b!2487101 (contains!5249 (extractMap!197 (toList!1688 lt!893207)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!87 (ListLongMap!639 K!5655 Hashable!3338) Unit!42918)

(assert (=> b!2487101 (= lt!893214 (lemmaInLongMapThenInGenericMap!87 lt!893207 key!2246 (hashF!5361 thiss!42540)))))

(assert (=> b!2487101 (= lt!893207 call!152538)))

(declare-fun e!1579255 () Unit!42918)

(declare-fun Unit!42922 () Unit!42918)

(assert (=> b!2487101 (= e!1579255 Unit!42922)))

(declare-fun b!2487102 () Bool)

(declare-fun Unit!42923 () Unit!42918)

(assert (=> b!2487102 (= e!1579257 Unit!42923)))

(declare-fun b!2487103 () Bool)

(assert (=> b!2487103 (= e!1579253 e!1579255)))

(declare-fun res!1052823 () Bool)

(declare-fun call!152535 () Bool)

(assert (=> b!2487103 (= res!1052823 call!152535)))

(assert (=> b!2487103 (=> (not res!1052823) (not e!1579254))))

(declare-fun c!395268 () Bool)

(assert (=> b!2487103 (= c!395268 e!1579254)))

(declare-fun bm!152533 () Bool)

(assert (=> bm!152533 (= call!152538 (map!6347 (v!31693 (underlying!7064 thiss!42540))))))

(declare-fun b!2487104 () Bool)

(declare-fun isDefined!4615 (Option!5793) Bool)

(assert (=> b!2487104 (= e!1579256 (isDefined!4615 (getPair!87 (apply!7001 (v!31693 (underlying!7064 thiss!42540)) lt!893199) key!2246)))))

(declare-fun b!2487105 () Bool)

(declare-fun Unit!42924 () Unit!42918)

(assert (=> b!2487105 (= e!1579255 Unit!42924)))

(declare-fun bm!152534 () Bool)

(assert (=> bm!152534 (= call!152536 (isDefined!4615 call!152539))))

(declare-fun b!2487106 () Bool)

(declare-fun lt!893200 () Unit!42918)

(assert (=> b!2487106 (= e!1579253 lt!893200)))

(assert (=> b!2487106 (= lt!893216 call!152538)))

(declare-fun lemmaInGenericMapThenInLongMap!87 (ListLongMap!639 K!5655 Hashable!3338) Unit!42918)

(assert (=> b!2487106 (= lt!893200 (lemmaInGenericMapThenInLongMap!87 lt!893216 key!2246 (hashF!5361 thiss!42540)))))

(declare-fun res!1052824 () Bool)

(assert (=> b!2487106 (= res!1052824 call!152535)))

(assert (=> b!2487106 (=> (not res!1052824) (not e!1579259))))

(assert (=> b!2487106 e!1579259))

(declare-fun bm!152535 () Bool)

(declare-fun contains!5251 (ListLongMap!639 (_ BitVec 64)) Bool)

(assert (=> bm!152535 (= call!152535 (contains!5251 (ite c!395269 lt!893216 call!152538) call!152537))))

(assert (= (and d!713921 c!395267) b!2487100))

(assert (= (and d!713921 (not c!395267)) b!2487096))

(assert (= (and b!2487100 c!395270) b!2487099))

(assert (= (and b!2487100 (not c!395270)) b!2487102))

(assert (= (and d!713921 c!395269) b!2487106))

(assert (= (and d!713921 (not c!395269)) b!2487103))

(assert (= (and b!2487106 res!1052824) b!2487098))

(assert (= (and b!2487103 res!1052823) b!2487097))

(assert (= (and b!2487103 c!395268) b!2487101))

(assert (= (and b!2487103 (not c!395268)) b!2487105))

(assert (= (or b!2487106 b!2487098 b!2487103 b!2487097) bm!152532))

(assert (= (or b!2487106 b!2487103 b!2487097 b!2487101) bm!152533))

(assert (= (or b!2487106 b!2487103) bm!152535))

(assert (= (or b!2487098 b!2487097) bm!152530))

(assert (= (or b!2487098 b!2487097) bm!152531))

(assert (= (or b!2487098 b!2487097) bm!152534))

(assert (= (and d!713921 res!1052822) b!2487104))

(assert (=> bm!152533 m!2855821))

(assert (=> bm!152532 m!2855827))

(declare-fun m!2855857 () Bool)

(assert (=> bm!152534 m!2855857))

(declare-fun m!2855859 () Bool)

(assert (=> bm!152535 m!2855859))

(declare-fun m!2855861 () Bool)

(assert (=> bm!152531 m!2855861))

(declare-fun m!2855863 () Bool)

(assert (=> b!2487104 m!2855863))

(assert (=> b!2487104 m!2855863))

(declare-fun m!2855865 () Bool)

(assert (=> b!2487104 m!2855865))

(assert (=> b!2487104 m!2855865))

(declare-fun m!2855867 () Bool)

(assert (=> b!2487104 m!2855867))

(declare-fun m!2855869 () Bool)

(assert (=> bm!152530 m!2855869))

(declare-fun m!2855871 () Bool)

(assert (=> b!2487106 m!2855871))

(declare-fun m!2855873 () Bool)

(assert (=> b!2487101 m!2855873))

(assert (=> b!2487101 m!2855873))

(declare-fun m!2855875 () Bool)

(assert (=> b!2487101 m!2855875))

(declare-fun m!2855877 () Bool)

(assert (=> b!2487101 m!2855877))

(assert (=> d!713921 m!2855823))

(declare-fun m!2855879 () Bool)

(assert (=> d!713921 m!2855879))

(declare-fun m!2855881 () Bool)

(assert (=> d!713921 m!2855881))

(declare-fun m!2855883 () Bool)

(assert (=> d!713921 m!2855883))

(assert (=> d!713921 m!2855835))

(assert (=> d!713921 m!2855823))

(assert (=> d!713921 m!2855881))

(assert (=> d!713921 m!2855827))

(declare-fun m!2855885 () Bool)

(assert (=> d!713921 m!2855885))

(assert (=> d!713921 m!2855821))

(assert (=> b!2487100 m!2855821))

(assert (=> b!2487100 m!2855863))

(declare-fun m!2855887 () Bool)

(assert (=> b!2487100 m!2855887))

(declare-fun m!2855889 () Bool)

(assert (=> b!2487100 m!2855889))

(declare-fun m!2855891 () Bool)

(assert (=> b!2487099 m!2855891))

(declare-fun m!2855893 () Bool)

(assert (=> b!2487099 m!2855893))

(assert (=> b!2487099 m!2855821))

(assert (=> b!2487099 m!2855893))

(declare-fun m!2855895 () Bool)

(assert (=> b!2487099 m!2855895))

(declare-fun m!2855897 () Bool)

(assert (=> b!2487099 m!2855897))

(assert (=> b!2487099 m!2855863))

(declare-fun m!2855899 () Bool)

(assert (=> b!2487099 m!2855899))

(declare-fun m!2855901 () Bool)

(assert (=> b!2487099 m!2855901))

(declare-fun m!2855903 () Bool)

(assert (=> b!2487099 m!2855903))

(assert (=> b!2487056 d!713921))

(declare-fun d!713923 () Bool)

(assert (=> d!713923 (noDuplicateKeys!125 (removePairForKey!117 lt!893154 key!2246))))

(declare-fun lt!893219 () Unit!42918)

(declare-fun choose!14719 (List!29335 K!5655) Unit!42918)

(assert (=> d!713923 (= lt!893219 (choose!14719 lt!893154 key!2246))))

(assert (=> d!713923 (noDuplicateKeys!125 lt!893154)))

(assert (=> d!713923 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!105 lt!893154 key!2246) lt!893219)))

(declare-fun bs!468200 () Bool)

(assert (= bs!468200 d!713923))

(assert (=> bs!468200 m!2855817))

(assert (=> bs!468200 m!2855817))

(declare-fun m!2855905 () Bool)

(assert (=> bs!468200 m!2855905))

(declare-fun m!2855907 () Bool)

(assert (=> bs!468200 m!2855907))

(declare-fun m!2855909 () Bool)

(assert (=> bs!468200 m!2855909))

(assert (=> b!2487062 d!713923))

(declare-fun d!713925 () Bool)

(declare-fun hash!790 (Hashable!3338 K!5655) (_ BitVec 64))

(assert (=> d!713925 (= (hash!789 (hashF!5361 thiss!42540) key!2246) (hash!790 (hashF!5361 thiss!42540) key!2246))))

(declare-fun bs!468201 () Bool)

(assert (= bs!468201 d!713925))

(declare-fun m!2855911 () Bool)

(assert (=> bs!468201 m!2855911))

(assert (=> b!2487062 d!713925))

(declare-fun d!713927 () Bool)

(declare-fun map!6348 (LongMapFixedSize!6856) ListLongMap!639)

(assert (=> d!713927 (= (map!6347 (v!31693 (underlying!7064 thiss!42540))) (map!6348 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540))))))))

(declare-fun bs!468202 () Bool)

(assert (= bs!468202 d!713927))

(declare-fun m!2855913 () Bool)

(assert (=> bs!468202 m!2855913))

(assert (=> b!2487062 d!713927))

(declare-fun b!2487117 () Bool)

(declare-fun e!1579264 () List!29335)

(assert (=> b!2487117 (= e!1579264 (Cons!29235 (h!34654 lt!893154) (removePairForKey!117 (t!211028 lt!893154) key!2246)))))

(declare-fun b!2487116 () Bool)

(declare-fun e!1579265 () List!29335)

(assert (=> b!2487116 (= e!1579265 e!1579264)))

(declare-fun c!395276 () Bool)

(assert (=> b!2487116 (= c!395276 ((_ is Cons!29235) lt!893154))))

(declare-fun b!2487115 () Bool)

(assert (=> b!2487115 (= e!1579265 (t!211028 lt!893154))))

(declare-fun d!713929 () Bool)

(declare-fun lt!893222 () List!29335)

(declare-fun containsKey!177 (List!29335 K!5655) Bool)

(assert (=> d!713929 (not (containsKey!177 lt!893222 key!2246))))

(assert (=> d!713929 (= lt!893222 e!1579265)))

(declare-fun c!395275 () Bool)

(assert (=> d!713929 (= c!395275 (and ((_ is Cons!29235) lt!893154) (= (_1!17180 (h!34654 lt!893154)) key!2246)))))

(assert (=> d!713929 (noDuplicateKeys!125 lt!893154)))

(assert (=> d!713929 (= (removePairForKey!117 lt!893154 key!2246) lt!893222)))

(declare-fun b!2487118 () Bool)

(assert (=> b!2487118 (= e!1579264 Nil!29235)))

(assert (= (and d!713929 c!395275) b!2487115))

(assert (= (and d!713929 (not c!395275)) b!2487116))

(assert (= (and b!2487116 c!395276) b!2487117))

(assert (= (and b!2487116 (not c!395276)) b!2487118))

(declare-fun m!2855915 () Bool)

(assert (=> b!2487117 m!2855915))

(declare-fun m!2855917 () Bool)

(assert (=> d!713929 m!2855917))

(assert (=> d!713929 m!2855909))

(assert (=> b!2487062 d!713929))

(declare-fun d!713931 () Bool)

(declare-fun dynLambda!12510 (Int tuple2!29280) Bool)

(assert (=> d!713931 (dynLambda!12510 lambda!94723 (tuple2!29281 lt!893150 lt!893154))))

(declare-fun lt!893225 () Unit!42918)

(declare-fun choose!14720 (List!29336 Int tuple2!29280) Unit!42918)

(assert (=> d!713931 (= lt!893225 (choose!14720 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) lambda!94723 (tuple2!29281 lt!893150 lt!893154)))))

(declare-fun e!1579268 () Bool)

(assert (=> d!713931 e!1579268))

(declare-fun res!1052827 () Bool)

(assert (=> d!713931 (=> (not res!1052827) (not e!1579268))))

(assert (=> d!713931 (= res!1052827 (forall!6020 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) lambda!94723))))

(assert (=> d!713931 (= (forallContained!906 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) lambda!94723 (tuple2!29281 lt!893150 lt!893154)) lt!893225)))

(declare-fun b!2487121 () Bool)

(assert (=> b!2487121 (= e!1579268 (contains!5248 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) (tuple2!29281 lt!893150 lt!893154)))))

(assert (= (and d!713931 res!1052827) b!2487121))

(declare-fun b_lambda!76403 () Bool)

(assert (=> (not b_lambda!76403) (not d!713931)))

(declare-fun m!2855919 () Bool)

(assert (=> d!713931 m!2855919))

(declare-fun m!2855921 () Bool)

(assert (=> d!713931 m!2855921))

(declare-fun m!2855923 () Bool)

(assert (=> d!713931 m!2855923))

(declare-fun m!2855925 () Bool)

(assert (=> b!2487121 m!2855925))

(assert (=> b!2487062 d!713931))

(declare-fun d!713933 () Bool)

(declare-fun e!1579280 () Bool)

(assert (=> d!713933 e!1579280))

(declare-fun res!1052836 () Bool)

(assert (=> d!713933 (=> (not res!1052836) (not e!1579280))))

(declare-fun lt!893234 () tuple2!29278)

(assert (=> d!713933 (= res!1052836 ((_ is LongMap!3428) (_2!17181 lt!893234)))))

(declare-fun e!1579282 () tuple2!29278)

(assert (=> d!713933 (= lt!893234 e!1579282)))

(declare-fun c!395285 () Bool)

(declare-fun lt!893237 () tuple2!29278)

(assert (=> d!713933 (= c!395285 (_1!17181 lt!893237))))

(declare-fun e!1579279 () tuple2!29278)

(assert (=> d!713933 (= lt!893237 e!1579279)))

(declare-fun c!395283 () Bool)

(declare-fun imbalanced!31 (MutLongMap!3428) Bool)

(assert (=> d!713933 (= c!395283 (imbalanced!31 (v!31693 (underlying!7064 thiss!42540))))))

(assert (=> d!713933 (valid!2639 (v!31693 (underlying!7064 thiss!42540)))))

(assert (=> d!713933 (= (update!248 (v!31693 (underlying!7064 thiss!42540)) lt!893150 lt!893156) lt!893234)))

(declare-fun b!2487140 () Bool)

(declare-fun e!1579281 () Bool)

(declare-fun call!152546 () ListLongMap!639)

(declare-fun call!152545 () ListLongMap!639)

(assert (=> b!2487140 (= e!1579281 (= call!152546 call!152545))))

(declare-fun b!2487141 () Bool)

(declare-fun lt!893236 () tuple2!29278)

(assert (=> b!2487141 (= e!1579279 (tuple2!29279 (_1!17181 lt!893236) (_2!17181 lt!893236)))))

(declare-fun repack!35 (MutLongMap!3428) tuple2!29278)

(assert (=> b!2487141 (= lt!893236 (repack!35 (v!31693 (underlying!7064 thiss!42540))))))

(declare-fun e!1579283 () Bool)

(declare-fun b!2487142 () Bool)

(declare-fun +!116 (ListLongMap!639 tuple2!29280) ListLongMap!639)

(assert (=> b!2487142 (= e!1579283 (= call!152546 (+!116 call!152545 (tuple2!29281 lt!893150 lt!893156))))))

(declare-fun b!2487143 () Bool)

(declare-fun res!1052834 () Bool)

(assert (=> b!2487143 (=> (not res!1052834) (not e!1579280))))

(assert (=> b!2487143 (= res!1052834 (valid!2639 (_2!17181 lt!893234)))))

(declare-fun b!2487144 () Bool)

(declare-datatypes ((tuple2!29282 0))(
  ( (tuple2!29283 (_1!17183 Bool) (_2!17183 LongMapFixedSize!6856)) )
))
(declare-fun lt!893235 () tuple2!29282)

(assert (=> b!2487144 (= e!1579282 (tuple2!29279 (_1!17183 lt!893235) (LongMap!3428 (Cell!13530 (_2!17183 lt!893235)))))))

(declare-fun update!249 (LongMapFixedSize!6856 (_ BitVec 64) List!29335) tuple2!29282)

(assert (=> b!2487144 (= lt!893235 (update!249 (v!31692 (underlying!7063 (_2!17181 lt!893237))) lt!893150 lt!893156))))

(declare-fun bm!152540 () Bool)

(assert (=> bm!152540 (= call!152546 (map!6347 (_2!17181 lt!893234)))))

(declare-fun b!2487145 () Bool)

(assert (=> b!2487145 (= e!1579281 e!1579283)))

(declare-fun res!1052835 () Bool)

(assert (=> b!2487145 (= res!1052835 (contains!5251 call!152546 lt!893150))))

(assert (=> b!2487145 (=> (not res!1052835) (not e!1579283))))

(declare-fun bm!152541 () Bool)

(assert (=> bm!152541 (= call!152545 (map!6347 (v!31693 (underlying!7064 thiss!42540))))))

(declare-fun b!2487146 () Bool)

(assert (=> b!2487146 (= e!1579280 e!1579281)))

(declare-fun c!395284 () Bool)

(assert (=> b!2487146 (= c!395284 (_1!17181 lt!893234))))

(declare-fun b!2487147 () Bool)

(assert (=> b!2487147 (= e!1579279 (tuple2!29279 true (v!31693 (underlying!7064 thiss!42540))))))

(declare-fun b!2487148 () Bool)

(assert (=> b!2487148 (= e!1579282 (tuple2!29279 false (_2!17181 lt!893237)))))

(assert (= (and d!713933 c!395283) b!2487141))

(assert (= (and d!713933 (not c!395283)) b!2487147))

(assert (= (and d!713933 c!395285) b!2487144))

(assert (= (and d!713933 (not c!395285)) b!2487148))

(assert (= (and d!713933 res!1052836) b!2487143))

(assert (= (and b!2487143 res!1052834) b!2487146))

(assert (= (and b!2487146 c!395284) b!2487145))

(assert (= (and b!2487146 (not c!395284)) b!2487140))

(assert (= (and b!2487145 res!1052835) b!2487142))

(assert (= (or b!2487145 b!2487142 b!2487140) bm!152540))

(assert (= (or b!2487142 b!2487140) bm!152541))

(declare-fun m!2855927 () Bool)

(assert (=> b!2487143 m!2855927))

(declare-fun m!2855929 () Bool)

(assert (=> b!2487145 m!2855929))

(declare-fun m!2855931 () Bool)

(assert (=> b!2487142 m!2855931))

(declare-fun m!2855933 () Bool)

(assert (=> bm!152540 m!2855933))

(declare-fun m!2855935 () Bool)

(assert (=> b!2487144 m!2855935))

(declare-fun m!2855937 () Bool)

(assert (=> b!2487141 m!2855937))

(assert (=> bm!152541 m!2855821))

(declare-fun m!2855939 () Bool)

(assert (=> d!713933 m!2855939))

(assert (=> d!713933 m!2855851))

(assert (=> b!2487062 d!713933))

(declare-fun d!713935 () Bool)

(declare-fun res!1052841 () Bool)

(declare-fun e!1579288 () Bool)

(assert (=> d!713935 (=> res!1052841 e!1579288)))

(assert (=> d!713935 (= res!1052841 (not ((_ is Cons!29235) lt!893156)))))

(assert (=> d!713935 (= (noDuplicateKeys!125 lt!893156) e!1579288)))

(declare-fun b!2487153 () Bool)

(declare-fun e!1579289 () Bool)

(assert (=> b!2487153 (= e!1579288 e!1579289)))

(declare-fun res!1052842 () Bool)

(assert (=> b!2487153 (=> (not res!1052842) (not e!1579289))))

(assert (=> b!2487153 (= res!1052842 (not (containsKey!177 (t!211028 lt!893156) (_1!17180 (h!34654 lt!893156)))))))

(declare-fun b!2487154 () Bool)

(assert (=> b!2487154 (= e!1579289 (noDuplicateKeys!125 (t!211028 lt!893156)))))

(assert (= (and d!713935 (not res!1052841)) b!2487153))

(assert (= (and b!2487153 res!1052842) b!2487154))

(declare-fun m!2855941 () Bool)

(assert (=> b!2487153 m!2855941))

(declare-fun m!2855943 () Bool)

(assert (=> b!2487154 m!2855943))

(assert (=> b!2487062 d!713935))

(declare-fun d!713937 () Bool)

(declare-fun e!1579292 () Bool)

(assert (=> d!713937 e!1579292))

(declare-fun c!395288 () Bool)

(assert (=> d!713937 (= c!395288 (contains!5250 (v!31693 (underlying!7064 thiss!42540)) lt!893150))))

(declare-fun lt!893240 () List!29335)

(declare-fun apply!7003 (LongMapFixedSize!6856 (_ BitVec 64)) List!29335)

(assert (=> d!713937 (= lt!893240 (apply!7003 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))) lt!893150))))

(assert (=> d!713937 (valid!2639 (v!31693 (underlying!7064 thiss!42540)))))

(assert (=> d!713937 (= (apply!7001 (v!31693 (underlying!7064 thiss!42540)) lt!893150) lt!893240)))

(declare-fun b!2487159 () Bool)

(declare-fun get!9026 (Option!5792) List!29335)

(assert (=> b!2487159 (= e!1579292 (= lt!893240 (get!9026 (getValueByKey!162 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540)))) lt!893150))))))

(declare-fun b!2487160 () Bool)

(declare-fun dynLambda!12511 (Int (_ BitVec 64)) List!29335)

(assert (=> b!2487160 (= e!1579292 (= lt!893240 (dynLambda!12511 (defaultEntry!3802 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540))))) lt!893150)))))

(assert (=> b!2487160 ((_ is LongMap!3428) (v!31693 (underlying!7064 thiss!42540)))))

(assert (= (and d!713937 c!395288) b!2487159))

(assert (= (and d!713937 (not c!395288)) b!2487160))

(declare-fun b_lambda!76405 () Bool)

(assert (=> (not b_lambda!76405) (not b!2487160)))

(declare-fun t!211031 () Bool)

(declare-fun tb!140411 () Bool)

(assert (=> (and b!2487063 (= (defaultEntry!3802 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540))))) (defaultEntry!3802 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540)))))) t!211031) tb!140411))

(assert (=> b!2487160 t!211031))

(declare-fun result!173428 () Bool)

(declare-fun b_and!188861 () Bool)

(assert (= b_and!188857 (and (=> t!211031 result!173428) b_and!188861)))

(declare-fun m!2855945 () Bool)

(assert (=> d!713937 m!2855945))

(declare-fun m!2855947 () Bool)

(assert (=> d!713937 m!2855947))

(assert (=> d!713937 m!2855851))

(assert (=> b!2487159 m!2855821))

(declare-fun m!2855949 () Bool)

(assert (=> b!2487159 m!2855949))

(assert (=> b!2487159 m!2855949))

(declare-fun m!2855951 () Bool)

(assert (=> b!2487159 m!2855951))

(declare-fun m!2855953 () Bool)

(assert (=> b!2487160 m!2855953))

(assert (=> b!2487062 d!713937))

(declare-fun d!713939 () Bool)

(declare-fun lt!893243 () ListMap!1165)

(declare-fun invariantList!426 (List!29335) Bool)

(assert (=> d!713939 (invariantList!426 (toList!1687 lt!893243))))

(assert (=> d!713939 (= lt!893243 (extractMap!197 (toList!1688 (map!6347 (v!31693 (underlying!7064 thiss!42540))))))))

(assert (=> d!713939 (valid!2638 thiss!42540)))

(assert (=> d!713939 (= (map!6346 thiss!42540) lt!893243)))

(declare-fun bs!468203 () Bool)

(assert (= bs!468203 d!713939))

(declare-fun m!2855955 () Bool)

(assert (=> bs!468203 m!2855955))

(assert (=> bs!468203 m!2855821))

(assert (=> bs!468203 m!2855881))

(assert (=> bs!468203 m!2855835))

(assert (=> b!2487062 d!713939))

(declare-fun mapNonEmpty!15807 () Bool)

(declare-fun mapRes!15807 () Bool)

(declare-fun tp!796114 () Bool)

(declare-fun e!1579297 () Bool)

(assert (=> mapNonEmpty!15807 (= mapRes!15807 (and tp!796114 e!1579297))))

(declare-fun mapRest!15807 () (Array (_ BitVec 32) List!29335))

(declare-fun mapValue!15807 () List!29335)

(declare-fun mapKey!15807 () (_ BitVec 32))

(assert (=> mapNonEmpty!15807 (= mapRest!15804 (store mapRest!15807 mapKey!15807 mapValue!15807))))

(declare-fun mapIsEmpty!15807 () Bool)

(assert (=> mapIsEmpty!15807 mapRes!15807))

(declare-fun b!2487167 () Bool)

(declare-fun tp!796115 () Bool)

(declare-fun tp_is_empty!12421 () Bool)

(assert (=> b!2487167 (= e!1579297 (and tp_is_empty!12419 tp_is_empty!12421 tp!796115))))

(declare-fun condMapEmpty!15807 () Bool)

(declare-fun mapDefault!15807 () List!29335)

(assert (=> mapNonEmpty!15804 (= condMapEmpty!15807 (= mapRest!15804 ((as const (Array (_ BitVec 32) List!29335)) mapDefault!15807)))))

(declare-fun e!1579298 () Bool)

(assert (=> mapNonEmpty!15804 (= tp!796106 (and e!1579298 mapRes!15807))))

(declare-fun b!2487168 () Bool)

(declare-fun tp!796116 () Bool)

(assert (=> b!2487168 (= e!1579298 (and tp_is_empty!12419 tp_is_empty!12421 tp!796116))))

(assert (= (and mapNonEmpty!15804 condMapEmpty!15807) mapIsEmpty!15807))

(assert (= (and mapNonEmpty!15804 (not condMapEmpty!15807)) mapNonEmpty!15807))

(assert (= (and mapNonEmpty!15807 ((_ is Cons!29235) mapValue!15807)) b!2487167))

(assert (= (and mapNonEmpty!15804 ((_ is Cons!29235) mapDefault!15807)) b!2487168))

(declare-fun m!2855957 () Bool)

(assert (=> mapNonEmpty!15807 m!2855957))

(declare-fun e!1579301 () Bool)

(declare-fun tp!796119 () Bool)

(declare-fun b!2487173 () Bool)

(assert (=> b!2487173 (= e!1579301 (and tp_is_empty!12419 tp_is_empty!12421 tp!796119))))

(assert (=> mapNonEmpty!15804 (= tp!796107 e!1579301)))

(assert (= (and mapNonEmpty!15804 ((_ is Cons!29235) mapValue!15804)) b!2487173))

(declare-fun tp!796120 () Bool)

(declare-fun e!1579302 () Bool)

(declare-fun b!2487174 () Bool)

(assert (=> b!2487174 (= e!1579302 (and tp_is_empty!12419 tp_is_empty!12421 tp!796120))))

(assert (=> b!2487064 (= tp!796101 e!1579302)))

(assert (= (and b!2487064 ((_ is Cons!29235) mapDefault!15804)) b!2487174))

(declare-fun tp!796121 () Bool)

(declare-fun b!2487175 () Bool)

(declare-fun e!1579303 () Bool)

(assert (=> b!2487175 (= e!1579303 (and tp_is_empty!12419 tp_is_empty!12421 tp!796121))))

(assert (=> b!2487063 (= tp!796102 e!1579303)))

(assert (= (and b!2487063 ((_ is Cons!29235) (zeroValue!3686 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540))))))) b!2487175))

(declare-fun tp!796122 () Bool)

(declare-fun e!1579304 () Bool)

(declare-fun b!2487176 () Bool)

(assert (=> b!2487176 (= e!1579304 (and tp_is_empty!12419 tp_is_empty!12421 tp!796122))))

(assert (=> b!2487063 (= tp!796104 e!1579304)))

(assert (= (and b!2487063 ((_ is Cons!29235) (minValue!3686 (v!31692 (underlying!7063 (v!31693 (underlying!7064 thiss!42540))))))) b!2487176))

(declare-fun b_lambda!76407 () Bool)

(assert (= b_lambda!76405 (or (and b!2487063 b_free!72569) b_lambda!76407)))

(declare-fun b_lambda!76409 () Bool)

(assert (= b_lambda!76403 (or b!2487062 b_lambda!76409)))

(declare-fun bs!468204 () Bool)

(declare-fun d!713941 () Bool)

(assert (= bs!468204 (and d!713941 b!2487062)))

(assert (=> bs!468204 (= (dynLambda!12510 lambda!94723 (tuple2!29281 lt!893150 lt!893154)) (noDuplicateKeys!125 (_2!17182 (tuple2!29281 lt!893150 lt!893154))))))

(declare-fun m!2855959 () Bool)

(assert (=> bs!468204 m!2855959))

(assert (=> d!713931 d!713941))

(check-sat (not b_lambda!76409) (not bm!152535) (not d!713929) (not b!2487159) (not b_next!73273) (not d!713933) (not d!713931) b_and!188859 (not bm!152540) (not b!2487121) (not b!2487071) (not b!2487141) tp_is_empty!12419 b_and!188861 (not bm!152530) (not d!713939) (not bm!152531) (not b!2487154) (not b!2487070) (not b_next!73275) (not b!2487143) (not b!2487100) (not b!2487072) (not bm!152532) (not b!2487117) (not bs!468204) (not b!2487176) (not d!713937) (not b!2487099) (not mapNonEmpty!15807) (not d!713921) (not bm!152533) (not b!2487142) (not b!2487101) (not b!2487173) (not d!713927) (not b!2487145) (not b!2487144) (not d!713913) (not b_lambda!76407) (not b!2487175) (not b!2487174) (not b!2487104) (not d!713923) (not d!713925) (not b!2487167) (not d!713915) (not b!2487073) tp_is_empty!12421 (not b!2487153) (not bm!152541) (not b!2487168) (not bm!152534) (not b!2487106) (not tb!140411))
(check-sat b_and!188859 b_and!188861 (not b_next!73273) (not b_next!73275))
