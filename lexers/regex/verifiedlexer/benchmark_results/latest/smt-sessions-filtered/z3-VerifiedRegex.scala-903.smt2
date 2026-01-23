; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46980 () Bool)

(assert start!46980)

(declare-fun b!517031 () Bool)

(declare-fun b_free!13619 () Bool)

(declare-fun b_next!13627 () Bool)

(assert (=> b!517031 (= b_free!13619 (not b_next!13627))))

(declare-fun tp!161340 () Bool)

(declare-fun b_and!51093 () Bool)

(assert (=> b!517031 (= tp!161340 b_and!51093)))

(declare-fun b_free!13621 () Bool)

(declare-fun b_next!13629 () Bool)

(assert (=> start!46980 (= b_free!13621 (not b_next!13629))))

(declare-fun tp!161347 () Bool)

(declare-fun b_and!51095 () Bool)

(assert (=> start!46980 (= tp!161347 b_and!51095)))

(declare-fun b!517035 () Bool)

(declare-fun b_free!13623 () Bool)

(declare-fun b_next!13631 () Bool)

(assert (=> b!517035 (= b_free!13623 (not b_next!13631))))

(declare-fun tp!161342 () Bool)

(declare-fun b_and!51097 () Bool)

(assert (=> b!517035 (= tp!161342 b_and!51097)))

(declare-fun b!517023 () Bool)

(declare-fun res!219271 () Bool)

(declare-fun e!309469 () Bool)

(assert (=> b!517023 (=> (not res!219271) (not e!309469))))

(declare-datatypes ((V!1530 0))(
  ( (V!1531 (val!1809 Int)) )
))
(declare-datatypes ((K!1432 0))(
  ( (K!1433 (val!1810 Int)) )
))
(declare-datatypes ((tuple2!5844 0))(
  ( (tuple2!5845 (_1!3138 K!1432) (_2!3138 V!1530)) )
))
(declare-datatypes ((List!4748 0))(
  ( (Nil!4738) (Cons!4738 (h!10137 tuple2!5844) (t!73318 List!4748)) )
))
(declare-datatypes ((array!2045 0))(
  ( (array!2046 (arr!938 (Array (_ BitVec 32) List!4748)) (size!3872 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!499 0))(
  ( (HashableExt!498 (__x!3472 Int)) )
))
(declare-datatypes ((array!2047 0))(
  ( (array!2048 (arr!939 (Array (_ BitVec 32) (_ BitVec 64))) (size!3873 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1054 0))(
  ( (LongMapFixedSize!1055 (defaultEntry!878 Int) (mask!1955 (_ BitVec 32)) (extraKeys!773 (_ BitVec 32)) (zeroValue!783 List!4748) (minValue!783 List!4748) (_size!1163 (_ BitVec 32)) (_keys!818 array!2047) (_values!805 array!2045) (_vacant!588 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2049 0))(
  ( (Cell!2050 (v!15785 LongMapFixedSize!1054)) )
))
(declare-datatypes ((MutLongMap!527 0))(
  ( (LongMap!527 (underlying!1233 Cell!2049)) (MutLongMapExt!526 (__x!3473 Int)) )
))
(declare-datatypes ((Cell!2051 0))(
  ( (Cell!2052 (v!15786 MutLongMap!527)) )
))
(declare-datatypes ((MutableMap!499 0))(
  ( (MutableMapExt!498 (__x!3474 Int)) (HashMap!499 (underlying!1234 Cell!2051) (hashF!2389 Hashable!499) (_size!1164 (_ BitVec 32)) (defaultValue!648 Int)) )
))
(declare-datatypes ((tuple2!5846 0))(
  ( (tuple2!5847 (_1!3139 Bool) (_2!3139 MutableMap!499)) )
))
(declare-fun lt!215138 () tuple2!5846)

(assert (=> b!517023 (= res!219271 (not (_1!3139 lt!215138)))))

(declare-fun b!517024 () Bool)

(declare-fun e!309471 () Bool)

(declare-fun e!309470 () Bool)

(assert (=> b!517024 (= e!309471 e!309470)))

(declare-fun res!219275 () Bool)

(assert (=> b!517024 (=> (not res!219275) (not e!309470))))

(declare-fun valid!494 (MutableMap!499) Bool)

(assert (=> b!517024 (= res!219275 (valid!494 (_2!3139 lt!215138)))))

(declare-fun hm!65 () MutableMap!499)

(declare-fun k0!1740 () K!1432)

(declare-fun remove!45 (MutableMap!499 K!1432) tuple2!5846)

(assert (=> b!517024 (= lt!215138 (remove!45 hm!65 k0!1740))))

(declare-datatypes ((ListMap!205 0))(
  ( (ListMap!206 (toList!429 List!4748)) )
))
(declare-fun lt!215135 () ListMap!205)

(declare-fun lt!215137 () ListMap!205)

(declare-fun -!42 (ListMap!205 K!1432) ListMap!205)

(assert (=> b!517024 (= lt!215135 (-!42 lt!215137 k0!1740))))

(declare-fun b!517025 () Bool)

(declare-fun e!309472 () Bool)

(declare-fun e!309476 () Bool)

(assert (=> b!517025 (= e!309472 e!309476)))

(declare-fun b!517026 () Bool)

(declare-fun res!219272 () Bool)

(assert (=> b!517026 (=> (not res!219272) (not e!309469))))

(declare-fun lt!215139 () ListMap!205)

(declare-fun eq!37 (ListMap!205 ListMap!205) Bool)

(assert (=> b!517026 (= res!219272 (eq!37 lt!215139 lt!215137))))

(declare-fun b!517027 () Bool)

(declare-fun e!309474 () Bool)

(declare-fun tp!161346 () Bool)

(declare-fun mapRes!2040 () Bool)

(assert (=> b!517027 (= e!309474 (and tp!161346 mapRes!2040))))

(declare-fun condMapEmpty!2040 () Bool)

(declare-fun mapDefault!2040 () List!4748)

(assert (=> b!517027 (= condMapEmpty!2040 (= (arr!938 (_values!805 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) ((as const (Array (_ BitVec 32) List!4748)) mapDefault!2040)))))

(declare-fun b!517029 () Bool)

(declare-fun res!219270 () Bool)

(declare-fun e!309479 () Bool)

(assert (=> b!517029 (=> (not res!219270) (not e!309479))))

(assert (=> b!517029 (= res!219270 (valid!494 hm!65))))

(declare-fun mapNonEmpty!2040 () Bool)

(declare-fun tp!161344 () Bool)

(declare-fun tp!161341 () Bool)

(assert (=> mapNonEmpty!2040 (= mapRes!2040 (and tp!161344 tp!161341))))

(declare-fun mapValue!2040 () List!4748)

(declare-fun mapKey!2040 () (_ BitVec 32))

(declare-fun mapRest!2040 () (Array (_ BitVec 32) List!4748))

(assert (=> mapNonEmpty!2040 (= (arr!938 (_values!805 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) (store mapRest!2040 mapKey!2040 mapValue!2040))))

(declare-fun b!517030 () Bool)

(assert (=> b!517030 (= e!309479 e!309471)))

(declare-fun res!219274 () Bool)

(assert (=> b!517030 (=> (not res!219274) (not e!309471))))

(declare-fun p!6060 () Int)

(declare-fun forall!1410 (List!4748 Int) Bool)

(assert (=> b!517030 (= res!219274 (forall!1410 (toList!429 lt!215137) p!6060))))

(declare-fun map!1053 (MutableMap!499) ListMap!205)

(assert (=> b!517030 (= lt!215137 (map!1053 hm!65))))

(declare-fun e!309475 () Bool)

(declare-fun e!309473 () Bool)

(assert (=> b!517031 (= e!309475 (and e!309473 tp!161340))))

(declare-fun b!517032 () Bool)

(declare-fun invariantList!80 (List!4748) Bool)

(assert (=> b!517032 (= e!309469 (not (invariantList!80 (toList!429 lt!215135))))))

(declare-fun b!517033 () Bool)

(declare-fun e!309478 () Bool)

(declare-fun lt!215136 () MutLongMap!527)

(get-info :version)

(assert (=> b!517033 (= e!309473 (and e!309478 ((_ is LongMap!527) lt!215136)))))

(assert (=> b!517033 (= lt!215136 (v!15786 (underlying!1234 hm!65)))))

(declare-fun b!517034 () Bool)

(assert (=> b!517034 (= e!309470 e!309469)))

(declare-fun res!219276 () Bool)

(assert (=> b!517034 (=> (not res!219276) (not e!309469))))

(assert (=> b!517034 (= res!219276 (invariantList!80 (toList!429 lt!215139)))))

(assert (=> b!517034 (= lt!215139 (map!1053 (_2!3139 lt!215138)))))

(declare-fun mapIsEmpty!2040 () Bool)

(assert (=> mapIsEmpty!2040 mapRes!2040))

(declare-fun tp!161343 () Bool)

(declare-fun tp!161345 () Bool)

(declare-fun array_inv!685 (array!2047) Bool)

(declare-fun array_inv!686 (array!2045) Bool)

(assert (=> b!517035 (= e!309476 (and tp!161342 tp!161345 tp!161343 (array_inv!685 (_keys!818 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) (array_inv!686 (_values!805 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) e!309474))))

(declare-fun res!219273 () Bool)

(assert (=> start!46980 (=> (not res!219273) (not e!309479))))

(assert (=> start!46980 (= res!219273 ((_ is HashMap!499) hm!65))))

(assert (=> start!46980 e!309479))

(assert (=> start!46980 e!309475))

(assert (=> start!46980 tp!161347))

(declare-fun tp_is_empty!2645 () Bool)

(assert (=> start!46980 tp_is_empty!2645))

(declare-fun b!517028 () Bool)

(assert (=> b!517028 (= e!309478 e!309472)))

(assert (= (and start!46980 res!219273) b!517029))

(assert (= (and b!517029 res!219270) b!517030))

(assert (= (and b!517030 res!219274) b!517024))

(assert (= (and b!517024 res!219275) b!517034))

(assert (= (and b!517034 res!219276) b!517023))

(assert (= (and b!517023 res!219271) b!517026))

(assert (= (and b!517026 res!219272) b!517032))

(assert (= (and b!517027 condMapEmpty!2040) mapIsEmpty!2040))

(assert (= (and b!517027 (not condMapEmpty!2040)) mapNonEmpty!2040))

(assert (= b!517035 b!517027))

(assert (= b!517025 b!517035))

(assert (= b!517028 b!517025))

(assert (= (and b!517033 ((_ is LongMap!527) (v!15786 (underlying!1234 hm!65)))) b!517028))

(assert (= b!517031 b!517033))

(assert (= (and start!46980 ((_ is HashMap!499) hm!65)) b!517031))

(declare-fun m!763617 () Bool)

(assert (=> mapNonEmpty!2040 m!763617))

(declare-fun m!763619 () Bool)

(assert (=> b!517034 m!763619))

(declare-fun m!763621 () Bool)

(assert (=> b!517034 m!763621))

(declare-fun m!763623 () Bool)

(assert (=> b!517029 m!763623))

(declare-fun m!763625 () Bool)

(assert (=> b!517030 m!763625))

(declare-fun m!763627 () Bool)

(assert (=> b!517030 m!763627))

(declare-fun m!763629 () Bool)

(assert (=> b!517024 m!763629))

(declare-fun m!763631 () Bool)

(assert (=> b!517024 m!763631))

(declare-fun m!763633 () Bool)

(assert (=> b!517024 m!763633))

(declare-fun m!763635 () Bool)

(assert (=> b!517026 m!763635))

(declare-fun m!763637 () Bool)

(assert (=> b!517035 m!763637))

(declare-fun m!763639 () Bool)

(assert (=> b!517035 m!763639))

(declare-fun m!763641 () Bool)

(assert (=> b!517032 m!763641))

(check-sat (not b!517035) b_and!51095 (not b_next!13629) (not b!517029) (not b!517026) (not b_next!13627) (not b_next!13631) (not b!517030) b_and!51093 b_and!51097 (not b!517032) tp_is_empty!2645 (not mapNonEmpty!2040) (not b!517027) (not b!517034) (not b!517024))
(check-sat b_and!51095 (not b_next!13629) (not b_next!13627) (not b_next!13631) b_and!51093 b_and!51097)
(get-model)

(declare-fun d!184874 () Bool)

(declare-fun noDuplicatedKeys!19 (List!4748) Bool)

(assert (=> d!184874 (= (invariantList!80 (toList!429 lt!215135)) (noDuplicatedKeys!19 (toList!429 lt!215135)))))

(declare-fun bs!59915 () Bool)

(assert (= bs!59915 d!184874))

(declare-fun m!763643 () Bool)

(assert (=> bs!59915 m!763643))

(assert (=> b!517032 d!184874))

(declare-fun d!184876 () Bool)

(assert (=> d!184876 (= (invariantList!80 (toList!429 lt!215139)) (noDuplicatedKeys!19 (toList!429 lt!215139)))))

(declare-fun bs!59916 () Bool)

(assert (= bs!59916 d!184876))

(declare-fun m!763645 () Bool)

(assert (=> bs!59916 m!763645))

(assert (=> b!517034 d!184876))

(declare-fun d!184878 () Bool)

(declare-fun lt!215142 () ListMap!205)

(assert (=> d!184878 (invariantList!80 (toList!429 lt!215142))))

(declare-datatypes ((tuple2!5848 0))(
  ( (tuple2!5849 (_1!3140 (_ BitVec 64)) (_2!3140 List!4748)) )
))
(declare-datatypes ((List!4749 0))(
  ( (Nil!4739) (Cons!4739 (h!10138 tuple2!5848) (t!73321 List!4749)) )
))
(declare-fun extractMap!24 (List!4749) ListMap!205)

(declare-datatypes ((ListLongMap!85 0))(
  ( (ListLongMap!86 (toList!430 List!4749)) )
))
(declare-fun map!1054 (MutLongMap!527) ListLongMap!85)

(assert (=> d!184878 (= lt!215142 (extractMap!24 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))))

(assert (=> d!184878 (valid!494 (_2!3139 lt!215138))))

(assert (=> d!184878 (= (map!1053 (_2!3139 lt!215138)) lt!215142)))

(declare-fun bs!59917 () Bool)

(assert (= bs!59917 d!184878))

(declare-fun m!763647 () Bool)

(assert (=> bs!59917 m!763647))

(declare-fun m!763649 () Bool)

(assert (=> bs!59917 m!763649))

(declare-fun m!763651 () Bool)

(assert (=> bs!59917 m!763651))

(assert (=> bs!59917 m!763629))

(assert (=> b!517034 d!184878))

(declare-fun d!184880 () Bool)

(declare-fun res!219281 () Bool)

(declare-fun e!309482 () Bool)

(assert (=> d!184880 (=> (not res!219281) (not e!309482))))

(declare-fun valid!495 (MutLongMap!527) Bool)

(assert (=> d!184880 (= res!219281 (valid!495 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))

(assert (=> d!184880 (= (valid!494 (_2!3139 lt!215138)) e!309482)))

(declare-fun b!517040 () Bool)

(declare-fun res!219282 () Bool)

(assert (=> b!517040 (=> (not res!219282) (not e!309482))))

(declare-fun lambda!14538 () Int)

(declare-fun forall!1411 (List!4749 Int) Bool)

(assert (=> b!517040 (= res!219282 (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138))))) lambda!14538))))

(declare-fun b!517041 () Bool)

(declare-fun allKeysSameHashInMap!31 (ListLongMap!85 Hashable!499) Bool)

(assert (=> b!517041 (= e!309482 (allKeysSameHashInMap!31 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))) (hashF!2389 (_2!3139 lt!215138))))))

(assert (= (and d!184880 res!219281) b!517040))

(assert (= (and b!517040 res!219282) b!517041))

(declare-fun m!763653 () Bool)

(assert (=> d!184880 m!763653))

(assert (=> b!517040 m!763649))

(declare-fun m!763655 () Bool)

(assert (=> b!517040 m!763655))

(assert (=> b!517041 m!763649))

(assert (=> b!517041 m!763649))

(declare-fun m!763657 () Bool)

(assert (=> b!517041 m!763657))

(assert (=> b!517024 d!184880))

(declare-fun bs!59918 () Bool)

(declare-fun b!517068 () Bool)

(assert (= bs!59918 (and b!517068 b!517040)))

(declare-fun lambda!14545 () Int)

(assert (=> bs!59918 (= lambda!14545 lambda!14538)))

(declare-fun bm!37800 () Bool)

(declare-fun lt!215221 () ListMap!205)

(declare-fun call!37805 () ListMap!205)

(declare-fun c!100121 () Bool)

(declare-fun call!37811 () ListMap!205)

(assert (=> bm!37800 (= call!37805 (-!42 (ite c!100121 call!37811 lt!215221) k0!1740))))

(declare-fun bm!37801 () Bool)

(declare-fun call!37809 () Bool)

(declare-datatypes ((Unit!8634 0))(
  ( (Unit!8635) )
))
(declare-datatypes ((tuple2!5850 0))(
  ( (tuple2!5851 (_1!3141 Unit!8634) (_2!3141 MutableMap!499)) )
))
(declare-fun lt!215217 () tuple2!5850)

(assert (=> bm!37801 (= call!37809 (valid!494 (_2!3141 lt!215217)))))

(declare-fun b!517064 () Bool)

(declare-fun call!37806 () ListMap!205)

(assert (=> b!517064 (eq!37 call!37806 call!37805)))

(declare-fun lt!215231 () Unit!8634)

(declare-fun lt!215212 () Unit!8634)

(assert (=> b!517064 (= lt!215231 lt!215212)))

(declare-fun lt!215219 () (_ BitVec 64))

(declare-fun lt!215208 () List!4748)

(declare-fun lt!215210 () ListLongMap!85)

(declare-fun +!27 (ListLongMap!85 tuple2!5848) ListLongMap!85)

(assert (=> b!517064 (eq!37 (extractMap!24 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))) (-!42 call!37811 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!16 (ListLongMap!85 (_ BitVec 64) List!4748 K!1432 Hashable!499) Unit!8634)

(assert (=> b!517064 (= lt!215212 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!16 lt!215210 lt!215219 lt!215208 k0!1740 (hashF!2389 (_2!3141 lt!215217))))))

(declare-fun lt!215223 () Unit!8634)

(declare-fun Unit!8636 () Unit!8634)

(assert (=> b!517064 (= lt!215223 Unit!8636)))

(declare-fun contains!1097 (ListMap!205 K!1432) Bool)

(assert (=> b!517064 (contains!1097 lt!215221 k0!1740)))

(declare-fun lt!215207 () Unit!8634)

(declare-fun Unit!8637 () Unit!8634)

(assert (=> b!517064 (= lt!215207 Unit!8637)))

(assert (=> b!517064 call!37809))

(declare-fun lt!215213 () Unit!8634)

(declare-fun Unit!8638 () Unit!8634)

(assert (=> b!517064 (= lt!215213 Unit!8638)))

(declare-fun call!37810 () ListLongMap!85)

(assert (=> b!517064 (allKeysSameHashInMap!31 call!37810 (hashF!2389 (_2!3141 lt!215217)))))

(declare-fun lt!215216 () Unit!8634)

(declare-fun Unit!8639 () Unit!8634)

(assert (=> b!517064 (= lt!215216 Unit!8639)))

(assert (=> b!517064 (forall!1411 (toList!430 call!37810) lambda!14545)))

(declare-fun lt!215203 () Unit!8634)

(declare-fun lt!215211 () Unit!8634)

(assert (=> b!517064 (= lt!215203 lt!215211)))

(declare-fun e!309496 () Bool)

(assert (=> b!517064 e!309496))

(declare-fun res!219291 () Bool)

(assert (=> b!517064 (=> (not res!219291) (not e!309496))))

(declare-fun lt!215228 () ListLongMap!85)

(assert (=> b!517064 (= res!219291 (forall!1411 (toList!430 lt!215228) lambda!14545))))

(assert (=> b!517064 (= lt!215228 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!18 (ListLongMap!85 (_ BitVec 64) List!4748 Hashable!499) Unit!8634)

(assert (=> b!517064 (= lt!215211 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!18 lt!215210 lt!215219 lt!215208 (hashF!2389 (_2!3141 lt!215217))))))

(declare-fun lt!215229 () Unit!8634)

(declare-fun lt!215227 () Unit!8634)

(assert (=> b!517064 (= lt!215229 lt!215227)))

(declare-fun lt!215209 () List!4748)

(declare-fun allKeysSameHash!19 (List!4748 (_ BitVec 64) Hashable!499) Bool)

(declare-fun removePairForKey!18 (List!4748 K!1432) List!4748)

(assert (=> b!517064 (allKeysSameHash!19 (removePairForKey!18 lt!215209 k0!1740) lt!215219 (hashF!2389 (_2!3141 lt!215217)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!18 (List!4748 K!1432 (_ BitVec 64) Hashable!499) Unit!8634)

(assert (=> b!517064 (= lt!215227 (lemmaRemovePairForKeyPreservesHash!18 lt!215209 k0!1740 lt!215219 (hashF!2389 (_2!3141 lt!215217))))))

(declare-fun lt!215204 () Unit!8634)

(declare-fun lt!215230 () Unit!8634)

(assert (=> b!517064 (= lt!215204 lt!215230)))

(assert (=> b!517064 (allKeysSameHash!19 lt!215209 lt!215219 (hashF!2389 (_2!3141 lt!215217)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!18 (List!4749 (_ BitVec 64) List!4748 Hashable!499) Unit!8634)

(assert (=> b!517064 (= lt!215230 (lemmaInLongMapAllKeySameHashThenForTuple!18 (toList!430 lt!215210) lt!215219 lt!215209 (hashF!2389 (_2!3141 lt!215217))))))

(declare-fun e!309495 () Unit!8634)

(declare-fun Unit!8640 () Unit!8634)

(assert (=> b!517064 (= e!309495 Unit!8640)))

(declare-fun b!517065 () Bool)

(assert (=> b!517065 (= e!309496 (allKeysSameHashInMap!31 lt!215228 (hashF!2389 (_2!3141 lt!215217))))))

(declare-fun b!517066 () Bool)

(declare-fun res!219289 () Bool)

(declare-fun e!309498 () Bool)

(assert (=> b!517066 (=> (not res!219289) (not e!309498))))

(declare-fun lt!215218 () tuple2!5846)

(assert (=> b!517066 (= res!219289 (valid!494 (_2!3139 lt!215218)))))

(declare-fun b!517067 () Bool)

(declare-fun e!309500 () ListMap!205)

(declare-fun call!37807 () ListMap!205)

(assert (=> b!517067 (= e!309500 call!37807)))

(declare-fun e!309497 () tuple2!5846)

(declare-datatypes ((tuple2!5852 0))(
  ( (tuple2!5853 (_1!3142 Bool) (_2!3142 MutLongMap!527)) )
))
(declare-fun lt!215214 () tuple2!5852)

(assert (=> b!517068 (= e!309497 (tuple2!5847 (_1!3142 lt!215214) (_2!3141 lt!215217)))))

(declare-fun hash!527 (Hashable!499 K!1432) (_ BitVec 64))

(assert (=> b!517068 (= lt!215219 (hash!527 (hashF!2389 hm!65) k0!1740))))

(declare-fun apply!1190 (MutLongMap!527 (_ BitVec 64)) List!4748)

(assert (=> b!517068 (= lt!215209 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219))))

(declare-fun lt!215220 () Unit!8634)

(declare-fun forallContained!449 (List!4749 Int tuple2!5848) Unit!8634)

(assert (=> b!517068 (= lt!215220 (forallContained!449 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14545 (tuple2!5849 lt!215219 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219))))))

(assert (=> b!517068 (= lt!215221 (map!1053 hm!65))))

(assert (=> b!517068 (= lt!215210 (map!1054 (v!15786 (underlying!1234 hm!65))))))

(assert (=> b!517068 (= lt!215208 (removePairForKey!18 lt!215209 k0!1740))))

(declare-fun update!59 (MutLongMap!527 (_ BitVec 64) List!4748) tuple2!5852)

(assert (=> b!517068 (= lt!215214 (update!59 (v!15786 (underlying!1234 hm!65)) lt!215219 lt!215208))))

(declare-fun lt!215215 () Bool)

(declare-fun Unit!8641 () Unit!8634)

(declare-fun Unit!8642 () Unit!8634)

(assert (=> b!517068 (= lt!215217 (ite (and (_1!3142 lt!215214) lt!215215) (tuple2!5851 Unit!8641 (HashMap!499 (Cell!2052 (_2!3142 lt!215214)) (hashF!2389 hm!65) (bvsub (_size!1164 hm!65) #b00000000000000000000000000000001) (defaultValue!648 hm!65))) (tuple2!5851 Unit!8642 (HashMap!499 (Cell!2052 (_2!3142 lt!215214)) (hashF!2389 hm!65) (_size!1164 hm!65) (defaultValue!648 hm!65)))))))

(declare-fun lt!215226 () Unit!8634)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!18 (List!4748 K!1432) Unit!8634)

(assert (=> b!517068 (= lt!215226 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!18 lt!215209 k0!1740))))

(declare-fun noDuplicateKeys!20 (List!4748) Bool)

(assert (=> b!517068 (noDuplicateKeys!20 (removePairForKey!18 lt!215209 k0!1740))))

(declare-fun lt!215232 () Unit!8634)

(assert (=> b!517068 (= lt!215232 lt!215226)))

(declare-fun c!100124 () Bool)

(assert (=> b!517068 (= c!100124 (_1!3142 lt!215214))))

(declare-fun lt!215205 () Unit!8634)

(assert (=> b!517068 (= lt!215205 e!309495)))

(declare-fun b!517069 () Bool)

(declare-fun e!309499 () Bool)

(declare-fun call!37808 () Bool)

(assert (=> b!517069 (= e!309499 call!37808)))

(declare-fun d!184882 () Bool)

(assert (=> d!184882 e!309498))

(declare-fun res!219290 () Bool)

(assert (=> d!184882 (=> (not res!219290) (not e!309498))))

(assert (=> d!184882 (= res!219290 ((_ is HashMap!499) (_2!3139 lt!215218)))))

(assert (=> d!184882 (= lt!215218 e!309497)))

(assert (=> d!184882 (= c!100121 (not lt!215215))))

(declare-fun contains!1098 (MutableMap!499 K!1432) Bool)

(assert (=> d!184882 (= lt!215215 (contains!1098 hm!65 k0!1740))))

(assert (=> d!184882 (valid!494 hm!65)))

(assert (=> d!184882 (= (remove!45 hm!65 k0!1740) lt!215218)))

(declare-fun b!517070 () Bool)

(assert (=> b!517070 (= e!309497 (tuple2!5847 true hm!65))))

(declare-fun lt!215206 () ListLongMap!85)

(assert (=> b!517070 (= lt!215206 call!37810)))

(declare-fun lt!215222 () Unit!8634)

(declare-fun lemmaRemoveNotContainedDoesNotChange!16 (ListLongMap!85 K!1432 Hashable!499) Unit!8634)

(assert (=> b!517070 (= lt!215222 (lemmaRemoveNotContainedDoesNotChange!16 lt!215206 k0!1740 (hashF!2389 hm!65)))))

(assert (=> b!517070 (= call!37811 call!37805)))

(declare-fun lt!215224 () Unit!8634)

(assert (=> b!517070 (= lt!215224 lt!215222)))

(declare-fun bm!37802 () Bool)

(assert (=> bm!37802 (= call!37806 (map!1053 (_2!3141 lt!215217)))))

(declare-fun b!517071 () Bool)

(assert (=> b!517071 (= e!309499 call!37808)))

(declare-fun b!517072 () Bool)

(assert (=> b!517072 (= e!309500 (-!42 call!37807 k0!1740))))

(declare-fun bm!37803 () Bool)

(assert (=> bm!37803 (= call!37811 (extractMap!24 (ite c!100121 (toList!430 lt!215206) (toList!430 lt!215210))))))

(declare-fun b!517073 () Bool)

(assert (=> b!517073 (= e!309498 e!309499)))

(declare-fun c!100123 () Bool)

(assert (=> b!517073 (= c!100123 (_1!3139 lt!215218))))

(declare-fun bm!37804 () Bool)

(assert (=> bm!37804 (= call!37810 (map!1054 (ite c!100121 (v!15786 (underlying!1234 hm!65)) (v!15786 (underlying!1234 (_2!3141 lt!215217))))))))

(declare-fun b!517074 () Bool)

(assert (=> b!517074 (= call!37806 lt!215221)))

(declare-fun lt!215225 () Unit!8634)

(declare-fun Unit!8643 () Unit!8634)

(assert (=> b!517074 (= lt!215225 Unit!8643)))

(assert (=> b!517074 call!37809))

(declare-fun Unit!8644 () Unit!8634)

(assert (=> b!517074 (= e!309495 Unit!8644)))

(declare-fun bm!37805 () Bool)

(assert (=> bm!37805 (= call!37807 (map!1053 hm!65))))

(declare-fun bm!37806 () Bool)

(declare-fun call!37812 () ListMap!205)

(assert (=> bm!37806 (= call!37812 (map!1053 (_2!3139 lt!215218)))))

(declare-fun bm!37807 () Bool)

(assert (=> bm!37807 (= call!37808 (eq!37 call!37812 e!309500))))

(declare-fun c!100122 () Bool)

(assert (=> bm!37807 (= c!100122 c!100123)))

(assert (= (and d!184882 c!100121) b!517070))

(assert (= (and d!184882 (not c!100121)) b!517068))

(assert (= (and b!517068 c!100124) b!517064))

(assert (= (and b!517068 (not c!100124)) b!517074))

(assert (= (and b!517064 res!219291) b!517065))

(assert (= (or b!517064 b!517074) bm!37801))

(assert (= (or b!517064 b!517074) bm!37802))

(assert (= (or b!517070 b!517064) bm!37804))

(assert (= (or b!517070 b!517064) bm!37803))

(assert (= (or b!517070 b!517064) bm!37800))

(assert (= (and d!184882 res!219290) b!517066))

(assert (= (and b!517066 res!219289) b!517073))

(assert (= (and b!517073 c!100123) b!517071))

(assert (= (and b!517073 (not c!100123)) b!517069))

(assert (= (or b!517071 b!517069) bm!37806))

(assert (= (or b!517071 b!517069) bm!37805))

(assert (= (or b!517071 b!517069) bm!37807))

(assert (= (and bm!37807 c!100122) b!517072))

(assert (= (and bm!37807 (not c!100122)) b!517067))

(declare-fun m!763659 () Bool)

(assert (=> bm!37803 m!763659))

(declare-fun m!763661 () Bool)

(assert (=> bm!37807 m!763661))

(assert (=> bm!37805 m!763627))

(declare-fun m!763663 () Bool)

(assert (=> b!517065 m!763663))

(declare-fun m!763665 () Bool)

(assert (=> b!517072 m!763665))

(declare-fun m!763667 () Bool)

(assert (=> b!517068 m!763667))

(declare-fun m!763669 () Bool)

(assert (=> b!517068 m!763669))

(assert (=> b!517068 m!763667))

(declare-fun m!763671 () Bool)

(assert (=> b!517068 m!763671))

(declare-fun m!763673 () Bool)

(assert (=> b!517068 m!763673))

(declare-fun m!763675 () Bool)

(assert (=> b!517068 m!763675))

(declare-fun m!763677 () Bool)

(assert (=> b!517068 m!763677))

(assert (=> b!517068 m!763627))

(declare-fun m!763679 () Bool)

(assert (=> b!517068 m!763679))

(declare-fun m!763681 () Bool)

(assert (=> b!517068 m!763681))

(declare-fun m!763683 () Bool)

(assert (=> bm!37804 m!763683))

(declare-fun m!763685 () Bool)

(assert (=> bm!37801 m!763685))

(declare-fun m!763687 () Bool)

(assert (=> d!184882 m!763687))

(assert (=> d!184882 m!763623))

(declare-fun m!763689 () Bool)

(assert (=> b!517070 m!763689))

(declare-fun m!763691 () Bool)

(assert (=> b!517066 m!763691))

(declare-fun m!763693 () Bool)

(assert (=> b!517064 m!763693))

(declare-fun m!763695 () Bool)

(assert (=> b!517064 m!763695))

(assert (=> b!517064 m!763667))

(declare-fun m!763697 () Bool)

(assert (=> b!517064 m!763697))

(assert (=> b!517064 m!763667))

(declare-fun m!763699 () Bool)

(assert (=> b!517064 m!763699))

(declare-fun m!763701 () Bool)

(assert (=> b!517064 m!763701))

(declare-fun m!763703 () Bool)

(assert (=> b!517064 m!763703))

(assert (=> b!517064 m!763699))

(declare-fun m!763705 () Bool)

(assert (=> b!517064 m!763705))

(declare-fun m!763707 () Bool)

(assert (=> b!517064 m!763707))

(declare-fun m!763709 () Bool)

(assert (=> b!517064 m!763709))

(assert (=> b!517064 m!763703))

(declare-fun m!763711 () Bool)

(assert (=> b!517064 m!763711))

(declare-fun m!763713 () Bool)

(assert (=> b!517064 m!763713))

(declare-fun m!763715 () Bool)

(assert (=> b!517064 m!763715))

(declare-fun m!763717 () Bool)

(assert (=> b!517064 m!763717))

(declare-fun m!763719 () Bool)

(assert (=> b!517064 m!763719))

(declare-fun m!763721 () Bool)

(assert (=> b!517064 m!763721))

(declare-fun m!763723 () Bool)

(assert (=> bm!37800 m!763723))

(declare-fun m!763725 () Bool)

(assert (=> bm!37806 m!763725))

(declare-fun m!763727 () Bool)

(assert (=> bm!37802 m!763727))

(assert (=> b!517024 d!184882))

(declare-fun d!184884 () Bool)

(declare-fun e!309503 () Bool)

(assert (=> d!184884 e!309503))

(declare-fun res!219294 () Bool)

(assert (=> d!184884 (=> (not res!219294) (not e!309503))))

(declare-fun lt!215235 () ListMap!205)

(assert (=> d!184884 (= res!219294 (not (contains!1097 lt!215235 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!16 (List!4748 K!1432) List!4748)

(assert (=> d!184884 (= lt!215235 (ListMap!206 (removePresrvNoDuplicatedKeys!16 (toList!429 lt!215137) k0!1740)))))

(assert (=> d!184884 (= (-!42 lt!215137 k0!1740) lt!215235)))

(declare-fun b!517077 () Bool)

(declare-datatypes ((List!4750 0))(
  ( (Nil!4740) (Cons!4740 (h!10139 K!1432) (t!73322 List!4750)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!832 (List!4750) (InoxSet K!1432))

(declare-fun keys!1863 (ListMap!205) List!4750)

(assert (=> b!517077 (= e!309503 (= ((_ map and) (content!832 (keys!1863 lt!215137)) ((_ map not) (store ((as const (Array K!1432 Bool)) false) k0!1740 true))) (content!832 (keys!1863 lt!215235))))))

(assert (= (and d!184884 res!219294) b!517077))

(declare-fun m!763729 () Bool)

(assert (=> d!184884 m!763729))

(declare-fun m!763731 () Bool)

(assert (=> d!184884 m!763731))

(declare-fun m!763733 () Bool)

(assert (=> b!517077 m!763733))

(declare-fun m!763735 () Bool)

(assert (=> b!517077 m!763735))

(declare-fun m!763737 () Bool)

(assert (=> b!517077 m!763737))

(declare-fun m!763739 () Bool)

(assert (=> b!517077 m!763739))

(declare-fun m!763741 () Bool)

(assert (=> b!517077 m!763741))

(assert (=> b!517077 m!763739))

(assert (=> b!517077 m!763735))

(assert (=> b!517024 d!184884))

(declare-fun bs!59919 () Bool)

(declare-fun b!517078 () Bool)

(assert (= bs!59919 (and b!517078 b!517040)))

(declare-fun lambda!14546 () Int)

(assert (=> bs!59919 (= lambda!14546 lambda!14538)))

(declare-fun bs!59920 () Bool)

(assert (= bs!59920 (and b!517078 b!517068)))

(assert (=> bs!59920 (= lambda!14546 lambda!14545)))

(declare-fun d!184886 () Bool)

(declare-fun res!219295 () Bool)

(declare-fun e!309504 () Bool)

(assert (=> d!184886 (=> (not res!219295) (not e!309504))))

(assert (=> d!184886 (= res!219295 (valid!495 (v!15786 (underlying!1234 hm!65))))))

(assert (=> d!184886 (= (valid!494 hm!65) e!309504)))

(declare-fun res!219296 () Bool)

(assert (=> b!517078 (=> (not res!219296) (not e!309504))))

(assert (=> b!517078 (= res!219296 (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14546))))

(declare-fun b!517079 () Bool)

(assert (=> b!517079 (= e!309504 (allKeysSameHashInMap!31 (map!1054 (v!15786 (underlying!1234 hm!65))) (hashF!2389 hm!65)))))

(assert (= (and d!184886 res!219295) b!517078))

(assert (= (and b!517078 res!219296) b!517079))

(declare-fun m!763743 () Bool)

(assert (=> d!184886 m!763743))

(assert (=> b!517078 m!763681))

(declare-fun m!763745 () Bool)

(assert (=> b!517078 m!763745))

(assert (=> b!517079 m!763681))

(assert (=> b!517079 m!763681))

(declare-fun m!763747 () Bool)

(assert (=> b!517079 m!763747))

(assert (=> b!517029 d!184886))

(declare-fun d!184888 () Bool)

(declare-fun content!833 (List!4748) (InoxSet tuple2!5844))

(assert (=> d!184888 (= (eq!37 lt!215139 lt!215137) (= (content!833 (toList!429 lt!215139)) (content!833 (toList!429 lt!215137))))))

(declare-fun bs!59921 () Bool)

(assert (= bs!59921 d!184888))

(declare-fun m!763749 () Bool)

(assert (=> bs!59921 m!763749))

(declare-fun m!763751 () Bool)

(assert (=> bs!59921 m!763751))

(assert (=> b!517026 d!184888))

(declare-fun d!184890 () Bool)

(declare-fun res!219301 () Bool)

(declare-fun e!309509 () Bool)

(assert (=> d!184890 (=> res!219301 e!309509)))

(assert (=> d!184890 (= res!219301 ((_ is Nil!4738) (toList!429 lt!215137)))))

(assert (=> d!184890 (= (forall!1410 (toList!429 lt!215137) p!6060) e!309509)))

(declare-fun b!517084 () Bool)

(declare-fun e!309510 () Bool)

(assert (=> b!517084 (= e!309509 e!309510)))

(declare-fun res!219302 () Bool)

(assert (=> b!517084 (=> (not res!219302) (not e!309510))))

(declare-fun dynLambda!2983 (Int tuple2!5844) Bool)

(assert (=> b!517084 (= res!219302 (dynLambda!2983 p!6060 (h!10137 (toList!429 lt!215137))))))

(declare-fun b!517085 () Bool)

(assert (=> b!517085 (= e!309510 (forall!1410 (t!73318 (toList!429 lt!215137)) p!6060))))

(assert (= (and d!184890 (not res!219301)) b!517084))

(assert (= (and b!517084 res!219302) b!517085))

(declare-fun b_lambda!20101 () Bool)

(assert (=> (not b_lambda!20101) (not b!517084)))

(declare-fun t!73320 () Bool)

(declare-fun tb!47169 () Bool)

(assert (=> (and start!46980 (= p!6060 p!6060) t!73320) tb!47169))

(declare-fun result!52240 () Bool)

(assert (=> tb!47169 (= result!52240 true)))

(assert (=> b!517084 t!73320))

(declare-fun b_and!51099 () Bool)

(assert (= b_and!51095 (and (=> t!73320 result!52240) b_and!51099)))

(declare-fun m!763753 () Bool)

(assert (=> b!517084 m!763753))

(declare-fun m!763755 () Bool)

(assert (=> b!517085 m!763755))

(assert (=> b!517030 d!184890))

(declare-fun d!184892 () Bool)

(declare-fun lt!215236 () ListMap!205)

(assert (=> d!184892 (invariantList!80 (toList!429 lt!215236))))

(assert (=> d!184892 (= lt!215236 (extractMap!24 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))))))

(assert (=> d!184892 (valid!494 hm!65)))

(assert (=> d!184892 (= (map!1053 hm!65) lt!215236)))

(declare-fun bs!59922 () Bool)

(assert (= bs!59922 d!184892))

(declare-fun m!763757 () Bool)

(assert (=> bs!59922 m!763757))

(assert (=> bs!59922 m!763681))

(declare-fun m!763759 () Bool)

(assert (=> bs!59922 m!763759))

(assert (=> bs!59922 m!763623))

(assert (=> b!517030 d!184892))

(declare-fun d!184894 () Bool)

(assert (=> d!184894 (= (array_inv!685 (_keys!818 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) (bvsge (size!3873 (_keys!818 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!517035 d!184894))

(declare-fun d!184896 () Bool)

(assert (=> d!184896 (= (array_inv!686 (_values!805 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) (bvsge (size!3872 (_values!805 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!517035 d!184896))

(declare-fun condMapEmpty!2043 () Bool)

(declare-fun mapDefault!2043 () List!4748)

(assert (=> mapNonEmpty!2040 (= condMapEmpty!2043 (= mapRest!2040 ((as const (Array (_ BitVec 32) List!4748)) mapDefault!2043)))))

(declare-fun e!309516 () Bool)

(declare-fun mapRes!2043 () Bool)

(assert (=> mapNonEmpty!2040 (= tp!161344 (and e!309516 mapRes!2043))))

(declare-fun mapIsEmpty!2043 () Bool)

(assert (=> mapIsEmpty!2043 mapRes!2043))

(declare-fun b!517093 () Bool)

(declare-fun tp_is_empty!2647 () Bool)

(declare-fun tp!161354 () Bool)

(assert (=> b!517093 (= e!309516 (and tp_is_empty!2645 tp_is_empty!2647 tp!161354))))

(declare-fun e!309515 () Bool)

(declare-fun tp!161356 () Bool)

(declare-fun b!517092 () Bool)

(assert (=> b!517092 (= e!309515 (and tp_is_empty!2645 tp_is_empty!2647 tp!161356))))

(declare-fun mapNonEmpty!2043 () Bool)

(declare-fun tp!161355 () Bool)

(assert (=> mapNonEmpty!2043 (= mapRes!2043 (and tp!161355 e!309515))))

(declare-fun mapRest!2043 () (Array (_ BitVec 32) List!4748))

(declare-fun mapValue!2043 () List!4748)

(declare-fun mapKey!2043 () (_ BitVec 32))

(assert (=> mapNonEmpty!2043 (= mapRest!2040 (store mapRest!2043 mapKey!2043 mapValue!2043))))

(assert (= (and mapNonEmpty!2040 condMapEmpty!2043) mapIsEmpty!2043))

(assert (= (and mapNonEmpty!2040 (not condMapEmpty!2043)) mapNonEmpty!2043))

(assert (= (and mapNonEmpty!2043 ((_ is Cons!4738) mapValue!2043)) b!517092))

(assert (= (and mapNonEmpty!2040 ((_ is Cons!4738) mapDefault!2043)) b!517093))

(declare-fun m!763761 () Bool)

(assert (=> mapNonEmpty!2043 m!763761))

(declare-fun b!517098 () Bool)

(declare-fun tp!161359 () Bool)

(declare-fun e!309519 () Bool)

(assert (=> b!517098 (= e!309519 (and tp_is_empty!2645 tp_is_empty!2647 tp!161359))))

(assert (=> mapNonEmpty!2040 (= tp!161341 e!309519)))

(assert (= (and mapNonEmpty!2040 ((_ is Cons!4738) mapValue!2040)) b!517098))

(declare-fun tp!161360 () Bool)

(declare-fun b!517099 () Bool)

(declare-fun e!309520 () Bool)

(assert (=> b!517099 (= e!309520 (and tp_is_empty!2645 tp_is_empty!2647 tp!161360))))

(assert (=> b!517027 (= tp!161346 e!309520)))

(assert (= (and b!517027 ((_ is Cons!4738) mapDefault!2040)) b!517099))

(declare-fun b!517100 () Bool)

(declare-fun tp!161361 () Bool)

(declare-fun e!309521 () Bool)

(assert (=> b!517100 (= e!309521 (and tp_is_empty!2645 tp_is_empty!2647 tp!161361))))

(assert (=> b!517035 (= tp!161345 e!309521)))

(assert (= (and b!517035 ((_ is Cons!4738) (zeroValue!783 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65))))))) b!517100))

(declare-fun b!517101 () Bool)

(declare-fun e!309522 () Bool)

(declare-fun tp!161362 () Bool)

(assert (=> b!517101 (= e!309522 (and tp_is_empty!2645 tp_is_empty!2647 tp!161362))))

(assert (=> b!517035 (= tp!161343 e!309522)))

(assert (= (and b!517035 ((_ is Cons!4738) (minValue!783 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65))))))) b!517101))

(declare-fun b_lambda!20103 () Bool)

(assert (= b_lambda!20101 (or (and start!46980 b_free!13621) b_lambda!20103)))

(check-sat (not b!517077) (not b!517040) (not b_lambda!20103) (not b!517078) (not b_next!13631) (not b!517065) tp_is_empty!2645 (not b!517079) b_and!51097 (not b!517100) (not d!184884) (not b!517085) (not bm!37804) (not b!517099) (not b_next!13629) (not b!517068) (not bm!37801) (not d!184878) (not d!184880) (not d!184874) (not d!184886) (not bm!37800) (not b!517070) tp_is_empty!2647 (not bm!37807) (not b_next!13627) (not bm!37803) (not mapNonEmpty!2043) (not b!517101) (not d!184882) (not b!517093) (not b!517098) (not b!517066) (not b!517041) (not d!184888) (not bm!37802) b_and!51099 b_and!51093 (not bm!37806) (not b!517092) (not d!184876) (not d!184892) (not b!517072) (not bm!37805) (not b!517064))
(check-sat (not b_next!13629) (not b_next!13627) (not b_next!13631) b_and!51097 b_and!51099 b_and!51093)
(get-model)

(declare-fun d!184898 () Bool)

(declare-fun res!219307 () Bool)

(declare-fun e!309527 () Bool)

(assert (=> d!184898 (=> res!219307 e!309527)))

(assert (=> d!184898 (= res!219307 ((_ is Nil!4739) (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))))

(assert (=> d!184898 (= (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138))))) lambda!14538) e!309527)))

(declare-fun b!517106 () Bool)

(declare-fun e!309528 () Bool)

(assert (=> b!517106 (= e!309527 e!309528)))

(declare-fun res!219308 () Bool)

(assert (=> b!517106 (=> (not res!219308) (not e!309528))))

(declare-fun dynLambda!2984 (Int tuple2!5848) Bool)

(assert (=> b!517106 (= res!219308 (dynLambda!2984 lambda!14538 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138))))))))))

(declare-fun b!517107 () Bool)

(assert (=> b!517107 (= e!309528 (forall!1411 (t!73321 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))) lambda!14538))))

(assert (= (and d!184898 (not res!219307)) b!517106))

(assert (= (and b!517106 res!219308) b!517107))

(declare-fun b_lambda!20105 () Bool)

(assert (=> (not b_lambda!20105) (not b!517106)))

(declare-fun m!763763 () Bool)

(assert (=> b!517106 m!763763))

(declare-fun m!763765 () Bool)

(assert (=> b!517107 m!763765))

(assert (=> b!517040 d!184898))

(declare-fun d!184900 () Bool)

(declare-fun map!1055 (LongMapFixedSize!1054) ListLongMap!85)

(assert (=> d!184900 (= (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))) (map!1055 (v!15785 (underlying!1233 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))))

(declare-fun bs!59923 () Bool)

(assert (= bs!59923 d!184900))

(declare-fun m!763767 () Bool)

(assert (=> bs!59923 m!763767))

(assert (=> b!517040 d!184900))

(declare-fun d!184902 () Bool)

(assert (=> d!184902 (= (map!1054 (ite c!100121 (v!15786 (underlying!1234 hm!65)) (v!15786 (underlying!1234 (_2!3141 lt!215217))))) (map!1055 (v!15785 (underlying!1233 (ite c!100121 (v!15786 (underlying!1234 hm!65)) (v!15786 (underlying!1234 (_2!3141 lt!215217))))))))))

(declare-fun bs!59924 () Bool)

(assert (= bs!59924 d!184902))

(declare-fun m!763769 () Bool)

(assert (=> bs!59924 m!763769))

(assert (=> bm!37804 d!184902))

(declare-fun bs!59925 () Bool)

(declare-fun d!184904 () Bool)

(assert (= bs!59925 (and d!184904 b!517040)))

(declare-fun lambda!14549 () Int)

(assert (=> bs!59925 (not (= lambda!14549 lambda!14538))))

(declare-fun bs!59926 () Bool)

(assert (= bs!59926 (and d!184904 b!517068)))

(assert (=> bs!59926 (not (= lambda!14549 lambda!14545))))

(declare-fun bs!59927 () Bool)

(assert (= bs!59927 (and d!184904 b!517078)))

(assert (=> bs!59927 (not (= lambda!14549 lambda!14546))))

(assert (=> d!184904 true))

(assert (=> d!184904 (= (allKeysSameHashInMap!31 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))) (hashF!2389 (_2!3139 lt!215138))) (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138))))) lambda!14549))))

(declare-fun bs!59928 () Bool)

(assert (= bs!59928 d!184904))

(declare-fun m!763771 () Bool)

(assert (=> bs!59928 m!763771))

(assert (=> b!517041 d!184904))

(assert (=> b!517041 d!184900))

(assert (=> bm!37805 d!184892))

(declare-fun d!184906 () Bool)

(assert (=> d!184906 (= (invariantList!80 (toList!429 lt!215142)) (noDuplicatedKeys!19 (toList!429 lt!215142)))))

(declare-fun bs!59929 () Bool)

(assert (= bs!59929 d!184906))

(declare-fun m!763773 () Bool)

(assert (=> bs!59929 m!763773))

(assert (=> d!184878 d!184906))

(declare-fun bs!59930 () Bool)

(declare-fun d!184908 () Bool)

(assert (= bs!59930 (and d!184908 b!517040)))

(declare-fun lambda!14552 () Int)

(assert (=> bs!59930 (= lambda!14552 lambda!14538)))

(declare-fun bs!59931 () Bool)

(assert (= bs!59931 (and d!184908 b!517068)))

(assert (=> bs!59931 (= lambda!14552 lambda!14545)))

(declare-fun bs!59932 () Bool)

(assert (= bs!59932 (and d!184908 b!517078)))

(assert (=> bs!59932 (= lambda!14552 lambda!14546)))

(declare-fun bs!59933 () Bool)

(assert (= bs!59933 (and d!184908 d!184904)))

(assert (=> bs!59933 (not (= lambda!14552 lambda!14549))))

(declare-fun lt!215239 () ListMap!205)

(assert (=> d!184908 (invariantList!80 (toList!429 lt!215239))))

(declare-fun e!309531 () ListMap!205)

(assert (=> d!184908 (= lt!215239 e!309531)))

(declare-fun c!100127 () Bool)

(assert (=> d!184908 (= c!100127 ((_ is Cons!4739) (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))))

(assert (=> d!184908 (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138))))) lambda!14552)))

(assert (=> d!184908 (= (extractMap!24 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))) lt!215239)))

(declare-fun b!517114 () Bool)

(declare-fun addToMapMapFromBucket!5 (List!4748 ListMap!205) ListMap!205)

(assert (=> b!517114 (= e!309531 (addToMapMapFromBucket!5 (_2!3140 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138))))))) (extractMap!24 (t!73321 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))))))

(declare-fun b!517115 () Bool)

(assert (=> b!517115 (= e!309531 (ListMap!206 Nil!4738))))

(assert (= (and d!184908 c!100127) b!517114))

(assert (= (and d!184908 (not c!100127)) b!517115))

(declare-fun m!763775 () Bool)

(assert (=> d!184908 m!763775))

(declare-fun m!763777 () Bool)

(assert (=> d!184908 m!763777))

(declare-fun m!763779 () Bool)

(assert (=> b!517114 m!763779))

(assert (=> b!517114 m!763779))

(declare-fun m!763781 () Bool)

(assert (=> b!517114 m!763781))

(assert (=> d!184878 d!184908))

(assert (=> d!184878 d!184900))

(assert (=> d!184878 d!184880))

(declare-fun d!184910 () Bool)

(declare-fun valid!496 (LongMapFixedSize!1054) Bool)

(assert (=> d!184910 (= (valid!495 (v!15786 (underlying!1234 hm!65))) (valid!496 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65))))))))

(declare-fun bs!59934 () Bool)

(assert (= bs!59934 d!184910))

(declare-fun m!763783 () Bool)

(assert (=> bs!59934 m!763783))

(assert (=> d!184886 d!184910))

(declare-fun d!184912 () Bool)

(declare-fun lt!215240 () ListMap!205)

(assert (=> d!184912 (invariantList!80 (toList!429 lt!215240))))

(assert (=> d!184912 (= lt!215240 (extractMap!24 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215218)))))))))

(assert (=> d!184912 (valid!494 (_2!3139 lt!215218))))

(assert (=> d!184912 (= (map!1053 (_2!3139 lt!215218)) lt!215240)))

(declare-fun bs!59935 () Bool)

(assert (= bs!59935 d!184912))

(declare-fun m!763785 () Bool)

(assert (=> bs!59935 m!763785))

(declare-fun m!763787 () Bool)

(assert (=> bs!59935 m!763787))

(declare-fun m!763789 () Bool)

(assert (=> bs!59935 m!763789))

(assert (=> bs!59935 m!763691))

(assert (=> bm!37806 d!184912))

(declare-fun d!184914 () Bool)

(assert (=> d!184914 (= (invariantList!80 (toList!429 lt!215236)) (noDuplicatedKeys!19 (toList!429 lt!215236)))))

(declare-fun bs!59936 () Bool)

(assert (= bs!59936 d!184914))

(declare-fun m!763791 () Bool)

(assert (=> bs!59936 m!763791))

(assert (=> d!184892 d!184914))

(declare-fun bs!59937 () Bool)

(declare-fun d!184916 () Bool)

(assert (= bs!59937 (and d!184916 b!517040)))

(declare-fun lambda!14553 () Int)

(assert (=> bs!59937 (= lambda!14553 lambda!14538)))

(declare-fun bs!59938 () Bool)

(assert (= bs!59938 (and d!184916 d!184908)))

(assert (=> bs!59938 (= lambda!14553 lambda!14552)))

(declare-fun bs!59939 () Bool)

(assert (= bs!59939 (and d!184916 b!517068)))

(assert (=> bs!59939 (= lambda!14553 lambda!14545)))

(declare-fun bs!59940 () Bool)

(assert (= bs!59940 (and d!184916 d!184904)))

(assert (=> bs!59940 (not (= lambda!14553 lambda!14549))))

(declare-fun bs!59941 () Bool)

(assert (= bs!59941 (and d!184916 b!517078)))

(assert (=> bs!59941 (= lambda!14553 lambda!14546)))

(declare-fun lt!215241 () ListMap!205)

(assert (=> d!184916 (invariantList!80 (toList!429 lt!215241))))

(declare-fun e!309532 () ListMap!205)

(assert (=> d!184916 (= lt!215241 e!309532)))

(declare-fun c!100128 () Bool)

(assert (=> d!184916 (= c!100128 ((_ is Cons!4739) (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))))))

(assert (=> d!184916 (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14553)))

(assert (=> d!184916 (= (extractMap!24 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))) lt!215241)))

(declare-fun b!517116 () Bool)

(assert (=> b!517116 (= e!309532 (addToMapMapFromBucket!5 (_2!3140 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))))) (extractMap!24 (t!73321 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))))))))

(declare-fun b!517117 () Bool)

(assert (=> b!517117 (= e!309532 (ListMap!206 Nil!4738))))

(assert (= (and d!184916 c!100128) b!517116))

(assert (= (and d!184916 (not c!100128)) b!517117))

(declare-fun m!763793 () Bool)

(assert (=> d!184916 m!763793))

(declare-fun m!763795 () Bool)

(assert (=> d!184916 m!763795))

(declare-fun m!763797 () Bool)

(assert (=> b!517116 m!763797))

(assert (=> b!517116 m!763797))

(declare-fun m!763799 () Bool)

(assert (=> b!517116 m!763799))

(assert (=> d!184892 d!184916))

(declare-fun d!184918 () Bool)

(assert (=> d!184918 (= (map!1054 (v!15786 (underlying!1234 hm!65))) (map!1055 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65))))))))

(declare-fun bs!59942 () Bool)

(assert (= bs!59942 d!184918))

(declare-fun m!763801 () Bool)

(assert (=> bs!59942 m!763801))

(assert (=> d!184892 d!184918))

(assert (=> d!184892 d!184886))

(declare-fun d!184920 () Bool)

(assert (=> d!184920 (= (eq!37 call!37812 e!309500) (= (content!833 (toList!429 call!37812)) (content!833 (toList!429 e!309500))))))

(declare-fun bs!59943 () Bool)

(assert (= bs!59943 d!184920))

(declare-fun m!763803 () Bool)

(assert (=> bs!59943 m!763803))

(declare-fun m!763805 () Bool)

(assert (=> bs!59943 m!763805))

(assert (=> bm!37807 d!184920))

(declare-fun d!184922 () Bool)

(declare-fun res!219309 () Bool)

(declare-fun e!309533 () Bool)

(assert (=> d!184922 (=> res!219309 e!309533)))

(assert (=> d!184922 (= res!219309 ((_ is Nil!4739) (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))))))

(assert (=> d!184922 (= (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14546) e!309533)))

(declare-fun b!517118 () Bool)

(declare-fun e!309534 () Bool)

(assert (=> b!517118 (= e!309533 e!309534)))

(declare-fun res!219310 () Bool)

(assert (=> b!517118 (=> (not res!219310) (not e!309534))))

(assert (=> b!517118 (= res!219310 (dynLambda!2984 lambda!14546 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))))))))

(declare-fun b!517119 () Bool)

(assert (=> b!517119 (= e!309534 (forall!1411 (t!73321 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))) lambda!14546))))

(assert (= (and d!184922 (not res!219309)) b!517118))

(assert (= (and b!517118 res!219310) b!517119))

(declare-fun b_lambda!20107 () Bool)

(assert (=> (not b_lambda!20107) (not b!517118)))

(declare-fun m!763807 () Bool)

(assert (=> b!517118 m!763807))

(declare-fun m!763809 () Bool)

(assert (=> b!517119 m!763809))

(assert (=> b!517078 d!184922))

(assert (=> b!517078 d!184918))

(declare-fun d!184924 () Bool)

(declare-fun e!309535 () Bool)

(assert (=> d!184924 e!309535))

(declare-fun res!219311 () Bool)

(assert (=> d!184924 (=> (not res!219311) (not e!309535))))

(declare-fun lt!215242 () ListMap!205)

(assert (=> d!184924 (= res!219311 (not (contains!1097 lt!215242 k0!1740)))))

(assert (=> d!184924 (= lt!215242 (ListMap!206 (removePresrvNoDuplicatedKeys!16 (toList!429 (ite c!100121 call!37811 lt!215221)) k0!1740)))))

(assert (=> d!184924 (= (-!42 (ite c!100121 call!37811 lt!215221) k0!1740) lt!215242)))

(declare-fun b!517120 () Bool)

(assert (=> b!517120 (= e!309535 (= ((_ map and) (content!832 (keys!1863 (ite c!100121 call!37811 lt!215221))) ((_ map not) (store ((as const (Array K!1432 Bool)) false) k0!1740 true))) (content!832 (keys!1863 lt!215242))))))

(assert (= (and d!184924 res!219311) b!517120))

(declare-fun m!763811 () Bool)

(assert (=> d!184924 m!763811))

(declare-fun m!763813 () Bool)

(assert (=> d!184924 m!763813))

(assert (=> b!517120 m!763733))

(declare-fun m!763815 () Bool)

(assert (=> b!517120 m!763815))

(declare-fun m!763817 () Bool)

(assert (=> b!517120 m!763817))

(declare-fun m!763819 () Bool)

(assert (=> b!517120 m!763819))

(declare-fun m!763821 () Bool)

(assert (=> b!517120 m!763821))

(assert (=> b!517120 m!763819))

(assert (=> b!517120 m!763815))

(assert (=> bm!37800 d!184924))

(declare-fun d!184926 () Bool)

(declare-fun c!100131 () Bool)

(assert (=> d!184926 (= c!100131 ((_ is Nil!4740) (keys!1863 lt!215137)))))

(declare-fun e!309538 () (InoxSet K!1432))

(assert (=> d!184926 (= (content!832 (keys!1863 lt!215137)) e!309538)))

(declare-fun b!517125 () Bool)

(assert (=> b!517125 (= e!309538 ((as const (Array K!1432 Bool)) false))))

(declare-fun b!517126 () Bool)

(assert (=> b!517126 (= e!309538 ((_ map or) (store ((as const (Array K!1432 Bool)) false) (h!10139 (keys!1863 lt!215137)) true) (content!832 (t!73322 (keys!1863 lt!215137)))))))

(assert (= (and d!184926 c!100131) b!517125))

(assert (= (and d!184926 (not c!100131)) b!517126))

(declare-fun m!763823 () Bool)

(assert (=> b!517126 m!763823))

(declare-fun m!763825 () Bool)

(assert (=> b!517126 m!763825))

(assert (=> b!517077 d!184926))

(declare-fun b!517134 () Bool)

(assert (=> b!517134 true))

(declare-fun d!184928 () Bool)

(declare-fun e!309541 () Bool)

(assert (=> d!184928 e!309541))

(declare-fun res!219318 () Bool)

(assert (=> d!184928 (=> (not res!219318) (not e!309541))))

(declare-fun lt!215245 () List!4750)

(declare-fun noDuplicate!112 (List!4750) Bool)

(assert (=> d!184928 (= res!219318 (noDuplicate!112 lt!215245))))

(declare-fun getKeysList!7 (List!4748) List!4750)

(assert (=> d!184928 (= lt!215245 (getKeysList!7 (toList!429 lt!215137)))))

(assert (=> d!184928 (= (keys!1863 lt!215137) lt!215245)))

(declare-fun b!517133 () Bool)

(declare-fun res!219320 () Bool)

(assert (=> b!517133 (=> (not res!219320) (not e!309541))))

(declare-fun length!10 (List!4750) Int)

(declare-fun length!11 (List!4748) Int)

(assert (=> b!517133 (= res!219320 (= (length!10 lt!215245) (length!11 (toList!429 lt!215137))))))

(declare-fun res!219319 () Bool)

(assert (=> b!517134 (=> (not res!219319) (not e!309541))))

(declare-fun lambda!14558 () Int)

(declare-fun forall!1412 (List!4750 Int) Bool)

(assert (=> b!517134 (= res!219319 (forall!1412 lt!215245 lambda!14558))))

(declare-fun b!517135 () Bool)

(declare-fun lambda!14559 () Int)

(declare-fun map!1056 (List!4748 Int) List!4750)

(assert (=> b!517135 (= e!309541 (= (content!832 lt!215245) (content!832 (map!1056 (toList!429 lt!215137) lambda!14559))))))

(assert (= (and d!184928 res!219318) b!517133))

(assert (= (and b!517133 res!219320) b!517134))

(assert (= (and b!517134 res!219319) b!517135))

(declare-fun m!763827 () Bool)

(assert (=> d!184928 m!763827))

(declare-fun m!763829 () Bool)

(assert (=> d!184928 m!763829))

(declare-fun m!763831 () Bool)

(assert (=> b!517133 m!763831))

(declare-fun m!763833 () Bool)

(assert (=> b!517133 m!763833))

(declare-fun m!763835 () Bool)

(assert (=> b!517134 m!763835))

(declare-fun m!763837 () Bool)

(assert (=> b!517135 m!763837))

(declare-fun m!763839 () Bool)

(assert (=> b!517135 m!763839))

(assert (=> b!517135 m!763839))

(declare-fun m!763841 () Bool)

(assert (=> b!517135 m!763841))

(assert (=> b!517077 d!184928))

(declare-fun d!184930 () Bool)

(declare-fun c!100132 () Bool)

(assert (=> d!184930 (= c!100132 ((_ is Nil!4740) (keys!1863 lt!215235)))))

(declare-fun e!309542 () (InoxSet K!1432))

(assert (=> d!184930 (= (content!832 (keys!1863 lt!215235)) e!309542)))

(declare-fun b!517138 () Bool)

(assert (=> b!517138 (= e!309542 ((as const (Array K!1432 Bool)) false))))

(declare-fun b!517139 () Bool)

(assert (=> b!517139 (= e!309542 ((_ map or) (store ((as const (Array K!1432 Bool)) false) (h!10139 (keys!1863 lt!215235)) true) (content!832 (t!73322 (keys!1863 lt!215235)))))))

(assert (= (and d!184930 c!100132) b!517138))

(assert (= (and d!184930 (not c!100132)) b!517139))

(declare-fun m!763843 () Bool)

(assert (=> b!517139 m!763843))

(declare-fun m!763845 () Bool)

(assert (=> b!517139 m!763845))

(assert (=> b!517077 d!184930))

(declare-fun bs!59944 () Bool)

(declare-fun b!517141 () Bool)

(assert (= bs!59944 (and b!517141 b!517134)))

(declare-fun lambda!14560 () Int)

(assert (=> bs!59944 (= (= (toList!429 lt!215235) (toList!429 lt!215137)) (= lambda!14560 lambda!14558))))

(assert (=> b!517141 true))

(declare-fun bs!59945 () Bool)

(declare-fun b!517142 () Bool)

(assert (= bs!59945 (and b!517142 b!517135)))

(declare-fun lambda!14561 () Int)

(assert (=> bs!59945 (= lambda!14561 lambda!14559)))

(declare-fun d!184932 () Bool)

(declare-fun e!309543 () Bool)

(assert (=> d!184932 e!309543))

(declare-fun res!219321 () Bool)

(assert (=> d!184932 (=> (not res!219321) (not e!309543))))

(declare-fun lt!215246 () List!4750)

(assert (=> d!184932 (= res!219321 (noDuplicate!112 lt!215246))))

(assert (=> d!184932 (= lt!215246 (getKeysList!7 (toList!429 lt!215235)))))

(assert (=> d!184932 (= (keys!1863 lt!215235) lt!215246)))

(declare-fun b!517140 () Bool)

(declare-fun res!219323 () Bool)

(assert (=> b!517140 (=> (not res!219323) (not e!309543))))

(assert (=> b!517140 (= res!219323 (= (length!10 lt!215246) (length!11 (toList!429 lt!215235))))))

(declare-fun res!219322 () Bool)

(assert (=> b!517141 (=> (not res!219322) (not e!309543))))

(assert (=> b!517141 (= res!219322 (forall!1412 lt!215246 lambda!14560))))

(assert (=> b!517142 (= e!309543 (= (content!832 lt!215246) (content!832 (map!1056 (toList!429 lt!215235) lambda!14561))))))

(assert (= (and d!184932 res!219321) b!517140))

(assert (= (and b!517140 res!219323) b!517141))

(assert (= (and b!517141 res!219322) b!517142))

(declare-fun m!763847 () Bool)

(assert (=> d!184932 m!763847))

(declare-fun m!763849 () Bool)

(assert (=> d!184932 m!763849))

(declare-fun m!763851 () Bool)

(assert (=> b!517140 m!763851))

(declare-fun m!763853 () Bool)

(assert (=> b!517140 m!763853))

(declare-fun m!763855 () Bool)

(assert (=> b!517141 m!763855))

(declare-fun m!763857 () Bool)

(assert (=> b!517142 m!763857))

(declare-fun m!763859 () Bool)

(assert (=> b!517142 m!763859))

(assert (=> b!517142 m!763859))

(declare-fun m!763861 () Bool)

(assert (=> b!517142 m!763861))

(assert (=> b!517077 d!184932))

(declare-fun bs!59946 () Bool)

(declare-fun b!517174 () Bool)

(assert (= bs!59946 (and b!517174 b!517040)))

(declare-fun lambda!14564 () Int)

(assert (=> bs!59946 (= lambda!14564 lambda!14538)))

(declare-fun bs!59947 () Bool)

(assert (= bs!59947 (and b!517174 d!184908)))

(assert (=> bs!59947 (= lambda!14564 lambda!14552)))

(declare-fun bs!59948 () Bool)

(assert (= bs!59948 (and b!517174 b!517068)))

(assert (=> bs!59948 (= lambda!14564 lambda!14545)))

(declare-fun bs!59949 () Bool)

(assert (= bs!59949 (and b!517174 d!184904)))

(assert (=> bs!59949 (not (= lambda!14564 lambda!14549))))

(declare-fun bs!59950 () Bool)

(assert (= bs!59950 (and b!517174 d!184916)))

(assert (=> bs!59950 (= lambda!14564 lambda!14553)))

(declare-fun bs!59951 () Bool)

(assert (= bs!59951 (and b!517174 b!517078)))

(assert (=> bs!59951 (= lambda!14564 lambda!14546)))

(declare-fun bm!37820 () Bool)

(declare-fun call!37826 () ListLongMap!85)

(assert (=> bm!37820 (= call!37826 (map!1054 (v!15786 (underlying!1234 hm!65))))))

(declare-fun b!517165 () Bool)

(declare-fun e!309562 () Bool)

(declare-fun lt!215304 () (_ BitVec 64))

(declare-datatypes ((Option!1236 0))(
  ( (None!1235) (Some!1235 (v!15791 tuple2!5844)) )
))
(declare-fun isDefined!1050 (Option!1236) Bool)

(declare-fun getPair!4 (List!4748 K!1432) Option!1236)

(assert (=> b!517165 (= e!309562 (isDefined!1050 (getPair!4 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215304) k0!1740)))))

(declare-fun b!517166 () Bool)

(declare-fun e!309563 () Bool)

(declare-fun call!37830 () Bool)

(assert (=> b!517166 (= e!309563 call!37830)))

(declare-fun bm!37821 () Bool)

(declare-fun call!37825 () (_ BitVec 64))

(assert (=> bm!37821 (= call!37825 (hash!527 (hashF!2389 hm!65) k0!1740))))

(declare-fun b!517167 () Bool)

(declare-fun e!309561 () Unit!8634)

(declare-fun e!309558 () Unit!8634)

(assert (=> b!517167 (= e!309561 e!309558)))

(declare-fun res!219331 () Bool)

(declare-fun call!37828 () Bool)

(assert (=> b!517167 (= res!219331 call!37828)))

(declare-fun e!309564 () Bool)

(assert (=> b!517167 (=> (not res!219331) (not e!309564))))

(declare-fun c!100141 () Bool)

(assert (=> b!517167 (= c!100141 e!309564)))

(declare-fun bm!37822 () Bool)

(declare-fun call!37827 () Option!1236)

(assert (=> bm!37822 (= call!37830 (isDefined!1050 call!37827))))

(declare-fun c!100142 () Bool)

(declare-fun lt!215298 () ListLongMap!85)

(declare-fun bm!37823 () Bool)

(declare-fun contains!1099 (ListLongMap!85 (_ BitVec 64)) Bool)

(assert (=> bm!37823 (= call!37828 (contains!1099 (ite c!100142 lt!215298 call!37826) call!37825))))

(declare-fun b!517168 () Bool)

(declare-fun e!309560 () Unit!8634)

(declare-fun Unit!8645 () Unit!8634)

(assert (=> b!517168 (= e!309560 Unit!8645)))

(declare-fun b!517170 () Bool)

(declare-fun e!309559 () Unit!8634)

(declare-fun Unit!8646 () Unit!8634)

(assert (=> b!517170 (= e!309559 Unit!8646)))

(declare-fun bm!37824 () Bool)

(declare-fun call!37829 () List!4748)

(assert (=> bm!37824 (= call!37827 (getPair!4 call!37829 k0!1740))))

(declare-fun b!517171 () Bool)

(assert (=> b!517171 (= e!309564 call!37830)))

(declare-fun b!517172 () Bool)

(assert (=> b!517172 false))

(declare-fun lt!215306 () Unit!8634)

(declare-fun lt!215294 () Unit!8634)

(assert (=> b!517172 (= lt!215306 lt!215294)))

(declare-fun lt!215290 () ListLongMap!85)

(assert (=> b!517172 (contains!1097 (extractMap!24 (toList!430 lt!215290)) k0!1740)))

(declare-fun lemmaInLongMapThenInGenericMap!4 (ListLongMap!85 K!1432 Hashable!499) Unit!8634)

(assert (=> b!517172 (= lt!215294 (lemmaInLongMapThenInGenericMap!4 lt!215290 k0!1740 (hashF!2389 hm!65)))))

(assert (=> b!517172 (= lt!215290 call!37826)))

(declare-fun Unit!8647 () Unit!8634)

(assert (=> b!517172 (= e!309558 Unit!8647)))

(declare-fun b!517173 () Bool)

(declare-fun lt!215296 () Unit!8634)

(assert (=> b!517173 (= e!309561 lt!215296)))

(assert (=> b!517173 (= lt!215298 call!37826)))

(declare-fun lemmaInGenericMapThenInLongMap!4 (ListLongMap!85 K!1432 Hashable!499) Unit!8634)

(assert (=> b!517173 (= lt!215296 (lemmaInGenericMapThenInLongMap!4 lt!215298 k0!1740 (hashF!2389 hm!65)))))

(declare-fun res!219330 () Bool)

(assert (=> b!517173 (= res!219330 call!37828)))

(assert (=> b!517173 (=> (not res!219330) (not e!309563))))

(assert (=> b!517173 e!309563))

(assert (=> b!517174 (= e!309560 (forallContained!449 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14564 (tuple2!5849 lt!215304 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215304))))))

(declare-fun c!100143 () Bool)

(declare-fun contains!1100 (List!4749 tuple2!5848) Bool)

(assert (=> b!517174 (= c!100143 (not (contains!1100 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) (tuple2!5849 lt!215304 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215304)))))))

(declare-fun lt!215300 () Unit!8634)

(assert (=> b!517174 (= lt!215300 e!309559)))

(declare-fun bm!37825 () Bool)

(declare-fun apply!1191 (ListLongMap!85 (_ BitVec 64)) List!4748)

(assert (=> bm!37825 (= call!37829 (apply!1191 (ite c!100142 lt!215298 call!37826) call!37825))))

(declare-fun b!517175 () Bool)

(assert (=> b!517175 false))

(declare-fun lt!215299 () Unit!8634)

(declare-fun lt!215289 () Unit!8634)

(assert (=> b!517175 (= lt!215299 lt!215289)))

(declare-fun lt!215291 () List!4749)

(declare-fun lt!215301 () List!4748)

(assert (=> b!517175 (contains!1100 lt!215291 (tuple2!5849 lt!215304 lt!215301))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!5 (List!4749 (_ BitVec 64) List!4748) Unit!8634)

(assert (=> b!517175 (= lt!215289 (lemmaGetValueByKeyImpliesContainsTuple!5 lt!215291 lt!215304 lt!215301))))

(assert (=> b!517175 (= lt!215301 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215304))))

(assert (=> b!517175 (= lt!215291 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))))))

(declare-fun lt!215292 () Unit!8634)

(declare-fun lt!215295 () Unit!8634)

(assert (=> b!517175 (= lt!215292 lt!215295)))

(declare-fun lt!215305 () List!4749)

(declare-datatypes ((Option!1237 0))(
  ( (None!1236) (Some!1236 (v!15792 List!4748)) )
))
(declare-fun isDefined!1051 (Option!1237) Bool)

(declare-fun getValueByKey!20 (List!4749 (_ BitVec 64)) Option!1237)

(assert (=> b!517175 (isDefined!1051 (getValueByKey!20 lt!215305 lt!215304))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!12 (List!4749 (_ BitVec 64)) Unit!8634)

(assert (=> b!517175 (= lt!215295 (lemmaContainsKeyImpliesGetValueByKeyDefined!12 lt!215305 lt!215304))))

(assert (=> b!517175 (= lt!215305 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))))))

(declare-fun lt!215302 () Unit!8634)

(declare-fun lt!215297 () Unit!8634)

(assert (=> b!517175 (= lt!215302 lt!215297)))

(declare-fun lt!215288 () List!4749)

(declare-fun containsKey!19 (List!4749 (_ BitVec 64)) Bool)

(assert (=> b!517175 (containsKey!19 lt!215288 lt!215304)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!5 (List!4749 (_ BitVec 64)) Unit!8634)

(assert (=> b!517175 (= lt!215297 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!5 lt!215288 lt!215304))))

(assert (=> b!517175 (= lt!215288 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))))))

(declare-fun Unit!8648 () Unit!8634)

(assert (=> b!517175 (= e!309559 Unit!8648)))

(declare-fun d!184934 () Bool)

(declare-fun lt!215287 () Bool)

(assert (=> d!184934 (= lt!215287 (contains!1097 (map!1053 hm!65) k0!1740))))

(assert (=> d!184934 (= lt!215287 e!309562)))

(declare-fun res!219332 () Bool)

(assert (=> d!184934 (=> (not res!219332) (not e!309562))))

(declare-fun contains!1101 (MutLongMap!527 (_ BitVec 64)) Bool)

(assert (=> d!184934 (= res!219332 (contains!1101 (v!15786 (underlying!1234 hm!65)) lt!215304))))

(declare-fun lt!215293 () Unit!8634)

(assert (=> d!184934 (= lt!215293 e!309561)))

(assert (=> d!184934 (= c!100142 (contains!1097 (extractMap!24 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))) k0!1740))))

(declare-fun lt!215303 () Unit!8634)

(assert (=> d!184934 (= lt!215303 e!309560)))

(declare-fun c!100144 () Bool)

(assert (=> d!184934 (= c!100144 (contains!1101 (v!15786 (underlying!1234 hm!65)) lt!215304))))

(assert (=> d!184934 (= lt!215304 (hash!527 (hashF!2389 hm!65) k0!1740))))

(assert (=> d!184934 (valid!494 hm!65)))

(assert (=> d!184934 (= (contains!1098 hm!65 k0!1740) lt!215287)))

(declare-fun b!517169 () Bool)

(declare-fun Unit!8649 () Unit!8634)

(assert (=> b!517169 (= e!309558 Unit!8649)))

(assert (= (and d!184934 c!100144) b!517174))

(assert (= (and d!184934 (not c!100144)) b!517168))

(assert (= (and b!517174 c!100143) b!517175))

(assert (= (and b!517174 (not c!100143)) b!517170))

(assert (= (and d!184934 c!100142) b!517173))

(assert (= (and d!184934 (not c!100142)) b!517167))

(assert (= (and b!517173 res!219330) b!517166))

(assert (= (and b!517167 res!219331) b!517171))

(assert (= (and b!517167 c!100141) b!517172))

(assert (= (and b!517167 (not c!100141)) b!517169))

(assert (= (or b!517173 b!517167 b!517171 b!517172) bm!37820))

(assert (= (or b!517173 b!517166 b!517167 b!517171) bm!37821))

(assert (= (or b!517173 b!517167) bm!37823))

(assert (= (or b!517166 b!517171) bm!37825))

(assert (= (or b!517166 b!517171) bm!37824))

(assert (= (or b!517166 b!517171) bm!37822))

(assert (= (and d!184934 res!219332) b!517165))

(declare-fun m!763863 () Bool)

(assert (=> bm!37824 m!763863))

(declare-fun m!763865 () Bool)

(assert (=> bm!37825 m!763865))

(declare-fun m!763867 () Bool)

(assert (=> d!184934 m!763867))

(assert (=> d!184934 m!763623))

(assert (=> d!184934 m!763675))

(assert (=> d!184934 m!763759))

(assert (=> d!184934 m!763681))

(assert (=> d!184934 m!763627))

(declare-fun m!763869 () Bool)

(assert (=> d!184934 m!763869))

(assert (=> d!184934 m!763627))

(assert (=> d!184934 m!763759))

(declare-fun m!763871 () Bool)

(assert (=> d!184934 m!763871))

(declare-fun m!763873 () Bool)

(assert (=> b!517175 m!763873))

(declare-fun m!763875 () Bool)

(assert (=> b!517175 m!763875))

(declare-fun m!763877 () Bool)

(assert (=> b!517175 m!763877))

(declare-fun m!763879 () Bool)

(assert (=> b!517175 m!763879))

(declare-fun m!763881 () Bool)

(assert (=> b!517175 m!763881))

(assert (=> b!517175 m!763681))

(assert (=> b!517175 m!763875))

(declare-fun m!763883 () Bool)

(assert (=> b!517175 m!763883))

(declare-fun m!763885 () Bool)

(assert (=> b!517175 m!763885))

(declare-fun m!763887 () Bool)

(assert (=> b!517175 m!763887))

(declare-fun m!763889 () Bool)

(assert (=> bm!37823 m!763889))

(assert (=> bm!37821 m!763675))

(declare-fun m!763891 () Bool)

(assert (=> bm!37822 m!763891))

(declare-fun m!763893 () Bool)

(assert (=> b!517172 m!763893))

(assert (=> b!517172 m!763893))

(declare-fun m!763895 () Bool)

(assert (=> b!517172 m!763895))

(declare-fun m!763897 () Bool)

(assert (=> b!517172 m!763897))

(assert (=> b!517165 m!763873))

(assert (=> b!517165 m!763873))

(declare-fun m!763899 () Bool)

(assert (=> b!517165 m!763899))

(assert (=> b!517165 m!763899))

(declare-fun m!763901 () Bool)

(assert (=> b!517165 m!763901))

(assert (=> bm!37820 m!763681))

(assert (=> b!517174 m!763681))

(assert (=> b!517174 m!763873))

(declare-fun m!763903 () Bool)

(assert (=> b!517174 m!763903))

(declare-fun m!763905 () Bool)

(assert (=> b!517174 m!763905))

(declare-fun m!763907 () Bool)

(assert (=> b!517173 m!763907))

(assert (=> d!184882 d!184934))

(assert (=> d!184882 d!184886))

(declare-fun bs!59952 () Bool)

(declare-fun d!184936 () Bool)

(assert (= bs!59952 (and d!184936 b!517040)))

(declare-fun lambda!14565 () Int)

(assert (=> bs!59952 (not (= lambda!14565 lambda!14538))))

(declare-fun bs!59953 () Bool)

(assert (= bs!59953 (and d!184936 d!184908)))

(assert (=> bs!59953 (not (= lambda!14565 lambda!14552))))

(declare-fun bs!59954 () Bool)

(assert (= bs!59954 (and d!184936 b!517068)))

(assert (=> bs!59954 (not (= lambda!14565 lambda!14545))))

(declare-fun bs!59955 () Bool)

(assert (= bs!59955 (and d!184936 d!184904)))

(assert (=> bs!59955 (= (= (hashF!2389 hm!65) (hashF!2389 (_2!3139 lt!215138))) (= lambda!14565 lambda!14549))))

(declare-fun bs!59956 () Bool)

(assert (= bs!59956 (and d!184936 d!184916)))

(assert (=> bs!59956 (not (= lambda!14565 lambda!14553))))

(declare-fun bs!59957 () Bool)

(assert (= bs!59957 (and d!184936 b!517174)))

(assert (=> bs!59957 (not (= lambda!14565 lambda!14564))))

(declare-fun bs!59958 () Bool)

(assert (= bs!59958 (and d!184936 b!517078)))

(assert (=> bs!59958 (not (= lambda!14565 lambda!14546))))

(assert (=> d!184936 true))

(assert (=> d!184936 (= (allKeysSameHashInMap!31 (map!1054 (v!15786 (underlying!1234 hm!65))) (hashF!2389 hm!65)) (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14565))))

(declare-fun bs!59959 () Bool)

(assert (= bs!59959 d!184936))

(declare-fun m!763909 () Bool)

(assert (=> bs!59959 m!763909))

(assert (=> b!517079 d!184936))

(assert (=> b!517079 d!184918))

(declare-fun bs!59960 () Bool)

(declare-fun b!517176 () Bool)

(assert (= bs!59960 (and b!517176 b!517040)))

(declare-fun lambda!14566 () Int)

(assert (=> bs!59960 (= lambda!14566 lambda!14538)))

(declare-fun bs!59961 () Bool)

(assert (= bs!59961 (and b!517176 d!184908)))

(assert (=> bs!59961 (= lambda!14566 lambda!14552)))

(declare-fun bs!59962 () Bool)

(assert (= bs!59962 (and b!517176 b!517068)))

(assert (=> bs!59962 (= lambda!14566 lambda!14545)))

(declare-fun bs!59963 () Bool)

(assert (= bs!59963 (and b!517176 d!184904)))

(assert (=> bs!59963 (not (= lambda!14566 lambda!14549))))

(declare-fun bs!59964 () Bool)

(assert (= bs!59964 (and b!517176 d!184916)))

(assert (=> bs!59964 (= lambda!14566 lambda!14553)))

(declare-fun bs!59965 () Bool)

(assert (= bs!59965 (and b!517176 b!517174)))

(assert (=> bs!59965 (= lambda!14566 lambda!14564)))

(declare-fun bs!59966 () Bool)

(assert (= bs!59966 (and b!517176 b!517078)))

(assert (=> bs!59966 (= lambda!14566 lambda!14546)))

(declare-fun bs!59967 () Bool)

(assert (= bs!59967 (and b!517176 d!184936)))

(assert (=> bs!59967 (not (= lambda!14566 lambda!14565))))

(declare-fun d!184938 () Bool)

(declare-fun res!219333 () Bool)

(declare-fun e!309565 () Bool)

(assert (=> d!184938 (=> (not res!219333) (not e!309565))))

(assert (=> d!184938 (= res!219333 (valid!495 (v!15786 (underlying!1234 (_2!3141 lt!215217)))))))

(assert (=> d!184938 (= (valid!494 (_2!3141 lt!215217)) e!309565)))

(declare-fun res!219334 () Bool)

(assert (=> b!517176 (=> (not res!219334) (not e!309565))))

(assert (=> b!517176 (= res!219334 (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3141 lt!215217))))) lambda!14566))))

(declare-fun b!517177 () Bool)

(assert (=> b!517177 (= e!309565 (allKeysSameHashInMap!31 (map!1054 (v!15786 (underlying!1234 (_2!3141 lt!215217)))) (hashF!2389 (_2!3141 lt!215217))))))

(assert (= (and d!184938 res!219333) b!517176))

(assert (= (and b!517176 res!219334) b!517177))

(declare-fun m!763911 () Bool)

(assert (=> d!184938 m!763911))

(declare-fun m!763913 () Bool)

(assert (=> b!517176 m!763913))

(declare-fun m!763915 () Bool)

(assert (=> b!517176 m!763915))

(assert (=> b!517177 m!763913))

(assert (=> b!517177 m!763913))

(declare-fun m!763917 () Bool)

(assert (=> b!517177 m!763917))

(assert (=> bm!37801 d!184938))

(declare-fun d!184940 () Bool)

(declare-fun res!219335 () Bool)

(declare-fun e!309566 () Bool)

(assert (=> d!184940 (=> res!219335 e!309566)))

(assert (=> d!184940 (= res!219335 ((_ is Nil!4738) (t!73318 (toList!429 lt!215137))))))

(assert (=> d!184940 (= (forall!1410 (t!73318 (toList!429 lt!215137)) p!6060) e!309566)))

(declare-fun b!517178 () Bool)

(declare-fun e!309567 () Bool)

(assert (=> b!517178 (= e!309566 e!309567)))

(declare-fun res!219336 () Bool)

(assert (=> b!517178 (=> (not res!219336) (not e!309567))))

(assert (=> b!517178 (= res!219336 (dynLambda!2983 p!6060 (h!10137 (t!73318 (toList!429 lt!215137)))))))

(declare-fun b!517179 () Bool)

(assert (=> b!517179 (= e!309567 (forall!1410 (t!73318 (t!73318 (toList!429 lt!215137))) p!6060))))

(assert (= (and d!184940 (not res!219335)) b!517178))

(assert (= (and b!517178 res!219336) b!517179))

(declare-fun b_lambda!20109 () Bool)

(assert (=> (not b_lambda!20109) (not b!517178)))

(declare-fun t!73324 () Bool)

(declare-fun tb!47171 () Bool)

(assert (=> (and start!46980 (= p!6060 p!6060) t!73324) tb!47171))

(declare-fun result!52246 () Bool)

(assert (=> tb!47171 (= result!52246 true)))

(assert (=> b!517178 t!73324))

(declare-fun b_and!51101 () Bool)

(assert (= b_and!51099 (and (=> t!73324 result!52246) b_and!51101)))

(declare-fun m!763919 () Bool)

(assert (=> b!517178 m!763919))

(declare-fun m!763921 () Bool)

(assert (=> b!517179 m!763921))

(assert (=> b!517085 d!184940))

(declare-fun d!184942 () Bool)

(declare-fun res!219341 () Bool)

(declare-fun e!309572 () Bool)

(assert (=> d!184942 (=> res!219341 e!309572)))

(assert (=> d!184942 (= res!219341 (or ((_ is Nil!4738) (toList!429 lt!215135)) ((_ is Nil!4738) (t!73318 (toList!429 lt!215135)))))))

(assert (=> d!184942 (= (noDuplicatedKeys!19 (toList!429 lt!215135)) e!309572)))

(declare-fun b!517184 () Bool)

(declare-fun e!309573 () Bool)

(assert (=> b!517184 (= e!309572 e!309573)))

(declare-fun res!219342 () Bool)

(assert (=> b!517184 (=> (not res!219342) (not e!309573))))

(declare-fun containsKey!20 (List!4748 K!1432) Bool)

(assert (=> b!517184 (= res!219342 (not (containsKey!20 (t!73318 (toList!429 lt!215135)) (_1!3138 (h!10137 (toList!429 lt!215135))))))))

(declare-fun b!517185 () Bool)

(assert (=> b!517185 (= e!309573 (noDuplicatedKeys!19 (t!73318 (toList!429 lt!215135))))))

(assert (= (and d!184942 (not res!219341)) b!517184))

(assert (= (and b!517184 res!219342) b!517185))

(declare-fun m!763923 () Bool)

(assert (=> b!517184 m!763923))

(declare-fun m!763925 () Bool)

(assert (=> b!517185 m!763925))

(assert (=> d!184874 d!184942))

(declare-fun d!184944 () Bool)

(declare-fun res!219343 () Bool)

(declare-fun e!309574 () Bool)

(assert (=> d!184944 (=> res!219343 e!309574)))

(assert (=> d!184944 (= res!219343 ((_ is Nil!4739) (toList!430 lt!215228)))))

(assert (=> d!184944 (= (forall!1411 (toList!430 lt!215228) lambda!14545) e!309574)))

(declare-fun b!517186 () Bool)

(declare-fun e!309575 () Bool)

(assert (=> b!517186 (= e!309574 e!309575)))

(declare-fun res!219344 () Bool)

(assert (=> b!517186 (=> (not res!219344) (not e!309575))))

(assert (=> b!517186 (= res!219344 (dynLambda!2984 lambda!14545 (h!10138 (toList!430 lt!215228))))))

(declare-fun b!517187 () Bool)

(assert (=> b!517187 (= e!309575 (forall!1411 (t!73321 (toList!430 lt!215228)) lambda!14545))))

(assert (= (and d!184944 (not res!219343)) b!517186))

(assert (= (and b!517186 res!219344) b!517187))

(declare-fun b_lambda!20111 () Bool)

(assert (=> (not b_lambda!20111) (not b!517186)))

(declare-fun m!763927 () Bool)

(assert (=> b!517186 m!763927))

(declare-fun m!763929 () Bool)

(assert (=> b!517187 m!763929))

(assert (=> b!517064 d!184944))

(declare-fun d!184946 () Bool)

(assert (=> d!184946 (= (eq!37 call!37806 call!37805) (= (content!833 (toList!429 call!37806)) (content!833 (toList!429 call!37805))))))

(declare-fun bs!59968 () Bool)

(assert (= bs!59968 d!184946))

(declare-fun m!763931 () Bool)

(assert (=> bs!59968 m!763931))

(declare-fun m!763933 () Bool)

(assert (=> bs!59968 m!763933))

(assert (=> b!517064 d!184946))

(declare-fun d!184948 () Bool)

(declare-fun e!309578 () Bool)

(assert (=> d!184948 e!309578))

(declare-fun res!219349 () Bool)

(assert (=> d!184948 (=> (not res!219349) (not e!309578))))

(declare-fun lt!215316 () ListLongMap!85)

(assert (=> d!184948 (= res!219349 (contains!1099 lt!215316 (_1!3140 (tuple2!5849 lt!215219 lt!215208))))))

(declare-fun lt!215315 () List!4749)

(assert (=> d!184948 (= lt!215316 (ListLongMap!86 lt!215315))))

(declare-fun lt!215318 () Unit!8634)

(declare-fun lt!215317 () Unit!8634)

(assert (=> d!184948 (= lt!215318 lt!215317)))

(assert (=> d!184948 (= (getValueByKey!20 lt!215315 (_1!3140 (tuple2!5849 lt!215219 lt!215208))) (Some!1236 (_2!3140 (tuple2!5849 lt!215219 lt!215208))))))

(declare-fun lemmaContainsTupThenGetReturnValue!8 (List!4749 (_ BitVec 64) List!4748) Unit!8634)

(assert (=> d!184948 (= lt!215317 (lemmaContainsTupThenGetReturnValue!8 lt!215315 (_1!3140 (tuple2!5849 lt!215219 lt!215208)) (_2!3140 (tuple2!5849 lt!215219 lt!215208))))))

(declare-fun insertStrictlySorted!4 (List!4749 (_ BitVec 64) List!4748) List!4749)

(assert (=> d!184948 (= lt!215315 (insertStrictlySorted!4 (toList!430 lt!215210) (_1!3140 (tuple2!5849 lt!215219 lt!215208)) (_2!3140 (tuple2!5849 lt!215219 lt!215208))))))

(assert (=> d!184948 (= (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)) lt!215316)))

(declare-fun b!517192 () Bool)

(declare-fun res!219350 () Bool)

(assert (=> b!517192 (=> (not res!219350) (not e!309578))))

(assert (=> b!517192 (= res!219350 (= (getValueByKey!20 (toList!430 lt!215316) (_1!3140 (tuple2!5849 lt!215219 lt!215208))) (Some!1236 (_2!3140 (tuple2!5849 lt!215219 lt!215208)))))))

(declare-fun b!517193 () Bool)

(assert (=> b!517193 (= e!309578 (contains!1100 (toList!430 lt!215316) (tuple2!5849 lt!215219 lt!215208)))))

(assert (= (and d!184948 res!219349) b!517192))

(assert (= (and b!517192 res!219350) b!517193))

(declare-fun m!763935 () Bool)

(assert (=> d!184948 m!763935))

(declare-fun m!763937 () Bool)

(assert (=> d!184948 m!763937))

(declare-fun m!763939 () Bool)

(assert (=> d!184948 m!763939))

(declare-fun m!763941 () Bool)

(assert (=> d!184948 m!763941))

(declare-fun m!763943 () Bool)

(assert (=> b!517192 m!763943))

(declare-fun m!763945 () Bool)

(assert (=> b!517193 m!763945))

(assert (=> b!517064 d!184948))

(declare-fun d!184950 () Bool)

(declare-fun e!309579 () Bool)

(assert (=> d!184950 e!309579))

(declare-fun res!219351 () Bool)

(assert (=> d!184950 (=> (not res!219351) (not e!309579))))

(declare-fun lt!215319 () ListMap!205)

(assert (=> d!184950 (= res!219351 (not (contains!1097 lt!215319 k0!1740)))))

(assert (=> d!184950 (= lt!215319 (ListMap!206 (removePresrvNoDuplicatedKeys!16 (toList!429 call!37811) k0!1740)))))

(assert (=> d!184950 (= (-!42 call!37811 k0!1740) lt!215319)))

(declare-fun b!517194 () Bool)

(assert (=> b!517194 (= e!309579 (= ((_ map and) (content!832 (keys!1863 call!37811)) ((_ map not) (store ((as const (Array K!1432 Bool)) false) k0!1740 true))) (content!832 (keys!1863 lt!215319))))))

(assert (= (and d!184950 res!219351) b!517194))

(declare-fun m!763947 () Bool)

(assert (=> d!184950 m!763947))

(declare-fun m!763949 () Bool)

(assert (=> d!184950 m!763949))

(assert (=> b!517194 m!763733))

(declare-fun m!763951 () Bool)

(assert (=> b!517194 m!763951))

(declare-fun m!763953 () Bool)

(assert (=> b!517194 m!763953))

(declare-fun m!763955 () Bool)

(assert (=> b!517194 m!763955))

(declare-fun m!763957 () Bool)

(assert (=> b!517194 m!763957))

(assert (=> b!517194 m!763955))

(assert (=> b!517194 m!763951))

(assert (=> b!517064 d!184950))

(declare-fun bs!59969 () Bool)

(declare-fun d!184952 () Bool)

(assert (= bs!59969 (and d!184952 b!517040)))

(declare-fun lambda!14569 () Int)

(assert (=> bs!59969 (not (= lambda!14569 lambda!14538))))

(declare-fun bs!59970 () Bool)

(assert (= bs!59970 (and d!184952 d!184908)))

(assert (=> bs!59970 (not (= lambda!14569 lambda!14552))))

(declare-fun bs!59971 () Bool)

(assert (= bs!59971 (and d!184952 b!517068)))

(assert (=> bs!59971 (not (= lambda!14569 lambda!14545))))

(declare-fun bs!59972 () Bool)

(assert (= bs!59972 (and d!184952 d!184904)))

(assert (=> bs!59972 (= (= (hashF!2389 (_2!3141 lt!215217)) (hashF!2389 (_2!3139 lt!215138))) (= lambda!14569 lambda!14549))))

(declare-fun bs!59973 () Bool)

(assert (= bs!59973 (and d!184952 d!184916)))

(assert (=> bs!59973 (not (= lambda!14569 lambda!14553))))

(declare-fun bs!59974 () Bool)

(assert (= bs!59974 (and d!184952 b!517174)))

(assert (=> bs!59974 (not (= lambda!14569 lambda!14564))))

(declare-fun bs!59975 () Bool)

(assert (= bs!59975 (and d!184952 b!517176)))

(assert (=> bs!59975 (not (= lambda!14569 lambda!14566))))

(declare-fun bs!59976 () Bool)

(assert (= bs!59976 (and d!184952 b!517078)))

(assert (=> bs!59976 (not (= lambda!14569 lambda!14546))))

(declare-fun bs!59977 () Bool)

(assert (= bs!59977 (and d!184952 d!184936)))

(assert (=> bs!59977 (= (= (hashF!2389 (_2!3141 lt!215217)) (hashF!2389 hm!65)) (= lambda!14569 lambda!14565))))

(assert (=> d!184952 true))

(assert (=> d!184952 (allKeysSameHash!19 lt!215209 lt!215219 (hashF!2389 (_2!3141 lt!215217)))))

(declare-fun lt!215322 () Unit!8634)

(declare-fun choose!3686 (List!4749 (_ BitVec 64) List!4748 Hashable!499) Unit!8634)

(assert (=> d!184952 (= lt!215322 (choose!3686 (toList!430 lt!215210) lt!215219 lt!215209 (hashF!2389 (_2!3141 lt!215217))))))

(assert (=> d!184952 (forall!1411 (toList!430 lt!215210) lambda!14569)))

(assert (=> d!184952 (= (lemmaInLongMapAllKeySameHashThenForTuple!18 (toList!430 lt!215210) lt!215219 lt!215209 (hashF!2389 (_2!3141 lt!215217))) lt!215322)))

(declare-fun bs!59978 () Bool)

(assert (= bs!59978 d!184952))

(assert (=> bs!59978 m!763707))

(declare-fun m!763959 () Bool)

(assert (=> bs!59978 m!763959))

(declare-fun m!763961 () Bool)

(assert (=> bs!59978 m!763961))

(assert (=> b!517064 d!184952))

(declare-fun bs!59979 () Bool)

(declare-fun d!184954 () Bool)

(assert (= bs!59979 (and d!184954 b!517040)))

(declare-fun lambda!14574 () Int)

(assert (=> bs!59979 (= lambda!14574 lambda!14538)))

(declare-fun bs!59980 () Bool)

(assert (= bs!59980 (and d!184954 d!184908)))

(assert (=> bs!59980 (= lambda!14574 lambda!14552)))

(declare-fun bs!59981 () Bool)

(assert (= bs!59981 (and d!184954 b!517068)))

(assert (=> bs!59981 (= lambda!14574 lambda!14545)))

(declare-fun bs!59982 () Bool)

(assert (= bs!59982 (and d!184954 d!184904)))

(assert (=> bs!59982 (not (= lambda!14574 lambda!14549))))

(declare-fun bs!59983 () Bool)

(assert (= bs!59983 (and d!184954 d!184952)))

(assert (=> bs!59983 (not (= lambda!14574 lambda!14569))))

(declare-fun bs!59984 () Bool)

(assert (= bs!59984 (and d!184954 d!184916)))

(assert (=> bs!59984 (= lambda!14574 lambda!14553)))

(declare-fun bs!59985 () Bool)

(assert (= bs!59985 (and d!184954 b!517174)))

(assert (=> bs!59985 (= lambda!14574 lambda!14564)))

(declare-fun bs!59986 () Bool)

(assert (= bs!59986 (and d!184954 b!517176)))

(assert (=> bs!59986 (= lambda!14574 lambda!14566)))

(declare-fun bs!59987 () Bool)

(assert (= bs!59987 (and d!184954 b!517078)))

(assert (=> bs!59987 (= lambda!14574 lambda!14546)))

(declare-fun bs!59988 () Bool)

(assert (= bs!59988 (and d!184954 d!184936)))

(assert (=> bs!59988 (not (= lambda!14574 lambda!14565))))

(declare-fun e!309582 () Bool)

(assert (=> d!184954 e!309582))

(declare-fun res!219354 () Bool)

(assert (=> d!184954 (=> (not res!219354) (not e!309582))))

(declare-fun lt!215328 () ListLongMap!85)

(assert (=> d!184954 (= res!219354 (forall!1411 (toList!430 lt!215328) lambda!14574))))

(assert (=> d!184954 (= lt!215328 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))))

(declare-fun lt!215327 () Unit!8634)

(declare-fun choose!3687 (ListLongMap!85 (_ BitVec 64) List!4748 Hashable!499) Unit!8634)

(assert (=> d!184954 (= lt!215327 (choose!3687 lt!215210 lt!215219 lt!215208 (hashF!2389 (_2!3141 lt!215217))))))

(assert (=> d!184954 (forall!1411 (toList!430 lt!215210) lambda!14574)))

(assert (=> d!184954 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!18 lt!215210 lt!215219 lt!215208 (hashF!2389 (_2!3141 lt!215217))) lt!215327)))

(declare-fun b!517197 () Bool)

(assert (=> b!517197 (= e!309582 (allKeysSameHashInMap!31 lt!215328 (hashF!2389 (_2!3141 lt!215217))))))

(assert (= (and d!184954 res!219354) b!517197))

(declare-fun m!763963 () Bool)

(assert (=> d!184954 m!763963))

(assert (=> d!184954 m!763701))

(declare-fun m!763965 () Bool)

(assert (=> d!184954 m!763965))

(declare-fun m!763967 () Bool)

(assert (=> d!184954 m!763967))

(declare-fun m!763969 () Bool)

(assert (=> b!517197 m!763969))

(assert (=> b!517064 d!184954))

(declare-fun bs!59989 () Bool)

(declare-fun d!184956 () Bool)

(assert (= bs!59989 (and d!184956 b!517040)))

(declare-fun lambda!14575 () Int)

(assert (=> bs!59989 (not (= lambda!14575 lambda!14538))))

(declare-fun bs!59990 () Bool)

(assert (= bs!59990 (and d!184956 d!184908)))

(assert (=> bs!59990 (not (= lambda!14575 lambda!14552))))

(declare-fun bs!59991 () Bool)

(assert (= bs!59991 (and d!184956 b!517068)))

(assert (=> bs!59991 (not (= lambda!14575 lambda!14545))))

(declare-fun bs!59992 () Bool)

(assert (= bs!59992 (and d!184956 d!184904)))

(assert (=> bs!59992 (= (= (hashF!2389 (_2!3141 lt!215217)) (hashF!2389 (_2!3139 lt!215138))) (= lambda!14575 lambda!14549))))

(declare-fun bs!59993 () Bool)

(assert (= bs!59993 (and d!184956 d!184952)))

(assert (=> bs!59993 (= lambda!14575 lambda!14569)))

(declare-fun bs!59994 () Bool)

(assert (= bs!59994 (and d!184956 d!184916)))

(assert (=> bs!59994 (not (= lambda!14575 lambda!14553))))

(declare-fun bs!59995 () Bool)

(assert (= bs!59995 (and d!184956 b!517174)))

(assert (=> bs!59995 (not (= lambda!14575 lambda!14564))))

(declare-fun bs!59996 () Bool)

(assert (= bs!59996 (and d!184956 b!517176)))

(assert (=> bs!59996 (not (= lambda!14575 lambda!14566))))

(declare-fun bs!59997 () Bool)

(assert (= bs!59997 (and d!184956 b!517078)))

(assert (=> bs!59997 (not (= lambda!14575 lambda!14546))))

(declare-fun bs!59998 () Bool)

(assert (= bs!59998 (and d!184956 d!184936)))

(assert (=> bs!59998 (= (= (hashF!2389 (_2!3141 lt!215217)) (hashF!2389 hm!65)) (= lambda!14575 lambda!14565))))

(declare-fun bs!59999 () Bool)

(assert (= bs!59999 (and d!184956 d!184954)))

(assert (=> bs!59999 (not (= lambda!14575 lambda!14574))))

(assert (=> d!184956 true))

(assert (=> d!184956 (= (allKeysSameHashInMap!31 call!37810 (hashF!2389 (_2!3141 lt!215217))) (forall!1411 (toList!430 call!37810) lambda!14575))))

(declare-fun bs!60000 () Bool)

(assert (= bs!60000 d!184956))

(declare-fun m!763971 () Bool)

(assert (=> bs!60000 m!763971))

(assert (=> b!517064 d!184956))

(declare-fun d!184958 () Bool)

(declare-fun res!219355 () Bool)

(declare-fun e!309583 () Bool)

(assert (=> d!184958 (=> res!219355 e!309583)))

(assert (=> d!184958 (= res!219355 ((_ is Nil!4739) (toList!430 call!37810)))))

(assert (=> d!184958 (= (forall!1411 (toList!430 call!37810) lambda!14545) e!309583)))

(declare-fun b!517198 () Bool)

(declare-fun e!309584 () Bool)

(assert (=> b!517198 (= e!309583 e!309584)))

(declare-fun res!219356 () Bool)

(assert (=> b!517198 (=> (not res!219356) (not e!309584))))

(assert (=> b!517198 (= res!219356 (dynLambda!2984 lambda!14545 (h!10138 (toList!430 call!37810))))))

(declare-fun b!517199 () Bool)

(assert (=> b!517199 (= e!309584 (forall!1411 (t!73321 (toList!430 call!37810)) lambda!14545))))

(assert (= (and d!184958 (not res!219355)) b!517198))

(assert (= (and b!517198 res!219356) b!517199))

(declare-fun b_lambda!20113 () Bool)

(assert (=> (not b_lambda!20113) (not b!517198)))

(declare-fun m!763973 () Bool)

(assert (=> b!517198 m!763973))

(declare-fun m!763975 () Bool)

(assert (=> b!517199 m!763975))

(assert (=> b!517064 d!184958))

(declare-fun b!517218 () Bool)

(assert (=> b!517218 false))

(declare-fun lt!215350 () Unit!8634)

(declare-fun lt!215352 () Unit!8634)

(assert (=> b!517218 (= lt!215350 lt!215352)))

(assert (=> b!517218 (containsKey!20 (toList!429 lt!215221) k0!1740)))

(declare-fun lemmaInGetKeysListThenContainsKey!6 (List!4748 K!1432) Unit!8634)

(assert (=> b!517218 (= lt!215352 (lemmaInGetKeysListThenContainsKey!6 (toList!429 lt!215221) k0!1740))))

(declare-fun e!309597 () Unit!8634)

(declare-fun Unit!8650 () Unit!8634)

(assert (=> b!517218 (= e!309597 Unit!8650)))

(declare-fun d!184960 () Bool)

(declare-fun e!309601 () Bool)

(assert (=> d!184960 e!309601))

(declare-fun res!219363 () Bool)

(assert (=> d!184960 (=> res!219363 e!309601)))

(declare-fun e!309598 () Bool)

(assert (=> d!184960 (= res!219363 e!309598)))

(declare-fun res!219364 () Bool)

(assert (=> d!184960 (=> (not res!219364) (not e!309598))))

(declare-fun lt!215351 () Bool)

(assert (=> d!184960 (= res!219364 (not lt!215351))))

(declare-fun lt!215345 () Bool)

(assert (=> d!184960 (= lt!215351 lt!215345)))

(declare-fun lt!215348 () Unit!8634)

(declare-fun e!309599 () Unit!8634)

(assert (=> d!184960 (= lt!215348 e!309599)))

(declare-fun c!100151 () Bool)

(assert (=> d!184960 (= c!100151 lt!215345)))

(assert (=> d!184960 (= lt!215345 (containsKey!20 (toList!429 lt!215221) k0!1740))))

(assert (=> d!184960 (= (contains!1097 lt!215221 k0!1740) lt!215351)))

(declare-fun bm!37828 () Bool)

(declare-fun call!37833 () Bool)

(declare-fun e!309600 () List!4750)

(declare-fun contains!1102 (List!4750 K!1432) Bool)

(assert (=> bm!37828 (= call!37833 (contains!1102 e!309600 k0!1740))))

(declare-fun c!100153 () Bool)

(assert (=> bm!37828 (= c!100153 c!100151)))

(declare-fun b!517219 () Bool)

(declare-fun lt!215347 () Unit!8634)

(assert (=> b!517219 (= e!309599 lt!215347)))

(declare-fun lt!215349 () Unit!8634)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!13 (List!4748 K!1432) Unit!8634)

(assert (=> b!517219 (= lt!215349 (lemmaContainsKeyImpliesGetValueByKeyDefined!13 (toList!429 lt!215221) k0!1740))))

(declare-datatypes ((Option!1238 0))(
  ( (None!1237) (Some!1237 (v!15793 V!1530)) )
))
(declare-fun isDefined!1052 (Option!1238) Bool)

(declare-fun getValueByKey!21 (List!4748 K!1432) Option!1238)

(assert (=> b!517219 (isDefined!1052 (getValueByKey!21 (toList!429 lt!215221) k0!1740))))

(declare-fun lt!215346 () Unit!8634)

(assert (=> b!517219 (= lt!215346 lt!215349)))

(declare-fun lemmaInListThenGetKeysListContains!6 (List!4748 K!1432) Unit!8634)

(assert (=> b!517219 (= lt!215347 (lemmaInListThenGetKeysListContains!6 (toList!429 lt!215221) k0!1740))))

(assert (=> b!517219 call!37833))

(declare-fun b!517220 () Bool)

(declare-fun Unit!8651 () Unit!8634)

(assert (=> b!517220 (= e!309597 Unit!8651)))

(declare-fun b!517221 () Bool)

(declare-fun e!309602 () Bool)

(assert (=> b!517221 (= e!309601 e!309602)))

(declare-fun res!219365 () Bool)

(assert (=> b!517221 (=> (not res!219365) (not e!309602))))

(assert (=> b!517221 (= res!219365 (isDefined!1052 (getValueByKey!21 (toList!429 lt!215221) k0!1740)))))

(declare-fun b!517222 () Bool)

(assert (=> b!517222 (= e!309600 (getKeysList!7 (toList!429 lt!215221)))))

(declare-fun b!517223 () Bool)

(assert (=> b!517223 (= e!309599 e!309597)))

(declare-fun c!100152 () Bool)

(assert (=> b!517223 (= c!100152 call!37833)))

(declare-fun b!517224 () Bool)

(assert (=> b!517224 (= e!309602 (contains!1102 (keys!1863 lt!215221) k0!1740))))

(declare-fun b!517225 () Bool)

(assert (=> b!517225 (= e!309600 (keys!1863 lt!215221))))

(declare-fun b!517226 () Bool)

(assert (=> b!517226 (= e!309598 (not (contains!1102 (keys!1863 lt!215221) k0!1740)))))

(assert (= (and d!184960 c!100151) b!517219))

(assert (= (and d!184960 (not c!100151)) b!517223))

(assert (= (and b!517223 c!100152) b!517218))

(assert (= (and b!517223 (not c!100152)) b!517220))

(assert (= (or b!517219 b!517223) bm!37828))

(assert (= (and bm!37828 c!100153) b!517222))

(assert (= (and bm!37828 (not c!100153)) b!517225))

(assert (= (and d!184960 res!219364) b!517226))

(assert (= (and d!184960 (not res!219363)) b!517221))

(assert (= (and b!517221 res!219365) b!517224))

(declare-fun m!763977 () Bool)

(assert (=> b!517221 m!763977))

(assert (=> b!517221 m!763977))

(declare-fun m!763979 () Bool)

(assert (=> b!517221 m!763979))

(declare-fun m!763981 () Bool)

(assert (=> b!517222 m!763981))

(declare-fun m!763983 () Bool)

(assert (=> b!517226 m!763983))

(assert (=> b!517226 m!763983))

(declare-fun m!763985 () Bool)

(assert (=> b!517226 m!763985))

(declare-fun m!763987 () Bool)

(assert (=> bm!37828 m!763987))

(declare-fun m!763989 () Bool)

(assert (=> b!517219 m!763989))

(assert (=> b!517219 m!763977))

(assert (=> b!517219 m!763977))

(assert (=> b!517219 m!763979))

(declare-fun m!763991 () Bool)

(assert (=> b!517219 m!763991))

(assert (=> b!517225 m!763983))

(declare-fun m!763993 () Bool)

(assert (=> d!184960 m!763993))

(assert (=> b!517218 m!763993))

(declare-fun m!763995 () Bool)

(assert (=> b!517218 m!763995))

(assert (=> b!517224 m!763983))

(assert (=> b!517224 m!763983))

(assert (=> b!517224 m!763985))

(assert (=> b!517064 d!184960))

(declare-fun bs!60001 () Bool)

(declare-fun d!184962 () Bool)

(assert (= bs!60001 (and d!184962 b!517040)))

(declare-fun lambda!14576 () Int)

(assert (=> bs!60001 (= lambda!14576 lambda!14538)))

(declare-fun bs!60002 () Bool)

(assert (= bs!60002 (and d!184962 d!184956)))

(assert (=> bs!60002 (not (= lambda!14576 lambda!14575))))

(declare-fun bs!60003 () Bool)

(assert (= bs!60003 (and d!184962 d!184908)))

(assert (=> bs!60003 (= lambda!14576 lambda!14552)))

(declare-fun bs!60004 () Bool)

(assert (= bs!60004 (and d!184962 b!517068)))

(assert (=> bs!60004 (= lambda!14576 lambda!14545)))

(declare-fun bs!60005 () Bool)

(assert (= bs!60005 (and d!184962 d!184904)))

(assert (=> bs!60005 (not (= lambda!14576 lambda!14549))))

(declare-fun bs!60006 () Bool)

(assert (= bs!60006 (and d!184962 d!184952)))

(assert (=> bs!60006 (not (= lambda!14576 lambda!14569))))

(declare-fun bs!60007 () Bool)

(assert (= bs!60007 (and d!184962 d!184916)))

(assert (=> bs!60007 (= lambda!14576 lambda!14553)))

(declare-fun bs!60008 () Bool)

(assert (= bs!60008 (and d!184962 b!517174)))

(assert (=> bs!60008 (= lambda!14576 lambda!14564)))

(declare-fun bs!60009 () Bool)

(assert (= bs!60009 (and d!184962 b!517176)))

(assert (=> bs!60009 (= lambda!14576 lambda!14566)))

(declare-fun bs!60010 () Bool)

(assert (= bs!60010 (and d!184962 b!517078)))

(assert (=> bs!60010 (= lambda!14576 lambda!14546)))

(declare-fun bs!60011 () Bool)

(assert (= bs!60011 (and d!184962 d!184936)))

(assert (=> bs!60011 (not (= lambda!14576 lambda!14565))))

(declare-fun bs!60012 () Bool)

(assert (= bs!60012 (and d!184962 d!184954)))

(assert (=> bs!60012 (= lambda!14576 lambda!14574)))

(declare-fun lt!215353 () ListMap!205)

(assert (=> d!184962 (invariantList!80 (toList!429 lt!215353))))

(declare-fun e!309603 () ListMap!205)

(assert (=> d!184962 (= lt!215353 e!309603)))

(declare-fun c!100154 () Bool)

(assert (=> d!184962 (= c!100154 ((_ is Cons!4739) (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))))))

(assert (=> d!184962 (forall!1411 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208))) lambda!14576)))

(assert (=> d!184962 (= (extractMap!24 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))) lt!215353)))

(declare-fun b!517227 () Bool)

(assert (=> b!517227 (= e!309603 (addToMapMapFromBucket!5 (_2!3140 (h!10138 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208))))) (extractMap!24 (t!73321 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))))))))

(declare-fun b!517228 () Bool)

(assert (=> b!517228 (= e!309603 (ListMap!206 Nil!4738))))

(assert (= (and d!184962 c!100154) b!517227))

(assert (= (and d!184962 (not c!100154)) b!517228))

(declare-fun m!763997 () Bool)

(assert (=> d!184962 m!763997))

(declare-fun m!763999 () Bool)

(assert (=> d!184962 m!763999))

(declare-fun m!764001 () Bool)

(assert (=> b!517227 m!764001))

(assert (=> b!517227 m!764001))

(declare-fun m!764003 () Bool)

(assert (=> b!517227 m!764003))

(assert (=> b!517064 d!184962))

(declare-fun d!184964 () Bool)

(assert (=> d!184964 (allKeysSameHash!19 (removePairForKey!18 lt!215209 k0!1740) lt!215219 (hashF!2389 (_2!3141 lt!215217)))))

(declare-fun lt!215356 () Unit!8634)

(declare-fun choose!3688 (List!4748 K!1432 (_ BitVec 64) Hashable!499) Unit!8634)

(assert (=> d!184964 (= lt!215356 (choose!3688 lt!215209 k0!1740 lt!215219 (hashF!2389 (_2!3141 lt!215217))))))

(assert (=> d!184964 (noDuplicateKeys!20 lt!215209)))

(assert (=> d!184964 (= (lemmaRemovePairForKeyPreservesHash!18 lt!215209 k0!1740 lt!215219 (hashF!2389 (_2!3141 lt!215217))) lt!215356)))

(declare-fun bs!60013 () Bool)

(assert (= bs!60013 d!184964))

(assert (=> bs!60013 m!763667))

(assert (=> bs!60013 m!763667))

(assert (=> bs!60013 m!763697))

(declare-fun m!764005 () Bool)

(assert (=> bs!60013 m!764005))

(declare-fun m!764007 () Bool)

(assert (=> bs!60013 m!764007))

(assert (=> b!517064 d!184964))

(declare-fun d!184966 () Bool)

(assert (=> d!184966 true))

(assert (=> d!184966 true))

(declare-fun lambda!14579 () Int)

(declare-fun b_next!13633 () Bool)

(assert (=> start!46980 (= b_next!13629 (or (and d!184966 (= lambda!14579 p!6060)) b_next!13633))))

(assert (=> d!184966 (= (allKeysSameHash!19 (removePairForKey!18 lt!215209 k0!1740) lt!215219 (hashF!2389 (_2!3141 lt!215217))) (forall!1410 (removePairForKey!18 lt!215209 k0!1740) lambda!14579))))

(declare-fun bs!60014 () Bool)

(assert (= bs!60014 d!184966))

(assert (=> bs!60014 m!763667))

(declare-fun m!764009 () Bool)

(assert (=> bs!60014 m!764009))

(assert (=> b!517064 d!184966))

(declare-fun d!184968 () Bool)

(assert (=> d!184968 (= (eq!37 (extractMap!24 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))) (-!42 call!37811 k0!1740)) (= (content!833 (toList!429 (extractMap!24 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))))) (content!833 (toList!429 (-!42 call!37811 k0!1740)))))))

(declare-fun bs!60015 () Bool)

(assert (= bs!60015 d!184968))

(declare-fun m!764011 () Bool)

(assert (=> bs!60015 m!764011))

(declare-fun m!764013 () Bool)

(assert (=> bs!60015 m!764013))

(assert (=> b!517064 d!184968))

(declare-fun bs!60016 () Bool)

(declare-fun d!184970 () Bool)

(assert (= bs!60016 (and d!184970 b!517040)))

(declare-fun lambda!14582 () Int)

(assert (=> bs!60016 (= lambda!14582 lambda!14538)))

(declare-fun bs!60017 () Bool)

(assert (= bs!60017 (and d!184970 d!184956)))

(assert (=> bs!60017 (not (= lambda!14582 lambda!14575))))

(declare-fun bs!60018 () Bool)

(assert (= bs!60018 (and d!184970 d!184962)))

(assert (=> bs!60018 (= lambda!14582 lambda!14576)))

(declare-fun bs!60019 () Bool)

(assert (= bs!60019 (and d!184970 d!184908)))

(assert (=> bs!60019 (= lambda!14582 lambda!14552)))

(declare-fun bs!60020 () Bool)

(assert (= bs!60020 (and d!184970 b!517068)))

(assert (=> bs!60020 (= lambda!14582 lambda!14545)))

(declare-fun bs!60021 () Bool)

(assert (= bs!60021 (and d!184970 d!184904)))

(assert (=> bs!60021 (not (= lambda!14582 lambda!14549))))

(declare-fun bs!60022 () Bool)

(assert (= bs!60022 (and d!184970 d!184952)))

(assert (=> bs!60022 (not (= lambda!14582 lambda!14569))))

(declare-fun bs!60023 () Bool)

(assert (= bs!60023 (and d!184970 d!184916)))

(assert (=> bs!60023 (= lambda!14582 lambda!14553)))

(declare-fun bs!60024 () Bool)

(assert (= bs!60024 (and d!184970 b!517174)))

(assert (=> bs!60024 (= lambda!14582 lambda!14564)))

(declare-fun bs!60025 () Bool)

(assert (= bs!60025 (and d!184970 b!517176)))

(assert (=> bs!60025 (= lambda!14582 lambda!14566)))

(declare-fun bs!60026 () Bool)

(assert (= bs!60026 (and d!184970 b!517078)))

(assert (=> bs!60026 (= lambda!14582 lambda!14546)))

(declare-fun bs!60027 () Bool)

(assert (= bs!60027 (and d!184970 d!184936)))

(assert (=> bs!60027 (not (= lambda!14582 lambda!14565))))

(declare-fun bs!60028 () Bool)

(assert (= bs!60028 (and d!184970 d!184954)))

(assert (=> bs!60028 (= lambda!14582 lambda!14574)))

(assert (=> d!184970 (eq!37 (extractMap!24 (toList!430 (+!27 lt!215210 (tuple2!5849 lt!215219 lt!215208)))) (-!42 (extractMap!24 (toList!430 lt!215210)) k0!1740))))

(declare-fun lt!215359 () Unit!8634)

(declare-fun choose!3689 (ListLongMap!85 (_ BitVec 64) List!4748 K!1432 Hashable!499) Unit!8634)

(assert (=> d!184970 (= lt!215359 (choose!3689 lt!215210 lt!215219 lt!215208 k0!1740 (hashF!2389 (_2!3141 lt!215217))))))

(assert (=> d!184970 (forall!1411 (toList!430 lt!215210) lambda!14582)))

(assert (=> d!184970 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!16 lt!215210 lt!215219 lt!215208 k0!1740 (hashF!2389 (_2!3141 lt!215217))) lt!215359)))

(declare-fun bs!60029 () Bool)

(assert (= bs!60029 d!184970))

(assert (=> bs!60029 m!763703))

(declare-fun m!764015 () Bool)

(assert (=> bs!60029 m!764015))

(declare-fun m!764017 () Bool)

(assert (=> bs!60029 m!764017))

(declare-fun m!764019 () Bool)

(assert (=> bs!60029 m!764019))

(assert (=> bs!60029 m!763703))

(declare-fun m!764021 () Bool)

(assert (=> bs!60029 m!764021))

(declare-fun m!764023 () Bool)

(assert (=> bs!60029 m!764023))

(assert (=> bs!60029 m!764019))

(assert (=> bs!60029 m!764021))

(assert (=> bs!60029 m!763701))

(assert (=> b!517064 d!184970))

(declare-fun b!517241 () Bool)

(declare-fun e!309608 () List!4748)

(assert (=> b!517241 (= e!309608 (t!73318 lt!215209))))

(declare-fun d!184972 () Bool)

(declare-fun lt!215362 () List!4748)

(declare-fun containsKey!21 (List!4748 K!1432) Bool)

(assert (=> d!184972 (not (containsKey!21 lt!215362 k0!1740))))

(assert (=> d!184972 (= lt!215362 e!309608)))

(declare-fun c!100159 () Bool)

(assert (=> d!184972 (= c!100159 (and ((_ is Cons!4738) lt!215209) (= (_1!3138 (h!10137 lt!215209)) k0!1740)))))

(assert (=> d!184972 (noDuplicateKeys!20 lt!215209)))

(assert (=> d!184972 (= (removePairForKey!18 lt!215209 k0!1740) lt!215362)))

(declare-fun b!517244 () Bool)

(declare-fun e!309609 () List!4748)

(assert (=> b!517244 (= e!309609 Nil!4738)))

(declare-fun b!517242 () Bool)

(assert (=> b!517242 (= e!309608 e!309609)))

(declare-fun c!100160 () Bool)

(assert (=> b!517242 (= c!100160 ((_ is Cons!4738) lt!215209))))

(declare-fun b!517243 () Bool)

(assert (=> b!517243 (= e!309609 (Cons!4738 (h!10137 lt!215209) (removePairForKey!18 (t!73318 lt!215209) k0!1740)))))

(assert (= (and d!184972 c!100159) b!517241))

(assert (= (and d!184972 (not c!100159)) b!517242))

(assert (= (and b!517242 c!100160) b!517243))

(assert (= (and b!517242 (not c!100160)) b!517244))

(declare-fun m!764025 () Bool)

(assert (=> d!184972 m!764025))

(assert (=> d!184972 m!764007))

(declare-fun m!764027 () Bool)

(assert (=> b!517243 m!764027))

(assert (=> b!517064 d!184972))

(declare-fun bs!60030 () Bool)

(declare-fun d!184974 () Bool)

(assert (= bs!60030 (and d!184974 d!184966)))

(declare-fun lambda!14583 () Int)

(assert (=> bs!60030 (= lambda!14583 lambda!14579)))

(assert (=> d!184974 true))

(assert (=> d!184974 true))

(declare-fun b_next!13635 () Bool)

(assert (=> start!46980 (= b_next!13633 (or (and d!184974 (= lambda!14583 p!6060)) b_next!13635))))

(assert (=> d!184974 (= (allKeysSameHash!19 lt!215209 lt!215219 (hashF!2389 (_2!3141 lt!215217))) (forall!1410 lt!215209 lambda!14583))))

(declare-fun bs!60031 () Bool)

(assert (= bs!60031 d!184974))

(declare-fun m!764029 () Bool)

(assert (=> bs!60031 m!764029))

(assert (=> b!517064 d!184974))

(declare-fun bs!60032 () Bool)

(declare-fun b!517245 () Bool)

(assert (= bs!60032 (and b!517245 b!517040)))

(declare-fun lambda!14584 () Int)

(assert (=> bs!60032 (= lambda!14584 lambda!14538)))

(declare-fun bs!60033 () Bool)

(assert (= bs!60033 (and b!517245 d!184956)))

(assert (=> bs!60033 (not (= lambda!14584 lambda!14575))))

(declare-fun bs!60034 () Bool)

(assert (= bs!60034 (and b!517245 d!184962)))

(assert (=> bs!60034 (= lambda!14584 lambda!14576)))

(declare-fun bs!60035 () Bool)

(assert (= bs!60035 (and b!517245 d!184908)))

(assert (=> bs!60035 (= lambda!14584 lambda!14552)))

(declare-fun bs!60036 () Bool)

(assert (= bs!60036 (and b!517245 b!517068)))

(assert (=> bs!60036 (= lambda!14584 lambda!14545)))

(declare-fun bs!60037 () Bool)

(assert (= bs!60037 (and b!517245 d!184970)))

(assert (=> bs!60037 (= lambda!14584 lambda!14582)))

(declare-fun bs!60038 () Bool)

(assert (= bs!60038 (and b!517245 d!184904)))

(assert (=> bs!60038 (not (= lambda!14584 lambda!14549))))

(declare-fun bs!60039 () Bool)

(assert (= bs!60039 (and b!517245 d!184952)))

(assert (=> bs!60039 (not (= lambda!14584 lambda!14569))))

(declare-fun bs!60040 () Bool)

(assert (= bs!60040 (and b!517245 d!184916)))

(assert (=> bs!60040 (= lambda!14584 lambda!14553)))

(declare-fun bs!60041 () Bool)

(assert (= bs!60041 (and b!517245 b!517174)))

(assert (=> bs!60041 (= lambda!14584 lambda!14564)))

(declare-fun bs!60042 () Bool)

(assert (= bs!60042 (and b!517245 b!517176)))

(assert (=> bs!60042 (= lambda!14584 lambda!14566)))

(declare-fun bs!60043 () Bool)

(assert (= bs!60043 (and b!517245 b!517078)))

(assert (=> bs!60043 (= lambda!14584 lambda!14546)))

(declare-fun bs!60044 () Bool)

(assert (= bs!60044 (and b!517245 d!184936)))

(assert (=> bs!60044 (not (= lambda!14584 lambda!14565))))

(declare-fun bs!60045 () Bool)

(assert (= bs!60045 (and b!517245 d!184954)))

(assert (=> bs!60045 (= lambda!14584 lambda!14574)))

(declare-fun d!184976 () Bool)

(declare-fun res!219366 () Bool)

(declare-fun e!309610 () Bool)

(assert (=> d!184976 (=> (not res!219366) (not e!309610))))

(assert (=> d!184976 (= res!219366 (valid!495 (v!15786 (underlying!1234 (_2!3139 lt!215218)))))))

(assert (=> d!184976 (= (valid!494 (_2!3139 lt!215218)) e!309610)))

(declare-fun res!219367 () Bool)

(assert (=> b!517245 (=> (not res!219367) (not e!309610))))

(assert (=> b!517245 (= res!219367 (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215218))))) lambda!14584))))

(declare-fun b!517246 () Bool)

(assert (=> b!517246 (= e!309610 (allKeysSameHashInMap!31 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215218)))) (hashF!2389 (_2!3139 lt!215218))))))

(assert (= (and d!184976 res!219366) b!517245))

(assert (= (and b!517245 res!219367) b!517246))

(declare-fun m!764031 () Bool)

(assert (=> d!184976 m!764031))

(assert (=> b!517245 m!763787))

(declare-fun m!764033 () Bool)

(assert (=> b!517245 m!764033))

(assert (=> b!517246 m!763787))

(assert (=> b!517246 m!763787))

(declare-fun m!764035 () Bool)

(assert (=> b!517246 m!764035))

(assert (=> b!517066 d!184976))

(declare-fun bs!60046 () Bool)

(declare-fun d!184978 () Bool)

(assert (= bs!60046 (and d!184978 b!517040)))

(declare-fun lambda!14585 () Int)

(assert (=> bs!60046 (not (= lambda!14585 lambda!14538))))

(declare-fun bs!60047 () Bool)

(assert (= bs!60047 (and d!184978 d!184956)))

(assert (=> bs!60047 (= lambda!14585 lambda!14575)))

(declare-fun bs!60048 () Bool)

(assert (= bs!60048 (and d!184978 d!184962)))

(assert (=> bs!60048 (not (= lambda!14585 lambda!14576))))

(declare-fun bs!60049 () Bool)

(assert (= bs!60049 (and d!184978 d!184908)))

(assert (=> bs!60049 (not (= lambda!14585 lambda!14552))))

(declare-fun bs!60050 () Bool)

(assert (= bs!60050 (and d!184978 b!517068)))

(assert (=> bs!60050 (not (= lambda!14585 lambda!14545))))

(declare-fun bs!60051 () Bool)

(assert (= bs!60051 (and d!184978 d!184970)))

(assert (=> bs!60051 (not (= lambda!14585 lambda!14582))))

(declare-fun bs!60052 () Bool)

(assert (= bs!60052 (and d!184978 b!517245)))

(assert (=> bs!60052 (not (= lambda!14585 lambda!14584))))

(declare-fun bs!60053 () Bool)

(assert (= bs!60053 (and d!184978 d!184904)))

(assert (=> bs!60053 (= (= (hashF!2389 (_2!3141 lt!215217)) (hashF!2389 (_2!3139 lt!215138))) (= lambda!14585 lambda!14549))))

(declare-fun bs!60054 () Bool)

(assert (= bs!60054 (and d!184978 d!184952)))

(assert (=> bs!60054 (= lambda!14585 lambda!14569)))

(declare-fun bs!60055 () Bool)

(assert (= bs!60055 (and d!184978 d!184916)))

(assert (=> bs!60055 (not (= lambda!14585 lambda!14553))))

(declare-fun bs!60056 () Bool)

(assert (= bs!60056 (and d!184978 b!517174)))

(assert (=> bs!60056 (not (= lambda!14585 lambda!14564))))

(declare-fun bs!60057 () Bool)

(assert (= bs!60057 (and d!184978 b!517176)))

(assert (=> bs!60057 (not (= lambda!14585 lambda!14566))))

(declare-fun bs!60058 () Bool)

(assert (= bs!60058 (and d!184978 b!517078)))

(assert (=> bs!60058 (not (= lambda!14585 lambda!14546))))

(declare-fun bs!60059 () Bool)

(assert (= bs!60059 (and d!184978 d!184936)))

(assert (=> bs!60059 (= (= (hashF!2389 (_2!3141 lt!215217)) (hashF!2389 hm!65)) (= lambda!14585 lambda!14565))))

(declare-fun bs!60060 () Bool)

(assert (= bs!60060 (and d!184978 d!184954)))

(assert (=> bs!60060 (not (= lambda!14585 lambda!14574))))

(assert (=> d!184978 true))

(assert (=> d!184978 (= (allKeysSameHashInMap!31 lt!215228 (hashF!2389 (_2!3141 lt!215217))) (forall!1411 (toList!430 lt!215228) lambda!14585))))

(declare-fun bs!60061 () Bool)

(assert (= bs!60061 d!184978))

(declare-fun m!764037 () Bool)

(assert (=> bs!60061 m!764037))

(assert (=> b!517065 d!184978))

(declare-fun b!517247 () Bool)

(assert (=> b!517247 false))

(declare-fun lt!215368 () Unit!8634)

(declare-fun lt!215370 () Unit!8634)

(assert (=> b!517247 (= lt!215368 lt!215370)))

(assert (=> b!517247 (containsKey!20 (toList!429 lt!215235) k0!1740)))

(assert (=> b!517247 (= lt!215370 (lemmaInGetKeysListThenContainsKey!6 (toList!429 lt!215235) k0!1740))))

(declare-fun e!309611 () Unit!8634)

(declare-fun Unit!8652 () Unit!8634)

(assert (=> b!517247 (= e!309611 Unit!8652)))

(declare-fun d!184980 () Bool)

(declare-fun e!309615 () Bool)

(assert (=> d!184980 e!309615))

(declare-fun res!219368 () Bool)

(assert (=> d!184980 (=> res!219368 e!309615)))

(declare-fun e!309612 () Bool)

(assert (=> d!184980 (= res!219368 e!309612)))

(declare-fun res!219369 () Bool)

(assert (=> d!184980 (=> (not res!219369) (not e!309612))))

(declare-fun lt!215369 () Bool)

(assert (=> d!184980 (= res!219369 (not lt!215369))))

(declare-fun lt!215363 () Bool)

(assert (=> d!184980 (= lt!215369 lt!215363)))

(declare-fun lt!215366 () Unit!8634)

(declare-fun e!309613 () Unit!8634)

(assert (=> d!184980 (= lt!215366 e!309613)))

(declare-fun c!100161 () Bool)

(assert (=> d!184980 (= c!100161 lt!215363)))

(assert (=> d!184980 (= lt!215363 (containsKey!20 (toList!429 lt!215235) k0!1740))))

(assert (=> d!184980 (= (contains!1097 lt!215235 k0!1740) lt!215369)))

(declare-fun bm!37829 () Bool)

(declare-fun call!37834 () Bool)

(declare-fun e!309614 () List!4750)

(assert (=> bm!37829 (= call!37834 (contains!1102 e!309614 k0!1740))))

(declare-fun c!100163 () Bool)

(assert (=> bm!37829 (= c!100163 c!100161)))

(declare-fun b!517248 () Bool)

(declare-fun lt!215365 () Unit!8634)

(assert (=> b!517248 (= e!309613 lt!215365)))

(declare-fun lt!215367 () Unit!8634)

(assert (=> b!517248 (= lt!215367 (lemmaContainsKeyImpliesGetValueByKeyDefined!13 (toList!429 lt!215235) k0!1740))))

(assert (=> b!517248 (isDefined!1052 (getValueByKey!21 (toList!429 lt!215235) k0!1740))))

(declare-fun lt!215364 () Unit!8634)

(assert (=> b!517248 (= lt!215364 lt!215367)))

(assert (=> b!517248 (= lt!215365 (lemmaInListThenGetKeysListContains!6 (toList!429 lt!215235) k0!1740))))

(assert (=> b!517248 call!37834))

(declare-fun b!517249 () Bool)

(declare-fun Unit!8653 () Unit!8634)

(assert (=> b!517249 (= e!309611 Unit!8653)))

(declare-fun b!517250 () Bool)

(declare-fun e!309616 () Bool)

(assert (=> b!517250 (= e!309615 e!309616)))

(declare-fun res!219370 () Bool)

(assert (=> b!517250 (=> (not res!219370) (not e!309616))))

(assert (=> b!517250 (= res!219370 (isDefined!1052 (getValueByKey!21 (toList!429 lt!215235) k0!1740)))))

(declare-fun b!517251 () Bool)

(assert (=> b!517251 (= e!309614 (getKeysList!7 (toList!429 lt!215235)))))

(declare-fun b!517252 () Bool)

(assert (=> b!517252 (= e!309613 e!309611)))

(declare-fun c!100162 () Bool)

(assert (=> b!517252 (= c!100162 call!37834)))

(declare-fun b!517253 () Bool)

(assert (=> b!517253 (= e!309616 (contains!1102 (keys!1863 lt!215235) k0!1740))))

(declare-fun b!517254 () Bool)

(assert (=> b!517254 (= e!309614 (keys!1863 lt!215235))))

(declare-fun b!517255 () Bool)

(assert (=> b!517255 (= e!309612 (not (contains!1102 (keys!1863 lt!215235) k0!1740)))))

(assert (= (and d!184980 c!100161) b!517248))

(assert (= (and d!184980 (not c!100161)) b!517252))

(assert (= (and b!517252 c!100162) b!517247))

(assert (= (and b!517252 (not c!100162)) b!517249))

(assert (= (or b!517248 b!517252) bm!37829))

(assert (= (and bm!37829 c!100163) b!517251))

(assert (= (and bm!37829 (not c!100163)) b!517254))

(assert (= (and d!184980 res!219369) b!517255))

(assert (= (and d!184980 (not res!219368)) b!517250))

(assert (= (and b!517250 res!219370) b!517253))

(declare-fun m!764039 () Bool)

(assert (=> b!517250 m!764039))

(assert (=> b!517250 m!764039))

(declare-fun m!764041 () Bool)

(assert (=> b!517250 m!764041))

(assert (=> b!517251 m!763849))

(assert (=> b!517255 m!763739))

(assert (=> b!517255 m!763739))

(declare-fun m!764043 () Bool)

(assert (=> b!517255 m!764043))

(declare-fun m!764045 () Bool)

(assert (=> bm!37829 m!764045))

(declare-fun m!764047 () Bool)

(assert (=> b!517248 m!764047))

(assert (=> b!517248 m!764039))

(assert (=> b!517248 m!764039))

(assert (=> b!517248 m!764041))

(declare-fun m!764049 () Bool)

(assert (=> b!517248 m!764049))

(assert (=> b!517254 m!763739))

(declare-fun m!764051 () Bool)

(assert (=> d!184980 m!764051))

(assert (=> b!517247 m!764051))

(declare-fun m!764053 () Bool)

(assert (=> b!517247 m!764053))

(assert (=> b!517253 m!763739))

(assert (=> b!517253 m!763739))

(assert (=> b!517253 m!764043))

(assert (=> d!184884 d!184980))

(declare-fun b!517294 () Bool)

(declare-fun e!309644 () Bool)

(declare-fun e!309638 () Bool)

(assert (=> b!517294 (= e!309644 e!309638)))

(declare-fun c!100180 () Bool)

(assert (=> b!517294 (= c!100180 (containsKey!20 (toList!429 lt!215137) k0!1740))))

(declare-fun b!517295 () Bool)

(declare-fun res!219378 () Bool)

(assert (=> b!517295 (=> (not res!219378) (not e!309644))))

(declare-fun lt!215410 () List!4748)

(assert (=> b!517295 (= res!219378 (= (content!832 (getKeysList!7 lt!215410)) ((_ map and) (content!832 (getKeysList!7 (toList!429 lt!215137))) ((_ map not) (store ((as const (Array K!1432 Bool)) false) k0!1740 true)))))))

(declare-fun b!517296 () Bool)

(declare-fun call!37848 () (InoxSet tuple2!5844))

(declare-fun call!37852 () (InoxSet tuple2!5844))

(assert (=> b!517296 (= e!309638 (= call!37848 call!37852))))

(declare-fun b!517297 () Bool)

(declare-fun e!309645 () List!4748)

(assert (=> b!517297 (= e!309645 (t!73318 (toList!429 lt!215137)))))

(declare-fun c!100184 () Bool)

(declare-fun call!37849 () Bool)

(assert (=> b!517297 (= c!100184 call!37849)))

(declare-fun lt!215424 () Unit!8634)

(declare-fun e!309642 () Unit!8634)

(assert (=> b!517297 (= lt!215424 e!309642)))

(declare-fun bm!37842 () Bool)

(declare-fun call!37850 () (InoxSet tuple2!5844))

(assert (=> bm!37842 (= call!37850 (content!833 (t!73318 (toList!429 lt!215137))))))

(declare-fun b!517298 () Bool)

(declare-fun lt!215414 () Unit!8634)

(declare-fun e!309643 () Unit!8634)

(assert (=> b!517298 (= lt!215414 e!309643)))

(declare-fun c!100182 () Bool)

(declare-fun call!37851 () Bool)

(assert (=> b!517298 (= c!100182 call!37851)))

(declare-fun lt!215418 () Unit!8634)

(declare-fun e!309641 () Unit!8634)

(assert (=> b!517298 (= lt!215418 e!309641)))

(declare-fun c!100183 () Bool)

(assert (=> b!517298 (= c!100183 (contains!1102 (getKeysList!7 (t!73318 (toList!429 lt!215137))) (_1!3138 (h!10137 (toList!429 lt!215137)))))))

(declare-fun lt!215409 () List!4748)

(declare-fun $colon$colon!42 (List!4748 tuple2!5844) List!4748)

(assert (=> b!517298 (= lt!215409 ($colon$colon!42 (removePresrvNoDuplicatedKeys!16 (t!73318 (toList!429 lt!215137)) k0!1740) (h!10137 (toList!429 lt!215137))))))

(declare-fun e!309640 () List!4748)

(assert (=> b!517298 (= e!309640 lt!215409)))

(declare-fun b!517299 () Bool)

(declare-fun e!309637 () Unit!8634)

(declare-fun Unit!8654 () Unit!8634)

(assert (=> b!517299 (= e!309637 Unit!8654)))

(declare-fun b!517300 () Bool)

(declare-fun res!219379 () Bool)

(assert (=> b!517300 (=> (not res!219379) (not e!309644))))

(assert (=> b!517300 (= res!219379 (not (containsKey!20 lt!215410 k0!1740)))))

(declare-fun b!517301 () Bool)

(assert (=> b!517301 (= e!309645 e!309640)))

(declare-fun c!100185 () Bool)

(assert (=> b!517301 (= c!100185 (and ((_ is Cons!4738) (toList!429 lt!215137)) (not (= (_1!3138 (h!10137 (toList!429 lt!215137))) k0!1740))))))

(declare-fun b!517302 () Bool)

(assert (=> b!517302 (= e!309640 Nil!4738)))

(declare-fun bm!37843 () Bool)

(declare-fun e!309639 () List!4748)

(declare-fun lt!215421 () K!1432)

(declare-fun c!100186 () Bool)

(assert (=> bm!37843 (= call!37851 (containsKey!20 e!309639 (ite c!100186 lt!215421 (_1!3138 (h!10137 (toList!429 lt!215137))))))))

(declare-fun c!100181 () Bool)

(assert (=> bm!37843 (= c!100181 c!100186)))

(declare-fun b!517303 () Bool)

(declare-fun Unit!8655 () Unit!8634)

(assert (=> b!517303 (= e!309643 Unit!8655)))

(declare-fun lt!215420 () List!4748)

(assert (=> b!517303 (= lt!215420 (removePresrvNoDuplicatedKeys!16 (t!73318 (toList!429 lt!215137)) k0!1740))))

(declare-fun lt!215416 () Unit!8634)

(assert (=> b!517303 (= lt!215416 (lemmaInListThenGetKeysListContains!6 lt!215420 (_1!3138 (h!10137 (toList!429 lt!215137)))))))

(assert (=> b!517303 (contains!1102 (getKeysList!7 lt!215420) (_1!3138 (h!10137 (toList!429 lt!215137))))))

(declare-fun lt!215411 () Unit!8634)

(assert (=> b!517303 (= lt!215411 lt!215416)))

(assert (=> b!517303 false))

(declare-fun b!517304 () Bool)

(assert (=> b!517304 (= e!309639 (t!73318 (toList!429 lt!215137)))))

(declare-fun bm!37844 () Bool)

(assert (=> bm!37844 (= call!37848 (content!833 lt!215410))))

(declare-fun b!517305 () Bool)

(declare-fun Unit!8656 () Unit!8634)

(assert (=> b!517305 (= e!309643 Unit!8656)))

(declare-fun bm!37845 () Bool)

(assert (=> bm!37845 (= call!37849 (containsKey!20 (ite c!100186 (toList!429 lt!215137) (t!73318 (toList!429 lt!215137))) (ite c!100186 k0!1740 (_1!3138 (h!10137 (toList!429 lt!215137))))))))

(declare-fun b!517306 () Bool)

(declare-fun Unit!8657 () Unit!8634)

(assert (=> b!517306 (= e!309641 Unit!8657)))

(declare-fun lt!215412 () Unit!8634)

(assert (=> b!517306 (= lt!215412 (lemmaInGetKeysListThenContainsKey!6 (t!73318 (toList!429 lt!215137)) (_1!3138 (h!10137 (toList!429 lt!215137)))))))

(assert (=> b!517306 call!37849))

(declare-fun lt!215415 () Unit!8634)

(assert (=> b!517306 (= lt!215415 lt!215412)))

(assert (=> b!517306 false))

(declare-fun b!517307 () Bool)

(declare-fun get!1803 (Option!1238) V!1530)

(assert (=> b!517307 (= e!309638 (= call!37848 ((_ map and) call!37852 ((_ map not) (store ((as const (Array tuple2!5844 Bool)) false) (tuple2!5845 k0!1740 (get!1803 (getValueByKey!21 (toList!429 lt!215137) k0!1740))) true)))))))

(assert (=> b!517307 (containsKey!20 (toList!429 lt!215137) k0!1740)))

(declare-fun lt!215419 () Unit!8634)

(assert (=> b!517307 (= lt!215419 (lemmaContainsKeyImpliesGetValueByKeyDefined!13 (toList!429 lt!215137) k0!1740))))

(assert (=> b!517307 (isDefined!1052 (getValueByKey!21 (toList!429 lt!215137) k0!1740))))

(declare-fun lt!215422 () Unit!8634)

(assert (=> b!517307 (= lt!215422 lt!215419)))

(declare-fun bm!37846 () Bool)

(declare-fun call!37847 () (InoxSet tuple2!5844))

(assert (=> bm!37846 (= call!37847 (content!833 (toList!429 lt!215137)))))

(declare-fun b!517308 () Bool)

(assert (=> b!517308 (= call!37850 call!37847)))

(declare-fun Unit!8658 () Unit!8634)

(assert (=> b!517308 (= e!309642 Unit!8658)))

(declare-fun b!517309 () Bool)

(declare-fun Unit!8659 () Unit!8634)

(assert (=> b!517309 (= e!309641 Unit!8659)))

(declare-fun b!517310 () Bool)

(assert (=> b!517310 (= call!37850 ((_ map and) call!37847 ((_ map not) (store ((as const (Array tuple2!5844 Bool)) false) (tuple2!5845 k0!1740 (get!1803 (getValueByKey!21 (toList!429 lt!215137) k0!1740))) true))))))

(declare-fun lt!215413 () Unit!8634)

(assert (=> b!517310 (= lt!215413 e!309637)))

(declare-fun c!100187 () Bool)

(declare-fun contains!1103 (List!4748 tuple2!5844) Bool)

(assert (=> b!517310 (= c!100187 (contains!1103 (t!73318 (toList!429 lt!215137)) (tuple2!5845 k0!1740 (get!1803 (getValueByKey!21 (toList!429 lt!215137) k0!1740)))))))

(declare-fun Unit!8660 () Unit!8634)

(assert (=> b!517310 (= e!309642 Unit!8660)))

(declare-fun b!517311 () Bool)

(assert (=> b!517311 (= e!309639 (removePresrvNoDuplicatedKeys!16 (t!73318 (toList!429 lt!215137)) k0!1740))))

(declare-fun d!184982 () Bool)

(assert (=> d!184982 e!309644))

(declare-fun res!219377 () Bool)

(assert (=> d!184982 (=> (not res!219377) (not e!309644))))

(assert (=> d!184982 (= res!219377 (invariantList!80 lt!215410))))

(assert (=> d!184982 (= lt!215410 e!309645)))

(assert (=> d!184982 (= c!100186 (and ((_ is Cons!4738) (toList!429 lt!215137)) (= (_1!3138 (h!10137 (toList!429 lt!215137))) k0!1740)))))

(assert (=> d!184982 (invariantList!80 (toList!429 lt!215137))))

(assert (=> d!184982 (= (removePresrvNoDuplicatedKeys!16 (toList!429 lt!215137) k0!1740) lt!215410)))

(declare-fun b!517312 () Bool)

(declare-fun Unit!8661 () Unit!8634)

(assert (=> b!517312 (= e!309637 Unit!8661)))

(declare-fun lt!215408 () V!1530)

(assert (=> b!517312 (= lt!215408 (get!1803 (getValueByKey!21 (toList!429 lt!215137) k0!1740)))))

(assert (=> b!517312 (= lt!215421 k0!1740)))

(declare-fun lt!215407 () K!1432)

(assert (=> b!517312 (= lt!215407 k0!1740)))

(declare-fun lt!215423 () Unit!8634)

(declare-fun lemmaContainsTupleThenContainsKey!4 (List!4748 K!1432 V!1530) Unit!8634)

(assert (=> b!517312 (= lt!215423 (lemmaContainsTupleThenContainsKey!4 (t!73318 (toList!429 lt!215137)) lt!215421 (get!1803 (getValueByKey!21 (toList!429 lt!215137) k0!1740))))))

(assert (=> b!517312 call!37851))

(declare-fun lt!215417 () Unit!8634)

(assert (=> b!517312 (= lt!215417 lt!215423)))

(assert (=> b!517312 false))

(declare-fun bm!37847 () Bool)

(assert (=> bm!37847 (= call!37852 (content!833 (toList!429 lt!215137)))))

(assert (= (and d!184982 c!100186) b!517297))

(assert (= (and d!184982 (not c!100186)) b!517301))

(assert (= (and b!517297 c!100184) b!517310))

(assert (= (and b!517297 (not c!100184)) b!517308))

(assert (= (and b!517310 c!100187) b!517312))

(assert (= (and b!517310 (not c!100187)) b!517299))

(assert (= (or b!517310 b!517308) bm!37846))

(assert (= (or b!517310 b!517308) bm!37842))

(assert (= (and b!517301 c!100185) b!517298))

(assert (= (and b!517301 (not c!100185)) b!517302))

(assert (= (and b!517298 c!100183) b!517306))

(assert (= (and b!517298 (not c!100183)) b!517309))

(assert (= (and b!517298 c!100182) b!517303))

(assert (= (and b!517298 (not c!100182)) b!517305))

(assert (= (or b!517297 b!517306) bm!37845))

(assert (= (or b!517312 b!517298) bm!37843))

(assert (= (and bm!37843 c!100181) b!517304))

(assert (= (and bm!37843 (not c!100181)) b!517311))

(assert (= (and d!184982 res!219377) b!517300))

(assert (= (and b!517300 res!219379) b!517295))

(assert (= (and b!517295 res!219378) b!517294))

(assert (= (and b!517294 c!100180) b!517307))

(assert (= (and b!517294 (not c!100180)) b!517296))

(assert (= (or b!517307 b!517296) bm!37844))

(assert (= (or b!517307 b!517296) bm!37847))

(declare-fun m!764055 () Bool)

(assert (=> b!517310 m!764055))

(assert (=> b!517310 m!764055))

(declare-fun m!764057 () Bool)

(assert (=> b!517310 m!764057))

(declare-fun m!764059 () Bool)

(assert (=> b!517310 m!764059))

(declare-fun m!764061 () Bool)

(assert (=> b!517310 m!764061))

(declare-fun m!764063 () Bool)

(assert (=> b!517306 m!764063))

(declare-fun m!764065 () Bool)

(assert (=> bm!37845 m!764065))

(declare-fun m!764067 () Bool)

(assert (=> bm!37843 m!764067))

(assert (=> bm!37846 m!763751))

(assert (=> bm!37847 m!763751))

(declare-fun m!764069 () Bool)

(assert (=> b!517303 m!764069))

(declare-fun m!764071 () Bool)

(assert (=> b!517303 m!764071))

(declare-fun m!764073 () Bool)

(assert (=> b!517303 m!764073))

(assert (=> b!517303 m!764073))

(declare-fun m!764075 () Bool)

(assert (=> b!517303 m!764075))

(declare-fun m!764077 () Bool)

(assert (=> b!517294 m!764077))

(assert (=> b!517295 m!763829))

(assert (=> b!517295 m!763829))

(declare-fun m!764079 () Bool)

(assert (=> b!517295 m!764079))

(assert (=> b!517295 m!763733))

(declare-fun m!764081 () Bool)

(assert (=> b!517295 m!764081))

(declare-fun m!764083 () Bool)

(assert (=> b!517295 m!764083))

(assert (=> b!517295 m!764081))

(declare-fun m!764085 () Bool)

(assert (=> b!517298 m!764085))

(assert (=> b!517298 m!764085))

(declare-fun m!764087 () Bool)

(assert (=> b!517298 m!764087))

(assert (=> b!517298 m!764069))

(assert (=> b!517298 m!764069))

(declare-fun m!764089 () Bool)

(assert (=> b!517298 m!764089))

(assert (=> b!517312 m!764055))

(assert (=> b!517312 m!764055))

(assert (=> b!517312 m!764057))

(assert (=> b!517312 m!764057))

(declare-fun m!764091 () Bool)

(assert (=> b!517312 m!764091))

(assert (=> b!517307 m!764059))

(assert (=> b!517307 m!764055))

(assert (=> b!517307 m!764057))

(assert (=> b!517307 m!764055))

(assert (=> b!517307 m!764077))

(assert (=> b!517307 m!764055))

(declare-fun m!764093 () Bool)

(assert (=> b!517307 m!764093))

(declare-fun m!764095 () Bool)

(assert (=> b!517307 m!764095))

(declare-fun m!764097 () Bool)

(assert (=> b!517300 m!764097))

(declare-fun m!764099 () Bool)

(assert (=> bm!37842 m!764099))

(declare-fun m!764101 () Bool)

(assert (=> d!184982 m!764101))

(declare-fun m!764103 () Bool)

(assert (=> d!184982 m!764103))

(declare-fun m!764105 () Bool)

(assert (=> bm!37844 m!764105))

(assert (=> b!517311 m!764069))

(assert (=> d!184884 d!184982))

(assert (=> b!517068 d!184918))

(declare-fun d!184984 () Bool)

(declare-fun e!309648 () Bool)

(assert (=> d!184984 e!309648))

(declare-fun c!100190 () Bool)

(assert (=> d!184984 (= c!100190 (contains!1101 (v!15786 (underlying!1234 hm!65)) lt!215219))))

(declare-fun lt!215427 () List!4748)

(declare-fun apply!1192 (LongMapFixedSize!1054 (_ BitVec 64)) List!4748)

(assert (=> d!184984 (= lt!215427 (apply!1192 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))) lt!215219))))

(assert (=> d!184984 (valid!495 (v!15786 (underlying!1234 hm!65)))))

(assert (=> d!184984 (= (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219) lt!215427)))

(declare-fun b!517317 () Bool)

(declare-fun get!1804 (Option!1237) List!4748)

(assert (=> b!517317 (= e!309648 (= lt!215427 (get!1804 (getValueByKey!20 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lt!215219))))))

(declare-fun b!517318 () Bool)

(declare-fun dynLambda!2985 (Int (_ BitVec 64)) List!4748)

(assert (=> b!517318 (= e!309648 (= lt!215427 (dynLambda!2985 (defaultEntry!878 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65))))) lt!215219)))))

(assert (=> b!517318 ((_ is LongMap!527) (v!15786 (underlying!1234 hm!65)))))

(assert (= (and d!184984 c!100190) b!517317))

(assert (= (and d!184984 (not c!100190)) b!517318))

(declare-fun b_lambda!20115 () Bool)

(assert (=> (not b_lambda!20115) (not b!517318)))

(declare-fun t!73326 () Bool)

(declare-fun tb!47173 () Bool)

(assert (=> (and b!517035 (= (defaultEntry!878 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65))))) (defaultEntry!878 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))) t!73326) tb!47173))

(assert (=> b!517318 t!73326))

(declare-fun result!52248 () Bool)

(declare-fun b_and!51103 () Bool)

(assert (= b_and!51097 (and (=> t!73326 result!52248) b_and!51103)))

(declare-fun m!764107 () Bool)

(assert (=> d!184984 m!764107))

(declare-fun m!764109 () Bool)

(assert (=> d!184984 m!764109))

(assert (=> d!184984 m!763743))

(assert (=> b!517317 m!763681))

(declare-fun m!764111 () Bool)

(assert (=> b!517317 m!764111))

(assert (=> b!517317 m!764111))

(declare-fun m!764113 () Bool)

(assert (=> b!517317 m!764113))

(declare-fun m!764115 () Bool)

(assert (=> b!517318 m!764115))

(assert (=> b!517068 d!184984))

(assert (=> b!517068 d!184892))

(declare-fun d!184986 () Bool)

(declare-fun res!219384 () Bool)

(declare-fun e!309653 () Bool)

(assert (=> d!184986 (=> res!219384 e!309653)))

(assert (=> d!184986 (= res!219384 (not ((_ is Cons!4738) (removePairForKey!18 lt!215209 k0!1740))))))

(assert (=> d!184986 (= (noDuplicateKeys!20 (removePairForKey!18 lt!215209 k0!1740)) e!309653)))

(declare-fun b!517323 () Bool)

(declare-fun e!309654 () Bool)

(assert (=> b!517323 (= e!309653 e!309654)))

(declare-fun res!219385 () Bool)

(assert (=> b!517323 (=> (not res!219385) (not e!309654))))

(assert (=> b!517323 (= res!219385 (not (containsKey!21 (t!73318 (removePairForKey!18 lt!215209 k0!1740)) (_1!3138 (h!10137 (removePairForKey!18 lt!215209 k0!1740))))))))

(declare-fun b!517324 () Bool)

(assert (=> b!517324 (= e!309654 (noDuplicateKeys!20 (t!73318 (removePairForKey!18 lt!215209 k0!1740))))))

(assert (= (and d!184986 (not res!219384)) b!517323))

(assert (= (and b!517323 res!219385) b!517324))

(declare-fun m!764117 () Bool)

(assert (=> b!517323 m!764117))

(declare-fun m!764119 () Bool)

(assert (=> b!517324 m!764119))

(assert (=> b!517068 d!184986))

(declare-fun d!184988 () Bool)

(declare-fun hash!532 (Hashable!499 K!1432) (_ BitVec 64))

(assert (=> d!184988 (= (hash!527 (hashF!2389 hm!65) k0!1740) (hash!532 (hashF!2389 hm!65) k0!1740))))

(declare-fun bs!60062 () Bool)

(assert (= bs!60062 d!184988))

(declare-fun m!764121 () Bool)

(assert (=> bs!60062 m!764121))

(assert (=> b!517068 d!184988))

(declare-fun b!517343 () Bool)

(declare-fun e!309666 () tuple2!5852)

(assert (=> b!517343 (= e!309666 (tuple2!5853 true (v!15786 (underlying!1234 hm!65))))))

(declare-fun b!517345 () Bool)

(declare-fun lt!215439 () tuple2!5852)

(assert (=> b!517345 (= e!309666 (tuple2!5853 (_1!3142 lt!215439) (_2!3142 lt!215439)))))

(declare-fun repack!10 (MutLongMap!527) tuple2!5852)

(assert (=> b!517345 (= lt!215439 (repack!10 (v!15786 (underlying!1234 hm!65))))))

(declare-fun bm!37852 () Bool)

(declare-fun call!37858 () ListLongMap!85)

(declare-fun lt!215437 () tuple2!5852)

(assert (=> bm!37852 (= call!37858 (map!1054 (_2!3142 lt!215437)))))

(declare-fun b!517346 () Bool)

(declare-fun e!309668 () Bool)

(declare-fun call!37857 () ListLongMap!85)

(assert (=> b!517346 (= e!309668 (= call!37858 call!37857))))

(declare-fun b!517347 () Bool)

(declare-fun e!309669 () Bool)

(assert (=> b!517347 (= e!309669 (= call!37858 (+!27 call!37857 (tuple2!5849 lt!215219 lt!215208))))))

(declare-fun b!517344 () Bool)

(declare-fun e!309665 () tuple2!5852)

(declare-datatypes ((tuple2!5854 0))(
  ( (tuple2!5855 (_1!3143 Bool) (_2!3143 LongMapFixedSize!1054)) )
))
(declare-fun lt!215436 () tuple2!5854)

(assert (=> b!517344 (= e!309665 (tuple2!5853 (_1!3143 lt!215436) (LongMap!527 (Cell!2050 (_2!3143 lt!215436)))))))

(declare-fun lt!215438 () tuple2!5852)

(declare-fun update!60 (LongMapFixedSize!1054 (_ BitVec 64) List!4748) tuple2!5854)

(assert (=> b!517344 (= lt!215436 (update!60 (v!15785 (underlying!1233 (_2!3142 lt!215438))) lt!215219 lt!215208))))

(declare-fun d!184990 () Bool)

(declare-fun e!309667 () Bool)

(assert (=> d!184990 e!309667))

(declare-fun res!219394 () Bool)

(assert (=> d!184990 (=> (not res!219394) (not e!309667))))

(assert (=> d!184990 (= res!219394 ((_ is LongMap!527) (_2!3142 lt!215437)))))

(assert (=> d!184990 (= lt!215437 e!309665)))

(declare-fun c!100198 () Bool)

(assert (=> d!184990 (= c!100198 (_1!3142 lt!215438))))

(assert (=> d!184990 (= lt!215438 e!309666)))

(declare-fun c!100199 () Bool)

(declare-fun imbalanced!6 (MutLongMap!527) Bool)

(assert (=> d!184990 (= c!100199 (imbalanced!6 (v!15786 (underlying!1234 hm!65))))))

(assert (=> d!184990 (valid!495 (v!15786 (underlying!1234 hm!65)))))

(assert (=> d!184990 (= (update!59 (v!15786 (underlying!1234 hm!65)) lt!215219 lt!215208) lt!215437)))

(declare-fun bm!37853 () Bool)

(assert (=> bm!37853 (= call!37857 (map!1054 (v!15786 (underlying!1234 hm!65))))))

(declare-fun b!517348 () Bool)

(declare-fun res!219392 () Bool)

(assert (=> b!517348 (=> (not res!219392) (not e!309667))))

(assert (=> b!517348 (= res!219392 (valid!495 (_2!3142 lt!215437)))))

(declare-fun b!517349 () Bool)

(assert (=> b!517349 (= e!309665 (tuple2!5853 false (_2!3142 lt!215438)))))

(declare-fun b!517350 () Bool)

(assert (=> b!517350 (= e!309667 e!309668)))

(declare-fun c!100197 () Bool)

(assert (=> b!517350 (= c!100197 (_1!3142 lt!215437))))

(declare-fun b!517351 () Bool)

(assert (=> b!517351 (= e!309668 e!309669)))

(declare-fun res!219393 () Bool)

(assert (=> b!517351 (= res!219393 (contains!1099 call!37858 lt!215219))))

(assert (=> b!517351 (=> (not res!219393) (not e!309669))))

(assert (= (and d!184990 c!100199) b!517345))

(assert (= (and d!184990 (not c!100199)) b!517343))

(assert (= (and d!184990 c!100198) b!517344))

(assert (= (and d!184990 (not c!100198)) b!517349))

(assert (= (and d!184990 res!219394) b!517348))

(assert (= (and b!517348 res!219392) b!517350))

(assert (= (and b!517350 c!100197) b!517351))

(assert (= (and b!517350 (not c!100197)) b!517346))

(assert (= (and b!517351 res!219393) b!517347))

(assert (= (or b!517347 b!517346) bm!37853))

(assert (= (or b!517351 b!517347 b!517346) bm!37852))

(declare-fun m!764123 () Bool)

(assert (=> b!517345 m!764123))

(declare-fun m!764125 () Bool)

(assert (=> b!517351 m!764125))

(declare-fun m!764127 () Bool)

(assert (=> b!517348 m!764127))

(declare-fun m!764129 () Bool)

(assert (=> d!184990 m!764129))

(assert (=> d!184990 m!763743))

(declare-fun m!764131 () Bool)

(assert (=> b!517344 m!764131))

(declare-fun m!764133 () Bool)

(assert (=> b!517347 m!764133))

(declare-fun m!764135 () Bool)

(assert (=> bm!37852 m!764135))

(assert (=> bm!37853 m!763681))

(assert (=> b!517068 d!184990))

(declare-fun d!184992 () Bool)

(assert (=> d!184992 (noDuplicateKeys!20 (removePairForKey!18 lt!215209 k0!1740))))

(declare-fun lt!215442 () Unit!8634)

(declare-fun choose!3690 (List!4748 K!1432) Unit!8634)

(assert (=> d!184992 (= lt!215442 (choose!3690 lt!215209 k0!1740))))

(assert (=> d!184992 (noDuplicateKeys!20 lt!215209)))

(assert (=> d!184992 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!18 lt!215209 k0!1740) lt!215442)))

(declare-fun bs!60063 () Bool)

(assert (= bs!60063 d!184992))

(assert (=> bs!60063 m!763667))

(assert (=> bs!60063 m!763667))

(assert (=> bs!60063 m!763669))

(declare-fun m!764137 () Bool)

(assert (=> bs!60063 m!764137))

(assert (=> bs!60063 m!764007))

(assert (=> b!517068 d!184992))

(assert (=> b!517068 d!184972))

(declare-fun d!184994 () Bool)

(assert (=> d!184994 (dynLambda!2984 lambda!14545 (tuple2!5849 lt!215219 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219)))))

(declare-fun lt!215445 () Unit!8634)

(declare-fun choose!3691 (List!4749 Int tuple2!5848) Unit!8634)

(assert (=> d!184994 (= lt!215445 (choose!3691 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14545 (tuple2!5849 lt!215219 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219))))))

(declare-fun e!309672 () Bool)

(assert (=> d!184994 e!309672))

(declare-fun res!219397 () Bool)

(assert (=> d!184994 (=> (not res!219397) (not e!309672))))

(assert (=> d!184994 (= res!219397 (forall!1411 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14545))))

(assert (=> d!184994 (= (forallContained!449 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) lambda!14545 (tuple2!5849 lt!215219 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219))) lt!215445)))

(declare-fun b!517354 () Bool)

(assert (=> b!517354 (= e!309672 (contains!1100 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))) (tuple2!5849 lt!215219 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219))))))

(assert (= (and d!184994 res!219397) b!517354))

(declare-fun b_lambda!20117 () Bool)

(assert (=> (not b_lambda!20117) (not d!184994)))

(declare-fun m!764139 () Bool)

(assert (=> d!184994 m!764139))

(declare-fun m!764141 () Bool)

(assert (=> d!184994 m!764141))

(declare-fun m!764143 () Bool)

(assert (=> d!184994 m!764143))

(declare-fun m!764145 () Bool)

(assert (=> b!517354 m!764145))

(assert (=> b!517068 d!184994))

(declare-fun bs!60064 () Bool)

(declare-fun d!184996 () Bool)

(assert (= bs!60064 (and d!184996 b!517040)))

(declare-fun lambda!14588 () Int)

(assert (=> bs!60064 (= lambda!14588 lambda!14538)))

(declare-fun bs!60065 () Bool)

(assert (= bs!60065 (and d!184996 d!184956)))

(assert (=> bs!60065 (not (= lambda!14588 lambda!14575))))

(declare-fun bs!60066 () Bool)

(assert (= bs!60066 (and d!184996 d!184962)))

(assert (=> bs!60066 (= lambda!14588 lambda!14576)))

(declare-fun bs!60067 () Bool)

(assert (= bs!60067 (and d!184996 d!184908)))

(assert (=> bs!60067 (= lambda!14588 lambda!14552)))

(declare-fun bs!60068 () Bool)

(assert (= bs!60068 (and d!184996 b!517068)))

(assert (=> bs!60068 (= lambda!14588 lambda!14545)))

(declare-fun bs!60069 () Bool)

(assert (= bs!60069 (and d!184996 d!184978)))

(assert (=> bs!60069 (not (= lambda!14588 lambda!14585))))

(declare-fun bs!60070 () Bool)

(assert (= bs!60070 (and d!184996 d!184970)))

(assert (=> bs!60070 (= lambda!14588 lambda!14582)))

(declare-fun bs!60071 () Bool)

(assert (= bs!60071 (and d!184996 b!517245)))

(assert (=> bs!60071 (= lambda!14588 lambda!14584)))

(declare-fun bs!60072 () Bool)

(assert (= bs!60072 (and d!184996 d!184904)))

(assert (=> bs!60072 (not (= lambda!14588 lambda!14549))))

(declare-fun bs!60073 () Bool)

(assert (= bs!60073 (and d!184996 d!184952)))

(assert (=> bs!60073 (not (= lambda!14588 lambda!14569))))

(declare-fun bs!60074 () Bool)

(assert (= bs!60074 (and d!184996 d!184916)))

(assert (=> bs!60074 (= lambda!14588 lambda!14553)))

(declare-fun bs!60075 () Bool)

(assert (= bs!60075 (and d!184996 b!517174)))

(assert (=> bs!60075 (= lambda!14588 lambda!14564)))

(declare-fun bs!60076 () Bool)

(assert (= bs!60076 (and d!184996 b!517176)))

(assert (=> bs!60076 (= lambda!14588 lambda!14566)))

(declare-fun bs!60077 () Bool)

(assert (= bs!60077 (and d!184996 b!517078)))

(assert (=> bs!60077 (= lambda!14588 lambda!14546)))

(declare-fun bs!60078 () Bool)

(assert (= bs!60078 (and d!184996 d!184936)))

(assert (=> bs!60078 (not (= lambda!14588 lambda!14565))))

(declare-fun bs!60079 () Bool)

(assert (= bs!60079 (and d!184996 d!184954)))

(assert (=> bs!60079 (= lambda!14588 lambda!14574)))

(assert (=> d!184996 (= (extractMap!24 (toList!430 lt!215206)) (-!42 (extractMap!24 (toList!430 lt!215206)) k0!1740))))

(declare-fun lt!215448 () Unit!8634)

(declare-fun choose!3692 (ListLongMap!85 K!1432 Hashable!499) Unit!8634)

(assert (=> d!184996 (= lt!215448 (choose!3692 lt!215206 k0!1740 (hashF!2389 hm!65)))))

(assert (=> d!184996 (forall!1411 (toList!430 lt!215206) lambda!14588)))

(assert (=> d!184996 (= (lemmaRemoveNotContainedDoesNotChange!16 lt!215206 k0!1740 (hashF!2389 hm!65)) lt!215448)))

(declare-fun bs!60080 () Bool)

(assert (= bs!60080 d!184996))

(declare-fun m!764147 () Bool)

(assert (=> bs!60080 m!764147))

(assert (=> bs!60080 m!764147))

(declare-fun m!764149 () Bool)

(assert (=> bs!60080 m!764149))

(declare-fun m!764151 () Bool)

(assert (=> bs!60080 m!764151))

(declare-fun m!764153 () Bool)

(assert (=> bs!60080 m!764153))

(assert (=> b!517070 d!184996))

(declare-fun d!184998 () Bool)

(declare-fun lt!215449 () ListMap!205)

(assert (=> d!184998 (invariantList!80 (toList!429 lt!215449))))

(assert (=> d!184998 (= lt!215449 (extractMap!24 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3141 lt!215217)))))))))

(assert (=> d!184998 (valid!494 (_2!3141 lt!215217))))

(assert (=> d!184998 (= (map!1053 (_2!3141 lt!215217)) lt!215449)))

(declare-fun bs!60081 () Bool)

(assert (= bs!60081 d!184998))

(declare-fun m!764155 () Bool)

(assert (=> bs!60081 m!764155))

(assert (=> bs!60081 m!763913))

(declare-fun m!764157 () Bool)

(assert (=> bs!60081 m!764157))

(assert (=> bs!60081 m!763685))

(assert (=> bm!37802 d!184998))

(declare-fun d!185000 () Bool)

(assert (=> d!185000 (= (valid!495 (v!15786 (underlying!1234 (_2!3139 lt!215138)))) (valid!496 (v!15785 (underlying!1233 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))))

(declare-fun bs!60082 () Bool)

(assert (= bs!60082 d!185000))

(declare-fun m!764159 () Bool)

(assert (=> bs!60082 m!764159))

(assert (=> d!184880 d!185000))

(declare-fun d!185002 () Bool)

(declare-fun res!219398 () Bool)

(declare-fun e!309673 () Bool)

(assert (=> d!185002 (=> res!219398 e!309673)))

(assert (=> d!185002 (= res!219398 (or ((_ is Nil!4738) (toList!429 lt!215139)) ((_ is Nil!4738) (t!73318 (toList!429 lt!215139)))))))

(assert (=> d!185002 (= (noDuplicatedKeys!19 (toList!429 lt!215139)) e!309673)))

(declare-fun b!517355 () Bool)

(declare-fun e!309674 () Bool)

(assert (=> b!517355 (= e!309673 e!309674)))

(declare-fun res!219399 () Bool)

(assert (=> b!517355 (=> (not res!219399) (not e!309674))))

(assert (=> b!517355 (= res!219399 (not (containsKey!20 (t!73318 (toList!429 lt!215139)) (_1!3138 (h!10137 (toList!429 lt!215139))))))))

(declare-fun b!517356 () Bool)

(assert (=> b!517356 (= e!309674 (noDuplicatedKeys!19 (t!73318 (toList!429 lt!215139))))))

(assert (= (and d!185002 (not res!219398)) b!517355))

(assert (= (and b!517355 res!219399) b!517356))

(declare-fun m!764161 () Bool)

(assert (=> b!517355 m!764161))

(declare-fun m!764163 () Bool)

(assert (=> b!517356 m!764163))

(assert (=> d!184876 d!185002))

(declare-fun d!185004 () Bool)

(declare-fun c!100202 () Bool)

(assert (=> d!185004 (= c!100202 ((_ is Nil!4738) (toList!429 lt!215139)))))

(declare-fun e!309677 () (InoxSet tuple2!5844))

(assert (=> d!185004 (= (content!833 (toList!429 lt!215139)) e!309677)))

(declare-fun b!517361 () Bool)

(assert (=> b!517361 (= e!309677 ((as const (Array tuple2!5844 Bool)) false))))

(declare-fun b!517362 () Bool)

(assert (=> b!517362 (= e!309677 ((_ map or) (store ((as const (Array tuple2!5844 Bool)) false) (h!10137 (toList!429 lt!215139)) true) (content!833 (t!73318 (toList!429 lt!215139)))))))

(assert (= (and d!185004 c!100202) b!517361))

(assert (= (and d!185004 (not c!100202)) b!517362))

(declare-fun m!764165 () Bool)

(assert (=> b!517362 m!764165))

(declare-fun m!764167 () Bool)

(assert (=> b!517362 m!764167))

(assert (=> d!184888 d!185004))

(declare-fun d!185006 () Bool)

(declare-fun c!100203 () Bool)

(assert (=> d!185006 (= c!100203 ((_ is Nil!4738) (toList!429 lt!215137)))))

(declare-fun e!309678 () (InoxSet tuple2!5844))

(assert (=> d!185006 (= (content!833 (toList!429 lt!215137)) e!309678)))

(declare-fun b!517363 () Bool)

(assert (=> b!517363 (= e!309678 ((as const (Array tuple2!5844 Bool)) false))))

(declare-fun b!517364 () Bool)

(assert (=> b!517364 (= e!309678 ((_ map or) (store ((as const (Array tuple2!5844 Bool)) false) (h!10137 (toList!429 lt!215137)) true) (content!833 (t!73318 (toList!429 lt!215137)))))))

(assert (= (and d!185006 c!100203) b!517363))

(assert (= (and d!185006 (not c!100203)) b!517364))

(declare-fun m!764169 () Bool)

(assert (=> b!517364 m!764169))

(assert (=> b!517364 m!764099))

(assert (=> d!184888 d!185006))

(declare-fun bs!60083 () Bool)

(declare-fun d!185008 () Bool)

(assert (= bs!60083 (and d!185008 b!517040)))

(declare-fun lambda!14589 () Int)

(assert (=> bs!60083 (= lambda!14589 lambda!14538)))

(declare-fun bs!60084 () Bool)

(assert (= bs!60084 (and d!185008 d!184956)))

(assert (=> bs!60084 (not (= lambda!14589 lambda!14575))))

(declare-fun bs!60085 () Bool)

(assert (= bs!60085 (and d!185008 d!184962)))

(assert (=> bs!60085 (= lambda!14589 lambda!14576)))

(declare-fun bs!60086 () Bool)

(assert (= bs!60086 (and d!185008 d!184908)))

(assert (=> bs!60086 (= lambda!14589 lambda!14552)))

(declare-fun bs!60087 () Bool)

(assert (= bs!60087 (and d!185008 b!517068)))

(assert (=> bs!60087 (= lambda!14589 lambda!14545)))

(declare-fun bs!60088 () Bool)

(assert (= bs!60088 (and d!185008 d!184978)))

(assert (=> bs!60088 (not (= lambda!14589 lambda!14585))))

(declare-fun bs!60089 () Bool)

(assert (= bs!60089 (and d!185008 b!517245)))

(assert (=> bs!60089 (= lambda!14589 lambda!14584)))

(declare-fun bs!60090 () Bool)

(assert (= bs!60090 (and d!185008 d!184904)))

(assert (=> bs!60090 (not (= lambda!14589 lambda!14549))))

(declare-fun bs!60091 () Bool)

(assert (= bs!60091 (and d!185008 d!184952)))

(assert (=> bs!60091 (not (= lambda!14589 lambda!14569))))

(declare-fun bs!60092 () Bool)

(assert (= bs!60092 (and d!185008 d!184916)))

(assert (=> bs!60092 (= lambda!14589 lambda!14553)))

(declare-fun bs!60093 () Bool)

(assert (= bs!60093 (and d!185008 b!517174)))

(assert (=> bs!60093 (= lambda!14589 lambda!14564)))

(declare-fun bs!60094 () Bool)

(assert (= bs!60094 (and d!185008 b!517176)))

(assert (=> bs!60094 (= lambda!14589 lambda!14566)))

(declare-fun bs!60095 () Bool)

(assert (= bs!60095 (and d!185008 d!184970)))

(assert (=> bs!60095 (= lambda!14589 lambda!14582)))

(declare-fun bs!60096 () Bool)

(assert (= bs!60096 (and d!185008 d!184996)))

(assert (=> bs!60096 (= lambda!14589 lambda!14588)))

(declare-fun bs!60097 () Bool)

(assert (= bs!60097 (and d!185008 b!517078)))

(assert (=> bs!60097 (= lambda!14589 lambda!14546)))

(declare-fun bs!60098 () Bool)

(assert (= bs!60098 (and d!185008 d!184936)))

(assert (=> bs!60098 (not (= lambda!14589 lambda!14565))))

(declare-fun bs!60099 () Bool)

(assert (= bs!60099 (and d!185008 d!184954)))

(assert (=> bs!60099 (= lambda!14589 lambda!14574)))

(declare-fun lt!215450 () ListMap!205)

(assert (=> d!185008 (invariantList!80 (toList!429 lt!215450))))

(declare-fun e!309679 () ListMap!205)

(assert (=> d!185008 (= lt!215450 e!309679)))

(declare-fun c!100204 () Bool)

(assert (=> d!185008 (= c!100204 ((_ is Cons!4739) (ite c!100121 (toList!430 lt!215206) (toList!430 lt!215210))))))

(assert (=> d!185008 (forall!1411 (ite c!100121 (toList!430 lt!215206) (toList!430 lt!215210)) lambda!14589)))

(assert (=> d!185008 (= (extractMap!24 (ite c!100121 (toList!430 lt!215206) (toList!430 lt!215210))) lt!215450)))

(declare-fun b!517365 () Bool)

(assert (=> b!517365 (= e!309679 (addToMapMapFromBucket!5 (_2!3140 (h!10138 (ite c!100121 (toList!430 lt!215206) (toList!430 lt!215210)))) (extractMap!24 (t!73321 (ite c!100121 (toList!430 lt!215206) (toList!430 lt!215210))))))))

(declare-fun b!517366 () Bool)

(assert (=> b!517366 (= e!309679 (ListMap!206 Nil!4738))))

(assert (= (and d!185008 c!100204) b!517365))

(assert (= (and d!185008 (not c!100204)) b!517366))

(declare-fun m!764171 () Bool)

(assert (=> d!185008 m!764171))

(declare-fun m!764173 () Bool)

(assert (=> d!185008 m!764173))

(declare-fun m!764175 () Bool)

(assert (=> b!517365 m!764175))

(assert (=> b!517365 m!764175))

(declare-fun m!764177 () Bool)

(assert (=> b!517365 m!764177))

(assert (=> bm!37803 d!185008))

(declare-fun d!185010 () Bool)

(declare-fun e!309680 () Bool)

(assert (=> d!185010 e!309680))

(declare-fun res!219400 () Bool)

(assert (=> d!185010 (=> (not res!219400) (not e!309680))))

(declare-fun lt!215451 () ListMap!205)

(assert (=> d!185010 (= res!219400 (not (contains!1097 lt!215451 k0!1740)))))

(assert (=> d!185010 (= lt!215451 (ListMap!206 (removePresrvNoDuplicatedKeys!16 (toList!429 call!37807) k0!1740)))))

(assert (=> d!185010 (= (-!42 call!37807 k0!1740) lt!215451)))

(declare-fun b!517367 () Bool)

(assert (=> b!517367 (= e!309680 (= ((_ map and) (content!832 (keys!1863 call!37807)) ((_ map not) (store ((as const (Array K!1432 Bool)) false) k0!1740 true))) (content!832 (keys!1863 lt!215451))))))

(assert (= (and d!185010 res!219400) b!517367))

(declare-fun m!764179 () Bool)

(assert (=> d!185010 m!764179))

(declare-fun m!764181 () Bool)

(assert (=> d!185010 m!764181))

(assert (=> b!517367 m!763733))

(declare-fun m!764183 () Bool)

(assert (=> b!517367 m!764183))

(declare-fun m!764185 () Bool)

(assert (=> b!517367 m!764185))

(declare-fun m!764187 () Bool)

(assert (=> b!517367 m!764187))

(declare-fun m!764189 () Bool)

(assert (=> b!517367 m!764189))

(assert (=> b!517367 m!764187))

(assert (=> b!517367 m!764183))

(assert (=> b!517072 d!185010))

(declare-fun tp!161363 () Bool)

(declare-fun b!517368 () Bool)

(declare-fun e!309681 () Bool)

(assert (=> b!517368 (= e!309681 (and tp_is_empty!2645 tp_is_empty!2647 tp!161363))))

(assert (=> b!517093 (= tp!161354 e!309681)))

(assert (= (and b!517093 ((_ is Cons!4738) (t!73318 mapDefault!2043))) b!517368))

(declare-fun tp!161364 () Bool)

(declare-fun b!517369 () Bool)

(declare-fun e!309682 () Bool)

(assert (=> b!517369 (= e!309682 (and tp_is_empty!2645 tp_is_empty!2647 tp!161364))))

(assert (=> b!517100 (= tp!161361 e!309682)))

(assert (= (and b!517100 ((_ is Cons!4738) (t!73318 (zeroValue!783 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))))) b!517369))

(declare-fun e!309683 () Bool)

(declare-fun tp!161365 () Bool)

(declare-fun b!517370 () Bool)

(assert (=> b!517370 (= e!309683 (and tp_is_empty!2645 tp_is_empty!2647 tp!161365))))

(assert (=> b!517098 (= tp!161359 e!309683)))

(assert (= (and b!517098 ((_ is Cons!4738) (t!73318 mapValue!2040))) b!517370))

(declare-fun condMapEmpty!2044 () Bool)

(declare-fun mapDefault!2044 () List!4748)

(assert (=> mapNonEmpty!2043 (= condMapEmpty!2044 (= mapRest!2043 ((as const (Array (_ BitVec 32) List!4748)) mapDefault!2044)))))

(declare-fun e!309685 () Bool)

(declare-fun mapRes!2044 () Bool)

(assert (=> mapNonEmpty!2043 (= tp!161355 (and e!309685 mapRes!2044))))

(declare-fun mapIsEmpty!2044 () Bool)

(assert (=> mapIsEmpty!2044 mapRes!2044))

(declare-fun tp!161366 () Bool)

(declare-fun b!517372 () Bool)

(assert (=> b!517372 (= e!309685 (and tp_is_empty!2645 tp_is_empty!2647 tp!161366))))

(declare-fun e!309684 () Bool)

(declare-fun b!517371 () Bool)

(declare-fun tp!161368 () Bool)

(assert (=> b!517371 (= e!309684 (and tp_is_empty!2645 tp_is_empty!2647 tp!161368))))

(declare-fun mapNonEmpty!2044 () Bool)

(declare-fun tp!161367 () Bool)

(assert (=> mapNonEmpty!2044 (= mapRes!2044 (and tp!161367 e!309684))))

(declare-fun mapKey!2044 () (_ BitVec 32))

(declare-fun mapRest!2044 () (Array (_ BitVec 32) List!4748))

(declare-fun mapValue!2044 () List!4748)

(assert (=> mapNonEmpty!2044 (= mapRest!2043 (store mapRest!2044 mapKey!2044 mapValue!2044))))

(assert (= (and mapNonEmpty!2043 condMapEmpty!2044) mapIsEmpty!2044))

(assert (= (and mapNonEmpty!2043 (not condMapEmpty!2044)) mapNonEmpty!2044))

(assert (= (and mapNonEmpty!2044 ((_ is Cons!4738) mapValue!2044)) b!517371))

(assert (= (and mapNonEmpty!2043 ((_ is Cons!4738) mapDefault!2044)) b!517372))

(declare-fun m!764191 () Bool)

(assert (=> mapNonEmpty!2044 m!764191))

(declare-fun b!517373 () Bool)

(declare-fun e!309686 () Bool)

(declare-fun tp!161369 () Bool)

(assert (=> b!517373 (= e!309686 (and tp_is_empty!2645 tp_is_empty!2647 tp!161369))))

(assert (=> b!517101 (= tp!161362 e!309686)))

(assert (= (and b!517101 ((_ is Cons!4738) (t!73318 (minValue!783 (v!15785 (underlying!1233 (v!15786 (underlying!1234 hm!65)))))))) b!517373))

(declare-fun b!517381 () Bool)

(declare-fun e!309692 () Bool)

(declare-fun lt!215454 () MutLongMap!527)

(assert (=> b!517381 (= e!309692 ((_ is LongMap!527) lt!215454))))

(assert (=> b!517381 (= lt!215454 (v!15786 (underlying!1234 (_2!3139 (remove!45 hm!65 k0!1740)))))))

(declare-fun b!517380 () Bool)

(declare-fun e!309691 () Bool)

(assert (=> b!517380 (= e!309691 e!309692)))

(assert (=> d!184882 (= true e!309691)))

(assert (= b!517380 b!517381))

(assert (= (and d!184882 ((_ is HashMap!499) (_2!3139 (remove!45 hm!65 k0!1740)))) b!517380))

(declare-fun e!309693 () Bool)

(declare-fun b!517382 () Bool)

(declare-fun tp!161370 () Bool)

(assert (=> b!517382 (= e!309693 (and tp_is_empty!2645 tp_is_empty!2647 tp!161370))))

(assert (=> b!517092 (= tp!161356 e!309693)))

(assert (= (and b!517092 ((_ is Cons!4738) (t!73318 mapValue!2043))) b!517382))

(declare-fun b!517383 () Bool)

(declare-fun e!309694 () Bool)

(declare-fun tp!161371 () Bool)

(assert (=> b!517383 (= e!309694 (and tp_is_empty!2645 tp_is_empty!2647 tp!161371))))

(assert (=> b!517099 (= tp!161360 e!309694)))

(assert (= (and b!517099 ((_ is Cons!4738) (t!73318 mapDefault!2040))) b!517383))

(declare-fun b_lambda!20119 () Bool)

(assert (= b_lambda!20115 (or (and b!517035 b_free!13623) b_lambda!20119)))

(declare-fun b_lambda!20121 () Bool)

(assert (= b_lambda!20109 (or (and start!46980 b_free!13621) (and d!184966 (= lambda!14579 p!6060)) (and d!184974 (= lambda!14583 p!6060)) b_lambda!20121)))

(declare-fun bs!60100 () Bool)

(declare-fun d!185012 () Bool)

(assert (= bs!60100 (and d!185012 d!184966)))

(assert (=> bs!60100 (= (dynLambda!2983 lambda!14579 (h!10137 (t!73318 (toList!429 lt!215137)))) (= (hash!527 (hashF!2389 (_2!3141 lt!215217)) (_1!3138 (h!10137 (t!73318 (toList!429 lt!215137))))) lt!215219))))

(declare-fun m!764193 () Bool)

(assert (=> bs!60100 m!764193))

(assert (=> (and d!184966 (= lambda!14579 p!6060) b!517178) d!185012))

(declare-fun bs!60101 () Bool)

(declare-fun d!185014 () Bool)

(assert (= bs!60101 (and d!185014 d!184974)))

(assert (=> bs!60101 (= (dynLambda!2983 lambda!14583 (h!10137 (t!73318 (toList!429 lt!215137)))) (= (hash!527 (hashF!2389 (_2!3141 lt!215217)) (_1!3138 (h!10137 (t!73318 (toList!429 lt!215137))))) lt!215219))))

(assert (=> bs!60101 m!764193))

(assert (=> (and d!184974 (= lambda!14583 p!6060) b!517178) d!185014))

(declare-fun b_lambda!20123 () Bool)

(assert (= b_lambda!20113 (or b!517068 b_lambda!20123)))

(declare-fun bs!60102 () Bool)

(declare-fun d!185016 () Bool)

(assert (= bs!60102 (and d!185016 b!517068)))

(assert (=> bs!60102 (= (dynLambda!2984 lambda!14545 (h!10138 (toList!430 call!37810))) (noDuplicateKeys!20 (_2!3140 (h!10138 (toList!430 call!37810)))))))

(declare-fun m!764195 () Bool)

(assert (=> bs!60102 m!764195))

(assert (=> b!517198 d!185016))

(declare-fun b_lambda!20125 () Bool)

(assert (= b_lambda!20117 (or b!517068 b_lambda!20125)))

(declare-fun bs!60103 () Bool)

(declare-fun d!185018 () Bool)

(assert (= bs!60103 (and d!185018 b!517068)))

(assert (=> bs!60103 (= (dynLambda!2984 lambda!14545 (tuple2!5849 lt!215219 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219))) (noDuplicateKeys!20 (_2!3140 (tuple2!5849 lt!215219 (apply!1190 (v!15786 (underlying!1234 hm!65)) lt!215219)))))))

(declare-fun m!764197 () Bool)

(assert (=> bs!60103 m!764197))

(assert (=> d!184994 d!185018))

(declare-fun b_lambda!20127 () Bool)

(assert (= b_lambda!20105 (or b!517040 b_lambda!20127)))

(declare-fun bs!60104 () Bool)

(declare-fun d!185020 () Bool)

(assert (= bs!60104 (and d!185020 b!517040)))

(assert (=> bs!60104 (= (dynLambda!2984 lambda!14538 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138))))))) (noDuplicateKeys!20 (_2!3140 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 (_2!3139 lt!215138)))))))))))

(declare-fun m!764199 () Bool)

(assert (=> bs!60104 m!764199))

(assert (=> b!517106 d!185020))

(declare-fun b_lambda!20129 () Bool)

(assert (= b_lambda!20111 (or b!517068 b_lambda!20129)))

(declare-fun bs!60105 () Bool)

(declare-fun d!185022 () Bool)

(assert (= bs!60105 (and d!185022 b!517068)))

(assert (=> bs!60105 (= (dynLambda!2984 lambda!14545 (h!10138 (toList!430 lt!215228))) (noDuplicateKeys!20 (_2!3140 (h!10138 (toList!430 lt!215228)))))))

(declare-fun m!764201 () Bool)

(assert (=> bs!60105 m!764201))

(assert (=> b!517186 d!185022))

(declare-fun b_lambda!20131 () Bool)

(assert (= b_lambda!20107 (or b!517078 b_lambda!20131)))

(declare-fun bs!60106 () Bool)

(declare-fun d!185024 () Bool)

(assert (= bs!60106 (and d!185024 b!517078)))

(assert (=> bs!60106 (= (dynLambda!2984 lambda!14546 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65)))))) (noDuplicateKeys!20 (_2!3140 (h!10138 (toList!430 (map!1054 (v!15786 (underlying!1234 hm!65))))))))))

(declare-fun m!764203 () Bool)

(assert (=> bs!60106 m!764203))

(assert (=> b!517118 d!185024))

(check-sat (not b!517307) (not b!517317) (not b_lambda!20123) (not d!184918) (not b!517222) (not b!517298) (not b!517226) (not d!184902) (not d!184974) (not b_lambda!20131) (not b!517364) (not b!517345) (not bm!37828) (not b!517371) (not d!184938) (not bm!37820) (not b!517243) (not b!517172) (not d!184962) (not b!517306) (not d!184970) (not bm!37822) (not b!517119) (not d!184992) (not b!517300) (not bs!60106) (not b!517142) (not b!517139) (not b!517248) (not d!184934) (not b_lambda!20125) (not b!517310) (not b!517250) (not b!517354) tp_is_empty!2647 (not d!184998) (not b_next!13627) (not d!184904) (not d!184960) (not b!517356) (not b_lambda!20103) (not b!517367) (not b!517114) (not b!517218) (not b!517368) (not d!185008) (not d!184936) (not d!184954) (not b!517251) (not bm!37823) (not d!184952) (not b_lambda!20127) (not d!184978) (not b!517219) (not b!517174) (not b!517141) (not d!184906) (not b!517253) (not tb!47173) (not b!517227) (not d!184908) (not b!517175) (not d!184968) (not b!517135) (not b!517355) (not bs!60102) (not b_lambda!20119) (not b!517344) (not b_next!13631) (not d!184996) (not bm!37824) (not b!517177) (not d!184910) (not b!517140) (not d!185010) (not b!517199) (not b!517193) (not d!184928) (not b!517303) (not d!184914) (not b!517179) b_and!51103 (not b!517347) (not d!184984) (not bs!60105) (not bs!60101) (not bm!37847) (not b!517165) (not b!517373) (not bm!37845) (not bm!37829) (not b!517362) (not bm!37842) (not b!517312) (not b!517246) (not d!184948) (not bs!60104) (not b!517324) (not b!517245) (not b!517107) (not bm!37825) tp_is_empty!2645 (not b!517294) (not bs!60103) (not b!517348) (not b!517126) (not bm!37853) (not b!517369) (not d!185000) (not b!517323) (not d!184980) (not b!517365) (not d!184966) (not d!184988) (not b!517351) (not b!517254) (not b!517173) (not d!184946) (not b!517221) (not b!517382) b_and!51101 b_and!51093 (not d!184920) (not bs!60100) (not b!517197) (not bm!37844) (not d!184932) (not b!517176) (not b!517370) (not b!517383) (not d!184912) (not b!517224) (not b!517192) (not b!517247) (not b_lambda!20121) (not d!184972) (not b_lambda!20129) (not b!517134) (not b!517133) (not b!517120) (not b!517185) (not d!184994) (not b!517255) (not d!184964) (not bm!37846) (not b!517372) (not d!184924) (not b!517194) (not b!517184) (not bm!37821) (not d!184990) (not bm!37852) (not d!184950) (not b!517187) (not d!184916) (not d!184982) (not d!184976) (not b!517311) (not b!517295) (not b!517116) (not d!184900) (not b!517225) (not d!184956) (not b_next!13635) (not bm!37843) (not mapNonEmpty!2044))
(check-sat (not b_next!13627) (not b_next!13631) b_and!51103 (not b_next!13635) b_and!51101 b_and!51093)
