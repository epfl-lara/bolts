; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414054 () Bool)

(assert start!414054)

(declare-fun b!4309014 () Bool)

(declare-fun b_free!128547 () Bool)

(declare-fun b_next!129251 () Bool)

(assert (=> b!4309014 (= b_free!128547 (not b_next!129251))))

(declare-fun tp!1324148 () Bool)

(declare-fun b_and!339961 () Bool)

(assert (=> b!4309014 (= tp!1324148 b_and!339961)))

(declare-fun b!4308992 () Bool)

(declare-fun b_free!128549 () Bool)

(declare-fun b_next!129253 () Bool)

(assert (=> b!4308992 (= b_free!128549 (not b_next!129253))))

(declare-fun tp!1324150 () Bool)

(declare-fun b_and!339963 () Bool)

(assert (=> b!4308992 (= tp!1324150 b_and!339963)))

(declare-fun bs!604973 () Bool)

(declare-fun b!4309018 () Bool)

(declare-fun b!4309001 () Bool)

(assert (= bs!604973 (and b!4309018 b!4309001)))

(declare-fun lambda!132864 () Int)

(declare-fun lambda!132863 () Int)

(assert (=> bs!604973 (= lambda!132864 lambda!132863)))

(declare-fun b!4308990 () Bool)

(declare-fun res!1766108 () Bool)

(declare-fun e!2679655 () Bool)

(assert (=> b!4308990 (=> (not res!1766108) (not e!2679655))))

(declare-fun call!297746 () Bool)

(assert (=> b!4308990 (= res!1766108 call!297746)))

(declare-fun b!4308991 () Bool)

(declare-datatypes ((K!9364 0))(
  ( (K!9365 (val!15749 Int)) )
))
(declare-datatypes ((V!9566 0))(
  ( (V!9567 (val!15750 Int)) )
))
(declare-datatypes ((tuple2!46566 0))(
  ( (tuple2!46567 (_1!26562 K!9364) (_2!26562 V!9566)) )
))
(declare-datatypes ((List!48294 0))(
  ( (Nil!48170) (Cons!48170 (h!53604 tuple2!46566) (t!355093 List!48294)) )
))
(declare-fun e!2679653 () List!48294)

(assert (=> b!4308991 (= e!2679653 Nil!48170)))

(declare-fun e!2679644 () Bool)

(declare-fun e!2679660 () Bool)

(assert (=> b!4308992 (= e!2679644 (and e!2679660 tp!1324150))))

(declare-fun mapIsEmpty!20764 () Bool)

(declare-fun mapRes!20764 () Bool)

(assert (=> mapIsEmpty!20764 mapRes!20764))

(declare-fun b!4308993 () Bool)

(declare-fun e!2679652 () Bool)

(assert (=> b!4308993 e!2679652))

(declare-fun res!1766111 () Bool)

(assert (=> b!4308993 (=> (not res!1766111) (not e!2679652))))

(declare-fun call!297747 () Bool)

(assert (=> b!4308993 (= res!1766111 call!297747)))

(declare-datatypes ((Unit!67272 0))(
  ( (Unit!67273) )
))
(declare-fun e!2679645 () Unit!67272)

(declare-fun Unit!67274 () Unit!67272)

(assert (=> b!4308993 (= e!2679645 Unit!67274)))

(declare-datatypes ((ListMap!1663 0))(
  ( (ListMap!1664 (toList!2382 List!48294)) )
))
(declare-fun lt!1530020 () ListMap!1663)

(declare-fun lt!1530017 () ListMap!1663)

(declare-fun lt!1530013 () ListMap!1663)

(declare-fun call!297726 () Unit!67272)

(declare-fun lt!1530051 () ListMap!1663)

(declare-fun c!732615 () Bool)

(declare-fun bm!297717 () Bool)

(declare-fun key!2048 () K!9364)

(declare-fun lemmaEquivalentThenSameContains!57 (ListMap!1663 ListMap!1663 K!9364) Unit!67272)

(assert (=> bm!297717 (= call!297726 (lemmaEquivalentThenSameContains!57 (ite c!732615 lt!1530051 lt!1530017) (ite c!732615 lt!1530013 lt!1530020) key!2048))))

(declare-fun bm!297718 () Bool)

(declare-fun call!297749 () ListMap!1663)

(declare-fun call!297745 () ListMap!1663)

(assert (=> bm!297718 (= call!297749 call!297745)))

(declare-fun b!4308994 () Bool)

(declare-fun e!2679654 () Bool)

(declare-fun lt!1530035 () List!48294)

(declare-fun noDuplicateKeys!206 (List!48294) Bool)

(assert (=> b!4308994 (= e!2679654 (noDuplicateKeys!206 lt!1530035))))

(declare-fun b!4308995 () Bool)

(declare-fun e!2679650 () Bool)

(declare-datatypes ((array!16744 0))(
  ( (array!16745 (arr!7479 (Array (_ BitVec 32) (_ BitVec 64))) (size!35518 (_ BitVec 32))) )
))
(declare-datatypes ((array!16746 0))(
  ( (array!16747 (arr!7480 (Array (_ BitVec 32) List!48294)) (size!35519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9294 0))(
  ( (LongMapFixedSize!9295 (defaultEntry!5032 Int) (mask!13199 (_ BitVec 32)) (extraKeys!4896 (_ BitVec 32)) (zeroValue!4906 List!48294) (minValue!4906 List!48294) (_size!9337 (_ BitVec 32)) (_keys!4947 array!16744) (_values!4928 array!16746) (_vacant!4708 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18397 0))(
  ( (Cell!18398 (v!42283 LongMapFixedSize!9294)) )
))
(declare-datatypes ((MutLongMap!4647 0))(
  ( (LongMap!4647 (underlying!9523 Cell!18397)) (MutLongMapExt!4646 (__x!29966 Int)) )
))
(declare-fun lt!1530046 () MutLongMap!4647)

(get-info :version)

(assert (=> b!4308995 (= e!2679660 (and e!2679650 ((_ is LongMap!4647) lt!1530046)))))

(declare-datatypes ((Hashable!4563 0))(
  ( (HashableExt!4562 (__x!29967 Int)) )
))
(declare-datatypes ((Cell!18399 0))(
  ( (Cell!18400 (v!42284 MutLongMap!4647)) )
))
(declare-datatypes ((MutableMap!4553 0))(
  ( (MutableMapExt!4552 (__x!29968 Int)) (HashMap!4553 (underlying!9524 Cell!18399) (hashF!6679 Hashable!4563) (_size!9338 (_ BitVec 32)) (defaultValue!4724 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4553)

(assert (=> b!4308995 (= lt!1530046 (v!42284 (underlying!9524 thiss!42308)))))

(declare-fun b!4308996 () Bool)

(declare-fun e!2679646 () Bool)

(declare-fun call!297736 () Bool)

(assert (=> b!4308996 (= e!2679646 call!297736)))

(declare-datatypes ((tuple2!46568 0))(
  ( (tuple2!46569 (_1!26563 (_ BitVec 64)) (_2!26563 List!48294)) )
))
(declare-datatypes ((List!48295 0))(
  ( (Nil!48171) (Cons!48171 (h!53605 tuple2!46568) (t!355094 List!48295)) )
))
(declare-datatypes ((ListLongMap!995 0))(
  ( (ListLongMap!996 (toList!2383 List!48295)) )
))
(declare-fun lt!1530038 () ListLongMap!995)

(declare-fun call!297748 () Bool)

(declare-fun bm!297719 () Bool)

(declare-fun lt!1530057 () ListLongMap!995)

(declare-fun forall!8724 (List!48295 Int) Bool)

(assert (=> bm!297719 (= call!297748 (forall!8724 (ite c!732615 (toList!2383 lt!1530038) (toList!2383 lt!1530057)) (ite c!732615 lambda!132863 lambda!132864)))))

(declare-fun b!4308997 () Bool)

(declare-fun lt!1530050 () ListMap!1663)

(assert (=> b!4308997 (= e!2679652 (= call!297749 lt!1530050))))

(declare-fun mapNonEmpty!20764 () Bool)

(declare-fun tp!1324151 () Bool)

(declare-fun tp!1324149 () Bool)

(assert (=> mapNonEmpty!20764 (= mapRes!20764 (and tp!1324151 tp!1324149))))

(declare-fun mapKey!20764 () (_ BitVec 32))

(declare-fun mapRest!20764 () (Array (_ BitVec 32) List!48294))

(declare-fun mapValue!20764 () List!48294)

(assert (=> mapNonEmpty!20764 (= (arr!7480 (_values!4928 (v!42283 (underlying!9523 (v!42284 (underlying!9524 thiss!42308)))))) (store mapRest!20764 mapKey!20764 mapValue!20764))))

(declare-fun b!4308998 () Bool)

(declare-fun e!2679656 () Bool)

(assert (=> b!4308998 (= e!2679650 e!2679656)))

(declare-fun b!4308999 () Bool)

(declare-fun call!297738 () List!48294)

(assert (=> b!4308999 (= e!2679653 call!297738)))

(declare-fun bm!297720 () Bool)

(declare-fun call!297742 () Bool)

(declare-fun contains!10143 (ListMap!1663 K!9364) Bool)

(assert (=> bm!297720 (= call!297742 (contains!10143 (ite c!732615 lt!1530051 lt!1530020) key!2048))))

(declare-fun b!4309000 () Bool)

(declare-fun e!2679663 () Unit!67272)

(declare-fun Unit!67275 () Unit!67272)

(assert (=> b!4309000 (= e!2679663 Unit!67275)))

(declare-fun lt!1530052 () List!48294)

(declare-fun bm!297721 () Bool)

(declare-fun call!297739 () Bool)

(declare-fun lt!1530025 () (_ BitVec 64))

(declare-fun lt!1530037 () (_ BitVec 64))

(declare-fun lt!1530016 () List!48294)

(declare-fun allKeysSameHash!182 (List!48294 (_ BitVec 64) Hashable!4563) Bool)

(assert (=> bm!297721 (= call!297739 (allKeysSameHash!182 (ite c!732615 lt!1530052 lt!1530016) (ite c!732615 lt!1530037 lt!1530025) (hashF!6679 thiss!42308)))))

(declare-fun bm!297722 () Bool)

(declare-fun lt!1530054 () ListLongMap!995)

(declare-fun allKeysSameHashInMap!332 (ListLongMap!995 Hashable!4563) Bool)

(assert (=> bm!297722 (= call!297746 (allKeysSameHashInMap!332 (ite c!732615 lt!1530038 lt!1530054) (hashF!6679 thiss!42308)))))

(declare-fun bm!297723 () Bool)

(declare-fun call!297740 () Unit!67272)

(declare-fun lemmaRemovePairForKeyPreservesHash!166 (List!48294 K!9364 (_ BitVec 64) Hashable!4563) Unit!67272)

(assert (=> bm!297723 (= call!297740 (lemmaRemovePairForKeyPreservesHash!166 (ite c!732615 lt!1530052 lt!1530016) key!2048 (ite c!732615 lt!1530037 lt!1530025) (hashF!6679 thiss!42308)))))

(declare-fun bm!297724 () Bool)

(declare-fun call!297723 () List!48294)

(declare-fun removePairForKey!204 (List!48294 K!9364) List!48294)

(assert (=> bm!297724 (= call!297723 (removePairForKey!204 (ite c!732615 lt!1530052 lt!1530016) key!2048))))

(assert (=> b!4309001 e!2679655))

(declare-fun res!1766103 () Bool)

(assert (=> b!4309001 (=> (not res!1766103) (not e!2679655))))

(assert (=> b!4309001 (= res!1766103 call!297748)))

(declare-fun call!297727 () ListLongMap!995)

(assert (=> b!4309001 (= lt!1530038 call!297727)))

(declare-fun call!297725 () Bool)

(assert (=> b!4309001 (= call!297742 call!297725)))

(declare-fun lt!1530039 () Unit!67272)

(assert (=> b!4309001 (= lt!1530039 call!297726)))

(declare-fun call!297722 () ListMap!1663)

(assert (=> b!4309001 (= lt!1530013 call!297722)))

(declare-fun call!297737 () ListMap!1663)

(assert (=> b!4309001 (= lt!1530051 call!297737)))

(declare-fun call!297733 () Bool)

(assert (=> b!4309001 call!297733))

(declare-fun lt!1530018 () ListLongMap!995)

(declare-fun lt!1530023 () Unit!67272)

(declare-fun v!9179 () V!9566)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!60 (ListLongMap!995 (_ BitVec 64) List!48294 K!9364 V!9566 Hashable!4563) Unit!67272)

(assert (=> b!4309001 (= lt!1530023 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!60 lt!1530018 lt!1530037 lt!1530035 key!2048 v!9179 (hashF!6679 thiss!42308)))))

(assert (=> b!4309001 e!2679646))

(declare-fun res!1766113 () Bool)

(assert (=> b!4309001 (=> (not res!1766113) (not e!2679646))))

(declare-fun call!297744 () Bool)

(assert (=> b!4309001 (= res!1766113 call!297744)))

(declare-fun lt!1530029 () ListLongMap!995)

(declare-fun call!297732 () ListLongMap!995)

(assert (=> b!4309001 (= lt!1530029 call!297732)))

(declare-fun lt!1530049 () Unit!67272)

(declare-fun call!297729 () Unit!67272)

(assert (=> b!4309001 (= lt!1530049 call!297729)))

(assert (=> b!4309001 e!2679654))

(declare-fun res!1766115 () Bool)

(assert (=> b!4309001 (=> (not res!1766115) (not e!2679654))))

(declare-fun lt!1530030 () List!48294)

(assert (=> b!4309001 (= res!1766115 (noDuplicateKeys!206 lt!1530030))))

(declare-fun lt!1530047 () Unit!67272)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!163 (List!48294 K!9364) Unit!67272)

(assert (=> b!4309001 (= lt!1530047 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!163 lt!1530052 key!2048))))

(declare-fun call!297741 () Bool)

(assert (=> b!4309001 call!297741))

(declare-fun lt!1530015 () Unit!67272)

(assert (=> b!4309001 (= lt!1530015 call!297740)))

(assert (=> b!4309001 call!297739))

(declare-fun lt!1530033 () Unit!67272)

(declare-fun call!297731 () Unit!67272)

(assert (=> b!4309001 (= lt!1530033 call!297731)))

(declare-fun e!2679661 () Unit!67272)

(declare-fun Unit!67276 () Unit!67272)

(assert (=> b!4309001 (= e!2679661 Unit!67276)))

(declare-fun lt!1530043 () Cell!18399)

(declare-datatypes ((tuple2!46570 0))(
  ( (tuple2!46571 (_1!26564 Bool) (_2!26564 MutLongMap!4647)) )
))
(declare-fun lt!1530032 () tuple2!46570)

(declare-fun lt!1530040 () Bool)

(declare-fun b!4309002 () Bool)

(declare-fun lt!1530042 () MutableMap!4553)

(declare-datatypes ((tuple2!46572 0))(
  ( (tuple2!46573 (_1!26565 Bool) (_2!26565 MutableMap!4553)) )
))
(declare-fun e!2679651 () tuple2!46572)

(declare-datatypes ((tuple2!46574 0))(
  ( (tuple2!46575 (_1!26566 Unit!67272) (_2!26566 MutableMap!4553)) )
))
(declare-fun Unit!67277 () Unit!67272)

(declare-fun Unit!67278 () Unit!67272)

(assert (=> b!4309002 (= e!2679651 (tuple2!46573 (_1!26564 lt!1530032) (_2!26566 (ite (and (_1!26564 lt!1530032) (not lt!1530040)) (tuple2!46575 Unit!67277 (HashMap!4553 lt!1530043 (hashF!6679 thiss!42308) (bvadd (_size!9338 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4724 thiss!42308))) (tuple2!46575 Unit!67278 lt!1530042)))))))

(declare-fun call!297728 () (_ BitVec 64))

(assert (=> b!4309002 (= lt!1530025 call!297728)))

(declare-fun c!732616 () Bool)

(declare-fun contains!10144 (MutLongMap!4647 (_ BitVec 64)) Bool)

(assert (=> b!4309002 (= c!732616 (contains!10144 (v!42284 (underlying!9524 thiss!42308)) lt!1530025))))

(assert (=> b!4309002 (= lt!1530016 e!2679653)))

(declare-fun lt!1530055 () tuple2!46566)

(assert (=> b!4309002 (= lt!1530055 (tuple2!46567 key!2048 v!9179))))

(declare-fun lt!1530031 () List!48294)

(assert (=> b!4309002 (= lt!1530031 (Cons!48170 lt!1530055 lt!1530016))))

(declare-fun call!297734 () tuple2!46570)

(assert (=> b!4309002 (= lt!1530032 call!297734)))

(assert (=> b!4309002 (= lt!1530043 (Cell!18400 (_2!26564 lt!1530032)))))

(assert (=> b!4309002 (= lt!1530042 (HashMap!4553 lt!1530043 (hashF!6679 thiss!42308) (_size!9338 thiss!42308) (defaultValue!4724 thiss!42308)))))

(declare-fun c!732617 () Bool)

(assert (=> b!4309002 (= c!732617 (_1!26564 lt!1530032))))

(declare-fun lt!1530014 () Unit!67272)

(assert (=> b!4309002 (= lt!1530014 e!2679645)))

(declare-fun b!4309003 () Bool)

(declare-fun call!297743 () Bool)

(assert (=> b!4309003 (= e!2679655 call!297743)))

(declare-fun lt!1530041 () tuple2!46566)

(declare-fun bm!297725 () Bool)

(declare-fun +!263 (ListMap!1663 tuple2!46566) ListMap!1663)

(assert (=> bm!297725 (= call!297722 (+!263 lt!1530050 (ite c!732615 lt!1530041 lt!1530055)))))

(declare-fun b!4309004 () Bool)

(declare-fun e!2679657 () Bool)

(declare-fun e!2679658 () Bool)

(assert (=> b!4309004 (= e!2679657 e!2679658)))

(declare-fun res!1766110 () Bool)

(assert (=> b!4309004 (=> (not res!1766110) (not e!2679658))))

(declare-fun lt!1530026 () tuple2!46572)

(assert (=> b!4309004 (= res!1766110 ((_ is HashMap!4553) (_2!26565 lt!1530026)))))

(assert (=> b!4309004 (= lt!1530026 e!2679651)))

(assert (=> b!4309004 (= c!732615 lt!1530040)))

(declare-fun contains!10145 (MutableMap!4553 K!9364) Bool)

(assert (=> b!4309004 (= lt!1530040 (contains!10145 thiss!42308 key!2048))))

(declare-fun map!10155 (MutLongMap!4647) ListLongMap!995)

(assert (=> b!4309004 (= lt!1530018 (map!10155 (v!42284 (underlying!9524 thiss!42308))))))

(declare-fun map!10156 (MutableMap!4553) ListMap!1663)

(assert (=> b!4309004 (= lt!1530050 (map!10156 thiss!42308))))

(declare-fun call!297735 () ListMap!1663)

(declare-fun bm!297726 () Bool)

(declare-fun extractMap!324 (List!48295) ListMap!1663)

(assert (=> bm!297726 (= call!297735 (extractMap!324 (ite c!732615 (toList!2383 lt!1530029) (toList!2383 lt!1530054))))))

(declare-fun bm!297727 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!171 (List!48295 (_ BitVec 64) List!48294 Hashable!4563) Unit!67272)

(assert (=> bm!297727 (= call!297731 (lemmaInLongMapAllKeySameHashThenForTuple!171 (toList!2383 lt!1530018) (ite c!732615 lt!1530037 lt!1530025) (ite c!732615 lt!1530052 lt!1530016) (hashF!6679 thiss!42308)))))

(declare-fun bm!297728 () Bool)

(declare-fun hash!995 (Hashable!4563 K!9364) (_ BitVec 64))

(assert (=> bm!297728 (= call!297728 (hash!995 (hashF!6679 thiss!42308) key!2048))))

(declare-fun lt!1530044 () MutableMap!4553)

(declare-fun bm!297729 () Bool)

(assert (=> bm!297729 (= call!297745 (map!10156 (ite c!732615 lt!1530044 lt!1530042)))))

(declare-fun b!4309005 () Bool)

(declare-fun e!2679647 () Bool)

(assert (=> b!4309005 e!2679647))

(declare-fun res!1766105 () Bool)

(assert (=> b!4309005 (=> (not res!1766105) (not e!2679647))))

(assert (=> b!4309005 (= res!1766105 call!297747)))

(declare-fun Unit!67279 () Unit!67272)

(assert (=> b!4309005 (= e!2679661 Unit!67279)))

(declare-fun b!4309006 () Bool)

(assert (=> b!4309006 (= e!2679647 (= call!297737 lt!1530050))))

(declare-fun bm!297730 () Bool)

(assert (=> bm!297730 (= call!297744 (forall!8724 (ite c!732615 (toList!2383 lt!1530029) (toList!2383 lt!1530054)) (ite c!732615 lambda!132863 lambda!132864)))))

(declare-fun bm!297731 () Bool)

(declare-fun apply!11001 (MutLongMap!4647 (_ BitVec 64)) List!48294)

(assert (=> bm!297731 (= call!297738 (apply!11001 (v!42284 (underlying!9524 thiss!42308)) (ite c!732615 lt!1530037 lt!1530025)))))

(declare-fun bm!297732 () Bool)

(declare-fun valid!3635 (MutableMap!4553) Bool)

(assert (=> bm!297732 (= call!297747 (valid!3635 (ite c!732615 lt!1530044 lt!1530042)))))

(declare-fun b!4309007 () Bool)

(declare-fun e!2679664 () Bool)

(assert (=> b!4309007 (= e!2679664 call!297746)))

(declare-fun bm!297733 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!146 (ListLongMap!995 (_ BitVec 64) List!48294 Hashable!4563) Unit!67272)

(assert (=> bm!297733 (= call!297729 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!146 lt!1530018 (ite c!732615 lt!1530037 lt!1530025) (ite c!732615 lt!1530035 lt!1530031) (hashF!6679 thiss!42308)))))

(declare-fun b!4309008 () Bool)

(declare-fun lt!1530045 () Unit!67272)

(assert (=> b!4309008 (= e!2679663 lt!1530045)))

(declare-fun lt!1530022 () Unit!67272)

(assert (=> b!4309008 (= lt!1530022 call!297731)))

(assert (=> b!4309008 call!297739))

(assert (=> b!4309008 (= lt!1530045 call!297740)))

(assert (=> b!4309008 call!297741))

(declare-fun bm!297734 () Bool)

(declare-fun update!427 (MutLongMap!4647 (_ BitVec 64) List!48294) tuple2!46570)

(assert (=> bm!297734 (= call!297734 (update!427 (v!42284 (underlying!9524 thiss!42308)) (ite c!732615 lt!1530037 lt!1530025) (ite c!732615 lt!1530035 lt!1530031)))))

(declare-fun b!4309009 () Bool)

(declare-fun e!2679649 () Bool)

(declare-fun tp!1324146 () Bool)

(assert (=> b!4309009 (= e!2679649 (and tp!1324146 mapRes!20764))))

(declare-fun condMapEmpty!20764 () Bool)

(declare-fun mapDefault!20764 () List!48294)

(assert (=> b!4309009 (= condMapEmpty!20764 (= (arr!7480 (_values!4928 (v!42283 (underlying!9523 (v!42284 (underlying!9524 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48294)) mapDefault!20764)))))

(declare-fun b!4309010 () Bool)

(declare-fun res!1766109 () Bool)

(assert (=> b!4309010 (=> (not res!1766109) (not e!2679658))))

(assert (=> b!4309010 (= res!1766109 (valid!3635 (_2!26565 lt!1530026)))))

(declare-fun b!4309011 () Bool)

(declare-fun res!1766102 () Bool)

(assert (=> b!4309011 (=> (not res!1766102) (not e!2679657))))

(assert (=> b!4309011 (= res!1766102 (valid!3635 thiss!42308))))

(declare-fun bm!297735 () Bool)

(declare-fun eq!141 (ListMap!1663 ListMap!1663) Bool)

(assert (=> bm!297735 (= call!297743 (eq!141 (ite c!732615 lt!1530051 lt!1530017) (ite c!732615 lt!1530013 lt!1530020)))))

(declare-fun bm!297736 () Bool)

(assert (=> bm!297736 (= call!297737 call!297745)))

(declare-fun res!1766106 () Bool)

(assert (=> start!414054 (=> (not res!1766106) (not e!2679657))))

(assert (=> start!414054 (= res!1766106 ((_ is HashMap!4553) thiss!42308))))

(assert (=> start!414054 e!2679657))

(assert (=> start!414054 e!2679644))

(declare-fun tp_is_empty!23709 () Bool)

(assert (=> start!414054 tp_is_empty!23709))

(declare-fun tp_is_empty!23711 () Bool)

(assert (=> start!414054 tp_is_empty!23711))

(declare-fun bm!297737 () Bool)

(assert (=> bm!297737 (= call!297736 (allKeysSameHashInMap!332 (ite c!732615 lt!1530029 lt!1530057) (hashF!6679 thiss!42308)))))

(declare-fun b!4309012 () Bool)

(declare-fun res!1766107 () Bool)

(assert (=> b!4309012 (=> (not res!1766107) (not e!2679658))))

(assert (=> b!4309012 (= res!1766107 (not (_1!26565 lt!1530026)))))

(declare-fun bm!297738 () Bool)

(declare-fun lt!1530019 () tuple2!46570)

(assert (=> bm!297738 (= call!297727 (map!10155 (ite c!732615 (_2!26564 lt!1530019) (_2!26564 lt!1530032))))))

(declare-fun b!4309013 () Bool)

(declare-fun e!2679659 () Bool)

(assert (=> b!4309013 (= e!2679656 e!2679659)))

(declare-fun tp!1324147 () Bool)

(declare-fun tp!1324145 () Bool)

(declare-fun array_inv!5367 (array!16744) Bool)

(declare-fun array_inv!5368 (array!16746) Bool)

(assert (=> b!4309014 (= e!2679659 (and tp!1324148 tp!1324145 tp!1324147 (array_inv!5367 (_keys!4947 (v!42283 (underlying!9523 (v!42284 (underlying!9524 thiss!42308)))))) (array_inv!5368 (_values!4928 (v!42283 (underlying!9523 (v!42284 (underlying!9524 thiss!42308)))))) e!2679649))))

(declare-fun bm!297739 () Bool)

(declare-fun +!264 (ListLongMap!995 tuple2!46568) ListLongMap!995)

(assert (=> bm!297739 (= call!297732 (+!264 lt!1530018 (ite c!732615 (tuple2!46569 lt!1530037 lt!1530035) (tuple2!46569 lt!1530025 lt!1530031))))))

(declare-fun lt!1530021 () Cell!18399)

(declare-fun b!4309015 () Bool)

(declare-fun Unit!67280 () Unit!67272)

(declare-fun Unit!67281 () Unit!67272)

(assert (=> b!4309015 (= e!2679651 (tuple2!46573 (_1!26564 lt!1530019) (_2!26566 (ite (and (_1!26564 lt!1530019) (not lt!1530040)) (tuple2!46575 Unit!67280 (HashMap!4553 lt!1530021 (hashF!6679 thiss!42308) (bvadd (_size!9338 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4724 thiss!42308))) (tuple2!46575 Unit!67281 lt!1530044)))))))

(assert (=> b!4309015 (= lt!1530037 call!297728)))

(assert (=> b!4309015 (= lt!1530052 call!297738)))

(assert (=> b!4309015 (= lt!1530041 (tuple2!46567 key!2048 v!9179))))

(assert (=> b!4309015 (= lt!1530030 call!297723)))

(assert (=> b!4309015 (= lt!1530035 (Cons!48170 lt!1530041 lt!1530030))))

(assert (=> b!4309015 (= lt!1530019 call!297734)))

(assert (=> b!4309015 (= lt!1530021 (Cell!18400 (_2!26564 lt!1530019)))))

(assert (=> b!4309015 (= lt!1530044 (HashMap!4553 lt!1530021 (hashF!6679 thiss!42308) (_size!9338 thiss!42308) (defaultValue!4724 thiss!42308)))))

(declare-fun c!732614 () Bool)

(assert (=> b!4309015 (= c!732614 (_1!26564 lt!1530019))))

(declare-fun lt!1530048 () Unit!67272)

(assert (=> b!4309015 (= lt!1530048 e!2679661)))

(declare-fun b!4309016 () Bool)

(declare-fun res!1766112 () Bool)

(assert (=> b!4309016 (=> (not res!1766112) (not e!2679654))))

(declare-fun containsKey!304 (List!48294 K!9364) Bool)

(assert (=> b!4309016 (= res!1766112 (not (containsKey!304 lt!1530030 key!2048)))))

(declare-fun bm!297740 () Bool)

(assert (=> bm!297740 (= call!297741 (allKeysSameHash!182 (ite c!732615 lt!1530030 call!297723) (ite c!732615 lt!1530037 lt!1530025) (hashF!6679 thiss!42308)))))

(declare-fun bm!297741 () Bool)

(declare-fun call!297724 () ListMap!1663)

(assert (=> bm!297741 (= call!297724 (extractMap!324 (toList!2383 lt!1530018)))))

(declare-fun bm!297742 () Bool)

(declare-fun call!297730 () ListMap!1663)

(assert (=> bm!297742 (= call!297733 (eq!141 call!297735 call!297730))))

(declare-fun bm!297743 () Bool)

(assert (=> bm!297743 (= call!297725 (contains!10143 (ite c!732615 lt!1530013 lt!1530017) key!2048))))

(declare-fun b!4309017 () Bool)

(assert (=> b!4309017 (= e!2679658 false)))

(declare-fun lt!1530056 () ListMap!1663)

(assert (=> b!4309017 (= lt!1530056 (map!10156 (_2!26565 lt!1530026)))))

(declare-fun bm!297744 () Bool)

(assert (=> bm!297744 (= call!297730 (+!263 call!297724 (ite c!732615 lt!1530041 lt!1530055)))))

(declare-fun lt!1530053 () Bool)

(declare-fun lt!1530034 () Bool)

(assert (=> b!4309018 (and (= lt!1530053 lt!1530034) lt!1530034 lt!1530053)))

(assert (=> b!4309018 (= lt!1530034 call!297742)))

(assert (=> b!4309018 (= lt!1530053 call!297725)))

(declare-fun lt!1530024 () Unit!67272)

(assert (=> b!4309018 (= lt!1530024 call!297726)))

(assert (=> b!4309018 call!297743))

(assert (=> b!4309018 (= lt!1530020 call!297722)))

(assert (=> b!4309018 (= lt!1530017 call!297749)))

(declare-fun e!2679662 () Bool)

(assert (=> b!4309018 e!2679662))

(declare-fun res!1766114 () Bool)

(assert (=> b!4309018 (=> (not res!1766114) (not e!2679662))))

(assert (=> b!4309018 (= res!1766114 call!297748)))

(assert (=> b!4309018 (= lt!1530057 call!297727)))

(assert (=> b!4309018 call!297733))

(declare-fun lt!1530027 () Unit!67272)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!57 (ListLongMap!995 (_ BitVec 64) List!48294 K!9364 V!9566 Hashable!4563) Unit!67272)

(assert (=> b!4309018 (= lt!1530027 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!57 lt!1530018 lt!1530025 lt!1530031 key!2048 v!9179 (hashF!6679 thiss!42308)))))

(assert (=> b!4309018 e!2679664))

(declare-fun res!1766104 () Bool)

(assert (=> b!4309018 (=> (not res!1766104) (not e!2679664))))

(assert (=> b!4309018 (= res!1766104 call!297744)))

(assert (=> b!4309018 (= lt!1530054 call!297732)))

(declare-fun lt!1530036 () Unit!67272)

(assert (=> b!4309018 (= lt!1530036 call!297729)))

(declare-fun lt!1530028 () Unit!67272)

(assert (=> b!4309018 (= lt!1530028 e!2679663)))

(declare-fun c!732618 () Bool)

(declare-fun isEmpty!28083 (List!48294) Bool)

(assert (=> b!4309018 (= c!732618 (not (isEmpty!28083 lt!1530016)))))

(declare-fun Unit!67282 () Unit!67272)

(assert (=> b!4309018 (= e!2679645 Unit!67282)))

(declare-fun b!4309019 () Bool)

(assert (=> b!4309019 (= e!2679662 call!297736)))

(assert (= (and start!414054 res!1766106) b!4309011))

(assert (= (and b!4309011 res!1766102) b!4309004))

(assert (= (and b!4309004 c!732615) b!4309015))

(assert (= (and b!4309004 (not c!732615)) b!4309002))

(assert (= (and b!4309015 c!732614) b!4309001))

(assert (= (and b!4309015 (not c!732614)) b!4309005))

(assert (= (and b!4309001 res!1766115) b!4309016))

(assert (= (and b!4309016 res!1766112) b!4308994))

(assert (= (and b!4309001 res!1766113) b!4308996))

(assert (= (and b!4309001 res!1766103) b!4308990))

(assert (= (and b!4308990 res!1766108) b!4309003))

(assert (= (and b!4309005 res!1766105) b!4309006))

(assert (= (or b!4309001 b!4309006) bm!297736))

(assert (= (and b!4309002 c!732616) b!4308999))

(assert (= (and b!4309002 (not c!732616)) b!4308991))

(assert (= (and b!4309002 c!732617) b!4309018))

(assert (= (and b!4309002 (not c!732617)) b!4308993))

(assert (= (and b!4309018 c!732618) b!4309008))

(assert (= (and b!4309018 (not c!732618)) b!4309000))

(assert (= (and b!4309018 res!1766104) b!4309007))

(assert (= (and b!4309018 res!1766114) b!4309019))

(assert (= (and b!4308993 res!1766111) b!4308997))

(assert (= (or b!4309018 b!4308997) bm!297718))

(assert (= (or b!4309005 b!4308993) bm!297732))

(assert (= (or b!4309001 b!4309018) bm!297730))

(assert (= (or b!4309001 b!4309018) bm!297726))

(assert (= (or b!4309015 b!4309002) bm!297734))

(assert (= (or b!4309001 b!4309008) bm!297721))

(assert (= (or b!4309001 b!4309008) bm!297727))

(assert (= (or b!4309001 b!4309018) bm!297719))

(assert (= (or b!4309001 b!4309018) bm!297743))

(assert (= (or bm!297736 bm!297718) bm!297729))

(assert (= (or b!4308990 b!4309007) bm!297722))

(assert (= (or b!4309001 b!4309018) bm!297720))

(assert (= (or b!4308996 b!4309019) bm!297737))

(assert (= (or b!4309001 b!4309018) bm!297725))

(assert (= (or b!4309015 b!4308999) bm!297731))

(assert (= (or b!4309015 b!4309008) bm!297724))

(assert (= (or b!4309001 b!4309018) bm!297739))

(assert (= (or b!4309015 b!4309002) bm!297728))

(assert (= (or b!4309001 b!4309008) bm!297723))

(assert (= (or b!4309001 b!4309018) bm!297741))

(assert (= (or b!4309001 b!4309018) bm!297738))

(assert (= (or b!4309003 b!4309018) bm!297735))

(assert (= (or b!4309001 b!4309018) bm!297733))

(assert (= (or b!4309001 b!4309018) bm!297717))

(assert (= (or b!4309001 b!4309008) bm!297740))

(assert (= (or b!4309001 b!4309018) bm!297744))

(assert (= (or b!4309001 b!4309018) bm!297742))

(assert (= (and b!4309004 res!1766110) b!4309010))

(assert (= (and b!4309010 res!1766109) b!4309012))

(assert (= (and b!4309012 res!1766107) b!4309017))

(assert (= (and b!4309009 condMapEmpty!20764) mapIsEmpty!20764))

(assert (= (and b!4309009 (not condMapEmpty!20764)) mapNonEmpty!20764))

(assert (= b!4309014 b!4309009))

(assert (= b!4309013 b!4309014))

(assert (= b!4308998 b!4309013))

(assert (= (and b!4308995 ((_ is LongMap!4647) (v!42284 (underlying!9524 thiss!42308)))) b!4308998))

(assert (= b!4308992 b!4308995))

(assert (= (and start!414054 ((_ is HashMap!4553) thiss!42308)) b!4308992))

(declare-fun m!4902107 () Bool)

(assert (=> bm!297737 m!4902107))

(declare-fun m!4902109 () Bool)

(assert (=> b!4309016 m!4902109))

(declare-fun m!4902111 () Bool)

(assert (=> bm!297726 m!4902111))

(declare-fun m!4902113 () Bool)

(assert (=> b!4309018 m!4902113))

(declare-fun m!4902115 () Bool)

(assert (=> b!4309018 m!4902115))

(declare-fun m!4902117 () Bool)

(assert (=> bm!297739 m!4902117))

(declare-fun m!4902119 () Bool)

(assert (=> bm!297734 m!4902119))

(declare-fun m!4902121 () Bool)

(assert (=> bm!297730 m!4902121))

(declare-fun m!4902123 () Bool)

(assert (=> bm!297723 m!4902123))

(declare-fun m!4902125 () Bool)

(assert (=> bm!297732 m!4902125))

(declare-fun m!4902127 () Bool)

(assert (=> bm!297725 m!4902127))

(declare-fun m!4902129 () Bool)

(assert (=> b!4309011 m!4902129))

(declare-fun m!4902131 () Bool)

(assert (=> bm!297720 m!4902131))

(declare-fun m!4902133 () Bool)

(assert (=> b!4309010 m!4902133))

(declare-fun m!4902135 () Bool)

(assert (=> bm!297722 m!4902135))

(declare-fun m!4902137 () Bool)

(assert (=> bm!297724 m!4902137))

(declare-fun m!4902139 () Bool)

(assert (=> b!4309001 m!4902139))

(declare-fun m!4902141 () Bool)

(assert (=> b!4309001 m!4902141))

(declare-fun m!4902143 () Bool)

(assert (=> b!4309001 m!4902143))

(declare-fun m!4902145 () Bool)

(assert (=> bm!297735 m!4902145))

(declare-fun m!4902147 () Bool)

(assert (=> bm!297738 m!4902147))

(declare-fun m!4902149 () Bool)

(assert (=> bm!297744 m!4902149))

(declare-fun m!4902151 () Bool)

(assert (=> bm!297719 m!4902151))

(declare-fun m!4902153 () Bool)

(assert (=> b!4309017 m!4902153))

(declare-fun m!4902155 () Bool)

(assert (=> bm!297721 m!4902155))

(declare-fun m!4902157 () Bool)

(assert (=> bm!297740 m!4902157))

(declare-fun m!4902159 () Bool)

(assert (=> b!4309004 m!4902159))

(declare-fun m!4902161 () Bool)

(assert (=> b!4309004 m!4902161))

(declare-fun m!4902163 () Bool)

(assert (=> b!4309004 m!4902163))

(declare-fun m!4902165 () Bool)

(assert (=> bm!297742 m!4902165))

(declare-fun m!4902167 () Bool)

(assert (=> bm!297729 m!4902167))

(declare-fun m!4902169 () Bool)

(assert (=> bm!297733 m!4902169))

(declare-fun m!4902171 () Bool)

(assert (=> bm!297727 m!4902171))

(declare-fun m!4902173 () Bool)

(assert (=> bm!297728 m!4902173))

(declare-fun m!4902175 () Bool)

(assert (=> bm!297717 m!4902175))

(declare-fun m!4902177 () Bool)

(assert (=> mapNonEmpty!20764 m!4902177))

(declare-fun m!4902179 () Bool)

(assert (=> b!4309002 m!4902179))

(declare-fun m!4902181 () Bool)

(assert (=> bm!297731 m!4902181))

(declare-fun m!4902183 () Bool)

(assert (=> b!4308994 m!4902183))

(declare-fun m!4902185 () Bool)

(assert (=> bm!297743 m!4902185))

(declare-fun m!4902187 () Bool)

(assert (=> bm!297741 m!4902187))

(declare-fun m!4902189 () Bool)

(assert (=> b!4309014 m!4902189))

(declare-fun m!4902191 () Bool)

(assert (=> b!4309014 m!4902191))

(check-sat (not bm!297743) (not bm!297739) (not bm!297728) (not bm!297738) (not bm!297742) (not bm!297744) (not bm!297723) b_and!339963 (not bm!297720) (not bm!297731) (not bm!297735) (not b!4309010) (not b!4309002) (not bm!297722) (not bm!297721) tp_is_empty!23711 (not b!4309001) (not bm!297729) (not bm!297737) (not mapNonEmpty!20764) (not b_next!129253) (not b!4309014) (not b!4309004) (not b_next!129251) tp_is_empty!23709 (not b!4309011) (not b!4309018) b_and!339961 (not bm!297719) (not bm!297725) (not b!4308994) (not bm!297733) (not bm!297717) (not b!4309017) (not bm!297740) (not bm!297741) (not b!4309009) (not bm!297732) (not bm!297730) (not b!4309016) (not bm!297734) (not bm!297727) (not bm!297724) (not bm!297726))
(check-sat b_and!339961 b_and!339963 (not b_next!129253) (not b_next!129251))
