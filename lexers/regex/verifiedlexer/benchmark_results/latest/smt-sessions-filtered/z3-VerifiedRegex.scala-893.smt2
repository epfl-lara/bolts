; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46674 () Bool)

(assert start!46674)

(declare-fun b!515088 () Bool)

(declare-fun b_free!13499 () Bool)

(declare-fun b_next!13499 () Bool)

(assert (=> b!515088 (= b_free!13499 (not b_next!13499))))

(declare-fun tp!160712 () Bool)

(declare-fun b_and!50943 () Bool)

(assert (=> b!515088 (= tp!160712 b_and!50943)))

(declare-fun b!515087 () Bool)

(declare-fun b_free!13501 () Bool)

(declare-fun b_next!13501 () Bool)

(assert (=> b!515087 (= b_free!13501 (not b_next!13501))))

(declare-fun tp!160714 () Bool)

(declare-fun b_and!50945 () Bool)

(assert (=> b!515087 (= tp!160714 b_and!50945)))

(declare-fun b_free!13503 () Bool)

(declare-fun b_next!13503 () Bool)

(assert (=> start!46674 (= b_free!13503 (not b_next!13503))))

(declare-fun tp!160708 () Bool)

(declare-fun b_and!50947 () Bool)

(assert (=> start!46674 (= tp!160708 b_and!50947)))

(declare-fun b!515081 () Bool)

(declare-fun e!308074 () Bool)

(declare-fun e!308068 () Bool)

(declare-datatypes ((K!1382 0))(
  ( (K!1383 (val!1769 Int)) )
))
(declare-datatypes ((V!1480 0))(
  ( (V!1481 (val!1770 Int)) )
))
(declare-datatypes ((tuple2!5710 0))(
  ( (tuple2!5711 (_1!3071 K!1382) (_2!3071 V!1480)) )
))
(declare-datatypes ((List!4710 0))(
  ( (Nil!4700) (Cons!4700 (h!10097 tuple2!5710) (t!73250 List!4710)) )
))
(declare-datatypes ((array!1947 0))(
  ( (array!1948 (arr!898 (Array (_ BitVec 32) List!4710)) (size!3832 (_ BitVec 32))) )
))
(declare-datatypes ((array!1949 0))(
  ( (array!1950 (arr!899 (Array (_ BitVec 32) (_ BitVec 64))) (size!3833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1014 0))(
  ( (LongMapFixedSize!1015 (defaultEntry!858 Int) (mask!1925 (_ BitVec 32)) (extraKeys!753 (_ BitVec 32)) (zeroValue!763 List!4710) (minValue!763 List!4710) (_size!1123 (_ BitVec 32)) (_keys!798 array!1949) (_values!785 array!1947) (_vacant!568 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1969 0))(
  ( (Cell!1970 (v!15731 LongMapFixedSize!1014)) )
))
(declare-datatypes ((MutLongMap!507 0))(
  ( (LongMap!507 (underlying!1193 Cell!1969)) (MutLongMapExt!506 (__x!3412 Int)) )
))
(declare-fun lt!213511 () MutLongMap!507)

(get-info :version)

(assert (=> b!515081 (= e!308074 (and e!308068 ((_ is LongMap!507) lt!213511)))))

(declare-datatypes ((Hashable!479 0))(
  ( (HashableExt!478 (__x!3413 Int)) )
))
(declare-datatypes ((Cell!1971 0))(
  ( (Cell!1972 (v!15732 MutLongMap!507)) )
))
(declare-datatypes ((MutableMap!479 0))(
  ( (MutableMapExt!478 (__x!3414 Int)) (HashMap!479 (underlying!1194 Cell!1971) (hashF!2355 Hashable!479) (_size!1124 (_ BitVec 32)) (defaultValue!628 Int)) )
))
(declare-fun hm!65 () MutableMap!479)

(assert (=> b!515081 (= lt!213511 (v!15732 (underlying!1194 hm!65)))))

(declare-fun mapIsEmpty!1951 () Bool)

(declare-fun mapRes!1951 () Bool)

(assert (=> mapIsEmpty!1951 mapRes!1951))

(declare-fun b!515082 () Bool)

(declare-fun e!308075 () Bool)

(assert (=> b!515082 (= e!308068 e!308075)))

(declare-fun mapNonEmpty!1951 () Bool)

(declare-fun tp!160713 () Bool)

(declare-fun tp!160707 () Bool)

(assert (=> mapNonEmpty!1951 (= mapRes!1951 (and tp!160713 tp!160707))))

(declare-fun mapKey!1951 () (_ BitVec 32))

(declare-fun mapRest!1951 () (Array (_ BitVec 32) List!4710))

(declare-fun mapValue!1951 () List!4710)

(assert (=> mapNonEmpty!1951 (= (arr!898 (_values!785 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) (store mapRest!1951 mapKey!1951 mapValue!1951))))

(declare-fun b!515083 () Bool)

(declare-fun e!308069 () Bool)

(declare-fun k0!1740 () K!1382)

(declare-fun valid!464 (MutableMap!479) Bool)

(declare-datatypes ((tuple2!5712 0))(
  ( (tuple2!5713 (_1!3072 Bool) (_2!3072 MutableMap!479)) )
))
(declare-fun remove!27 (MutableMap!479 K!1382) tuple2!5712)

(assert (=> b!515083 (= e!308069 (not (valid!464 (_2!3072 (remove!27 hm!65 k0!1740)))))))

(declare-datatypes ((ListMap!165 0))(
  ( (ListMap!166 (toList!400 List!4710)) )
))
(declare-fun lt!213513 () ListMap!165)

(declare-fun lt!213512 () ListMap!165)

(declare-fun -!24 (ListMap!165 K!1382) ListMap!165)

(assert (=> b!515083 (= lt!213513 (-!24 lt!213512 k0!1740))))

(declare-fun res!218430 () Bool)

(declare-fun e!308070 () Bool)

(assert (=> start!46674 (=> (not res!218430) (not e!308070))))

(assert (=> start!46674 (= res!218430 ((_ is HashMap!479) hm!65))))

(assert (=> start!46674 e!308070))

(declare-fun e!308072 () Bool)

(assert (=> start!46674 e!308072))

(assert (=> start!46674 tp!160708))

(declare-fun tp_is_empty!2587 () Bool)

(assert (=> start!46674 tp_is_empty!2587))

(declare-fun b!515084 () Bool)

(declare-fun e!308073 () Bool)

(assert (=> b!515084 (= e!308075 e!308073)))

(declare-fun b!515085 () Bool)

(declare-fun res!218431 () Bool)

(assert (=> b!515085 (=> (not res!218431) (not e!308070))))

(assert (=> b!515085 (= res!218431 (valid!464 hm!65))))

(declare-fun b!515086 () Bool)

(assert (=> b!515086 (= e!308070 e!308069)))

(declare-fun res!218432 () Bool)

(assert (=> b!515086 (=> (not res!218432) (not e!308069))))

(declare-fun p!6060 () Int)

(declare-fun forall!1383 (List!4710 Int) Bool)

(assert (=> b!515086 (= res!218432 (forall!1383 (toList!400 lt!213512) p!6060))))

(declare-fun map!1012 (MutableMap!479) ListMap!165)

(assert (=> b!515086 (= lt!213512 (map!1012 hm!65))))

(declare-fun tp!160709 () Bool)

(declare-fun e!308071 () Bool)

(declare-fun tp!160710 () Bool)

(declare-fun array_inv!655 (array!1949) Bool)

(declare-fun array_inv!656 (array!1947) Bool)

(assert (=> b!515087 (= e!308073 (and tp!160714 tp!160710 tp!160709 (array_inv!655 (_keys!798 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) (array_inv!656 (_values!785 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) e!308071))))

(assert (=> b!515088 (= e!308072 (and e!308074 tp!160712))))

(declare-fun b!515089 () Bool)

(declare-fun tp!160711 () Bool)

(assert (=> b!515089 (= e!308071 (and tp!160711 mapRes!1951))))

(declare-fun condMapEmpty!1951 () Bool)

(declare-fun mapDefault!1951 () List!4710)

(assert (=> b!515089 (= condMapEmpty!1951 (= (arr!898 (_values!785 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) ((as const (Array (_ BitVec 32) List!4710)) mapDefault!1951)))))

(assert (= (and start!46674 res!218430) b!515085))

(assert (= (and b!515085 res!218431) b!515086))

(assert (= (and b!515086 res!218432) b!515083))

(assert (= (and b!515089 condMapEmpty!1951) mapIsEmpty!1951))

(assert (= (and b!515089 (not condMapEmpty!1951)) mapNonEmpty!1951))

(assert (= b!515087 b!515089))

(assert (= b!515084 b!515087))

(assert (= b!515082 b!515084))

(assert (= (and b!515081 ((_ is LongMap!507) (v!15732 (underlying!1194 hm!65)))) b!515082))

(assert (= b!515088 b!515081))

(assert (= (and start!46674 ((_ is HashMap!479) hm!65)) b!515088))

(declare-fun m!761107 () Bool)

(assert (=> b!515087 m!761107))

(declare-fun m!761109 () Bool)

(assert (=> b!515087 m!761109))

(declare-fun m!761111 () Bool)

(assert (=> b!515085 m!761111))

(declare-fun m!761113 () Bool)

(assert (=> b!515083 m!761113))

(declare-fun m!761115 () Bool)

(assert (=> b!515083 m!761115))

(declare-fun m!761117 () Bool)

(assert (=> b!515083 m!761117))

(declare-fun m!761119 () Bool)

(assert (=> mapNonEmpty!1951 m!761119))

(declare-fun m!761121 () Bool)

(assert (=> b!515086 m!761121))

(declare-fun m!761123 () Bool)

(assert (=> b!515086 m!761123))

(check-sat (not b_next!13503) tp_is_empty!2587 (not b_next!13499) (not b_next!13501) (not mapNonEmpty!1951) (not b!515083) b_and!50943 (not b!515089) (not b!515087) (not b!515085) b_and!50945 b_and!50947 (not b!515086))
(check-sat (not b_next!13503) b_and!50943 b_and!50945 (not b_next!13499) b_and!50947 (not b_next!13501))
(get-model)

(declare-fun d!184384 () Bool)

(declare-fun res!218437 () Bool)

(declare-fun e!308080 () Bool)

(assert (=> d!184384 (=> res!218437 e!308080)))

(assert (=> d!184384 (= res!218437 ((_ is Nil!4700) (toList!400 lt!213512)))))

(assert (=> d!184384 (= (forall!1383 (toList!400 lt!213512) p!6060) e!308080)))

(declare-fun b!515094 () Bool)

(declare-fun e!308081 () Bool)

(assert (=> b!515094 (= e!308080 e!308081)))

(declare-fun res!218438 () Bool)

(assert (=> b!515094 (=> (not res!218438) (not e!308081))))

(declare-fun dynLambda!2970 (Int tuple2!5710) Bool)

(assert (=> b!515094 (= res!218438 (dynLambda!2970 p!6060 (h!10097 (toList!400 lt!213512))))))

(declare-fun b!515095 () Bool)

(assert (=> b!515095 (= e!308081 (forall!1383 (t!73250 (toList!400 lt!213512)) p!6060))))

(assert (= (and d!184384 (not res!218437)) b!515094))

(assert (= (and b!515094 res!218438) b!515095))

(declare-fun b_lambda!20001 () Bool)

(assert (=> (not b_lambda!20001) (not b!515094)))

(declare-fun t!73252 () Bool)

(declare-fun tb!47139 () Bool)

(assert (=> (and start!46674 (= p!6060 p!6060) t!73252) tb!47139))

(declare-fun result!52170 () Bool)

(assert (=> tb!47139 (= result!52170 true)))

(assert (=> b!515094 t!73252))

(declare-fun b_and!50949 () Bool)

(assert (= b_and!50947 (and (=> t!73252 result!52170) b_and!50949)))

(declare-fun m!761125 () Bool)

(assert (=> b!515094 m!761125))

(declare-fun m!761127 () Bool)

(assert (=> b!515095 m!761127))

(assert (=> b!515086 d!184384))

(declare-fun d!184386 () Bool)

(declare-fun lt!213516 () ListMap!165)

(declare-fun invariantList!61 (List!4710) Bool)

(assert (=> d!184386 (invariantList!61 (toList!400 lt!213516))))

(declare-datatypes ((tuple2!5714 0))(
  ( (tuple2!5715 (_1!3073 (_ BitVec 64)) (_2!3073 List!4710)) )
))
(declare-datatypes ((List!4711 0))(
  ( (Nil!4701) (Cons!4701 (h!10098 tuple2!5714) (t!73253 List!4711)) )
))
(declare-fun extractMap!15 (List!4711) ListMap!165)

(declare-datatypes ((ListLongMap!67 0))(
  ( (ListLongMap!68 (toList!401 List!4711)) )
))
(declare-fun map!1013 (MutLongMap!507) ListLongMap!67)

(assert (=> d!184386 (= lt!213516 (extractMap!15 (toList!401 (map!1013 (v!15732 (underlying!1194 hm!65))))))))

(assert (=> d!184386 (valid!464 hm!65)))

(assert (=> d!184386 (= (map!1012 hm!65) lt!213516)))

(declare-fun bs!59459 () Bool)

(assert (= bs!59459 d!184386))

(declare-fun m!761129 () Bool)

(assert (=> bs!59459 m!761129))

(declare-fun m!761131 () Bool)

(assert (=> bs!59459 m!761131))

(declare-fun m!761133 () Bool)

(assert (=> bs!59459 m!761133))

(assert (=> bs!59459 m!761111))

(assert (=> b!515086 d!184386))

(declare-fun d!184388 () Bool)

(declare-fun res!218443 () Bool)

(declare-fun e!308084 () Bool)

(assert (=> d!184388 (=> (not res!218443) (not e!308084))))

(declare-fun valid!465 (MutLongMap!507) Bool)

(assert (=> d!184388 (= res!218443 (valid!465 (v!15732 (underlying!1194 hm!65))))))

(assert (=> d!184388 (= (valid!464 hm!65) e!308084)))

(declare-fun b!515100 () Bool)

(declare-fun res!218444 () Bool)

(assert (=> b!515100 (=> (not res!218444) (not e!308084))))

(declare-fun lambda!14353 () Int)

(declare-fun forall!1384 (List!4711 Int) Bool)

(assert (=> b!515100 (= res!218444 (forall!1384 (toList!401 (map!1013 (v!15732 (underlying!1194 hm!65)))) lambda!14353))))

(declare-fun b!515101 () Bool)

(declare-fun allKeysSameHashInMap!22 (ListLongMap!67 Hashable!479) Bool)

(assert (=> b!515101 (= e!308084 (allKeysSameHashInMap!22 (map!1013 (v!15732 (underlying!1194 hm!65))) (hashF!2355 hm!65)))))

(assert (= (and d!184388 res!218443) b!515100))

(assert (= (and b!515100 res!218444) b!515101))

(declare-fun m!761135 () Bool)

(assert (=> d!184388 m!761135))

(assert (=> b!515100 m!761131))

(declare-fun m!761137 () Bool)

(assert (=> b!515100 m!761137))

(assert (=> b!515101 m!761131))

(assert (=> b!515101 m!761131))

(declare-fun m!761139 () Bool)

(assert (=> b!515101 m!761139))

(assert (=> b!515085 d!184388))

(declare-fun d!184390 () Bool)

(assert (=> d!184390 (= (array_inv!655 (_keys!798 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) (bvsge (size!3833 (_keys!798 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515087 d!184390))

(declare-fun d!184392 () Bool)

(assert (=> d!184392 (= (array_inv!656 (_values!785 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) (bvsge (size!3832 (_values!785 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515087 d!184392))

(declare-fun bs!59460 () Bool)

(declare-fun b!515102 () Bool)

(assert (= bs!59460 (and b!515102 b!515100)))

(declare-fun lambda!14354 () Int)

(assert (=> bs!59460 (= lambda!14354 lambda!14353)))

(declare-fun d!184394 () Bool)

(declare-fun res!218445 () Bool)

(declare-fun e!308085 () Bool)

(assert (=> d!184394 (=> (not res!218445) (not e!308085))))

(assert (=> d!184394 (= res!218445 (valid!465 (v!15732 (underlying!1194 (_2!3072 (remove!27 hm!65 k0!1740))))))))

(assert (=> d!184394 (= (valid!464 (_2!3072 (remove!27 hm!65 k0!1740))) e!308085)))

(declare-fun res!218446 () Bool)

(assert (=> b!515102 (=> (not res!218446) (not e!308085))))

(assert (=> b!515102 (= res!218446 (forall!1384 (toList!401 (map!1013 (v!15732 (underlying!1194 (_2!3072 (remove!27 hm!65 k0!1740)))))) lambda!14354))))

(declare-fun b!515103 () Bool)

(assert (=> b!515103 (= e!308085 (allKeysSameHashInMap!22 (map!1013 (v!15732 (underlying!1194 (_2!3072 (remove!27 hm!65 k0!1740))))) (hashF!2355 (_2!3072 (remove!27 hm!65 k0!1740)))))))

(assert (= (and d!184394 res!218445) b!515102))

(assert (= (and b!515102 res!218446) b!515103))

(declare-fun m!761141 () Bool)

(assert (=> d!184394 m!761141))

(declare-fun m!761143 () Bool)

(assert (=> b!515102 m!761143))

(declare-fun m!761145 () Bool)

(assert (=> b!515102 m!761145))

(assert (=> b!515103 m!761143))

(assert (=> b!515103 m!761143))

(declare-fun m!761147 () Bool)

(assert (=> b!515103 m!761147))

(assert (=> b!515083 d!184394))

(declare-fun bs!59461 () Bool)

(declare-fun b!515134 () Bool)

(assert (= bs!59461 (and b!515134 b!515100)))

(declare-fun lambda!14361 () Int)

(assert (=> bs!59461 (= lambda!14361 lambda!14353)))

(declare-fun bs!59462 () Bool)

(assert (= bs!59462 (and b!515134 b!515102)))

(assert (=> bs!59462 (= lambda!14361 lambda!14354)))

(declare-fun bm!37492 () Bool)

(declare-fun call!37503 () Bool)

(declare-datatypes ((Unit!8497 0))(
  ( (Unit!8498) )
))
(declare-datatypes ((tuple2!5716 0))(
  ( (tuple2!5717 (_1!3074 Unit!8497) (_2!3074 MutableMap!479)) )
))
(declare-fun lt!213580 () tuple2!5716)

(assert (=> bm!37492 (= call!37503 (valid!464 (_2!3074 lt!213580)))))

(declare-fun lt!213597 () ListMap!165)

(declare-fun call!37498 () ListMap!165)

(declare-fun c!99847 () Bool)

(declare-fun bm!37493 () Bool)

(declare-fun call!37500 () ListMap!165)

(assert (=> bm!37493 (= call!37500 (-!24 (ite c!99847 call!37498 lt!213597) k0!1740))))

(declare-fun bm!37494 () Bool)

(declare-fun call!37504 () ListMap!165)

(assert (=> bm!37494 (= call!37504 (map!1012 hm!65))))

(declare-fun b!515126 () Bool)

(declare-fun e!308101 () tuple2!5712)

(assert (=> b!515126 (= e!308101 (tuple2!5713 true hm!65))))

(declare-fun lt!213601 () ListLongMap!67)

(declare-fun call!37497 () ListLongMap!67)

(assert (=> b!515126 (= lt!213601 call!37497)))

(declare-fun lt!213598 () Unit!8497)

(declare-fun lemmaRemoveNotContainedDoesNotChange!7 (ListLongMap!67 K!1382 Hashable!479) Unit!8497)

(assert (=> b!515126 (= lt!213598 (lemmaRemoveNotContainedDoesNotChange!7 lt!213601 k0!1740 (hashF!2355 hm!65)))))

(assert (=> b!515126 (= call!37498 call!37500)))

(declare-fun lt!213596 () Unit!8497)

(assert (=> b!515126 (= lt!213596 lt!213598)))

(declare-fun bm!37495 () Bool)

(declare-fun call!37501 () ListMap!165)

(declare-fun lt!213605 () tuple2!5712)

(assert (=> bm!37495 (= call!37501 (map!1012 (_2!3072 lt!213605)))))

(declare-fun bm!37496 () Bool)

(declare-fun call!37502 () ListMap!165)

(assert (=> bm!37496 (= call!37502 (map!1012 (_2!3074 lt!213580)))))

(declare-fun b!515127 () Bool)

(declare-fun e!308102 () Bool)

(declare-fun call!37499 () Bool)

(assert (=> b!515127 (= e!308102 call!37499)))

(declare-fun b!515128 () Bool)

(declare-fun eq!21 (ListMap!165 ListMap!165) Bool)

(assert (=> b!515128 (eq!21 call!37502 call!37500)))

(declare-fun lt!213586 () Unit!8497)

(declare-fun lt!213578 () Unit!8497)

(assert (=> b!515128 (= lt!213586 lt!213578)))

(declare-fun lt!213604 () ListLongMap!67)

(declare-fun lt!213593 () List!4710)

(declare-fun lt!213585 () (_ BitVec 64))

(declare-fun +!18 (ListLongMap!67 tuple2!5714) ListLongMap!67)

(assert (=> b!515128 (eq!21 (extractMap!15 (toList!401 (+!18 lt!213604 (tuple2!5715 lt!213585 lt!213593)))) (-!24 call!37498 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!7 (ListLongMap!67 (_ BitVec 64) List!4710 K!1382 Hashable!479) Unit!8497)

(assert (=> b!515128 (= lt!213578 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!7 lt!213604 lt!213585 lt!213593 k0!1740 (hashF!2355 (_2!3074 lt!213580))))))

(declare-fun lt!213583 () Unit!8497)

(declare-fun Unit!8499 () Unit!8497)

(assert (=> b!515128 (= lt!213583 Unit!8499)))

(declare-fun contains!1069 (ListMap!165 K!1382) Bool)

(assert (=> b!515128 (contains!1069 lt!213597 k0!1740)))

(declare-fun lt!213592 () Unit!8497)

(declare-fun Unit!8500 () Unit!8497)

(assert (=> b!515128 (= lt!213592 Unit!8500)))

(assert (=> b!515128 call!37503))

(declare-fun lt!213594 () Unit!8497)

(declare-fun Unit!8501 () Unit!8497)

(assert (=> b!515128 (= lt!213594 Unit!8501)))

(assert (=> b!515128 (allKeysSameHashInMap!22 (map!1013 (v!15732 (underlying!1194 (_2!3074 lt!213580)))) (hashF!2355 (_2!3074 lt!213580)))))

(declare-fun lt!213579 () Unit!8497)

(declare-fun Unit!8502 () Unit!8497)

(assert (=> b!515128 (= lt!213579 Unit!8502)))

(assert (=> b!515128 (forall!1384 (toList!401 (map!1013 (v!15732 (underlying!1194 (_2!3074 lt!213580))))) lambda!14361)))

(declare-fun lt!213599 () Unit!8497)

(declare-fun lt!213587 () Unit!8497)

(assert (=> b!515128 (= lt!213599 lt!213587)))

(declare-fun e!308103 () Bool)

(assert (=> b!515128 e!308103))

(declare-fun res!218454 () Bool)

(assert (=> b!515128 (=> (not res!218454) (not e!308103))))

(declare-fun lt!213588 () ListLongMap!67)

(assert (=> b!515128 (= res!218454 (forall!1384 (toList!401 lt!213588) lambda!14361))))

(assert (=> b!515128 (= lt!213588 (+!18 lt!213604 (tuple2!5715 lt!213585 lt!213593)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!9 (ListLongMap!67 (_ BitVec 64) List!4710 Hashable!479) Unit!8497)

(assert (=> b!515128 (= lt!213587 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!9 lt!213604 lt!213585 lt!213593 (hashF!2355 (_2!3074 lt!213580))))))

(declare-fun lt!213590 () Unit!8497)

(declare-fun lt!213582 () Unit!8497)

(assert (=> b!515128 (= lt!213590 lt!213582)))

(declare-fun lt!213584 () List!4710)

(declare-fun allKeysSameHash!10 (List!4710 (_ BitVec 64) Hashable!479) Bool)

(declare-fun removePairForKey!9 (List!4710 K!1382) List!4710)

(assert (=> b!515128 (allKeysSameHash!10 (removePairForKey!9 lt!213584 k0!1740) lt!213585 (hashF!2355 (_2!3074 lt!213580)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!9 (List!4710 K!1382 (_ BitVec 64) Hashable!479) Unit!8497)

(assert (=> b!515128 (= lt!213582 (lemmaRemovePairForKeyPreservesHash!9 lt!213584 k0!1740 lt!213585 (hashF!2355 (_2!3074 lt!213580))))))

(declare-fun lt!213581 () Unit!8497)

(declare-fun lt!213591 () Unit!8497)

(assert (=> b!515128 (= lt!213581 lt!213591)))

(assert (=> b!515128 (allKeysSameHash!10 lt!213584 lt!213585 (hashF!2355 (_2!3074 lt!213580)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!9 (List!4711 (_ BitVec 64) List!4710 Hashable!479) Unit!8497)

(assert (=> b!515128 (= lt!213591 (lemmaInLongMapAllKeySameHashThenForTuple!9 (toList!401 lt!213604) lt!213585 lt!213584 (hashF!2355 (_2!3074 lt!213580))))))

(declare-fun e!308099 () Unit!8497)

(declare-fun Unit!8503 () Unit!8497)

(assert (=> b!515128 (= e!308099 Unit!8503)))

(declare-fun b!515129 () Bool)

(declare-fun e!308098 () Bool)

(assert (=> b!515129 (= e!308098 e!308102)))

(declare-fun c!99846 () Bool)

(assert (=> b!515129 (= c!99846 (_1!3072 lt!213605))))

(declare-fun d!184396 () Bool)

(assert (=> d!184396 e!308098))

(declare-fun res!218455 () Bool)

(assert (=> d!184396 (=> (not res!218455) (not e!308098))))

(assert (=> d!184396 (= res!218455 ((_ is HashMap!479) (_2!3072 lt!213605)))))

(assert (=> d!184396 (= lt!213605 e!308101)))

(declare-fun lt!213606 () Bool)

(assert (=> d!184396 (= c!99847 (not lt!213606))))

(declare-fun contains!1070 (MutableMap!479 K!1382) Bool)

(assert (=> d!184396 (= lt!213606 (contains!1070 hm!65 k0!1740))))

(assert (=> d!184396 (valid!464 hm!65)))

(assert (=> d!184396 (= (remove!27 hm!65 k0!1740) lt!213605)))

(declare-fun b!515130 () Bool)

(assert (=> b!515130 (= e!308102 call!37499)))

(declare-fun b!515131 () Bool)

(assert (=> b!515131 (= e!308103 (allKeysSameHashInMap!22 lt!213588 (hashF!2355 (_2!3074 lt!213580))))))

(declare-fun b!515132 () Bool)

(declare-fun e!308100 () ListMap!165)

(assert (=> b!515132 (= e!308100 call!37504)))

(declare-fun bm!37497 () Bool)

(assert (=> bm!37497 (= call!37497 (map!1013 (v!15732 (underlying!1194 hm!65))))))

(declare-fun b!515133 () Bool)

(assert (=> b!515133 (= e!308100 (-!24 call!37504 k0!1740))))

(declare-datatypes ((tuple2!5718 0))(
  ( (tuple2!5719 (_1!3075 Bool) (_2!3075 MutLongMap!507)) )
))
(declare-fun lt!213595 () tuple2!5718)

(assert (=> b!515134 (= e!308101 (tuple2!5713 (_1!3075 lt!213595) (_2!3074 lt!213580)))))

(declare-fun hash!508 (Hashable!479 K!1382) (_ BitVec 64))

(assert (=> b!515134 (= lt!213585 (hash!508 (hashF!2355 hm!65) k0!1740))))

(declare-fun apply!1177 (MutLongMap!507 (_ BitVec 64)) List!4710)

(assert (=> b!515134 (= lt!213584 (apply!1177 (v!15732 (underlying!1194 hm!65)) lt!213585))))

(declare-fun lt!213589 () Unit!8497)

(declare-fun forallContained!440 (List!4711 Int tuple2!5714) Unit!8497)

(assert (=> b!515134 (= lt!213589 (forallContained!440 (toList!401 call!37497) lambda!14361 (tuple2!5715 lt!213585 (apply!1177 (v!15732 (underlying!1194 hm!65)) lt!213585))))))

(assert (=> b!515134 (= lt!213597 (map!1012 hm!65))))

(assert (=> b!515134 (= lt!213604 call!37497)))

(assert (=> b!515134 (= lt!213593 (removePairForKey!9 lt!213584 k0!1740))))

(declare-fun update!48 (MutLongMap!507 (_ BitVec 64) List!4710) tuple2!5718)

(assert (=> b!515134 (= lt!213595 (update!48 (v!15732 (underlying!1194 hm!65)) lt!213585 lt!213593))))

(declare-fun Unit!8504 () Unit!8497)

(declare-fun Unit!8505 () Unit!8497)

(assert (=> b!515134 (= lt!213580 (ite (and (_1!3075 lt!213595) lt!213606) (tuple2!5717 Unit!8504 (HashMap!479 (Cell!1972 (_2!3075 lt!213595)) (hashF!2355 hm!65) (bvsub (_size!1124 hm!65) #b00000000000000000000000000000001) (defaultValue!628 hm!65))) (tuple2!5717 Unit!8505 (HashMap!479 (Cell!1972 (_2!3075 lt!213595)) (hashF!2355 hm!65) (_size!1124 hm!65) (defaultValue!628 hm!65)))))))

(declare-fun lt!213600 () Unit!8497)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!9 (List!4710 K!1382) Unit!8497)

(assert (=> b!515134 (= lt!213600 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!9 lt!213584 k0!1740))))

(declare-fun noDuplicateKeys!11 (List!4710) Bool)

(assert (=> b!515134 (noDuplicateKeys!11 (removePairForKey!9 lt!213584 k0!1740))))

(declare-fun lt!213603 () Unit!8497)

(assert (=> b!515134 (= lt!213603 lt!213600)))

(declare-fun c!99848 () Bool)

(assert (=> b!515134 (= c!99848 (_1!3075 lt!213595))))

(declare-fun lt!213577 () Unit!8497)

(assert (=> b!515134 (= lt!213577 e!308099)))

(declare-fun b!515135 () Bool)

(declare-fun res!218453 () Bool)

(assert (=> b!515135 (=> (not res!218453) (not e!308098))))

(assert (=> b!515135 (= res!218453 (valid!464 (_2!3072 lt!213605)))))

(declare-fun b!515136 () Bool)

(assert (=> b!515136 (= call!37502 lt!213597)))

(declare-fun lt!213602 () Unit!8497)

(declare-fun Unit!8506 () Unit!8497)

(assert (=> b!515136 (= lt!213602 Unit!8506)))

(assert (=> b!515136 call!37503))

(declare-fun Unit!8507 () Unit!8497)

(assert (=> b!515136 (= e!308099 Unit!8507)))

(declare-fun bm!37498 () Bool)

(assert (=> bm!37498 (= call!37499 (eq!21 call!37501 e!308100))))

(declare-fun c!99849 () Bool)

(assert (=> bm!37498 (= c!99849 c!99846)))

(declare-fun bm!37499 () Bool)

(assert (=> bm!37499 (= call!37498 (extractMap!15 (ite c!99847 (toList!401 lt!213601) (toList!401 lt!213604))))))

(assert (= (and d!184396 c!99847) b!515126))

(assert (= (and d!184396 (not c!99847)) b!515134))

(assert (= (and b!515134 c!99848) b!515128))

(assert (= (and b!515134 (not c!99848)) b!515136))

(assert (= (and b!515128 res!218454) b!515131))

(assert (= (or b!515128 b!515136) bm!37492))

(assert (= (or b!515128 b!515136) bm!37496))

(assert (= (or b!515126 b!515134) bm!37497))

(assert (= (or b!515126 b!515128) bm!37499))

(assert (= (or b!515126 b!515128) bm!37493))

(assert (= (and d!184396 res!218455) b!515135))

(assert (= (and b!515135 res!218453) b!515129))

(assert (= (and b!515129 c!99846) b!515130))

(assert (= (and b!515129 (not c!99846)) b!515127))

(assert (= (or b!515130 b!515127) bm!37494))

(assert (= (or b!515130 b!515127) bm!37495))

(assert (= (or b!515130 b!515127) bm!37498))

(assert (= (and bm!37498 c!99849) b!515133))

(assert (= (and bm!37498 (not c!99849)) b!515132))

(assert (=> bm!37497 m!761131))

(declare-fun m!761149 () Bool)

(assert (=> bm!37492 m!761149))

(declare-fun m!761151 () Bool)

(assert (=> b!515133 m!761151))

(declare-fun m!761153 () Bool)

(assert (=> bm!37493 m!761153))

(assert (=> bm!37494 m!761123))

(declare-fun m!761155 () Bool)

(assert (=> bm!37498 m!761155))

(declare-fun m!761157 () Bool)

(assert (=> b!515135 m!761157))

(declare-fun m!761159 () Bool)

(assert (=> b!515126 m!761159))

(declare-fun m!761161 () Bool)

(assert (=> b!515131 m!761161))

(declare-fun m!761163 () Bool)

(assert (=> bm!37496 m!761163))

(declare-fun m!761165 () Bool)

(assert (=> bm!37499 m!761165))

(declare-fun m!761167 () Bool)

(assert (=> b!515128 m!761167))

(declare-fun m!761169 () Bool)

(assert (=> b!515128 m!761169))

(declare-fun m!761171 () Bool)

(assert (=> b!515128 m!761171))

(declare-fun m!761173 () Bool)

(assert (=> b!515128 m!761173))

(declare-fun m!761175 () Bool)

(assert (=> b!515128 m!761175))

(declare-fun m!761177 () Bool)

(assert (=> b!515128 m!761177))

(assert (=> b!515128 m!761171))

(declare-fun m!761179 () Bool)

(assert (=> b!515128 m!761179))

(declare-fun m!761181 () Bool)

(assert (=> b!515128 m!761181))

(declare-fun m!761183 () Bool)

(assert (=> b!515128 m!761183))

(declare-fun m!761185 () Bool)

(assert (=> b!515128 m!761185))

(declare-fun m!761187 () Bool)

(assert (=> b!515128 m!761187))

(declare-fun m!761189 () Bool)

(assert (=> b!515128 m!761189))

(declare-fun m!761191 () Bool)

(assert (=> b!515128 m!761191))

(declare-fun m!761193 () Bool)

(assert (=> b!515128 m!761193))

(declare-fun m!761195 () Bool)

(assert (=> b!515128 m!761195))

(assert (=> b!515128 m!761193))

(declare-fun m!761197 () Bool)

(assert (=> b!515128 m!761197))

(assert (=> b!515128 m!761183))

(assert (=> b!515128 m!761185))

(declare-fun m!761199 () Bool)

(assert (=> b!515128 m!761199))

(declare-fun m!761201 () Bool)

(assert (=> bm!37495 m!761201))

(declare-fun m!761203 () Bool)

(assert (=> d!184396 m!761203))

(assert (=> d!184396 m!761111))

(assert (=> b!515134 m!761123))

(assert (=> b!515134 m!761193))

(declare-fun m!761205 () Bool)

(assert (=> b!515134 m!761205))

(declare-fun m!761207 () Bool)

(assert (=> b!515134 m!761207))

(assert (=> b!515134 m!761193))

(declare-fun m!761209 () Bool)

(assert (=> b!515134 m!761209))

(declare-fun m!761211 () Bool)

(assert (=> b!515134 m!761211))

(declare-fun m!761213 () Bool)

(assert (=> b!515134 m!761213))

(declare-fun m!761215 () Bool)

(assert (=> b!515134 m!761215))

(assert (=> b!515083 d!184396))

(declare-fun d!184398 () Bool)

(declare-fun e!308106 () Bool)

(assert (=> d!184398 e!308106))

(declare-fun res!218458 () Bool)

(assert (=> d!184398 (=> (not res!218458) (not e!308106))))

(declare-fun lt!213609 () ListMap!165)

(assert (=> d!184398 (= res!218458 (not (contains!1069 lt!213609 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!7 (List!4710 K!1382) List!4710)

(assert (=> d!184398 (= lt!213609 (ListMap!166 (removePresrvNoDuplicatedKeys!7 (toList!400 lt!213512) k0!1740)))))

(assert (=> d!184398 (= (-!24 lt!213512 k0!1740) lt!213609)))

(declare-fun b!515139 () Bool)

(declare-datatypes ((List!4712 0))(
  ( (Nil!4702) (Cons!4702 (h!10099 K!1382) (t!73254 List!4712)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!815 (List!4712) (InoxSet K!1382))

(declare-fun keys!1834 (ListMap!165) List!4712)

(assert (=> b!515139 (= e!308106 (= ((_ map and) (content!815 (keys!1834 lt!213512)) ((_ map not) (store ((as const (Array K!1382 Bool)) false) k0!1740 true))) (content!815 (keys!1834 lt!213609))))))

(assert (= (and d!184398 res!218458) b!515139))

(declare-fun m!761217 () Bool)

(assert (=> d!184398 m!761217))

(declare-fun m!761219 () Bool)

(assert (=> d!184398 m!761219))

(declare-fun m!761221 () Bool)

(assert (=> b!515139 m!761221))

(declare-fun m!761223 () Bool)

(assert (=> b!515139 m!761223))

(declare-fun m!761225 () Bool)

(assert (=> b!515139 m!761225))

(declare-fun m!761227 () Bool)

(assert (=> b!515139 m!761227))

(assert (=> b!515139 m!761221))

(declare-fun m!761229 () Bool)

(assert (=> b!515139 m!761229))

(assert (=> b!515139 m!761223))

(assert (=> b!515083 d!184398))

(declare-fun mapNonEmpty!1954 () Bool)

(declare-fun mapRes!1954 () Bool)

(declare-fun tp!160723 () Bool)

(declare-fun e!308112 () Bool)

(assert (=> mapNonEmpty!1954 (= mapRes!1954 (and tp!160723 e!308112))))

(declare-fun mapValue!1954 () List!4710)

(declare-fun mapKey!1954 () (_ BitVec 32))

(declare-fun mapRest!1954 () (Array (_ BitVec 32) List!4710))

(assert (=> mapNonEmpty!1954 (= mapRest!1951 (store mapRest!1954 mapKey!1954 mapValue!1954))))

(declare-fun b!515147 () Bool)

(declare-fun e!308111 () Bool)

(declare-fun tp_is_empty!2589 () Bool)

(declare-fun tp!160721 () Bool)

(assert (=> b!515147 (= e!308111 (and tp_is_empty!2587 tp_is_empty!2589 tp!160721))))

(declare-fun b!515146 () Bool)

(declare-fun tp!160722 () Bool)

(assert (=> b!515146 (= e!308112 (and tp_is_empty!2587 tp_is_empty!2589 tp!160722))))

(declare-fun mapIsEmpty!1954 () Bool)

(assert (=> mapIsEmpty!1954 mapRes!1954))

(declare-fun condMapEmpty!1954 () Bool)

(declare-fun mapDefault!1954 () List!4710)

(assert (=> mapNonEmpty!1951 (= condMapEmpty!1954 (= mapRest!1951 ((as const (Array (_ BitVec 32) List!4710)) mapDefault!1954)))))

(assert (=> mapNonEmpty!1951 (= tp!160713 (and e!308111 mapRes!1954))))

(assert (= (and mapNonEmpty!1951 condMapEmpty!1954) mapIsEmpty!1954))

(assert (= (and mapNonEmpty!1951 (not condMapEmpty!1954)) mapNonEmpty!1954))

(assert (= (and mapNonEmpty!1954 ((_ is Cons!4700) mapValue!1954)) b!515146))

(assert (= (and mapNonEmpty!1951 ((_ is Cons!4700) mapDefault!1954)) b!515147))

(declare-fun m!761231 () Bool)

(assert (=> mapNonEmpty!1954 m!761231))

(declare-fun b!515152 () Bool)

(declare-fun tp!160726 () Bool)

(declare-fun e!308115 () Bool)

(assert (=> b!515152 (= e!308115 (and tp_is_empty!2587 tp_is_empty!2589 tp!160726))))

(assert (=> mapNonEmpty!1951 (= tp!160707 e!308115)))

(assert (= (and mapNonEmpty!1951 ((_ is Cons!4700) mapValue!1951)) b!515152))

(declare-fun tp!160727 () Bool)

(declare-fun b!515153 () Bool)

(declare-fun e!308116 () Bool)

(assert (=> b!515153 (= e!308116 (and tp_is_empty!2587 tp_is_empty!2589 tp!160727))))

(assert (=> b!515087 (= tp!160710 e!308116)))

(assert (= (and b!515087 ((_ is Cons!4700) (zeroValue!763 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65))))))) b!515153))

(declare-fun e!308117 () Bool)

(declare-fun b!515154 () Bool)

(declare-fun tp!160728 () Bool)

(assert (=> b!515154 (= e!308117 (and tp_is_empty!2587 tp_is_empty!2589 tp!160728))))

(assert (=> b!515087 (= tp!160709 e!308117)))

(assert (= (and b!515087 ((_ is Cons!4700) (minValue!763 (v!15731 (underlying!1193 (v!15732 (underlying!1194 hm!65))))))) b!515154))

(declare-fun b!515155 () Bool)

(declare-fun tp!160729 () Bool)

(declare-fun e!308118 () Bool)

(assert (=> b!515155 (= e!308118 (and tp_is_empty!2587 tp_is_empty!2589 tp!160729))))

(assert (=> b!515089 (= tp!160711 e!308118)))

(assert (= (and b!515089 ((_ is Cons!4700) mapDefault!1951)) b!515155))

(declare-fun b_lambda!20003 () Bool)

(assert (= b_lambda!20001 (or (and start!46674 b_free!13503) b_lambda!20003)))

(check-sat b_and!50943 (not d!184386) tp_is_empty!2587 (not mapNonEmpty!1954) b_and!50945 (not b_next!13499) (not b_lambda!20003) (not b!515155) (not b!515146) (not b!515102) (not b!515153) (not d!184394) (not bm!37495) (not b_next!13503) (not b!515103) (not b!515139) (not bm!37497) (not b!515134) (not b!515126) (not d!184398) (not b_next!13501) (not bm!37498) (not bm!37492) (not b!515101) (not b!515128) (not bm!37494) (not b!515154) (not b!515147) (not b!515131) b_and!50949 (not d!184396) tp_is_empty!2589 (not d!184388) (not b!515133) (not bm!37496) (not bm!37499) (not b!515135) (not b!515100) (not b!515095) (not bm!37493) (not b!515152))
(check-sat (not b_next!13503) b_and!50943 b_and!50945 (not b_next!13499) (not b_next!13501) b_and!50949)
