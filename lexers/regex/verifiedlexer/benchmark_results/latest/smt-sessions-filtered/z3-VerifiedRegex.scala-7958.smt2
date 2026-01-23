; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413604 () Bool)

(assert start!413604)

(declare-fun b!4305121 () Bool)

(declare-fun b_free!128347 () Bool)

(declare-fun b_next!129051 () Bool)

(assert (=> b!4305121 (= b_free!128347 (not b_next!129051))))

(declare-fun tp!1322976 () Bool)

(declare-fun b_and!339745 () Bool)

(assert (=> b!4305121 (= tp!1322976 b_and!339745)))

(declare-fun b!4305129 () Bool)

(declare-fun b_free!128349 () Bool)

(declare-fun b_next!129053 () Bool)

(assert (=> b!4305129 (= b_free!128349 (not b_next!129053))))

(declare-fun tp!1322978 () Bool)

(declare-fun b_and!339747 () Bool)

(assert (=> b!4305129 (= tp!1322978 b_and!339747)))

(declare-fun b!4305119 () Bool)

(declare-fun e!2676776 () Bool)

(declare-fun e!2676779 () Bool)

(declare-datatypes ((V!9441 0))(
  ( (V!9442 (val!15649 Int)) )
))
(declare-datatypes ((K!9239 0))(
  ( (K!9240 (val!15650 Int)) )
))
(declare-datatypes ((tuple2!46266 0))(
  ( (tuple2!46267 (_1!26412 K!9239) (_2!26412 V!9441)) )
))
(declare-datatypes ((List!48200 0))(
  ( (Nil!48076) (Cons!48076 (h!53503 tuple2!46266) (t!354983 List!48200)) )
))
(declare-datatypes ((array!16528 0))(
  ( (array!16529 (arr!7379 (Array (_ BitVec 32) (_ BitVec 64))) (size!35418 (_ BitVec 32))) )
))
(declare-datatypes ((array!16530 0))(
  ( (array!16531 (arr!7380 (Array (_ BitVec 32) List!48200)) (size!35419 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9194 0))(
  ( (LongMapFixedSize!9195 (defaultEntry!4982 Int) (mask!13124 (_ BitVec 32)) (extraKeys!4846 (_ BitVec 32)) (zeroValue!4856 List!48200) (minValue!4856 List!48200) (_size!9237 (_ BitVec 32)) (_keys!4897 array!16528) (_values!4878 array!16530) (_vacant!4658 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18197 0))(
  ( (Cell!18198 (v!42128 LongMapFixedSize!9194)) )
))
(declare-datatypes ((MutLongMap!4597 0))(
  ( (LongMap!4597 (underlying!9423 Cell!18197)) (MutLongMapExt!4596 (__x!29816 Int)) )
))
(declare-fun lt!1526496 () MutLongMap!4597)

(get-info :version)

(assert (=> b!4305119 (= e!2676776 (and e!2676779 ((_ is LongMap!4597) lt!1526496)))))

(declare-datatypes ((Hashable!4513 0))(
  ( (HashableExt!4512 (__x!29817 Int)) )
))
(declare-datatypes ((Cell!18199 0))(
  ( (Cell!18200 (v!42129 MutLongMap!4597)) )
))
(declare-datatypes ((MutableMap!4503 0))(
  ( (MutableMapExt!4502 (__x!29818 Int)) (HashMap!4503 (underlying!9424 Cell!18199) (hashF!6587 Hashable!4513) (_size!9238 (_ BitVec 32)) (defaultValue!4674 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4503)

(assert (=> b!4305119 (= lt!1526496 (v!42129 (underlying!9424 thiss!42308)))))

(declare-fun b!4305120 () Bool)

(declare-fun e!2676777 () Bool)

(assert (=> b!4305120 (= e!2676777 (not ((_ is LongMap!4597) (v!42129 (underlying!9424 thiss!42308)))))))

(declare-fun lt!1526494 () List!48200)

(declare-fun e!2676778 () List!48200)

(assert (=> b!4305120 (= lt!1526494 e!2676778)))

(declare-fun c!732017 () Bool)

(declare-fun lt!1526498 () (_ BitVec 64))

(declare-fun contains!10011 (MutLongMap!4597 (_ BitVec 64)) Bool)

(assert (=> b!4305120 (= c!732017 (contains!10011 (v!42129 (underlying!9424 thiss!42308)) lt!1526498))))

(declare-fun key!2048 () K!9239)

(declare-fun hash!921 (Hashable!4513 K!9239) (_ BitVec 64))

(assert (=> b!4305120 (= lt!1526498 (hash!921 (hashF!6587 thiss!42308) key!2048))))

(declare-fun e!2676780 () Bool)

(declare-fun e!2676774 () Bool)

(declare-fun tp!1322977 () Bool)

(declare-fun tp!1322975 () Bool)

(declare-fun array_inv!5293 (array!16528) Bool)

(declare-fun array_inv!5294 (array!16530) Bool)

(assert (=> b!4305121 (= e!2676774 (and tp!1322976 tp!1322977 tp!1322975 (array_inv!5293 (_keys!4897 (v!42128 (underlying!9423 (v!42129 (underlying!9424 thiss!42308)))))) (array_inv!5294 (_values!4878 (v!42128 (underlying!9423 (v!42129 (underlying!9424 thiss!42308)))))) e!2676780))))

(declare-fun b!4305122 () Bool)

(declare-fun e!2676775 () Bool)

(assert (=> b!4305122 (= e!2676775 e!2676777)))

(declare-fun res!1764563 () Bool)

(assert (=> b!4305122 (=> (not res!1764563) (not e!2676777))))

(declare-fun contains!10012 (MutableMap!4503 K!9239) Bool)

(assert (=> b!4305122 (= res!1764563 (not (contains!10012 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46268 0))(
  ( (tuple2!46269 (_1!26413 (_ BitVec 64)) (_2!26413 List!48200)) )
))
(declare-datatypes ((List!48201 0))(
  ( (Nil!48077) (Cons!48077 (h!53504 tuple2!46268) (t!354984 List!48201)) )
))
(declare-datatypes ((ListLongMap!909 0))(
  ( (ListLongMap!910 (toList!2300 List!48201)) )
))
(declare-fun lt!1526495 () ListLongMap!909)

(declare-fun map!10048 (MutLongMap!4597) ListLongMap!909)

(assert (=> b!4305122 (= lt!1526495 (map!10048 (v!42129 (underlying!9424 thiss!42308))))))

(declare-datatypes ((ListMap!1585 0))(
  ( (ListMap!1586 (toList!2301 List!48200)) )
))
(declare-fun lt!1526497 () ListMap!1585)

(declare-fun map!10049 (MutableMap!4503) ListMap!1585)

(assert (=> b!4305122 (= lt!1526497 (map!10049 thiss!42308))))

(declare-fun b!4305123 () Bool)

(declare-fun e!2676782 () Bool)

(assert (=> b!4305123 (= e!2676782 e!2676774)))

(declare-fun b!4305124 () Bool)

(declare-fun res!1764565 () Bool)

(assert (=> b!4305124 (=> (not res!1764565) (not e!2676775))))

(declare-fun valid!3584 (MutableMap!4503) Bool)

(assert (=> b!4305124 (= res!1764565 (valid!3584 thiss!42308))))

(declare-fun b!4305125 () Bool)

(assert (=> b!4305125 (= e!2676779 e!2676782)))

(declare-fun res!1764564 () Bool)

(assert (=> start!413604 (=> (not res!1764564) (not e!2676775))))

(assert (=> start!413604 (= res!1764564 ((_ is HashMap!4503) thiss!42308))))

(assert (=> start!413604 e!2676775))

(declare-fun e!2676781 () Bool)

(assert (=> start!413604 e!2676781))

(declare-fun tp_is_empty!23513 () Bool)

(assert (=> start!413604 tp_is_empty!23513))

(declare-fun b!4305126 () Bool)

(declare-fun apply!10946 (MutLongMap!4597 (_ BitVec 64)) List!48200)

(assert (=> b!4305126 (= e!2676778 (apply!10946 (v!42129 (underlying!9424 thiss!42308)) lt!1526498))))

(declare-fun mapNonEmpty!20590 () Bool)

(declare-fun mapRes!20590 () Bool)

(declare-fun tp!1322981 () Bool)

(declare-fun tp!1322980 () Bool)

(assert (=> mapNonEmpty!20590 (= mapRes!20590 (and tp!1322981 tp!1322980))))

(declare-fun mapKey!20590 () (_ BitVec 32))

(declare-fun mapValue!20590 () List!48200)

(declare-fun mapRest!20590 () (Array (_ BitVec 32) List!48200))

(assert (=> mapNonEmpty!20590 (= (arr!7380 (_values!4878 (v!42128 (underlying!9423 (v!42129 (underlying!9424 thiss!42308)))))) (store mapRest!20590 mapKey!20590 mapValue!20590))))

(declare-fun b!4305127 () Bool)

(declare-fun tp!1322979 () Bool)

(assert (=> b!4305127 (= e!2676780 (and tp!1322979 mapRes!20590))))

(declare-fun condMapEmpty!20590 () Bool)

(declare-fun mapDefault!20590 () List!48200)

(assert (=> b!4305127 (= condMapEmpty!20590 (= (arr!7380 (_values!4878 (v!42128 (underlying!9423 (v!42129 (underlying!9424 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48200)) mapDefault!20590)))))

(declare-fun mapIsEmpty!20590 () Bool)

(assert (=> mapIsEmpty!20590 mapRes!20590))

(declare-fun b!4305128 () Bool)

(assert (=> b!4305128 (= e!2676778 Nil!48076)))

(assert (=> b!4305129 (= e!2676781 (and e!2676776 tp!1322978))))

(assert (= (and start!413604 res!1764564) b!4305124))

(assert (= (and b!4305124 res!1764565) b!4305122))

(assert (= (and b!4305122 res!1764563) b!4305120))

(assert (= (and b!4305120 c!732017) b!4305126))

(assert (= (and b!4305120 (not c!732017)) b!4305128))

(assert (= (and b!4305127 condMapEmpty!20590) mapIsEmpty!20590))

(assert (= (and b!4305127 (not condMapEmpty!20590)) mapNonEmpty!20590))

(assert (= b!4305121 b!4305127))

(assert (= b!4305123 b!4305121))

(assert (= b!4305125 b!4305123))

(assert (= (and b!4305119 ((_ is LongMap!4597) (v!42129 (underlying!9424 thiss!42308)))) b!4305125))

(assert (= b!4305129 b!4305119))

(assert (= (and start!413604 ((_ is HashMap!4503) thiss!42308)) b!4305129))

(declare-fun m!4898005 () Bool)

(assert (=> b!4305122 m!4898005))

(declare-fun m!4898007 () Bool)

(assert (=> b!4305122 m!4898007))

(declare-fun m!4898009 () Bool)

(assert (=> b!4305122 m!4898009))

(declare-fun m!4898011 () Bool)

(assert (=> b!4305126 m!4898011))

(declare-fun m!4898013 () Bool)

(assert (=> b!4305120 m!4898013))

(declare-fun m!4898015 () Bool)

(assert (=> b!4305120 m!4898015))

(declare-fun m!4898017 () Bool)

(assert (=> b!4305124 m!4898017))

(declare-fun m!4898019 () Bool)

(assert (=> mapNonEmpty!20590 m!4898019))

(declare-fun m!4898021 () Bool)

(assert (=> b!4305121 m!4898021))

(declare-fun m!4898023 () Bool)

(assert (=> b!4305121 m!4898023))

(check-sat (not b!4305120) (not b!4305126) (not b!4305121) (not mapNonEmpty!20590) b_and!339745 (not b_next!129053) tp_is_empty!23513 b_and!339747 (not b!4305122) (not b!4305127) (not b_next!129051) (not b!4305124))
(check-sat b_and!339745 b_and!339747 (not b_next!129053) (not b_next!129051))
