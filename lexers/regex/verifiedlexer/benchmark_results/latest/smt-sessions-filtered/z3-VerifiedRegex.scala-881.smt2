; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46542 () Bool)

(assert start!46542)

(declare-fun b_free!13355 () Bool)

(declare-fun b_next!13355 () Bool)

(assert (=> start!46542 (= b_free!13355 (not b_next!13355))))

(declare-fun tp!160061 () Bool)

(declare-fun b_and!50783 () Bool)

(assert (=> start!46542 (= tp!160061 b_and!50783)))

(declare-fun b!513872 () Bool)

(declare-fun b_free!13357 () Bool)

(declare-fun b_next!13357 () Bool)

(assert (=> b!513872 (= b_free!13357 (not b_next!13357))))

(declare-fun tp!160059 () Bool)

(declare-fun b_and!50785 () Bool)

(assert (=> b!513872 (= tp!160059 b_and!50785)))

(declare-fun b!513876 () Bool)

(declare-fun b_free!13359 () Bool)

(declare-fun b_next!13359 () Bool)

(assert (=> b!513876 (= b_free!13359 (not b_next!13359))))

(declare-fun tp!160058 () Bool)

(declare-fun b_and!50787 () Bool)

(assert (=> b!513876 (= tp!160058 b_and!50787)))

(declare-fun b!513868 () Bool)

(declare-fun e!307079 () Bool)

(declare-fun e!307077 () Bool)

(assert (=> b!513868 (= e!307079 e!307077)))

(declare-fun b!513869 () Bool)

(declare-fun e!307083 () Bool)

(declare-fun tp!160057 () Bool)

(declare-fun mapRes!1864 () Bool)

(assert (=> b!513869 (= e!307083 (and tp!160057 mapRes!1864))))

(declare-fun condMapEmpty!1864 () Bool)

(declare-datatypes ((V!1420 0))(
  ( (V!1421 (val!1721 Int)) )
))
(declare-datatypes ((K!1322 0))(
  ( (K!1323 (val!1722 Int)) )
))
(declare-datatypes ((tuple2!5590 0))(
  ( (tuple2!5591 (_1!3011 K!1322) (_2!3011 V!1420)) )
))
(declare-datatypes ((List!4676 0))(
  ( (Nil!4666) (Cons!4666 (h!10063 tuple2!5590) (t!73200 List!4676)) )
))
(declare-datatypes ((array!1841 0))(
  ( (array!1842 (arr!850 (Array (_ BitVec 32) List!4676)) (size!3784 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!455 0))(
  ( (HashableExt!454 (__x!3340 Int)) )
))
(declare-datatypes ((array!1843 0))(
  ( (array!1844 (arr!851 (Array (_ BitVec 32) (_ BitVec 64))) (size!3785 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!966 0))(
  ( (LongMapFixedSize!967 (defaultEntry!834 Int) (mask!1889 (_ BitVec 32)) (extraKeys!729 (_ BitVec 32)) (zeroValue!739 List!4676) (minValue!739 List!4676) (_size!1075 (_ BitVec 32)) (_keys!774 array!1843) (_values!761 array!1841) (_vacant!544 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1873 0))(
  ( (Cell!1874 (v!15683 LongMapFixedSize!966)) )
))
(declare-datatypes ((MutLongMap!483 0))(
  ( (LongMap!483 (underlying!1145 Cell!1873)) (MutLongMapExt!482 (__x!3341 Int)) )
))
(declare-datatypes ((Cell!1875 0))(
  ( (Cell!1876 (v!15684 MutLongMap!483)) )
))
(declare-datatypes ((MutableMap!455 0))(
  ( (MutableMapExt!454 (__x!3342 Int)) (HashMap!455 (underlying!1146 Cell!1875) (hashF!2331 Hashable!455) (_size!1076 (_ BitVec 32)) (defaultValue!604 Int)) )
))
(declare-fun hm!65 () MutableMap!455)

(declare-fun mapDefault!1864 () List!4676)

(assert (=> b!513869 (= condMapEmpty!1864 (= (arr!850 (_values!761 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) ((as const (Array (_ BitVec 32) List!4676)) mapDefault!1864)))))

(declare-fun mapNonEmpty!1864 () Bool)

(declare-fun tp!160060 () Bool)

(declare-fun tp!160056 () Bool)

(assert (=> mapNonEmpty!1864 (= mapRes!1864 (and tp!160060 tp!160056))))

(declare-fun mapValue!1864 () List!4676)

(declare-fun mapRest!1864 () (Array (_ BitVec 32) List!4676))

(declare-fun mapKey!1864 () (_ BitVec 32))

(assert (=> mapNonEmpty!1864 (= (arr!850 (_values!761 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) (store mapRest!1864 mapKey!1864 mapValue!1864))))

(declare-fun b!513870 () Bool)

(declare-fun e!307084 () Bool)

(assert (=> b!513870 (= e!307077 e!307084)))

(declare-fun b!513871 () Bool)

(declare-fun e!307082 () Bool)

(declare-datatypes ((tuple2!5592 0))(
  ( (tuple2!5593 (_1!3012 Bool) (_2!3012 MutableMap!455)) )
))
(declare-fun lt!212625 () tuple2!5592)

(get-info :version)

(assert (=> b!513871 (= e!307082 (not ((_ is HashMap!455) (_2!3012 lt!212625))))))

(declare-fun e!307080 () Bool)

(declare-fun e!307086 () Bool)

(assert (=> b!513872 (= e!307080 (and e!307086 tp!160059))))

(declare-fun b!513873 () Bool)

(declare-fun lt!212626 () MutLongMap!483)

(assert (=> b!513873 (= e!307086 (and e!307079 ((_ is LongMap!483) lt!212626)))))

(assert (=> b!513873 (= lt!212626 (v!15684 (underlying!1146 hm!65)))))

(declare-fun b!513874 () Bool)

(declare-fun e!307078 () Bool)

(assert (=> b!513874 (= e!307078 e!307082)))

(declare-fun res!217874 () Bool)

(assert (=> b!513874 (=> (not res!217874) (not e!307082))))

(declare-fun valid!438 (MutableMap!455) Bool)

(assert (=> b!513874 (= res!217874 (valid!438 (_2!3012 lt!212625)))))

(declare-fun k0!1740 () K!1322)

(declare-fun remove!9 (MutableMap!455 K!1322) tuple2!5592)

(assert (=> b!513874 (= lt!212625 (remove!9 hm!65 k0!1740))))

(declare-datatypes ((ListMap!119 0))(
  ( (ListMap!120 (toList!372 List!4676)) )
))
(declare-fun lt!212623 () ListMap!119)

(declare-fun lt!212624 () ListMap!119)

(declare-fun -!6 (ListMap!119 K!1322) ListMap!119)

(assert (=> b!513874 (= lt!212623 (-!6 lt!212624 k0!1740))))

(declare-fun b!513875 () Bool)

(declare-fun res!217875 () Bool)

(declare-fun e!307081 () Bool)

(assert (=> b!513875 (=> (not res!217875) (not e!307081))))

(assert (=> b!513875 (= res!217875 (valid!438 hm!65))))

(declare-fun mapIsEmpty!1864 () Bool)

(assert (=> mapIsEmpty!1864 mapRes!1864))

(declare-fun res!217876 () Bool)

(assert (=> start!46542 (=> (not res!217876) (not e!307081))))

(assert (=> start!46542 (= res!217876 ((_ is HashMap!455) hm!65))))

(assert (=> start!46542 e!307081))

(assert (=> start!46542 e!307080))

(assert (=> start!46542 tp!160061))

(declare-fun tp_is_empty!2529 () Bool)

(assert (=> start!46542 tp_is_empty!2529))

(declare-fun tp!160062 () Bool)

(declare-fun tp!160063 () Bool)

(declare-fun array_inv!611 (array!1843) Bool)

(declare-fun array_inv!612 (array!1841) Bool)

(assert (=> b!513876 (= e!307084 (and tp!160058 tp!160063 tp!160062 (array_inv!611 (_keys!774 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) (array_inv!612 (_values!761 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) e!307083))))

(declare-fun b!513877 () Bool)

(assert (=> b!513877 (= e!307081 e!307078)))

(declare-fun res!217873 () Bool)

(assert (=> b!513877 (=> (not res!217873) (not e!307078))))

(declare-fun p!6060 () Int)

(declare-fun forall!1357 (List!4676 Int) Bool)

(assert (=> b!513877 (= res!217873 (forall!1357 (toList!372 lt!212624) p!6060))))

(declare-fun map!974 (MutableMap!455) ListMap!119)

(assert (=> b!513877 (= lt!212624 (map!974 hm!65))))

(assert (= (and start!46542 res!217876) b!513875))

(assert (= (and b!513875 res!217875) b!513877))

(assert (= (and b!513877 res!217873) b!513874))

(assert (= (and b!513874 res!217874) b!513871))

(assert (= (and b!513869 condMapEmpty!1864) mapIsEmpty!1864))

(assert (= (and b!513869 (not condMapEmpty!1864)) mapNonEmpty!1864))

(assert (= b!513876 b!513869))

(assert (= b!513870 b!513876))

(assert (= b!513868 b!513870))

(assert (= (and b!513873 ((_ is LongMap!483) (v!15684 (underlying!1146 hm!65)))) b!513868))

(assert (= b!513872 b!513873))

(assert (= (and start!46542 ((_ is HashMap!455) hm!65)) b!513872))

(declare-fun m!759907 () Bool)

(assert (=> mapNonEmpty!1864 m!759907))

(declare-fun m!759909 () Bool)

(assert (=> b!513876 m!759909))

(declare-fun m!759911 () Bool)

(assert (=> b!513876 m!759911))

(declare-fun m!759913 () Bool)

(assert (=> b!513875 m!759913))

(declare-fun m!759915 () Bool)

(assert (=> b!513877 m!759915))

(declare-fun m!759917 () Bool)

(assert (=> b!513877 m!759917))

(declare-fun m!759919 () Bool)

(assert (=> b!513874 m!759919))

(declare-fun m!759921 () Bool)

(assert (=> b!513874 m!759921))

(declare-fun m!759923 () Bool)

(assert (=> b!513874 m!759923))

(check-sat (not b_next!13357) tp_is_empty!2529 (not b!513877) (not b!513869) (not mapNonEmpty!1864) b_and!50783 (not b!513874) b_and!50787 (not b!513876) b_and!50785 (not b_next!13359) (not b_next!13355) (not b!513875))
(check-sat (not b_next!13357) b_and!50783 (not b_next!13355) b_and!50787 b_and!50785 (not b_next!13359))
(get-model)

(declare-fun d!184262 () Bool)

(declare-fun res!217881 () Bool)

(declare-fun e!307089 () Bool)

(assert (=> d!184262 (=> (not res!217881) (not e!307089))))

(declare-fun valid!439 (MutLongMap!483) Bool)

(assert (=> d!184262 (= res!217881 (valid!439 (v!15684 (underlying!1146 (_2!3012 lt!212625)))))))

(assert (=> d!184262 (= (valid!438 (_2!3012 lt!212625)) e!307089)))

(declare-fun b!513882 () Bool)

(declare-fun res!217882 () Bool)

(assert (=> b!513882 (=> (not res!217882) (not e!307089))))

(declare-fun lambda!14298 () Int)

(declare-datatypes ((tuple2!5594 0))(
  ( (tuple2!5595 (_1!3013 (_ BitVec 64)) (_2!3013 List!4676)) )
))
(declare-datatypes ((List!4677 0))(
  ( (Nil!4667) (Cons!4667 (h!10064 tuple2!5594) (t!73203 List!4677)) )
))
(declare-fun forall!1358 (List!4677 Int) Bool)

(declare-datatypes ((ListLongMap!57 0))(
  ( (ListLongMap!58 (toList!373 List!4677)) )
))
(declare-fun map!975 (MutLongMap!483) ListLongMap!57)

(assert (=> b!513882 (= res!217882 (forall!1358 (toList!373 (map!975 (v!15684 (underlying!1146 (_2!3012 lt!212625))))) lambda!14298))))

(declare-fun b!513883 () Bool)

(declare-fun allKeysSameHashInMap!17 (ListLongMap!57 Hashable!455) Bool)

(assert (=> b!513883 (= e!307089 (allKeysSameHashInMap!17 (map!975 (v!15684 (underlying!1146 (_2!3012 lt!212625)))) (hashF!2331 (_2!3012 lt!212625))))))

(assert (= (and d!184262 res!217881) b!513882))

(assert (= (and b!513882 res!217882) b!513883))

(declare-fun m!759925 () Bool)

(assert (=> d!184262 m!759925))

(declare-fun m!759927 () Bool)

(assert (=> b!513882 m!759927))

(declare-fun m!759929 () Bool)

(assert (=> b!513882 m!759929))

(assert (=> b!513883 m!759927))

(assert (=> b!513883 m!759927))

(declare-fun m!759931 () Bool)

(assert (=> b!513883 m!759931))

(assert (=> b!513874 d!184262))

(declare-fun bs!59403 () Bool)

(declare-fun b!513912 () Bool)

(assert (= bs!59403 (and b!513912 b!513882)))

(declare-fun lambda!14305 () Int)

(assert (=> bs!59403 (= lambda!14305 lambda!14298)))

(declare-fun b!513906 () Bool)

(declare-fun call!37353 () ListMap!119)

(declare-fun lt!212688 () ListMap!119)

(assert (=> b!513906 (= call!37353 lt!212688)))

(declare-datatypes ((Unit!8428 0))(
  ( (Unit!8429) )
))
(declare-fun lt!212695 () Unit!8428)

(declare-fun Unit!8430 () Unit!8428)

(assert (=> b!513906 (= lt!212695 Unit!8430)))

(declare-fun call!37360 () Bool)

(assert (=> b!513906 call!37360))

(declare-fun e!307105 () Unit!8428)

(declare-fun Unit!8431 () Unit!8428)

(assert (=> b!513906 (= e!307105 Unit!8431)))

(declare-fun b!513907 () Bool)

(declare-fun e!307106 () ListMap!119)

(declare-fun call!37355 () ListMap!119)

(assert (=> b!513907 (= e!307106 call!37355)))

(declare-fun b!513908 () Bool)

(declare-fun e!307107 () Bool)

(declare-fun call!37359 () Bool)

(assert (=> b!513908 (= e!307107 call!37359)))

(declare-fun bm!37348 () Bool)

(assert (=> bm!37348 (= call!37355 (map!974 hm!65))))

(declare-fun b!513909 () Bool)

(declare-fun call!37356 () ListMap!119)

(declare-fun eq!9 (ListMap!119 ListMap!119) Bool)

(assert (=> b!513909 (eq!9 call!37353 call!37356)))

(declare-fun lt!212692 () Unit!8428)

(declare-fun lt!212687 () Unit!8428)

(assert (=> b!513909 (= lt!212692 lt!212687)))

(declare-fun call!37357 () ListMap!119)

(declare-fun lt!212691 () List!4676)

(declare-fun lt!212694 () (_ BitVec 64))

(declare-fun lt!212711 () ListLongMap!57)

(declare-fun extractMap!10 (List!4677) ListMap!119)

(declare-fun +!13 (ListLongMap!57 tuple2!5594) ListLongMap!57)

(assert (=> b!513909 (eq!9 (extractMap!10 (toList!373 (+!13 lt!212711 (tuple2!5595 lt!212694 lt!212691)))) (-!6 call!37357 k0!1740))))

(declare-datatypes ((tuple2!5596 0))(
  ( (tuple2!5597 (_1!3014 Unit!8428) (_2!3014 MutableMap!455)) )
))
(declare-fun lt!212715 () tuple2!5596)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!2 (ListLongMap!57 (_ BitVec 64) List!4676 K!1322 Hashable!455) Unit!8428)

(assert (=> b!513909 (= lt!212687 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!2 lt!212711 lt!212694 lt!212691 k0!1740 (hashF!2331 (_2!3014 lt!212715))))))

(declare-fun lt!212696 () Unit!8428)

(declare-fun Unit!8432 () Unit!8428)

(assert (=> b!513909 (= lt!212696 Unit!8432)))

(declare-fun contains!1059 (ListMap!119 K!1322) Bool)

(assert (=> b!513909 (contains!1059 lt!212688 k0!1740)))

(declare-fun lt!212690 () Unit!8428)

(declare-fun Unit!8433 () Unit!8428)

(assert (=> b!513909 (= lt!212690 Unit!8433)))

(assert (=> b!513909 call!37360))

(declare-fun lt!212693 () Unit!8428)

(declare-fun Unit!8434 () Unit!8428)

(assert (=> b!513909 (= lt!212693 Unit!8434)))

(declare-fun call!37358 () ListLongMap!57)

(assert (=> b!513909 (allKeysSameHashInMap!17 call!37358 (hashF!2331 (_2!3014 lt!212715)))))

(declare-fun lt!212707 () Unit!8428)

(declare-fun Unit!8435 () Unit!8428)

(assert (=> b!513909 (= lt!212707 Unit!8435)))

(assert (=> b!513909 (forall!1358 (toList!373 call!37358) lambda!14305)))

(declare-fun lt!212714 () Unit!8428)

(declare-fun lt!212716 () Unit!8428)

(assert (=> b!513909 (= lt!212714 lt!212716)))

(declare-fun e!307104 () Bool)

(assert (=> b!513909 e!307104))

(declare-fun res!217891 () Bool)

(assert (=> b!513909 (=> (not res!217891) (not e!307104))))

(declare-fun lt!212706 () ListLongMap!57)

(assert (=> b!513909 (= res!217891 (forall!1358 (toList!373 lt!212706) lambda!14305))))

(assert (=> b!513909 (= lt!212706 (+!13 lt!212711 (tuple2!5595 lt!212694 lt!212691)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!4 (ListLongMap!57 (_ BitVec 64) List!4676 Hashable!455) Unit!8428)

(assert (=> b!513909 (= lt!212716 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!4 lt!212711 lt!212694 lt!212691 (hashF!2331 (_2!3014 lt!212715))))))

(declare-fun lt!212700 () Unit!8428)

(declare-fun lt!212699 () Unit!8428)

(assert (=> b!513909 (= lt!212700 lt!212699)))

(declare-fun lt!212712 () List!4676)

(declare-fun allKeysSameHash!5 (List!4676 (_ BitVec 64) Hashable!455) Bool)

(declare-fun removePairForKey!4 (List!4676 K!1322) List!4676)

(assert (=> b!513909 (allKeysSameHash!5 (removePairForKey!4 lt!212712 k0!1740) lt!212694 (hashF!2331 (_2!3014 lt!212715)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!4 (List!4676 K!1322 (_ BitVec 64) Hashable!455) Unit!8428)

(assert (=> b!513909 (= lt!212699 (lemmaRemovePairForKeyPreservesHash!4 lt!212712 k0!1740 lt!212694 (hashF!2331 (_2!3014 lt!212715))))))

(declare-fun lt!212705 () Unit!8428)

(declare-fun lt!212689 () Unit!8428)

(assert (=> b!513909 (= lt!212705 lt!212689)))

(assert (=> b!513909 (allKeysSameHash!5 lt!212712 lt!212694 (hashF!2331 (_2!3014 lt!212715)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!4 (List!4677 (_ BitVec 64) List!4676 Hashable!455) Unit!8428)

(assert (=> b!513909 (= lt!212689 (lemmaInLongMapAllKeySameHashThenForTuple!4 (toList!373 lt!212711) lt!212694 lt!212712 (hashF!2331 (_2!3014 lt!212715))))))

(declare-fun Unit!8436 () Unit!8428)

(assert (=> b!513909 (= e!307105 Unit!8436)))

(declare-fun b!513910 () Bool)

(assert (=> b!513910 (= e!307104 (allKeysSameHashInMap!17 lt!212706 (hashF!2331 (_2!3014 lt!212715))))))

(declare-fun b!513911 () Bool)

(declare-fun e!307103 () Bool)

(assert (=> b!513911 (= e!307103 e!307107)))

(declare-fun c!99776 () Bool)

(declare-fun lt!212709 () tuple2!5592)

(assert (=> b!513911 (= c!99776 (_1!3012 lt!212709))))

(declare-fun c!99775 () Bool)

(declare-fun lt!212701 () ListLongMap!57)

(declare-fun bm!37349 () Bool)

(assert (=> bm!37349 (= call!37357 (extractMap!10 (ite c!99775 (toList!373 lt!212701) (toList!373 lt!212711))))))

(declare-fun e!307102 () tuple2!5592)

(declare-datatypes ((tuple2!5598 0))(
  ( (tuple2!5599 (_1!3015 Bool) (_2!3015 MutLongMap!483)) )
))
(declare-fun lt!212708 () tuple2!5598)

(assert (=> b!513912 (= e!307102 (tuple2!5593 (_1!3015 lt!212708) (_2!3014 lt!212715)))))

(declare-fun hash!503 (Hashable!455 K!1322) (_ BitVec 64))

(assert (=> b!513912 (= lt!212694 (hash!503 (hashF!2331 hm!65) k0!1740))))

(declare-fun apply!1172 (MutLongMap!483 (_ BitVec 64)) List!4676)

(assert (=> b!513912 (= lt!212712 (apply!1172 (v!15684 (underlying!1146 hm!65)) lt!212694))))

(declare-fun lt!212713 () Unit!8428)

(declare-fun forallContained!435 (List!4677 Int tuple2!5594) Unit!8428)

(assert (=> b!513912 (= lt!212713 (forallContained!435 (toList!373 (map!975 (v!15684 (underlying!1146 hm!65)))) lambda!14305 (tuple2!5595 lt!212694 (apply!1172 (v!15684 (underlying!1146 hm!65)) lt!212694))))))

(assert (=> b!513912 (= lt!212688 (map!974 hm!65))))

(assert (=> b!513912 (= lt!212711 (map!975 (v!15684 (underlying!1146 hm!65))))))

(assert (=> b!513912 (= lt!212691 (removePairForKey!4 lt!212712 k0!1740))))

(declare-fun update!43 (MutLongMap!483 (_ BitVec 64) List!4676) tuple2!5598)

(assert (=> b!513912 (= lt!212708 (update!43 (v!15684 (underlying!1146 hm!65)) lt!212694 lt!212691))))

(declare-fun lt!212703 () Bool)

(declare-fun Unit!8437 () Unit!8428)

(declare-fun Unit!8438 () Unit!8428)

(assert (=> b!513912 (= lt!212715 (ite (and (_1!3015 lt!212708) lt!212703) (tuple2!5597 Unit!8437 (HashMap!455 (Cell!1876 (_2!3015 lt!212708)) (hashF!2331 hm!65) (bvsub (_size!1076 hm!65) #b00000000000000000000000000000001) (defaultValue!604 hm!65))) (tuple2!5597 Unit!8438 (HashMap!455 (Cell!1876 (_2!3015 lt!212708)) (hashF!2331 hm!65) (_size!1076 hm!65) (defaultValue!604 hm!65)))))))

(declare-fun lt!212710 () Unit!8428)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!4 (List!4676 K!1322) Unit!8428)

(assert (=> b!513912 (= lt!212710 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!4 lt!212712 k0!1740))))

(declare-fun noDuplicateKeys!6 (List!4676) Bool)

(assert (=> b!513912 (noDuplicateKeys!6 (removePairForKey!4 lt!212712 k0!1740))))

(declare-fun lt!212702 () Unit!8428)

(assert (=> b!513912 (= lt!212702 lt!212710)))

(declare-fun c!99777 () Bool)

(assert (=> b!513912 (= c!99777 (_1!3015 lt!212708))))

(declare-fun lt!212698 () Unit!8428)

(assert (=> b!513912 (= lt!212698 e!307105)))

(declare-fun bm!37350 () Bool)

(assert (=> bm!37350 (= call!37356 (-!6 (ite c!99775 call!37357 lt!212688) k0!1740))))

(declare-fun b!513913 () Bool)

(assert (=> b!513913 (= e!307102 (tuple2!5593 true hm!65))))

(assert (=> b!513913 (= lt!212701 call!37358)))

(declare-fun lt!212697 () Unit!8428)

(declare-fun lemmaRemoveNotContainedDoesNotChange!2 (ListLongMap!57 K!1322 Hashable!455) Unit!8428)

(assert (=> b!513913 (= lt!212697 (lemmaRemoveNotContainedDoesNotChange!2 lt!212701 k0!1740 (hashF!2331 hm!65)))))

(assert (=> b!513913 (= call!37357 call!37356)))

(declare-fun lt!212704 () Unit!8428)

(assert (=> b!513913 (= lt!212704 lt!212697)))

(declare-fun b!513914 () Bool)

(assert (=> b!513914 (= e!307106 (-!6 call!37355 k0!1740))))

(declare-fun b!513915 () Bool)

(declare-fun res!217890 () Bool)

(assert (=> b!513915 (=> (not res!217890) (not e!307103))))

(assert (=> b!513915 (= res!217890 (valid!438 (_2!3012 lt!212709)))))

(declare-fun bm!37351 () Bool)

(assert (=> bm!37351 (= call!37360 (valid!438 (_2!3014 lt!212715)))))

(declare-fun bm!37352 () Bool)

(declare-fun call!37354 () ListMap!119)

(assert (=> bm!37352 (= call!37354 (map!974 (_2!3012 lt!212709)))))

(declare-fun bm!37353 () Bool)

(assert (=> bm!37353 (= call!37353 (map!974 (_2!3014 lt!212715)))))

(declare-fun b!513916 () Bool)

(assert (=> b!513916 (= e!307107 call!37359)))

(declare-fun d!184264 () Bool)

(assert (=> d!184264 e!307103))

(declare-fun res!217889 () Bool)

(assert (=> d!184264 (=> (not res!217889) (not e!307103))))

(assert (=> d!184264 (= res!217889 ((_ is HashMap!455) (_2!3012 lt!212709)))))

(assert (=> d!184264 (= lt!212709 e!307102)))

(assert (=> d!184264 (= c!99775 (not lt!212703))))

(declare-fun contains!1060 (MutableMap!455 K!1322) Bool)

(assert (=> d!184264 (= lt!212703 (contains!1060 hm!65 k0!1740))))

(assert (=> d!184264 (valid!438 hm!65)))

(assert (=> d!184264 (= (remove!9 hm!65 k0!1740) lt!212709)))

(declare-fun bm!37354 () Bool)

(assert (=> bm!37354 (= call!37359 (eq!9 call!37354 e!307106))))

(declare-fun c!99774 () Bool)

(assert (=> bm!37354 (= c!99774 c!99776)))

(declare-fun bm!37355 () Bool)

(assert (=> bm!37355 (= call!37358 (map!975 (ite c!99775 (v!15684 (underlying!1146 hm!65)) (v!15684 (underlying!1146 (_2!3014 lt!212715))))))))

(assert (= (and d!184264 c!99775) b!513913))

(assert (= (and d!184264 (not c!99775)) b!513912))

(assert (= (and b!513912 c!99777) b!513909))

(assert (= (and b!513912 (not c!99777)) b!513906))

(assert (= (and b!513909 res!217891) b!513910))

(assert (= (or b!513909 b!513906) bm!37351))

(assert (= (or b!513909 b!513906) bm!37353))

(assert (= (or b!513913 b!513909) bm!37355))

(assert (= (or b!513913 b!513909) bm!37349))

(assert (= (or b!513913 b!513909) bm!37350))

(assert (= (and d!184264 res!217889) b!513915))

(assert (= (and b!513915 res!217890) b!513911))

(assert (= (and b!513911 c!99776) b!513908))

(assert (= (and b!513911 (not c!99776)) b!513916))

(assert (= (or b!513908 b!513916) bm!37348))

(assert (= (or b!513908 b!513916) bm!37352))

(assert (= (or b!513908 b!513916) bm!37354))

(assert (= (and bm!37354 c!99774) b!513914))

(assert (= (and bm!37354 (not c!99774)) b!513907))

(declare-fun m!759933 () Bool)

(assert (=> b!513909 m!759933))

(declare-fun m!759935 () Bool)

(assert (=> b!513909 m!759935))

(declare-fun m!759937 () Bool)

(assert (=> b!513909 m!759937))

(assert (=> b!513909 m!759933))

(declare-fun m!759939 () Bool)

(assert (=> b!513909 m!759939))

(declare-fun m!759941 () Bool)

(assert (=> b!513909 m!759941))

(declare-fun m!759943 () Bool)

(assert (=> b!513909 m!759943))

(declare-fun m!759945 () Bool)

(assert (=> b!513909 m!759945))

(declare-fun m!759947 () Bool)

(assert (=> b!513909 m!759947))

(declare-fun m!759949 () Bool)

(assert (=> b!513909 m!759949))

(declare-fun m!759951 () Bool)

(assert (=> b!513909 m!759951))

(assert (=> b!513909 m!759951))

(declare-fun m!759953 () Bool)

(assert (=> b!513909 m!759953))

(declare-fun m!759955 () Bool)

(assert (=> b!513909 m!759955))

(declare-fun m!759957 () Bool)

(assert (=> b!513909 m!759957))

(assert (=> b!513909 m!759937))

(declare-fun m!759959 () Bool)

(assert (=> b!513909 m!759959))

(declare-fun m!759961 () Bool)

(assert (=> b!513909 m!759961))

(declare-fun m!759963 () Bool)

(assert (=> b!513909 m!759963))

(assert (=> bm!37348 m!759917))

(declare-fun m!759965 () Bool)

(assert (=> bm!37349 m!759965))

(declare-fun m!759967 () Bool)

(assert (=> d!184264 m!759967))

(assert (=> d!184264 m!759913))

(declare-fun m!759969 () Bool)

(assert (=> b!513913 m!759969))

(declare-fun m!759971 () Bool)

(assert (=> bm!37350 m!759971))

(declare-fun m!759973 () Bool)

(assert (=> b!513915 m!759973))

(declare-fun m!759975 () Bool)

(assert (=> bm!37353 m!759975))

(declare-fun m!759977 () Bool)

(assert (=> bm!37351 m!759977))

(declare-fun m!759979 () Bool)

(assert (=> b!513914 m!759979))

(declare-fun m!759981 () Bool)

(assert (=> bm!37354 m!759981))

(assert (=> b!513912 m!759917))

(declare-fun m!759983 () Bool)

(assert (=> b!513912 m!759983))

(declare-fun m!759985 () Bool)

(assert (=> b!513912 m!759985))

(assert (=> b!513912 m!759951))

(declare-fun m!759987 () Bool)

(assert (=> b!513912 m!759987))

(declare-fun m!759989 () Bool)

(assert (=> b!513912 m!759989))

(assert (=> b!513912 m!759951))

(declare-fun m!759991 () Bool)

(assert (=> b!513912 m!759991))

(declare-fun m!759993 () Bool)

(assert (=> b!513912 m!759993))

(declare-fun m!759995 () Bool)

(assert (=> b!513912 m!759995))

(declare-fun m!759997 () Bool)

(assert (=> bm!37355 m!759997))

(declare-fun m!759999 () Bool)

(assert (=> bm!37352 m!759999))

(declare-fun m!760001 () Bool)

(assert (=> b!513910 m!760001))

(assert (=> b!513874 d!184264))

(declare-fun d!184266 () Bool)

(declare-fun e!307110 () Bool)

(assert (=> d!184266 e!307110))

(declare-fun res!217894 () Bool)

(assert (=> d!184266 (=> (not res!217894) (not e!307110))))

(declare-fun lt!212719 () ListMap!119)

(assert (=> d!184266 (= res!217894 (not (contains!1059 lt!212719 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!2 (List!4676 K!1322) List!4676)

(assert (=> d!184266 (= lt!212719 (ListMap!120 (removePresrvNoDuplicatedKeys!2 (toList!372 lt!212624) k0!1740)))))

(assert (=> d!184266 (= (-!6 lt!212624 k0!1740) lt!212719)))

(declare-fun b!513919 () Bool)

(declare-datatypes ((List!4678 0))(
  ( (Nil!4668) (Cons!4668 (h!10065 K!1322) (t!73204 List!4678)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!809 (List!4678) (InoxSet K!1322))

(declare-fun keys!1805 (ListMap!119) List!4678)

(assert (=> b!513919 (= e!307110 (= ((_ map and) (content!809 (keys!1805 lt!212624)) ((_ map not) (store ((as const (Array K!1322 Bool)) false) k0!1740 true))) (content!809 (keys!1805 lt!212719))))))

(assert (= (and d!184266 res!217894) b!513919))

(declare-fun m!760003 () Bool)

(assert (=> d!184266 m!760003))

(declare-fun m!760005 () Bool)

(assert (=> d!184266 m!760005))

(declare-fun m!760007 () Bool)

(assert (=> b!513919 m!760007))

(declare-fun m!760009 () Bool)

(assert (=> b!513919 m!760009))

(declare-fun m!760011 () Bool)

(assert (=> b!513919 m!760011))

(declare-fun m!760013 () Bool)

(assert (=> b!513919 m!760013))

(assert (=> b!513919 m!760007))

(assert (=> b!513919 m!760011))

(declare-fun m!760015 () Bool)

(assert (=> b!513919 m!760015))

(assert (=> b!513874 d!184266))

(declare-fun d!184268 () Bool)

(assert (=> d!184268 (= (array_inv!611 (_keys!774 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) (bvsge (size!3785 (_keys!774 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!513876 d!184268))

(declare-fun d!184270 () Bool)

(assert (=> d!184270 (= (array_inv!612 (_values!761 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) (bvsge (size!3784 (_values!761 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!513876 d!184270))

(declare-fun d!184272 () Bool)

(declare-fun res!217899 () Bool)

(declare-fun e!307115 () Bool)

(assert (=> d!184272 (=> res!217899 e!307115)))

(assert (=> d!184272 (= res!217899 ((_ is Nil!4666) (toList!372 lt!212624)))))

(assert (=> d!184272 (= (forall!1357 (toList!372 lt!212624) p!6060) e!307115)))

(declare-fun b!513924 () Bool)

(declare-fun e!307116 () Bool)

(assert (=> b!513924 (= e!307115 e!307116)))

(declare-fun res!217900 () Bool)

(assert (=> b!513924 (=> (not res!217900) (not e!307116))))

(declare-fun dynLambda!2965 (Int tuple2!5590) Bool)

(assert (=> b!513924 (= res!217900 (dynLambda!2965 p!6060 (h!10063 (toList!372 lt!212624))))))

(declare-fun b!513925 () Bool)

(assert (=> b!513925 (= e!307116 (forall!1357 (t!73200 (toList!372 lt!212624)) p!6060))))

(assert (= (and d!184272 (not res!217899)) b!513924))

(assert (= (and b!513924 res!217900) b!513925))

(declare-fun b_lambda!19969 () Bool)

(assert (=> (not b_lambda!19969) (not b!513924)))

(declare-fun t!73202 () Bool)

(declare-fun tb!47123 () Bool)

(assert (=> (and start!46542 (= p!6060 p!6060) t!73202) tb!47123))

(declare-fun result!52134 () Bool)

(assert (=> tb!47123 (= result!52134 true)))

(assert (=> b!513924 t!73202))

(declare-fun b_and!50789 () Bool)

(assert (= b_and!50783 (and (=> t!73202 result!52134) b_and!50789)))

(declare-fun m!760017 () Bool)

(assert (=> b!513924 m!760017))

(declare-fun m!760019 () Bool)

(assert (=> b!513925 m!760019))

(assert (=> b!513877 d!184272))

(declare-fun d!184274 () Bool)

(declare-fun lt!212722 () ListMap!119)

(declare-fun invariantList!42 (List!4676) Bool)

(assert (=> d!184274 (invariantList!42 (toList!372 lt!212722))))

(assert (=> d!184274 (= lt!212722 (extractMap!10 (toList!373 (map!975 (v!15684 (underlying!1146 hm!65))))))))

(assert (=> d!184274 (valid!438 hm!65)))

(assert (=> d!184274 (= (map!974 hm!65) lt!212722)))

(declare-fun bs!59404 () Bool)

(assert (= bs!59404 d!184274))

(declare-fun m!760021 () Bool)

(assert (=> bs!59404 m!760021))

(assert (=> bs!59404 m!759983))

(declare-fun m!760023 () Bool)

(assert (=> bs!59404 m!760023))

(assert (=> bs!59404 m!759913))

(assert (=> b!513877 d!184274))

(declare-fun bs!59405 () Bool)

(declare-fun b!513926 () Bool)

(assert (= bs!59405 (and b!513926 b!513882)))

(declare-fun lambda!14306 () Int)

(assert (=> bs!59405 (= lambda!14306 lambda!14298)))

(declare-fun bs!59406 () Bool)

(assert (= bs!59406 (and b!513926 b!513912)))

(assert (=> bs!59406 (= lambda!14306 lambda!14305)))

(declare-fun d!184276 () Bool)

(declare-fun res!217901 () Bool)

(declare-fun e!307117 () Bool)

(assert (=> d!184276 (=> (not res!217901) (not e!307117))))

(assert (=> d!184276 (= res!217901 (valid!439 (v!15684 (underlying!1146 hm!65))))))

(assert (=> d!184276 (= (valid!438 hm!65) e!307117)))

(declare-fun res!217902 () Bool)

(assert (=> b!513926 (=> (not res!217902) (not e!307117))))

(assert (=> b!513926 (= res!217902 (forall!1358 (toList!373 (map!975 (v!15684 (underlying!1146 hm!65)))) lambda!14306))))

(declare-fun b!513927 () Bool)

(assert (=> b!513927 (= e!307117 (allKeysSameHashInMap!17 (map!975 (v!15684 (underlying!1146 hm!65))) (hashF!2331 hm!65)))))

(assert (= (and d!184276 res!217901) b!513926))

(assert (= (and b!513926 res!217902) b!513927))

(declare-fun m!760025 () Bool)

(assert (=> d!184276 m!760025))

(assert (=> b!513926 m!759983))

(declare-fun m!760027 () Bool)

(assert (=> b!513926 m!760027))

(assert (=> b!513927 m!759983))

(assert (=> b!513927 m!759983))

(declare-fun m!760029 () Bool)

(assert (=> b!513927 m!760029))

(assert (=> b!513875 d!184276))

(declare-fun b!513932 () Bool)

(declare-fun tp!160066 () Bool)

(declare-fun e!307120 () Bool)

(declare-fun tp_is_empty!2531 () Bool)

(assert (=> b!513932 (= e!307120 (and tp_is_empty!2529 tp_is_empty!2531 tp!160066))))

(assert (=> b!513869 (= tp!160057 e!307120)))

(assert (= (and b!513869 ((_ is Cons!4666) mapDefault!1864)) b!513932))

(declare-fun b!513933 () Bool)

(declare-fun tp!160067 () Bool)

(declare-fun e!307121 () Bool)

(assert (=> b!513933 (= e!307121 (and tp_is_empty!2529 tp_is_empty!2531 tp!160067))))

(assert (=> b!513876 (= tp!160063 e!307121)))

(assert (= (and b!513876 ((_ is Cons!4666) (zeroValue!739 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65))))))) b!513933))

(declare-fun b!513934 () Bool)

(declare-fun e!307122 () Bool)

(declare-fun tp!160068 () Bool)

(assert (=> b!513934 (= e!307122 (and tp_is_empty!2529 tp_is_empty!2531 tp!160068))))

(assert (=> b!513876 (= tp!160062 e!307122)))

(assert (= (and b!513876 ((_ is Cons!4666) (minValue!739 (v!15683 (underlying!1145 (v!15684 (underlying!1146 hm!65))))))) b!513934))

(declare-fun mapIsEmpty!1867 () Bool)

(declare-fun mapRes!1867 () Bool)

(assert (=> mapIsEmpty!1867 mapRes!1867))

(declare-fun e!307128 () Bool)

(declare-fun b!513942 () Bool)

(declare-fun tp!160075 () Bool)

(assert (=> b!513942 (= e!307128 (and tp_is_empty!2529 tp_is_empty!2531 tp!160075))))

(declare-fun e!307127 () Bool)

(declare-fun b!513941 () Bool)

(declare-fun tp!160076 () Bool)

(assert (=> b!513941 (= e!307127 (and tp_is_empty!2529 tp_is_empty!2531 tp!160076))))

(declare-fun condMapEmpty!1867 () Bool)

(declare-fun mapDefault!1867 () List!4676)

(assert (=> mapNonEmpty!1864 (= condMapEmpty!1867 (= mapRest!1864 ((as const (Array (_ BitVec 32) List!4676)) mapDefault!1867)))))

(assert (=> mapNonEmpty!1864 (= tp!160060 (and e!307128 mapRes!1867))))

(declare-fun mapNonEmpty!1867 () Bool)

(declare-fun tp!160077 () Bool)

(assert (=> mapNonEmpty!1867 (= mapRes!1867 (and tp!160077 e!307127))))

(declare-fun mapValue!1867 () List!4676)

(declare-fun mapRest!1867 () (Array (_ BitVec 32) List!4676))

(declare-fun mapKey!1867 () (_ BitVec 32))

(assert (=> mapNonEmpty!1867 (= mapRest!1864 (store mapRest!1867 mapKey!1867 mapValue!1867))))

(assert (= (and mapNonEmpty!1864 condMapEmpty!1867) mapIsEmpty!1867))

(assert (= (and mapNonEmpty!1864 (not condMapEmpty!1867)) mapNonEmpty!1867))

(assert (= (and mapNonEmpty!1867 ((_ is Cons!4666) mapValue!1867)) b!513941))

(assert (= (and mapNonEmpty!1864 ((_ is Cons!4666) mapDefault!1867)) b!513942))

(declare-fun m!760031 () Bool)

(assert (=> mapNonEmpty!1867 m!760031))

(declare-fun b!513943 () Bool)

(declare-fun e!307129 () Bool)

(declare-fun tp!160078 () Bool)

(assert (=> b!513943 (= e!307129 (and tp_is_empty!2529 tp_is_empty!2531 tp!160078))))

(assert (=> mapNonEmpty!1864 (= tp!160056 e!307129)))

(assert (= (and mapNonEmpty!1864 ((_ is Cons!4666) mapValue!1864)) b!513943))

(declare-fun b_lambda!19971 () Bool)

(assert (= b_lambda!19969 (or (and start!46542 b_free!13355) b_lambda!19971)))

(check-sat (not b_next!13357) (not b!513914) (not b!513934) (not b!513912) (not d!184264) (not b!513926) (not b!513932) (not b!513883) (not b!513941) b_and!50787 (not bm!37353) (not bm!37348) (not b!513882) (not bm!37355) (not b_lambda!19971) (not bm!37350) (not b!513925) b_and!50785 (not d!184276) (not b_next!13359) (not b!513933) (not bm!37351) tp_is_empty!2529 (not d!184274) (not bm!37349) (not b!513909) (not b!513913) (not d!184262) (not d!184266) (not b!513910) (not b_next!13355) (not bm!37352) (not b!513915) (not bm!37354) (not b!513919) (not mapNonEmpty!1867) tp_is_empty!2531 b_and!50789 (not b!513927) (not b!513943) (not b!513942))
(check-sat (not b_next!13357) (not b_next!13355) b_and!50787 b_and!50789 b_and!50785 (not b_next!13359))
