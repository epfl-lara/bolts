; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414434 () Bool)

(assert start!414434)

(declare-fun b!4311495 () Bool)

(declare-fun b_free!128675 () Bool)

(declare-fun b_next!129379 () Bool)

(assert (=> b!4311495 (= b_free!128675 (not b_next!129379))))

(declare-fun tp!1324968 () Bool)

(declare-fun b_and!340115 () Bool)

(assert (=> b!4311495 (= tp!1324968 b_and!340115)))

(declare-fun b!4311492 () Bool)

(declare-fun b_free!128677 () Bool)

(declare-fun b_next!129381 () Bool)

(assert (=> b!4311492 (= b_free!128677 (not b_next!129381))))

(declare-fun tp!1324964 () Bool)

(declare-fun b_and!340117 () Bool)

(assert (=> b!4311492 (= tp!1324964 b_and!340117)))

(declare-fun b!4311486 () Bool)

(declare-fun e!2681559 () Bool)

(declare-fun e!2681562 () Bool)

(assert (=> b!4311486 (= e!2681559 e!2681562)))

(declare-fun b!4311487 () Bool)

(declare-fun e!2681560 () Bool)

(declare-fun tp!1324962 () Bool)

(declare-fun mapRes!20888 () Bool)

(assert (=> b!4311487 (= e!2681560 (and tp!1324962 mapRes!20888))))

(declare-fun condMapEmpty!20888 () Bool)

(declare-datatypes ((V!9646 0))(
  ( (V!9647 (val!15813 Int)) )
))
(declare-datatypes ((K!9444 0))(
  ( (K!9445 (val!15814 Int)) )
))
(declare-datatypes ((tuple2!46730 0))(
  ( (tuple2!46731 (_1!26645 K!9444) (_2!26645 V!9646)) )
))
(declare-datatypes ((List!48350 0))(
  ( (Nil!48226) (Cons!48226 (h!53667 tuple2!46730) (t!355169 List!48350)) )
))
(declare-datatypes ((array!16890 0))(
  ( (array!16891 (arr!7543 (Array (_ BitVec 32) (_ BitVec 64))) (size!35582 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4595 0))(
  ( (HashableExt!4594 (__x!30062 Int)) )
))
(declare-datatypes ((array!16892 0))(
  ( (array!16893 (arr!7544 (Array (_ BitVec 32) List!48350)) (size!35583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9358 0))(
  ( (LongMapFixedSize!9359 (defaultEntry!5064 Int) (mask!13247 (_ BitVec 32)) (extraKeys!4928 (_ BitVec 32)) (zeroValue!4938 List!48350) (minValue!4938 List!48350) (_size!9401 (_ BitVec 32)) (_keys!4979 array!16890) (_values!4960 array!16892) (_vacant!4740 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18525 0))(
  ( (Cell!18526 (v!42409 LongMapFixedSize!9358)) )
))
(declare-datatypes ((MutLongMap!4679 0))(
  ( (LongMap!4679 (underlying!9587 Cell!18525)) (MutLongMapExt!4678 (__x!30063 Int)) )
))
(declare-datatypes ((Cell!18527 0))(
  ( (Cell!18528 (v!42410 MutLongMap!4679)) )
))
(declare-datatypes ((MutableMap!4585 0))(
  ( (MutableMapExt!4584 (__x!30064 Int)) (HashMap!4585 (underlying!9588 Cell!18527) (hashF!6733 Hashable!4595) (_size!9402 (_ BitVec 32)) (defaultValue!4756 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4585)

(declare-fun mapDefault!20888 () List!48350)

(assert (=> b!4311487 (= condMapEmpty!20888 (= (arr!7544 (_values!4960 (v!42409 (underlying!9587 (v!42410 (underlying!9588 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48350)) mapDefault!20888)))))

(declare-fun b!4311488 () Bool)

(declare-fun e!2681561 () Bool)

(declare-fun e!2681563 () Bool)

(assert (=> b!4311488 (= e!2681561 e!2681563)))

(declare-fun res!1766991 () Bool)

(assert (=> b!4311488 (=> (not res!1766991) (not e!2681563))))

(declare-fun key!2048 () K!9444)

(declare-fun contains!10208 (MutableMap!4585 K!9444) Bool)

(assert (=> b!4311488 (= res!1766991 (contains!10208 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46732 0))(
  ( (tuple2!46733 (_1!26646 (_ BitVec 64)) (_2!26646 List!48350)) )
))
(declare-datatypes ((List!48351 0))(
  ( (Nil!48227) (Cons!48227 (h!53668 tuple2!46732) (t!355170 List!48351)) )
))
(declare-datatypes ((ListLongMap!1041 0))(
  ( (ListLongMap!1042 (toList!2429 List!48351)) )
))
(declare-fun lt!1531761 () ListLongMap!1041)

(declare-fun map!10227 (MutLongMap!4679) ListLongMap!1041)

(assert (=> b!4311488 (= lt!1531761 (map!10227 (v!42410 (underlying!9588 thiss!42308))))))

(declare-datatypes ((ListMap!1711 0))(
  ( (ListMap!1712 (toList!2430 List!48350)) )
))
(declare-fun lt!1531764 () ListMap!1711)

(declare-fun map!10228 (MutableMap!4585) ListMap!1711)

(assert (=> b!4311488 (= lt!1531764 (map!10228 thiss!42308))))

(declare-fun res!1766990 () Bool)

(assert (=> start!414434 (=> (not res!1766990) (not e!2681561))))

(get-info :version)

(assert (=> start!414434 (= res!1766990 ((_ is HashMap!4585) thiss!42308))))

(assert (=> start!414434 e!2681561))

(declare-fun e!2681564 () Bool)

(assert (=> start!414434 e!2681564))

(declare-fun tp_is_empty!23821 () Bool)

(assert (=> start!414434 tp_is_empty!23821))

(declare-fun tp_is_empty!23823 () Bool)

(assert (=> start!414434 tp_is_empty!23823))

(declare-fun b!4311489 () Bool)

(declare-fun e!2681558 () Bool)

(declare-fun lt!1531765 () List!48350)

(declare-fun noDuplicateKeys!222 (List!48350) Bool)

(assert (=> b!4311489 (= e!2681558 (noDuplicateKeys!222 lt!1531765))))

(declare-fun b!4311490 () Bool)

(declare-fun e!2681565 () Bool)

(assert (=> b!4311490 (= e!2681565 e!2681559)))

(declare-fun mapIsEmpty!20888 () Bool)

(assert (=> mapIsEmpty!20888 mapRes!20888))

(declare-fun b!4311491 () Bool)

(declare-fun res!1766992 () Bool)

(assert (=> b!4311491 (=> (not res!1766992) (not e!2681558))))

(declare-fun lt!1531759 () List!48350)

(declare-fun containsKey!326 (List!48350 K!9444) Bool)

(assert (=> b!4311491 (= res!1766992 (not (containsKey!326 lt!1531759 key!2048)))))

(declare-fun e!2681557 () Bool)

(assert (=> b!4311492 (= e!2681564 (and e!2681557 tp!1324964))))

(declare-fun b!4311493 () Bool)

(declare-fun e!2681556 () Bool)

(declare-fun e!2681567 () Bool)

(assert (=> b!4311493 (= e!2681556 (not e!2681567))))

(declare-fun res!1766987 () Bool)

(assert (=> b!4311493 (=> res!1766987 e!2681567)))

(declare-fun lambda!133008 () Int)

(declare-fun forall!8742 (List!48351 Int) Bool)

(assert (=> b!4311493 (= res!1766987 (not (forall!8742 (toList!2429 lt!1531761) lambda!133008)))))

(assert (=> b!4311493 e!2681558))

(declare-fun res!1766989 () Bool)

(assert (=> b!4311493 (=> (not res!1766989) (not e!2681558))))

(assert (=> b!4311493 (= res!1766989 (noDuplicateKeys!222 lt!1531759))))

(declare-datatypes ((Unit!67364 0))(
  ( (Unit!67365) )
))
(declare-fun lt!1531762 () Unit!67364)

(declare-fun lt!1531760 () List!48350)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!170 (List!48350 K!9444) Unit!67364)

(assert (=> b!4311493 (= lt!1531762 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!170 lt!1531760 key!2048))))

(declare-fun lt!1531763 () (_ BitVec 64))

(declare-fun allKeysSameHash!195 (List!48350 (_ BitVec 64) Hashable!4595) Bool)

(assert (=> b!4311493 (allKeysSameHash!195 lt!1531759 lt!1531763 (hashF!6733 thiss!42308))))

(declare-fun lt!1531766 () Unit!67364)

(declare-fun lemmaRemovePairForKeyPreservesHash!175 (List!48350 K!9444 (_ BitVec 64) Hashable!4595) Unit!67364)

(assert (=> b!4311493 (= lt!1531766 (lemmaRemovePairForKeyPreservesHash!175 lt!1531760 key!2048 lt!1531763 (hashF!6733 thiss!42308)))))

(assert (=> b!4311493 (allKeysSameHash!195 lt!1531760 lt!1531763 (hashF!6733 thiss!42308))))

(declare-fun lt!1531757 () Unit!67364)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!182 (List!48351 (_ BitVec 64) List!48350 Hashable!4595) Unit!67364)

(assert (=> b!4311493 (= lt!1531757 (lemmaInLongMapAllKeySameHashThenForTuple!182 (toList!2429 lt!1531761) lt!1531763 lt!1531760 (hashF!6733 thiss!42308)))))

(declare-fun b!4311494 () Bool)

(declare-fun res!1766988 () Bool)

(assert (=> b!4311494 (=> (not res!1766988) (not e!2681561))))

(declare-fun valid!3669 (MutableMap!4585) Bool)

(assert (=> b!4311494 (= res!1766988 (valid!3669 thiss!42308))))

(declare-fun tp!1324966 () Bool)

(declare-fun tp!1324963 () Bool)

(declare-fun array_inv!5417 (array!16890) Bool)

(declare-fun array_inv!5418 (array!16892) Bool)

(assert (=> b!4311495 (= e!2681562 (and tp!1324968 tp!1324963 tp!1324966 (array_inv!5417 (_keys!4979 (v!42409 (underlying!9587 (v!42410 (underlying!9588 thiss!42308)))))) (array_inv!5418 (_values!4960 (v!42409 (underlying!9587 (v!42410 (underlying!9588 thiss!42308)))))) e!2681560))))

(declare-fun b!4311496 () Bool)

(assert (=> b!4311496 (= e!2681567 true)))

(declare-fun lt!1531756 () Bool)

(declare-fun allKeysSameHashInMap!343 (ListLongMap!1041 Hashable!4595) Bool)

(assert (=> b!4311496 (= lt!1531756 (allKeysSameHashInMap!343 lt!1531761 (hashF!6733 thiss!42308)))))

(declare-fun b!4311497 () Bool)

(declare-fun lt!1531758 () MutLongMap!4679)

(assert (=> b!4311497 (= e!2681557 (and e!2681565 ((_ is LongMap!4679) lt!1531758)))))

(assert (=> b!4311497 (= lt!1531758 (v!42410 (underlying!9588 thiss!42308)))))

(declare-fun mapNonEmpty!20888 () Bool)

(declare-fun tp!1324965 () Bool)

(declare-fun tp!1324967 () Bool)

(assert (=> mapNonEmpty!20888 (= mapRes!20888 (and tp!1324965 tp!1324967))))

(declare-fun mapValue!20888 () List!48350)

(declare-fun mapKey!20888 () (_ BitVec 32))

(declare-fun mapRest!20888 () (Array (_ BitVec 32) List!48350))

(assert (=> mapNonEmpty!20888 (= (arr!7544 (_values!4960 (v!42409 (underlying!9587 (v!42410 (underlying!9588 thiss!42308)))))) (store mapRest!20888 mapKey!20888 mapValue!20888))))

(declare-fun b!4311498 () Bool)

(assert (=> b!4311498 (= e!2681563 e!2681556)))

(declare-fun res!1766993 () Bool)

(assert (=> b!4311498 (=> (not res!1766993) (not e!2681556))))

(declare-datatypes ((tuple2!46734 0))(
  ( (tuple2!46735 (_1!26647 Bool) (_2!26647 MutLongMap!4679)) )
))
(declare-fun update!451 (MutLongMap!4679 (_ BitVec 64) List!48350) tuple2!46734)

(assert (=> b!4311498 (= res!1766993 (_1!26647 (update!451 (v!42410 (underlying!9588 thiss!42308)) lt!1531763 lt!1531765)))))

(declare-fun v!9179 () V!9646)

(assert (=> b!4311498 (= lt!1531765 (Cons!48226 (tuple2!46731 key!2048 v!9179) lt!1531759))))

(declare-fun removePairForKey!221 (List!48350 K!9444) List!48350)

(assert (=> b!4311498 (= lt!1531759 (removePairForKey!221 lt!1531760 key!2048))))

(declare-fun apply!11036 (MutLongMap!4679 (_ BitVec 64)) List!48350)

(assert (=> b!4311498 (= lt!1531760 (apply!11036 (v!42410 (underlying!9588 thiss!42308)) lt!1531763))))

(declare-fun hash!1032 (Hashable!4595 K!9444) (_ BitVec 64))

(assert (=> b!4311498 (= lt!1531763 (hash!1032 (hashF!6733 thiss!42308) key!2048))))

(assert (= (and start!414434 res!1766990) b!4311494))

(assert (= (and b!4311494 res!1766988) b!4311488))

(assert (= (and b!4311488 res!1766991) b!4311498))

(assert (= (and b!4311498 res!1766993) b!4311493))

(assert (= (and b!4311493 res!1766989) b!4311491))

(assert (= (and b!4311491 res!1766992) b!4311489))

(assert (= (and b!4311493 (not res!1766987)) b!4311496))

(assert (= (and b!4311487 condMapEmpty!20888) mapIsEmpty!20888))

(assert (= (and b!4311487 (not condMapEmpty!20888)) mapNonEmpty!20888))

(assert (= b!4311495 b!4311487))

(assert (= b!4311486 b!4311495))

(assert (= b!4311490 b!4311486))

(assert (= (and b!4311497 ((_ is LongMap!4679) (v!42410 (underlying!9588 thiss!42308)))) b!4311490))

(assert (= b!4311492 b!4311497))

(assert (= (and start!414434 ((_ is HashMap!4585) thiss!42308)) b!4311492))

(declare-fun m!4904435 () Bool)

(assert (=> b!4311493 m!4904435))

(declare-fun m!4904437 () Bool)

(assert (=> b!4311493 m!4904437))

(declare-fun m!4904439 () Bool)

(assert (=> b!4311493 m!4904439))

(declare-fun m!4904441 () Bool)

(assert (=> b!4311493 m!4904441))

(declare-fun m!4904443 () Bool)

(assert (=> b!4311493 m!4904443))

(declare-fun m!4904445 () Bool)

(assert (=> b!4311493 m!4904445))

(declare-fun m!4904447 () Bool)

(assert (=> b!4311493 m!4904447))

(declare-fun m!4904449 () Bool)

(assert (=> b!4311489 m!4904449))

(declare-fun m!4904451 () Bool)

(assert (=> b!4311488 m!4904451))

(declare-fun m!4904453 () Bool)

(assert (=> b!4311488 m!4904453))

(declare-fun m!4904455 () Bool)

(assert (=> b!4311488 m!4904455))

(declare-fun m!4904457 () Bool)

(assert (=> b!4311495 m!4904457))

(declare-fun m!4904459 () Bool)

(assert (=> b!4311495 m!4904459))

(declare-fun m!4904461 () Bool)

(assert (=> b!4311491 m!4904461))

(declare-fun m!4904463 () Bool)

(assert (=> b!4311494 m!4904463))

(declare-fun m!4904465 () Bool)

(assert (=> b!4311498 m!4904465))

(declare-fun m!4904467 () Bool)

(assert (=> b!4311498 m!4904467))

(declare-fun m!4904469 () Bool)

(assert (=> b!4311498 m!4904469))

(declare-fun m!4904471 () Bool)

(assert (=> b!4311498 m!4904471))

(declare-fun m!4904473 () Bool)

(assert (=> b!4311496 m!4904473))

(declare-fun m!4904475 () Bool)

(assert (=> mapNonEmpty!20888 m!4904475))

(check-sat tp_is_empty!23821 (not b!4311489) b_and!340115 (not b!4311494) (not mapNonEmpty!20888) (not b!4311496) (not b!4311493) (not b_next!129379) tp_is_empty!23823 (not b!4311495) (not b!4311487) (not b!4311491) b_and!340117 (not b_next!129381) (not b!4311488) (not b!4311498))
(check-sat b_and!340115 b_and!340117 (not b_next!129381) (not b_next!129379))
