; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413980 () Bool)

(assert start!413980)

(declare-fun b!4308010 () Bool)

(declare-fun b_free!128499 () Bool)

(declare-fun b_next!129203 () Bool)

(assert (=> b!4308010 (= b_free!128499 (not b_next!129203))))

(declare-fun tp!1323878 () Bool)

(declare-fun b_and!339911 () Bool)

(assert (=> b!4308010 (= tp!1323878 b_and!339911)))

(declare-fun b!4308002 () Bool)

(declare-fun b_free!128501 () Bool)

(declare-fun b_next!129205 () Bool)

(assert (=> b!4308002 (= b_free!128501 (not b_next!129205))))

(declare-fun tp!1323883 () Bool)

(declare-fun b_and!339913 () Bool)

(assert (=> b!4308002 (= tp!1323883 b_and!339913)))

(declare-fun b!4307999 () Bool)

(declare-fun e!2678927 () Bool)

(declare-datatypes ((V!9536 0))(
  ( (V!9537 (val!15725 Int)) )
))
(declare-datatypes ((K!9334 0))(
  ( (K!9335 (val!15726 Int)) )
))
(declare-datatypes ((tuple2!46472 0))(
  ( (tuple2!46473 (_1!26515 K!9334) (_2!26515 V!9536)) )
))
(declare-datatypes ((List!48271 0))(
  ( (Nil!48147) (Cons!48147 (h!53580 tuple2!46472) (t!355068 List!48271)) )
))
(declare-datatypes ((tuple2!46474 0))(
  ( (tuple2!46475 (_1!26516 (_ BitVec 64)) (_2!26516 List!48271)) )
))
(declare-datatypes ((List!48272 0))(
  ( (Nil!48148) (Cons!48148 (h!53581 tuple2!46474) (t!355069 List!48272)) )
))
(declare-datatypes ((ListLongMap!975 0))(
  ( (ListLongMap!976 (toList!2362 List!48272)) )
))
(declare-fun lt!1528739 () ListLongMap!975)

(declare-datatypes ((array!16694 0))(
  ( (array!16695 (arr!7455 (Array (_ BitVec 32) (_ BitVec 64))) (size!35494 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4551 0))(
  ( (HashableExt!4550 (__x!29930 Int)) )
))
(declare-datatypes ((array!16696 0))(
  ( (array!16697 (arr!7456 (Array (_ BitVec 32) List!48271)) (size!35495 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9270 0))(
  ( (LongMapFixedSize!9271 (defaultEntry!5020 Int) (mask!13181 (_ BitVec 32)) (extraKeys!4884 (_ BitVec 32)) (zeroValue!4894 List!48271) (minValue!4894 List!48271) (_size!9313 (_ BitVec 32)) (_keys!4935 array!16694) (_values!4916 array!16696) (_vacant!4696 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18349 0))(
  ( (Cell!18350 (v!42252 LongMapFixedSize!9270)) )
))
(declare-datatypes ((MutLongMap!4635 0))(
  ( (LongMap!4635 (underlying!9499 Cell!18349)) (MutLongMapExt!4634 (__x!29931 Int)) )
))
(declare-datatypes ((Cell!18351 0))(
  ( (Cell!18352 (v!42253 MutLongMap!4635)) )
))
(declare-datatypes ((MutableMap!4541 0))(
  ( (MutableMapExt!4540 (__x!29932 Int)) (HashMap!4541 (underlying!9500 Cell!18351) (hashF!6661 Hashable!4551) (_size!9314 (_ BitVec 32)) (defaultValue!4712 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4541)

(declare-fun allKeysSameHashInMap!327 (ListLongMap!975 Hashable!4551) Bool)

(assert (=> b!4307999 (= e!2678927 (allKeysSameHashInMap!327 lt!1528739 (hashF!6661 thiss!42308)))))

(declare-fun b!4308000 () Bool)

(declare-fun e!2678924 () Bool)

(declare-fun e!2678929 () Bool)

(assert (=> b!4308000 (= e!2678924 e!2678929)))

(declare-fun res!1765699 () Bool)

(assert (=> b!4308000 (=> (not res!1765699) (not e!2678929))))

(declare-fun key!2048 () K!9334)

(declare-fun contains!10112 (MutableMap!4541 K!9334) Bool)

(assert (=> b!4308000 (= res!1765699 (not (contains!10112 thiss!42308 key!2048)))))

(declare-fun lt!1528746 () ListLongMap!975)

(declare-fun map!10129 (MutLongMap!4635) ListLongMap!975)

(assert (=> b!4308000 (= lt!1528746 (map!10129 (v!42253 (underlying!9500 thiss!42308))))))

(declare-datatypes ((ListMap!1643 0))(
  ( (ListMap!1644 (toList!2363 List!48271)) )
))
(declare-fun lt!1528750 () ListMap!1643)

(declare-fun map!10130 (MutableMap!4541) ListMap!1643)

(assert (=> b!4308000 (= lt!1528750 (map!10130 thiss!42308))))

(declare-fun res!1765702 () Bool)

(assert (=> start!413980 (=> (not res!1765702) (not e!2678924))))

(get-info :version)

(assert (=> start!413980 (= res!1765702 ((_ is HashMap!4541) thiss!42308))))

(assert (=> start!413980 e!2678924))

(declare-fun e!2678933 () Bool)

(assert (=> start!413980 e!2678933))

(declare-fun tp_is_empty!23661 () Bool)

(assert (=> start!413980 tp_is_empty!23661))

(declare-fun tp_is_empty!23663 () Bool)

(assert (=> start!413980 tp_is_empty!23663))

(declare-fun b!4308001 () Bool)

(declare-fun e!2678921 () Bool)

(declare-fun tp!1323879 () Bool)

(declare-fun mapRes!20725 () Bool)

(assert (=> b!4308001 (= e!2678921 (and tp!1323879 mapRes!20725))))

(declare-fun condMapEmpty!20725 () Bool)

(declare-fun mapDefault!20725 () List!48271)

(assert (=> b!4308001 (= condMapEmpty!20725 (= (arr!7456 (_values!4916 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48271)) mapDefault!20725)))))

(declare-fun e!2678930 () Bool)

(assert (=> b!4308002 (= e!2678933 (and e!2678930 tp!1323883))))

(declare-fun b!4308003 () Bool)

(declare-fun e!2678928 () Bool)

(declare-fun e!2678931 () Bool)

(assert (=> b!4308003 (= e!2678928 e!2678931)))

(declare-fun b!4308004 () Bool)

(declare-fun e!2678923 () Bool)

(declare-fun lt!1528748 () MutableMap!4541)

(declare-fun valid!3624 (MutableMap!4541) Bool)

(assert (=> b!4308004 (= e!2678923 (not (valid!3624 lt!1528748)))))

(declare-fun lt!1528742 () Bool)

(declare-fun lt!1528744 () Bool)

(assert (=> b!4308004 (and (= lt!1528742 lt!1528744) lt!1528744)))

(declare-fun lt!1528737 () ListMap!1643)

(declare-fun contains!10113 (ListMap!1643 K!9334) Bool)

(assert (=> b!4308004 (= lt!1528744 (contains!10113 lt!1528737 key!2048))))

(declare-fun lt!1528740 () ListMap!1643)

(assert (=> b!4308004 (= lt!1528742 (contains!10113 lt!1528740 key!2048))))

(declare-datatypes ((Unit!67198 0))(
  ( (Unit!67199) )
))
(declare-fun lt!1528751 () Unit!67198)

(declare-fun lemmaEquivalentThenSameContains!50 (ListMap!1643 ListMap!1643 K!9334) Unit!67198)

(assert (=> b!4308004 (= lt!1528751 (lemmaEquivalentThenSameContains!50 lt!1528740 lt!1528737 key!2048))))

(declare-fun eq!134 (ListMap!1643 ListMap!1643) Bool)

(assert (=> b!4308004 (eq!134 lt!1528740 lt!1528737)))

(declare-fun lt!1528756 () tuple2!46472)

(declare-fun +!248 (ListMap!1643 tuple2!46472) ListMap!1643)

(assert (=> b!4308004 (= lt!1528737 (+!248 lt!1528750 lt!1528756))))

(assert (=> b!4308004 (= lt!1528740 (map!10130 lt!1528748))))

(declare-fun e!2678920 () Bool)

(assert (=> b!4308004 e!2678920))

(declare-fun res!1765700 () Bool)

(assert (=> b!4308004 (=> (not res!1765700) (not e!2678920))))

(declare-fun lt!1528747 () ListLongMap!975)

(declare-fun lambda!132754 () Int)

(declare-fun forall!8716 (List!48272 Int) Bool)

(assert (=> b!4308004 (= res!1765700 (forall!8716 (toList!2362 lt!1528747) lambda!132754))))

(declare-datatypes ((tuple2!46476 0))(
  ( (tuple2!46477 (_1!26517 Bool) (_2!26517 MutLongMap!4635)) )
))
(declare-fun lt!1528736 () tuple2!46476)

(assert (=> b!4308004 (= lt!1528747 (map!10129 (_2!26517 lt!1528736)))))

(declare-fun extractMap!317 (List!48272) ListMap!1643)

(assert (=> b!4308004 (eq!134 (extractMap!317 (toList!2362 lt!1528739)) (+!248 (extractMap!317 (toList!2362 lt!1528746)) lt!1528756))))

(declare-fun lt!1528753 () Unit!67198)

(declare-fun lt!1528754 () (_ BitVec 64))

(declare-fun lt!1528752 () List!48271)

(declare-fun v!9179 () V!9536)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!51 (ListLongMap!975 (_ BitVec 64) List!48271 K!9334 V!9536 Hashable!4551) Unit!67198)

(assert (=> b!4308004 (= lt!1528753 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!51 lt!1528746 lt!1528754 lt!1528752 key!2048 v!9179 (hashF!6661 thiss!42308)))))

(assert (=> b!4308004 e!2678927))

(declare-fun res!1765704 () Bool)

(assert (=> b!4308004 (=> (not res!1765704) (not e!2678927))))

(assert (=> b!4308004 (= res!1765704 (forall!8716 (toList!2362 lt!1528739) lambda!132754))))

(declare-fun +!249 (ListLongMap!975 tuple2!46474) ListLongMap!975)

(assert (=> b!4308004 (= lt!1528739 (+!249 lt!1528746 (tuple2!46475 lt!1528754 lt!1528752)))))

(declare-fun lt!1528743 () Unit!67198)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!140 (ListLongMap!975 (_ BitVec 64) List!48271 Hashable!4551) Unit!67198)

(assert (=> b!4308004 (= lt!1528743 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!140 lt!1528746 lt!1528754 lt!1528752 (hashF!6661 thiss!42308)))))

(declare-fun lt!1528755 () Unit!67198)

(declare-fun e!2678932 () Unit!67198)

(assert (=> b!4308004 (= lt!1528755 e!2678932)))

(declare-fun c!732439 () Bool)

(declare-fun lt!1528745 () List!48271)

(declare-fun isEmpty!28077 (List!48271) Bool)

(assert (=> b!4308004 (= c!732439 (not (isEmpty!28077 lt!1528745)))))

(declare-fun b!4308005 () Bool)

(declare-fun e!2678925 () List!48271)

(declare-fun apply!10990 (MutLongMap!4635 (_ BitVec 64)) List!48271)

(assert (=> b!4308005 (= e!2678925 (apply!10990 (v!42253 (underlying!9500 thiss!42308)) lt!1528754))))

(declare-fun b!4308006 () Bool)

(assert (=> b!4308006 (= e!2678925 Nil!48147)))

(declare-fun b!4308007 () Bool)

(declare-fun lt!1528749 () MutLongMap!4635)

(assert (=> b!4308007 (= e!2678930 (and e!2678928 ((_ is LongMap!4635) lt!1528749)))))

(assert (=> b!4308007 (= lt!1528749 (v!42253 (underlying!9500 thiss!42308)))))

(declare-fun b!4308008 () Bool)

(declare-fun res!1765703 () Bool)

(assert (=> b!4308008 (=> (not res!1765703) (not e!2678924))))

(assert (=> b!4308008 (= res!1765703 (valid!3624 thiss!42308))))

(declare-fun b!4308009 () Bool)

(declare-fun Unit!67200 () Unit!67198)

(assert (=> b!4308009 (= e!2678932 Unit!67200)))

(declare-fun tp!1323884 () Bool)

(declare-fun e!2678926 () Bool)

(declare-fun tp!1323880 () Bool)

(declare-fun array_inv!5347 (array!16694) Bool)

(declare-fun array_inv!5348 (array!16696) Bool)

(assert (=> b!4308010 (= e!2678926 (and tp!1323878 tp!1323884 tp!1323880 (array_inv!5347 (_keys!4935 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) (array_inv!5348 (_values!4916 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) e!2678921))))

(declare-fun b!4308011 () Bool)

(assert (=> b!4308011 (= e!2678929 e!2678923)))

(declare-fun res!1765701 () Bool)

(assert (=> b!4308011 (=> (not res!1765701) (not e!2678923))))

(assert (=> b!4308011 (= res!1765701 (_1!26517 lt!1528736))))

(assert (=> b!4308011 (= lt!1528748 (HashMap!4541 (Cell!18352 (_2!26517 lt!1528736)) (hashF!6661 thiss!42308) (_size!9314 thiss!42308) (defaultValue!4712 thiss!42308)))))

(declare-fun update!415 (MutLongMap!4635 (_ BitVec 64) List!48271) tuple2!46476)

(assert (=> b!4308011 (= lt!1528736 (update!415 (v!42253 (underlying!9500 thiss!42308)) lt!1528754 lt!1528752))))

(assert (=> b!4308011 (= lt!1528752 (Cons!48147 lt!1528756 lt!1528745))))

(assert (=> b!4308011 (= lt!1528756 (tuple2!46473 key!2048 v!9179))))

(assert (=> b!4308011 (= lt!1528745 e!2678925)))

(declare-fun c!732440 () Bool)

(declare-fun contains!10114 (MutLongMap!4635 (_ BitVec 64)) Bool)

(assert (=> b!4308011 (= c!732440 (contains!10114 (v!42253 (underlying!9500 thiss!42308)) lt!1528754))))

(declare-fun hash!979 (Hashable!4551 K!9334) (_ BitVec 64))

(assert (=> b!4308011 (= lt!1528754 (hash!979 (hashF!6661 thiss!42308) key!2048))))

(declare-fun b!4308012 () Bool)

(assert (=> b!4308012 (= e!2678920 (allKeysSameHashInMap!327 lt!1528747 (hashF!6661 thiss!42308)))))

(declare-fun b!4308013 () Bool)

(declare-fun lt!1528738 () Unit!67198)

(assert (=> b!4308013 (= e!2678932 lt!1528738)))

(declare-fun lt!1528741 () Unit!67198)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!164 (List!48272 (_ BitVec 64) List!48271 Hashable!4551) Unit!67198)

(assert (=> b!4308013 (= lt!1528741 (lemmaInLongMapAllKeySameHashThenForTuple!164 (toList!2362 lt!1528746) lt!1528754 lt!1528745 (hashF!6661 thiss!42308)))))

(declare-fun allKeysSameHash!174 (List!48271 (_ BitVec 64) Hashable!4551) Bool)

(assert (=> b!4308013 (allKeysSameHash!174 lt!1528745 lt!1528754 (hashF!6661 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!158 (List!48271 K!9334 (_ BitVec 64) Hashable!4551) Unit!67198)

(assert (=> b!4308013 (= lt!1528738 (lemmaRemovePairForKeyPreservesHash!158 lt!1528745 key!2048 lt!1528754 (hashF!6661 thiss!42308)))))

(declare-fun removePairForKey!198 (List!48271 K!9334) List!48271)

(assert (=> b!4308013 (allKeysSameHash!174 (removePairForKey!198 lt!1528745 key!2048) lt!1528754 (hashF!6661 thiss!42308))))

(declare-fun mapIsEmpty!20725 () Bool)

(assert (=> mapIsEmpty!20725 mapRes!20725))

(declare-fun mapNonEmpty!20725 () Bool)

(declare-fun tp!1323882 () Bool)

(declare-fun tp!1323881 () Bool)

(assert (=> mapNonEmpty!20725 (= mapRes!20725 (and tp!1323882 tp!1323881))))

(declare-fun mapRest!20725 () (Array (_ BitVec 32) List!48271))

(declare-fun mapKey!20725 () (_ BitVec 32))

(declare-fun mapValue!20725 () List!48271)

(assert (=> mapNonEmpty!20725 (= (arr!7456 (_values!4916 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) (store mapRest!20725 mapKey!20725 mapValue!20725))))

(declare-fun b!4308014 () Bool)

(assert (=> b!4308014 (= e!2678931 e!2678926)))

(assert (= (and start!413980 res!1765702) b!4308008))

(assert (= (and b!4308008 res!1765703) b!4308000))

(assert (= (and b!4308000 res!1765699) b!4308011))

(assert (= (and b!4308011 c!732440) b!4308005))

(assert (= (and b!4308011 (not c!732440)) b!4308006))

(assert (= (and b!4308011 res!1765701) b!4308004))

(assert (= (and b!4308004 c!732439) b!4308013))

(assert (= (and b!4308004 (not c!732439)) b!4308009))

(assert (= (and b!4308004 res!1765704) b!4307999))

(assert (= (and b!4308004 res!1765700) b!4308012))

(assert (= (and b!4308001 condMapEmpty!20725) mapIsEmpty!20725))

(assert (= (and b!4308001 (not condMapEmpty!20725)) mapNonEmpty!20725))

(assert (= b!4308010 b!4308001))

(assert (= b!4308014 b!4308010))

(assert (= b!4308003 b!4308014))

(assert (= (and b!4308007 ((_ is LongMap!4635) (v!42253 (underlying!9500 thiss!42308)))) b!4308003))

(assert (= b!4308002 b!4308007))

(assert (= (and start!413980 ((_ is HashMap!4541) thiss!42308)) b!4308002))

(declare-fun m!4901095 () Bool)

(assert (=> b!4308005 m!4901095))

(declare-fun m!4901097 () Bool)

(assert (=> b!4308008 m!4901097))

(declare-fun m!4901099 () Bool)

(assert (=> b!4308011 m!4901099))

(declare-fun m!4901101 () Bool)

(assert (=> b!4308011 m!4901101))

(declare-fun m!4901103 () Bool)

(assert (=> b!4308011 m!4901103))

(declare-fun m!4901105 () Bool)

(assert (=> b!4308004 m!4901105))

(declare-fun m!4901107 () Bool)

(assert (=> b!4308004 m!4901107))

(declare-fun m!4901109 () Bool)

(assert (=> b!4308004 m!4901109))

(declare-fun m!4901111 () Bool)

(assert (=> b!4308004 m!4901111))

(declare-fun m!4901113 () Bool)

(assert (=> b!4308004 m!4901113))

(assert (=> b!4308004 m!4901109))

(declare-fun m!4901115 () Bool)

(assert (=> b!4308004 m!4901115))

(declare-fun m!4901117 () Bool)

(assert (=> b!4308004 m!4901117))

(declare-fun m!4901119 () Bool)

(assert (=> b!4308004 m!4901119))

(assert (=> b!4308004 m!4901111))

(declare-fun m!4901121 () Bool)

(assert (=> b!4308004 m!4901121))

(declare-fun m!4901123 () Bool)

(assert (=> b!4308004 m!4901123))

(declare-fun m!4901125 () Bool)

(assert (=> b!4308004 m!4901125))

(declare-fun m!4901127 () Bool)

(assert (=> b!4308004 m!4901127))

(assert (=> b!4308004 m!4901119))

(declare-fun m!4901129 () Bool)

(assert (=> b!4308004 m!4901129))

(declare-fun m!4901131 () Bool)

(assert (=> b!4308004 m!4901131))

(declare-fun m!4901133 () Bool)

(assert (=> b!4308004 m!4901133))

(declare-fun m!4901135 () Bool)

(assert (=> b!4308004 m!4901135))

(declare-fun m!4901137 () Bool)

(assert (=> b!4308004 m!4901137))

(declare-fun m!4901139 () Bool)

(assert (=> b!4308004 m!4901139))

(declare-fun m!4901141 () Bool)

(assert (=> b!4307999 m!4901141))

(declare-fun m!4901143 () Bool)

(assert (=> b!4308012 m!4901143))

(declare-fun m!4901145 () Bool)

(assert (=> b!4308013 m!4901145))

(declare-fun m!4901147 () Bool)

(assert (=> b!4308013 m!4901147))

(assert (=> b!4308013 m!4901147))

(declare-fun m!4901149 () Bool)

(assert (=> b!4308013 m!4901149))

(declare-fun m!4901151 () Bool)

(assert (=> b!4308013 m!4901151))

(declare-fun m!4901153 () Bool)

(assert (=> b!4308013 m!4901153))

(declare-fun m!4901155 () Bool)

(assert (=> b!4308010 m!4901155))

(declare-fun m!4901157 () Bool)

(assert (=> b!4308010 m!4901157))

(declare-fun m!4901159 () Bool)

(assert (=> mapNonEmpty!20725 m!4901159))

(declare-fun m!4901161 () Bool)

(assert (=> b!4308000 m!4901161))

(declare-fun m!4901163 () Bool)

(assert (=> b!4308000 m!4901163))

(declare-fun m!4901165 () Bool)

(assert (=> b!4308000 m!4901165))

(check-sat (not b!4308011) (not b!4308008) tp_is_empty!23661 (not b!4308004) (not b!4308005) (not b_next!129203) tp_is_empty!23663 (not b!4308001) (not b!4308013) (not b_next!129205) b_and!339911 (not b!4308010) (not b!4307999) b_and!339913 (not mapNonEmpty!20725) (not b!4308012) (not b!4308000))
(check-sat b_and!339911 b_and!339913 (not b_next!129205) (not b_next!129203))
(get-model)

(declare-fun d!1267770 () Bool)

(declare-fun e!2678936 () Bool)

(assert (=> d!1267770 e!2678936))

(declare-fun res!1765710 () Bool)

(assert (=> d!1267770 (=> (not res!1765710) (not e!2678936))))

(declare-fun lt!1528765 () ListMap!1643)

(assert (=> d!1267770 (= res!1765710 (contains!10113 lt!1528765 (_1!26515 lt!1528756)))))

(declare-fun lt!1528768 () List!48271)

(assert (=> d!1267770 (= lt!1528765 (ListMap!1644 lt!1528768))))

(declare-fun lt!1528767 () Unit!67198)

(declare-fun lt!1528766 () Unit!67198)

(assert (=> d!1267770 (= lt!1528767 lt!1528766)))

(declare-datatypes ((Option!10219 0))(
  ( (None!10218) (Some!10218 (v!42258 V!9536)) )
))
(declare-fun getValueByKey!249 (List!48271 K!9334) Option!10219)

(assert (=> d!1267770 (= (getValueByKey!249 lt!1528768 (_1!26515 lt!1528756)) (Some!10218 (_2!26515 lt!1528756)))))

(declare-fun lemmaContainsTupThenGetReturnValue!72 (List!48271 K!9334 V!9536) Unit!67198)

(assert (=> d!1267770 (= lt!1528766 (lemmaContainsTupThenGetReturnValue!72 lt!1528768 (_1!26515 lt!1528756) (_2!26515 lt!1528756)))))

(declare-fun insertNoDuplicatedKeys!44 (List!48271 K!9334 V!9536) List!48271)

(assert (=> d!1267770 (= lt!1528768 (insertNoDuplicatedKeys!44 (toList!2363 (extractMap!317 (toList!2362 lt!1528746))) (_1!26515 lt!1528756) (_2!26515 lt!1528756)))))

(assert (=> d!1267770 (= (+!248 (extractMap!317 (toList!2362 lt!1528746)) lt!1528756) lt!1528765)))

(declare-fun b!4308019 () Bool)

(declare-fun res!1765709 () Bool)

(assert (=> b!4308019 (=> (not res!1765709) (not e!2678936))))

(assert (=> b!4308019 (= res!1765709 (= (getValueByKey!249 (toList!2363 lt!1528765) (_1!26515 lt!1528756)) (Some!10218 (_2!26515 lt!1528756))))))

(declare-fun b!4308020 () Bool)

(declare-fun contains!10115 (List!48271 tuple2!46472) Bool)

(assert (=> b!4308020 (= e!2678936 (contains!10115 (toList!2363 lt!1528765) lt!1528756))))

(assert (= (and d!1267770 res!1765710) b!4308019))

(assert (= (and b!4308019 res!1765709) b!4308020))

(declare-fun m!4901167 () Bool)

(assert (=> d!1267770 m!4901167))

(declare-fun m!4901169 () Bool)

(assert (=> d!1267770 m!4901169))

(declare-fun m!4901171 () Bool)

(assert (=> d!1267770 m!4901171))

(declare-fun m!4901173 () Bool)

(assert (=> d!1267770 m!4901173))

(declare-fun m!4901175 () Bool)

(assert (=> b!4308019 m!4901175))

(declare-fun m!4901177 () Bool)

(assert (=> b!4308020 m!4901177))

(assert (=> b!4308004 d!1267770))

(declare-fun d!1267772 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7553 (List!48271) (InoxSet tuple2!46472))

(assert (=> d!1267772 (= (eq!134 lt!1528740 lt!1528737) (= (content!7553 (toList!2363 lt!1528740)) (content!7553 (toList!2363 lt!1528737))))))

(declare-fun bs!604880 () Bool)

(assert (= bs!604880 d!1267772))

(declare-fun m!4901179 () Bool)

(assert (=> bs!604880 m!4901179))

(declare-fun m!4901181 () Bool)

(assert (=> bs!604880 m!4901181))

(assert (=> b!4308004 d!1267772))

(declare-fun bs!604881 () Bool)

(declare-fun d!1267774 () Bool)

(assert (= bs!604881 (and d!1267774 b!4308004)))

(declare-fun lambda!132757 () Int)

(assert (=> bs!604881 (= lambda!132757 lambda!132754)))

(assert (=> d!1267774 (eq!134 (extractMap!317 (toList!2362 (+!249 lt!1528746 (tuple2!46475 lt!1528754 lt!1528752)))) (+!248 (extractMap!317 (toList!2362 lt!1528746)) (tuple2!46473 key!2048 v!9179)))))

(declare-fun lt!1528771 () Unit!67198)

(declare-fun choose!26243 (ListLongMap!975 (_ BitVec 64) List!48271 K!9334 V!9536 Hashable!4551) Unit!67198)

(assert (=> d!1267774 (= lt!1528771 (choose!26243 lt!1528746 lt!1528754 lt!1528752 key!2048 v!9179 (hashF!6661 thiss!42308)))))

(assert (=> d!1267774 (forall!8716 (toList!2362 lt!1528746) lambda!132757)))

(assert (=> d!1267774 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!51 lt!1528746 lt!1528754 lt!1528752 key!2048 v!9179 (hashF!6661 thiss!42308)) lt!1528771)))

(declare-fun bs!604882 () Bool)

(assert (= bs!604882 d!1267774))

(assert (=> bs!604882 m!4901105))

(declare-fun m!4901183 () Bool)

(assert (=> bs!604882 m!4901183))

(declare-fun m!4901185 () Bool)

(assert (=> bs!604882 m!4901185))

(declare-fun m!4901187 () Bool)

(assert (=> bs!604882 m!4901187))

(declare-fun m!4901189 () Bool)

(assert (=> bs!604882 m!4901189))

(assert (=> bs!604882 m!4901119))

(assert (=> bs!604882 m!4901119))

(assert (=> bs!604882 m!4901185))

(assert (=> bs!604882 m!4901183))

(declare-fun m!4901191 () Bool)

(assert (=> bs!604882 m!4901191))

(assert (=> b!4308004 d!1267774))

(declare-fun d!1267776 () Bool)

(declare-fun res!1765715 () Bool)

(declare-fun e!2678941 () Bool)

(assert (=> d!1267776 (=> res!1765715 e!2678941)))

(assert (=> d!1267776 (= res!1765715 ((_ is Nil!48148) (toList!2362 lt!1528739)))))

(assert (=> d!1267776 (= (forall!8716 (toList!2362 lt!1528739) lambda!132754) e!2678941)))

(declare-fun b!4308025 () Bool)

(declare-fun e!2678942 () Bool)

(assert (=> b!4308025 (= e!2678941 e!2678942)))

(declare-fun res!1765716 () Bool)

(assert (=> b!4308025 (=> (not res!1765716) (not e!2678942))))

(declare-fun dynLambda!20419 (Int tuple2!46474) Bool)

(assert (=> b!4308025 (= res!1765716 (dynLambda!20419 lambda!132754 (h!53581 (toList!2362 lt!1528739))))))

(declare-fun b!4308026 () Bool)

(assert (=> b!4308026 (= e!2678942 (forall!8716 (t!355069 (toList!2362 lt!1528739)) lambda!132754))))

(assert (= (and d!1267776 (not res!1765715)) b!4308025))

(assert (= (and b!4308025 res!1765716) b!4308026))

(declare-fun b_lambda!126571 () Bool)

(assert (=> (not b_lambda!126571) (not b!4308025)))

(declare-fun m!4901193 () Bool)

(assert (=> b!4308025 m!4901193))

(declare-fun m!4901195 () Bool)

(assert (=> b!4308026 m!4901195))

(assert (=> b!4308004 d!1267776))

(declare-fun d!1267778 () Bool)

(assert (=> d!1267778 (= (contains!10113 lt!1528740 key!2048) (contains!10113 lt!1528737 key!2048))))

(declare-fun lt!1528774 () Unit!67198)

(declare-fun choose!26244 (ListMap!1643 ListMap!1643 K!9334) Unit!67198)

(assert (=> d!1267778 (= lt!1528774 (choose!26244 lt!1528740 lt!1528737 key!2048))))

(assert (=> d!1267778 (eq!134 lt!1528740 lt!1528737)))

(assert (=> d!1267778 (= (lemmaEquivalentThenSameContains!50 lt!1528740 lt!1528737 key!2048) lt!1528774)))

(declare-fun bs!604883 () Bool)

(assert (= bs!604883 d!1267778))

(assert (=> bs!604883 m!4901133))

(assert (=> bs!604883 m!4901121))

(declare-fun m!4901197 () Bool)

(assert (=> bs!604883 m!4901197))

(assert (=> bs!604883 m!4901139))

(assert (=> b!4308004 d!1267778))

(declare-fun d!1267780 () Bool)

(declare-fun e!2678943 () Bool)

(assert (=> d!1267780 e!2678943))

(declare-fun res!1765718 () Bool)

(assert (=> d!1267780 (=> (not res!1765718) (not e!2678943))))

(declare-fun lt!1528775 () ListMap!1643)

(assert (=> d!1267780 (= res!1765718 (contains!10113 lt!1528775 (_1!26515 lt!1528756)))))

(declare-fun lt!1528778 () List!48271)

(assert (=> d!1267780 (= lt!1528775 (ListMap!1644 lt!1528778))))

(declare-fun lt!1528777 () Unit!67198)

(declare-fun lt!1528776 () Unit!67198)

(assert (=> d!1267780 (= lt!1528777 lt!1528776)))

(assert (=> d!1267780 (= (getValueByKey!249 lt!1528778 (_1!26515 lt!1528756)) (Some!10218 (_2!26515 lt!1528756)))))

(assert (=> d!1267780 (= lt!1528776 (lemmaContainsTupThenGetReturnValue!72 lt!1528778 (_1!26515 lt!1528756) (_2!26515 lt!1528756)))))

(assert (=> d!1267780 (= lt!1528778 (insertNoDuplicatedKeys!44 (toList!2363 lt!1528750) (_1!26515 lt!1528756) (_2!26515 lt!1528756)))))

(assert (=> d!1267780 (= (+!248 lt!1528750 lt!1528756) lt!1528775)))

(declare-fun b!4308027 () Bool)

(declare-fun res!1765717 () Bool)

(assert (=> b!4308027 (=> (not res!1765717) (not e!2678943))))

(assert (=> b!4308027 (= res!1765717 (= (getValueByKey!249 (toList!2363 lt!1528775) (_1!26515 lt!1528756)) (Some!10218 (_2!26515 lt!1528756))))))

(declare-fun b!4308028 () Bool)

(assert (=> b!4308028 (= e!2678943 (contains!10115 (toList!2363 lt!1528775) lt!1528756))))

(assert (= (and d!1267780 res!1765718) b!4308027))

(assert (= (and b!4308027 res!1765717) b!4308028))

(declare-fun m!4901199 () Bool)

(assert (=> d!1267780 m!4901199))

(declare-fun m!4901201 () Bool)

(assert (=> d!1267780 m!4901201))

(declare-fun m!4901203 () Bool)

(assert (=> d!1267780 m!4901203))

(declare-fun m!4901205 () Bool)

(assert (=> d!1267780 m!4901205))

(declare-fun m!4901207 () Bool)

(assert (=> b!4308027 m!4901207))

(declare-fun m!4901209 () Bool)

(assert (=> b!4308028 m!4901209))

(assert (=> b!4308004 d!1267780))

(declare-fun d!1267782 () Bool)

(declare-fun res!1765719 () Bool)

(declare-fun e!2678944 () Bool)

(assert (=> d!1267782 (=> res!1765719 e!2678944)))

(assert (=> d!1267782 (= res!1765719 ((_ is Nil!48148) (toList!2362 lt!1528747)))))

(assert (=> d!1267782 (= (forall!8716 (toList!2362 lt!1528747) lambda!132754) e!2678944)))

(declare-fun b!4308029 () Bool)

(declare-fun e!2678945 () Bool)

(assert (=> b!4308029 (= e!2678944 e!2678945)))

(declare-fun res!1765720 () Bool)

(assert (=> b!4308029 (=> (not res!1765720) (not e!2678945))))

(assert (=> b!4308029 (= res!1765720 (dynLambda!20419 lambda!132754 (h!53581 (toList!2362 lt!1528747))))))

(declare-fun b!4308030 () Bool)

(assert (=> b!4308030 (= e!2678945 (forall!8716 (t!355069 (toList!2362 lt!1528747)) lambda!132754))))

(assert (= (and d!1267782 (not res!1765719)) b!4308029))

(assert (= (and b!4308029 res!1765720) b!4308030))

(declare-fun b_lambda!126573 () Bool)

(assert (=> (not b_lambda!126573) (not b!4308029)))

(declare-fun m!4901211 () Bool)

(assert (=> b!4308029 m!4901211))

(declare-fun m!4901213 () Bool)

(assert (=> b!4308030 m!4901213))

(assert (=> b!4308004 d!1267782))

(declare-fun d!1267784 () Bool)

(declare-fun map!10131 (LongMapFixedSize!9270) ListLongMap!975)

(assert (=> d!1267784 (= (map!10129 (_2!26517 lt!1528736)) (map!10131 (v!42252 (underlying!9499 (_2!26517 lt!1528736)))))))

(declare-fun bs!604884 () Bool)

(assert (= bs!604884 d!1267784))

(declare-fun m!4901215 () Bool)

(assert (=> bs!604884 m!4901215))

(assert (=> b!4308004 d!1267784))

(declare-fun b!4308049 () Bool)

(declare-datatypes ((List!48273 0))(
  ( (Nil!48149) (Cons!48149 (h!53583 K!9334) (t!355072 List!48273)) )
))
(declare-fun e!2678958 () List!48273)

(declare-fun getKeysList!42 (List!48271) List!48273)

(assert (=> b!4308049 (= e!2678958 (getKeysList!42 (toList!2363 lt!1528737)))))

(declare-fun d!1267786 () Bool)

(declare-fun e!2678962 () Bool)

(assert (=> d!1267786 e!2678962))

(declare-fun res!1765727 () Bool)

(assert (=> d!1267786 (=> res!1765727 e!2678962)))

(declare-fun e!2678963 () Bool)

(assert (=> d!1267786 (= res!1765727 e!2678963)))

(declare-fun res!1765728 () Bool)

(assert (=> d!1267786 (=> (not res!1765728) (not e!2678963))))

(declare-fun lt!1528800 () Bool)

(assert (=> d!1267786 (= res!1765728 (not lt!1528800))))

(declare-fun lt!1528799 () Bool)

(assert (=> d!1267786 (= lt!1528800 lt!1528799)))

(declare-fun lt!1528798 () Unit!67198)

(declare-fun e!2678959 () Unit!67198)

(assert (=> d!1267786 (= lt!1528798 e!2678959)))

(declare-fun c!732448 () Bool)

(assert (=> d!1267786 (= c!732448 lt!1528799)))

(declare-fun containsKey!296 (List!48271 K!9334) Bool)

(assert (=> d!1267786 (= lt!1528799 (containsKey!296 (toList!2363 lt!1528737) key!2048))))

(assert (=> d!1267786 (= (contains!10113 lt!1528737 key!2048) lt!1528800)))

(declare-fun b!4308050 () Bool)

(declare-fun e!2678961 () Bool)

(declare-fun contains!10116 (List!48273 K!9334) Bool)

(declare-fun keys!16041 (ListMap!1643) List!48273)

(assert (=> b!4308050 (= e!2678961 (contains!10116 (keys!16041 lt!1528737) key!2048))))

(declare-fun b!4308051 () Bool)

(assert (=> b!4308051 (= e!2678958 (keys!16041 lt!1528737))))

(declare-fun b!4308052 () Bool)

(declare-fun lt!1528795 () Unit!67198)

(assert (=> b!4308052 (= e!2678959 lt!1528795)))

(declare-fun lt!1528801 () Unit!67198)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!169 (List!48271 K!9334) Unit!67198)

(assert (=> b!4308052 (= lt!1528801 (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!2363 lt!1528737) key!2048))))

(declare-fun isDefined!7521 (Option!10219) Bool)

(assert (=> b!4308052 (isDefined!7521 (getValueByKey!249 (toList!2363 lt!1528737) key!2048))))

(declare-fun lt!1528796 () Unit!67198)

(assert (=> b!4308052 (= lt!1528796 lt!1528801)))

(declare-fun lemmaInListThenGetKeysListContains!39 (List!48271 K!9334) Unit!67198)

(assert (=> b!4308052 (= lt!1528795 (lemmaInListThenGetKeysListContains!39 (toList!2363 lt!1528737) key!2048))))

(declare-fun call!297052 () Bool)

(assert (=> b!4308052 call!297052))

(declare-fun b!4308053 () Bool)

(declare-fun e!2678960 () Unit!67198)

(assert (=> b!4308053 (= e!2678959 e!2678960)))

(declare-fun c!732447 () Bool)

(assert (=> b!4308053 (= c!732447 call!297052)))

(declare-fun b!4308054 () Bool)

(assert (=> b!4308054 (= e!2678963 (not (contains!10116 (keys!16041 lt!1528737) key!2048)))))

(declare-fun b!4308055 () Bool)

(assert (=> b!4308055 false))

(declare-fun lt!1528797 () Unit!67198)

(declare-fun lt!1528802 () Unit!67198)

(assert (=> b!4308055 (= lt!1528797 lt!1528802)))

(assert (=> b!4308055 (containsKey!296 (toList!2363 lt!1528737) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!39 (List!48271 K!9334) Unit!67198)

(assert (=> b!4308055 (= lt!1528802 (lemmaInGetKeysListThenContainsKey!39 (toList!2363 lt!1528737) key!2048))))

(declare-fun Unit!67201 () Unit!67198)

(assert (=> b!4308055 (= e!2678960 Unit!67201)))

(declare-fun bm!297047 () Bool)

(assert (=> bm!297047 (= call!297052 (contains!10116 e!2678958 key!2048))))

(declare-fun c!732449 () Bool)

(assert (=> bm!297047 (= c!732449 c!732448)))

(declare-fun b!4308056 () Bool)

(assert (=> b!4308056 (= e!2678962 e!2678961)))

(declare-fun res!1765729 () Bool)

(assert (=> b!4308056 (=> (not res!1765729) (not e!2678961))))

(assert (=> b!4308056 (= res!1765729 (isDefined!7521 (getValueByKey!249 (toList!2363 lt!1528737) key!2048)))))

(declare-fun b!4308057 () Bool)

(declare-fun Unit!67202 () Unit!67198)

(assert (=> b!4308057 (= e!2678960 Unit!67202)))

(assert (= (and d!1267786 c!732448) b!4308052))

(assert (= (and d!1267786 (not c!732448)) b!4308053))

(assert (= (and b!4308053 c!732447) b!4308055))

(assert (= (and b!4308053 (not c!732447)) b!4308057))

(assert (= (or b!4308052 b!4308053) bm!297047))

(assert (= (and bm!297047 c!732449) b!4308049))

(assert (= (and bm!297047 (not c!732449)) b!4308051))

(assert (= (and d!1267786 res!1765728) b!4308054))

(assert (= (and d!1267786 (not res!1765727)) b!4308056))

(assert (= (and b!4308056 res!1765729) b!4308050))

(declare-fun m!4901217 () Bool)

(assert (=> b!4308055 m!4901217))

(declare-fun m!4901219 () Bool)

(assert (=> b!4308055 m!4901219))

(assert (=> d!1267786 m!4901217))

(declare-fun m!4901221 () Bool)

(assert (=> bm!297047 m!4901221))

(declare-fun m!4901223 () Bool)

(assert (=> b!4308051 m!4901223))

(assert (=> b!4308050 m!4901223))

(assert (=> b!4308050 m!4901223))

(declare-fun m!4901225 () Bool)

(assert (=> b!4308050 m!4901225))

(declare-fun m!4901227 () Bool)

(assert (=> b!4308056 m!4901227))

(assert (=> b!4308056 m!4901227))

(declare-fun m!4901229 () Bool)

(assert (=> b!4308056 m!4901229))

(assert (=> b!4308054 m!4901223))

(assert (=> b!4308054 m!4901223))

(assert (=> b!4308054 m!4901225))

(declare-fun m!4901231 () Bool)

(assert (=> b!4308052 m!4901231))

(assert (=> b!4308052 m!4901227))

(assert (=> b!4308052 m!4901227))

(assert (=> b!4308052 m!4901229))

(declare-fun m!4901233 () Bool)

(assert (=> b!4308052 m!4901233))

(declare-fun m!4901235 () Bool)

(assert (=> b!4308049 m!4901235))

(assert (=> b!4308004 d!1267786))

(declare-fun bs!604885 () Bool)

(declare-fun d!1267788 () Bool)

(assert (= bs!604885 (and d!1267788 b!4308004)))

(declare-fun lambda!132762 () Int)

(assert (=> bs!604885 (= lambda!132762 lambda!132754)))

(declare-fun bs!604886 () Bool)

(assert (= bs!604886 (and d!1267788 d!1267774)))

(assert (=> bs!604886 (= lambda!132762 lambda!132757)))

(declare-fun e!2678966 () Bool)

(assert (=> d!1267788 e!2678966))

(declare-fun res!1765732 () Bool)

(assert (=> d!1267788 (=> (not res!1765732) (not e!2678966))))

(declare-fun lt!1528808 () ListLongMap!975)

(assert (=> d!1267788 (= res!1765732 (forall!8716 (toList!2362 lt!1528808) lambda!132762))))

(assert (=> d!1267788 (= lt!1528808 (+!249 lt!1528746 (tuple2!46475 lt!1528754 lt!1528752)))))

(declare-fun lt!1528807 () Unit!67198)

(declare-fun choose!26245 (ListLongMap!975 (_ BitVec 64) List!48271 Hashable!4551) Unit!67198)

(assert (=> d!1267788 (= lt!1528807 (choose!26245 lt!1528746 lt!1528754 lt!1528752 (hashF!6661 thiss!42308)))))

(assert (=> d!1267788 (forall!8716 (toList!2362 lt!1528746) lambda!132762)))

(assert (=> d!1267788 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!140 lt!1528746 lt!1528754 lt!1528752 (hashF!6661 thiss!42308)) lt!1528807)))

(declare-fun b!4308060 () Bool)

(assert (=> b!4308060 (= e!2678966 (allKeysSameHashInMap!327 lt!1528808 (hashF!6661 thiss!42308)))))

(assert (= (and d!1267788 res!1765732) b!4308060))

(declare-fun m!4901237 () Bool)

(assert (=> d!1267788 m!4901237))

(assert (=> d!1267788 m!4901105))

(declare-fun m!4901239 () Bool)

(assert (=> d!1267788 m!4901239))

(declare-fun m!4901241 () Bool)

(assert (=> d!1267788 m!4901241))

(declare-fun m!4901243 () Bool)

(assert (=> b!4308060 m!4901243))

(assert (=> b!4308004 d!1267788))

(declare-fun bs!604887 () Bool)

(declare-fun d!1267790 () Bool)

(assert (= bs!604887 (and d!1267790 b!4308004)))

(declare-fun lambda!132765 () Int)

(assert (=> bs!604887 (= lambda!132765 lambda!132754)))

(declare-fun bs!604888 () Bool)

(assert (= bs!604888 (and d!1267790 d!1267774)))

(assert (=> bs!604888 (= lambda!132765 lambda!132757)))

(declare-fun bs!604889 () Bool)

(assert (= bs!604889 (and d!1267790 d!1267788)))

(assert (=> bs!604889 (= lambda!132765 lambda!132762)))

(declare-fun lt!1528811 () ListMap!1643)

(declare-fun invariantList!568 (List!48271) Bool)

(assert (=> d!1267790 (invariantList!568 (toList!2363 lt!1528811))))

(declare-fun e!2678969 () ListMap!1643)

(assert (=> d!1267790 (= lt!1528811 e!2678969)))

(declare-fun c!732452 () Bool)

(assert (=> d!1267790 (= c!732452 ((_ is Cons!48148) (toList!2362 lt!1528746)))))

(assert (=> d!1267790 (forall!8716 (toList!2362 lt!1528746) lambda!132765)))

(assert (=> d!1267790 (= (extractMap!317 (toList!2362 lt!1528746)) lt!1528811)))

(declare-fun b!4308065 () Bool)

(declare-fun addToMapMapFromBucket!36 (List!48271 ListMap!1643) ListMap!1643)

(assert (=> b!4308065 (= e!2678969 (addToMapMapFromBucket!36 (_2!26516 (h!53581 (toList!2362 lt!1528746))) (extractMap!317 (t!355069 (toList!2362 lt!1528746)))))))

(declare-fun b!4308066 () Bool)

(assert (=> b!4308066 (= e!2678969 (ListMap!1644 Nil!48147))))

(assert (= (and d!1267790 c!732452) b!4308065))

(assert (= (and d!1267790 (not c!732452)) b!4308066))

(declare-fun m!4901245 () Bool)

(assert (=> d!1267790 m!4901245))

(declare-fun m!4901247 () Bool)

(assert (=> d!1267790 m!4901247))

(declare-fun m!4901249 () Bool)

(assert (=> b!4308065 m!4901249))

(assert (=> b!4308065 m!4901249))

(declare-fun m!4901251 () Bool)

(assert (=> b!4308065 m!4901251))

(assert (=> b!4308004 d!1267790))

(declare-fun bs!604890 () Bool)

(declare-fun d!1267792 () Bool)

(assert (= bs!604890 (and d!1267792 b!4308004)))

(declare-fun lambda!132766 () Int)

(assert (=> bs!604890 (= lambda!132766 lambda!132754)))

(declare-fun bs!604891 () Bool)

(assert (= bs!604891 (and d!1267792 d!1267774)))

(assert (=> bs!604891 (= lambda!132766 lambda!132757)))

(declare-fun bs!604892 () Bool)

(assert (= bs!604892 (and d!1267792 d!1267788)))

(assert (=> bs!604892 (= lambda!132766 lambda!132762)))

(declare-fun bs!604893 () Bool)

(assert (= bs!604893 (and d!1267792 d!1267790)))

(assert (=> bs!604893 (= lambda!132766 lambda!132765)))

(declare-fun lt!1528812 () ListMap!1643)

(assert (=> d!1267792 (invariantList!568 (toList!2363 lt!1528812))))

(declare-fun e!2678970 () ListMap!1643)

(assert (=> d!1267792 (= lt!1528812 e!2678970)))

(declare-fun c!732453 () Bool)

(assert (=> d!1267792 (= c!732453 ((_ is Cons!48148) (toList!2362 lt!1528739)))))

(assert (=> d!1267792 (forall!8716 (toList!2362 lt!1528739) lambda!132766)))

(assert (=> d!1267792 (= (extractMap!317 (toList!2362 lt!1528739)) lt!1528812)))

(declare-fun b!4308067 () Bool)

(assert (=> b!4308067 (= e!2678970 (addToMapMapFromBucket!36 (_2!26516 (h!53581 (toList!2362 lt!1528739))) (extractMap!317 (t!355069 (toList!2362 lt!1528739)))))))

(declare-fun b!4308068 () Bool)

(assert (=> b!4308068 (= e!2678970 (ListMap!1644 Nil!48147))))

(assert (= (and d!1267792 c!732453) b!4308067))

(assert (= (and d!1267792 (not c!732453)) b!4308068))

(declare-fun m!4901253 () Bool)

(assert (=> d!1267792 m!4901253))

(declare-fun m!4901255 () Bool)

(assert (=> d!1267792 m!4901255))

(declare-fun m!4901257 () Bool)

(assert (=> b!4308067 m!4901257))

(assert (=> b!4308067 m!4901257))

(declare-fun m!4901259 () Bool)

(assert (=> b!4308067 m!4901259))

(assert (=> b!4308004 d!1267792))

(declare-fun d!1267794 () Bool)

(assert (=> d!1267794 (= (eq!134 (extractMap!317 (toList!2362 lt!1528739)) (+!248 (extractMap!317 (toList!2362 lt!1528746)) lt!1528756)) (= (content!7553 (toList!2363 (extractMap!317 (toList!2362 lt!1528739)))) (content!7553 (toList!2363 (+!248 (extractMap!317 (toList!2362 lt!1528746)) lt!1528756)))))))

(declare-fun bs!604894 () Bool)

(assert (= bs!604894 d!1267794))

(declare-fun m!4901261 () Bool)

(assert (=> bs!604894 m!4901261))

(declare-fun m!4901263 () Bool)

(assert (=> bs!604894 m!4901263))

(assert (=> b!4308004 d!1267794))

(declare-fun d!1267796 () Bool)

(assert (=> d!1267796 (= (isEmpty!28077 lt!1528745) ((_ is Nil!48147) lt!1528745))))

(assert (=> b!4308004 d!1267796))

(declare-fun d!1267798 () Bool)

(declare-fun lt!1528815 () ListMap!1643)

(assert (=> d!1267798 (invariantList!568 (toList!2363 lt!1528815))))

(assert (=> d!1267798 (= lt!1528815 (extractMap!317 (toList!2362 (map!10129 (v!42253 (underlying!9500 lt!1528748))))))))

(assert (=> d!1267798 (valid!3624 lt!1528748)))

(assert (=> d!1267798 (= (map!10130 lt!1528748) lt!1528815)))

(declare-fun bs!604895 () Bool)

(assert (= bs!604895 d!1267798))

(declare-fun m!4901265 () Bool)

(assert (=> bs!604895 m!4901265))

(declare-fun m!4901267 () Bool)

(assert (=> bs!604895 m!4901267))

(declare-fun m!4901269 () Bool)

(assert (=> bs!604895 m!4901269))

(assert (=> bs!604895 m!4901117))

(assert (=> b!4308004 d!1267798))

(declare-fun d!1267800 () Bool)

(declare-fun e!2678973 () Bool)

(assert (=> d!1267800 e!2678973))

(declare-fun res!1765737 () Bool)

(assert (=> d!1267800 (=> (not res!1765737) (not e!2678973))))

(declare-fun lt!1528824 () ListLongMap!975)

(declare-fun contains!10117 (ListLongMap!975 (_ BitVec 64)) Bool)

(assert (=> d!1267800 (= res!1765737 (contains!10117 lt!1528824 (_1!26516 (tuple2!46475 lt!1528754 lt!1528752))))))

(declare-fun lt!1528826 () List!48272)

(assert (=> d!1267800 (= lt!1528824 (ListLongMap!976 lt!1528826))))

(declare-fun lt!1528825 () Unit!67198)

(declare-fun lt!1528827 () Unit!67198)

(assert (=> d!1267800 (= lt!1528825 lt!1528827)))

(declare-datatypes ((Option!10220 0))(
  ( (None!10219) (Some!10219 (v!42259 List!48271)) )
))
(declare-fun getValueByKey!250 (List!48272 (_ BitVec 64)) Option!10220)

(assert (=> d!1267800 (= (getValueByKey!250 lt!1528826 (_1!26516 (tuple2!46475 lt!1528754 lt!1528752))) (Some!10219 (_2!26516 (tuple2!46475 lt!1528754 lt!1528752))))))

(declare-fun lemmaContainsTupThenGetReturnValue!73 (List!48272 (_ BitVec 64) List!48271) Unit!67198)

(assert (=> d!1267800 (= lt!1528827 (lemmaContainsTupThenGetReturnValue!73 lt!1528826 (_1!26516 (tuple2!46475 lt!1528754 lt!1528752)) (_2!26516 (tuple2!46475 lt!1528754 lt!1528752))))))

(declare-fun insertStrictlySorted!37 (List!48272 (_ BitVec 64) List!48271) List!48272)

(assert (=> d!1267800 (= lt!1528826 (insertStrictlySorted!37 (toList!2362 lt!1528746) (_1!26516 (tuple2!46475 lt!1528754 lt!1528752)) (_2!26516 (tuple2!46475 lt!1528754 lt!1528752))))))

(assert (=> d!1267800 (= (+!249 lt!1528746 (tuple2!46475 lt!1528754 lt!1528752)) lt!1528824)))

(declare-fun b!4308073 () Bool)

(declare-fun res!1765738 () Bool)

(assert (=> b!4308073 (=> (not res!1765738) (not e!2678973))))

(assert (=> b!4308073 (= res!1765738 (= (getValueByKey!250 (toList!2362 lt!1528824) (_1!26516 (tuple2!46475 lt!1528754 lt!1528752))) (Some!10219 (_2!26516 (tuple2!46475 lt!1528754 lt!1528752)))))))

(declare-fun b!4308074 () Bool)

(declare-fun contains!10118 (List!48272 tuple2!46474) Bool)

(assert (=> b!4308074 (= e!2678973 (contains!10118 (toList!2362 lt!1528824) (tuple2!46475 lt!1528754 lt!1528752)))))

(assert (= (and d!1267800 res!1765737) b!4308073))

(assert (= (and b!4308073 res!1765738) b!4308074))

(declare-fun m!4901271 () Bool)

(assert (=> d!1267800 m!4901271))

(declare-fun m!4901273 () Bool)

(assert (=> d!1267800 m!4901273))

(declare-fun m!4901275 () Bool)

(assert (=> d!1267800 m!4901275))

(declare-fun m!4901277 () Bool)

(assert (=> d!1267800 m!4901277))

(declare-fun m!4901279 () Bool)

(assert (=> b!4308073 m!4901279))

(declare-fun m!4901281 () Bool)

(assert (=> b!4308074 m!4901281))

(assert (=> b!4308004 d!1267800))

(declare-fun b!4308075 () Bool)

(declare-fun e!2678974 () List!48273)

(assert (=> b!4308075 (= e!2678974 (getKeysList!42 (toList!2363 lt!1528740)))))

(declare-fun d!1267802 () Bool)

(declare-fun e!2678978 () Bool)

(assert (=> d!1267802 e!2678978))

(declare-fun res!1765739 () Bool)

(assert (=> d!1267802 (=> res!1765739 e!2678978)))

(declare-fun e!2678979 () Bool)

(assert (=> d!1267802 (= res!1765739 e!2678979)))

(declare-fun res!1765740 () Bool)

(assert (=> d!1267802 (=> (not res!1765740) (not e!2678979))))

(declare-fun lt!1528833 () Bool)

(assert (=> d!1267802 (= res!1765740 (not lt!1528833))))

(declare-fun lt!1528832 () Bool)

(assert (=> d!1267802 (= lt!1528833 lt!1528832)))

(declare-fun lt!1528831 () Unit!67198)

(declare-fun e!2678975 () Unit!67198)

(assert (=> d!1267802 (= lt!1528831 e!2678975)))

(declare-fun c!732455 () Bool)

(assert (=> d!1267802 (= c!732455 lt!1528832)))

(assert (=> d!1267802 (= lt!1528832 (containsKey!296 (toList!2363 lt!1528740) key!2048))))

(assert (=> d!1267802 (= (contains!10113 lt!1528740 key!2048) lt!1528833)))

(declare-fun b!4308076 () Bool)

(declare-fun e!2678977 () Bool)

(assert (=> b!4308076 (= e!2678977 (contains!10116 (keys!16041 lt!1528740) key!2048))))

(declare-fun b!4308077 () Bool)

(assert (=> b!4308077 (= e!2678974 (keys!16041 lt!1528740))))

(declare-fun b!4308078 () Bool)

(declare-fun lt!1528828 () Unit!67198)

(assert (=> b!4308078 (= e!2678975 lt!1528828)))

(declare-fun lt!1528834 () Unit!67198)

(assert (=> b!4308078 (= lt!1528834 (lemmaContainsKeyImpliesGetValueByKeyDefined!169 (toList!2363 lt!1528740) key!2048))))

(assert (=> b!4308078 (isDefined!7521 (getValueByKey!249 (toList!2363 lt!1528740) key!2048))))

(declare-fun lt!1528829 () Unit!67198)

(assert (=> b!4308078 (= lt!1528829 lt!1528834)))

(assert (=> b!4308078 (= lt!1528828 (lemmaInListThenGetKeysListContains!39 (toList!2363 lt!1528740) key!2048))))

(declare-fun call!297053 () Bool)

(assert (=> b!4308078 call!297053))

(declare-fun b!4308079 () Bool)

(declare-fun e!2678976 () Unit!67198)

(assert (=> b!4308079 (= e!2678975 e!2678976)))

(declare-fun c!732454 () Bool)

(assert (=> b!4308079 (= c!732454 call!297053)))

(declare-fun b!4308080 () Bool)

(assert (=> b!4308080 (= e!2678979 (not (contains!10116 (keys!16041 lt!1528740) key!2048)))))

(declare-fun b!4308081 () Bool)

(assert (=> b!4308081 false))

(declare-fun lt!1528830 () Unit!67198)

(declare-fun lt!1528835 () Unit!67198)

(assert (=> b!4308081 (= lt!1528830 lt!1528835)))

(assert (=> b!4308081 (containsKey!296 (toList!2363 lt!1528740) key!2048)))

(assert (=> b!4308081 (= lt!1528835 (lemmaInGetKeysListThenContainsKey!39 (toList!2363 lt!1528740) key!2048))))

(declare-fun Unit!67203 () Unit!67198)

(assert (=> b!4308081 (= e!2678976 Unit!67203)))

(declare-fun bm!297048 () Bool)

(assert (=> bm!297048 (= call!297053 (contains!10116 e!2678974 key!2048))))

(declare-fun c!732456 () Bool)

(assert (=> bm!297048 (= c!732456 c!732455)))

(declare-fun b!4308082 () Bool)

(assert (=> b!4308082 (= e!2678978 e!2678977)))

(declare-fun res!1765741 () Bool)

(assert (=> b!4308082 (=> (not res!1765741) (not e!2678977))))

(assert (=> b!4308082 (= res!1765741 (isDefined!7521 (getValueByKey!249 (toList!2363 lt!1528740) key!2048)))))

(declare-fun b!4308083 () Bool)

(declare-fun Unit!67204 () Unit!67198)

(assert (=> b!4308083 (= e!2678976 Unit!67204)))

(assert (= (and d!1267802 c!732455) b!4308078))

(assert (= (and d!1267802 (not c!732455)) b!4308079))

(assert (= (and b!4308079 c!732454) b!4308081))

(assert (= (and b!4308079 (not c!732454)) b!4308083))

(assert (= (or b!4308078 b!4308079) bm!297048))

(assert (= (and bm!297048 c!732456) b!4308075))

(assert (= (and bm!297048 (not c!732456)) b!4308077))

(assert (= (and d!1267802 res!1765740) b!4308080))

(assert (= (and d!1267802 (not res!1765739)) b!4308082))

(assert (= (and b!4308082 res!1765741) b!4308076))

(declare-fun m!4901283 () Bool)

(assert (=> b!4308081 m!4901283))

(declare-fun m!4901285 () Bool)

(assert (=> b!4308081 m!4901285))

(assert (=> d!1267802 m!4901283))

(declare-fun m!4901287 () Bool)

(assert (=> bm!297048 m!4901287))

(declare-fun m!4901289 () Bool)

(assert (=> b!4308077 m!4901289))

(assert (=> b!4308076 m!4901289))

(assert (=> b!4308076 m!4901289))

(declare-fun m!4901291 () Bool)

(assert (=> b!4308076 m!4901291))

(declare-fun m!4901293 () Bool)

(assert (=> b!4308082 m!4901293))

(assert (=> b!4308082 m!4901293))

(declare-fun m!4901295 () Bool)

(assert (=> b!4308082 m!4901295))

(assert (=> b!4308080 m!4901289))

(assert (=> b!4308080 m!4901289))

(assert (=> b!4308080 m!4901291))

(declare-fun m!4901297 () Bool)

(assert (=> b!4308078 m!4901297))

(assert (=> b!4308078 m!4901293))

(assert (=> b!4308078 m!4901293))

(assert (=> b!4308078 m!4901295))

(declare-fun m!4901299 () Bool)

(assert (=> b!4308078 m!4901299))

(declare-fun m!4901301 () Bool)

(assert (=> b!4308075 m!4901301))

(assert (=> b!4308004 d!1267802))

(declare-fun bs!604896 () Bool)

(declare-fun b!4308088 () Bool)

(assert (= bs!604896 (and b!4308088 d!1267792)))

(declare-fun lambda!132769 () Int)

(assert (=> bs!604896 (= lambda!132769 lambda!132766)))

(declare-fun bs!604897 () Bool)

(assert (= bs!604897 (and b!4308088 b!4308004)))

(assert (=> bs!604897 (= lambda!132769 lambda!132754)))

(declare-fun bs!604898 () Bool)

(assert (= bs!604898 (and b!4308088 d!1267790)))

(assert (=> bs!604898 (= lambda!132769 lambda!132765)))

(declare-fun bs!604899 () Bool)

(assert (= bs!604899 (and b!4308088 d!1267788)))

(assert (=> bs!604899 (= lambda!132769 lambda!132762)))

(declare-fun bs!604900 () Bool)

(assert (= bs!604900 (and b!4308088 d!1267774)))

(assert (=> bs!604900 (= lambda!132769 lambda!132757)))

(declare-fun d!1267804 () Bool)

(declare-fun res!1765746 () Bool)

(declare-fun e!2678982 () Bool)

(assert (=> d!1267804 (=> (not res!1765746) (not e!2678982))))

(declare-fun valid!3625 (MutLongMap!4635) Bool)

(assert (=> d!1267804 (= res!1765746 (valid!3625 (v!42253 (underlying!9500 lt!1528748))))))

(assert (=> d!1267804 (= (valid!3624 lt!1528748) e!2678982)))

(declare-fun res!1765747 () Bool)

(assert (=> b!4308088 (=> (not res!1765747) (not e!2678982))))

(assert (=> b!4308088 (= res!1765747 (forall!8716 (toList!2362 (map!10129 (v!42253 (underlying!9500 lt!1528748)))) lambda!132769))))

(declare-fun b!4308089 () Bool)

(assert (=> b!4308089 (= e!2678982 (allKeysSameHashInMap!327 (map!10129 (v!42253 (underlying!9500 lt!1528748))) (hashF!6661 lt!1528748)))))

(assert (= (and d!1267804 res!1765746) b!4308088))

(assert (= (and b!4308088 res!1765747) b!4308089))

(declare-fun m!4901303 () Bool)

(assert (=> d!1267804 m!4901303))

(assert (=> b!4308088 m!4901267))

(declare-fun m!4901305 () Bool)

(assert (=> b!4308088 m!4901305))

(assert (=> b!4308089 m!4901267))

(assert (=> b!4308089 m!4901267))

(declare-fun m!4901307 () Bool)

(assert (=> b!4308089 m!4901307))

(assert (=> b!4308004 d!1267804))

(declare-fun bs!604901 () Bool)

(declare-fun d!1267806 () Bool)

(assert (= bs!604901 (and d!1267806 d!1267792)))

(declare-fun lambda!132772 () Int)

(assert (=> bs!604901 (not (= lambda!132772 lambda!132766))))

(declare-fun bs!604902 () Bool)

(assert (= bs!604902 (and d!1267806 b!4308004)))

(assert (=> bs!604902 (not (= lambda!132772 lambda!132754))))

(declare-fun bs!604903 () Bool)

(assert (= bs!604903 (and d!1267806 d!1267790)))

(assert (=> bs!604903 (not (= lambda!132772 lambda!132765))))

(declare-fun bs!604904 () Bool)

(assert (= bs!604904 (and d!1267806 d!1267788)))

(assert (=> bs!604904 (not (= lambda!132772 lambda!132762))))

(declare-fun bs!604905 () Bool)

(assert (= bs!604905 (and d!1267806 d!1267774)))

(assert (=> bs!604905 (not (= lambda!132772 lambda!132757))))

(declare-fun bs!604906 () Bool)

(assert (= bs!604906 (and d!1267806 b!4308088)))

(assert (=> bs!604906 (not (= lambda!132772 lambda!132769))))

(assert (=> d!1267806 true))

(assert (=> d!1267806 (= (allKeysSameHashInMap!327 lt!1528739 (hashF!6661 thiss!42308)) (forall!8716 (toList!2362 lt!1528739) lambda!132772))))

(declare-fun bs!604907 () Bool)

(assert (= bs!604907 d!1267806))

(declare-fun m!4901309 () Bool)

(assert (=> bs!604907 m!4901309))

(assert (=> b!4307999 d!1267806))

(declare-fun b!4308101 () Bool)

(declare-fun e!2678988 () List!48271)

(declare-fun e!2678987 () List!48271)

(assert (=> b!4308101 (= e!2678988 e!2678987)))

(declare-fun c!732461 () Bool)

(assert (=> b!4308101 (= c!732461 ((_ is Cons!48147) lt!1528745))))

(declare-fun b!4308103 () Bool)

(assert (=> b!4308103 (= e!2678987 Nil!48147)))

(declare-fun b!4308102 () Bool)

(assert (=> b!4308102 (= e!2678987 (Cons!48147 (h!53580 lt!1528745) (removePairForKey!198 (t!355068 lt!1528745) key!2048)))))

(declare-fun b!4308100 () Bool)

(assert (=> b!4308100 (= e!2678988 (t!355068 lt!1528745))))

(declare-fun d!1267808 () Bool)

(declare-fun lt!1528838 () List!48271)

(declare-fun containsKey!297 (List!48271 K!9334) Bool)

(assert (=> d!1267808 (not (containsKey!297 lt!1528838 key!2048))))

(assert (=> d!1267808 (= lt!1528838 e!2678988)))

(declare-fun c!732462 () Bool)

(assert (=> d!1267808 (= c!732462 (and ((_ is Cons!48147) lt!1528745) (= (_1!26515 (h!53580 lt!1528745)) key!2048)))))

(declare-fun noDuplicateKeys!199 (List!48271) Bool)

(assert (=> d!1267808 (noDuplicateKeys!199 lt!1528745)))

(assert (=> d!1267808 (= (removePairForKey!198 lt!1528745 key!2048) lt!1528838)))

(assert (= (and d!1267808 c!732462) b!4308100))

(assert (= (and d!1267808 (not c!732462)) b!4308101))

(assert (= (and b!4308101 c!732461) b!4308102))

(assert (= (and b!4308101 (not c!732461)) b!4308103))

(declare-fun m!4901311 () Bool)

(assert (=> b!4308102 m!4901311))

(declare-fun m!4901313 () Bool)

(assert (=> d!1267808 m!4901313))

(declare-fun m!4901315 () Bool)

(assert (=> d!1267808 m!4901315))

(assert (=> b!4308013 d!1267808))

(declare-fun d!1267810 () Bool)

(assert (=> d!1267810 true))

(assert (=> d!1267810 true))

(declare-fun lambda!132775 () Int)

(declare-fun forall!8717 (List!48271 Int) Bool)

(assert (=> d!1267810 (= (allKeysSameHash!174 (removePairForKey!198 lt!1528745 key!2048) lt!1528754 (hashF!6661 thiss!42308)) (forall!8717 (removePairForKey!198 lt!1528745 key!2048) lambda!132775))))

(declare-fun bs!604908 () Bool)

(assert (= bs!604908 d!1267810))

(assert (=> bs!604908 m!4901147))

(declare-fun m!4901317 () Bool)

(assert (=> bs!604908 m!4901317))

(assert (=> b!4308013 d!1267810))

(declare-fun bs!604909 () Bool)

(declare-fun d!1267812 () Bool)

(assert (= bs!604909 (and d!1267812 d!1267792)))

(declare-fun lambda!132778 () Int)

(assert (=> bs!604909 (not (= lambda!132778 lambda!132766))))

(declare-fun bs!604910 () Bool)

(assert (= bs!604910 (and d!1267812 d!1267790)))

(assert (=> bs!604910 (not (= lambda!132778 lambda!132765))))

(declare-fun bs!604911 () Bool)

(assert (= bs!604911 (and d!1267812 d!1267788)))

(assert (=> bs!604911 (not (= lambda!132778 lambda!132762))))

(declare-fun bs!604912 () Bool)

(assert (= bs!604912 (and d!1267812 d!1267774)))

(assert (=> bs!604912 (not (= lambda!132778 lambda!132757))))

(declare-fun bs!604913 () Bool)

(assert (= bs!604913 (and d!1267812 b!4308088)))

(assert (=> bs!604913 (not (= lambda!132778 lambda!132769))))

(declare-fun bs!604914 () Bool)

(assert (= bs!604914 (and d!1267812 d!1267806)))

(assert (=> bs!604914 (= lambda!132778 lambda!132772)))

(declare-fun bs!604915 () Bool)

(assert (= bs!604915 (and d!1267812 b!4308004)))

(assert (=> bs!604915 (not (= lambda!132778 lambda!132754))))

(assert (=> d!1267812 true))

(assert (=> d!1267812 (allKeysSameHash!174 lt!1528745 lt!1528754 (hashF!6661 thiss!42308))))

(declare-fun lt!1528841 () Unit!67198)

(declare-fun choose!26246 (List!48272 (_ BitVec 64) List!48271 Hashable!4551) Unit!67198)

(assert (=> d!1267812 (= lt!1528841 (choose!26246 (toList!2362 lt!1528746) lt!1528754 lt!1528745 (hashF!6661 thiss!42308)))))

(assert (=> d!1267812 (forall!8716 (toList!2362 lt!1528746) lambda!132778)))

(assert (=> d!1267812 (= (lemmaInLongMapAllKeySameHashThenForTuple!164 (toList!2362 lt!1528746) lt!1528754 lt!1528745 (hashF!6661 thiss!42308)) lt!1528841)))

(declare-fun bs!604916 () Bool)

(assert (= bs!604916 d!1267812))

(assert (=> bs!604916 m!4901145))

(declare-fun m!4901319 () Bool)

(assert (=> bs!604916 m!4901319))

(declare-fun m!4901321 () Bool)

(assert (=> bs!604916 m!4901321))

(assert (=> b!4308013 d!1267812))

(declare-fun d!1267814 () Bool)

(assert (=> d!1267814 (allKeysSameHash!174 (removePairForKey!198 lt!1528745 key!2048) lt!1528754 (hashF!6661 thiss!42308))))

(declare-fun lt!1528844 () Unit!67198)

(declare-fun choose!26247 (List!48271 K!9334 (_ BitVec 64) Hashable!4551) Unit!67198)

(assert (=> d!1267814 (= lt!1528844 (choose!26247 lt!1528745 key!2048 lt!1528754 (hashF!6661 thiss!42308)))))

(assert (=> d!1267814 (noDuplicateKeys!199 lt!1528745)))

(assert (=> d!1267814 (= (lemmaRemovePairForKeyPreservesHash!158 lt!1528745 key!2048 lt!1528754 (hashF!6661 thiss!42308)) lt!1528844)))

(declare-fun bs!604917 () Bool)

(assert (= bs!604917 d!1267814))

(assert (=> bs!604917 m!4901147))

(assert (=> bs!604917 m!4901147))

(assert (=> bs!604917 m!4901149))

(declare-fun m!4901323 () Bool)

(assert (=> bs!604917 m!4901323))

(assert (=> bs!604917 m!4901315))

(assert (=> b!4308013 d!1267814))

(declare-fun bs!604918 () Bool)

(declare-fun d!1267816 () Bool)

(assert (= bs!604918 (and d!1267816 d!1267810)))

(declare-fun lambda!132779 () Int)

(assert (=> bs!604918 (= lambda!132779 lambda!132775)))

(assert (=> d!1267816 true))

(assert (=> d!1267816 true))

(assert (=> d!1267816 (= (allKeysSameHash!174 lt!1528745 lt!1528754 (hashF!6661 thiss!42308)) (forall!8717 lt!1528745 lambda!132779))))

(declare-fun bs!604919 () Bool)

(assert (= bs!604919 d!1267816))

(declare-fun m!4901325 () Bool)

(assert (=> bs!604919 m!4901325))

(assert (=> b!4308013 d!1267816))

(declare-fun bs!604920 () Bool)

(declare-fun b!4308108 () Bool)

(assert (= bs!604920 (and b!4308108 d!1267792)))

(declare-fun lambda!132780 () Int)

(assert (=> bs!604920 (= lambda!132780 lambda!132766)))

(declare-fun bs!604921 () Bool)

(assert (= bs!604921 (and b!4308108 d!1267812)))

(assert (=> bs!604921 (not (= lambda!132780 lambda!132778))))

(declare-fun bs!604922 () Bool)

(assert (= bs!604922 (and b!4308108 d!1267790)))

(assert (=> bs!604922 (= lambda!132780 lambda!132765)))

(declare-fun bs!604923 () Bool)

(assert (= bs!604923 (and b!4308108 d!1267788)))

(assert (=> bs!604923 (= lambda!132780 lambda!132762)))

(declare-fun bs!604924 () Bool)

(assert (= bs!604924 (and b!4308108 d!1267774)))

(assert (=> bs!604924 (= lambda!132780 lambda!132757)))

(declare-fun bs!604925 () Bool)

(assert (= bs!604925 (and b!4308108 b!4308088)))

(assert (=> bs!604925 (= lambda!132780 lambda!132769)))

(declare-fun bs!604926 () Bool)

(assert (= bs!604926 (and b!4308108 d!1267806)))

(assert (=> bs!604926 (not (= lambda!132780 lambda!132772))))

(declare-fun bs!604927 () Bool)

(assert (= bs!604927 (and b!4308108 b!4308004)))

(assert (=> bs!604927 (= lambda!132780 lambda!132754)))

(declare-fun d!1267818 () Bool)

(declare-fun res!1765748 () Bool)

(declare-fun e!2678989 () Bool)

(assert (=> d!1267818 (=> (not res!1765748) (not e!2678989))))

(assert (=> d!1267818 (= res!1765748 (valid!3625 (v!42253 (underlying!9500 thiss!42308))))))

(assert (=> d!1267818 (= (valid!3624 thiss!42308) e!2678989)))

(declare-fun res!1765749 () Bool)

(assert (=> b!4308108 (=> (not res!1765749) (not e!2678989))))

(assert (=> b!4308108 (= res!1765749 (forall!8716 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308)))) lambda!132780))))

(declare-fun b!4308109 () Bool)

(assert (=> b!4308109 (= e!2678989 (allKeysSameHashInMap!327 (map!10129 (v!42253 (underlying!9500 thiss!42308))) (hashF!6661 thiss!42308)))))

(assert (= (and d!1267818 res!1765748) b!4308108))

(assert (= (and b!4308108 res!1765749) b!4308109))

(declare-fun m!4901327 () Bool)

(assert (=> d!1267818 m!4901327))

(assert (=> b!4308108 m!4901163))

(declare-fun m!4901329 () Bool)

(assert (=> b!4308108 m!4901329))

(assert (=> b!4308109 m!4901163))

(assert (=> b!4308109 m!4901163))

(declare-fun m!4901331 () Bool)

(assert (=> b!4308109 m!4901331))

(assert (=> b!4308008 d!1267818))

(declare-fun bs!604928 () Bool)

(declare-fun d!1267820 () Bool)

(assert (= bs!604928 (and d!1267820 b!4308108)))

(declare-fun lambda!132781 () Int)

(assert (=> bs!604928 (not (= lambda!132781 lambda!132780))))

(declare-fun bs!604929 () Bool)

(assert (= bs!604929 (and d!1267820 d!1267792)))

(assert (=> bs!604929 (not (= lambda!132781 lambda!132766))))

(declare-fun bs!604930 () Bool)

(assert (= bs!604930 (and d!1267820 d!1267812)))

(assert (=> bs!604930 (= lambda!132781 lambda!132778)))

(declare-fun bs!604931 () Bool)

(assert (= bs!604931 (and d!1267820 d!1267790)))

(assert (=> bs!604931 (not (= lambda!132781 lambda!132765))))

(declare-fun bs!604932 () Bool)

(assert (= bs!604932 (and d!1267820 d!1267788)))

(assert (=> bs!604932 (not (= lambda!132781 lambda!132762))))

(declare-fun bs!604933 () Bool)

(assert (= bs!604933 (and d!1267820 d!1267774)))

(assert (=> bs!604933 (not (= lambda!132781 lambda!132757))))

(declare-fun bs!604934 () Bool)

(assert (= bs!604934 (and d!1267820 b!4308088)))

(assert (=> bs!604934 (not (= lambda!132781 lambda!132769))))

(declare-fun bs!604935 () Bool)

(assert (= bs!604935 (and d!1267820 d!1267806)))

(assert (=> bs!604935 (= lambda!132781 lambda!132772)))

(declare-fun bs!604936 () Bool)

(assert (= bs!604936 (and d!1267820 b!4308004)))

(assert (=> bs!604936 (not (= lambda!132781 lambda!132754))))

(assert (=> d!1267820 true))

(assert (=> d!1267820 (= (allKeysSameHashInMap!327 lt!1528747 (hashF!6661 thiss!42308)) (forall!8716 (toList!2362 lt!1528747) lambda!132781))))

(declare-fun bs!604937 () Bool)

(assert (= bs!604937 d!1267820))

(declare-fun m!4901333 () Bool)

(assert (=> bs!604937 m!4901333))

(assert (=> b!4308012 d!1267820))

(declare-fun d!1267822 () Bool)

(assert (=> d!1267822 (= (array_inv!5347 (_keys!4935 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) (bvsge (size!35494 (_keys!4935 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4308010 d!1267822))

(declare-fun d!1267824 () Bool)

(assert (=> d!1267824 (= (array_inv!5348 (_values!4916 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) (bvsge (size!35495 (_values!4916 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4308010 d!1267824))

(declare-fun d!1267826 () Bool)

(declare-fun e!2678992 () Bool)

(assert (=> d!1267826 e!2678992))

(declare-fun c!732465 () Bool)

(assert (=> d!1267826 (= c!732465 (contains!10114 (v!42253 (underlying!9500 thiss!42308)) lt!1528754))))

(declare-fun lt!1528847 () List!48271)

(declare-fun apply!10991 (LongMapFixedSize!9270 (_ BitVec 64)) List!48271)

(assert (=> d!1267826 (= lt!1528847 (apply!10991 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))) lt!1528754))))

(assert (=> d!1267826 (valid!3625 (v!42253 (underlying!9500 thiss!42308)))))

(assert (=> d!1267826 (= (apply!10990 (v!42253 (underlying!9500 thiss!42308)) lt!1528754) lt!1528847)))

(declare-fun b!4308114 () Bool)

(declare-fun get!15576 (Option!10220) List!48271)

(assert (=> b!4308114 (= e!2678992 (= lt!1528847 (get!15576 (getValueByKey!250 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308)))) lt!1528754))))))

(declare-fun b!4308115 () Bool)

(declare-fun dynLambda!20420 (Int (_ BitVec 64)) List!48271)

(assert (=> b!4308115 (= e!2678992 (= lt!1528847 (dynLambda!20420 (defaultEntry!5020 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308))))) lt!1528754)))))

(assert (=> b!4308115 ((_ is LongMap!4635) (v!42253 (underlying!9500 thiss!42308)))))

(assert (= (and d!1267826 c!732465) b!4308114))

(assert (= (and d!1267826 (not c!732465)) b!4308115))

(declare-fun b_lambda!126575 () Bool)

(assert (=> (not b_lambda!126575) (not b!4308115)))

(declare-fun t!355071 () Bool)

(declare-fun tb!257283 () Bool)

(assert (=> (and b!4308010 (= (defaultEntry!5020 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308))))) (defaultEntry!5020 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))))) t!355071) tb!257283))

(assert (=> b!4308115 t!355071))

(declare-fun result!314664 () Bool)

(declare-fun b_and!339915 () Bool)

(assert (= b_and!339911 (and (=> t!355071 result!314664) b_and!339915)))

(assert (=> d!1267826 m!4901101))

(declare-fun m!4901335 () Bool)

(assert (=> d!1267826 m!4901335))

(assert (=> d!1267826 m!4901327))

(assert (=> b!4308114 m!4901163))

(declare-fun m!4901337 () Bool)

(assert (=> b!4308114 m!4901337))

(assert (=> b!4308114 m!4901337))

(declare-fun m!4901339 () Bool)

(assert (=> b!4308114 m!4901339))

(declare-fun m!4901341 () Bool)

(assert (=> b!4308115 m!4901341))

(assert (=> b!4308005 d!1267826))

(declare-fun bs!604938 () Bool)

(declare-fun b!4308147 () Bool)

(assert (= bs!604938 (and b!4308147 b!4308108)))

(declare-fun lambda!132784 () Int)

(assert (=> bs!604938 (= lambda!132784 lambda!132780)))

(declare-fun bs!604939 () Bool)

(assert (= bs!604939 (and b!4308147 d!1267820)))

(assert (=> bs!604939 (not (= lambda!132784 lambda!132781))))

(declare-fun bs!604940 () Bool)

(assert (= bs!604940 (and b!4308147 d!1267792)))

(assert (=> bs!604940 (= lambda!132784 lambda!132766)))

(declare-fun bs!604941 () Bool)

(assert (= bs!604941 (and b!4308147 d!1267812)))

(assert (=> bs!604941 (not (= lambda!132784 lambda!132778))))

(declare-fun bs!604942 () Bool)

(assert (= bs!604942 (and b!4308147 d!1267790)))

(assert (=> bs!604942 (= lambda!132784 lambda!132765)))

(declare-fun bs!604943 () Bool)

(assert (= bs!604943 (and b!4308147 d!1267788)))

(assert (=> bs!604943 (= lambda!132784 lambda!132762)))

(declare-fun bs!604944 () Bool)

(assert (= bs!604944 (and b!4308147 d!1267774)))

(assert (=> bs!604944 (= lambda!132784 lambda!132757)))

(declare-fun bs!604945 () Bool)

(assert (= bs!604945 (and b!4308147 b!4308088)))

(assert (=> bs!604945 (= lambda!132784 lambda!132769)))

(declare-fun bs!604946 () Bool)

(assert (= bs!604946 (and b!4308147 d!1267806)))

(assert (=> bs!604946 (not (= lambda!132784 lambda!132772))))

(declare-fun bs!604947 () Bool)

(assert (= bs!604947 (and b!4308147 b!4308004)))

(assert (=> bs!604947 (= lambda!132784 lambda!132754)))

(declare-fun b!4308138 () Bool)

(declare-fun e!2679009 () Unit!67198)

(declare-fun lt!1528890 () Unit!67198)

(assert (=> b!4308138 (= e!2679009 lt!1528890)))

(declare-fun lt!1528897 () ListLongMap!975)

(declare-fun call!297067 () ListLongMap!975)

(assert (=> b!4308138 (= lt!1528897 call!297067)))

(declare-fun lemmaInGenericMapThenInLongMap!129 (ListLongMap!975 K!9334 Hashable!4551) Unit!67198)

(assert (=> b!4308138 (= lt!1528890 (lemmaInGenericMapThenInLongMap!129 lt!1528897 key!2048 (hashF!6661 thiss!42308)))))

(declare-fun res!1765757 () Bool)

(declare-fun call!297070 () Bool)

(assert (=> b!4308138 (= res!1765757 call!297070)))

(declare-fun e!2679011 () Bool)

(assert (=> b!4308138 (=> (not res!1765757) (not e!2679011))))

(assert (=> b!4308138 e!2679011))

(declare-fun d!1267828 () Bool)

(declare-fun lt!1528894 () Bool)

(assert (=> d!1267828 (= lt!1528894 (contains!10113 (map!10130 thiss!42308) key!2048))))

(declare-fun e!2679010 () Bool)

(assert (=> d!1267828 (= lt!1528894 e!2679010)))

(declare-fun res!1765758 () Bool)

(assert (=> d!1267828 (=> (not res!1765758) (not e!2679010))))

(declare-fun lt!1528899 () (_ BitVec 64))

(assert (=> d!1267828 (= res!1765758 (contains!10114 (v!42253 (underlying!9500 thiss!42308)) lt!1528899))))

(declare-fun lt!1528903 () Unit!67198)

(assert (=> d!1267828 (= lt!1528903 e!2679009)))

(declare-fun c!732475 () Bool)

(assert (=> d!1267828 (= c!732475 (contains!10113 (extractMap!317 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308))))) key!2048))))

(declare-fun lt!1528895 () Unit!67198)

(declare-fun e!2679013 () Unit!67198)

(assert (=> d!1267828 (= lt!1528895 e!2679013)))

(declare-fun c!732476 () Bool)

(assert (=> d!1267828 (= c!732476 (contains!10114 (v!42253 (underlying!9500 thiss!42308)) lt!1528899))))

(assert (=> d!1267828 (= lt!1528899 (hash!979 (hashF!6661 thiss!42308) key!2048))))

(assert (=> d!1267828 (valid!3624 thiss!42308)))

(assert (=> d!1267828 (= (contains!10112 thiss!42308 key!2048) lt!1528894)))

(declare-fun b!4308139 () Bool)

(declare-fun e!2679008 () Bool)

(declare-fun call!297068 () Bool)

(assert (=> b!4308139 (= e!2679008 call!297068)))

(declare-fun bm!297061 () Bool)

(assert (=> bm!297061 (= call!297067 (map!10129 (v!42253 (underlying!9500 thiss!42308))))))

(declare-fun b!4308140 () Bool)

(declare-fun Unit!67205 () Unit!67198)

(assert (=> b!4308140 (= e!2679013 Unit!67205)))

(declare-fun bm!297062 () Bool)

(declare-datatypes ((Option!10221 0))(
  ( (None!10220) (Some!10220 (v!42260 tuple2!46472)) )
))
(declare-fun call!297069 () Option!10221)

(declare-fun isDefined!7522 (Option!10221) Bool)

(assert (=> bm!297062 (= call!297068 (isDefined!7522 call!297069))))

(declare-fun call!297071 () (_ BitVec 64))

(declare-fun bm!297063 () Bool)

(assert (=> bm!297063 (= call!297070 (contains!10117 (ite c!732475 lt!1528897 call!297067) call!297071))))

(declare-fun bm!297064 () Bool)

(declare-fun call!297066 () List!48271)

(declare-fun getPair!129 (List!48271 K!9334) Option!10221)

(assert (=> bm!297064 (= call!297069 (getPair!129 call!297066 key!2048))))

(declare-fun bm!297065 () Bool)

(assert (=> bm!297065 (= call!297071 (hash!979 (hashF!6661 thiss!42308) key!2048))))

(declare-fun b!4308141 () Bool)

(declare-fun e!2679007 () Unit!67198)

(assert (=> b!4308141 (= e!2679009 e!2679007)))

(declare-fun res!1765756 () Bool)

(assert (=> b!4308141 (= res!1765756 call!297070)))

(assert (=> b!4308141 (=> (not res!1765756) (not e!2679008))))

(declare-fun c!732474 () Bool)

(assert (=> b!4308141 (= c!732474 e!2679008)))

(declare-fun b!4308142 () Bool)

(declare-fun e!2679012 () Unit!67198)

(declare-fun Unit!67206 () Unit!67198)

(assert (=> b!4308142 (= e!2679012 Unit!67206)))

(declare-fun b!4308143 () Bool)

(assert (=> b!4308143 (= e!2679011 call!297068)))

(declare-fun b!4308144 () Bool)

(declare-fun Unit!67207 () Unit!67198)

(assert (=> b!4308144 (= e!2679007 Unit!67207)))

(declare-fun bm!297066 () Bool)

(declare-fun apply!10992 (ListLongMap!975 (_ BitVec 64)) List!48271)

(assert (=> bm!297066 (= call!297066 (apply!10992 (ite c!732475 lt!1528897 call!297067) call!297071))))

(declare-fun b!4308145 () Bool)

(assert (=> b!4308145 (= e!2679010 (isDefined!7522 (getPair!129 (apply!10990 (v!42253 (underlying!9500 thiss!42308)) lt!1528899) key!2048)))))

(declare-fun b!4308146 () Bool)

(assert (=> b!4308146 false))

(declare-fun lt!1528889 () Unit!67198)

(declare-fun lt!1528896 () Unit!67198)

(assert (=> b!4308146 (= lt!1528889 lt!1528896)))

(declare-fun lt!1528891 () List!48272)

(declare-fun lt!1528892 () List!48271)

(assert (=> b!4308146 (contains!10118 lt!1528891 (tuple2!46475 lt!1528899 lt!1528892))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!140 (List!48272 (_ BitVec 64) List!48271) Unit!67198)

(assert (=> b!4308146 (= lt!1528896 (lemmaGetValueByKeyImpliesContainsTuple!140 lt!1528891 lt!1528899 lt!1528892))))

(assert (=> b!4308146 (= lt!1528892 (apply!10990 (v!42253 (underlying!9500 thiss!42308)) lt!1528899))))

(assert (=> b!4308146 (= lt!1528891 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308)))))))

(declare-fun lt!1528888 () Unit!67198)

(declare-fun lt!1528906 () Unit!67198)

(assert (=> b!4308146 (= lt!1528888 lt!1528906)))

(declare-fun lt!1528898 () List!48272)

(declare-fun isDefined!7523 (Option!10220) Bool)

(assert (=> b!4308146 (isDefined!7523 (getValueByKey!250 lt!1528898 lt!1528899))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!170 (List!48272 (_ BitVec 64)) Unit!67198)

(assert (=> b!4308146 (= lt!1528906 (lemmaContainsKeyImpliesGetValueByKeyDefined!170 lt!1528898 lt!1528899))))

(assert (=> b!4308146 (= lt!1528898 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308)))))))

(declare-fun lt!1528904 () Unit!67198)

(declare-fun lt!1528905 () Unit!67198)

(assert (=> b!4308146 (= lt!1528904 lt!1528905)))

(declare-fun lt!1528902 () List!48272)

(declare-fun containsKey!298 (List!48272 (_ BitVec 64)) Bool)

(assert (=> b!4308146 (containsKey!298 lt!1528902 lt!1528899)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!130 (List!48272 (_ BitVec 64)) Unit!67198)

(assert (=> b!4308146 (= lt!1528905 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!130 lt!1528902 lt!1528899))))

(assert (=> b!4308146 (= lt!1528902 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308)))))))

(declare-fun Unit!67208 () Unit!67198)

(assert (=> b!4308146 (= e!2679012 Unit!67208)))

(declare-fun forallContained!1496 (List!48272 Int tuple2!46474) Unit!67198)

(assert (=> b!4308147 (= e!2679013 (forallContained!1496 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308)))) lambda!132784 (tuple2!46475 lt!1528899 (apply!10990 (v!42253 (underlying!9500 thiss!42308)) lt!1528899))))))

(declare-fun c!732477 () Bool)

(assert (=> b!4308147 (= c!732477 (not (contains!10118 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308)))) (tuple2!46475 lt!1528899 (apply!10990 (v!42253 (underlying!9500 thiss!42308)) lt!1528899)))))))

(declare-fun lt!1528893 () Unit!67198)

(assert (=> b!4308147 (= lt!1528893 e!2679012)))

(declare-fun b!4308148 () Bool)

(assert (=> b!4308148 false))

(declare-fun lt!1528907 () Unit!67198)

(declare-fun lt!1528900 () Unit!67198)

(assert (=> b!4308148 (= lt!1528907 lt!1528900)))

(declare-fun lt!1528901 () ListLongMap!975)

(assert (=> b!4308148 (contains!10113 (extractMap!317 (toList!2362 lt!1528901)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!129 (ListLongMap!975 K!9334 Hashable!4551) Unit!67198)

(assert (=> b!4308148 (= lt!1528900 (lemmaInLongMapThenInGenericMap!129 lt!1528901 key!2048 (hashF!6661 thiss!42308)))))

(assert (=> b!4308148 (= lt!1528901 call!297067)))

(declare-fun Unit!67209 () Unit!67198)

(assert (=> b!4308148 (= e!2679007 Unit!67209)))

(assert (= (and d!1267828 c!732476) b!4308147))

(assert (= (and d!1267828 (not c!732476)) b!4308140))

(assert (= (and b!4308147 c!732477) b!4308146))

(assert (= (and b!4308147 (not c!732477)) b!4308142))

(assert (= (and d!1267828 c!732475) b!4308138))

(assert (= (and d!1267828 (not c!732475)) b!4308141))

(assert (= (and b!4308138 res!1765757) b!4308143))

(assert (= (and b!4308141 res!1765756) b!4308139))

(assert (= (and b!4308141 c!732474) b!4308148))

(assert (= (and b!4308141 (not c!732474)) b!4308144))

(assert (= (or b!4308138 b!4308141 b!4308139 b!4308148) bm!297061))

(assert (= (or b!4308138 b!4308143 b!4308141 b!4308139) bm!297065))

(assert (= (or b!4308143 b!4308139) bm!297066))

(assert (= (or b!4308138 b!4308141) bm!297063))

(assert (= (or b!4308143 b!4308139) bm!297064))

(assert (= (or b!4308143 b!4308139) bm!297062))

(assert (= (and d!1267828 res!1765758) b!4308145))

(declare-fun m!4901343 () Bool)

(assert (=> bm!297063 m!4901343))

(declare-fun m!4901345 () Bool)

(assert (=> bm!297062 m!4901345))

(declare-fun m!4901347 () Bool)

(assert (=> bm!297064 m!4901347))

(declare-fun m!4901349 () Bool)

(assert (=> b!4308145 m!4901349))

(assert (=> b!4308145 m!4901349))

(declare-fun m!4901351 () Bool)

(assert (=> b!4308145 m!4901351))

(assert (=> b!4308145 m!4901351))

(declare-fun m!4901353 () Bool)

(assert (=> b!4308145 m!4901353))

(assert (=> bm!297065 m!4901103))

(assert (=> bm!297061 m!4901163))

(declare-fun m!4901355 () Bool)

(assert (=> bm!297066 m!4901355))

(assert (=> b!4308147 m!4901163))

(assert (=> b!4308147 m!4901349))

(declare-fun m!4901357 () Bool)

(assert (=> b!4308147 m!4901357))

(declare-fun m!4901359 () Bool)

(assert (=> b!4308147 m!4901359))

(declare-fun m!4901361 () Bool)

(assert (=> d!1267828 m!4901361))

(assert (=> d!1267828 m!4901097))

(assert (=> d!1267828 m!4901163))

(assert (=> d!1267828 m!4901165))

(assert (=> d!1267828 m!4901103))

(declare-fun m!4901363 () Bool)

(assert (=> d!1267828 m!4901363))

(assert (=> d!1267828 m!4901363))

(declare-fun m!4901365 () Bool)

(assert (=> d!1267828 m!4901365))

(assert (=> d!1267828 m!4901165))

(declare-fun m!4901367 () Bool)

(assert (=> d!1267828 m!4901367))

(declare-fun m!4901369 () Bool)

(assert (=> b!4308148 m!4901369))

(assert (=> b!4308148 m!4901369))

(declare-fun m!4901371 () Bool)

(assert (=> b!4308148 m!4901371))

(declare-fun m!4901373 () Bool)

(assert (=> b!4308148 m!4901373))

(declare-fun m!4901375 () Bool)

(assert (=> b!4308138 m!4901375))

(assert (=> b!4308146 m!4901163))

(declare-fun m!4901377 () Bool)

(assert (=> b!4308146 m!4901377))

(declare-fun m!4901379 () Bool)

(assert (=> b!4308146 m!4901379))

(declare-fun m!4901381 () Bool)

(assert (=> b!4308146 m!4901381))

(declare-fun m!4901383 () Bool)

(assert (=> b!4308146 m!4901383))

(declare-fun m!4901385 () Bool)

(assert (=> b!4308146 m!4901385))

(assert (=> b!4308146 m!4901349))

(declare-fun m!4901387 () Bool)

(assert (=> b!4308146 m!4901387))

(assert (=> b!4308146 m!4901379))

(declare-fun m!4901389 () Bool)

(assert (=> b!4308146 m!4901389))

(assert (=> b!4308000 d!1267828))

(declare-fun d!1267830 () Bool)

(assert (=> d!1267830 (= (map!10129 (v!42253 (underlying!9500 thiss!42308))) (map!10131 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308))))))))

(declare-fun bs!604948 () Bool)

(assert (= bs!604948 d!1267830))

(declare-fun m!4901391 () Bool)

(assert (=> bs!604948 m!4901391))

(assert (=> b!4308000 d!1267830))

(declare-fun d!1267832 () Bool)

(declare-fun lt!1528908 () ListMap!1643)

(assert (=> d!1267832 (invariantList!568 (toList!2363 lt!1528908))))

(assert (=> d!1267832 (= lt!1528908 (extractMap!317 (toList!2362 (map!10129 (v!42253 (underlying!9500 thiss!42308))))))))

(assert (=> d!1267832 (valid!3624 thiss!42308)))

(assert (=> d!1267832 (= (map!10130 thiss!42308) lt!1528908)))

(declare-fun bs!604949 () Bool)

(assert (= bs!604949 d!1267832))

(declare-fun m!4901393 () Bool)

(assert (=> bs!604949 m!4901393))

(assert (=> bs!604949 m!4901163))

(assert (=> bs!604949 m!4901363))

(assert (=> bs!604949 m!4901097))

(assert (=> b!4308000 d!1267832))

(declare-fun bm!297071 () Bool)

(declare-fun call!297076 () ListLongMap!975)

(assert (=> bm!297071 (= call!297076 (map!10129 (v!42253 (underlying!9500 thiss!42308))))))

(declare-fun b!4308167 () Bool)

(declare-fun e!2679028 () Bool)

(declare-fun call!297077 () ListLongMap!975)

(assert (=> b!4308167 (= e!2679028 (= call!297077 call!297076))))

(declare-fun b!4308168 () Bool)

(declare-fun e!2679025 () tuple2!46476)

(declare-fun lt!1528920 () tuple2!46476)

(assert (=> b!4308168 (= e!2679025 (tuple2!46477 false (_2!26517 lt!1528920)))))

(declare-fun b!4308169 () Bool)

(declare-fun e!2679026 () tuple2!46476)

(declare-fun lt!1528918 () tuple2!46476)

(assert (=> b!4308169 (= e!2679026 (tuple2!46477 (_1!26517 lt!1528918) (_2!26517 lt!1528918)))))

(declare-fun repack!51 (MutLongMap!4635) tuple2!46476)

(assert (=> b!4308169 (= lt!1528918 (repack!51 (v!42253 (underlying!9500 thiss!42308))))))

(declare-fun b!4308170 () Bool)

(assert (=> b!4308170 (= e!2679026 (tuple2!46477 true (v!42253 (underlying!9500 thiss!42308))))))

(declare-fun b!4308171 () Bool)

(declare-fun res!1765766 () Bool)

(declare-fun e!2679027 () Bool)

(assert (=> b!4308171 (=> (not res!1765766) (not e!2679027))))

(declare-fun lt!1528919 () tuple2!46476)

(assert (=> b!4308171 (= res!1765766 (valid!3625 (_2!26517 lt!1528919)))))

(declare-fun bm!297072 () Bool)

(assert (=> bm!297072 (= call!297077 (map!10129 (_2!26517 lt!1528919)))))

(declare-fun b!4308172 () Bool)

(declare-fun e!2679024 () Bool)

(assert (=> b!4308172 (= e!2679028 e!2679024)))

(declare-fun res!1765767 () Bool)

(assert (=> b!4308172 (= res!1765767 (contains!10117 call!297077 lt!1528754))))

(assert (=> b!4308172 (=> (not res!1765767) (not e!2679024))))

(declare-fun d!1267834 () Bool)

(assert (=> d!1267834 e!2679027))

(declare-fun res!1765765 () Bool)

(assert (=> d!1267834 (=> (not res!1765765) (not e!2679027))))

(assert (=> d!1267834 (= res!1765765 ((_ is LongMap!4635) (_2!26517 lt!1528919)))))

(assert (=> d!1267834 (= lt!1528919 e!2679025)))

(declare-fun c!732485 () Bool)

(assert (=> d!1267834 (= c!732485 (_1!26517 lt!1528920))))

(assert (=> d!1267834 (= lt!1528920 e!2679026)))

(declare-fun c!732484 () Bool)

(declare-fun imbalanced!47 (MutLongMap!4635) Bool)

(assert (=> d!1267834 (= c!732484 (imbalanced!47 (v!42253 (underlying!9500 thiss!42308))))))

(assert (=> d!1267834 (valid!3625 (v!42253 (underlying!9500 thiss!42308)))))

(assert (=> d!1267834 (= (update!415 (v!42253 (underlying!9500 thiss!42308)) lt!1528754 lt!1528752) lt!1528919)))

(declare-fun b!4308173 () Bool)

(declare-datatypes ((tuple2!46478 0))(
  ( (tuple2!46479 (_1!26518 Bool) (_2!26518 LongMapFixedSize!9270)) )
))
(declare-fun lt!1528917 () tuple2!46478)

(assert (=> b!4308173 (= e!2679025 (tuple2!46477 (_1!26518 lt!1528917) (LongMap!4635 (Cell!18350 (_2!26518 lt!1528917)))))))

(declare-fun update!416 (LongMapFixedSize!9270 (_ BitVec 64) List!48271) tuple2!46478)

(assert (=> b!4308173 (= lt!1528917 (update!416 (v!42252 (underlying!9499 (_2!26517 lt!1528920))) lt!1528754 lt!1528752))))

(declare-fun b!4308174 () Bool)

(assert (=> b!4308174 (= e!2679024 (= call!297077 (+!249 call!297076 (tuple2!46475 lt!1528754 lt!1528752))))))

(declare-fun b!4308175 () Bool)

(assert (=> b!4308175 (= e!2679027 e!2679028)))

(declare-fun c!732486 () Bool)

(assert (=> b!4308175 (= c!732486 (_1!26517 lt!1528919))))

(assert (= (and d!1267834 c!732484) b!4308169))

(assert (= (and d!1267834 (not c!732484)) b!4308170))

(assert (= (and d!1267834 c!732485) b!4308173))

(assert (= (and d!1267834 (not c!732485)) b!4308168))

(assert (= (and d!1267834 res!1765765) b!4308171))

(assert (= (and b!4308171 res!1765766) b!4308175))

(assert (= (and b!4308175 c!732486) b!4308172))

(assert (= (and b!4308175 (not c!732486)) b!4308167))

(assert (= (and b!4308172 res!1765767) b!4308174))

(assert (= (or b!4308172 b!4308174 b!4308167) bm!297072))

(assert (= (or b!4308174 b!4308167) bm!297071))

(declare-fun m!4901395 () Bool)

(assert (=> b!4308172 m!4901395))

(declare-fun m!4901397 () Bool)

(assert (=> b!4308173 m!4901397))

(declare-fun m!4901399 () Bool)

(assert (=> b!4308169 m!4901399))

(assert (=> bm!297071 m!4901163))

(declare-fun m!4901401 () Bool)

(assert (=> bm!297072 m!4901401))

(declare-fun m!4901403 () Bool)

(assert (=> d!1267834 m!4901403))

(assert (=> d!1267834 m!4901327))

(declare-fun m!4901405 () Bool)

(assert (=> b!4308174 m!4901405))

(declare-fun m!4901407 () Bool)

(assert (=> b!4308171 m!4901407))

(assert (=> b!4308011 d!1267834))

(declare-fun d!1267836 () Bool)

(declare-fun lt!1528923 () Bool)

(assert (=> d!1267836 (= lt!1528923 (contains!10117 (map!10129 (v!42253 (underlying!9500 thiss!42308))) lt!1528754))))

(declare-fun contains!10119 (LongMapFixedSize!9270 (_ BitVec 64)) Bool)

(assert (=> d!1267836 (= lt!1528923 (contains!10119 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308)))) lt!1528754))))

(assert (=> d!1267836 (valid!3625 (v!42253 (underlying!9500 thiss!42308)))))

(assert (=> d!1267836 (= (contains!10114 (v!42253 (underlying!9500 thiss!42308)) lt!1528754) lt!1528923)))

(declare-fun bs!604950 () Bool)

(assert (= bs!604950 d!1267836))

(assert (=> bs!604950 m!4901163))

(assert (=> bs!604950 m!4901163))

(declare-fun m!4901409 () Bool)

(assert (=> bs!604950 m!4901409))

(declare-fun m!4901411 () Bool)

(assert (=> bs!604950 m!4901411))

(assert (=> bs!604950 m!4901327))

(assert (=> b!4308011 d!1267836))

(declare-fun d!1267838 () Bool)

(declare-fun hash!984 (Hashable!4551 K!9334) (_ BitVec 64))

(assert (=> d!1267838 (= (hash!979 (hashF!6661 thiss!42308) key!2048) (hash!984 (hashF!6661 thiss!42308) key!2048))))

(declare-fun bs!604951 () Bool)

(assert (= bs!604951 d!1267838))

(declare-fun m!4901413 () Bool)

(assert (=> bs!604951 m!4901413))

(assert (=> b!4308011 d!1267838))

(declare-fun mapIsEmpty!20728 () Bool)

(declare-fun mapRes!20728 () Bool)

(assert (=> mapIsEmpty!20728 mapRes!20728))

(declare-fun condMapEmpty!20728 () Bool)

(declare-fun mapDefault!20728 () List!48271)

(assert (=> mapNonEmpty!20725 (= condMapEmpty!20728 (= mapRest!20725 ((as const (Array (_ BitVec 32) List!48271)) mapDefault!20728)))))

(declare-fun e!2679033 () Bool)

(assert (=> mapNonEmpty!20725 (= tp!1323882 (and e!2679033 mapRes!20728))))

(declare-fun e!2679034 () Bool)

(declare-fun tp!1323893 () Bool)

(declare-fun b!4308182 () Bool)

(assert (=> b!4308182 (= e!2679034 (and tp_is_empty!23663 tp_is_empty!23661 tp!1323893))))

(declare-fun mapNonEmpty!20728 () Bool)

(declare-fun tp!1323891 () Bool)

(assert (=> mapNonEmpty!20728 (= mapRes!20728 (and tp!1323891 e!2679034))))

(declare-fun mapRest!20728 () (Array (_ BitVec 32) List!48271))

(declare-fun mapValue!20728 () List!48271)

(declare-fun mapKey!20728 () (_ BitVec 32))

(assert (=> mapNonEmpty!20728 (= mapRest!20725 (store mapRest!20728 mapKey!20728 mapValue!20728))))

(declare-fun tp!1323892 () Bool)

(declare-fun b!4308183 () Bool)

(assert (=> b!4308183 (= e!2679033 (and tp_is_empty!23663 tp_is_empty!23661 tp!1323892))))

(assert (= (and mapNonEmpty!20725 condMapEmpty!20728) mapIsEmpty!20728))

(assert (= (and mapNonEmpty!20725 (not condMapEmpty!20728)) mapNonEmpty!20728))

(assert (= (and mapNonEmpty!20728 ((_ is Cons!48147) mapValue!20728)) b!4308182))

(assert (= (and mapNonEmpty!20725 ((_ is Cons!48147) mapDefault!20728)) b!4308183))

(declare-fun m!4901415 () Bool)

(assert (=> mapNonEmpty!20728 m!4901415))

(declare-fun e!2679037 () Bool)

(declare-fun b!4308188 () Bool)

(declare-fun tp!1323896 () Bool)

(assert (=> b!4308188 (= e!2679037 (and tp_is_empty!23663 tp_is_empty!23661 tp!1323896))))

(assert (=> mapNonEmpty!20725 (= tp!1323881 e!2679037)))

(assert (= (and mapNonEmpty!20725 ((_ is Cons!48147) mapValue!20725)) b!4308188))

(declare-fun tp!1323897 () Bool)

(declare-fun e!2679038 () Bool)

(declare-fun b!4308189 () Bool)

(assert (=> b!4308189 (= e!2679038 (and tp_is_empty!23663 tp_is_empty!23661 tp!1323897))))

(assert (=> b!4308001 (= tp!1323879 e!2679038)))

(assert (= (and b!4308001 ((_ is Cons!48147) mapDefault!20725)) b!4308189))

(declare-fun tp!1323898 () Bool)

(declare-fun e!2679039 () Bool)

(declare-fun b!4308190 () Bool)

(assert (=> b!4308190 (= e!2679039 (and tp_is_empty!23663 tp_is_empty!23661 tp!1323898))))

(assert (=> b!4308010 (= tp!1323884 e!2679039)))

(assert (= (and b!4308010 ((_ is Cons!48147) (zeroValue!4894 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308))))))) b!4308190))

(declare-fun e!2679040 () Bool)

(declare-fun b!4308191 () Bool)

(declare-fun tp!1323899 () Bool)

(assert (=> b!4308191 (= e!2679040 (and tp_is_empty!23663 tp_is_empty!23661 tp!1323899))))

(assert (=> b!4308010 (= tp!1323880 e!2679040)))

(assert (= (and b!4308010 ((_ is Cons!48147) (minValue!4894 (v!42252 (underlying!9499 (v!42253 (underlying!9500 thiss!42308))))))) b!4308191))

(declare-fun b_lambda!126577 () Bool)

(assert (= b_lambda!126575 (or (and b!4308010 b_free!128499) b_lambda!126577)))

(declare-fun b_lambda!126579 () Bool)

(assert (= b_lambda!126573 (or b!4308004 b_lambda!126579)))

(declare-fun bs!604952 () Bool)

(declare-fun d!1267840 () Bool)

(assert (= bs!604952 (and d!1267840 b!4308004)))

(assert (=> bs!604952 (= (dynLambda!20419 lambda!132754 (h!53581 (toList!2362 lt!1528747))) (noDuplicateKeys!199 (_2!26516 (h!53581 (toList!2362 lt!1528747)))))))

(declare-fun m!4901417 () Bool)

(assert (=> bs!604952 m!4901417))

(assert (=> b!4308029 d!1267840))

(declare-fun b_lambda!126581 () Bool)

(assert (= b_lambda!126571 (or b!4308004 b_lambda!126581)))

(declare-fun bs!604953 () Bool)

(declare-fun d!1267842 () Bool)

(assert (= bs!604953 (and d!1267842 b!4308004)))

(assert (=> bs!604953 (= (dynLambda!20419 lambda!132754 (h!53581 (toList!2362 lt!1528739))) (noDuplicateKeys!199 (_2!26516 (h!53581 (toList!2362 lt!1528739)))))))

(declare-fun m!4901419 () Bool)

(assert (=> bs!604953 m!4901419))

(assert (=> b!4308025 d!1267842))

(check-sat (not b!4308054) (not b_next!129205) (not b!4308080) (not b!4308055) (not d!1267836) (not b!4308078) (not b!4308049) (not b!4308065) (not b!4308052) (not d!1267814) (not d!1267780) (not bs!604952) (not b!4308146) (not d!1267774) (not b_lambda!126577) b_and!339915 (not d!1267810) (not d!1267832) (not bm!297063) (not d!1267834) (not b!4308089) (not d!1267794) (not b!4308188) (not b!4308183) (not b!4308114) (not d!1267828) (not bm!297072) (not b!4308075) (not d!1267772) (not b!4308026) (not b!4308109) (not d!1267826) (not d!1267802) (not b!4308051) (not b!4308169) (not b!4308027) (not d!1267786) tp_is_empty!23661 (not b!4308189) (not b!4308028) (not b!4308067) (not d!1267792) (not bm!297065) (not bm!297062) (not d!1267830) (not d!1267770) (not b!4308173) (not d!1267806) (not b_lambda!126581) (not b!4308082) (not b!4308182) (not b!4308145) (not b!4308060) (not b!4308077) (not b!4308081) (not b!4308102) (not d!1267820) (not bm!297061) (not d!1267818) (not b!4308050) (not bm!297047) (not bm!297066) (not b!4308172) (not b!4308030) (not d!1267816) (not d!1267784) (not d!1267788) (not b!4308171) (not b!4308148) b_and!339913 (not bm!297064) (not b!4308074) (not b!4308147) (not d!1267790) (not b!4308056) (not b!4308019) (not tb!257283) (not d!1267800) (not b_lambda!126579) (not bs!604953) (not b!4308174) (not d!1267798) (not d!1267838) (not d!1267804) (not b!4308190) (not b!4308088) (not d!1267812) (not bm!297071) (not b!4308138) (not mapNonEmpty!20728) (not b!4308073) (not b!4308191) (not b!4308020) (not b!4308076) (not b!4308108) (not b_next!129203) (not d!1267808) (not bm!297048) (not d!1267778) tp_is_empty!23663)
(check-sat b_and!339915 b_and!339913 (not b_next!129205) (not b_next!129203))
