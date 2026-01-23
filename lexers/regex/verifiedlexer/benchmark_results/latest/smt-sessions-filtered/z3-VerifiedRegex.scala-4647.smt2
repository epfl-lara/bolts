; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242800 () Bool)

(assert start!242800)

(declare-fun b!2485694 () Bool)

(declare-fun b_free!72513 () Bool)

(declare-fun b_next!73217 () Bool)

(assert (=> b!2485694 (= b_free!72513 (not b_next!73217))))

(declare-fun tp!795753 () Bool)

(declare-fun b_and!188793 () Bool)

(assert (=> b!2485694 (= tp!795753 b_and!188793)))

(declare-fun b!2485682 () Bool)

(declare-fun b_free!72515 () Bool)

(declare-fun b_next!73219 () Bool)

(assert (=> b!2485682 (= b_free!72515 (not b_next!73219))))

(declare-fun tp!795751 () Bool)

(declare-fun b_and!188795 () Bool)

(assert (=> b!2485682 (= tp!795751 b_and!188795)))

(declare-fun e!1578276 () Bool)

(declare-fun e!1578283 () Bool)

(assert (=> b!2485682 (= e!1578276 (and e!1578283 tp!795751))))

(declare-fun b!2485683 () Bool)

(declare-fun res!1052128 () Bool)

(declare-fun e!1578279 () Bool)

(assert (=> b!2485683 (=> (not res!1052128) (not e!1578279))))

(declare-datatypes ((Hashable!3324 0))(
  ( (HashableExt!3323 (__x!19148 Int)) )
))
(declare-datatypes ((K!5620 0))(
  ( (K!5621 (val!8971 Int)) )
))
(declare-datatypes ((V!5822 0))(
  ( (V!5823 (val!8972 Int)) )
))
(declare-datatypes ((tuple2!29172 0))(
  ( (tuple2!29173 (_1!17128 K!5620) (_2!17128 V!5822)) )
))
(declare-datatypes ((List!29304 0))(
  ( (Nil!29204) (Cons!29204 (h!34619 tuple2!29172) (t!210989 List!29304)) )
))
(declare-datatypes ((array!12145 0))(
  ( (array!12146 (arr!5418 (Array (_ BitVec 32) List!29304)) (size!22837 (_ BitVec 32))) )
))
(declare-datatypes ((array!12147 0))(
  ( (array!12148 (arr!5419 (Array (_ BitVec 32) (_ BitVec 64))) (size!22838 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6828 0))(
  ( (LongMapFixedSize!6829 (defaultEntry!3788 Int) (mask!8610 (_ BitVec 32)) (extraKeys!3662 (_ BitVec 32)) (zeroValue!3672 List!29304) (minValue!3672 List!29304) (_size!6875 (_ BitVec 32)) (_keys!3711 array!12147) (_values!3694 array!12145) (_vacant!3475 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13473 0))(
  ( (Cell!13474 (v!31634 LongMapFixedSize!6828)) )
))
(declare-datatypes ((MutLongMap!3414 0))(
  ( (LongMap!3414 (underlying!7035 Cell!13473)) (MutLongMapExt!3413 (__x!19149 Int)) )
))
(declare-datatypes ((Cell!13475 0))(
  ( (Cell!13476 (v!31635 MutLongMap!3414)) )
))
(declare-datatypes ((MutableMap!3324 0))(
  ( (MutableMapExt!3323 (__x!19150 Int)) (HashMap!3324 (underlying!7036 Cell!13475) (hashF!5325 Hashable!3324) (_size!6876 (_ BitVec 32)) (defaultValue!3486 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3324)

(declare-fun valid!2624 (MutableMap!3324) Bool)

(assert (=> b!2485683 (= res!1052128 (valid!2624 thiss!42540))))

(declare-fun b!2485684 () Bool)

(declare-fun e!1578284 () Bool)

(declare-fun tp!795748 () Bool)

(declare-fun mapRes!15750 () Bool)

(assert (=> b!2485684 (= e!1578284 (and tp!795748 mapRes!15750))))

(declare-fun condMapEmpty!15750 () Bool)

(declare-fun mapDefault!15750 () List!29304)

(assert (=> b!2485684 (= condMapEmpty!15750 (= (arr!5418 (_values!3694 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29304)) mapDefault!15750)))))

(declare-fun b!2485685 () Bool)

(declare-fun e!1578280 () Bool)

(declare-datatypes ((tuple2!29174 0))(
  ( (tuple2!29175 (_1!17129 (_ BitVec 64)) (_2!17129 List!29304)) )
))
(declare-datatypes ((List!29305 0))(
  ( (Nil!29205) (Cons!29205 (h!34620 tuple2!29174) (t!210990 List!29305)) )
))
(declare-datatypes ((ListLongMap!613 0))(
  ( (ListLongMap!614 (toList!1662 List!29305)) )
))
(declare-fun lt!891832 () ListLongMap!613)

(declare-datatypes ((Unit!42843 0))(
  ( (Unit!42844) )
))
(declare-datatypes ((tuple2!29176 0))(
  ( (tuple2!29177 (_1!17130 Unit!42843) (_2!17130 MutableMap!3324)) )
))
(declare-fun lt!891839 () tuple2!29176)

(declare-fun allKeysSameHashInMap!191 (ListLongMap!613 Hashable!3324) Bool)

(assert (=> b!2485685 (= e!1578280 (allKeysSameHashInMap!191 lt!891832 (hashF!5325 (_2!17130 lt!891839))))))

(declare-fun mapNonEmpty!15750 () Bool)

(declare-fun tp!795750 () Bool)

(declare-fun tp!795752 () Bool)

(assert (=> mapNonEmpty!15750 (= mapRes!15750 (and tp!795750 tp!795752))))

(declare-fun mapRest!15750 () (Array (_ BitVec 32) List!29304))

(declare-fun mapKey!15750 () (_ BitVec 32))

(declare-fun mapValue!15750 () List!29304)

(assert (=> mapNonEmpty!15750 (= (arr!5418 (_values!3694 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) (store mapRest!15750 mapKey!15750 mapValue!15750))))

(declare-fun b!2485686 () Bool)

(declare-fun e!1578275 () Bool)

(assert (=> b!2485686 (= e!1578275 e!1578280)))

(declare-fun res!1052130 () Bool)

(assert (=> b!2485686 (=> res!1052130 e!1578280)))

(declare-fun lambda!94494 () Int)

(declare-fun forall!6007 (List!29305 Int) Bool)

(assert (=> b!2485686 (= res!1052130 (not (forall!6007 (toList!1662 lt!891832) lambda!94494)))))

(declare-fun e!1578277 () Bool)

(assert (=> b!2485686 e!1578277))

(declare-fun res!1052131 () Bool)

(assert (=> b!2485686 (=> (not res!1052131) (not e!1578277))))

(declare-fun lt!891843 () ListLongMap!613)

(assert (=> b!2485686 (= res!1052131 (forall!6007 (toList!1662 lt!891843) lambda!94494))))

(declare-fun map!6316 (MutLongMap!3414) ListLongMap!613)

(assert (=> b!2485686 (= lt!891843 (map!6316 (v!31635 (underlying!7036 (_2!17130 lt!891839)))))))

(declare-fun e!1578274 () Bool)

(assert (=> b!2485686 e!1578274))

(declare-fun res!1052124 () Bool)

(assert (=> b!2485686 (=> (not res!1052124) (not e!1578274))))

(declare-fun lt!891838 () ListLongMap!613)

(assert (=> b!2485686 (= res!1052124 (forall!6007 (toList!1662 lt!891838) lambda!94494))))

(declare-fun lt!891830 () (_ BitVec 64))

(declare-fun lt!891836 () List!29304)

(declare-fun +!107 (ListLongMap!613 tuple2!29174) ListLongMap!613)

(assert (=> b!2485686 (= lt!891838 (+!107 lt!891832 (tuple2!29175 lt!891830 lt!891836)))))

(declare-fun lt!891844 () Unit!42843)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!70 (ListLongMap!613 (_ BitVec 64) List!29304 Hashable!3324) Unit!42843)

(assert (=> b!2485686 (= lt!891844 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!70 lt!891832 lt!891830 lt!891836 (hashF!5325 (_2!17130 lt!891839))))))

(declare-fun allKeysSameHash!90 (List!29304 (_ BitVec 64) Hashable!3324) Bool)

(assert (=> b!2485686 (allKeysSameHash!90 lt!891836 lt!891830 (hashF!5325 (_2!17130 lt!891839)))))

(declare-fun lt!891835 () List!29304)

(declare-fun key!2246 () K!5620)

(declare-fun lt!891831 () Unit!42843)

(declare-fun lemmaRemovePairForKeyPreservesHash!79 (List!29304 K!5620 (_ BitVec 64) Hashable!3324) Unit!42843)

(assert (=> b!2485686 (= lt!891831 (lemmaRemovePairForKeyPreservesHash!79 lt!891835 key!2246 lt!891830 (hashF!5325 (_2!17130 lt!891839))))))

(assert (=> b!2485686 (allKeysSameHash!90 lt!891835 lt!891830 (hashF!5325 (_2!17130 lt!891839)))))

(declare-fun lt!891834 () Unit!42843)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!83 (List!29305 (_ BitVec 64) List!29304 Hashable!3324) Unit!42843)

(assert (=> b!2485686 (= lt!891834 (lemmaInLongMapAllKeySameHashThenForTuple!83 (toList!1662 lt!891832) lt!891830 lt!891835 (hashF!5325 (_2!17130 lt!891839))))))

(declare-fun b!2485687 () Bool)

(declare-fun res!1052125 () Bool)

(assert (=> b!2485687 (=> (not res!1052125) (not e!1578277))))

(assert (=> b!2485687 (= res!1052125 (valid!2624 (_2!17130 lt!891839)))))

(declare-fun b!2485688 () Bool)

(declare-fun e!1578282 () Bool)

(declare-fun lt!891841 () MutLongMap!3414)

(get-info :version)

(assert (=> b!2485688 (= e!1578283 (and e!1578282 ((_ is LongMap!3414) lt!891841)))))

(assert (=> b!2485688 (= lt!891841 (v!31635 (underlying!7036 thiss!42540)))))

(declare-fun res!1052126 () Bool)

(assert (=> start!242800 (=> (not res!1052126) (not e!1578279))))

(assert (=> start!242800 (= res!1052126 ((_ is HashMap!3324) thiss!42540))))

(assert (=> start!242800 e!1578279))

(assert (=> start!242800 e!1578276))

(declare-fun tp_is_empty!12383 () Bool)

(assert (=> start!242800 tp_is_empty!12383))

(declare-fun b!2485689 () Bool)

(assert (=> b!2485689 (= e!1578274 (allKeysSameHashInMap!191 lt!891838 (hashF!5325 (_2!17130 lt!891839))))))

(declare-fun b!2485690 () Bool)

(declare-fun res!1052127 () Bool)

(assert (=> b!2485690 (=> (not res!1052127) (not e!1578277))))

(assert (=> b!2485690 (= res!1052127 (allKeysSameHashInMap!191 lt!891843 (hashF!5325 (_2!17130 lt!891839))))))

(declare-fun b!2485691 () Bool)

(declare-fun e!1578278 () Bool)

(assert (=> b!2485691 (= e!1578282 e!1578278)))

(declare-fun b!2485692 () Bool)

(declare-fun res!1052129 () Bool)

(assert (=> b!2485692 (=> (not res!1052129) (not e!1578279))))

(declare-fun contains!5207 (MutableMap!3324 K!5620) Bool)

(assert (=> b!2485692 (= res!1052129 (contains!5207 thiss!42540 key!2246))))

(declare-fun mapIsEmpty!15750 () Bool)

(assert (=> mapIsEmpty!15750 mapRes!15750))

(declare-fun b!2485693 () Bool)

(declare-fun e!1578281 () Bool)

(assert (=> b!2485693 (= e!1578278 e!1578281)))

(declare-fun tp!795749 () Bool)

(declare-fun tp!795747 () Bool)

(declare-fun array_inv!3895 (array!12147) Bool)

(declare-fun array_inv!3896 (array!12145) Bool)

(assert (=> b!2485694 (= e!1578281 (and tp!795753 tp!795747 tp!795749 (array_inv!3895 (_keys!3711 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) (array_inv!3896 (_values!3694 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) e!1578284))))

(declare-fun b!2485695 () Bool)

(declare-datatypes ((ListMap!1141 0))(
  ( (ListMap!1142 (toList!1663 List!29304)) )
))
(declare-fun lt!891845 () ListMap!1141)

(declare-fun contains!5208 (ListMap!1141 K!5620) Bool)

(assert (=> b!2485695 (= e!1578277 (contains!5208 lt!891845 key!2246))))

(declare-fun b!2485696 () Bool)

(assert (=> b!2485696 (= e!1578279 (not e!1578275))))

(declare-fun res!1052132 () Bool)

(assert (=> b!2485696 (=> res!1052132 e!1578275)))

(declare-datatypes ((tuple2!29178 0))(
  ( (tuple2!29179 (_1!17131 Bool) (_2!17131 MutLongMap!3414)) )
))
(declare-fun lt!891837 () tuple2!29178)

(assert (=> b!2485696 (= res!1052132 (not (_1!17131 lt!891837)))))

(declare-fun noDuplicateKeys!116 (List!29304) Bool)

(assert (=> b!2485696 (noDuplicateKeys!116 lt!891836)))

(declare-fun lt!891840 () Unit!42843)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!96 (List!29304 K!5620) Unit!42843)

(assert (=> b!2485696 (= lt!891840 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!96 lt!891835 key!2246))))

(declare-fun lt!891842 () Cell!13475)

(declare-fun Unit!42845 () Unit!42843)

(declare-fun Unit!42846 () Unit!42843)

(assert (=> b!2485696 (= lt!891839 (ite (_1!17131 lt!891837) (tuple2!29177 Unit!42845 (HashMap!3324 lt!891842 (hashF!5325 thiss!42540) (bvsub (_size!6876 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3486 thiss!42540))) (tuple2!29177 Unit!42846 (HashMap!3324 lt!891842 (hashF!5325 thiss!42540) (_size!6876 thiss!42540) (defaultValue!3486 thiss!42540)))))))

(assert (=> b!2485696 (= lt!891842 (Cell!13476 (_2!17131 lt!891837)))))

(declare-fun update!235 (MutLongMap!3414 (_ BitVec 64) List!29304) tuple2!29178)

(assert (=> b!2485696 (= lt!891837 (update!235 (v!31635 (underlying!7036 thiss!42540)) lt!891830 lt!891836))))

(declare-fun removePairForKey!108 (List!29304 K!5620) List!29304)

(assert (=> b!2485696 (= lt!891836 (removePairForKey!108 lt!891835 key!2246))))

(declare-fun map!6317 (MutableMap!3324) ListMap!1141)

(assert (=> b!2485696 (= lt!891845 (map!6317 thiss!42540))))

(declare-fun lt!891833 () Unit!42843)

(declare-fun forallContained!897 (List!29305 Int tuple2!29174) Unit!42843)

(assert (=> b!2485696 (= lt!891833 (forallContained!897 (toList!1662 lt!891832) lambda!94494 (tuple2!29175 lt!891830 lt!891835)))))

(assert (=> b!2485696 (= lt!891832 (map!6316 (v!31635 (underlying!7036 thiss!42540))))))

(declare-fun apply!6983 (MutLongMap!3414 (_ BitVec 64)) List!29304)

(assert (=> b!2485696 (= lt!891835 (apply!6983 (v!31635 (underlying!7036 thiss!42540)) lt!891830))))

(declare-fun hash!762 (Hashable!3324 K!5620) (_ BitVec 64))

(assert (=> b!2485696 (= lt!891830 (hash!762 (hashF!5325 thiss!42540) key!2246))))

(assert (= (and start!242800 res!1052126) b!2485683))

(assert (= (and b!2485683 res!1052128) b!2485692))

(assert (= (and b!2485692 res!1052129) b!2485696))

(assert (= (and b!2485696 (not res!1052132)) b!2485686))

(assert (= (and b!2485686 res!1052124) b!2485689))

(assert (= (and b!2485686 res!1052131) b!2485690))

(assert (= (and b!2485690 res!1052127) b!2485687))

(assert (= (and b!2485687 res!1052125) b!2485695))

(assert (= (and b!2485686 (not res!1052130)) b!2485685))

(assert (= (and b!2485684 condMapEmpty!15750) mapIsEmpty!15750))

(assert (= (and b!2485684 (not condMapEmpty!15750)) mapNonEmpty!15750))

(assert (= b!2485694 b!2485684))

(assert (= b!2485693 b!2485694))

(assert (= b!2485691 b!2485693))

(assert (= (and b!2485688 ((_ is LongMap!3414) (v!31635 (underlying!7036 thiss!42540)))) b!2485691))

(assert (= b!2485682 b!2485688))

(assert (= (and start!242800 ((_ is HashMap!3324) thiss!42540)) b!2485682))

(declare-fun m!2853975 () Bool)

(assert (=> b!2485694 m!2853975))

(declare-fun m!2853977 () Bool)

(assert (=> b!2485694 m!2853977))

(declare-fun m!2853979 () Bool)

(assert (=> b!2485695 m!2853979))

(declare-fun m!2853981 () Bool)

(assert (=> b!2485689 m!2853981))

(declare-fun m!2853983 () Bool)

(assert (=> mapNonEmpty!15750 m!2853983))

(declare-fun m!2853985 () Bool)

(assert (=> b!2485692 m!2853985))

(declare-fun m!2853987 () Bool)

(assert (=> b!2485683 m!2853987))

(declare-fun m!2853989 () Bool)

(assert (=> b!2485687 m!2853989))

(declare-fun m!2853991 () Bool)

(assert (=> b!2485686 m!2853991))

(declare-fun m!2853993 () Bool)

(assert (=> b!2485686 m!2853993))

(declare-fun m!2853995 () Bool)

(assert (=> b!2485686 m!2853995))

(declare-fun m!2853997 () Bool)

(assert (=> b!2485686 m!2853997))

(declare-fun m!2853999 () Bool)

(assert (=> b!2485686 m!2853999))

(declare-fun m!2854001 () Bool)

(assert (=> b!2485686 m!2854001))

(declare-fun m!2854003 () Bool)

(assert (=> b!2485686 m!2854003))

(declare-fun m!2854005 () Bool)

(assert (=> b!2485686 m!2854005))

(declare-fun m!2854007 () Bool)

(assert (=> b!2485686 m!2854007))

(declare-fun m!2854009 () Bool)

(assert (=> b!2485686 m!2854009))

(declare-fun m!2854011 () Bool)

(assert (=> b!2485690 m!2854011))

(declare-fun m!2854013 () Bool)

(assert (=> b!2485685 m!2854013))

(declare-fun m!2854015 () Bool)

(assert (=> b!2485696 m!2854015))

(declare-fun m!2854017 () Bool)

(assert (=> b!2485696 m!2854017))

(declare-fun m!2854019 () Bool)

(assert (=> b!2485696 m!2854019))

(declare-fun m!2854021 () Bool)

(assert (=> b!2485696 m!2854021))

(declare-fun m!2854023 () Bool)

(assert (=> b!2485696 m!2854023))

(declare-fun m!2854025 () Bool)

(assert (=> b!2485696 m!2854025))

(declare-fun m!2854027 () Bool)

(assert (=> b!2485696 m!2854027))

(declare-fun m!2854029 () Bool)

(assert (=> b!2485696 m!2854029))

(declare-fun m!2854031 () Bool)

(assert (=> b!2485696 m!2854031))

(check-sat b_and!188795 (not b!2485692) (not b!2485687) (not b!2485690) (not b!2485684) (not b_next!73219) tp_is_empty!12383 (not b!2485685) b_and!188793 (not b!2485689) (not b!2485686) (not b!2485696) (not b!2485695) (not b!2485683) (not b_next!73217) (not mapNonEmpty!15750) (not b!2485694))
(check-sat b_and!188795 b_and!188793 (not b_next!73217) (not b_next!73219))
(get-model)

(declare-fun bs!467915 () Bool)

(declare-fun d!713614 () Bool)

(assert (= bs!467915 (and d!713614 b!2485696)))

(declare-fun lambda!94497 () Int)

(assert (=> bs!467915 (not (= lambda!94497 lambda!94494))))

(assert (=> d!713614 true))

(assert (=> d!713614 (= (allKeysSameHashInMap!191 lt!891838 (hashF!5325 (_2!17130 lt!891839))) (forall!6007 (toList!1662 lt!891838) lambda!94497))))

(declare-fun bs!467916 () Bool)

(assert (= bs!467916 d!713614))

(declare-fun m!2854033 () Bool)

(assert (=> bs!467916 m!2854033))

(assert (=> b!2485689 d!713614))

(declare-fun bs!467917 () Bool)

(declare-fun d!713616 () Bool)

(assert (= bs!467917 (and d!713616 b!2485696)))

(declare-fun lambda!94498 () Int)

(assert (=> bs!467917 (not (= lambda!94498 lambda!94494))))

(declare-fun bs!467918 () Bool)

(assert (= bs!467918 (and d!713616 d!713614)))

(assert (=> bs!467918 (= lambda!94498 lambda!94497)))

(assert (=> d!713616 true))

(assert (=> d!713616 (= (allKeysSameHashInMap!191 lt!891832 (hashF!5325 (_2!17130 lt!891839))) (forall!6007 (toList!1662 lt!891832) lambda!94498))))

(declare-fun bs!467919 () Bool)

(assert (= bs!467919 d!713616))

(declare-fun m!2854035 () Bool)

(assert (=> bs!467919 m!2854035))

(assert (=> b!2485685 d!713616))

(declare-fun d!713618 () Bool)

(assert (=> d!713618 (= (array_inv!3895 (_keys!3711 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) (bvsge (size!22838 (_keys!3711 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485694 d!713618))

(declare-fun d!713620 () Bool)

(assert (=> d!713620 (= (array_inv!3896 (_values!3694 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) (bvsge (size!22837 (_values!3694 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485694 d!713620))

(declare-fun bs!467920 () Bool)

(declare-fun d!713622 () Bool)

(assert (= bs!467920 (and d!713622 b!2485696)))

(declare-fun lambda!94499 () Int)

(assert (=> bs!467920 (not (= lambda!94499 lambda!94494))))

(declare-fun bs!467921 () Bool)

(assert (= bs!467921 (and d!713622 d!713614)))

(assert (=> bs!467921 (= lambda!94499 lambda!94497)))

(declare-fun bs!467922 () Bool)

(assert (= bs!467922 (and d!713622 d!713616)))

(assert (=> bs!467922 (= lambda!94499 lambda!94498)))

(assert (=> d!713622 true))

(assert (=> d!713622 (= (allKeysSameHashInMap!191 lt!891843 (hashF!5325 (_2!17130 lt!891839))) (forall!6007 (toList!1662 lt!891843) lambda!94499))))

(declare-fun bs!467923 () Bool)

(assert (= bs!467923 d!713622))

(declare-fun m!2854037 () Bool)

(assert (=> bs!467923 m!2854037))

(assert (=> b!2485690 d!713622))

(declare-fun b!2485717 () Bool)

(declare-fun e!1578302 () Bool)

(declare-datatypes ((List!29306 0))(
  ( (Nil!29206) (Cons!29206 (h!34622 K!5620) (t!210993 List!29306)) )
))
(declare-fun contains!5209 (List!29306 K!5620) Bool)

(declare-fun keys!9369 (ListMap!1141) List!29306)

(assert (=> b!2485717 (= e!1578302 (not (contains!5209 (keys!9369 lt!891845) key!2246)))))

(declare-fun b!2485718 () Bool)

(assert (=> b!2485718 false))

(declare-fun lt!891869 () Unit!42843)

(declare-fun lt!891863 () Unit!42843)

(assert (=> b!2485718 (= lt!891869 lt!891863)))

(declare-fun containsKey!164 (List!29304 K!5620) Bool)

(assert (=> b!2485718 (containsKey!164 (toList!1663 lt!891845) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!18 (List!29304 K!5620) Unit!42843)

(assert (=> b!2485718 (= lt!891863 (lemmaInGetKeysListThenContainsKey!18 (toList!1663 lt!891845) key!2246))))

(declare-fun e!1578298 () Unit!42843)

(declare-fun Unit!42847 () Unit!42843)

(assert (=> b!2485718 (= e!1578298 Unit!42847)))

(declare-fun b!2485719 () Bool)

(declare-fun e!1578299 () Bool)

(assert (=> b!2485719 (= e!1578299 (contains!5209 (keys!9369 lt!891845) key!2246))))

(declare-fun b!2485720 () Bool)

(declare-fun e!1578301 () List!29306)

(assert (=> b!2485720 (= e!1578301 (keys!9369 lt!891845))))

(declare-fun b!2485721 () Bool)

(declare-fun getKeysList!21 (List!29304) List!29306)

(assert (=> b!2485721 (= e!1578301 (getKeysList!21 (toList!1663 lt!891845)))))

(declare-fun b!2485723 () Bool)

(declare-fun e!1578300 () Bool)

(assert (=> b!2485723 (= e!1578300 e!1578299)))

(declare-fun res!1052140 () Bool)

(assert (=> b!2485723 (=> (not res!1052140) (not e!1578299))))

(declare-datatypes ((Option!5780 0))(
  ( (None!5779) (Some!5779 (v!31640 V!5822)) )
))
(declare-fun isDefined!4602 (Option!5780) Bool)

(declare-fun getValueByKey!154 (List!29304 K!5620) Option!5780)

(assert (=> b!2485723 (= res!1052140 (isDefined!4602 (getValueByKey!154 (toList!1663 lt!891845) key!2246)))))

(declare-fun b!2485724 () Bool)

(declare-fun Unit!42848 () Unit!42843)

(assert (=> b!2485724 (= e!1578298 Unit!42848)))

(declare-fun b!2485725 () Bool)

(declare-fun e!1578297 () Unit!42843)

(declare-fun lt!891868 () Unit!42843)

(assert (=> b!2485725 (= e!1578297 lt!891868)))

(declare-fun lt!891864 () Unit!42843)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!111 (List!29304 K!5620) Unit!42843)

(assert (=> b!2485725 (= lt!891864 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!1663 lt!891845) key!2246))))

(assert (=> b!2485725 (isDefined!4602 (getValueByKey!154 (toList!1663 lt!891845) key!2246))))

(declare-fun lt!891862 () Unit!42843)

(assert (=> b!2485725 (= lt!891862 lt!891864)))

(declare-fun lemmaInListThenGetKeysListContains!18 (List!29304 K!5620) Unit!42843)

(assert (=> b!2485725 (= lt!891868 (lemmaInListThenGetKeysListContains!18 (toList!1663 lt!891845) key!2246))))

(declare-fun call!152415 () Bool)

(assert (=> b!2485725 call!152415))

(declare-fun bm!152410 () Bool)

(assert (=> bm!152410 (= call!152415 (contains!5209 e!1578301 key!2246))))

(declare-fun c!395088 () Bool)

(declare-fun c!395090 () Bool)

(assert (=> bm!152410 (= c!395088 c!395090)))

(declare-fun d!713624 () Bool)

(assert (=> d!713624 e!1578300))

(declare-fun res!1052139 () Bool)

(assert (=> d!713624 (=> res!1052139 e!1578300)))

(assert (=> d!713624 (= res!1052139 e!1578302)))

(declare-fun res!1052141 () Bool)

(assert (=> d!713624 (=> (not res!1052141) (not e!1578302))))

(declare-fun lt!891866 () Bool)

(assert (=> d!713624 (= res!1052141 (not lt!891866))))

(declare-fun lt!891867 () Bool)

(assert (=> d!713624 (= lt!891866 lt!891867)))

(declare-fun lt!891865 () Unit!42843)

(assert (=> d!713624 (= lt!891865 e!1578297)))

(assert (=> d!713624 (= c!395090 lt!891867)))

(assert (=> d!713624 (= lt!891867 (containsKey!164 (toList!1663 lt!891845) key!2246))))

(assert (=> d!713624 (= (contains!5208 lt!891845 key!2246) lt!891866)))

(declare-fun b!2485722 () Bool)

(assert (=> b!2485722 (= e!1578297 e!1578298)))

(declare-fun c!395089 () Bool)

(assert (=> b!2485722 (= c!395089 call!152415)))

(assert (= (and d!713624 c!395090) b!2485725))

(assert (= (and d!713624 (not c!395090)) b!2485722))

(assert (= (and b!2485722 c!395089) b!2485718))

(assert (= (and b!2485722 (not c!395089)) b!2485724))

(assert (= (or b!2485725 b!2485722) bm!152410))

(assert (= (and bm!152410 c!395088) b!2485721))

(assert (= (and bm!152410 (not c!395088)) b!2485720))

(assert (= (and d!713624 res!1052141) b!2485717))

(assert (= (and d!713624 (not res!1052139)) b!2485723))

(assert (= (and b!2485723 res!1052140) b!2485719))

(declare-fun m!2854039 () Bool)

(assert (=> b!2485719 m!2854039))

(assert (=> b!2485719 m!2854039))

(declare-fun m!2854041 () Bool)

(assert (=> b!2485719 m!2854041))

(declare-fun m!2854043 () Bool)

(assert (=> b!2485725 m!2854043))

(declare-fun m!2854045 () Bool)

(assert (=> b!2485725 m!2854045))

(assert (=> b!2485725 m!2854045))

(declare-fun m!2854047 () Bool)

(assert (=> b!2485725 m!2854047))

(declare-fun m!2854049 () Bool)

(assert (=> b!2485725 m!2854049))

(declare-fun m!2854051 () Bool)

(assert (=> bm!152410 m!2854051))

(declare-fun m!2854053 () Bool)

(assert (=> d!713624 m!2854053))

(assert (=> b!2485720 m!2854039))

(assert (=> b!2485717 m!2854039))

(assert (=> b!2485717 m!2854039))

(assert (=> b!2485717 m!2854041))

(assert (=> b!2485723 m!2854045))

(assert (=> b!2485723 m!2854045))

(assert (=> b!2485723 m!2854047))

(declare-fun m!2854055 () Bool)

(assert (=> b!2485721 m!2854055))

(assert (=> b!2485718 m!2854053))

(declare-fun m!2854057 () Bool)

(assert (=> b!2485718 m!2854057))

(assert (=> b!2485695 d!713624))

(declare-fun d!713626 () Bool)

(declare-fun map!6318 (LongMapFixedSize!6828) ListLongMap!613)

(assert (=> d!713626 (= (map!6316 (v!31635 (underlying!7036 (_2!17130 lt!891839)))) (map!6318 (v!31634 (underlying!7035 (v!31635 (underlying!7036 (_2!17130 lt!891839)))))))))

(declare-fun bs!467924 () Bool)

(assert (= bs!467924 d!713626))

(declare-fun m!2854059 () Bool)

(assert (=> bs!467924 m!2854059))

(assert (=> b!2485686 d!713626))

(declare-fun d!713628 () Bool)

(assert (=> d!713628 true))

(assert (=> d!713628 true))

(declare-fun lambda!94502 () Int)

(declare-fun forall!6008 (List!29304 Int) Bool)

(assert (=> d!713628 (= (allKeysSameHash!90 lt!891835 lt!891830 (hashF!5325 (_2!17130 lt!891839))) (forall!6008 lt!891835 lambda!94502))))

(declare-fun bs!467925 () Bool)

(assert (= bs!467925 d!713628))

(declare-fun m!2854061 () Bool)

(assert (=> bs!467925 m!2854061))

(assert (=> b!2485686 d!713628))

(declare-fun d!713630 () Bool)

(declare-fun res!1052146 () Bool)

(declare-fun e!1578307 () Bool)

(assert (=> d!713630 (=> res!1052146 e!1578307)))

(assert (=> d!713630 (= res!1052146 ((_ is Nil!29205) (toList!1662 lt!891832)))))

(assert (=> d!713630 (= (forall!6007 (toList!1662 lt!891832) lambda!94494) e!1578307)))

(declare-fun b!2485734 () Bool)

(declare-fun e!1578308 () Bool)

(assert (=> b!2485734 (= e!1578307 e!1578308)))

(declare-fun res!1052147 () Bool)

(assert (=> b!2485734 (=> (not res!1052147) (not e!1578308))))

(declare-fun dynLambda!12502 (Int tuple2!29174) Bool)

(assert (=> b!2485734 (= res!1052147 (dynLambda!12502 lambda!94494 (h!34620 (toList!1662 lt!891832))))))

(declare-fun b!2485735 () Bool)

(assert (=> b!2485735 (= e!1578308 (forall!6007 (t!210990 (toList!1662 lt!891832)) lambda!94494))))

(assert (= (and d!713630 (not res!1052146)) b!2485734))

(assert (= (and b!2485734 res!1052147) b!2485735))

(declare-fun b_lambda!76323 () Bool)

(assert (=> (not b_lambda!76323) (not b!2485734)))

(declare-fun m!2854063 () Bool)

(assert (=> b!2485734 m!2854063))

(declare-fun m!2854065 () Bool)

(assert (=> b!2485735 m!2854065))

(assert (=> b!2485686 d!713630))

(declare-fun bs!467926 () Bool)

(declare-fun d!713632 () Bool)

(assert (= bs!467926 (and d!713632 b!2485696)))

(declare-fun lambda!94507 () Int)

(assert (=> bs!467926 (= lambda!94507 lambda!94494)))

(declare-fun bs!467927 () Bool)

(assert (= bs!467927 (and d!713632 d!713614)))

(assert (=> bs!467927 (not (= lambda!94507 lambda!94497))))

(declare-fun bs!467928 () Bool)

(assert (= bs!467928 (and d!713632 d!713616)))

(assert (=> bs!467928 (not (= lambda!94507 lambda!94498))))

(declare-fun bs!467929 () Bool)

(assert (= bs!467929 (and d!713632 d!713622)))

(assert (=> bs!467929 (not (= lambda!94507 lambda!94499))))

(declare-fun e!1578311 () Bool)

(assert (=> d!713632 e!1578311))

(declare-fun res!1052150 () Bool)

(assert (=> d!713632 (=> (not res!1052150) (not e!1578311))))

(declare-fun lt!891875 () ListLongMap!613)

(assert (=> d!713632 (= res!1052150 (forall!6007 (toList!1662 lt!891875) lambda!94507))))

(assert (=> d!713632 (= lt!891875 (+!107 lt!891832 (tuple2!29175 lt!891830 lt!891836)))))

(declare-fun lt!891874 () Unit!42843)

(declare-fun choose!14696 (ListLongMap!613 (_ BitVec 64) List!29304 Hashable!3324) Unit!42843)

(assert (=> d!713632 (= lt!891874 (choose!14696 lt!891832 lt!891830 lt!891836 (hashF!5325 (_2!17130 lt!891839))))))

(assert (=> d!713632 (forall!6007 (toList!1662 lt!891832) lambda!94507)))

(assert (=> d!713632 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!70 lt!891832 lt!891830 lt!891836 (hashF!5325 (_2!17130 lt!891839))) lt!891874)))

(declare-fun b!2485738 () Bool)

(assert (=> b!2485738 (= e!1578311 (allKeysSameHashInMap!191 lt!891875 (hashF!5325 (_2!17130 lt!891839))))))

(assert (= (and d!713632 res!1052150) b!2485738))

(declare-fun m!2854067 () Bool)

(assert (=> d!713632 m!2854067))

(assert (=> d!713632 m!2853997))

(declare-fun m!2854069 () Bool)

(assert (=> d!713632 m!2854069))

(declare-fun m!2854071 () Bool)

(assert (=> d!713632 m!2854071))

(declare-fun m!2854073 () Bool)

(assert (=> b!2485738 m!2854073))

(assert (=> b!2485686 d!713632))

(declare-fun d!713634 () Bool)

(declare-fun res!1052151 () Bool)

(declare-fun e!1578312 () Bool)

(assert (=> d!713634 (=> res!1052151 e!1578312)))

(assert (=> d!713634 (= res!1052151 ((_ is Nil!29205) (toList!1662 lt!891843)))))

(assert (=> d!713634 (= (forall!6007 (toList!1662 lt!891843) lambda!94494) e!1578312)))

(declare-fun b!2485739 () Bool)

(declare-fun e!1578313 () Bool)

(assert (=> b!2485739 (= e!1578312 e!1578313)))

(declare-fun res!1052152 () Bool)

(assert (=> b!2485739 (=> (not res!1052152) (not e!1578313))))

(assert (=> b!2485739 (= res!1052152 (dynLambda!12502 lambda!94494 (h!34620 (toList!1662 lt!891843))))))

(declare-fun b!2485740 () Bool)

(assert (=> b!2485740 (= e!1578313 (forall!6007 (t!210990 (toList!1662 lt!891843)) lambda!94494))))

(assert (= (and d!713634 (not res!1052151)) b!2485739))

(assert (= (and b!2485739 res!1052152) b!2485740))

(declare-fun b_lambda!76325 () Bool)

(assert (=> (not b_lambda!76325) (not b!2485739)))

(declare-fun m!2854075 () Bool)

(assert (=> b!2485739 m!2854075))

(declare-fun m!2854077 () Bool)

(assert (=> b!2485740 m!2854077))

(assert (=> b!2485686 d!713634))

(declare-fun bs!467930 () Bool)

(declare-fun d!713636 () Bool)

(assert (= bs!467930 (and d!713636 d!713622)))

(declare-fun lambda!94510 () Int)

(assert (=> bs!467930 (= lambda!94510 lambda!94499)))

(declare-fun bs!467931 () Bool)

(assert (= bs!467931 (and d!713636 b!2485696)))

(assert (=> bs!467931 (not (= lambda!94510 lambda!94494))))

(declare-fun bs!467932 () Bool)

(assert (= bs!467932 (and d!713636 d!713632)))

(assert (=> bs!467932 (not (= lambda!94510 lambda!94507))))

(declare-fun bs!467933 () Bool)

(assert (= bs!467933 (and d!713636 d!713616)))

(assert (=> bs!467933 (= lambda!94510 lambda!94498)))

(declare-fun bs!467934 () Bool)

(assert (= bs!467934 (and d!713636 d!713614)))

(assert (=> bs!467934 (= lambda!94510 lambda!94497)))

(assert (=> d!713636 true))

(assert (=> d!713636 (allKeysSameHash!90 lt!891835 lt!891830 (hashF!5325 (_2!17130 lt!891839)))))

(declare-fun lt!891878 () Unit!42843)

(declare-fun choose!14697 (List!29305 (_ BitVec 64) List!29304 Hashable!3324) Unit!42843)

(assert (=> d!713636 (= lt!891878 (choose!14697 (toList!1662 lt!891832) lt!891830 lt!891835 (hashF!5325 (_2!17130 lt!891839))))))

(assert (=> d!713636 (forall!6007 (toList!1662 lt!891832) lambda!94510)))

(assert (=> d!713636 (= (lemmaInLongMapAllKeySameHashThenForTuple!83 (toList!1662 lt!891832) lt!891830 lt!891835 (hashF!5325 (_2!17130 lt!891839))) lt!891878)))

(declare-fun bs!467935 () Bool)

(assert (= bs!467935 d!713636))

(assert (=> bs!467935 m!2854001))

(declare-fun m!2854079 () Bool)

(assert (=> bs!467935 m!2854079))

(declare-fun m!2854081 () Bool)

(assert (=> bs!467935 m!2854081))

(assert (=> b!2485686 d!713636))

(declare-fun d!713638 () Bool)

(assert (=> d!713638 (allKeysSameHash!90 (removePairForKey!108 lt!891835 key!2246) lt!891830 (hashF!5325 (_2!17130 lt!891839)))))

(declare-fun lt!891881 () Unit!42843)

(declare-fun choose!14698 (List!29304 K!5620 (_ BitVec 64) Hashable!3324) Unit!42843)

(assert (=> d!713638 (= lt!891881 (choose!14698 lt!891835 key!2246 lt!891830 (hashF!5325 (_2!17130 lt!891839))))))

(assert (=> d!713638 (noDuplicateKeys!116 lt!891835)))

(assert (=> d!713638 (= (lemmaRemovePairForKeyPreservesHash!79 lt!891835 key!2246 lt!891830 (hashF!5325 (_2!17130 lt!891839))) lt!891881)))

(declare-fun bs!467936 () Bool)

(assert (= bs!467936 d!713638))

(assert (=> bs!467936 m!2854019))

(assert (=> bs!467936 m!2854019))

(declare-fun m!2854083 () Bool)

(assert (=> bs!467936 m!2854083))

(declare-fun m!2854085 () Bool)

(assert (=> bs!467936 m!2854085))

(declare-fun m!2854087 () Bool)

(assert (=> bs!467936 m!2854087))

(assert (=> b!2485686 d!713638))

(declare-fun bs!467937 () Bool)

(declare-fun d!713640 () Bool)

(assert (= bs!467937 (and d!713640 d!713628)))

(declare-fun lambda!94511 () Int)

(assert (=> bs!467937 (= lambda!94511 lambda!94502)))

(assert (=> d!713640 true))

(assert (=> d!713640 true))

(assert (=> d!713640 (= (allKeysSameHash!90 lt!891836 lt!891830 (hashF!5325 (_2!17130 lt!891839))) (forall!6008 lt!891836 lambda!94511))))

(declare-fun bs!467938 () Bool)

(assert (= bs!467938 d!713640))

(declare-fun m!2854089 () Bool)

(assert (=> bs!467938 m!2854089))

(assert (=> b!2485686 d!713640))

(declare-fun d!713642 () Bool)

(declare-fun e!1578316 () Bool)

(assert (=> d!713642 e!1578316))

(declare-fun res!1052157 () Bool)

(assert (=> d!713642 (=> (not res!1052157) (not e!1578316))))

(declare-fun lt!891890 () ListLongMap!613)

(declare-fun contains!5210 (ListLongMap!613 (_ BitVec 64)) Bool)

(assert (=> d!713642 (= res!1052157 (contains!5210 lt!891890 (_1!17129 (tuple2!29175 lt!891830 lt!891836))))))

(declare-fun lt!891892 () List!29305)

(assert (=> d!713642 (= lt!891890 (ListLongMap!614 lt!891892))))

(declare-fun lt!891893 () Unit!42843)

(declare-fun lt!891891 () Unit!42843)

(assert (=> d!713642 (= lt!891893 lt!891891)))

(declare-datatypes ((Option!5781 0))(
  ( (None!5780) (Some!5780 (v!31641 List!29304)) )
))
(declare-fun getValueByKey!155 (List!29305 (_ BitVec 64)) Option!5781)

(assert (=> d!713642 (= (getValueByKey!155 lt!891892 (_1!17129 (tuple2!29175 lt!891830 lt!891836))) (Some!5780 (_2!17129 (tuple2!29175 lt!891830 lt!891836))))))

(declare-fun lemmaContainsTupThenGetReturnValue!26 (List!29305 (_ BitVec 64) List!29304) Unit!42843)

(assert (=> d!713642 (= lt!891891 (lemmaContainsTupThenGetReturnValue!26 lt!891892 (_1!17129 (tuple2!29175 lt!891830 lt!891836)) (_2!17129 (tuple2!29175 lt!891830 lt!891836))))))

(declare-fun insertStrictlySorted!20 (List!29305 (_ BitVec 64) List!29304) List!29305)

(assert (=> d!713642 (= lt!891892 (insertStrictlySorted!20 (toList!1662 lt!891832) (_1!17129 (tuple2!29175 lt!891830 lt!891836)) (_2!17129 (tuple2!29175 lt!891830 lt!891836))))))

(assert (=> d!713642 (= (+!107 lt!891832 (tuple2!29175 lt!891830 lt!891836)) lt!891890)))

(declare-fun b!2485745 () Bool)

(declare-fun res!1052158 () Bool)

(assert (=> b!2485745 (=> (not res!1052158) (not e!1578316))))

(assert (=> b!2485745 (= res!1052158 (= (getValueByKey!155 (toList!1662 lt!891890) (_1!17129 (tuple2!29175 lt!891830 lt!891836))) (Some!5780 (_2!17129 (tuple2!29175 lt!891830 lt!891836)))))))

(declare-fun b!2485746 () Bool)

(declare-fun contains!5211 (List!29305 tuple2!29174) Bool)

(assert (=> b!2485746 (= e!1578316 (contains!5211 (toList!1662 lt!891890) (tuple2!29175 lt!891830 lt!891836)))))

(assert (= (and d!713642 res!1052157) b!2485745))

(assert (= (and b!2485745 res!1052158) b!2485746))

(declare-fun m!2854091 () Bool)

(assert (=> d!713642 m!2854091))

(declare-fun m!2854093 () Bool)

(assert (=> d!713642 m!2854093))

(declare-fun m!2854095 () Bool)

(assert (=> d!713642 m!2854095))

(declare-fun m!2854097 () Bool)

(assert (=> d!713642 m!2854097))

(declare-fun m!2854099 () Bool)

(assert (=> b!2485745 m!2854099))

(declare-fun m!2854101 () Bool)

(assert (=> b!2485746 m!2854101))

(assert (=> b!2485686 d!713642))

(declare-fun d!713644 () Bool)

(declare-fun res!1052159 () Bool)

(declare-fun e!1578317 () Bool)

(assert (=> d!713644 (=> res!1052159 e!1578317)))

(assert (=> d!713644 (= res!1052159 ((_ is Nil!29205) (toList!1662 lt!891838)))))

(assert (=> d!713644 (= (forall!6007 (toList!1662 lt!891838) lambda!94494) e!1578317)))

(declare-fun b!2485747 () Bool)

(declare-fun e!1578318 () Bool)

(assert (=> b!2485747 (= e!1578317 e!1578318)))

(declare-fun res!1052160 () Bool)

(assert (=> b!2485747 (=> (not res!1052160) (not e!1578318))))

(assert (=> b!2485747 (= res!1052160 (dynLambda!12502 lambda!94494 (h!34620 (toList!1662 lt!891838))))))

(declare-fun b!2485748 () Bool)

(assert (=> b!2485748 (= e!1578318 (forall!6007 (t!210990 (toList!1662 lt!891838)) lambda!94494))))

(assert (= (and d!713644 (not res!1052159)) b!2485747))

(assert (= (and b!2485747 res!1052160) b!2485748))

(declare-fun b_lambda!76327 () Bool)

(assert (=> (not b_lambda!76327) (not b!2485747)))

(declare-fun m!2854103 () Bool)

(assert (=> b!2485747 m!2854103))

(declare-fun m!2854105 () Bool)

(assert (=> b!2485748 m!2854105))

(assert (=> b!2485686 d!713644))

(declare-fun d!713646 () Bool)

(assert (=> d!713646 (dynLambda!12502 lambda!94494 (tuple2!29175 lt!891830 lt!891835))))

(declare-fun lt!891896 () Unit!42843)

(declare-fun choose!14699 (List!29305 Int tuple2!29174) Unit!42843)

(assert (=> d!713646 (= lt!891896 (choose!14699 (toList!1662 lt!891832) lambda!94494 (tuple2!29175 lt!891830 lt!891835)))))

(declare-fun e!1578321 () Bool)

(assert (=> d!713646 e!1578321))

(declare-fun res!1052163 () Bool)

(assert (=> d!713646 (=> (not res!1052163) (not e!1578321))))

(assert (=> d!713646 (= res!1052163 (forall!6007 (toList!1662 lt!891832) lambda!94494))))

(assert (=> d!713646 (= (forallContained!897 (toList!1662 lt!891832) lambda!94494 (tuple2!29175 lt!891830 lt!891835)) lt!891896)))

(declare-fun b!2485751 () Bool)

(assert (=> b!2485751 (= e!1578321 (contains!5211 (toList!1662 lt!891832) (tuple2!29175 lt!891830 lt!891835)))))

(assert (= (and d!713646 res!1052163) b!2485751))

(declare-fun b_lambda!76329 () Bool)

(assert (=> (not b_lambda!76329) (not d!713646)))

(declare-fun m!2854107 () Bool)

(assert (=> d!713646 m!2854107))

(declare-fun m!2854109 () Bool)

(assert (=> d!713646 m!2854109))

(assert (=> d!713646 m!2854007))

(declare-fun m!2854111 () Bool)

(assert (=> b!2485751 m!2854111))

(assert (=> b!2485696 d!713646))

(declare-fun d!713648 () Bool)

(declare-fun hash!766 (Hashable!3324 K!5620) (_ BitVec 64))

(assert (=> d!713648 (= (hash!762 (hashF!5325 thiss!42540) key!2246) (hash!766 (hashF!5325 thiss!42540) key!2246))))

(declare-fun bs!467939 () Bool)

(assert (= bs!467939 d!713648))

(declare-fun m!2854113 () Bool)

(assert (=> bs!467939 m!2854113))

(assert (=> b!2485696 d!713648))

(declare-fun bm!152415 () Bool)

(declare-fun call!152421 () ListLongMap!613)

(declare-fun lt!891906 () tuple2!29178)

(assert (=> bm!152415 (= call!152421 (map!6316 (_2!17131 lt!891906)))))

(declare-fun b!2485771 () Bool)

(declare-fun res!1052172 () Bool)

(declare-fun e!1578335 () Bool)

(assert (=> b!2485771 (=> (not res!1052172) (not e!1578335))))

(declare-fun valid!2625 (MutLongMap!3414) Bool)

(assert (=> b!2485771 (= res!1052172 (valid!2625 (_2!17131 lt!891906)))))

(declare-fun bm!152416 () Bool)

(declare-fun call!152420 () ListLongMap!613)

(assert (=> bm!152416 (= call!152420 (map!6316 (v!31635 (underlying!7036 thiss!42540))))))

(declare-fun b!2485772 () Bool)

(declare-fun e!1578336 () Bool)

(assert (=> b!2485772 (= e!1578335 e!1578336)))

(declare-fun c!395097 () Bool)

(assert (=> b!2485772 (= c!395097 (_1!17131 lt!891906))))

(declare-fun b!2485773 () Bool)

(declare-fun e!1578333 () tuple2!29178)

(declare-fun lt!891907 () tuple2!29178)

(assert (=> b!2485773 (= e!1578333 (tuple2!29179 (_1!17131 lt!891907) (_2!17131 lt!891907)))))

(declare-fun repack!31 (MutLongMap!3414) tuple2!29178)

(assert (=> b!2485773 (= lt!891907 (repack!31 (v!31635 (underlying!7036 thiss!42540))))))

(declare-fun b!2485774 () Bool)

(declare-fun e!1578332 () tuple2!29178)

(declare-datatypes ((tuple2!29180 0))(
  ( (tuple2!29181 (_1!17132 Bool) (_2!17132 LongMapFixedSize!6828)) )
))
(declare-fun lt!891908 () tuple2!29180)

(assert (=> b!2485774 (= e!1578332 (tuple2!29179 (_1!17132 lt!891908) (LongMap!3414 (Cell!13474 (_2!17132 lt!891908)))))))

(declare-fun lt!891905 () tuple2!29178)

(declare-fun update!236 (LongMapFixedSize!6828 (_ BitVec 64) List!29304) tuple2!29180)

(assert (=> b!2485774 (= lt!891908 (update!236 (v!31634 (underlying!7035 (_2!17131 lt!891905))) lt!891830 lt!891836))))

(declare-fun b!2485770 () Bool)

(assert (=> b!2485770 (= e!1578336 (= call!152421 call!152420))))

(declare-fun d!713650 () Bool)

(assert (=> d!713650 e!1578335))

(declare-fun res!1052170 () Bool)

(assert (=> d!713650 (=> (not res!1052170) (not e!1578335))))

(assert (=> d!713650 (= res!1052170 ((_ is LongMap!3414) (_2!17131 lt!891906)))))

(assert (=> d!713650 (= lt!891906 e!1578332)))

(declare-fun c!395099 () Bool)

(assert (=> d!713650 (= c!395099 (_1!17131 lt!891905))))

(assert (=> d!713650 (= lt!891905 e!1578333)))

(declare-fun c!395098 () Bool)

(declare-fun imbalanced!27 (MutLongMap!3414) Bool)

(assert (=> d!713650 (= c!395098 (imbalanced!27 (v!31635 (underlying!7036 thiss!42540))))))

(assert (=> d!713650 (valid!2625 (v!31635 (underlying!7036 thiss!42540)))))

(assert (=> d!713650 (= (update!235 (v!31635 (underlying!7036 thiss!42540)) lt!891830 lt!891836) lt!891906)))

(declare-fun b!2485775 () Bool)

(assert (=> b!2485775 (= e!1578333 (tuple2!29179 true (v!31635 (underlying!7036 thiss!42540))))))

(declare-fun b!2485776 () Bool)

(declare-fun e!1578334 () Bool)

(assert (=> b!2485776 (= e!1578336 e!1578334)))

(declare-fun res!1052171 () Bool)

(assert (=> b!2485776 (= res!1052171 (contains!5210 call!152421 lt!891830))))

(assert (=> b!2485776 (=> (not res!1052171) (not e!1578334))))

(declare-fun b!2485777 () Bool)

(assert (=> b!2485777 (= e!1578332 (tuple2!29179 false (_2!17131 lt!891905)))))

(declare-fun b!2485778 () Bool)

(assert (=> b!2485778 (= e!1578334 (= call!152421 (+!107 call!152420 (tuple2!29175 lt!891830 lt!891836))))))

(assert (= (and d!713650 c!395098) b!2485773))

(assert (= (and d!713650 (not c!395098)) b!2485775))

(assert (= (and d!713650 c!395099) b!2485774))

(assert (= (and d!713650 (not c!395099)) b!2485777))

(assert (= (and d!713650 res!1052170) b!2485771))

(assert (= (and b!2485771 res!1052172) b!2485772))

(assert (= (and b!2485772 c!395097) b!2485776))

(assert (= (and b!2485772 (not c!395097)) b!2485770))

(assert (= (and b!2485776 res!1052171) b!2485778))

(assert (= (or b!2485776 b!2485778 b!2485770) bm!152415))

(assert (= (or b!2485778 b!2485770) bm!152416))

(declare-fun m!2854115 () Bool)

(assert (=> b!2485773 m!2854115))

(declare-fun m!2854117 () Bool)

(assert (=> b!2485774 m!2854117))

(declare-fun m!2854119 () Bool)

(assert (=> b!2485771 m!2854119))

(declare-fun m!2854121 () Bool)

(assert (=> b!2485778 m!2854121))

(declare-fun m!2854123 () Bool)

(assert (=> d!713650 m!2854123))

(declare-fun m!2854125 () Bool)

(assert (=> d!713650 m!2854125))

(assert (=> bm!152416 m!2854017))

(declare-fun m!2854127 () Bool)

(assert (=> bm!152415 m!2854127))

(declare-fun m!2854129 () Bool)

(assert (=> b!2485776 m!2854129))

(assert (=> b!2485696 d!713650))

(declare-fun b!2485790 () Bool)

(declare-fun e!1578342 () List!29304)

(assert (=> b!2485790 (= e!1578342 Nil!29204)))

(declare-fun b!2485788 () Bool)

(declare-fun e!1578341 () List!29304)

(assert (=> b!2485788 (= e!1578341 e!1578342)))

(declare-fun c!395105 () Bool)

(assert (=> b!2485788 (= c!395105 ((_ is Cons!29204) lt!891835))))

(declare-fun b!2485787 () Bool)

(assert (=> b!2485787 (= e!1578341 (t!210989 lt!891835))))

(declare-fun b!2485789 () Bool)

(assert (=> b!2485789 (= e!1578342 (Cons!29204 (h!34619 lt!891835) (removePairForKey!108 (t!210989 lt!891835) key!2246)))))

(declare-fun d!713652 () Bool)

(declare-fun lt!891911 () List!29304)

(declare-fun containsKey!165 (List!29304 K!5620) Bool)

(assert (=> d!713652 (not (containsKey!165 lt!891911 key!2246))))

(assert (=> d!713652 (= lt!891911 e!1578341)))

(declare-fun c!395104 () Bool)

(assert (=> d!713652 (= c!395104 (and ((_ is Cons!29204) lt!891835) (= (_1!17128 (h!34619 lt!891835)) key!2246)))))

(assert (=> d!713652 (noDuplicateKeys!116 lt!891835)))

(assert (=> d!713652 (= (removePairForKey!108 lt!891835 key!2246) lt!891911)))

(assert (= (and d!713652 c!395104) b!2485787))

(assert (= (and d!713652 (not c!395104)) b!2485788))

(assert (= (and b!2485788 c!395105) b!2485789))

(assert (= (and b!2485788 (not c!395105)) b!2485790))

(declare-fun m!2854131 () Bool)

(assert (=> b!2485789 m!2854131))

(declare-fun m!2854133 () Bool)

(assert (=> d!713652 m!2854133))

(assert (=> d!713652 m!2854087))

(assert (=> b!2485696 d!713652))

(declare-fun d!713654 () Bool)

(assert (=> d!713654 (= (map!6316 (v!31635 (underlying!7036 thiss!42540))) (map!6318 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540))))))))

(declare-fun bs!467940 () Bool)

(assert (= bs!467940 d!713654))

(declare-fun m!2854135 () Bool)

(assert (=> bs!467940 m!2854135))

(assert (=> b!2485696 d!713654))

(declare-fun d!713656 () Bool)

(declare-fun lt!891914 () ListMap!1141)

(declare-fun invariantList!422 (List!29304) Bool)

(assert (=> d!713656 (invariantList!422 (toList!1663 lt!891914))))

(declare-fun extractMap!188 (List!29305) ListMap!1141)

(assert (=> d!713656 (= lt!891914 (extractMap!188 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540))))))))

(assert (=> d!713656 (valid!2624 thiss!42540)))

(assert (=> d!713656 (= (map!6317 thiss!42540) lt!891914)))

(declare-fun bs!467941 () Bool)

(assert (= bs!467941 d!713656))

(declare-fun m!2854137 () Bool)

(assert (=> bs!467941 m!2854137))

(assert (=> bs!467941 m!2854017))

(declare-fun m!2854139 () Bool)

(assert (=> bs!467941 m!2854139))

(assert (=> bs!467941 m!2853987))

(assert (=> b!2485696 d!713656))

(declare-fun d!713658 () Bool)

(assert (=> d!713658 (noDuplicateKeys!116 (removePairForKey!108 lt!891835 key!2246))))

(declare-fun lt!891917 () Unit!42843)

(declare-fun choose!14700 (List!29304 K!5620) Unit!42843)

(assert (=> d!713658 (= lt!891917 (choose!14700 lt!891835 key!2246))))

(assert (=> d!713658 (noDuplicateKeys!116 lt!891835)))

(assert (=> d!713658 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!96 lt!891835 key!2246) lt!891917)))

(declare-fun bs!467942 () Bool)

(assert (= bs!467942 d!713658))

(assert (=> bs!467942 m!2854019))

(assert (=> bs!467942 m!2854019))

(declare-fun m!2854141 () Bool)

(assert (=> bs!467942 m!2854141))

(declare-fun m!2854143 () Bool)

(assert (=> bs!467942 m!2854143))

(assert (=> bs!467942 m!2854087))

(assert (=> b!2485696 d!713658))

(declare-fun d!713660 () Bool)

(declare-fun res!1052177 () Bool)

(declare-fun e!1578347 () Bool)

(assert (=> d!713660 (=> res!1052177 e!1578347)))

(assert (=> d!713660 (= res!1052177 (not ((_ is Cons!29204) lt!891836)))))

(assert (=> d!713660 (= (noDuplicateKeys!116 lt!891836) e!1578347)))

(declare-fun b!2485795 () Bool)

(declare-fun e!1578348 () Bool)

(assert (=> b!2485795 (= e!1578347 e!1578348)))

(declare-fun res!1052178 () Bool)

(assert (=> b!2485795 (=> (not res!1052178) (not e!1578348))))

(assert (=> b!2485795 (= res!1052178 (not (containsKey!165 (t!210989 lt!891836) (_1!17128 (h!34619 lt!891836)))))))

(declare-fun b!2485796 () Bool)

(assert (=> b!2485796 (= e!1578348 (noDuplicateKeys!116 (t!210989 lt!891836)))))

(assert (= (and d!713660 (not res!1052177)) b!2485795))

(assert (= (and b!2485795 res!1052178) b!2485796))

(declare-fun m!2854145 () Bool)

(assert (=> b!2485795 m!2854145))

(declare-fun m!2854147 () Bool)

(assert (=> b!2485796 m!2854147))

(assert (=> b!2485696 d!713660))

(declare-fun d!713662 () Bool)

(declare-fun e!1578351 () Bool)

(assert (=> d!713662 e!1578351))

(declare-fun c!395108 () Bool)

(declare-fun contains!5212 (MutLongMap!3414 (_ BitVec 64)) Bool)

(assert (=> d!713662 (= c!395108 (contains!5212 (v!31635 (underlying!7036 thiss!42540)) lt!891830))))

(declare-fun lt!891920 () List!29304)

(declare-fun apply!6984 (LongMapFixedSize!6828 (_ BitVec 64)) List!29304)

(assert (=> d!713662 (= lt!891920 (apply!6984 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))) lt!891830))))

(assert (=> d!713662 (valid!2625 (v!31635 (underlying!7036 thiss!42540)))))

(assert (=> d!713662 (= (apply!6983 (v!31635 (underlying!7036 thiss!42540)) lt!891830) lt!891920)))

(declare-fun b!2485801 () Bool)

(declare-fun get!9015 (Option!5781) List!29304)

(assert (=> b!2485801 (= e!1578351 (= lt!891920 (get!9015 (getValueByKey!155 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540)))) lt!891830))))))

(declare-fun b!2485802 () Bool)

(declare-fun dynLambda!12503 (Int (_ BitVec 64)) List!29304)

(assert (=> b!2485802 (= e!1578351 (= lt!891920 (dynLambda!12503 (defaultEntry!3788 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540))))) lt!891830)))))

(assert (=> b!2485802 ((_ is LongMap!3414) (v!31635 (underlying!7036 thiss!42540)))))

(assert (= (and d!713662 c!395108) b!2485801))

(assert (= (and d!713662 (not c!395108)) b!2485802))

(declare-fun b_lambda!76331 () Bool)

(assert (=> (not b_lambda!76331) (not b!2485802)))

(declare-fun t!210992 () Bool)

(declare-fun tb!140403 () Bool)

(assert (=> (and b!2485694 (= (defaultEntry!3788 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540))))) (defaultEntry!3788 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540)))))) t!210992) tb!140403))

(assert (=> b!2485802 t!210992))

(declare-fun result!173404 () Bool)

(declare-fun b_and!188797 () Bool)

(assert (= b_and!188793 (and (=> t!210992 result!173404) b_and!188797)))

(declare-fun m!2854149 () Bool)

(assert (=> d!713662 m!2854149))

(declare-fun m!2854151 () Bool)

(assert (=> d!713662 m!2854151))

(assert (=> d!713662 m!2854125))

(assert (=> b!2485801 m!2854017))

(declare-fun m!2854153 () Bool)

(assert (=> b!2485801 m!2854153))

(assert (=> b!2485801 m!2854153))

(declare-fun m!2854155 () Bool)

(assert (=> b!2485801 m!2854155))

(declare-fun m!2854157 () Bool)

(assert (=> b!2485802 m!2854157))

(assert (=> b!2485696 d!713662))

(declare-fun bs!467943 () Bool)

(declare-fun b!2485835 () Bool)

(assert (= bs!467943 (and b!2485835 d!713622)))

(declare-fun lambda!94514 () Int)

(assert (=> bs!467943 (not (= lambda!94514 lambda!94499))))

(declare-fun bs!467944 () Bool)

(assert (= bs!467944 (and b!2485835 b!2485696)))

(assert (=> bs!467944 (= lambda!94514 lambda!94494)))

(declare-fun bs!467945 () Bool)

(assert (= bs!467945 (and b!2485835 d!713632)))

(assert (=> bs!467945 (= lambda!94514 lambda!94507)))

(declare-fun bs!467946 () Bool)

(assert (= bs!467946 (and b!2485835 d!713616)))

(assert (=> bs!467946 (not (= lambda!94514 lambda!94498))))

(declare-fun bs!467947 () Bool)

(assert (= bs!467947 (and b!2485835 d!713614)))

(assert (=> bs!467947 (not (= lambda!94514 lambda!94497))))

(declare-fun bs!467948 () Bool)

(assert (= bs!467948 (and b!2485835 d!713636)))

(assert (=> bs!467948 (not (= lambda!94514 lambda!94510))))

(declare-fun b!2485825 () Bool)

(assert (=> b!2485825 false))

(declare-fun lt!891980 () Unit!42843)

(declare-fun lt!891976 () Unit!42843)

(assert (=> b!2485825 (= lt!891980 lt!891976)))

(declare-fun lt!891965 () ListLongMap!613)

(assert (=> b!2485825 (contains!5208 (extractMap!188 (toList!1662 lt!891965)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!83 (ListLongMap!613 K!5620 Hashable!3324) Unit!42843)

(assert (=> b!2485825 (= lt!891976 (lemmaInLongMapThenInGenericMap!83 lt!891965 key!2246 (hashF!5325 thiss!42540)))))

(declare-fun call!152436 () ListLongMap!613)

(assert (=> b!2485825 (= lt!891965 call!152436)))

(declare-fun e!1578370 () Unit!42843)

(declare-fun Unit!42849 () Unit!42843)

(assert (=> b!2485825 (= e!1578370 Unit!42849)))

(declare-fun bm!152429 () Bool)

(assert (=> bm!152429 (= call!152436 (map!6316 (v!31635 (underlying!7036 thiss!42540))))))

(declare-fun b!2485826 () Bool)

(declare-fun e!1578369 () Bool)

(declare-fun call!152435 () Bool)

(assert (=> b!2485826 (= e!1578369 call!152435)))

(declare-fun b!2485827 () Bool)

(assert (=> b!2485827 false))

(declare-fun lt!891975 () Unit!42843)

(declare-fun lt!891979 () Unit!42843)

(assert (=> b!2485827 (= lt!891975 lt!891979)))

(declare-fun lt!891967 () List!29305)

(declare-fun lt!891963 () (_ BitVec 64))

(declare-fun lt!891970 () List!29304)

(assert (=> b!2485827 (contains!5211 lt!891967 (tuple2!29175 lt!891963 lt!891970))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!88 (List!29305 (_ BitVec 64) List!29304) Unit!42843)

(assert (=> b!2485827 (= lt!891979 (lemmaGetValueByKeyImpliesContainsTuple!88 lt!891967 lt!891963 lt!891970))))

(assert (=> b!2485827 (= lt!891970 (apply!6983 (v!31635 (underlying!7036 thiss!42540)) lt!891963))))

(assert (=> b!2485827 (= lt!891967 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540)))))))

(declare-fun lt!891971 () Unit!42843)

(declare-fun lt!891964 () Unit!42843)

(assert (=> b!2485827 (= lt!891971 lt!891964)))

(declare-fun lt!891978 () List!29305)

(declare-fun isDefined!4603 (Option!5781) Bool)

(assert (=> b!2485827 (isDefined!4603 (getValueByKey!155 lt!891978 lt!891963))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!112 (List!29305 (_ BitVec 64)) Unit!42843)

(assert (=> b!2485827 (= lt!891964 (lemmaContainsKeyImpliesGetValueByKeyDefined!112 lt!891978 lt!891963))))

(assert (=> b!2485827 (= lt!891978 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540)))))))

(declare-fun lt!891972 () Unit!42843)

(declare-fun lt!891973 () Unit!42843)

(assert (=> b!2485827 (= lt!891972 lt!891973)))

(declare-fun lt!891962 () List!29305)

(declare-fun containsKey!166 (List!29305 (_ BitVec 64)) Bool)

(assert (=> b!2485827 (containsKey!166 lt!891962 lt!891963)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!84 (List!29305 (_ BitVec 64)) Unit!42843)

(assert (=> b!2485827 (= lt!891973 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!84 lt!891962 lt!891963))))

(assert (=> b!2485827 (= lt!891962 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540)))))))

(declare-fun e!1578368 () Unit!42843)

(declare-fun Unit!42850 () Unit!42843)

(assert (=> b!2485827 (= e!1578368 Unit!42850)))

(declare-fun d!713664 () Bool)

(declare-fun lt!891969 () Bool)

(assert (=> d!713664 (= lt!891969 (contains!5208 (map!6317 thiss!42540) key!2246))))

(declare-fun e!1578371 () Bool)

(assert (=> d!713664 (= lt!891969 e!1578371)))

(declare-fun res!1052185 () Bool)

(assert (=> d!713664 (=> (not res!1052185) (not e!1578371))))

(assert (=> d!713664 (= res!1052185 (contains!5212 (v!31635 (underlying!7036 thiss!42540)) lt!891963))))

(declare-fun lt!891966 () Unit!42843)

(declare-fun e!1578366 () Unit!42843)

(assert (=> d!713664 (= lt!891966 e!1578366)))

(declare-fun c!395117 () Bool)

(assert (=> d!713664 (= c!395117 (contains!5208 (extractMap!188 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540))))) key!2246))))

(declare-fun lt!891961 () Unit!42843)

(declare-fun e!1578372 () Unit!42843)

(assert (=> d!713664 (= lt!891961 e!1578372)))

(declare-fun c!395120 () Bool)

(assert (=> d!713664 (= c!395120 (contains!5212 (v!31635 (underlying!7036 thiss!42540)) lt!891963))))

(assert (=> d!713664 (= lt!891963 (hash!762 (hashF!5325 thiss!42540) key!2246))))

(assert (=> d!713664 (valid!2624 thiss!42540)))

(assert (=> d!713664 (= (contains!5207 thiss!42540 key!2246) lt!891969)))

(declare-fun b!2485828 () Bool)

(declare-fun Unit!42851 () Unit!42843)

(assert (=> b!2485828 (= e!1578368 Unit!42851)))

(declare-fun b!2485829 () Bool)

(declare-datatypes ((Option!5782 0))(
  ( (None!5781) (Some!5781 (v!31642 tuple2!29172)) )
))
(declare-fun isDefined!4604 (Option!5782) Bool)

(declare-fun getPair!83 (List!29304 K!5620) Option!5782)

(assert (=> b!2485829 (= e!1578371 (isDefined!4604 (getPair!83 (apply!6983 (v!31635 (underlying!7036 thiss!42540)) lt!891963) key!2246)))))

(declare-fun b!2485830 () Bool)

(declare-fun e!1578367 () Bool)

(assert (=> b!2485830 (= e!1578367 call!152435)))

(declare-fun bm!152430 () Bool)

(declare-fun call!152437 () (_ BitVec 64))

(assert (=> bm!152430 (= call!152437 (hash!762 (hashF!5325 thiss!42540) key!2246))))

(declare-fun lt!891977 () ListLongMap!613)

(declare-fun call!152434 () Bool)

(declare-fun bm!152431 () Bool)

(assert (=> bm!152431 (= call!152434 (contains!5210 (ite c!395117 lt!891977 call!152436) call!152437))))

(declare-fun b!2485831 () Bool)

(declare-fun Unit!42852 () Unit!42843)

(assert (=> b!2485831 (= e!1578372 Unit!42852)))

(declare-fun b!2485832 () Bool)

(assert (=> b!2485832 (= e!1578366 e!1578370)))

(declare-fun res!1052187 () Bool)

(assert (=> b!2485832 (= res!1052187 call!152434)))

(assert (=> b!2485832 (=> (not res!1052187) (not e!1578369))))

(declare-fun c!395118 () Bool)

(assert (=> b!2485832 (= c!395118 e!1578369)))

(declare-fun bm!152432 () Bool)

(declare-fun call!152438 () Option!5782)

(declare-fun call!152439 () List!29304)

(assert (=> bm!152432 (= call!152438 (getPair!83 call!152439 key!2246))))

(declare-fun b!2485833 () Bool)

(declare-fun lt!891968 () Unit!42843)

(assert (=> b!2485833 (= e!1578366 lt!891968)))

(assert (=> b!2485833 (= lt!891977 call!152436)))

(declare-fun lemmaInGenericMapThenInLongMap!83 (ListLongMap!613 K!5620 Hashable!3324) Unit!42843)

(assert (=> b!2485833 (= lt!891968 (lemmaInGenericMapThenInLongMap!83 lt!891977 key!2246 (hashF!5325 thiss!42540)))))

(declare-fun res!1052186 () Bool)

(assert (=> b!2485833 (= res!1052186 call!152434)))

(assert (=> b!2485833 (=> (not res!1052186) (not e!1578367))))

(assert (=> b!2485833 e!1578367))

(declare-fun b!2485834 () Bool)

(declare-fun Unit!42853 () Unit!42843)

(assert (=> b!2485834 (= e!1578370 Unit!42853)))

(declare-fun bm!152433 () Bool)

(declare-fun apply!6985 (ListLongMap!613 (_ BitVec 64)) List!29304)

(assert (=> bm!152433 (= call!152439 (apply!6985 (ite c!395117 lt!891977 call!152436) call!152437))))

(assert (=> b!2485835 (= e!1578372 (forallContained!897 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540)))) lambda!94514 (tuple2!29175 lt!891963 (apply!6983 (v!31635 (underlying!7036 thiss!42540)) lt!891963))))))

(declare-fun c!395119 () Bool)

(assert (=> b!2485835 (= c!395119 (not (contains!5211 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540)))) (tuple2!29175 lt!891963 (apply!6983 (v!31635 (underlying!7036 thiss!42540)) lt!891963)))))))

(declare-fun lt!891974 () Unit!42843)

(assert (=> b!2485835 (= lt!891974 e!1578368)))

(declare-fun bm!152434 () Bool)

(assert (=> bm!152434 (= call!152435 (isDefined!4604 call!152438))))

(assert (= (and d!713664 c!395120) b!2485835))

(assert (= (and d!713664 (not c!395120)) b!2485831))

(assert (= (and b!2485835 c!395119) b!2485827))

(assert (= (and b!2485835 (not c!395119)) b!2485828))

(assert (= (and d!713664 c!395117) b!2485833))

(assert (= (and d!713664 (not c!395117)) b!2485832))

(assert (= (and b!2485833 res!1052186) b!2485830))

(assert (= (and b!2485832 res!1052187) b!2485826))

(assert (= (and b!2485832 c!395118) b!2485825))

(assert (= (and b!2485832 (not c!395118)) b!2485834))

(assert (= (or b!2485833 b!2485830 b!2485832 b!2485826) bm!152430))

(assert (= (or b!2485833 b!2485832 b!2485826 b!2485825) bm!152429))

(assert (= (or b!2485833 b!2485832) bm!152431))

(assert (= (or b!2485830 b!2485826) bm!152433))

(assert (= (or b!2485830 b!2485826) bm!152432))

(assert (= (or b!2485830 b!2485826) bm!152434))

(assert (= (and d!713664 res!1052185) b!2485829))

(declare-fun m!2854159 () Bool)

(assert (=> b!2485827 m!2854159))

(assert (=> b!2485827 m!2854017))

(declare-fun m!2854161 () Bool)

(assert (=> b!2485827 m!2854161))

(declare-fun m!2854163 () Bool)

(assert (=> b!2485827 m!2854163))

(declare-fun m!2854165 () Bool)

(assert (=> b!2485827 m!2854165))

(declare-fun m!2854167 () Bool)

(assert (=> b!2485827 m!2854167))

(declare-fun m!2854169 () Bool)

(assert (=> b!2485827 m!2854169))

(declare-fun m!2854171 () Bool)

(assert (=> b!2485827 m!2854171))

(declare-fun m!2854173 () Bool)

(assert (=> b!2485827 m!2854173))

(assert (=> b!2485827 m!2854163))

(declare-fun m!2854175 () Bool)

(assert (=> b!2485825 m!2854175))

(assert (=> b!2485825 m!2854175))

(declare-fun m!2854177 () Bool)

(assert (=> b!2485825 m!2854177))

(declare-fun m!2854179 () Bool)

(assert (=> b!2485825 m!2854179))

(declare-fun m!2854181 () Bool)

(assert (=> b!2485833 m!2854181))

(declare-fun m!2854183 () Bool)

(assert (=> bm!152434 m!2854183))

(declare-fun m!2854185 () Bool)

(assert (=> bm!152433 m!2854185))

(assert (=> bm!152429 m!2854017))

(declare-fun m!2854187 () Bool)

(assert (=> bm!152431 m!2854187))

(assert (=> b!2485829 m!2854161))

(assert (=> b!2485829 m!2854161))

(declare-fun m!2854189 () Bool)

(assert (=> b!2485829 m!2854189))

(assert (=> b!2485829 m!2854189))

(declare-fun m!2854191 () Bool)

(assert (=> b!2485829 m!2854191))

(assert (=> bm!152430 m!2854025))

(assert (=> d!713664 m!2854139))

(declare-fun m!2854193 () Bool)

(assert (=> d!713664 m!2854193))

(assert (=> d!713664 m!2853987))

(declare-fun m!2854195 () Bool)

(assert (=> d!713664 m!2854195))

(assert (=> d!713664 m!2854017))

(assert (=> d!713664 m!2854021))

(assert (=> d!713664 m!2854021))

(declare-fun m!2854197 () Bool)

(assert (=> d!713664 m!2854197))

(assert (=> d!713664 m!2854139))

(assert (=> d!713664 m!2854025))

(declare-fun m!2854199 () Bool)

(assert (=> bm!152432 m!2854199))

(assert (=> b!2485835 m!2854017))

(assert (=> b!2485835 m!2854161))

(declare-fun m!2854201 () Bool)

(assert (=> b!2485835 m!2854201))

(declare-fun m!2854203 () Bool)

(assert (=> b!2485835 m!2854203))

(assert (=> b!2485692 d!713664))

(declare-fun bs!467949 () Bool)

(declare-fun b!2485840 () Bool)

(assert (= bs!467949 (and b!2485840 d!713622)))

(declare-fun lambda!94517 () Int)

(assert (=> bs!467949 (not (= lambda!94517 lambda!94499))))

(declare-fun bs!467950 () Bool)

(assert (= bs!467950 (and b!2485840 b!2485696)))

(assert (=> bs!467950 (= lambda!94517 lambda!94494)))

(declare-fun bs!467951 () Bool)

(assert (= bs!467951 (and b!2485840 d!713632)))

(assert (=> bs!467951 (= lambda!94517 lambda!94507)))

(declare-fun bs!467952 () Bool)

(assert (= bs!467952 (and b!2485840 b!2485835)))

(assert (=> bs!467952 (= lambda!94517 lambda!94514)))

(declare-fun bs!467953 () Bool)

(assert (= bs!467953 (and b!2485840 d!713616)))

(assert (=> bs!467953 (not (= lambda!94517 lambda!94498))))

(declare-fun bs!467954 () Bool)

(assert (= bs!467954 (and b!2485840 d!713614)))

(assert (=> bs!467954 (not (= lambda!94517 lambda!94497))))

(declare-fun bs!467955 () Bool)

(assert (= bs!467955 (and b!2485840 d!713636)))

(assert (=> bs!467955 (not (= lambda!94517 lambda!94510))))

(declare-fun d!713666 () Bool)

(declare-fun res!1052192 () Bool)

(declare-fun e!1578375 () Bool)

(assert (=> d!713666 (=> (not res!1052192) (not e!1578375))))

(assert (=> d!713666 (= res!1052192 (valid!2625 (v!31635 (underlying!7036 (_2!17130 lt!891839)))))))

(assert (=> d!713666 (= (valid!2624 (_2!17130 lt!891839)) e!1578375)))

(declare-fun res!1052193 () Bool)

(assert (=> b!2485840 (=> (not res!1052193) (not e!1578375))))

(assert (=> b!2485840 (= res!1052193 (forall!6007 (toList!1662 (map!6316 (v!31635 (underlying!7036 (_2!17130 lt!891839))))) lambda!94517))))

(declare-fun b!2485841 () Bool)

(assert (=> b!2485841 (= e!1578375 (allKeysSameHashInMap!191 (map!6316 (v!31635 (underlying!7036 (_2!17130 lt!891839)))) (hashF!5325 (_2!17130 lt!891839))))))

(assert (= (and d!713666 res!1052192) b!2485840))

(assert (= (and b!2485840 res!1052193) b!2485841))

(declare-fun m!2854205 () Bool)

(assert (=> d!713666 m!2854205))

(assert (=> b!2485840 m!2853999))

(declare-fun m!2854207 () Bool)

(assert (=> b!2485840 m!2854207))

(assert (=> b!2485841 m!2853999))

(assert (=> b!2485841 m!2853999))

(declare-fun m!2854209 () Bool)

(assert (=> b!2485841 m!2854209))

(assert (=> b!2485687 d!713666))

(declare-fun bs!467956 () Bool)

(declare-fun b!2485842 () Bool)

(assert (= bs!467956 (and b!2485842 d!713622)))

(declare-fun lambda!94518 () Int)

(assert (=> bs!467956 (not (= lambda!94518 lambda!94499))))

(declare-fun bs!467957 () Bool)

(assert (= bs!467957 (and b!2485842 b!2485696)))

(assert (=> bs!467957 (= lambda!94518 lambda!94494)))

(declare-fun bs!467958 () Bool)

(assert (= bs!467958 (and b!2485842 b!2485840)))

(assert (=> bs!467958 (= lambda!94518 lambda!94517)))

(declare-fun bs!467959 () Bool)

(assert (= bs!467959 (and b!2485842 d!713632)))

(assert (=> bs!467959 (= lambda!94518 lambda!94507)))

(declare-fun bs!467960 () Bool)

(assert (= bs!467960 (and b!2485842 b!2485835)))

(assert (=> bs!467960 (= lambda!94518 lambda!94514)))

(declare-fun bs!467961 () Bool)

(assert (= bs!467961 (and b!2485842 d!713616)))

(assert (=> bs!467961 (not (= lambda!94518 lambda!94498))))

(declare-fun bs!467962 () Bool)

(assert (= bs!467962 (and b!2485842 d!713614)))

(assert (=> bs!467962 (not (= lambda!94518 lambda!94497))))

(declare-fun bs!467963 () Bool)

(assert (= bs!467963 (and b!2485842 d!713636)))

(assert (=> bs!467963 (not (= lambda!94518 lambda!94510))))

(declare-fun d!713668 () Bool)

(declare-fun res!1052194 () Bool)

(declare-fun e!1578376 () Bool)

(assert (=> d!713668 (=> (not res!1052194) (not e!1578376))))

(assert (=> d!713668 (= res!1052194 (valid!2625 (v!31635 (underlying!7036 thiss!42540))))))

(assert (=> d!713668 (= (valid!2624 thiss!42540) e!1578376)))

(declare-fun res!1052195 () Bool)

(assert (=> b!2485842 (=> (not res!1052195) (not e!1578376))))

(assert (=> b!2485842 (= res!1052195 (forall!6007 (toList!1662 (map!6316 (v!31635 (underlying!7036 thiss!42540)))) lambda!94518))))

(declare-fun b!2485843 () Bool)

(assert (=> b!2485843 (= e!1578376 (allKeysSameHashInMap!191 (map!6316 (v!31635 (underlying!7036 thiss!42540))) (hashF!5325 thiss!42540)))))

(assert (= (and d!713668 res!1052194) b!2485842))

(assert (= (and b!2485842 res!1052195) b!2485843))

(assert (=> d!713668 m!2854125))

(assert (=> b!2485842 m!2854017))

(declare-fun m!2854211 () Bool)

(assert (=> b!2485842 m!2854211))

(assert (=> b!2485843 m!2854017))

(assert (=> b!2485843 m!2854017))

(declare-fun m!2854213 () Bool)

(assert (=> b!2485843 m!2854213))

(assert (=> b!2485683 d!713668))

(declare-fun e!1578379 () Bool)

(declare-fun tp!795756 () Bool)

(declare-fun tp_is_empty!12385 () Bool)

(declare-fun b!2485848 () Bool)

(assert (=> b!2485848 (= e!1578379 (and tp_is_empty!12383 tp_is_empty!12385 tp!795756))))

(assert (=> b!2485684 (= tp!795748 e!1578379)))

(assert (= (and b!2485684 ((_ is Cons!29204) mapDefault!15750)) b!2485848))

(declare-fun e!1578380 () Bool)

(declare-fun b!2485849 () Bool)

(declare-fun tp!795757 () Bool)

(assert (=> b!2485849 (= e!1578380 (and tp_is_empty!12383 tp_is_empty!12385 tp!795757))))

(assert (=> b!2485694 (= tp!795747 e!1578380)))

(assert (= (and b!2485694 ((_ is Cons!29204) (zeroValue!3672 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540))))))) b!2485849))

(declare-fun b!2485850 () Bool)

(declare-fun tp!795758 () Bool)

(declare-fun e!1578381 () Bool)

(assert (=> b!2485850 (= e!1578381 (and tp_is_empty!12383 tp_is_empty!12385 tp!795758))))

(assert (=> b!2485694 (= tp!795749 e!1578381)))

(assert (= (and b!2485694 ((_ is Cons!29204) (minValue!3672 (v!31634 (underlying!7035 (v!31635 (underlying!7036 thiss!42540))))))) b!2485850))

(declare-fun condMapEmpty!15753 () Bool)

(declare-fun mapDefault!15753 () List!29304)

(assert (=> mapNonEmpty!15750 (= condMapEmpty!15753 (= mapRest!15750 ((as const (Array (_ BitVec 32) List!29304)) mapDefault!15753)))))

(declare-fun e!1578387 () Bool)

(declare-fun mapRes!15753 () Bool)

(assert (=> mapNonEmpty!15750 (= tp!795750 (and e!1578387 mapRes!15753))))

(declare-fun mapNonEmpty!15753 () Bool)

(declare-fun tp!795767 () Bool)

(declare-fun e!1578386 () Bool)

(assert (=> mapNonEmpty!15753 (= mapRes!15753 (and tp!795767 e!1578386))))

(declare-fun mapValue!15753 () List!29304)

(declare-fun mapKey!15753 () (_ BitVec 32))

(declare-fun mapRest!15753 () (Array (_ BitVec 32) List!29304))

(assert (=> mapNonEmpty!15753 (= mapRest!15750 (store mapRest!15753 mapKey!15753 mapValue!15753))))

(declare-fun mapIsEmpty!15753 () Bool)

(assert (=> mapIsEmpty!15753 mapRes!15753))

(declare-fun b!2485858 () Bool)

(declare-fun tp!795766 () Bool)

(assert (=> b!2485858 (= e!1578387 (and tp_is_empty!12383 tp_is_empty!12385 tp!795766))))

(declare-fun tp!795765 () Bool)

(declare-fun b!2485857 () Bool)

(assert (=> b!2485857 (= e!1578386 (and tp_is_empty!12383 tp_is_empty!12385 tp!795765))))

(assert (= (and mapNonEmpty!15750 condMapEmpty!15753) mapIsEmpty!15753))

(assert (= (and mapNonEmpty!15750 (not condMapEmpty!15753)) mapNonEmpty!15753))

(assert (= (and mapNonEmpty!15753 ((_ is Cons!29204) mapValue!15753)) b!2485857))

(assert (= (and mapNonEmpty!15750 ((_ is Cons!29204) mapDefault!15753)) b!2485858))

(declare-fun m!2854215 () Bool)

(assert (=> mapNonEmpty!15753 m!2854215))

(declare-fun tp!795768 () Bool)

(declare-fun b!2485859 () Bool)

(declare-fun e!1578388 () Bool)

(assert (=> b!2485859 (= e!1578388 (and tp_is_empty!12383 tp_is_empty!12385 tp!795768))))

(assert (=> mapNonEmpty!15750 (= tp!795752 e!1578388)))

(assert (= (and mapNonEmpty!15750 ((_ is Cons!29204) mapValue!15750)) b!2485859))

(declare-fun b_lambda!76333 () Bool)

(assert (= b_lambda!76329 (or b!2485696 b_lambda!76333)))

(declare-fun bs!467964 () Bool)

(declare-fun d!713670 () Bool)

(assert (= bs!467964 (and d!713670 b!2485696)))

(assert (=> bs!467964 (= (dynLambda!12502 lambda!94494 (tuple2!29175 lt!891830 lt!891835)) (noDuplicateKeys!116 (_2!17129 (tuple2!29175 lt!891830 lt!891835))))))

(declare-fun m!2854217 () Bool)

(assert (=> bs!467964 m!2854217))

(assert (=> d!713646 d!713670))

(declare-fun b_lambda!76335 () Bool)

(assert (= b_lambda!76323 (or b!2485696 b_lambda!76335)))

(declare-fun bs!467965 () Bool)

(declare-fun d!713672 () Bool)

(assert (= bs!467965 (and d!713672 b!2485696)))

(assert (=> bs!467965 (= (dynLambda!12502 lambda!94494 (h!34620 (toList!1662 lt!891832))) (noDuplicateKeys!116 (_2!17129 (h!34620 (toList!1662 lt!891832)))))))

(declare-fun m!2854219 () Bool)

(assert (=> bs!467965 m!2854219))

(assert (=> b!2485734 d!713672))

(declare-fun b_lambda!76337 () Bool)

(assert (= b_lambda!76327 (or b!2485696 b_lambda!76337)))

(declare-fun bs!467966 () Bool)

(declare-fun d!713674 () Bool)

(assert (= bs!467966 (and d!713674 b!2485696)))

(assert (=> bs!467966 (= (dynLambda!12502 lambda!94494 (h!34620 (toList!1662 lt!891838))) (noDuplicateKeys!116 (_2!17129 (h!34620 (toList!1662 lt!891838)))))))

(declare-fun m!2854221 () Bool)

(assert (=> bs!467966 m!2854221))

(assert (=> b!2485747 d!713674))

(declare-fun b_lambda!76339 () Bool)

(assert (= b_lambda!76331 (or (and b!2485694 b_free!72513) b_lambda!76339)))

(declare-fun b_lambda!76341 () Bool)

(assert (= b_lambda!76325 (or b!2485696 b_lambda!76341)))

(declare-fun bs!467967 () Bool)

(declare-fun d!713676 () Bool)

(assert (= bs!467967 (and d!713676 b!2485696)))

(assert (=> bs!467967 (= (dynLambda!12502 lambda!94494 (h!34620 (toList!1662 lt!891843))) (noDuplicateKeys!116 (_2!17129 (h!34620 (toList!1662 lt!891843)))))))

(declare-fun m!2854223 () Bool)

(assert (=> bs!467967 m!2854223))

(assert (=> b!2485739 d!713676))

(check-sat (not b!2485720) (not b!2485841) (not b!2485857) (not d!713650) (not d!713646) (not b_next!73217) (not b!2485825) b_and!188795 (not d!713652) (not b!2485774) (not b!2485718) (not b!2485849) (not b!2485858) (not b!2485773) (not d!713640) (not b!2485721) (not d!713616) (not d!713666) (not b!2485789) (not b!2485740) (not bm!152416) (not b!2485840) b_and!188797 (not bm!152430) (not b!2485833) (not b_lambda!76337) (not bs!467965) (not b!2485795) (not b!2485829) (not b!2485801) (not b!2485748) (not b!2485859) (not b!2485843) (not bm!152432) (not b!2485778) (not bm!152410) (not b_next!73219) (not b!2485738) (not bs!467964) (not d!713614) tp_is_empty!12383 (not d!713642) (not b!2485771) (not bm!152434) (not d!713658) (not bs!467967) (not b!2485842) (not b_lambda!76341) (not d!713632) tp_is_empty!12385 (not b!2485723) (not d!713662) (not b!2485725) (not b!2485796) (not bm!152433) (not bm!152431) (not d!713654) (not d!713622) (not bm!152429) (not d!713668) (not b!2485717) (not d!713624) (not b!2485746) (not bs!467966) (not d!713636) (not b_lambda!76333) (not tb!140403) (not b_lambda!76339) (not d!713664) (not d!713638) (not b!2485850) (not b!2485745) (not d!713648) (not bm!152415) (not mapNonEmpty!15753) (not b!2485751) (not d!713628) (not b!2485848) (not d!713626) (not b!2485776) (not b!2485835) (not b!2485719) (not b_lambda!76335) (not b!2485735) (not d!713656) (not b!2485827))
(check-sat b_and!188795 b_and!188797 (not b_next!73217) (not b_next!73219))
