; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46524 () Bool)

(assert start!46524)

(declare-fun b!513750 () Bool)

(declare-fun b_free!13343 () Bool)

(declare-fun b_next!13343 () Bool)

(assert (=> b!513750 (= b_free!13343 (not b_next!13343))))

(declare-fun tp!159993 () Bool)

(declare-fun b_and!50769 () Bool)

(assert (=> b!513750 (= tp!159993 b_and!50769)))

(declare-fun b!513752 () Bool)

(declare-fun b_free!13345 () Bool)

(declare-fun b_next!13345 () Bool)

(assert (=> b!513752 (= b_free!13345 (not b_next!13345))))

(declare-fun tp!160000 () Bool)

(declare-fun b_and!50771 () Bool)

(assert (=> b!513752 (= tp!160000 b_and!50771)))

(declare-fun b_free!13347 () Bool)

(declare-fun b_next!13347 () Bool)

(assert (=> start!46524 (= b_free!13347 (not b_next!13347))))

(declare-fun tp!159998 () Bool)

(declare-fun b_and!50773 () Bool)

(assert (=> start!46524 (= tp!159998 b_and!50773)))

(declare-fun b!513745 () Bool)

(declare-fun e!306983 () Bool)

(declare-fun tp!159996 () Bool)

(declare-fun mapRes!1855 () Bool)

(assert (=> b!513745 (= e!306983 (and tp!159996 mapRes!1855))))

(declare-fun condMapEmpty!1855 () Bool)

(declare-datatypes ((V!1415 0))(
  ( (V!1416 (val!1717 Int)) )
))
(declare-datatypes ((K!1317 0))(
  ( (K!1318 (val!1718 Int)) )
))
(declare-datatypes ((tuple2!5576 0))(
  ( (tuple2!5577 (_1!3004 K!1317) (_2!3004 V!1415)) )
))
(declare-datatypes ((List!4672 0))(
  ( (Nil!4662) (Cons!4662 (h!10059 tuple2!5576) (t!73194 List!4672)) )
))
(declare-datatypes ((array!1831 0))(
  ( (array!1832 (arr!846 (Array (_ BitVec 32) List!4672)) (size!3780 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!453 0))(
  ( (HashableExt!452 (__x!3334 Int)) )
))
(declare-datatypes ((array!1833 0))(
  ( (array!1834 (arr!847 (Array (_ BitVec 32) (_ BitVec 64))) (size!3781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!962 0))(
  ( (LongMapFixedSize!963 (defaultEntry!832 Int) (mask!1886 (_ BitVec 32)) (extraKeys!727 (_ BitVec 32)) (zeroValue!737 List!4672) (minValue!737 List!4672) (_size!1071 (_ BitVec 32)) (_keys!772 array!1833) (_values!759 array!1831) (_vacant!542 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1865 0))(
  ( (Cell!1866 (v!15679 LongMapFixedSize!962)) )
))
(declare-datatypes ((MutLongMap!481 0))(
  ( (LongMap!481 (underlying!1141 Cell!1865)) (MutLongMapExt!480 (__x!3335 Int)) )
))
(declare-datatypes ((Cell!1867 0))(
  ( (Cell!1868 (v!15680 MutLongMap!481)) )
))
(declare-datatypes ((MutableMap!453 0))(
  ( (MutableMapExt!452 (__x!3336 Int)) (HashMap!453 (underlying!1142 Cell!1867) (hashF!2329 Hashable!453) (_size!1072 (_ BitVec 32)) (defaultValue!602 Int)) )
))
(declare-fun hm!65 () MutableMap!453)

(declare-fun mapDefault!1855 () List!4672)

(assert (=> b!513745 (= condMapEmpty!1855 (= (arr!846 (_values!759 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) ((as const (Array (_ BitVec 32) List!4672)) mapDefault!1855)))))

(declare-fun b!513746 () Bool)

(declare-fun e!306984 () Bool)

(declare-fun k0!1740 () K!1317)

(get-info :version)

(declare-datatypes ((tuple2!5578 0))(
  ( (tuple2!5579 (_1!3005 Bool) (_2!3005 MutableMap!453)) )
))
(declare-fun remove!7 (MutableMap!453 K!1317) tuple2!5578)

(assert (=> b!513746 (= e!306984 (not ((_ is HashMap!453) (_2!3005 (remove!7 hm!65 k0!1740)))))))

(declare-datatypes ((ListMap!115 0))(
  ( (ListMap!116 (toList!369 List!4672)) )
))
(declare-fun lt!212505 () ListMap!115)

(declare-fun lt!212504 () ListMap!115)

(declare-fun -!4 (ListMap!115 K!1317) ListMap!115)

(assert (=> b!513746 (= lt!212505 (-!4 lt!212504 k0!1740))))

(declare-fun mapNonEmpty!1855 () Bool)

(declare-fun tp!159997 () Bool)

(declare-fun tp!159999 () Bool)

(assert (=> mapNonEmpty!1855 (= mapRes!1855 (and tp!159997 tp!159999))))

(declare-fun mapRest!1855 () (Array (_ BitVec 32) List!4672))

(declare-fun mapValue!1855 () List!4672)

(declare-fun mapKey!1855 () (_ BitVec 32))

(assert (=> mapNonEmpty!1855 (= (arr!846 (_values!759 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) (store mapRest!1855 mapKey!1855 mapValue!1855))))

(declare-fun b!513748 () Bool)

(declare-fun e!306978 () Bool)

(declare-fun e!306977 () Bool)

(assert (=> b!513748 (= e!306978 e!306977)))

(declare-fun b!513749 () Bool)

(declare-fun res!217827 () Bool)

(declare-fun e!306980 () Bool)

(assert (=> b!513749 (=> (not res!217827) (not e!306980))))

(declare-fun valid!435 (MutableMap!453) Bool)

(assert (=> b!513749 (= res!217827 (valid!435 hm!65))))

(declare-fun e!306982 () Bool)

(declare-fun e!306981 () Bool)

(assert (=> b!513750 (= e!306982 (and e!306981 tp!159993))))

(declare-fun b!513751 () Bool)

(declare-fun e!306979 () Bool)

(assert (=> b!513751 (= e!306977 e!306979)))

(declare-fun tp!159994 () Bool)

(declare-fun tp!159995 () Bool)

(declare-fun array_inv!607 (array!1833) Bool)

(declare-fun array_inv!608 (array!1831) Bool)

(assert (=> b!513752 (= e!306979 (and tp!160000 tp!159995 tp!159994 (array_inv!607 (_keys!772 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) (array_inv!608 (_values!759 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) e!306983))))

(declare-fun mapIsEmpty!1855 () Bool)

(assert (=> mapIsEmpty!1855 mapRes!1855))

(declare-fun b!513753 () Bool)

(assert (=> b!513753 (= e!306980 e!306984)))

(declare-fun res!217828 () Bool)

(assert (=> b!513753 (=> (not res!217828) (not e!306984))))

(declare-fun p!6060 () Int)

(declare-fun forall!1354 (List!4672 Int) Bool)

(assert (=> b!513753 (= res!217828 (forall!1354 (toList!369 lt!212504) p!6060))))

(declare-fun map!970 (MutableMap!453) ListMap!115)

(assert (=> b!513753 (= lt!212504 (map!970 hm!65))))

(declare-fun res!217826 () Bool)

(assert (=> start!46524 (=> (not res!217826) (not e!306980))))

(assert (=> start!46524 (= res!217826 ((_ is HashMap!453) hm!65))))

(assert (=> start!46524 e!306980))

(assert (=> start!46524 e!306982))

(assert (=> start!46524 tp!159998))

(declare-fun tp_is_empty!2523 () Bool)

(assert (=> start!46524 tp_is_empty!2523))

(declare-fun b!513747 () Bool)

(declare-fun lt!212506 () MutLongMap!481)

(assert (=> b!513747 (= e!306981 (and e!306978 ((_ is LongMap!481) lt!212506)))))

(assert (=> b!513747 (= lt!212506 (v!15680 (underlying!1142 hm!65)))))

(assert (= (and start!46524 res!217826) b!513749))

(assert (= (and b!513749 res!217827) b!513753))

(assert (= (and b!513753 res!217828) b!513746))

(assert (= (and b!513745 condMapEmpty!1855) mapIsEmpty!1855))

(assert (= (and b!513745 (not condMapEmpty!1855)) mapNonEmpty!1855))

(assert (= b!513752 b!513745))

(assert (= b!513751 b!513752))

(assert (= b!513748 b!513751))

(assert (= (and b!513747 ((_ is LongMap!481) (v!15680 (underlying!1142 hm!65)))) b!513748))

(assert (= b!513750 b!513747))

(assert (= (and start!46524 ((_ is HashMap!453) hm!65)) b!513750))

(declare-fun m!759773 () Bool)

(assert (=> b!513749 m!759773))

(declare-fun m!759775 () Bool)

(assert (=> b!513752 m!759775))

(declare-fun m!759777 () Bool)

(assert (=> b!513752 m!759777))

(declare-fun m!759779 () Bool)

(assert (=> b!513746 m!759779))

(declare-fun m!759781 () Bool)

(assert (=> b!513746 m!759781))

(declare-fun m!759783 () Bool)

(assert (=> b!513753 m!759783))

(declare-fun m!759785 () Bool)

(assert (=> b!513753 m!759785))

(declare-fun m!759787 () Bool)

(assert (=> mapNonEmpty!1855 m!759787))

(check-sat (not b!513753) b_and!50771 (not b_next!13345) (not b_next!13347) (not b!513749) b_and!50773 (not b!513752) (not b!513745) (not b!513746) tp_is_empty!2523 (not mapNonEmpty!1855) b_and!50769 (not b_next!13343))
(check-sat b_and!50771 (not b_next!13345) (not b_next!13347) b_and!50773 b_and!50769 (not b_next!13343))
(get-model)

(declare-fun d!184247 () Bool)

(assert (=> d!184247 (= (array_inv!607 (_keys!772 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) (bvsge (size!3781 (_keys!772 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!513752 d!184247))

(declare-fun d!184249 () Bool)

(assert (=> d!184249 (= (array_inv!608 (_values!759 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) (bvsge (size!3780 (_values!759 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!513752 d!184249))

(declare-fun bm!37324 () Bool)

(declare-fun call!37330 () ListMap!115)

(declare-datatypes ((Unit!8417 0))(
  ( (Unit!8418) )
))
(declare-datatypes ((tuple2!5580 0))(
  ( (tuple2!5581 (_1!3006 Unit!8417) (_2!3006 MutableMap!453)) )
))
(declare-fun lt!212581 () tuple2!5580)

(assert (=> bm!37324 (= call!37330 (map!970 (_2!3006 lt!212581)))))

(declare-fun b!513776 () Bool)

(declare-fun e!306999 () tuple2!5578)

(declare-datatypes ((tuple2!5582 0))(
  ( (tuple2!5583 (_1!3007 Bool) (_2!3007 MutLongMap!481)) )
))
(declare-fun lt!212578 () tuple2!5582)

(assert (=> b!513776 (= e!306999 (tuple2!5579 (_1!3007 lt!212578) (_2!3006 lt!212581)))))

(declare-fun lt!212583 () (_ BitVec 64))

(declare-fun hash!502 (Hashable!453 K!1317) (_ BitVec 64))

(assert (=> b!513776 (= lt!212583 (hash!502 (hashF!2329 hm!65) k0!1740))))

(declare-fun lt!212577 () List!4672)

(declare-fun apply!1171 (MutLongMap!481 (_ BitVec 64)) List!4672)

(assert (=> b!513776 (= lt!212577 (apply!1171 (v!15680 (underlying!1142 hm!65)) lt!212583))))

(declare-fun lambda!14292 () Int)

(declare-fun lt!212576 () Unit!8417)

(declare-datatypes ((tuple2!5584 0))(
  ( (tuple2!5585 (_1!3008 (_ BitVec 64)) (_2!3008 List!4672)) )
))
(declare-datatypes ((List!4673 0))(
  ( (Nil!4663) (Cons!4663 (h!10060 tuple2!5584) (t!73197 List!4673)) )
))
(declare-fun forallContained!434 (List!4673 Int tuple2!5584) Unit!8417)

(declare-datatypes ((ListLongMap!55 0))(
  ( (ListLongMap!56 (toList!370 List!4673)) )
))
(declare-fun map!971 (MutLongMap!481) ListLongMap!55)

(assert (=> b!513776 (= lt!212576 (forallContained!434 (toList!370 (map!971 (v!15680 (underlying!1142 hm!65)))) lambda!14292 (tuple2!5585 lt!212583 (apply!1171 (v!15680 (underlying!1142 hm!65)) lt!212583))))))

(declare-fun lt!212587 () ListMap!115)

(assert (=> b!513776 (= lt!212587 (map!970 hm!65))))

(declare-fun lt!212596 () ListLongMap!55)

(assert (=> b!513776 (= lt!212596 (map!971 (v!15680 (underlying!1142 hm!65))))))

(declare-fun lt!212590 () List!4672)

(declare-fun removePairForKey!3 (List!4672 K!1317) List!4672)

(assert (=> b!513776 (= lt!212590 (removePairForKey!3 lt!212577 k0!1740))))

(declare-fun update!42 (MutLongMap!481 (_ BitVec 64) List!4672) tuple2!5582)

(assert (=> b!513776 (= lt!212578 (update!42 (v!15680 (underlying!1142 hm!65)) lt!212583 lt!212590))))

(declare-fun lt!212574 () Bool)

(declare-fun Unit!8419 () Unit!8417)

(declare-fun Unit!8420 () Unit!8417)

(assert (=> b!513776 (= lt!212581 (ite (and (_1!3007 lt!212578) lt!212574) (tuple2!5581 Unit!8419 (HashMap!453 (Cell!1868 (_2!3007 lt!212578)) (hashF!2329 hm!65) (bvsub (_size!1072 hm!65) #b00000000000000000000000000000001) (defaultValue!602 hm!65))) (tuple2!5581 Unit!8420 (HashMap!453 (Cell!1868 (_2!3007 lt!212578)) (hashF!2329 hm!65) (_size!1072 hm!65) (defaultValue!602 hm!65)))))))

(declare-fun lt!212592 () Unit!8417)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!3 (List!4672 K!1317) Unit!8417)

(assert (=> b!513776 (= lt!212592 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!3 lt!212577 k0!1740))))

(declare-fun noDuplicateKeys!5 (List!4672) Bool)

(assert (=> b!513776 (noDuplicateKeys!5 (removePairForKey!3 lt!212577 k0!1740))))

(declare-fun lt!212567 () Unit!8417)

(assert (=> b!513776 (= lt!212567 lt!212592)))

(declare-fun c!99763 () Bool)

(assert (=> b!513776 (= c!99763 (_1!3007 lt!212578))))

(declare-fun lt!212569 () Unit!8417)

(declare-fun e!307002 () Unit!8417)

(assert (=> b!513776 (= lt!212569 e!307002)))

(declare-fun call!37333 () ListMap!115)

(declare-fun call!37332 () ListMap!115)

(declare-fun c!99762 () Bool)

(declare-fun bm!37325 () Bool)

(assert (=> bm!37325 (= call!37332 (-!4 (ite c!99762 call!37333 lt!212587) k0!1740))))

(declare-fun b!513777 () Bool)

(declare-fun eq!8 (ListMap!115 ListMap!115) Bool)

(assert (=> b!513777 (eq!8 call!37330 call!37332)))

(declare-fun lt!212584 () Unit!8417)

(declare-fun lt!212582 () Unit!8417)

(assert (=> b!513777 (= lt!212584 lt!212582)))

(declare-fun extractMap!9 (List!4673) ListMap!115)

(declare-fun +!12 (ListLongMap!55 tuple2!5584) ListLongMap!55)

(assert (=> b!513777 (eq!8 (extractMap!9 (toList!370 (+!12 lt!212596 (tuple2!5585 lt!212583 lt!212590)))) (-!4 call!37333 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!1 (ListLongMap!55 (_ BitVec 64) List!4672 K!1317 Hashable!453) Unit!8417)

(assert (=> b!513777 (= lt!212582 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!1 lt!212596 lt!212583 lt!212590 k0!1740 (hashF!2329 (_2!3006 lt!212581))))))

(declare-fun lt!212571 () Unit!8417)

(declare-fun Unit!8421 () Unit!8417)

(assert (=> b!513777 (= lt!212571 Unit!8421)))

(declare-fun contains!1057 (ListMap!115 K!1317) Bool)

(assert (=> b!513777 (contains!1057 lt!212587 k0!1740)))

(declare-fun lt!212594 () Unit!8417)

(declare-fun Unit!8422 () Unit!8417)

(assert (=> b!513777 (= lt!212594 Unit!8422)))

(declare-fun call!37331 () Bool)

(assert (=> b!513777 call!37331))

(declare-fun lt!212591 () Unit!8417)

(declare-fun Unit!8423 () Unit!8417)

(assert (=> b!513777 (= lt!212591 Unit!8423)))

(declare-fun call!37336 () ListLongMap!55)

(declare-fun allKeysSameHashInMap!16 (ListLongMap!55 Hashable!453) Bool)

(assert (=> b!513777 (allKeysSameHashInMap!16 call!37336 (hashF!2329 (_2!3006 lt!212581)))))

(declare-fun lt!212568 () Unit!8417)

(declare-fun Unit!8424 () Unit!8417)

(assert (=> b!513777 (= lt!212568 Unit!8424)))

(declare-fun forall!1355 (List!4673 Int) Bool)

(assert (=> b!513777 (forall!1355 (toList!370 call!37336) lambda!14292)))

(declare-fun lt!212573 () Unit!8417)

(declare-fun lt!212588 () Unit!8417)

(assert (=> b!513777 (= lt!212573 lt!212588)))

(declare-fun e!306998 () Bool)

(assert (=> b!513777 e!306998))

(declare-fun res!217837 () Bool)

(assert (=> b!513777 (=> (not res!217837) (not e!306998))))

(declare-fun lt!212579 () ListLongMap!55)

(assert (=> b!513777 (= res!217837 (forall!1355 (toList!370 lt!212579) lambda!14292))))

(assert (=> b!513777 (= lt!212579 (+!12 lt!212596 (tuple2!5585 lt!212583 lt!212590)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!3 (ListLongMap!55 (_ BitVec 64) List!4672 Hashable!453) Unit!8417)

(assert (=> b!513777 (= lt!212588 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!3 lt!212596 lt!212583 lt!212590 (hashF!2329 (_2!3006 lt!212581))))))

(declare-fun lt!212570 () Unit!8417)

(declare-fun lt!212585 () Unit!8417)

(assert (=> b!513777 (= lt!212570 lt!212585)))

(declare-fun allKeysSameHash!4 (List!4672 (_ BitVec 64) Hashable!453) Bool)

(assert (=> b!513777 (allKeysSameHash!4 (removePairForKey!3 lt!212577 k0!1740) lt!212583 (hashF!2329 (_2!3006 lt!212581)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!3 (List!4672 K!1317 (_ BitVec 64) Hashable!453) Unit!8417)

(assert (=> b!513777 (= lt!212585 (lemmaRemovePairForKeyPreservesHash!3 lt!212577 k0!1740 lt!212583 (hashF!2329 (_2!3006 lt!212581))))))

(declare-fun lt!212572 () Unit!8417)

(declare-fun lt!212575 () Unit!8417)

(assert (=> b!513777 (= lt!212572 lt!212575)))

(assert (=> b!513777 (allKeysSameHash!4 lt!212577 lt!212583 (hashF!2329 (_2!3006 lt!212581)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!3 (List!4673 (_ BitVec 64) List!4672 Hashable!453) Unit!8417)

(assert (=> b!513777 (= lt!212575 (lemmaInLongMapAllKeySameHashThenForTuple!3 (toList!370 lt!212596) lt!212583 lt!212577 (hashF!2329 (_2!3006 lt!212581))))))

(declare-fun Unit!8425 () Unit!8417)

(assert (=> b!513777 (= e!307002 Unit!8425)))

(declare-fun b!513778 () Bool)

(declare-fun e!307000 () Bool)

(declare-fun e!307001 () Bool)

(assert (=> b!513778 (= e!307000 e!307001)))

(declare-fun c!99765 () Bool)

(declare-fun lt!212593 () tuple2!5578)

(assert (=> b!513778 (= c!99765 (_1!3005 lt!212593))))

(declare-fun b!513779 () Bool)

(declare-fun e!306997 () ListMap!115)

(declare-fun call!37334 () ListMap!115)

(assert (=> b!513779 (= e!306997 call!37334)))

(declare-fun bm!37326 () Bool)

(declare-fun call!37329 () Bool)

(declare-fun call!37335 () ListMap!115)

(assert (=> bm!37326 (= call!37329 (eq!8 call!37335 e!306997))))

(declare-fun c!99764 () Bool)

(assert (=> bm!37326 (= c!99764 c!99765)))

(declare-fun b!513780 () Bool)

(assert (=> b!513780 (= e!306998 (allKeysSameHashInMap!16 lt!212579 (hashF!2329 (_2!3006 lt!212581))))))

(declare-fun b!513781 () Bool)

(assert (=> b!513781 (= call!37330 lt!212587)))

(declare-fun lt!212595 () Unit!8417)

(declare-fun Unit!8426 () Unit!8417)

(assert (=> b!513781 (= lt!212595 Unit!8426)))

(assert (=> b!513781 call!37331))

(declare-fun Unit!8427 () Unit!8417)

(assert (=> b!513781 (= e!307002 Unit!8427)))

(declare-fun b!513782 () Bool)

(assert (=> b!513782 (= e!307001 call!37329)))

(declare-fun bm!37328 () Bool)

(assert (=> bm!37328 (= call!37335 (map!970 (_2!3005 lt!212593)))))

(declare-fun b!513783 () Bool)

(assert (=> b!513783 (= e!306999 (tuple2!5579 true hm!65))))

(declare-fun lt!212580 () ListLongMap!55)

(assert (=> b!513783 (= lt!212580 call!37336)))

(declare-fun lt!212589 () Unit!8417)

(declare-fun lemmaRemoveNotContainedDoesNotChange!1 (ListLongMap!55 K!1317 Hashable!453) Unit!8417)

(assert (=> b!513783 (= lt!212589 (lemmaRemoveNotContainedDoesNotChange!1 lt!212580 k0!1740 (hashF!2329 hm!65)))))

(assert (=> b!513783 (= call!37333 call!37332)))

(declare-fun lt!212586 () Unit!8417)

(assert (=> b!513783 (= lt!212586 lt!212589)))

(declare-fun b!513784 () Bool)

(declare-fun res!217835 () Bool)

(assert (=> b!513784 (=> (not res!217835) (not e!307000))))

(assert (=> b!513784 (= res!217835 (valid!435 (_2!3005 lt!212593)))))

(declare-fun b!513785 () Bool)

(assert (=> b!513785 (= e!307001 call!37329)))

(declare-fun bm!37329 () Bool)

(assert (=> bm!37329 (= call!37333 (extractMap!9 (ite c!99762 (toList!370 lt!212580) (toList!370 lt!212596))))))

(declare-fun b!513786 () Bool)

(assert (=> b!513786 (= e!306997 (-!4 call!37334 k0!1740))))

(declare-fun bm!37330 () Bool)

(assert (=> bm!37330 (= call!37336 (map!971 (ite c!99762 (v!15680 (underlying!1142 hm!65)) (v!15680 (underlying!1142 (_2!3006 lt!212581))))))))

(declare-fun bm!37331 () Bool)

(assert (=> bm!37331 (= call!37331 (valid!435 (_2!3006 lt!212581)))))

(declare-fun d!184251 () Bool)

(assert (=> d!184251 e!307000))

(declare-fun res!217836 () Bool)

(assert (=> d!184251 (=> (not res!217836) (not e!307000))))

(assert (=> d!184251 (= res!217836 ((_ is HashMap!453) (_2!3005 lt!212593)))))

(assert (=> d!184251 (= lt!212593 e!306999)))

(assert (=> d!184251 (= c!99762 (not lt!212574))))

(declare-fun contains!1058 (MutableMap!453 K!1317) Bool)

(assert (=> d!184251 (= lt!212574 (contains!1058 hm!65 k0!1740))))

(assert (=> d!184251 (valid!435 hm!65)))

(assert (=> d!184251 (= (remove!7 hm!65 k0!1740) lt!212593)))

(declare-fun bm!37327 () Bool)

(assert (=> bm!37327 (= call!37334 (map!970 hm!65))))

(assert (= (and d!184251 c!99762) b!513783))

(assert (= (and d!184251 (not c!99762)) b!513776))

(assert (= (and b!513776 c!99763) b!513777))

(assert (= (and b!513776 (not c!99763)) b!513781))

(assert (= (and b!513777 res!217837) b!513780))

(assert (= (or b!513777 b!513781) bm!37331))

(assert (= (or b!513777 b!513781) bm!37324))

(assert (= (or b!513783 b!513777) bm!37330))

(assert (= (or b!513783 b!513777) bm!37329))

(assert (= (or b!513783 b!513777) bm!37325))

(assert (= (and d!184251 res!217836) b!513784))

(assert (= (and b!513784 res!217835) b!513778))

(assert (= (and b!513778 c!99765) b!513782))

(assert (= (and b!513778 (not c!99765)) b!513785))

(assert (= (or b!513782 b!513785) bm!37327))

(assert (= (or b!513782 b!513785) bm!37328))

(assert (= (or b!513782 b!513785) bm!37326))

(assert (= (and bm!37326 c!99764) b!513786))

(assert (= (and bm!37326 (not c!99764)) b!513779))

(declare-fun m!759789 () Bool)

(assert (=> b!513777 m!759789))

(declare-fun m!759791 () Bool)

(assert (=> b!513777 m!759791))

(declare-fun m!759793 () Bool)

(assert (=> b!513777 m!759793))

(declare-fun m!759795 () Bool)

(assert (=> b!513777 m!759795))

(declare-fun m!759797 () Bool)

(assert (=> b!513777 m!759797))

(declare-fun m!759799 () Bool)

(assert (=> b!513777 m!759799))

(declare-fun m!759801 () Bool)

(assert (=> b!513777 m!759801))

(declare-fun m!759803 () Bool)

(assert (=> b!513777 m!759803))

(declare-fun m!759805 () Bool)

(assert (=> b!513777 m!759805))

(declare-fun m!759807 () Bool)

(assert (=> b!513777 m!759807))

(assert (=> b!513777 m!759791))

(declare-fun m!759809 () Bool)

(assert (=> b!513777 m!759809))

(assert (=> b!513777 m!759799))

(declare-fun m!759811 () Bool)

(assert (=> b!513777 m!759811))

(assert (=> b!513777 m!759809))

(declare-fun m!759813 () Bool)

(assert (=> b!513777 m!759813))

(declare-fun m!759815 () Bool)

(assert (=> b!513777 m!759815))

(declare-fun m!759817 () Bool)

(assert (=> b!513777 m!759817))

(declare-fun m!759819 () Bool)

(assert (=> b!513777 m!759819))

(declare-fun m!759821 () Bool)

(assert (=> bm!37331 m!759821))

(declare-fun m!759823 () Bool)

(assert (=> b!513776 m!759823))

(declare-fun m!759825 () Bool)

(assert (=> b!513776 m!759825))

(declare-fun m!759827 () Bool)

(assert (=> b!513776 m!759827))

(declare-fun m!759829 () Bool)

(assert (=> b!513776 m!759829))

(declare-fun m!759831 () Bool)

(assert (=> b!513776 m!759831))

(declare-fun m!759833 () Bool)

(assert (=> b!513776 m!759833))

(assert (=> b!513776 m!759791))

(assert (=> b!513776 m!759785))

(assert (=> b!513776 m!759791))

(declare-fun m!759835 () Bool)

(assert (=> b!513776 m!759835))

(declare-fun m!759837 () Bool)

(assert (=> b!513786 m!759837))

(declare-fun m!759839 () Bool)

(assert (=> b!513784 m!759839))

(assert (=> bm!37327 m!759785))

(declare-fun m!759841 () Bool)

(assert (=> bm!37330 m!759841))

(declare-fun m!759843 () Bool)

(assert (=> d!184251 m!759843))

(assert (=> d!184251 m!759773))

(declare-fun m!759845 () Bool)

(assert (=> bm!37325 m!759845))

(declare-fun m!759847 () Bool)

(assert (=> bm!37324 m!759847))

(declare-fun m!759849 () Bool)

(assert (=> bm!37328 m!759849))

(declare-fun m!759851 () Bool)

(assert (=> bm!37326 m!759851))

(declare-fun m!759853 () Bool)

(assert (=> b!513780 m!759853))

(declare-fun m!759855 () Bool)

(assert (=> b!513783 m!759855))

(declare-fun m!759857 () Bool)

(assert (=> bm!37329 m!759857))

(assert (=> b!513746 d!184251))

(declare-fun d!184253 () Bool)

(declare-fun e!307005 () Bool)

(assert (=> d!184253 e!307005))

(declare-fun res!217840 () Bool)

(assert (=> d!184253 (=> (not res!217840) (not e!307005))))

(declare-fun lt!212599 () ListMap!115)

(assert (=> d!184253 (= res!217840 (not (contains!1057 lt!212599 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!1 (List!4672 K!1317) List!4672)

(assert (=> d!184253 (= lt!212599 (ListMap!116 (removePresrvNoDuplicatedKeys!1 (toList!369 lt!212504) k0!1740)))))

(assert (=> d!184253 (= (-!4 lt!212504 k0!1740) lt!212599)))

(declare-fun b!513789 () Bool)

(declare-datatypes ((List!4674 0))(
  ( (Nil!4664) (Cons!4664 (h!10061 K!1317) (t!73198 List!4674)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!808 (List!4674) (InoxSet K!1317))

(declare-fun keys!1802 (ListMap!115) List!4674)

(assert (=> b!513789 (= e!307005 (= ((_ map and) (content!808 (keys!1802 lt!212504)) ((_ map not) (store ((as const (Array K!1317 Bool)) false) k0!1740 true))) (content!808 (keys!1802 lt!212599))))))

(assert (= (and d!184253 res!217840) b!513789))

(declare-fun m!759859 () Bool)

(assert (=> d!184253 m!759859))

(declare-fun m!759861 () Bool)

(assert (=> d!184253 m!759861))

(declare-fun m!759863 () Bool)

(assert (=> b!513789 m!759863))

(declare-fun m!759865 () Bool)

(assert (=> b!513789 m!759865))

(declare-fun m!759867 () Bool)

(assert (=> b!513789 m!759867))

(declare-fun m!759869 () Bool)

(assert (=> b!513789 m!759869))

(assert (=> b!513789 m!759863))

(assert (=> b!513789 m!759867))

(declare-fun m!759871 () Bool)

(assert (=> b!513789 m!759871))

(assert (=> b!513746 d!184253))

(declare-fun d!184255 () Bool)

(declare-fun res!217845 () Bool)

(declare-fun e!307010 () Bool)

(assert (=> d!184255 (=> res!217845 e!307010)))

(assert (=> d!184255 (= res!217845 ((_ is Nil!4662) (toList!369 lt!212504)))))

(assert (=> d!184255 (= (forall!1354 (toList!369 lt!212504) p!6060) e!307010)))

(declare-fun b!513794 () Bool)

(declare-fun e!307011 () Bool)

(assert (=> b!513794 (= e!307010 e!307011)))

(declare-fun res!217846 () Bool)

(assert (=> b!513794 (=> (not res!217846) (not e!307011))))

(declare-fun dynLambda!2964 (Int tuple2!5576) Bool)

(assert (=> b!513794 (= res!217846 (dynLambda!2964 p!6060 (h!10059 (toList!369 lt!212504))))))

(declare-fun b!513795 () Bool)

(assert (=> b!513795 (= e!307011 (forall!1354 (t!73194 (toList!369 lt!212504)) p!6060))))

(assert (= (and d!184255 (not res!217845)) b!513794))

(assert (= (and b!513794 res!217846) b!513795))

(declare-fun b_lambda!19965 () Bool)

(assert (=> (not b_lambda!19965) (not b!513794)))

(declare-fun t!73196 () Bool)

(declare-fun tb!47121 () Bool)

(assert (=> (and start!46524 (= p!6060 p!6060) t!73196) tb!47121))

(declare-fun result!52128 () Bool)

(assert (=> tb!47121 (= result!52128 true)))

(assert (=> b!513794 t!73196))

(declare-fun b_and!50775 () Bool)

(assert (= b_and!50773 (and (=> t!73196 result!52128) b_and!50775)))

(declare-fun m!759873 () Bool)

(assert (=> b!513794 m!759873))

(declare-fun m!759875 () Bool)

(assert (=> b!513795 m!759875))

(assert (=> b!513753 d!184255))

(declare-fun d!184257 () Bool)

(declare-fun lt!212602 () ListMap!115)

(declare-fun invariantList!41 (List!4672) Bool)

(assert (=> d!184257 (invariantList!41 (toList!369 lt!212602))))

(assert (=> d!184257 (= lt!212602 (extractMap!9 (toList!370 (map!971 (v!15680 (underlying!1142 hm!65))))))))

(assert (=> d!184257 (valid!435 hm!65)))

(assert (=> d!184257 (= (map!970 hm!65) lt!212602)))

(declare-fun bs!59399 () Bool)

(assert (= bs!59399 d!184257))

(declare-fun m!759877 () Bool)

(assert (=> bs!59399 m!759877))

(assert (=> bs!59399 m!759823))

(declare-fun m!759879 () Bool)

(assert (=> bs!59399 m!759879))

(assert (=> bs!59399 m!759773))

(assert (=> b!513753 d!184257))

(declare-fun bs!59400 () Bool)

(declare-fun b!513800 () Bool)

(assert (= bs!59400 (and b!513800 b!513776)))

(declare-fun lambda!14295 () Int)

(assert (=> bs!59400 (= lambda!14295 lambda!14292)))

(declare-fun d!184259 () Bool)

(declare-fun res!217851 () Bool)

(declare-fun e!307014 () Bool)

(assert (=> d!184259 (=> (not res!217851) (not e!307014))))

(declare-fun valid!436 (MutLongMap!481) Bool)

(assert (=> d!184259 (= res!217851 (valid!436 (v!15680 (underlying!1142 hm!65))))))

(assert (=> d!184259 (= (valid!435 hm!65) e!307014)))

(declare-fun res!217852 () Bool)

(assert (=> b!513800 (=> (not res!217852) (not e!307014))))

(assert (=> b!513800 (= res!217852 (forall!1355 (toList!370 (map!971 (v!15680 (underlying!1142 hm!65)))) lambda!14295))))

(declare-fun b!513801 () Bool)

(assert (=> b!513801 (= e!307014 (allKeysSameHashInMap!16 (map!971 (v!15680 (underlying!1142 hm!65))) (hashF!2329 hm!65)))))

(assert (= (and d!184259 res!217851) b!513800))

(assert (= (and b!513800 res!217852) b!513801))

(declare-fun m!759881 () Bool)

(assert (=> d!184259 m!759881))

(assert (=> b!513800 m!759823))

(declare-fun m!759883 () Bool)

(assert (=> b!513800 m!759883))

(assert (=> b!513801 m!759823))

(assert (=> b!513801 m!759823))

(declare-fun m!759885 () Bool)

(assert (=> b!513801 m!759885))

(assert (=> b!513749 d!184259))

(declare-fun tp_is_empty!2525 () Bool)

(declare-fun b!513806 () Bool)

(declare-fun e!307017 () Bool)

(declare-fun tp!160003 () Bool)

(assert (=> b!513806 (= e!307017 (and tp_is_empty!2523 tp_is_empty!2525 tp!160003))))

(assert (=> b!513752 (= tp!159995 e!307017)))

(assert (= (and b!513752 ((_ is Cons!4662) (zeroValue!737 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65))))))) b!513806))

(declare-fun b!513807 () Bool)

(declare-fun e!307018 () Bool)

(declare-fun tp!160004 () Bool)

(assert (=> b!513807 (= e!307018 (and tp_is_empty!2523 tp_is_empty!2525 tp!160004))))

(assert (=> b!513752 (= tp!159994 e!307018)))

(assert (= (and b!513752 ((_ is Cons!4662) (minValue!737 (v!15679 (underlying!1141 (v!15680 (underlying!1142 hm!65))))))) b!513807))

(declare-fun mapIsEmpty!1858 () Bool)

(declare-fun mapRes!1858 () Bool)

(assert (=> mapIsEmpty!1858 mapRes!1858))

(declare-fun tp!160012 () Bool)

(declare-fun e!307023 () Bool)

(declare-fun b!513814 () Bool)

(assert (=> b!513814 (= e!307023 (and tp_is_empty!2523 tp_is_empty!2525 tp!160012))))

(declare-fun mapNonEmpty!1858 () Bool)

(declare-fun tp!160011 () Bool)

(assert (=> mapNonEmpty!1858 (= mapRes!1858 (and tp!160011 e!307023))))

(declare-fun mapValue!1858 () List!4672)

(declare-fun mapKey!1858 () (_ BitVec 32))

(declare-fun mapRest!1858 () (Array (_ BitVec 32) List!4672))

(assert (=> mapNonEmpty!1858 (= mapRest!1855 (store mapRest!1858 mapKey!1858 mapValue!1858))))

(declare-fun condMapEmpty!1858 () Bool)

(declare-fun mapDefault!1858 () List!4672)

(assert (=> mapNonEmpty!1855 (= condMapEmpty!1858 (= mapRest!1855 ((as const (Array (_ BitVec 32) List!4672)) mapDefault!1858)))))

(declare-fun e!307024 () Bool)

(assert (=> mapNonEmpty!1855 (= tp!159997 (and e!307024 mapRes!1858))))

(declare-fun tp!160013 () Bool)

(declare-fun b!513815 () Bool)

(assert (=> b!513815 (= e!307024 (and tp_is_empty!2523 tp_is_empty!2525 tp!160013))))

(assert (= (and mapNonEmpty!1855 condMapEmpty!1858) mapIsEmpty!1858))

(assert (= (and mapNonEmpty!1855 (not condMapEmpty!1858)) mapNonEmpty!1858))

(assert (= (and mapNonEmpty!1858 ((_ is Cons!4662) mapValue!1858)) b!513814))

(assert (= (and mapNonEmpty!1855 ((_ is Cons!4662) mapDefault!1858)) b!513815))

(declare-fun m!759887 () Bool)

(assert (=> mapNonEmpty!1858 m!759887))

(declare-fun b!513816 () Bool)

(declare-fun e!307025 () Bool)

(declare-fun tp!160014 () Bool)

(assert (=> b!513816 (= e!307025 (and tp_is_empty!2523 tp_is_empty!2525 tp!160014))))

(assert (=> mapNonEmpty!1855 (= tp!159999 e!307025)))

(assert (= (and mapNonEmpty!1855 ((_ is Cons!4662) mapValue!1855)) b!513816))

(declare-fun tp!160015 () Bool)

(declare-fun e!307026 () Bool)

(declare-fun b!513817 () Bool)

(assert (=> b!513817 (= e!307026 (and tp_is_empty!2523 tp_is_empty!2525 tp!160015))))

(assert (=> b!513745 (= tp!159996 e!307026)))

(assert (= (and b!513745 ((_ is Cons!4662) mapDefault!1855)) b!513817))

(declare-fun b_lambda!19967 () Bool)

(assert (= b_lambda!19965 (or (and start!46524 b_free!13347) b_lambda!19967)))

(check-sat (not b_next!13347) (not b!513776) (not b!513795) (not bm!37325) (not b!513784) b_and!50775 (not d!184251) (not b_lambda!19967) (not b!513817) (not b!513780) (not bm!37324) tp_is_empty!2525 (not bm!37326) (not b!513807) b_and!50771 (not bm!37330) (not b!513783) (not b_next!13345) (not b!513815) (not b!513777) (not d!184259) (not b!513814) (not b!513816) (not bm!37331) (not d!184257) (not mapNonEmpty!1858) b_and!50769 (not b_next!13343) (not b!513800) (not bm!37329) (not b!513786) (not b!513806) (not bm!37327) (not b!513801) (not b!513789) tp_is_empty!2523 (not d!184253) (not bm!37328))
(check-sat b_and!50771 (not b_next!13345) (not b_next!13347) b_and!50775 b_and!50769 (not b_next!13343))
