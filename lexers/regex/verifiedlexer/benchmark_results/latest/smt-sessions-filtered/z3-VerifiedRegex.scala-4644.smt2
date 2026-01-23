; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242704 () Bool)

(assert start!242704)

(declare-fun b!2485110 () Bool)

(declare-fun b_free!72489 () Bool)

(declare-fun b_next!73193 () Bool)

(assert (=> b!2485110 (= b_free!72489 (not b_next!73193))))

(declare-fun tp!795596 () Bool)

(declare-fun b_and!188765 () Bool)

(assert (=> b!2485110 (= tp!795596 b_and!188765)))

(declare-fun b!2485104 () Bool)

(declare-fun b_free!72491 () Bool)

(declare-fun b_next!73195 () Bool)

(assert (=> b!2485104 (= b_free!72491 (not b_next!73195))))

(declare-fun tp!795593 () Bool)

(declare-fun b_and!188767 () Bool)

(assert (=> b!2485104 (= tp!795593 b_and!188767)))

(declare-fun mapIsEmpty!15726 () Bool)

(declare-fun mapRes!15726 () Bool)

(assert (=> mapIsEmpty!15726 mapRes!15726))

(declare-fun b!2485102 () Bool)

(declare-fun e!1577867 () Bool)

(declare-fun tp!795591 () Bool)

(assert (=> b!2485102 (= e!1577867 (and tp!795591 mapRes!15726))))

(declare-fun condMapEmpty!15726 () Bool)

(declare-datatypes ((Hashable!3318 0))(
  ( (HashableExt!3317 (__x!19130 Int)) )
))
(declare-datatypes ((K!5605 0))(
  ( (K!5606 (val!8959 Int)) )
))
(declare-datatypes ((V!5807 0))(
  ( (V!5808 (val!8960 Int)) )
))
(declare-datatypes ((tuple2!29122 0))(
  ( (tuple2!29123 (_1!17103 K!5605) (_2!17103 V!5807)) )
))
(declare-datatypes ((List!29290 0))(
  ( (Nil!29190) (Cons!29190 (h!34603 tuple2!29122) (t!210971 List!29290)) )
))
(declare-datatypes ((array!12117 0))(
  ( (array!12118 (arr!5406 (Array (_ BitVec 32) List!29290)) (size!22825 (_ BitVec 32))) )
))
(declare-datatypes ((array!12119 0))(
  ( (array!12120 (arr!5407 (Array (_ BitVec 32) (_ BitVec 64))) (size!22826 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6816 0))(
  ( (LongMapFixedSize!6817 (defaultEntry!3782 Int) (mask!8601 (_ BitVec 32)) (extraKeys!3656 (_ BitVec 32)) (zeroValue!3666 List!29290) (minValue!3666 List!29290) (_size!6863 (_ BitVec 32)) (_keys!3705 array!12119) (_values!3688 array!12117) (_vacant!3469 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13449 0))(
  ( (Cell!13450 (v!31608 LongMapFixedSize!6816)) )
))
(declare-datatypes ((MutLongMap!3408 0))(
  ( (LongMap!3408 (underlying!7023 Cell!13449)) (MutLongMapExt!3407 (__x!19131 Int)) )
))
(declare-datatypes ((Cell!13451 0))(
  ( (Cell!13452 (v!31609 MutLongMap!3408)) )
))
(declare-datatypes ((MutableMap!3318 0))(
  ( (MutableMapExt!3317 (__x!19132 Int)) (HashMap!3318 (underlying!7024 Cell!13451) (hashF!5309 Hashable!3318) (_size!6864 (_ BitVec 32)) (defaultValue!3480 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3318)

(declare-fun mapDefault!15726 () List!29290)

(assert (=> b!2485102 (= condMapEmpty!15726 (= (arr!5406 (_values!3688 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29290)) mapDefault!15726)))))

(declare-fun b!2485103 () Bool)

(declare-fun e!1577873 () Bool)

(declare-fun e!1577864 () Bool)

(declare-fun lt!891281 () MutLongMap!3408)

(get-info :version)

(assert (=> b!2485103 (= e!1577873 (and e!1577864 ((_ is LongMap!3408) lt!891281)))))

(assert (=> b!2485103 (= lt!891281 (v!31609 (underlying!7024 thiss!42540)))))

(declare-fun e!1577865 () Bool)

(assert (=> b!2485104 (= e!1577865 (and e!1577873 tp!795593))))

(declare-fun b!2485105 () Bool)

(declare-fun e!1577871 () Bool)

(declare-fun e!1577868 () Bool)

(assert (=> b!2485105 (= e!1577871 (not e!1577868))))

(declare-fun res!1051854 () Bool)

(assert (=> b!2485105 (=> res!1051854 e!1577868)))

(declare-datatypes ((tuple2!29124 0))(
  ( (tuple2!29125 (_1!17104 Bool) (_2!17104 MutLongMap!3408)) )
))
(declare-fun lt!891274 () tuple2!29124)

(assert (=> b!2485105 (= res!1051854 (not (_1!17104 lt!891274)))))

(declare-fun lt!891286 () List!29290)

(declare-fun noDuplicateKeys!111 (List!29290) Bool)

(assert (=> b!2485105 (noDuplicateKeys!111 lt!891286)))

(declare-datatypes ((Unit!42807 0))(
  ( (Unit!42808) )
))
(declare-fun lt!891278 () Unit!42807)

(declare-fun lt!891280 () List!29290)

(declare-fun key!2246 () K!5605)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!91 (List!29290 K!5605) Unit!42807)

(assert (=> b!2485105 (= lt!891278 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!91 lt!891280 key!2246))))

(declare-datatypes ((tuple2!29126 0))(
  ( (tuple2!29127 (_1!17105 Unit!42807) (_2!17105 MutableMap!3318)) )
))
(declare-fun lt!891285 () tuple2!29126)

(declare-fun lt!891284 () Cell!13451)

(declare-fun Unit!42809 () Unit!42807)

(declare-fun Unit!42810 () Unit!42807)

(assert (=> b!2485105 (= lt!891285 (ite (_1!17104 lt!891274) (tuple2!29127 Unit!42809 (HashMap!3318 lt!891284 (hashF!5309 thiss!42540) (bvsub (_size!6864 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3480 thiss!42540))) (tuple2!29127 Unit!42810 (HashMap!3318 lt!891284 (hashF!5309 thiss!42540) (_size!6864 thiss!42540) (defaultValue!3480 thiss!42540)))))))

(assert (=> b!2485105 (= lt!891284 (Cell!13452 (_2!17104 lt!891274)))))

(declare-fun lt!891273 () (_ BitVec 64))

(declare-fun update!228 (MutLongMap!3408 (_ BitVec 64) List!29290) tuple2!29124)

(assert (=> b!2485105 (= lt!891274 (update!228 (v!31609 (underlying!7024 thiss!42540)) lt!891273 lt!891286))))

(declare-fun removePairForKey!103 (List!29290 K!5605) List!29290)

(assert (=> b!2485105 (= lt!891286 (removePairForKey!103 lt!891280 key!2246))))

(declare-datatypes ((ListMap!1131 0))(
  ( (ListMap!1132 (toList!1651 List!29290)) )
))
(declare-fun lt!891287 () ListMap!1131)

(declare-fun map!6300 (MutableMap!3318) ListMap!1131)

(assert (=> b!2485105 (= lt!891287 (map!6300 thiss!42540))))

(declare-datatypes ((tuple2!29128 0))(
  ( (tuple2!29129 (_1!17106 (_ BitVec 64)) (_2!17106 List!29290)) )
))
(declare-datatypes ((List!29291 0))(
  ( (Nil!29191) (Cons!29191 (h!34604 tuple2!29128) (t!210972 List!29291)) )
))
(declare-datatypes ((ListLongMap!601 0))(
  ( (ListLongMap!602 (toList!1652 List!29291)) )
))
(declare-fun lt!891272 () ListLongMap!601)

(declare-fun lambda!94398 () Int)

(declare-fun lt!891283 () Unit!42807)

(declare-fun forallContained!892 (List!29291 Int tuple2!29128) Unit!42807)

(assert (=> b!2485105 (= lt!891283 (forallContained!892 (toList!1652 lt!891272) lambda!94398 (tuple2!29129 lt!891273 lt!891280)))))

(declare-fun map!6301 (MutLongMap!3408) ListLongMap!601)

(assert (=> b!2485105 (= lt!891272 (map!6301 (v!31609 (underlying!7024 thiss!42540))))))

(declare-fun apply!6974 (MutLongMap!3408 (_ BitVec 64)) List!29290)

(assert (=> b!2485105 (= lt!891280 (apply!6974 (v!31609 (underlying!7024 thiss!42540)) lt!891273))))

(declare-fun hash!749 (Hashable!3318 K!5605) (_ BitVec 64))

(assert (=> b!2485105 (= lt!891273 (hash!749 (hashF!5309 thiss!42540) key!2246))))

(declare-fun b!2485106 () Bool)

(declare-fun e!1577874 () Bool)

(declare-fun valid!2617 (MutableMap!3318) Bool)

(assert (=> b!2485106 (= e!1577874 (valid!2617 (_2!17105 lt!891285)))))

(declare-fun b!2485107 () Bool)

(declare-fun res!1051857 () Bool)

(assert (=> b!2485107 (=> (not res!1051857) (not e!1577871))))

(assert (=> b!2485107 (= res!1051857 (valid!2617 thiss!42540))))

(declare-fun mapNonEmpty!15726 () Bool)

(declare-fun tp!795595 () Bool)

(declare-fun tp!795592 () Bool)

(assert (=> mapNonEmpty!15726 (= mapRes!15726 (and tp!795595 tp!795592))))

(declare-fun mapValue!15726 () List!29290)

(declare-fun mapRest!15726 () (Array (_ BitVec 32) List!29290))

(declare-fun mapKey!15726 () (_ BitVec 32))

(assert (=> mapNonEmpty!15726 (= (arr!5406 (_values!3688 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) (store mapRest!15726 mapKey!15726 mapValue!15726))))

(declare-fun b!2485109 () Bool)

(declare-fun e!1577872 () Bool)

(declare-fun e!1577866 () Bool)

(assert (=> b!2485109 (= e!1577872 e!1577866)))

(declare-fun tp!795594 () Bool)

(declare-fun tp!795597 () Bool)

(declare-fun array_inv!3885 (array!12119) Bool)

(declare-fun array_inv!3886 (array!12117) Bool)

(assert (=> b!2485110 (= e!1577866 (and tp!795596 tp!795594 tp!795597 (array_inv!3885 (_keys!3705 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) (array_inv!3886 (_values!3688 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) e!1577867))))

(declare-fun b!2485111 () Bool)

(declare-fun e!1577869 () Bool)

(declare-fun lt!891277 () ListLongMap!601)

(declare-fun allKeysSameHashInMap!185 (ListLongMap!601 Hashable!3318) Bool)

(assert (=> b!2485111 (= e!1577869 (allKeysSameHashInMap!185 lt!891277 (hashF!5309 (_2!17105 lt!891285))))))

(declare-fun b!2485112 () Bool)

(assert (=> b!2485112 (= e!1577864 e!1577872)))

(declare-fun b!2485113 () Bool)

(declare-fun contains!5189 (ListMap!1131 K!5605) Bool)

(assert (=> b!2485113 (= e!1577868 (contains!5189 lt!891287 key!2246))))

(assert (=> b!2485113 e!1577874))

(declare-fun res!1051853 () Bool)

(assert (=> b!2485113 (=> (not res!1051853) (not e!1577874))))

(declare-fun lt!891279 () ListLongMap!601)

(declare-fun forall!5999 (List!29291 Int) Bool)

(assert (=> b!2485113 (= res!1051853 (forall!5999 (toList!1652 lt!891279) lambda!94398))))

(assert (=> b!2485113 (= lt!891279 (map!6301 (v!31609 (underlying!7024 (_2!17105 lt!891285)))))))

(assert (=> b!2485113 e!1577869))

(declare-fun res!1051852 () Bool)

(assert (=> b!2485113 (=> (not res!1051852) (not e!1577869))))

(assert (=> b!2485113 (= res!1051852 (forall!5999 (toList!1652 lt!891277) lambda!94398))))

(declare-fun +!101 (ListLongMap!601 tuple2!29128) ListLongMap!601)

(assert (=> b!2485113 (= lt!891277 (+!101 lt!891272 (tuple2!29129 lt!891273 lt!891286)))))

(declare-fun lt!891276 () Unit!42807)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!64 (ListLongMap!601 (_ BitVec 64) List!29290 Hashable!3318) Unit!42807)

(assert (=> b!2485113 (= lt!891276 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!64 lt!891272 lt!891273 lt!891286 (hashF!5309 (_2!17105 lt!891285))))))

(declare-fun allKeysSameHash!84 (List!29290 (_ BitVec 64) Hashable!3318) Bool)

(assert (=> b!2485113 (allKeysSameHash!84 lt!891286 lt!891273 (hashF!5309 (_2!17105 lt!891285)))))

(declare-fun lt!891275 () Unit!42807)

(declare-fun lemmaRemovePairForKeyPreservesHash!73 (List!29290 K!5605 (_ BitVec 64) Hashable!3318) Unit!42807)

(assert (=> b!2485113 (= lt!891275 (lemmaRemovePairForKeyPreservesHash!73 lt!891280 key!2246 lt!891273 (hashF!5309 (_2!17105 lt!891285))))))

(assert (=> b!2485113 (allKeysSameHash!84 lt!891280 lt!891273 (hashF!5309 (_2!17105 lt!891285)))))

(declare-fun lt!891282 () Unit!42807)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!77 (List!29291 (_ BitVec 64) List!29290 Hashable!3318) Unit!42807)

(assert (=> b!2485113 (= lt!891282 (lemmaInLongMapAllKeySameHashThenForTuple!77 (toList!1652 lt!891272) lt!891273 lt!891280 (hashF!5309 (_2!17105 lt!891285))))))

(declare-fun b!2485114 () Bool)

(declare-fun res!1051856 () Bool)

(assert (=> b!2485114 (=> (not res!1051856) (not e!1577874))))

(assert (=> b!2485114 (= res!1051856 (allKeysSameHashInMap!185 lt!891279 (hashF!5309 (_2!17105 lt!891285))))))

(declare-fun res!1051858 () Bool)

(assert (=> start!242704 (=> (not res!1051858) (not e!1577871))))

(assert (=> start!242704 (= res!1051858 ((_ is HashMap!3318) thiss!42540))))

(assert (=> start!242704 e!1577871))

(assert (=> start!242704 e!1577865))

(declare-fun tp_is_empty!12367 () Bool)

(assert (=> start!242704 tp_is_empty!12367))

(declare-fun b!2485108 () Bool)

(declare-fun res!1051855 () Bool)

(assert (=> b!2485108 (=> (not res!1051855) (not e!1577871))))

(declare-fun contains!5190 (MutableMap!3318 K!5605) Bool)

(assert (=> b!2485108 (= res!1051855 (contains!5190 thiss!42540 key!2246))))

(assert (= (and start!242704 res!1051858) b!2485107))

(assert (= (and b!2485107 res!1051857) b!2485108))

(assert (= (and b!2485108 res!1051855) b!2485105))

(assert (= (and b!2485105 (not res!1051854)) b!2485113))

(assert (= (and b!2485113 res!1051852) b!2485111))

(assert (= (and b!2485113 res!1051853) b!2485114))

(assert (= (and b!2485114 res!1051856) b!2485106))

(assert (= (and b!2485102 condMapEmpty!15726) mapIsEmpty!15726))

(assert (= (and b!2485102 (not condMapEmpty!15726)) mapNonEmpty!15726))

(assert (= b!2485110 b!2485102))

(assert (= b!2485109 b!2485110))

(assert (= b!2485112 b!2485109))

(assert (= (and b!2485103 ((_ is LongMap!3408) (v!31609 (underlying!7024 thiss!42540)))) b!2485112))

(assert (= b!2485104 b!2485103))

(assert (= (and start!242704 ((_ is HashMap!3318) thiss!42540)) b!2485104))

(declare-fun m!2853267 () Bool)

(assert (=> b!2485110 m!2853267))

(declare-fun m!2853269 () Bool)

(assert (=> b!2485110 m!2853269))

(declare-fun m!2853271 () Bool)

(assert (=> b!2485107 m!2853271))

(declare-fun m!2853273 () Bool)

(assert (=> b!2485113 m!2853273))

(declare-fun m!2853275 () Bool)

(assert (=> b!2485113 m!2853275))

(declare-fun m!2853277 () Bool)

(assert (=> b!2485113 m!2853277))

(declare-fun m!2853279 () Bool)

(assert (=> b!2485113 m!2853279))

(declare-fun m!2853281 () Bool)

(assert (=> b!2485113 m!2853281))

(declare-fun m!2853283 () Bool)

(assert (=> b!2485113 m!2853283))

(declare-fun m!2853285 () Bool)

(assert (=> b!2485113 m!2853285))

(declare-fun m!2853287 () Bool)

(assert (=> b!2485113 m!2853287))

(declare-fun m!2853289 () Bool)

(assert (=> b!2485113 m!2853289))

(declare-fun m!2853291 () Bool)

(assert (=> b!2485113 m!2853291))

(declare-fun m!2853293 () Bool)

(assert (=> b!2485105 m!2853293))

(declare-fun m!2853295 () Bool)

(assert (=> b!2485105 m!2853295))

(declare-fun m!2853297 () Bool)

(assert (=> b!2485105 m!2853297))

(declare-fun m!2853299 () Bool)

(assert (=> b!2485105 m!2853299))

(declare-fun m!2853301 () Bool)

(assert (=> b!2485105 m!2853301))

(declare-fun m!2853303 () Bool)

(assert (=> b!2485105 m!2853303))

(declare-fun m!2853305 () Bool)

(assert (=> b!2485105 m!2853305))

(declare-fun m!2853307 () Bool)

(assert (=> b!2485105 m!2853307))

(declare-fun m!2853309 () Bool)

(assert (=> b!2485105 m!2853309))

(declare-fun m!2853311 () Bool)

(assert (=> b!2485108 m!2853311))

(declare-fun m!2853313 () Bool)

(assert (=> b!2485111 m!2853313))

(declare-fun m!2853315 () Bool)

(assert (=> mapNonEmpty!15726 m!2853315))

(declare-fun m!2853317 () Bool)

(assert (=> b!2485114 m!2853317))

(declare-fun m!2853319 () Bool)

(assert (=> b!2485106 m!2853319))

(check-sat (not b_next!73193) (not b!2485114) (not b!2485113) (not b!2485105) (not b_next!73195) (not b!2485106) (not b!2485110) (not mapNonEmpty!15726) (not b!2485108) (not b!2485102) (not b!2485107) b_and!188767 (not b!2485111) tp_is_empty!12367 b_and!188765)
(check-sat b_and!188767 b_and!188765 (not b_next!73193) (not b_next!73195))
(get-model)

(declare-fun bs!467822 () Bool)

(declare-fun d!713491 () Bool)

(assert (= bs!467822 (and d!713491 b!2485105)))

(declare-fun lambda!94401 () Int)

(assert (=> bs!467822 (not (= lambda!94401 lambda!94398))))

(assert (=> d!713491 true))

(assert (=> d!713491 (= (allKeysSameHashInMap!185 lt!891279 (hashF!5309 (_2!17105 lt!891285))) (forall!5999 (toList!1652 lt!891279) lambda!94401))))

(declare-fun bs!467823 () Bool)

(assert (= bs!467823 d!713491))

(declare-fun m!2853321 () Bool)

(assert (=> bs!467823 m!2853321))

(assert (=> b!2485114 d!713491))

(declare-fun b!2485135 () Bool)

(declare-fun e!1577889 () tuple2!29124)

(declare-fun lt!891298 () tuple2!29124)

(assert (=> b!2485135 (= e!1577889 (tuple2!29125 (_1!17104 lt!891298) (_2!17104 lt!891298)))))

(declare-fun repack!29 (MutLongMap!3408) tuple2!29124)

(assert (=> b!2485135 (= lt!891298 (repack!29 (v!31609 (underlying!7024 thiss!42540))))))

(declare-fun d!713493 () Bool)

(declare-fun e!1577886 () Bool)

(assert (=> d!713493 e!1577886))

(declare-fun res!1051866 () Bool)

(assert (=> d!713493 (=> (not res!1051866) (not e!1577886))))

(declare-fun lt!891299 () tuple2!29124)

(assert (=> d!713493 (= res!1051866 ((_ is LongMap!3408) (_2!17104 lt!891299)))))

(declare-fun e!1577887 () tuple2!29124)

(assert (=> d!713493 (= lt!891299 e!1577887)))

(declare-fun c!395010 () Bool)

(declare-fun lt!891296 () tuple2!29124)

(assert (=> d!713493 (= c!395010 (_1!17104 lt!891296))))

(assert (=> d!713493 (= lt!891296 e!1577889)))

(declare-fun c!395011 () Bool)

(declare-fun imbalanced!25 (MutLongMap!3408) Bool)

(assert (=> d!713493 (= c!395011 (imbalanced!25 (v!31609 (underlying!7024 thiss!42540))))))

(declare-fun valid!2618 (MutLongMap!3408) Bool)

(assert (=> d!713493 (valid!2618 (v!31609 (underlying!7024 thiss!42540)))))

(assert (=> d!713493 (= (update!228 (v!31609 (underlying!7024 thiss!42540)) lt!891273 lt!891286) lt!891299)))

(declare-fun b!2485136 () Bool)

(assert (=> b!2485136 (= e!1577887 (tuple2!29125 false (_2!17104 lt!891296)))))

(declare-fun b!2485137 () Bool)

(declare-fun e!1577888 () Bool)

(declare-fun call!152363 () ListLongMap!601)

(declare-fun call!152364 () ListLongMap!601)

(assert (=> b!2485137 (= e!1577888 (= call!152363 call!152364))))

(declare-fun b!2485138 () Bool)

(declare-fun e!1577885 () Bool)

(assert (=> b!2485138 (= e!1577888 e!1577885)))

(declare-fun res!1051867 () Bool)

(declare-fun contains!5191 (ListLongMap!601 (_ BitVec 64)) Bool)

(assert (=> b!2485138 (= res!1051867 (contains!5191 call!152363 lt!891273))))

(assert (=> b!2485138 (=> (not res!1051867) (not e!1577885))))

(declare-fun bm!152358 () Bool)

(assert (=> bm!152358 (= call!152363 (map!6301 (_2!17104 lt!891299)))))

(declare-fun b!2485139 () Bool)

(declare-datatypes ((tuple2!29130 0))(
  ( (tuple2!29131 (_1!17107 Bool) (_2!17107 LongMapFixedSize!6816)) )
))
(declare-fun lt!891297 () tuple2!29130)

(assert (=> b!2485139 (= e!1577887 (tuple2!29125 (_1!17107 lt!891297) (LongMap!3408 (Cell!13450 (_2!17107 lt!891297)))))))

(declare-fun update!229 (LongMapFixedSize!6816 (_ BitVec 64) List!29290) tuple2!29130)

(assert (=> b!2485139 (= lt!891297 (update!229 (v!31608 (underlying!7023 (_2!17104 lt!891296))) lt!891273 lt!891286))))

(declare-fun bm!152359 () Bool)

(assert (=> bm!152359 (= call!152364 (map!6301 (v!31609 (underlying!7024 thiss!42540))))))

(declare-fun b!2485140 () Bool)

(assert (=> b!2485140 (= e!1577885 (= call!152363 (+!101 call!152364 (tuple2!29129 lt!891273 lt!891286))))))

(declare-fun b!2485141 () Bool)

(assert (=> b!2485141 (= e!1577886 e!1577888)))

(declare-fun c!395012 () Bool)

(assert (=> b!2485141 (= c!395012 (_1!17104 lt!891299))))

(declare-fun b!2485142 () Bool)

(declare-fun res!1051865 () Bool)

(assert (=> b!2485142 (=> (not res!1051865) (not e!1577886))))

(assert (=> b!2485142 (= res!1051865 (valid!2618 (_2!17104 lt!891299)))))

(declare-fun b!2485143 () Bool)

(assert (=> b!2485143 (= e!1577889 (tuple2!29125 true (v!31609 (underlying!7024 thiss!42540))))))

(assert (= (and d!713493 c!395011) b!2485135))

(assert (= (and d!713493 (not c!395011)) b!2485143))

(assert (= (and d!713493 c!395010) b!2485139))

(assert (= (and d!713493 (not c!395010)) b!2485136))

(assert (= (and d!713493 res!1051866) b!2485142))

(assert (= (and b!2485142 res!1051865) b!2485141))

(assert (= (and b!2485141 c!395012) b!2485138))

(assert (= (and b!2485141 (not c!395012)) b!2485137))

(assert (= (and b!2485138 res!1051867) b!2485140))

(assert (= (or b!2485140 b!2485137) bm!152359))

(assert (= (or b!2485138 b!2485140 b!2485137) bm!152358))

(declare-fun m!2853323 () Bool)

(assert (=> b!2485138 m!2853323))

(declare-fun m!2853325 () Bool)

(assert (=> b!2485135 m!2853325))

(declare-fun m!2853327 () Bool)

(assert (=> b!2485140 m!2853327))

(declare-fun m!2853329 () Bool)

(assert (=> d!713493 m!2853329))

(declare-fun m!2853331 () Bool)

(assert (=> d!713493 m!2853331))

(declare-fun m!2853333 () Bool)

(assert (=> b!2485142 m!2853333))

(declare-fun m!2853335 () Bool)

(assert (=> b!2485139 m!2853335))

(assert (=> bm!152359 m!2853293))

(declare-fun m!2853337 () Bool)

(assert (=> bm!152358 m!2853337))

(assert (=> b!2485105 d!713493))

(declare-fun d!713495 () Bool)

(declare-fun e!1577892 () Bool)

(assert (=> d!713495 e!1577892))

(declare-fun c!395015 () Bool)

(declare-fun contains!5192 (MutLongMap!3408 (_ BitVec 64)) Bool)

(assert (=> d!713495 (= c!395015 (contains!5192 (v!31609 (underlying!7024 thiss!42540)) lt!891273))))

(declare-fun lt!891302 () List!29290)

(declare-fun apply!6975 (LongMapFixedSize!6816 (_ BitVec 64)) List!29290)

(assert (=> d!713495 (= lt!891302 (apply!6975 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))) lt!891273))))

(assert (=> d!713495 (valid!2618 (v!31609 (underlying!7024 thiss!42540)))))

(assert (=> d!713495 (= (apply!6974 (v!31609 (underlying!7024 thiss!42540)) lt!891273) lt!891302)))

(declare-fun b!2485148 () Bool)

(declare-datatypes ((Option!5774 0))(
  ( (None!5773) (Some!5773 (v!31614 List!29290)) )
))
(declare-fun get!9010 (Option!5774) List!29290)

(declare-fun getValueByKey!150 (List!29291 (_ BitVec 64)) Option!5774)

(assert (=> b!2485148 (= e!1577892 (= lt!891302 (get!9010 (getValueByKey!150 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540)))) lt!891273))))))

(declare-fun b!2485149 () Bool)

(declare-fun dynLambda!12498 (Int (_ BitVec 64)) List!29290)

(assert (=> b!2485149 (= e!1577892 (= lt!891302 (dynLambda!12498 (defaultEntry!3782 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540))))) lt!891273)))))

(assert (=> b!2485149 ((_ is LongMap!3408) (v!31609 (underlying!7024 thiss!42540)))))

(assert (= (and d!713495 c!395015) b!2485148))

(assert (= (and d!713495 (not c!395015)) b!2485149))

(declare-fun b_lambda!76287 () Bool)

(assert (=> (not b_lambda!76287) (not b!2485149)))

(declare-fun t!210974 () Bool)

(declare-fun tb!140399 () Bool)

(assert (=> (and b!2485110 (= (defaultEntry!3782 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540))))) (defaultEntry!3782 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) t!210974) tb!140399))

(assert (=> b!2485149 t!210974))

(declare-fun result!173392 () Bool)

(declare-fun b_and!188769 () Bool)

(assert (= b_and!188765 (and (=> t!210974 result!173392) b_and!188769)))

(declare-fun m!2853339 () Bool)

(assert (=> d!713495 m!2853339))

(declare-fun m!2853341 () Bool)

(assert (=> d!713495 m!2853341))

(assert (=> d!713495 m!2853331))

(assert (=> b!2485148 m!2853293))

(declare-fun m!2853343 () Bool)

(assert (=> b!2485148 m!2853343))

(assert (=> b!2485148 m!2853343))

(declare-fun m!2853345 () Bool)

(assert (=> b!2485148 m!2853345))

(declare-fun m!2853347 () Bool)

(assert (=> b!2485149 m!2853347))

(assert (=> b!2485105 d!713495))

(declare-fun d!713497 () Bool)

(declare-fun hash!753 (Hashable!3318 K!5605) (_ BitVec 64))

(assert (=> d!713497 (= (hash!749 (hashF!5309 thiss!42540) key!2246) (hash!753 (hashF!5309 thiss!42540) key!2246))))

(declare-fun bs!467824 () Bool)

(assert (= bs!467824 d!713497))

(declare-fun m!2853349 () Bool)

(assert (=> bs!467824 m!2853349))

(assert (=> b!2485105 d!713497))

(declare-fun d!713499 () Bool)

(declare-fun map!6302 (LongMapFixedSize!6816) ListLongMap!601)

(assert (=> d!713499 (= (map!6301 (v!31609 (underlying!7024 thiss!42540))) (map!6302 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540))))))))

(declare-fun bs!467825 () Bool)

(assert (= bs!467825 d!713499))

(declare-fun m!2853351 () Bool)

(assert (=> bs!467825 m!2853351))

(assert (=> b!2485105 d!713499))

(declare-fun d!713501 () Bool)

(assert (=> d!713501 (noDuplicateKeys!111 (removePairForKey!103 lt!891280 key!2246))))

(declare-fun lt!891305 () Unit!42807)

(declare-fun choose!14686 (List!29290 K!5605) Unit!42807)

(assert (=> d!713501 (= lt!891305 (choose!14686 lt!891280 key!2246))))

(assert (=> d!713501 (noDuplicateKeys!111 lt!891280)))

(assert (=> d!713501 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!91 lt!891280 key!2246) lt!891305)))

(declare-fun bs!467826 () Bool)

(assert (= bs!467826 d!713501))

(assert (=> bs!467826 m!2853295))

(assert (=> bs!467826 m!2853295))

(declare-fun m!2853353 () Bool)

(assert (=> bs!467826 m!2853353))

(declare-fun m!2853355 () Bool)

(assert (=> bs!467826 m!2853355))

(declare-fun m!2853357 () Bool)

(assert (=> bs!467826 m!2853357))

(assert (=> b!2485105 d!713501))

(declare-fun d!713503 () Bool)

(declare-fun dynLambda!12499 (Int tuple2!29128) Bool)

(assert (=> d!713503 (dynLambda!12499 lambda!94398 (tuple2!29129 lt!891273 lt!891280))))

(declare-fun lt!891308 () Unit!42807)

(declare-fun choose!14687 (List!29291 Int tuple2!29128) Unit!42807)

(assert (=> d!713503 (= lt!891308 (choose!14687 (toList!1652 lt!891272) lambda!94398 (tuple2!29129 lt!891273 lt!891280)))))

(declare-fun e!1577895 () Bool)

(assert (=> d!713503 e!1577895))

(declare-fun res!1051870 () Bool)

(assert (=> d!713503 (=> (not res!1051870) (not e!1577895))))

(assert (=> d!713503 (= res!1051870 (forall!5999 (toList!1652 lt!891272) lambda!94398))))

(assert (=> d!713503 (= (forallContained!892 (toList!1652 lt!891272) lambda!94398 (tuple2!29129 lt!891273 lt!891280)) lt!891308)))

(declare-fun b!2485152 () Bool)

(declare-fun contains!5193 (List!29291 tuple2!29128) Bool)

(assert (=> b!2485152 (= e!1577895 (contains!5193 (toList!1652 lt!891272) (tuple2!29129 lt!891273 lt!891280)))))

(assert (= (and d!713503 res!1051870) b!2485152))

(declare-fun b_lambda!76289 () Bool)

(assert (=> (not b_lambda!76289) (not d!713503)))

(declare-fun m!2853359 () Bool)

(assert (=> d!713503 m!2853359))

(declare-fun m!2853361 () Bool)

(assert (=> d!713503 m!2853361))

(declare-fun m!2853363 () Bool)

(assert (=> d!713503 m!2853363))

(declare-fun m!2853365 () Bool)

(assert (=> b!2485152 m!2853365))

(assert (=> b!2485105 d!713503))

(declare-fun b!2485163 () Bool)

(declare-fun e!1577901 () List!29290)

(assert (=> b!2485163 (= e!1577901 (Cons!29190 (h!34603 lt!891280) (removePairForKey!103 (t!210971 lt!891280) key!2246)))))

(declare-fun b!2485161 () Bool)

(declare-fun e!1577900 () List!29290)

(assert (=> b!2485161 (= e!1577900 (t!210971 lt!891280))))

(declare-fun d!713505 () Bool)

(declare-fun lt!891311 () List!29290)

(declare-fun containsKey!158 (List!29290 K!5605) Bool)

(assert (=> d!713505 (not (containsKey!158 lt!891311 key!2246))))

(assert (=> d!713505 (= lt!891311 e!1577900)))

(declare-fun c!395021 () Bool)

(assert (=> d!713505 (= c!395021 (and ((_ is Cons!29190) lt!891280) (= (_1!17103 (h!34603 lt!891280)) key!2246)))))

(assert (=> d!713505 (noDuplicateKeys!111 lt!891280)))

(assert (=> d!713505 (= (removePairForKey!103 lt!891280 key!2246) lt!891311)))

(declare-fun b!2485164 () Bool)

(assert (=> b!2485164 (= e!1577901 Nil!29190)))

(declare-fun b!2485162 () Bool)

(assert (=> b!2485162 (= e!1577900 e!1577901)))

(declare-fun c!395020 () Bool)

(assert (=> b!2485162 (= c!395020 ((_ is Cons!29190) lt!891280))))

(assert (= (and d!713505 c!395021) b!2485161))

(assert (= (and d!713505 (not c!395021)) b!2485162))

(assert (= (and b!2485162 c!395020) b!2485163))

(assert (= (and b!2485162 (not c!395020)) b!2485164))

(declare-fun m!2853367 () Bool)

(assert (=> b!2485163 m!2853367))

(declare-fun m!2853369 () Bool)

(assert (=> d!713505 m!2853369))

(assert (=> d!713505 m!2853357))

(assert (=> b!2485105 d!713505))

(declare-fun d!713507 () Bool)

(declare-fun lt!891314 () ListMap!1131)

(declare-fun invariantList!420 (List!29290) Bool)

(assert (=> d!713507 (invariantList!420 (toList!1651 lt!891314))))

(declare-fun extractMap!186 (List!29291) ListMap!1131)

(assert (=> d!713507 (= lt!891314 (extractMap!186 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540))))))))

(assert (=> d!713507 (valid!2617 thiss!42540)))

(assert (=> d!713507 (= (map!6300 thiss!42540) lt!891314)))

(declare-fun bs!467827 () Bool)

(assert (= bs!467827 d!713507))

(declare-fun m!2853371 () Bool)

(assert (=> bs!467827 m!2853371))

(assert (=> bs!467827 m!2853293))

(declare-fun m!2853373 () Bool)

(assert (=> bs!467827 m!2853373))

(assert (=> bs!467827 m!2853271))

(assert (=> b!2485105 d!713507))

(declare-fun d!713509 () Bool)

(declare-fun res!1051875 () Bool)

(declare-fun e!1577906 () Bool)

(assert (=> d!713509 (=> res!1051875 e!1577906)))

(assert (=> d!713509 (= res!1051875 (not ((_ is Cons!29190) lt!891286)))))

(assert (=> d!713509 (= (noDuplicateKeys!111 lt!891286) e!1577906)))

(declare-fun b!2485169 () Bool)

(declare-fun e!1577907 () Bool)

(assert (=> b!2485169 (= e!1577906 e!1577907)))

(declare-fun res!1051876 () Bool)

(assert (=> b!2485169 (=> (not res!1051876) (not e!1577907))))

(assert (=> b!2485169 (= res!1051876 (not (containsKey!158 (t!210971 lt!891286) (_1!17103 (h!34603 lt!891286)))))))

(declare-fun b!2485170 () Bool)

(assert (=> b!2485170 (= e!1577907 (noDuplicateKeys!111 (t!210971 lt!891286)))))

(assert (= (and d!713509 (not res!1051875)) b!2485169))

(assert (= (and b!2485169 res!1051876) b!2485170))

(declare-fun m!2853375 () Bool)

(assert (=> b!2485169 m!2853375))

(declare-fun m!2853377 () Bool)

(assert (=> b!2485170 m!2853377))

(assert (=> b!2485105 d!713509))

(declare-fun bs!467828 () Bool)

(declare-fun b!2485199 () Bool)

(assert (= bs!467828 (and b!2485199 b!2485105)))

(declare-fun lambda!94404 () Int)

(assert (=> bs!467828 (= lambda!94404 lambda!94398)))

(declare-fun bs!467829 () Bool)

(assert (= bs!467829 (and b!2485199 d!713491)))

(assert (=> bs!467829 (not (= lambda!94404 lambda!94401))))

(declare-fun b!2485193 () Bool)

(declare-fun e!1577922 () Unit!42807)

(declare-fun e!1577924 () Unit!42807)

(assert (=> b!2485193 (= e!1577922 e!1577924)))

(declare-fun res!1051884 () Bool)

(declare-fun call!152379 () Bool)

(assert (=> b!2485193 (= res!1051884 call!152379)))

(declare-fun e!1577928 () Bool)

(assert (=> b!2485193 (=> (not res!1051884) (not e!1577928))))

(declare-fun c!395030 () Bool)

(assert (=> b!2485193 (= c!395030 e!1577928)))

(declare-fun d!713511 () Bool)

(declare-fun lt!891369 () Bool)

(assert (=> d!713511 (= lt!891369 (contains!5189 (map!6300 thiss!42540) key!2246))))

(declare-fun e!1577926 () Bool)

(assert (=> d!713511 (= lt!891369 e!1577926)))

(declare-fun res!1051883 () Bool)

(assert (=> d!713511 (=> (not res!1051883) (not e!1577926))))

(declare-fun lt!891360 () (_ BitVec 64))

(assert (=> d!713511 (= res!1051883 (contains!5192 (v!31609 (underlying!7024 thiss!42540)) lt!891360))))

(declare-fun lt!891359 () Unit!42807)

(assert (=> d!713511 (= lt!891359 e!1577922)))

(declare-fun c!395032 () Bool)

(assert (=> d!713511 (= c!395032 (contains!5189 (extractMap!186 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540))))) key!2246))))

(declare-fun lt!891363 () Unit!42807)

(declare-fun e!1577925 () Unit!42807)

(assert (=> d!713511 (= lt!891363 e!1577925)))

(declare-fun c!395031 () Bool)

(assert (=> d!713511 (= c!395031 (contains!5192 (v!31609 (underlying!7024 thiss!42540)) lt!891360))))

(assert (=> d!713511 (= lt!891360 (hash!749 (hashF!5309 thiss!42540) key!2246))))

(assert (=> d!713511 (valid!2617 thiss!42540)))

(assert (=> d!713511 (= (contains!5190 thiss!42540 key!2246) lt!891369)))

(declare-fun b!2485194 () Bool)

(assert (=> b!2485194 false))

(declare-fun lt!891362 () Unit!42807)

(declare-fun lt!891368 () Unit!42807)

(assert (=> b!2485194 (= lt!891362 lt!891368)))

(declare-fun lt!891370 () ListLongMap!601)

(assert (=> b!2485194 (contains!5189 (extractMap!186 (toList!1652 lt!891370)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!81 (ListLongMap!601 K!5605 Hashable!3318) Unit!42807)

(assert (=> b!2485194 (= lt!891368 (lemmaInLongMapThenInGenericMap!81 lt!891370 key!2246 (hashF!5309 thiss!42540)))))

(declare-fun call!152378 () ListLongMap!601)

(assert (=> b!2485194 (= lt!891370 call!152378)))

(declare-fun Unit!42811 () Unit!42807)

(assert (=> b!2485194 (= e!1577924 Unit!42811)))

(declare-fun b!2485195 () Bool)

(declare-fun e!1577923 () Unit!42807)

(declare-fun Unit!42812 () Unit!42807)

(assert (=> b!2485195 (= e!1577923 Unit!42812)))

(declare-fun lt!891358 () ListLongMap!601)

(declare-fun call!152381 () (_ BitVec 64))

(declare-fun call!152380 () List!29290)

(declare-fun bm!152372 () Bool)

(declare-fun apply!6976 (ListLongMap!601 (_ BitVec 64)) List!29290)

(assert (=> bm!152372 (= call!152380 (apply!6976 (ite c!395032 lt!891358 call!152378) call!152381))))

(declare-fun bm!152373 () Bool)

(declare-datatypes ((Option!5775 0))(
  ( (None!5774) (Some!5774 (v!31615 tuple2!29122)) )
))
(declare-fun call!152377 () Option!5775)

(declare-fun getPair!81 (List!29290 K!5605) Option!5775)

(assert (=> bm!152373 (= call!152377 (getPair!81 call!152380 key!2246))))

(declare-fun b!2485196 () Bool)

(declare-fun Unit!42813 () Unit!42807)

(assert (=> b!2485196 (= e!1577924 Unit!42813)))

(declare-fun bm!152374 () Bool)

(declare-fun call!152382 () Bool)

(declare-fun isDefined!4596 (Option!5775) Bool)

(assert (=> bm!152374 (= call!152382 (isDefined!4596 call!152377))))

(declare-fun bm!152375 () Bool)

(assert (=> bm!152375 (= call!152379 (contains!5191 (ite c!395032 lt!891358 call!152378) call!152381))))

(declare-fun b!2485197 () Bool)

(assert (=> b!2485197 (= e!1577926 (isDefined!4596 (getPair!81 (apply!6974 (v!31609 (underlying!7024 thiss!42540)) lt!891360) key!2246)))))

(declare-fun b!2485198 () Bool)

(declare-fun Unit!42814 () Unit!42807)

(assert (=> b!2485198 (= e!1577925 Unit!42814)))

(assert (=> b!2485199 (= e!1577925 (forallContained!892 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540)))) lambda!94404 (tuple2!29129 lt!891360 (apply!6974 (v!31609 (underlying!7024 thiss!42540)) lt!891360))))))

(declare-fun c!395033 () Bool)

(assert (=> b!2485199 (= c!395033 (not (contains!5193 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540)))) (tuple2!29129 lt!891360 (apply!6974 (v!31609 (underlying!7024 thiss!42540)) lt!891360)))))))

(declare-fun lt!891366 () Unit!42807)

(assert (=> b!2485199 (= lt!891366 e!1577923)))

(declare-fun b!2485200 () Bool)

(assert (=> b!2485200 (= e!1577928 call!152382)))

(declare-fun b!2485201 () Bool)

(declare-fun e!1577927 () Bool)

(assert (=> b!2485201 (= e!1577927 call!152382)))

(declare-fun b!2485202 () Bool)

(assert (=> b!2485202 false))

(declare-fun lt!891367 () Unit!42807)

(declare-fun lt!891355 () Unit!42807)

(assert (=> b!2485202 (= lt!891367 lt!891355)))

(declare-fun lt!891371 () List!29291)

(declare-fun lt!891374 () List!29290)

(assert (=> b!2485202 (contains!5193 lt!891371 (tuple2!29129 lt!891360 lt!891374))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!86 (List!29291 (_ BitVec 64) List!29290) Unit!42807)

(assert (=> b!2485202 (= lt!891355 (lemmaGetValueByKeyImpliesContainsTuple!86 lt!891371 lt!891360 lt!891374))))

(assert (=> b!2485202 (= lt!891374 (apply!6974 (v!31609 (underlying!7024 thiss!42540)) lt!891360))))

(assert (=> b!2485202 (= lt!891371 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540)))))))

(declare-fun lt!891372 () Unit!42807)

(declare-fun lt!891373 () Unit!42807)

(assert (=> b!2485202 (= lt!891372 lt!891373)))

(declare-fun lt!891364 () List!29291)

(declare-fun isDefined!4597 (Option!5774) Bool)

(assert (=> b!2485202 (isDefined!4597 (getValueByKey!150 lt!891364 lt!891360))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!107 (List!29291 (_ BitVec 64)) Unit!42807)

(assert (=> b!2485202 (= lt!891373 (lemmaContainsKeyImpliesGetValueByKeyDefined!107 lt!891364 lt!891360))))

(assert (=> b!2485202 (= lt!891364 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540)))))))

(declare-fun lt!891356 () Unit!42807)

(declare-fun lt!891365 () Unit!42807)

(assert (=> b!2485202 (= lt!891356 lt!891365)))

(declare-fun lt!891357 () List!29291)

(declare-fun containsKey!159 (List!29291 (_ BitVec 64)) Bool)

(assert (=> b!2485202 (containsKey!159 lt!891357 lt!891360)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!82 (List!29291 (_ BitVec 64)) Unit!42807)

(assert (=> b!2485202 (= lt!891365 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!82 lt!891357 lt!891360))))

(assert (=> b!2485202 (= lt!891357 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540)))))))

(declare-fun Unit!42815 () Unit!42807)

(assert (=> b!2485202 (= e!1577923 Unit!42815)))

(declare-fun bm!152376 () Bool)

(assert (=> bm!152376 (= call!152381 (hash!749 (hashF!5309 thiss!42540) key!2246))))

(declare-fun bm!152377 () Bool)

(assert (=> bm!152377 (= call!152378 (map!6301 (v!31609 (underlying!7024 thiss!42540))))))

(declare-fun b!2485203 () Bool)

(declare-fun lt!891361 () Unit!42807)

(assert (=> b!2485203 (= e!1577922 lt!891361)))

(assert (=> b!2485203 (= lt!891358 call!152378)))

(declare-fun lemmaInGenericMapThenInLongMap!81 (ListLongMap!601 K!5605 Hashable!3318) Unit!42807)

(assert (=> b!2485203 (= lt!891361 (lemmaInGenericMapThenInLongMap!81 lt!891358 key!2246 (hashF!5309 thiss!42540)))))

(declare-fun res!1051885 () Bool)

(assert (=> b!2485203 (= res!1051885 call!152379)))

(assert (=> b!2485203 (=> (not res!1051885) (not e!1577927))))

(assert (=> b!2485203 e!1577927))

(assert (= (and d!713511 c!395031) b!2485199))

(assert (= (and d!713511 (not c!395031)) b!2485198))

(assert (= (and b!2485199 c!395033) b!2485202))

(assert (= (and b!2485199 (not c!395033)) b!2485195))

(assert (= (and d!713511 c!395032) b!2485203))

(assert (= (and d!713511 (not c!395032)) b!2485193))

(assert (= (and b!2485203 res!1051885) b!2485201))

(assert (= (and b!2485193 res!1051884) b!2485200))

(assert (= (and b!2485193 c!395030) b!2485194))

(assert (= (and b!2485193 (not c!395030)) b!2485196))

(assert (= (or b!2485203 b!2485201 b!2485193 b!2485200) bm!152376))

(assert (= (or b!2485203 b!2485193 b!2485200 b!2485194) bm!152377))

(assert (= (or b!2485203 b!2485193) bm!152375))

(assert (= (or b!2485201 b!2485200) bm!152372))

(assert (= (or b!2485201 b!2485200) bm!152373))

(assert (= (or b!2485201 b!2485200) bm!152374))

(assert (= (and d!713511 res!1051883) b!2485197))

(declare-fun m!2853379 () Bool)

(assert (=> bm!152373 m!2853379))

(assert (=> b!2485199 m!2853293))

(declare-fun m!2853381 () Bool)

(assert (=> b!2485199 m!2853381))

(declare-fun m!2853383 () Bool)

(assert (=> b!2485199 m!2853383))

(declare-fun m!2853385 () Bool)

(assert (=> b!2485199 m!2853385))

(declare-fun m!2853387 () Bool)

(assert (=> bm!152374 m!2853387))

(declare-fun m!2853389 () Bool)

(assert (=> bm!152372 m!2853389))

(declare-fun m!2853391 () Bool)

(assert (=> bm!152375 m!2853391))

(assert (=> b!2485197 m!2853381))

(assert (=> b!2485197 m!2853381))

(declare-fun m!2853393 () Bool)

(assert (=> b!2485197 m!2853393))

(assert (=> b!2485197 m!2853393))

(declare-fun m!2853395 () Bool)

(assert (=> b!2485197 m!2853395))

(assert (=> d!713511 m!2853299))

(assert (=> d!713511 m!2853309))

(declare-fun m!2853397 () Bool)

(assert (=> d!713511 m!2853397))

(assert (=> d!713511 m!2853271))

(assert (=> d!713511 m!2853373))

(declare-fun m!2853399 () Bool)

(assert (=> d!713511 m!2853399))

(assert (=> d!713511 m!2853293))

(assert (=> d!713511 m!2853309))

(declare-fun m!2853401 () Bool)

(assert (=> d!713511 m!2853401))

(assert (=> d!713511 m!2853373))

(assert (=> bm!152376 m!2853299))

(declare-fun m!2853403 () Bool)

(assert (=> b!2485194 m!2853403))

(assert (=> b!2485194 m!2853403))

(declare-fun m!2853405 () Bool)

(assert (=> b!2485194 m!2853405))

(declare-fun m!2853407 () Bool)

(assert (=> b!2485194 m!2853407))

(declare-fun m!2853409 () Bool)

(assert (=> b!2485203 m!2853409))

(declare-fun m!2853411 () Bool)

(assert (=> b!2485202 m!2853411))

(declare-fun m!2853413 () Bool)

(assert (=> b!2485202 m!2853413))

(declare-fun m!2853415 () Bool)

(assert (=> b!2485202 m!2853415))

(declare-fun m!2853417 () Bool)

(assert (=> b!2485202 m!2853417))

(assert (=> b!2485202 m!2853293))

(declare-fun m!2853419 () Bool)

(assert (=> b!2485202 m!2853419))

(assert (=> b!2485202 m!2853381))

(declare-fun m!2853421 () Bool)

(assert (=> b!2485202 m!2853421))

(assert (=> b!2485202 m!2853411))

(declare-fun m!2853423 () Bool)

(assert (=> b!2485202 m!2853423))

(assert (=> bm!152377 m!2853293))

(assert (=> b!2485108 d!713511))

(declare-fun d!713513 () Bool)

(declare-fun res!1051890 () Bool)

(declare-fun e!1577933 () Bool)

(assert (=> d!713513 (=> res!1051890 e!1577933)))

(assert (=> d!713513 (= res!1051890 ((_ is Nil!29191) (toList!1652 lt!891279)))))

(assert (=> d!713513 (= (forall!5999 (toList!1652 lt!891279) lambda!94398) e!1577933)))

(declare-fun b!2485208 () Bool)

(declare-fun e!1577934 () Bool)

(assert (=> b!2485208 (= e!1577933 e!1577934)))

(declare-fun res!1051891 () Bool)

(assert (=> b!2485208 (=> (not res!1051891) (not e!1577934))))

(assert (=> b!2485208 (= res!1051891 (dynLambda!12499 lambda!94398 (h!34604 (toList!1652 lt!891279))))))

(declare-fun b!2485209 () Bool)

(assert (=> b!2485209 (= e!1577934 (forall!5999 (t!210972 (toList!1652 lt!891279)) lambda!94398))))

(assert (= (and d!713513 (not res!1051890)) b!2485208))

(assert (= (and b!2485208 res!1051891) b!2485209))

(declare-fun b_lambda!76291 () Bool)

(assert (=> (not b_lambda!76291) (not b!2485208)))

(declare-fun m!2853425 () Bool)

(assert (=> b!2485208 m!2853425))

(declare-fun m!2853427 () Bool)

(assert (=> b!2485209 m!2853427))

(assert (=> b!2485113 d!713513))

(declare-fun d!713515 () Bool)

(assert (=> d!713515 (allKeysSameHash!84 (removePairForKey!103 lt!891280 key!2246) lt!891273 (hashF!5309 (_2!17105 lt!891285)))))

(declare-fun lt!891377 () Unit!42807)

(declare-fun choose!14688 (List!29290 K!5605 (_ BitVec 64) Hashable!3318) Unit!42807)

(assert (=> d!713515 (= lt!891377 (choose!14688 lt!891280 key!2246 lt!891273 (hashF!5309 (_2!17105 lt!891285))))))

(assert (=> d!713515 (noDuplicateKeys!111 lt!891280)))

(assert (=> d!713515 (= (lemmaRemovePairForKeyPreservesHash!73 lt!891280 key!2246 lt!891273 (hashF!5309 (_2!17105 lt!891285))) lt!891377)))

(declare-fun bs!467830 () Bool)

(assert (= bs!467830 d!713515))

(assert (=> bs!467830 m!2853295))

(assert (=> bs!467830 m!2853295))

(declare-fun m!2853429 () Bool)

(assert (=> bs!467830 m!2853429))

(declare-fun m!2853431 () Bool)

(assert (=> bs!467830 m!2853431))

(assert (=> bs!467830 m!2853357))

(assert (=> b!2485113 d!713515))

(declare-fun d!713517 () Bool)

(assert (=> d!713517 (= (map!6301 (v!31609 (underlying!7024 (_2!17105 lt!891285)))) (map!6302 (v!31608 (underlying!7023 (v!31609 (underlying!7024 (_2!17105 lt!891285)))))))))

(declare-fun bs!467831 () Bool)

(assert (= bs!467831 d!713517))

(declare-fun m!2853433 () Bool)

(assert (=> bs!467831 m!2853433))

(assert (=> b!2485113 d!713517))

(declare-fun d!713519 () Bool)

(assert (=> d!713519 true))

(assert (=> d!713519 true))

(declare-fun lambda!94407 () Int)

(declare-fun forall!6000 (List!29290 Int) Bool)

(assert (=> d!713519 (= (allKeysSameHash!84 lt!891280 lt!891273 (hashF!5309 (_2!17105 lt!891285))) (forall!6000 lt!891280 lambda!94407))))

(declare-fun bs!467832 () Bool)

(assert (= bs!467832 d!713519))

(declare-fun m!2853435 () Bool)

(assert (=> bs!467832 m!2853435))

(assert (=> b!2485113 d!713519))

(declare-fun bs!467833 () Bool)

(declare-fun d!713521 () Bool)

(assert (= bs!467833 (and d!713521 d!713519)))

(declare-fun lambda!94408 () Int)

(assert (=> bs!467833 (= lambda!94408 lambda!94407)))

(assert (=> d!713521 true))

(assert (=> d!713521 true))

(assert (=> d!713521 (= (allKeysSameHash!84 lt!891286 lt!891273 (hashF!5309 (_2!17105 lt!891285))) (forall!6000 lt!891286 lambda!94408))))

(declare-fun bs!467834 () Bool)

(assert (= bs!467834 d!713521))

(declare-fun m!2853437 () Bool)

(assert (=> bs!467834 m!2853437))

(assert (=> b!2485113 d!713521))

(declare-fun bs!467835 () Bool)

(declare-fun d!713523 () Bool)

(assert (= bs!467835 (and d!713523 b!2485105)))

(declare-fun lambda!94413 () Int)

(assert (=> bs!467835 (= lambda!94413 lambda!94398)))

(declare-fun bs!467836 () Bool)

(assert (= bs!467836 (and d!713523 d!713491)))

(assert (=> bs!467836 (not (= lambda!94413 lambda!94401))))

(declare-fun bs!467837 () Bool)

(assert (= bs!467837 (and d!713523 b!2485199)))

(assert (=> bs!467837 (= lambda!94413 lambda!94404)))

(declare-fun e!1577937 () Bool)

(assert (=> d!713523 e!1577937))

(declare-fun res!1051894 () Bool)

(assert (=> d!713523 (=> (not res!1051894) (not e!1577937))))

(declare-fun lt!891383 () ListLongMap!601)

(assert (=> d!713523 (= res!1051894 (forall!5999 (toList!1652 lt!891383) lambda!94413))))

(assert (=> d!713523 (= lt!891383 (+!101 lt!891272 (tuple2!29129 lt!891273 lt!891286)))))

(declare-fun lt!891382 () Unit!42807)

(declare-fun choose!14689 (ListLongMap!601 (_ BitVec 64) List!29290 Hashable!3318) Unit!42807)

(assert (=> d!713523 (= lt!891382 (choose!14689 lt!891272 lt!891273 lt!891286 (hashF!5309 (_2!17105 lt!891285))))))

(assert (=> d!713523 (forall!5999 (toList!1652 lt!891272) lambda!94413)))

(assert (=> d!713523 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!64 lt!891272 lt!891273 lt!891286 (hashF!5309 (_2!17105 lt!891285))) lt!891382)))

(declare-fun b!2485216 () Bool)

(assert (=> b!2485216 (= e!1577937 (allKeysSameHashInMap!185 lt!891383 (hashF!5309 (_2!17105 lt!891285))))))

(assert (= (and d!713523 res!1051894) b!2485216))

(declare-fun m!2853439 () Bool)

(assert (=> d!713523 m!2853439))

(assert (=> d!713523 m!2853279))

(declare-fun m!2853441 () Bool)

(assert (=> d!713523 m!2853441))

(declare-fun m!2853443 () Bool)

(assert (=> d!713523 m!2853443))

(declare-fun m!2853445 () Bool)

(assert (=> b!2485216 m!2853445))

(assert (=> b!2485113 d!713523))

(declare-fun d!713525 () Bool)

(declare-fun e!1577940 () Bool)

(assert (=> d!713525 e!1577940))

(declare-fun res!1051899 () Bool)

(assert (=> d!713525 (=> (not res!1051899) (not e!1577940))))

(declare-fun lt!891393 () ListLongMap!601)

(assert (=> d!713525 (= res!1051899 (contains!5191 lt!891393 (_1!17106 (tuple2!29129 lt!891273 lt!891286))))))

(declare-fun lt!891394 () List!29291)

(assert (=> d!713525 (= lt!891393 (ListLongMap!602 lt!891394))))

(declare-fun lt!891392 () Unit!42807)

(declare-fun lt!891395 () Unit!42807)

(assert (=> d!713525 (= lt!891392 lt!891395)))

(assert (=> d!713525 (= (getValueByKey!150 lt!891394 (_1!17106 (tuple2!29129 lt!891273 lt!891286))) (Some!5773 (_2!17106 (tuple2!29129 lt!891273 lt!891286))))))

(declare-fun lemmaContainsTupThenGetReturnValue!24 (List!29291 (_ BitVec 64) List!29290) Unit!42807)

(assert (=> d!713525 (= lt!891395 (lemmaContainsTupThenGetReturnValue!24 lt!891394 (_1!17106 (tuple2!29129 lt!891273 lt!891286)) (_2!17106 (tuple2!29129 lt!891273 lt!891286))))))

(declare-fun insertStrictlySorted!18 (List!29291 (_ BitVec 64) List!29290) List!29291)

(assert (=> d!713525 (= lt!891394 (insertStrictlySorted!18 (toList!1652 lt!891272) (_1!17106 (tuple2!29129 lt!891273 lt!891286)) (_2!17106 (tuple2!29129 lt!891273 lt!891286))))))

(assert (=> d!713525 (= (+!101 lt!891272 (tuple2!29129 lt!891273 lt!891286)) lt!891393)))

(declare-fun b!2485221 () Bool)

(declare-fun res!1051900 () Bool)

(assert (=> b!2485221 (=> (not res!1051900) (not e!1577940))))

(assert (=> b!2485221 (= res!1051900 (= (getValueByKey!150 (toList!1652 lt!891393) (_1!17106 (tuple2!29129 lt!891273 lt!891286))) (Some!5773 (_2!17106 (tuple2!29129 lt!891273 lt!891286)))))))

(declare-fun b!2485222 () Bool)

(assert (=> b!2485222 (= e!1577940 (contains!5193 (toList!1652 lt!891393) (tuple2!29129 lt!891273 lt!891286)))))

(assert (= (and d!713525 res!1051899) b!2485221))

(assert (= (and b!2485221 res!1051900) b!2485222))

(declare-fun m!2853447 () Bool)

(assert (=> d!713525 m!2853447))

(declare-fun m!2853449 () Bool)

(assert (=> d!713525 m!2853449))

(declare-fun m!2853451 () Bool)

(assert (=> d!713525 m!2853451))

(declare-fun m!2853453 () Bool)

(assert (=> d!713525 m!2853453))

(declare-fun m!2853455 () Bool)

(assert (=> b!2485221 m!2853455))

(declare-fun m!2853457 () Bool)

(assert (=> b!2485222 m!2853457))

(assert (=> b!2485113 d!713525))

(declare-fun bs!467838 () Bool)

(declare-fun d!713527 () Bool)

(assert (= bs!467838 (and d!713527 b!2485105)))

(declare-fun lambda!94416 () Int)

(assert (=> bs!467838 (not (= lambda!94416 lambda!94398))))

(declare-fun bs!467839 () Bool)

(assert (= bs!467839 (and d!713527 d!713491)))

(assert (=> bs!467839 (= lambda!94416 lambda!94401)))

(declare-fun bs!467840 () Bool)

(assert (= bs!467840 (and d!713527 b!2485199)))

(assert (=> bs!467840 (not (= lambda!94416 lambda!94404))))

(declare-fun bs!467841 () Bool)

(assert (= bs!467841 (and d!713527 d!713523)))

(assert (=> bs!467841 (not (= lambda!94416 lambda!94413))))

(assert (=> d!713527 true))

(assert (=> d!713527 (allKeysSameHash!84 lt!891280 lt!891273 (hashF!5309 (_2!17105 lt!891285)))))

(declare-fun lt!891398 () Unit!42807)

(declare-fun choose!14690 (List!29291 (_ BitVec 64) List!29290 Hashable!3318) Unit!42807)

(assert (=> d!713527 (= lt!891398 (choose!14690 (toList!1652 lt!891272) lt!891273 lt!891280 (hashF!5309 (_2!17105 lt!891285))))))

(assert (=> d!713527 (forall!5999 (toList!1652 lt!891272) lambda!94416)))

(assert (=> d!713527 (= (lemmaInLongMapAllKeySameHashThenForTuple!77 (toList!1652 lt!891272) lt!891273 lt!891280 (hashF!5309 (_2!17105 lt!891285))) lt!891398)))

(declare-fun bs!467842 () Bool)

(assert (= bs!467842 d!713527))

(assert (=> bs!467842 m!2853291))

(declare-fun m!2853459 () Bool)

(assert (=> bs!467842 m!2853459))

(declare-fun m!2853461 () Bool)

(assert (=> bs!467842 m!2853461))

(assert (=> b!2485113 d!713527))

(declare-fun b!2485241 () Bool)

(declare-fun e!1577954 () Bool)

(declare-datatypes ((List!29292 0))(
  ( (Nil!29192) (Cons!29192 (h!34606 K!5605) (t!210975 List!29292)) )
))
(declare-fun contains!5194 (List!29292 K!5605) Bool)

(declare-fun keys!9361 (ListMap!1131) List!29292)

(assert (=> b!2485241 (= e!1577954 (contains!5194 (keys!9361 lt!891287) key!2246))))

(declare-fun bm!152380 () Bool)

(declare-fun call!152385 () Bool)

(declare-fun e!1577955 () List!29292)

(assert (=> bm!152380 (= call!152385 (contains!5194 e!1577955 key!2246))))

(declare-fun c!395042 () Bool)

(declare-fun c!395041 () Bool)

(assert (=> bm!152380 (= c!395042 c!395041)))

(declare-fun b!2485242 () Bool)

(declare-fun getKeysList!19 (List!29290) List!29292)

(assert (=> b!2485242 (= e!1577955 (getKeysList!19 (toList!1651 lt!891287)))))

(declare-fun b!2485243 () Bool)

(assert (=> b!2485243 false))

(declare-fun lt!891417 () Unit!42807)

(declare-fun lt!891420 () Unit!42807)

(assert (=> b!2485243 (= lt!891417 lt!891420)))

(declare-fun containsKey!160 (List!29290 K!5605) Bool)

(assert (=> b!2485243 (containsKey!160 (toList!1651 lt!891287) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!16 (List!29290 K!5605) Unit!42807)

(assert (=> b!2485243 (= lt!891420 (lemmaInGetKeysListThenContainsKey!16 (toList!1651 lt!891287) key!2246))))

(declare-fun e!1577953 () Unit!42807)

(declare-fun Unit!42816 () Unit!42807)

(assert (=> b!2485243 (= e!1577953 Unit!42816)))

(declare-fun b!2485244 () Bool)

(declare-fun Unit!42817 () Unit!42807)

(assert (=> b!2485244 (= e!1577953 Unit!42817)))

(declare-fun b!2485245 () Bool)

(declare-fun e!1577957 () Bool)

(assert (=> b!2485245 (= e!1577957 e!1577954)))

(declare-fun res!1051907 () Bool)

(assert (=> b!2485245 (=> (not res!1051907) (not e!1577954))))

(declare-datatypes ((Option!5776 0))(
  ( (None!5775) (Some!5775 (v!31616 V!5807)) )
))
(declare-fun isDefined!4598 (Option!5776) Bool)

(declare-fun getValueByKey!151 (List!29290 K!5605) Option!5776)

(assert (=> b!2485245 (= res!1051907 (isDefined!4598 (getValueByKey!151 (toList!1651 lt!891287) key!2246)))))

(declare-fun b!2485246 () Bool)

(declare-fun e!1577958 () Unit!42807)

(declare-fun lt!891416 () Unit!42807)

(assert (=> b!2485246 (= e!1577958 lt!891416)))

(declare-fun lt!891415 () Unit!42807)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!108 (List!29290 K!5605) Unit!42807)

(assert (=> b!2485246 (= lt!891415 (lemmaContainsKeyImpliesGetValueByKeyDefined!108 (toList!1651 lt!891287) key!2246))))

(assert (=> b!2485246 (isDefined!4598 (getValueByKey!151 (toList!1651 lt!891287) key!2246))))

(declare-fun lt!891418 () Unit!42807)

(assert (=> b!2485246 (= lt!891418 lt!891415)))

(declare-fun lemmaInListThenGetKeysListContains!16 (List!29290 K!5605) Unit!42807)

(assert (=> b!2485246 (= lt!891416 (lemmaInListThenGetKeysListContains!16 (toList!1651 lt!891287) key!2246))))

(assert (=> b!2485246 call!152385))

(declare-fun b!2485248 () Bool)

(assert (=> b!2485248 (= e!1577958 e!1577953)))

(declare-fun c!395040 () Bool)

(assert (=> b!2485248 (= c!395040 call!152385)))

(declare-fun b!2485249 () Bool)

(declare-fun e!1577956 () Bool)

(assert (=> b!2485249 (= e!1577956 (not (contains!5194 (keys!9361 lt!891287) key!2246)))))

(declare-fun d!713529 () Bool)

(assert (=> d!713529 e!1577957))

(declare-fun res!1051909 () Bool)

(assert (=> d!713529 (=> res!1051909 e!1577957)))

(assert (=> d!713529 (= res!1051909 e!1577956)))

(declare-fun res!1051908 () Bool)

(assert (=> d!713529 (=> (not res!1051908) (not e!1577956))))

(declare-fun lt!891421 () Bool)

(assert (=> d!713529 (= res!1051908 (not lt!891421))))

(declare-fun lt!891419 () Bool)

(assert (=> d!713529 (= lt!891421 lt!891419)))

(declare-fun lt!891422 () Unit!42807)

(assert (=> d!713529 (= lt!891422 e!1577958)))

(assert (=> d!713529 (= c!395041 lt!891419)))

(assert (=> d!713529 (= lt!891419 (containsKey!160 (toList!1651 lt!891287) key!2246))))

(assert (=> d!713529 (= (contains!5189 lt!891287 key!2246) lt!891421)))

(declare-fun b!2485247 () Bool)

(assert (=> b!2485247 (= e!1577955 (keys!9361 lt!891287))))

(assert (= (and d!713529 c!395041) b!2485246))

(assert (= (and d!713529 (not c!395041)) b!2485248))

(assert (= (and b!2485248 c!395040) b!2485243))

(assert (= (and b!2485248 (not c!395040)) b!2485244))

(assert (= (or b!2485246 b!2485248) bm!152380))

(assert (= (and bm!152380 c!395042) b!2485242))

(assert (= (and bm!152380 (not c!395042)) b!2485247))

(assert (= (and d!713529 res!1051908) b!2485249))

(assert (= (and d!713529 (not res!1051909)) b!2485245))

(assert (= (and b!2485245 res!1051907) b!2485241))

(declare-fun m!2853463 () Bool)

(assert (=> d!713529 m!2853463))

(declare-fun m!2853465 () Bool)

(assert (=> b!2485247 m!2853465))

(assert (=> b!2485243 m!2853463))

(declare-fun m!2853467 () Bool)

(assert (=> b!2485243 m!2853467))

(declare-fun m!2853469 () Bool)

(assert (=> bm!152380 m!2853469))

(assert (=> b!2485241 m!2853465))

(assert (=> b!2485241 m!2853465))

(declare-fun m!2853471 () Bool)

(assert (=> b!2485241 m!2853471))

(declare-fun m!2853473 () Bool)

(assert (=> b!2485242 m!2853473))

(assert (=> b!2485249 m!2853465))

(assert (=> b!2485249 m!2853465))

(assert (=> b!2485249 m!2853471))

(declare-fun m!2853475 () Bool)

(assert (=> b!2485246 m!2853475))

(declare-fun m!2853477 () Bool)

(assert (=> b!2485246 m!2853477))

(assert (=> b!2485246 m!2853477))

(declare-fun m!2853479 () Bool)

(assert (=> b!2485246 m!2853479))

(declare-fun m!2853481 () Bool)

(assert (=> b!2485246 m!2853481))

(assert (=> b!2485245 m!2853477))

(assert (=> b!2485245 m!2853477))

(assert (=> b!2485245 m!2853479))

(assert (=> b!2485113 d!713529))

(declare-fun d!713531 () Bool)

(declare-fun res!1051910 () Bool)

(declare-fun e!1577959 () Bool)

(assert (=> d!713531 (=> res!1051910 e!1577959)))

(assert (=> d!713531 (= res!1051910 ((_ is Nil!29191) (toList!1652 lt!891277)))))

(assert (=> d!713531 (= (forall!5999 (toList!1652 lt!891277) lambda!94398) e!1577959)))

(declare-fun b!2485250 () Bool)

(declare-fun e!1577960 () Bool)

(assert (=> b!2485250 (= e!1577959 e!1577960)))

(declare-fun res!1051911 () Bool)

(assert (=> b!2485250 (=> (not res!1051911) (not e!1577960))))

(assert (=> b!2485250 (= res!1051911 (dynLambda!12499 lambda!94398 (h!34604 (toList!1652 lt!891277))))))

(declare-fun b!2485251 () Bool)

(assert (=> b!2485251 (= e!1577960 (forall!5999 (t!210972 (toList!1652 lt!891277)) lambda!94398))))

(assert (= (and d!713531 (not res!1051910)) b!2485250))

(assert (= (and b!2485250 res!1051911) b!2485251))

(declare-fun b_lambda!76293 () Bool)

(assert (=> (not b_lambda!76293) (not b!2485250)))

(declare-fun m!2853483 () Bool)

(assert (=> b!2485250 m!2853483))

(declare-fun m!2853485 () Bool)

(assert (=> b!2485251 m!2853485))

(assert (=> b!2485113 d!713531))

(declare-fun bs!467843 () Bool)

(declare-fun b!2485256 () Bool)

(assert (= bs!467843 (and b!2485256 b!2485105)))

(declare-fun lambda!94419 () Int)

(assert (=> bs!467843 (= lambda!94419 lambda!94398)))

(declare-fun bs!467844 () Bool)

(assert (= bs!467844 (and b!2485256 b!2485199)))

(assert (=> bs!467844 (= lambda!94419 lambda!94404)))

(declare-fun bs!467845 () Bool)

(assert (= bs!467845 (and b!2485256 d!713527)))

(assert (=> bs!467845 (not (= lambda!94419 lambda!94416))))

(declare-fun bs!467846 () Bool)

(assert (= bs!467846 (and b!2485256 d!713523)))

(assert (=> bs!467846 (= lambda!94419 lambda!94413)))

(declare-fun bs!467847 () Bool)

(assert (= bs!467847 (and b!2485256 d!713491)))

(assert (=> bs!467847 (not (= lambda!94419 lambda!94401))))

(declare-fun d!713533 () Bool)

(declare-fun res!1051916 () Bool)

(declare-fun e!1577963 () Bool)

(assert (=> d!713533 (=> (not res!1051916) (not e!1577963))))

(assert (=> d!713533 (= res!1051916 (valid!2618 (v!31609 (underlying!7024 thiss!42540))))))

(assert (=> d!713533 (= (valid!2617 thiss!42540) e!1577963)))

(declare-fun res!1051917 () Bool)

(assert (=> b!2485256 (=> (not res!1051917) (not e!1577963))))

(assert (=> b!2485256 (= res!1051917 (forall!5999 (toList!1652 (map!6301 (v!31609 (underlying!7024 thiss!42540)))) lambda!94419))))

(declare-fun b!2485257 () Bool)

(assert (=> b!2485257 (= e!1577963 (allKeysSameHashInMap!185 (map!6301 (v!31609 (underlying!7024 thiss!42540))) (hashF!5309 thiss!42540)))))

(assert (= (and d!713533 res!1051916) b!2485256))

(assert (= (and b!2485256 res!1051917) b!2485257))

(assert (=> d!713533 m!2853331))

(assert (=> b!2485256 m!2853293))

(declare-fun m!2853487 () Bool)

(assert (=> b!2485256 m!2853487))

(assert (=> b!2485257 m!2853293))

(assert (=> b!2485257 m!2853293))

(declare-fun m!2853489 () Bool)

(assert (=> b!2485257 m!2853489))

(assert (=> b!2485107 d!713533))

(declare-fun bs!467848 () Bool)

(declare-fun d!713535 () Bool)

(assert (= bs!467848 (and d!713535 b!2485256)))

(declare-fun lambda!94420 () Int)

(assert (=> bs!467848 (not (= lambda!94420 lambda!94419))))

(declare-fun bs!467849 () Bool)

(assert (= bs!467849 (and d!713535 b!2485105)))

(assert (=> bs!467849 (not (= lambda!94420 lambda!94398))))

(declare-fun bs!467850 () Bool)

(assert (= bs!467850 (and d!713535 b!2485199)))

(assert (=> bs!467850 (not (= lambda!94420 lambda!94404))))

(declare-fun bs!467851 () Bool)

(assert (= bs!467851 (and d!713535 d!713527)))

(assert (=> bs!467851 (= lambda!94420 lambda!94416)))

(declare-fun bs!467852 () Bool)

(assert (= bs!467852 (and d!713535 d!713523)))

(assert (=> bs!467852 (not (= lambda!94420 lambda!94413))))

(declare-fun bs!467853 () Bool)

(assert (= bs!467853 (and d!713535 d!713491)))

(assert (=> bs!467853 (= lambda!94420 lambda!94401)))

(assert (=> d!713535 true))

(assert (=> d!713535 (= (allKeysSameHashInMap!185 lt!891277 (hashF!5309 (_2!17105 lt!891285))) (forall!5999 (toList!1652 lt!891277) lambda!94420))))

(declare-fun bs!467854 () Bool)

(assert (= bs!467854 d!713535))

(declare-fun m!2853491 () Bool)

(assert (=> bs!467854 m!2853491))

(assert (=> b!2485111 d!713535))

(declare-fun d!713537 () Bool)

(assert (=> d!713537 (= (array_inv!3885 (_keys!3705 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) (bvsge (size!22826 (_keys!3705 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485110 d!713537))

(declare-fun d!713539 () Bool)

(assert (=> d!713539 (= (array_inv!3886 (_values!3688 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) (bvsge (size!22825 (_values!3688 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2485110 d!713539))

(declare-fun bs!467855 () Bool)

(declare-fun b!2485258 () Bool)

(assert (= bs!467855 (and b!2485258 b!2485256)))

(declare-fun lambda!94421 () Int)

(assert (=> bs!467855 (= lambda!94421 lambda!94419)))

(declare-fun bs!467856 () Bool)

(assert (= bs!467856 (and b!2485258 b!2485105)))

(assert (=> bs!467856 (= lambda!94421 lambda!94398)))

(declare-fun bs!467857 () Bool)

(assert (= bs!467857 (and b!2485258 b!2485199)))

(assert (=> bs!467857 (= lambda!94421 lambda!94404)))

(declare-fun bs!467858 () Bool)

(assert (= bs!467858 (and b!2485258 d!713527)))

(assert (=> bs!467858 (not (= lambda!94421 lambda!94416))))

(declare-fun bs!467859 () Bool)

(assert (= bs!467859 (and b!2485258 d!713535)))

(assert (=> bs!467859 (not (= lambda!94421 lambda!94420))))

(declare-fun bs!467860 () Bool)

(assert (= bs!467860 (and b!2485258 d!713523)))

(assert (=> bs!467860 (= lambda!94421 lambda!94413)))

(declare-fun bs!467861 () Bool)

(assert (= bs!467861 (and b!2485258 d!713491)))

(assert (=> bs!467861 (not (= lambda!94421 lambda!94401))))

(declare-fun d!713541 () Bool)

(declare-fun res!1051918 () Bool)

(declare-fun e!1577964 () Bool)

(assert (=> d!713541 (=> (not res!1051918) (not e!1577964))))

(assert (=> d!713541 (= res!1051918 (valid!2618 (v!31609 (underlying!7024 (_2!17105 lt!891285)))))))

(assert (=> d!713541 (= (valid!2617 (_2!17105 lt!891285)) e!1577964)))

(declare-fun res!1051919 () Bool)

(assert (=> b!2485258 (=> (not res!1051919) (not e!1577964))))

(assert (=> b!2485258 (= res!1051919 (forall!5999 (toList!1652 (map!6301 (v!31609 (underlying!7024 (_2!17105 lt!891285))))) lambda!94421))))

(declare-fun b!2485259 () Bool)

(assert (=> b!2485259 (= e!1577964 (allKeysSameHashInMap!185 (map!6301 (v!31609 (underlying!7024 (_2!17105 lt!891285)))) (hashF!5309 (_2!17105 lt!891285))))))

(assert (= (and d!713541 res!1051918) b!2485258))

(assert (= (and b!2485258 res!1051919) b!2485259))

(declare-fun m!2853493 () Bool)

(assert (=> d!713541 m!2853493))

(assert (=> b!2485258 m!2853287))

(declare-fun m!2853495 () Bool)

(assert (=> b!2485258 m!2853495))

(assert (=> b!2485259 m!2853287))

(assert (=> b!2485259 m!2853287))

(declare-fun m!2853497 () Bool)

(assert (=> b!2485259 m!2853497))

(assert (=> b!2485106 d!713541))

(declare-fun mapIsEmpty!15729 () Bool)

(declare-fun mapRes!15729 () Bool)

(assert (=> mapIsEmpty!15729 mapRes!15729))

(declare-fun condMapEmpty!15729 () Bool)

(declare-fun mapDefault!15729 () List!29290)

(assert (=> mapNonEmpty!15726 (= condMapEmpty!15729 (= mapRest!15726 ((as const (Array (_ BitVec 32) List!29290)) mapDefault!15729)))))

(declare-fun e!1577970 () Bool)

(assert (=> mapNonEmpty!15726 (= tp!795595 (and e!1577970 mapRes!15729))))

(declare-fun mapNonEmpty!15729 () Bool)

(declare-fun tp!795606 () Bool)

(declare-fun e!1577969 () Bool)

(assert (=> mapNonEmpty!15729 (= mapRes!15729 (and tp!795606 e!1577969))))

(declare-fun mapRest!15729 () (Array (_ BitVec 32) List!29290))

(declare-fun mapValue!15729 () List!29290)

(declare-fun mapKey!15729 () (_ BitVec 32))

(assert (=> mapNonEmpty!15729 (= mapRest!15726 (store mapRest!15729 mapKey!15729 mapValue!15729))))

(declare-fun tp_is_empty!12369 () Bool)

(declare-fun b!2485267 () Bool)

(declare-fun tp!795604 () Bool)

(assert (=> b!2485267 (= e!1577970 (and tp_is_empty!12367 tp_is_empty!12369 tp!795604))))

(declare-fun b!2485266 () Bool)

(declare-fun tp!795605 () Bool)

(assert (=> b!2485266 (= e!1577969 (and tp_is_empty!12367 tp_is_empty!12369 tp!795605))))

(assert (= (and mapNonEmpty!15726 condMapEmpty!15729) mapIsEmpty!15729))

(assert (= (and mapNonEmpty!15726 (not condMapEmpty!15729)) mapNonEmpty!15729))

(assert (= (and mapNonEmpty!15729 ((_ is Cons!29190) mapValue!15729)) b!2485266))

(assert (= (and mapNonEmpty!15726 ((_ is Cons!29190) mapDefault!15729)) b!2485267))

(declare-fun m!2853499 () Bool)

(assert (=> mapNonEmpty!15729 m!2853499))

(declare-fun b!2485272 () Bool)

(declare-fun tp!795609 () Bool)

(declare-fun e!1577973 () Bool)

(assert (=> b!2485272 (= e!1577973 (and tp_is_empty!12367 tp_is_empty!12369 tp!795609))))

(assert (=> mapNonEmpty!15726 (= tp!795592 e!1577973)))

(assert (= (and mapNonEmpty!15726 ((_ is Cons!29190) mapValue!15726)) b!2485272))

(declare-fun e!1577974 () Bool)

(declare-fun b!2485273 () Bool)

(declare-fun tp!795610 () Bool)

(assert (=> b!2485273 (= e!1577974 (and tp_is_empty!12367 tp_is_empty!12369 tp!795610))))

(assert (=> b!2485102 (= tp!795591 e!1577974)))

(assert (= (and b!2485102 ((_ is Cons!29190) mapDefault!15726)) b!2485273))

(declare-fun tp!795611 () Bool)

(declare-fun b!2485274 () Bool)

(declare-fun e!1577975 () Bool)

(assert (=> b!2485274 (= e!1577975 (and tp_is_empty!12367 tp_is_empty!12369 tp!795611))))

(assert (=> b!2485110 (= tp!795594 e!1577975)))

(assert (= (and b!2485110 ((_ is Cons!29190) (zeroValue!3666 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540))))))) b!2485274))

(declare-fun b!2485275 () Bool)

(declare-fun e!1577976 () Bool)

(declare-fun tp!795612 () Bool)

(assert (=> b!2485275 (= e!1577976 (and tp_is_empty!12367 tp_is_empty!12369 tp!795612))))

(assert (=> b!2485110 (= tp!795597 e!1577976)))

(assert (= (and b!2485110 ((_ is Cons!29190) (minValue!3666 (v!31608 (underlying!7023 (v!31609 (underlying!7024 thiss!42540))))))) b!2485275))

(declare-fun b_lambda!76295 () Bool)

(assert (= b_lambda!76289 (or b!2485105 b_lambda!76295)))

(declare-fun bs!467862 () Bool)

(declare-fun d!713543 () Bool)

(assert (= bs!467862 (and d!713543 b!2485105)))

(assert (=> bs!467862 (= (dynLambda!12499 lambda!94398 (tuple2!29129 lt!891273 lt!891280)) (noDuplicateKeys!111 (_2!17106 (tuple2!29129 lt!891273 lt!891280))))))

(declare-fun m!2853501 () Bool)

(assert (=> bs!467862 m!2853501))

(assert (=> d!713503 d!713543))

(declare-fun b_lambda!76297 () Bool)

(assert (= b_lambda!76293 (or b!2485105 b_lambda!76297)))

(declare-fun bs!467863 () Bool)

(declare-fun d!713545 () Bool)

(assert (= bs!467863 (and d!713545 b!2485105)))

(assert (=> bs!467863 (= (dynLambda!12499 lambda!94398 (h!34604 (toList!1652 lt!891277))) (noDuplicateKeys!111 (_2!17106 (h!34604 (toList!1652 lt!891277)))))))

(declare-fun m!2853503 () Bool)

(assert (=> bs!467863 m!2853503))

(assert (=> b!2485250 d!713545))

(declare-fun b_lambda!76299 () Bool)

(assert (= b_lambda!76287 (or (and b!2485110 b_free!72489) b_lambda!76299)))

(declare-fun b_lambda!76301 () Bool)

(assert (= b_lambda!76291 (or b!2485105 b_lambda!76301)))

(declare-fun bs!467864 () Bool)

(declare-fun d!713547 () Bool)

(assert (= bs!467864 (and d!713547 b!2485105)))

(assert (=> bs!467864 (= (dynLambda!12499 lambda!94398 (h!34604 (toList!1652 lt!891279))) (noDuplicateKeys!111 (_2!17106 (h!34604 (toList!1652 lt!891279)))))))

(declare-fun m!2853505 () Bool)

(assert (=> bs!467864 m!2853505))

(assert (=> b!2485208 d!713547))

(check-sat (not b!2485266) (not b_lambda!76297) (not d!713523) (not d!713507) (not b!2485258) (not mapNonEmpty!15729) (not b!2485249) (not d!713497) (not d!713499) (not d!713511) (not b_next!73193) (not b!2485243) (not b!2485142) (not b!2485199) (not bm!152373) (not b!2485251) (not bm!152380) (not b!2485221) (not d!713503) (not b!2485135) (not bm!152372) (not d!713535) tp_is_empty!12369 (not b!2485140) b_and!188767 (not b!2485274) (not bs!467862) (not b!2485242) (not bm!152359) (not b_next!73195) (not b!2485163) (not d!713505) (not b!2485169) (not d!713491) (not d!713517) (not b_lambda!76301) (not b!2485259) (not d!713493) (not b!2485222) (not b!2485148) (not d!713541) (not bs!467863) (not b!2485273) (not b!2485209) (not d!713495) tp_is_empty!12367 (not b!2485275) (not b!2485216) (not b!2485267) (not b!2485257) (not b!2485256) (not bm!152375) (not d!713501) (not b!2485272) (not d!713519) (not bm!152377) (not b!2485202) (not d!713533) (not bm!152358) (not b!2485197) (not b_lambda!76295) (not b!2485247) (not b!2485246) (not d!713521) (not b!2485194) (not b!2485138) (not d!713525) (not bs!467864) (not b!2485152) (not b!2485170) (not b_lambda!76299) b_and!188769 (not b!2485139) (not tb!140399) (not b!2485203) (not bm!152376) (not d!713527) (not b!2485241) (not bm!152374) (not b!2485245) (not d!713515) (not d!713529))
(check-sat b_and!188767 b_and!188769 (not b_next!73193) (not b_next!73195))
