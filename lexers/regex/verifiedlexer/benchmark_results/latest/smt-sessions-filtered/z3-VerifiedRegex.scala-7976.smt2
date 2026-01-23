; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413976 () Bool)

(assert start!413976)

(declare-fun b!4307914 () Bool)

(declare-fun b_free!128491 () Bool)

(declare-fun b_next!129195 () Bool)

(assert (=> b!4307914 (= b_free!128491 (not b_next!129195))))

(declare-fun tp!1323836 () Bool)

(declare-fun b_and!339903 () Bool)

(assert (=> b!4307914 (= tp!1323836 b_and!339903)))

(declare-fun b!4307907 () Bool)

(declare-fun b_free!128493 () Bool)

(declare-fun b_next!129197 () Bool)

(assert (=> b!4307907 (= b_free!128493 (not b_next!129197))))

(declare-fun tp!1323842 () Bool)

(declare-fun b_and!339905 () Bool)

(assert (=> b!4307907 (= tp!1323842 b_and!339905)))

(declare-fun b!4307903 () Bool)

(declare-datatypes ((K!9329 0))(
  ( (K!9330 (val!15721 Int)) )
))
(declare-datatypes ((V!9531 0))(
  ( (V!9532 (val!15722 Int)) )
))
(declare-datatypes ((tuple2!46460 0))(
  ( (tuple2!46461 (_1!26509 K!9329) (_2!26509 V!9531)) )
))
(declare-datatypes ((List!48267 0))(
  ( (Nil!48143) (Cons!48143 (h!53576 tuple2!46460) (t!355064 List!48267)) )
))
(declare-fun e!2678849 () List!48267)

(assert (=> b!4307903 (= e!2678849 Nil!48143)))

(declare-fun b!4307905 () Bool)

(declare-fun e!2678845 () Bool)

(declare-fun e!2678843 () Bool)

(declare-datatypes ((array!16686 0))(
  ( (array!16687 (arr!7451 (Array (_ BitVec 32) (_ BitVec 64))) (size!35490 (_ BitVec 32))) )
))
(declare-datatypes ((array!16688 0))(
  ( (array!16689 (arr!7452 (Array (_ BitVec 32) List!48267)) (size!35491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9266 0))(
  ( (LongMapFixedSize!9267 (defaultEntry!5018 Int) (mask!13178 (_ BitVec 32)) (extraKeys!4882 (_ BitVec 32)) (zeroValue!4892 List!48267) (minValue!4892 List!48267) (_size!9309 (_ BitVec 32)) (_keys!4933 array!16686) (_values!4914 array!16688) (_vacant!4694 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18341 0))(
  ( (Cell!18342 (v!42248 LongMapFixedSize!9266)) )
))
(declare-datatypes ((MutLongMap!4633 0))(
  ( (LongMap!4633 (underlying!9495 Cell!18341)) (MutLongMapExt!4632 (__x!29924 Int)) )
))
(declare-fun lt!1528625 () MutLongMap!4633)

(get-info :version)

(assert (=> b!4307905 (= e!2678845 (and e!2678843 ((_ is LongMap!4633) lt!1528625)))))

(declare-datatypes ((Hashable!4549 0))(
  ( (HashableExt!4548 (__x!29925 Int)) )
))
(declare-datatypes ((Cell!18343 0))(
  ( (Cell!18344 (v!42249 MutLongMap!4633)) )
))
(declare-datatypes ((MutableMap!4539 0))(
  ( (MutableMapExt!4538 (__x!29926 Int)) (HashMap!4539 (underlying!9496 Cell!18343) (hashF!6659 Hashable!4549) (_size!9310 (_ BitVec 32)) (defaultValue!4710 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4539)

(assert (=> b!4307905 (= lt!1528625 (v!42249 (underlying!9496 thiss!42308)))))

(declare-fun b!4307906 () Bool)

(declare-fun e!2678844 () Bool)

(declare-datatypes ((tuple2!46462 0))(
  ( (tuple2!46463 (_1!26510 (_ BitVec 64)) (_2!26510 List!48267)) )
))
(declare-datatypes ((List!48268 0))(
  ( (Nil!48144) (Cons!48144 (h!53577 tuple2!46462) (t!355065 List!48268)) )
))
(declare-datatypes ((ListLongMap!971 0))(
  ( (ListLongMap!972 (toList!2358 List!48268)) )
))
(declare-fun lt!1528613 () ListLongMap!971)

(declare-fun allKeysSameHashInMap!325 (ListLongMap!971 Hashable!4549) Bool)

(assert (=> b!4307906 (= e!2678844 (allKeysSameHashInMap!325 lt!1528613 (hashF!6659 thiss!42308)))))

(declare-fun e!2678836 () Bool)

(assert (=> b!4307907 (= e!2678836 (and e!2678845 tp!1323842))))

(declare-fun b!4307908 () Bool)

(declare-datatypes ((Unit!67192 0))(
  ( (Unit!67193) )
))
(declare-fun e!2678837 () Unit!67192)

(declare-fun Unit!67194 () Unit!67192)

(assert (=> b!4307908 (= e!2678837 Unit!67194)))

(declare-fun b!4307909 () Bool)

(declare-fun lt!1528614 () (_ BitVec 64))

(declare-fun apply!10989 (MutLongMap!4633 (_ BitVec 64)) List!48267)

(assert (=> b!4307909 (= e!2678849 (apply!10989 (v!42249 (underlying!9496 thiss!42308)) lt!1528614))))

(declare-fun mapNonEmpty!20719 () Bool)

(declare-fun mapRes!20719 () Bool)

(declare-fun tp!1323837 () Bool)

(declare-fun tp!1323839 () Bool)

(assert (=> mapNonEmpty!20719 (= mapRes!20719 (and tp!1323837 tp!1323839))))

(declare-fun mapKey!20719 () (_ BitVec 32))

(declare-fun mapRest!20719 () (Array (_ BitVec 32) List!48267))

(declare-fun mapValue!20719 () List!48267)

(assert (=> mapNonEmpty!20719 (= (arr!7452 (_values!4914 (v!42248 (underlying!9495 (v!42249 (underlying!9496 thiss!42308)))))) (store mapRest!20719 mapKey!20719 mapValue!20719))))

(declare-fun b!4307910 () Bool)

(declare-fun e!2678839 () Bool)

(declare-fun e!2678847 () Bool)

(assert (=> b!4307910 (= e!2678839 e!2678847)))

(declare-fun b!4307911 () Bool)

(declare-fun e!2678846 () Bool)

(declare-fun e!2678841 () Bool)

(assert (=> b!4307911 (= e!2678846 e!2678841)))

(declare-fun res!1765664 () Bool)

(assert (=> b!4307911 (=> (not res!1765664) (not e!2678841))))

(declare-datatypes ((tuple2!46464 0))(
  ( (tuple2!46465 (_1!26511 Bool) (_2!26511 MutLongMap!4633)) )
))
(declare-fun lt!1528627 () tuple2!46464)

(assert (=> b!4307911 (= res!1765664 (_1!26511 lt!1528627))))

(declare-fun lt!1528616 () List!48267)

(declare-fun update!413 (MutLongMap!4633 (_ BitVec 64) List!48267) tuple2!46464)

(assert (=> b!4307911 (= lt!1528627 (update!413 (v!42249 (underlying!9496 thiss!42308)) lt!1528614 lt!1528616))))

(declare-fun lt!1528621 () tuple2!46460)

(declare-fun lt!1528629 () List!48267)

(assert (=> b!4307911 (= lt!1528616 (Cons!48143 lt!1528621 lt!1528629))))

(declare-fun key!2048 () K!9329)

(declare-fun v!9179 () V!9531)

(assert (=> b!4307911 (= lt!1528621 (tuple2!46461 key!2048 v!9179))))

(assert (=> b!4307911 (= lt!1528629 e!2678849)))

(declare-fun c!732428 () Bool)

(declare-fun contains!10107 (MutLongMap!4633 (_ BitVec 64)) Bool)

(assert (=> b!4307911 (= c!732428 (contains!10107 (v!42249 (underlying!9496 thiss!42308)) lt!1528614))))

(declare-fun hash!977 (Hashable!4549 K!9329) (_ BitVec 64))

(assert (=> b!4307911 (= lt!1528614 (hash!977 (hashF!6659 thiss!42308) key!2048))))

(declare-fun b!4307912 () Bool)

(declare-fun lt!1528626 () Unit!67192)

(assert (=> b!4307912 (= e!2678837 lt!1528626)))

(declare-fun lt!1528611 () Unit!67192)

(declare-fun lt!1528619 () ListLongMap!971)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!163 (List!48268 (_ BitVec 64) List!48267 Hashable!4549) Unit!67192)

(assert (=> b!4307912 (= lt!1528611 (lemmaInLongMapAllKeySameHashThenForTuple!163 (toList!2358 lt!1528619) lt!1528614 lt!1528629 (hashF!6659 thiss!42308)))))

(declare-fun allKeysSameHash!173 (List!48267 (_ BitVec 64) Hashable!4549) Bool)

(assert (=> b!4307912 (allKeysSameHash!173 lt!1528629 lt!1528614 (hashF!6659 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!157 (List!48267 K!9329 (_ BitVec 64) Hashable!4549) Unit!67192)

(assert (=> b!4307912 (= lt!1528626 (lemmaRemovePairForKeyPreservesHash!157 lt!1528629 key!2048 lt!1528614 (hashF!6659 thiss!42308)))))

(declare-fun removePairForKey!197 (List!48267 K!9329) List!48267)

(assert (=> b!4307912 (allKeysSameHash!173 (removePairForKey!197 lt!1528629 key!2048) lt!1528614 (hashF!6659 thiss!42308))))

(declare-fun b!4307913 () Bool)

(declare-fun e!2678838 () Bool)

(declare-fun lt!1528622 () ListLongMap!971)

(assert (=> b!4307913 (= e!2678838 (allKeysSameHashInMap!325 lt!1528622 (hashF!6659 thiss!42308)))))

(declare-fun res!1765667 () Bool)

(declare-fun e!2678848 () Bool)

(assert (=> start!413976 (=> (not res!1765667) (not e!2678848))))

(assert (=> start!413976 (= res!1765667 ((_ is HashMap!4539) thiss!42308))))

(assert (=> start!413976 e!2678848))

(assert (=> start!413976 e!2678836))

(declare-fun tp_is_empty!23653 () Bool)

(assert (=> start!413976 tp_is_empty!23653))

(declare-fun tp_is_empty!23655 () Bool)

(assert (=> start!413976 tp_is_empty!23655))

(declare-fun b!4307904 () Bool)

(assert (=> b!4307904 (= e!2678848 e!2678846)))

(declare-fun res!1765666 () Bool)

(assert (=> b!4307904 (=> (not res!1765666) (not e!2678846))))

(declare-fun contains!10108 (MutableMap!4539 K!9329) Bool)

(assert (=> b!4307904 (= res!1765666 (not (contains!10108 thiss!42308 key!2048)))))

(declare-fun map!10124 (MutLongMap!4633) ListLongMap!971)

(assert (=> b!4307904 (= lt!1528619 (map!10124 (v!42249 (underlying!9496 thiss!42308))))))

(declare-datatypes ((ListMap!1639 0))(
  ( (ListMap!1640 (toList!2359 List!48267)) )
))
(declare-fun lt!1528618 () ListMap!1639)

(declare-fun map!10125 (MutableMap!4539) ListMap!1639)

(assert (=> b!4307904 (= lt!1528618 (map!10125 thiss!42308))))

(declare-fun tp!1323838 () Bool)

(declare-fun e!2678840 () Bool)

(declare-fun tp!1323841 () Bool)

(declare-fun array_inv!5343 (array!16686) Bool)

(declare-fun array_inv!5344 (array!16688) Bool)

(assert (=> b!4307914 (= e!2678847 (and tp!1323836 tp!1323838 tp!1323841 (array_inv!5343 (_keys!4933 (v!42248 (underlying!9495 (v!42249 (underlying!9496 thiss!42308)))))) (array_inv!5344 (_values!4914 (v!42248 (underlying!9495 (v!42249 (underlying!9496 thiss!42308)))))) e!2678840))))

(declare-fun b!4307915 () Bool)

(assert (=> b!4307915 (= e!2678843 e!2678839)))

(declare-fun b!4307916 () Bool)

(assert (=> b!4307916 (= e!2678841 (not true))))

(declare-fun lt!1528623 () Bool)

(declare-fun lt!1528617 () Bool)

(assert (=> b!4307916 (and (= lt!1528623 lt!1528617) lt!1528617)))

(declare-fun lt!1528630 () ListMap!1639)

(declare-fun contains!10109 (ListMap!1639 K!9329) Bool)

(assert (=> b!4307916 (= lt!1528617 (contains!10109 lt!1528630 key!2048))))

(declare-fun lt!1528615 () ListMap!1639)

(assert (=> b!4307916 (= lt!1528623 (contains!10109 lt!1528615 key!2048))))

(declare-fun lt!1528624 () Unit!67192)

(declare-fun lemmaEquivalentThenSameContains!49 (ListMap!1639 ListMap!1639 K!9329) Unit!67192)

(assert (=> b!4307916 (= lt!1528624 (lemmaEquivalentThenSameContains!49 lt!1528615 lt!1528630 key!2048))))

(declare-fun eq!133 (ListMap!1639 ListMap!1639) Bool)

(assert (=> b!4307916 (eq!133 lt!1528615 lt!1528630)))

(declare-fun +!246 (ListMap!1639 tuple2!46460) ListMap!1639)

(assert (=> b!4307916 (= lt!1528630 (+!246 lt!1528618 lt!1528621))))

(assert (=> b!4307916 (= lt!1528615 (map!10125 (HashMap!4539 (Cell!18344 (_2!26511 lt!1528627)) (hashF!6659 thiss!42308) (_size!9310 thiss!42308) (defaultValue!4710 thiss!42308))))))

(assert (=> b!4307916 e!2678838))

(declare-fun res!1765663 () Bool)

(assert (=> b!4307916 (=> (not res!1765663) (not e!2678838))))

(declare-fun lambda!132744 () Int)

(declare-fun forall!8715 (List!48268 Int) Bool)

(assert (=> b!4307916 (= res!1765663 (forall!8715 (toList!2358 lt!1528622) lambda!132744))))

(assert (=> b!4307916 (= lt!1528622 (map!10124 (_2!26511 lt!1528627)))))

(declare-fun extractMap!316 (List!48268) ListMap!1639)

(assert (=> b!4307916 (eq!133 (extractMap!316 (toList!2358 lt!1528613)) (+!246 (extractMap!316 (toList!2358 lt!1528619)) lt!1528621))))

(declare-fun lt!1528628 () Unit!67192)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!50 (ListLongMap!971 (_ BitVec 64) List!48267 K!9329 V!9531 Hashable!4549) Unit!67192)

(assert (=> b!4307916 (= lt!1528628 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!50 lt!1528619 lt!1528614 lt!1528616 key!2048 v!9179 (hashF!6659 thiss!42308)))))

(assert (=> b!4307916 e!2678844))

(declare-fun res!1765665 () Bool)

(assert (=> b!4307916 (=> (not res!1765665) (not e!2678844))))

(assert (=> b!4307916 (= res!1765665 (forall!8715 (toList!2358 lt!1528613) lambda!132744))))

(declare-fun +!247 (ListLongMap!971 tuple2!46462) ListLongMap!971)

(assert (=> b!4307916 (= lt!1528613 (+!247 lt!1528619 (tuple2!46463 lt!1528614 lt!1528616)))))

(declare-fun lt!1528620 () Unit!67192)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!139 (ListLongMap!971 (_ BitVec 64) List!48267 Hashable!4549) Unit!67192)

(assert (=> b!4307916 (= lt!1528620 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!139 lt!1528619 lt!1528614 lt!1528616 (hashF!6659 thiss!42308)))))

(declare-fun lt!1528612 () Unit!67192)

(assert (=> b!4307916 (= lt!1528612 e!2678837)))

(declare-fun c!732427 () Bool)

(declare-fun isEmpty!28076 (List!48267) Bool)

(assert (=> b!4307916 (= c!732427 (not (isEmpty!28076 lt!1528629)))))

(declare-fun b!4307917 () Bool)

(declare-fun res!1765668 () Bool)

(assert (=> b!4307917 (=> (not res!1765668) (not e!2678848))))

(declare-fun valid!3623 (MutableMap!4539) Bool)

(assert (=> b!4307917 (= res!1765668 (valid!3623 thiss!42308))))

(declare-fun b!4307918 () Bool)

(declare-fun tp!1323840 () Bool)

(assert (=> b!4307918 (= e!2678840 (and tp!1323840 mapRes!20719))))

(declare-fun condMapEmpty!20719 () Bool)

(declare-fun mapDefault!20719 () List!48267)

(assert (=> b!4307918 (= condMapEmpty!20719 (= (arr!7452 (_values!4914 (v!42248 (underlying!9495 (v!42249 (underlying!9496 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48267)) mapDefault!20719)))))

(declare-fun mapIsEmpty!20719 () Bool)

(assert (=> mapIsEmpty!20719 mapRes!20719))

(assert (= (and start!413976 res!1765667) b!4307917))

(assert (= (and b!4307917 res!1765668) b!4307904))

(assert (= (and b!4307904 res!1765666) b!4307911))

(assert (= (and b!4307911 c!732428) b!4307909))

(assert (= (and b!4307911 (not c!732428)) b!4307903))

(assert (= (and b!4307911 res!1765664) b!4307916))

(assert (= (and b!4307916 c!732427) b!4307912))

(assert (= (and b!4307916 (not c!732427)) b!4307908))

(assert (= (and b!4307916 res!1765665) b!4307906))

(assert (= (and b!4307916 res!1765663) b!4307913))

(assert (= (and b!4307918 condMapEmpty!20719) mapIsEmpty!20719))

(assert (= (and b!4307918 (not condMapEmpty!20719)) mapNonEmpty!20719))

(assert (= b!4307914 b!4307918))

(assert (= b!4307910 b!4307914))

(assert (= b!4307915 b!4307910))

(assert (= (and b!4307905 ((_ is LongMap!4633) (v!42249 (underlying!9496 thiss!42308)))) b!4307915))

(assert (= b!4307907 b!4307905))

(assert (= (and start!413976 ((_ is HashMap!4539) thiss!42308)) b!4307907))

(declare-fun m!4900953 () Bool)

(assert (=> b!4307913 m!4900953))

(declare-fun m!4900955 () Bool)

(assert (=> b!4307916 m!4900955))

(declare-fun m!4900957 () Bool)

(assert (=> b!4307916 m!4900957))

(declare-fun m!4900959 () Bool)

(assert (=> b!4307916 m!4900959))

(declare-fun m!4900961 () Bool)

(assert (=> b!4307916 m!4900961))

(declare-fun m!4900963 () Bool)

(assert (=> b!4307916 m!4900963))

(declare-fun m!4900965 () Bool)

(assert (=> b!4307916 m!4900965))

(declare-fun m!4900967 () Bool)

(assert (=> b!4307916 m!4900967))

(declare-fun m!4900969 () Bool)

(assert (=> b!4307916 m!4900969))

(declare-fun m!4900971 () Bool)

(assert (=> b!4307916 m!4900971))

(declare-fun m!4900973 () Bool)

(assert (=> b!4307916 m!4900973))

(declare-fun m!4900975 () Bool)

(assert (=> b!4307916 m!4900975))

(assert (=> b!4307916 m!4900969))

(declare-fun m!4900977 () Bool)

(assert (=> b!4307916 m!4900977))

(declare-fun m!4900979 () Bool)

(assert (=> b!4307916 m!4900979))

(assert (=> b!4307916 m!4900963))

(assert (=> b!4307916 m!4900971))

(declare-fun m!4900981 () Bool)

(assert (=> b!4307916 m!4900981))

(declare-fun m!4900983 () Bool)

(assert (=> b!4307916 m!4900983))

(declare-fun m!4900985 () Bool)

(assert (=> b!4307916 m!4900985))

(declare-fun m!4900987 () Bool)

(assert (=> b!4307916 m!4900987))

(declare-fun m!4900989 () Bool)

(assert (=> b!4307909 m!4900989))

(declare-fun m!4900991 () Bool)

(assert (=> mapNonEmpty!20719 m!4900991))

(declare-fun m!4900993 () Bool)

(assert (=> b!4307912 m!4900993))

(declare-fun m!4900995 () Bool)

(assert (=> b!4307912 m!4900995))

(declare-fun m!4900997 () Bool)

(assert (=> b!4307912 m!4900997))

(declare-fun m!4900999 () Bool)

(assert (=> b!4307912 m!4900999))

(declare-fun m!4901001 () Bool)

(assert (=> b!4307912 m!4901001))

(assert (=> b!4307912 m!4900995))

(declare-fun m!4901003 () Bool)

(assert (=> b!4307911 m!4901003))

(declare-fun m!4901005 () Bool)

(assert (=> b!4307911 m!4901005))

(declare-fun m!4901007 () Bool)

(assert (=> b!4307911 m!4901007))

(declare-fun m!4901009 () Bool)

(assert (=> b!4307904 m!4901009))

(declare-fun m!4901011 () Bool)

(assert (=> b!4307904 m!4901011))

(declare-fun m!4901013 () Bool)

(assert (=> b!4307904 m!4901013))

(declare-fun m!4901015 () Bool)

(assert (=> b!4307906 m!4901015))

(declare-fun m!4901017 () Bool)

(assert (=> b!4307917 m!4901017))

(declare-fun m!4901019 () Bool)

(assert (=> b!4307914 m!4901019))

(declare-fun m!4901021 () Bool)

(assert (=> b!4307914 m!4901021))

(check-sat (not b!4307918) tp_is_empty!23653 tp_is_empty!23655 (not b!4307912) (not b_next!129197) (not b!4307906) (not b!4307911) (not b!4307909) (not b!4307913) (not mapNonEmpty!20719) b_and!339903 (not b!4307904) (not b!4307914) (not b_next!129195) (not b!4307916) (not b!4307917) b_and!339905)
(check-sat b_and!339903 b_and!339905 (not b_next!129197) (not b_next!129195))
