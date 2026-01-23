; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414276 () Bool)

(assert start!414276)

(declare-fun b!4310575 () Bool)

(declare-fun b_free!128627 () Bool)

(declare-fun b_next!129331 () Bool)

(assert (=> b!4310575 (= b_free!128627 (not b_next!129331))))

(declare-fun tp!1324654 () Bool)

(declare-fun b_and!340059 () Bool)

(assert (=> b!4310575 (= tp!1324654 b_and!340059)))

(declare-fun b!4310573 () Bool)

(declare-fun b_free!128629 () Bool)

(declare-fun b_next!129333 () Bool)

(assert (=> b!4310573 (= b_free!128629 (not b_next!129333))))

(declare-fun tp!1324653 () Bool)

(declare-fun b_and!340061 () Bool)

(assert (=> b!4310573 (= tp!1324653 b_and!340061)))

(declare-fun e!2680853 () Bool)

(declare-fun e!2680856 () Bool)

(assert (=> b!4310573 (= e!2680853 (and e!2680856 tp!1324653))))

(declare-fun tp!1324655 () Bool)

(declare-fun e!2680859 () Bool)

(declare-fun tp!1324652 () Bool)

(declare-fun e!2680857 () Bool)

(declare-datatypes ((V!9616 0))(
  ( (V!9617 (val!15789 Int)) )
))
(declare-datatypes ((K!9414 0))(
  ( (K!9415 (val!15790 Int)) )
))
(declare-datatypes ((tuple2!46664 0))(
  ( (tuple2!46665 (_1!26612 K!9414) (_2!26612 V!9616)) )
))
(declare-datatypes ((List!48328 0))(
  ( (Nil!48204) (Cons!48204 (h!53641 tuple2!46664) (t!355139 List!48328)) )
))
(declare-datatypes ((array!16834 0))(
  ( (array!16835 (arr!7519 (Array (_ BitVec 32) (_ BitVec 64))) (size!35558 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4583 0))(
  ( (HashableExt!4582 (__x!30026 Int)) )
))
(declare-datatypes ((array!16836 0))(
  ( (array!16837 (arr!7520 (Array (_ BitVec 32) List!48328)) (size!35559 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9334 0))(
  ( (LongMapFixedSize!9335 (defaultEntry!5052 Int) (mask!13229 (_ BitVec 32)) (extraKeys!4916 (_ BitVec 32)) (zeroValue!4926 List!48328) (minValue!4926 List!48328) (_size!9377 (_ BitVec 32)) (_keys!4967 array!16834) (_values!4948 array!16836) (_vacant!4728 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18477 0))(
  ( (Cell!18478 (v!42361 LongMapFixedSize!9334)) )
))
(declare-datatypes ((MutLongMap!4667 0))(
  ( (LongMap!4667 (underlying!9563 Cell!18477)) (MutLongMapExt!4666 (__x!30027 Int)) )
))
(declare-datatypes ((Cell!18479 0))(
  ( (Cell!18480 (v!42362 MutLongMap!4667)) )
))
(declare-datatypes ((MutableMap!4573 0))(
  ( (MutableMapExt!4572 (__x!30028 Int)) (HashMap!4573 (underlying!9564 Cell!18479) (hashF!6708 Hashable!4583) (_size!9378 (_ BitVec 32)) (defaultValue!4744 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4573)

(declare-fun array_inv!5397 (array!16834) Bool)

(declare-fun array_inv!5398 (array!16836) Bool)

(assert (=> b!4310575 (= e!2680859 (and tp!1324654 tp!1324655 tp!1324652 (array_inv!5397 (_keys!4967 (v!42361 (underlying!9563 (v!42362 (underlying!9564 thiss!42308)))))) (array_inv!5398 (_values!4948 (v!42361 (underlying!9563 (v!42362 (underlying!9564 thiss!42308)))))) e!2680857))))

(declare-fun b!4310576 () Bool)

(declare-fun e!2680855 () Bool)

(declare-fun e!2680850 () Bool)

(assert (=> b!4310576 (= e!2680855 e!2680850)))

(declare-fun b!4310577 () Bool)

(assert (=> b!4310577 (= e!2680850 e!2680859)))

(declare-fun b!4310578 () Bool)

(declare-fun e!2680858 () Bool)

(declare-fun e!2680854 () Bool)

(assert (=> b!4310578 (= e!2680858 e!2680854)))

(declare-fun res!1766619 () Bool)

(assert (=> b!4310578 (=> (not res!1766619) (not e!2680854))))

(declare-fun lt!1531038 () (_ BitVec 64))

(declare-fun v!9179 () V!9616)

(declare-fun lt!1531041 () List!48328)

(declare-fun key!2048 () K!9414)

(declare-datatypes ((tuple2!46666 0))(
  ( (tuple2!46667 (_1!26613 Bool) (_2!26613 MutLongMap!4667)) )
))
(declare-fun update!440 (MutLongMap!4667 (_ BitVec 64) List!48328) tuple2!46666)

(assert (=> b!4310578 (= res!1766619 (_1!26613 (update!440 (v!42362 (underlying!9564 thiss!42308)) lt!1531038 (Cons!48204 (tuple2!46665 key!2048 v!9179) lt!1531041))))))

(declare-fun lt!1531045 () List!48328)

(declare-fun removePairForKey!214 (List!48328 K!9414) List!48328)

(assert (=> b!4310578 (= lt!1531041 (removePairForKey!214 lt!1531045 key!2048))))

(declare-fun apply!11021 (MutLongMap!4667 (_ BitVec 64)) List!48328)

(assert (=> b!4310578 (= lt!1531045 (apply!11021 (v!42362 (underlying!9564 thiss!42308)) lt!1531038))))

(declare-fun hash!1013 (Hashable!4583 K!9414) (_ BitVec 64))

(assert (=> b!4310578 (= lt!1531038 (hash!1013 (hashF!6708 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!20840 () Bool)

(declare-fun mapRes!20840 () Bool)

(assert (=> mapIsEmpty!20840 mapRes!20840))

(declare-fun b!4310579 () Bool)

(declare-fun tp!1324650 () Bool)

(assert (=> b!4310579 (= e!2680857 (and tp!1324650 mapRes!20840))))

(declare-fun condMapEmpty!20840 () Bool)

(declare-fun mapDefault!20840 () List!48328)

(assert (=> b!4310579 (= condMapEmpty!20840 (= (arr!7520 (_values!4948 (v!42361 (underlying!9563 (v!42362 (underlying!9564 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48328)) mapDefault!20840)))))

(declare-fun res!1766618 () Bool)

(declare-fun e!2680851 () Bool)

(assert (=> start!414276 (=> (not res!1766618) (not e!2680851))))

(get-info :version)

(assert (=> start!414276 (= res!1766618 ((_ is HashMap!4573) thiss!42308))))

(assert (=> start!414276 e!2680851))

(assert (=> start!414276 e!2680853))

(declare-fun tp_is_empty!23773 () Bool)

(assert (=> start!414276 tp_is_empty!23773))

(declare-fun tp_is_empty!23775 () Bool)

(assert (=> start!414276 tp_is_empty!23775))

(declare-fun b!4310574 () Bool)

(assert (=> b!4310574 (= e!2680851 e!2680858)))

(declare-fun res!1766621 () Bool)

(assert (=> b!4310574 (=> (not res!1766621) (not e!2680858))))

(declare-fun contains!10182 (MutableMap!4573 K!9414) Bool)

(assert (=> b!4310574 (= res!1766621 (contains!10182 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46668 0))(
  ( (tuple2!46669 (_1!26614 (_ BitVec 64)) (_2!26614 List!48328)) )
))
(declare-datatypes ((List!48329 0))(
  ( (Nil!48205) (Cons!48205 (h!53642 tuple2!46668) (t!355140 List!48329)) )
))
(declare-datatypes ((ListLongMap!1021 0))(
  ( (ListLongMap!1022 (toList!2409 List!48329)) )
))
(declare-fun lt!1531044 () ListLongMap!1021)

(declare-fun map!10197 (MutLongMap!4667) ListLongMap!1021)

(assert (=> b!4310574 (= lt!1531044 (map!10197 (v!42362 (underlying!9564 thiss!42308))))))

(declare-datatypes ((ListMap!1691 0))(
  ( (ListMap!1692 (toList!2410 List!48328)) )
))
(declare-fun lt!1531040 () ListMap!1691)

(declare-fun map!10198 (MutableMap!4573) ListMap!1691)

(assert (=> b!4310574 (= lt!1531040 (map!10198 thiss!42308))))

(declare-fun b!4310580 () Bool)

(assert (=> b!4310580 (= e!2680854 (not true))))

(declare-fun noDuplicateKeys!213 (List!48328) Bool)

(assert (=> b!4310580 (noDuplicateKeys!213 lt!1531041)))

(declare-datatypes ((Unit!67332 0))(
  ( (Unit!67333) )
))
(declare-fun lt!1531043 () Unit!67332)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!164 (List!48328 K!9414) Unit!67332)

(assert (=> b!4310580 (= lt!1531043 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!164 lt!1531045 key!2048))))

(declare-fun allKeysSameHash!189 (List!48328 (_ BitVec 64) Hashable!4583) Bool)

(assert (=> b!4310580 (allKeysSameHash!189 lt!1531041 lt!1531038 (hashF!6708 thiss!42308))))

(declare-fun lt!1531046 () Unit!67332)

(declare-fun lemmaRemovePairForKeyPreservesHash!169 (List!48328 K!9414 (_ BitVec 64) Hashable!4583) Unit!67332)

(assert (=> b!4310580 (= lt!1531046 (lemmaRemovePairForKeyPreservesHash!169 lt!1531045 key!2048 lt!1531038 (hashF!6708 thiss!42308)))))

(assert (=> b!4310580 (allKeysSameHash!189 lt!1531045 lt!1531038 (hashF!6708 thiss!42308))))

(declare-fun lt!1531042 () Unit!67332)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!176 (List!48329 (_ BitVec 64) List!48328 Hashable!4583) Unit!67332)

(assert (=> b!4310580 (= lt!1531042 (lemmaInLongMapAllKeySameHashThenForTuple!176 (toList!2409 lt!1531044) lt!1531038 lt!1531045 (hashF!6708 thiss!42308)))))

(declare-fun b!4310581 () Bool)

(declare-fun res!1766620 () Bool)

(assert (=> b!4310581 (=> (not res!1766620) (not e!2680851))))

(declare-fun valid!3657 (MutableMap!4573) Bool)

(assert (=> b!4310581 (= res!1766620 (valid!3657 thiss!42308))))

(declare-fun mapNonEmpty!20840 () Bool)

(declare-fun tp!1324656 () Bool)

(declare-fun tp!1324651 () Bool)

(assert (=> mapNonEmpty!20840 (= mapRes!20840 (and tp!1324656 tp!1324651))))

(declare-fun mapKey!20840 () (_ BitVec 32))

(declare-fun mapRest!20840 () (Array (_ BitVec 32) List!48328))

(declare-fun mapValue!20840 () List!48328)

(assert (=> mapNonEmpty!20840 (= (arr!7520 (_values!4948 (v!42361 (underlying!9563 (v!42362 (underlying!9564 thiss!42308)))))) (store mapRest!20840 mapKey!20840 mapValue!20840))))

(declare-fun b!4310582 () Bool)

(declare-fun lt!1531039 () MutLongMap!4667)

(assert (=> b!4310582 (= e!2680856 (and e!2680855 ((_ is LongMap!4667) lt!1531039)))))

(assert (=> b!4310582 (= lt!1531039 (v!42362 (underlying!9564 thiss!42308)))))

(assert (= (and start!414276 res!1766618) b!4310581))

(assert (= (and b!4310581 res!1766620) b!4310574))

(assert (= (and b!4310574 res!1766621) b!4310578))

(assert (= (and b!4310578 res!1766619) b!4310580))

(assert (= (and b!4310579 condMapEmpty!20840) mapIsEmpty!20840))

(assert (= (and b!4310579 (not condMapEmpty!20840)) mapNonEmpty!20840))

(assert (= b!4310575 b!4310579))

(assert (= b!4310577 b!4310575))

(assert (= b!4310576 b!4310577))

(assert (= (and b!4310582 ((_ is LongMap!4667) (v!42362 (underlying!9564 thiss!42308)))) b!4310576))

(assert (= b!4310573 b!4310582))

(assert (= (and start!414276 ((_ is HashMap!4573) thiss!42308)) b!4310573))

(declare-fun m!4903487 () Bool)

(assert (=> b!4310578 m!4903487))

(declare-fun m!4903489 () Bool)

(assert (=> b!4310578 m!4903489))

(declare-fun m!4903491 () Bool)

(assert (=> b!4310578 m!4903491))

(declare-fun m!4903493 () Bool)

(assert (=> b!4310578 m!4903493))

(declare-fun m!4903495 () Bool)

(assert (=> b!4310575 m!4903495))

(declare-fun m!4903497 () Bool)

(assert (=> b!4310575 m!4903497))

(declare-fun m!4903499 () Bool)

(assert (=> mapNonEmpty!20840 m!4903499))

(declare-fun m!4903501 () Bool)

(assert (=> b!4310581 m!4903501))

(declare-fun m!4903503 () Bool)

(assert (=> b!4310580 m!4903503))

(declare-fun m!4903505 () Bool)

(assert (=> b!4310580 m!4903505))

(declare-fun m!4903507 () Bool)

(assert (=> b!4310580 m!4903507))

(declare-fun m!4903509 () Bool)

(assert (=> b!4310580 m!4903509))

(declare-fun m!4903511 () Bool)

(assert (=> b!4310580 m!4903511))

(declare-fun m!4903513 () Bool)

(assert (=> b!4310580 m!4903513))

(declare-fun m!4903515 () Bool)

(assert (=> b!4310574 m!4903515))

(declare-fun m!4903517 () Bool)

(assert (=> b!4310574 m!4903517))

(declare-fun m!4903519 () Bool)

(assert (=> b!4310574 m!4903519))

(check-sat tp_is_empty!23775 tp_is_empty!23773 (not b!4310580) b_and!340061 (not mapNonEmpty!20840) (not b!4310578) b_and!340059 (not b!4310579) (not b_next!129331) (not b!4310574) (not b!4310575) (not b!4310581) (not b_next!129333))
(check-sat b_and!340059 b_and!340061 (not b_next!129333) (not b_next!129331))
