; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413548 () Bool)

(assert start!413548)

(declare-fun b!4304646 () Bool)

(declare-fun b_free!128299 () Bool)

(declare-fun b_next!129003 () Bool)

(assert (=> b!4304646 (= b_free!128299 (not b_next!129003))))

(declare-fun tp!1322698 () Bool)

(declare-fun b_and!339697 () Bool)

(assert (=> b!4304646 (= tp!1322698 b_and!339697)))

(declare-fun b!4304647 () Bool)

(declare-fun b_free!128301 () Bool)

(declare-fun b_next!129005 () Bool)

(assert (=> b!4304647 (= b_free!128301 (not b_next!129005))))

(declare-fun tp!1322697 () Bool)

(declare-fun b_and!339699 () Bool)

(assert (=> b!4304647 (= tp!1322697 b_and!339699)))

(declare-fun b!4304645 () Bool)

(declare-fun e!2676371 () Bool)

(assert (=> b!4304645 (= e!2676371 false)))

(declare-fun lt!1526233 () (_ BitVec 64))

(declare-datatypes ((V!9411 0))(
  ( (V!9412 (val!15625 Int)) )
))
(declare-fun v!9179 () V!9411)

(declare-datatypes ((K!9209 0))(
  ( (K!9210 (val!15626 Int)) )
))
(declare-datatypes ((tuple2!46224 0))(
  ( (tuple2!46225 (_1!26391 K!9209) (_2!26391 V!9411)) )
))
(declare-datatypes ((List!48181 0))(
  ( (Nil!48057) (Cons!48057 (h!53484 tuple2!46224) (t!354964 List!48181)) )
))
(declare-datatypes ((array!16476 0))(
  ( (array!16477 (arr!7355 (Array (_ BitVec 32) (_ BitVec 64))) (size!35394 (_ BitVec 32))) )
))
(declare-datatypes ((array!16478 0))(
  ( (array!16479 (arr!7356 (Array (_ BitVec 32) List!48181)) (size!35395 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9170 0))(
  ( (LongMapFixedSize!9171 (defaultEntry!4970 Int) (mask!13106 (_ BitVec 32)) (extraKeys!4834 (_ BitVec 32)) (zeroValue!4844 List!48181) (minValue!4844 List!48181) (_size!9213 (_ BitVec 32)) (_keys!4885 array!16476) (_values!4866 array!16478) (_vacant!4646 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18149 0))(
  ( (Cell!18150 (v!42100 LongMapFixedSize!9170)) )
))
(declare-datatypes ((MutLongMap!4585 0))(
  ( (LongMap!4585 (underlying!9399 Cell!18149)) (MutLongMapExt!4584 (__x!29780 Int)) )
))
(declare-datatypes ((tuple2!46226 0))(
  ( (tuple2!46227 (_1!26392 Bool) (_2!26392 MutLongMap!4585)) )
))
(declare-fun lt!1526235 () tuple2!46226)

(declare-fun key!2048 () K!9209)

(declare-datatypes ((Hashable!4501 0))(
  ( (HashableExt!4500 (__x!29781 Int)) )
))
(declare-datatypes ((Cell!18151 0))(
  ( (Cell!18152 (v!42101 MutLongMap!4585)) )
))
(declare-datatypes ((MutableMap!4491 0))(
  ( (MutableMapExt!4490 (__x!29782 Int)) (HashMap!4491 (underlying!9400 Cell!18151) (hashF!6575 Hashable!4501) (_size!9214 (_ BitVec 32)) (defaultValue!4662 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4491)

(declare-fun update!382 (MutLongMap!4585 (_ BitVec 64) List!48181) tuple2!46226)

(declare-fun removePairForKey!178 (List!48181 K!9209) List!48181)

(declare-fun apply!10940 (MutLongMap!4585 (_ BitVec 64)) List!48181)

(assert (=> b!4304645 (= lt!1526235 (update!382 (v!42101 (underlying!9400 thiss!42308)) lt!1526233 (Cons!48057 (tuple2!46225 key!2048 v!9179) (removePairForKey!178 (apply!10940 (v!42101 (underlying!9400 thiss!42308)) lt!1526233) key!2048))))))

(declare-fun hash!914 (Hashable!4501 K!9209) (_ BitVec 64))

(assert (=> b!4304645 (= lt!1526233 (hash!914 (hashF!6575 thiss!42308) key!2048))))

(declare-fun e!2676374 () Bool)

(declare-fun e!2676375 () Bool)

(declare-fun tp!1322696 () Bool)

(declare-fun tp!1322695 () Bool)

(declare-fun array_inv!5279 (array!16476) Bool)

(declare-fun array_inv!5280 (array!16478) Bool)

(assert (=> b!4304646 (= e!2676374 (and tp!1322698 tp!1322695 tp!1322696 (array_inv!5279 (_keys!4885 (v!42100 (underlying!9399 (v!42101 (underlying!9400 thiss!42308)))))) (array_inv!5280 (_values!4866 (v!42100 (underlying!9399 (v!42101 (underlying!9400 thiss!42308)))))) e!2676375))))

(declare-fun e!2676367 () Bool)

(declare-fun e!2676372 () Bool)

(assert (=> b!4304647 (= e!2676367 (and e!2676372 tp!1322697))))

(declare-fun b!4304648 () Bool)

(declare-fun tp!1322694 () Bool)

(declare-fun mapRes!20548 () Bool)

(assert (=> b!4304648 (= e!2676375 (and tp!1322694 mapRes!20548))))

(declare-fun condMapEmpty!20548 () Bool)

(declare-fun mapDefault!20548 () List!48181)

(assert (=> b!4304648 (= condMapEmpty!20548 (= (arr!7356 (_values!4866 (v!42100 (underlying!9399 (v!42101 (underlying!9400 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48181)) mapDefault!20548)))))

(declare-fun b!4304649 () Bool)

(declare-fun e!2676369 () Bool)

(declare-fun lt!1526236 () MutLongMap!4585)

(get-info :version)

(assert (=> b!4304649 (= e!2676372 (and e!2676369 ((_ is LongMap!4585) lt!1526236)))))

(assert (=> b!4304649 (= lt!1526236 (v!42101 (underlying!9400 thiss!42308)))))

(declare-fun b!4304650 () Bool)

(declare-fun e!2676368 () Bool)

(assert (=> b!4304650 (= e!2676368 e!2676371)))

(declare-fun res!1764395 () Bool)

(assert (=> b!4304650 (=> (not res!1764395) (not e!2676371))))

(declare-fun contains!9993 (MutableMap!4491 K!9209) Bool)

(assert (=> b!4304650 (= res!1764395 (contains!9993 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46228 0))(
  ( (tuple2!46229 (_1!26393 (_ BitVec 64)) (_2!26393 List!48181)) )
))
(declare-datatypes ((List!48182 0))(
  ( (Nil!48058) (Cons!48058 (h!53485 tuple2!46228) (t!354965 List!48182)) )
))
(declare-datatypes ((ListLongMap!895 0))(
  ( (ListLongMap!896 (toList!2286 List!48182)) )
))
(declare-fun lt!1526237 () ListLongMap!895)

(declare-fun map!10026 (MutLongMap!4585) ListLongMap!895)

(assert (=> b!4304650 (= lt!1526237 (map!10026 (v!42101 (underlying!9400 thiss!42308))))))

(declare-datatypes ((ListMap!1571 0))(
  ( (ListMap!1572 (toList!2287 List!48181)) )
))
(declare-fun lt!1526234 () ListMap!1571)

(declare-fun map!10027 (MutableMap!4491) ListMap!1571)

(assert (=> b!4304650 (= lt!1526234 (map!10027 thiss!42308))))

(declare-fun b!4304651 () Bool)

(declare-fun e!2676373 () Bool)

(assert (=> b!4304651 (= e!2676373 e!2676374)))

(declare-fun res!1764396 () Bool)

(assert (=> start!413548 (=> (not res!1764396) (not e!2676368))))

(assert (=> start!413548 (= res!1764396 ((_ is HashMap!4491) thiss!42308))))

(assert (=> start!413548 e!2676368))

(assert (=> start!413548 e!2676367))

(declare-fun tp_is_empty!23479 () Bool)

(assert (=> start!413548 tp_is_empty!23479))

(declare-fun tp_is_empty!23481 () Bool)

(assert (=> start!413548 tp_is_empty!23481))

(declare-fun b!4304652 () Bool)

(declare-fun res!1764397 () Bool)

(assert (=> b!4304652 (=> (not res!1764397) (not e!2676368))))

(declare-fun valid!3570 (MutableMap!4491) Bool)

(assert (=> b!4304652 (= res!1764397 (valid!3570 thiss!42308))))

(declare-fun mapNonEmpty!20548 () Bool)

(declare-fun tp!1322699 () Bool)

(declare-fun tp!1322693 () Bool)

(assert (=> mapNonEmpty!20548 (= mapRes!20548 (and tp!1322699 tp!1322693))))

(declare-fun mapRest!20548 () (Array (_ BitVec 32) List!48181))

(declare-fun mapValue!20548 () List!48181)

(declare-fun mapKey!20548 () (_ BitVec 32))

(assert (=> mapNonEmpty!20548 (= (arr!7356 (_values!4866 (v!42100 (underlying!9399 (v!42101 (underlying!9400 thiss!42308)))))) (store mapRest!20548 mapKey!20548 mapValue!20548))))

(declare-fun b!4304653 () Bool)

(assert (=> b!4304653 (= e!2676369 e!2676373)))

(declare-fun mapIsEmpty!20548 () Bool)

(assert (=> mapIsEmpty!20548 mapRes!20548))

(assert (= (and start!413548 res!1764396) b!4304652))

(assert (= (and b!4304652 res!1764397) b!4304650))

(assert (= (and b!4304650 res!1764395) b!4304645))

(assert (= (and b!4304648 condMapEmpty!20548) mapIsEmpty!20548))

(assert (= (and b!4304648 (not condMapEmpty!20548)) mapNonEmpty!20548))

(assert (= b!4304646 b!4304648))

(assert (= b!4304651 b!4304646))

(assert (= b!4304653 b!4304651))

(assert (= (and b!4304649 ((_ is LongMap!4585) (v!42101 (underlying!9400 thiss!42308)))) b!4304653))

(assert (= b!4304647 b!4304649))

(assert (= (and start!413548 ((_ is HashMap!4491) thiss!42308)) b!4304647))

(declare-fun m!4897651 () Bool)

(assert (=> b!4304652 m!4897651))

(declare-fun m!4897653 () Bool)

(assert (=> b!4304645 m!4897653))

(assert (=> b!4304645 m!4897653))

(declare-fun m!4897655 () Bool)

(assert (=> b!4304645 m!4897655))

(declare-fun m!4897657 () Bool)

(assert (=> b!4304645 m!4897657))

(declare-fun m!4897659 () Bool)

(assert (=> b!4304645 m!4897659))

(declare-fun m!4897661 () Bool)

(assert (=> b!4304646 m!4897661))

(declare-fun m!4897663 () Bool)

(assert (=> b!4304646 m!4897663))

(declare-fun m!4897665 () Bool)

(assert (=> mapNonEmpty!20548 m!4897665))

(declare-fun m!4897667 () Bool)

(assert (=> b!4304650 m!4897667))

(declare-fun m!4897669 () Bool)

(assert (=> b!4304650 m!4897669))

(declare-fun m!4897671 () Bool)

(assert (=> b!4304650 m!4897671))

(check-sat (not mapNonEmpty!20548) b_and!339699 b_and!339697 tp_is_empty!23479 (not b!4304645) (not b!4304646) (not b!4304648) tp_is_empty!23481 (not b!4304650) (not b_next!129003) (not b_next!129005) (not b!4304652))
(check-sat b_and!339697 b_and!339699 (not b_next!129005) (not b_next!129003))
