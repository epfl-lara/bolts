; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497290 () Bool)

(assert start!497290)

(declare-fun b!4810534 () Bool)

(declare-fun b_free!130139 () Bool)

(declare-fun b_next!130929 () Bool)

(assert (=> b!4810534 (= b_free!130139 (not b_next!130929))))

(declare-fun tp!1360529 () Bool)

(declare-fun b_and!341923 () Bool)

(assert (=> b!4810534 (= tp!1360529 b_and!341923)))

(declare-fun b!4810532 () Bool)

(declare-fun b_free!130141 () Bool)

(declare-fun b_next!130931 () Bool)

(assert (=> b!4810532 (= b_free!130141 (not b_next!130931))))

(declare-fun tp!1360532 () Bool)

(declare-fun b_and!341925 () Bool)

(assert (=> b!4810532 (= tp!1360532 b_and!341925)))

(declare-fun mapIsEmpty!22316 () Bool)

(declare-fun mapRes!22316 () Bool)

(assert (=> mapIsEmpty!22316 mapRes!22316))

(declare-fun b!4810529 () Bool)

(declare-fun e!3005062 () Bool)

(declare-fun e!3005061 () Bool)

(declare-datatypes ((K!16139 0))(
  ( (K!16140 (val!21217 Int)) )
))
(declare-datatypes ((array!18570 0))(
  ( (array!18571 (arr!8283 (Array (_ BitVec 32) (_ BitVec 64))) (size!36529 (_ BitVec 32))) )
))
(declare-datatypes ((V!16385 0))(
  ( (V!16386 (val!21218 Int)) )
))
(declare-datatypes ((tuple2!57382 0))(
  ( (tuple2!57383 (_1!31985 K!16139) (_2!31985 V!16385)) )
))
(declare-datatypes ((List!54652 0))(
  ( (Nil!54528) (Cons!54528 (h!60960 tuple2!57382) (t!362132 List!54652)) )
))
(declare-datatypes ((array!18572 0))(
  ( (array!18573 (arr!8284 (Array (_ BitVec 32) List!54652)) (size!36530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10098 0))(
  ( (LongMapFixedSize!10099 (defaultEntry!5467 Int) (mask!15044 (_ BitVec 32)) (extraKeys!5324 (_ BitVec 32)) (zeroValue!5337 List!54652) (minValue!5337 List!54652) (_size!10123 (_ BitVec 32)) (_keys!5391 array!18570) (_values!5362 array!18572) (_vacant!5114 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19961 0))(
  ( (Cell!19962 (v!48839 LongMapFixedSize!10098)) )
))
(declare-datatypes ((MutLongMap!5049 0))(
  ( (LongMap!5049 (underlying!10305 Cell!19961)) (MutLongMapExt!5048 (__x!33245 Int)) )
))
(declare-fun lt!1962619 () MutLongMap!5049)

(get-info :version)

(assert (=> b!4810529 (= e!3005062 (and e!3005061 ((_ is LongMap!5049) lt!1962619)))))

(declare-datatypes ((Hashable!7060 0))(
  ( (HashableExt!7059 (__x!33246 Int)) )
))
(declare-datatypes ((Cell!19963 0))(
  ( (Cell!19964 (v!48840 MutLongMap!5049)) )
))
(declare-datatypes ((MutableMap!4933 0))(
  ( (MutableMapExt!4932 (__x!33247 Int)) (HashMap!4933 (underlying!10306 Cell!19963) (hashF!13334 Hashable!7060) (_size!10124 (_ BitVec 32)) (defaultValue!5104 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4933)

(assert (=> b!4810529 (= lt!1962619 (v!48840 (underlying!10306 thiss!41921)))))

(declare-fun b!4810530 () Bool)

(declare-fun res!2046259 () Bool)

(declare-fun e!3005064 () Bool)

(assert (=> b!4810530 (=> (not res!2046259) (not e!3005064))))

(declare-fun valid!4075 (MutableMap!4933) Bool)

(assert (=> b!4810530 (= res!2046259 (valid!4075 thiss!41921))))

(declare-fun b!4810531 () Bool)

(declare-fun e!3005058 () Bool)

(declare-fun tp!1360530 () Bool)

(assert (=> b!4810531 (= e!3005058 (and tp!1360530 mapRes!22316))))

(declare-fun condMapEmpty!22316 () Bool)

(declare-fun mapDefault!22316 () List!54652)

(assert (=> b!4810531 (= condMapEmpty!22316 (= (arr!8284 (_values!5362 (v!48839 (underlying!10305 (v!48840 (underlying!10306 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54652)) mapDefault!22316)))))

(declare-fun e!3005060 () Bool)

(assert (=> b!4810532 (= e!3005060 (and e!3005062 tp!1360532))))

(declare-fun res!2046260 () Bool)

(assert (=> start!497290 (=> (not res!2046260) (not e!3005064))))

(assert (=> start!497290 (= res!2046260 ((_ is HashMap!4933) thiss!41921))))

(assert (=> start!497290 e!3005064))

(assert (=> start!497290 e!3005060))

(declare-fun tp_is_empty!33973 () Bool)

(assert (=> start!497290 tp_is_empty!33973))

(declare-fun b!4810533 () Bool)

(declare-fun e!3005063 () Bool)

(assert (=> b!4810533 (= e!3005061 e!3005063)))

(declare-fun e!3005057 () Bool)

(declare-fun tp!1360533 () Bool)

(declare-fun tp!1360535 () Bool)

(declare-fun array_inv!5979 (array!18570) Bool)

(declare-fun array_inv!5980 (array!18572) Bool)

(assert (=> b!4810534 (= e!3005057 (and tp!1360529 tp!1360533 tp!1360535 (array_inv!5979 (_keys!5391 (v!48839 (underlying!10305 (v!48840 (underlying!10306 thiss!41921)))))) (array_inv!5980 (_values!5362 (v!48839 (underlying!10305 (v!48840 (underlying!10306 thiss!41921)))))) e!3005058))))

(declare-fun mapNonEmpty!22316 () Bool)

(declare-fun tp!1360531 () Bool)

(declare-fun tp!1360534 () Bool)

(assert (=> mapNonEmpty!22316 (= mapRes!22316 (and tp!1360531 tp!1360534))))

(declare-fun mapKey!22316 () (_ BitVec 32))

(declare-fun mapRest!22316 () (Array (_ BitVec 32) List!54652))

(declare-fun mapValue!22316 () List!54652)

(assert (=> mapNonEmpty!22316 (= (arr!8284 (_values!5362 (v!48839 (underlying!10305 (v!48840 (underlying!10306 thiss!41921)))))) (store mapRest!22316 mapKey!22316 mapValue!22316))))

(declare-fun b!4810535 () Bool)

(assert (=> b!4810535 (= e!3005064 false)))

(declare-fun lt!1962618 () Bool)

(declare-fun key!1652 () K!16139)

(declare-fun contains!18255 (MutLongMap!5049 (_ BitVec 64)) Bool)

(declare-fun hash!5129 (Hashable!7060 K!16139) (_ BitVec 64))

(assert (=> b!4810535 (= lt!1962618 (contains!18255 (v!48840 (underlying!10306 thiss!41921)) (hash!5129 (hashF!13334 thiss!41921) key!1652)))))

(declare-fun b!4810536 () Bool)

(assert (=> b!4810536 (= e!3005063 e!3005057)))

(assert (= (and start!497290 res!2046260) b!4810530))

(assert (= (and b!4810530 res!2046259) b!4810535))

(assert (= (and b!4810531 condMapEmpty!22316) mapIsEmpty!22316))

(assert (= (and b!4810531 (not condMapEmpty!22316)) mapNonEmpty!22316))

(assert (= b!4810534 b!4810531))

(assert (= b!4810536 b!4810534))

(assert (= b!4810533 b!4810536))

(assert (= (and b!4810529 ((_ is LongMap!5049) (v!48840 (underlying!10306 thiss!41921)))) b!4810533))

(assert (= b!4810532 b!4810529))

(assert (= (and start!497290 ((_ is HashMap!4933) thiss!41921)) b!4810532))

(declare-fun m!5796462 () Bool)

(assert (=> b!4810530 m!5796462))

(declare-fun m!5796464 () Bool)

(assert (=> b!4810534 m!5796464))

(declare-fun m!5796466 () Bool)

(assert (=> b!4810534 m!5796466))

(declare-fun m!5796468 () Bool)

(assert (=> mapNonEmpty!22316 m!5796468))

(declare-fun m!5796470 () Bool)

(assert (=> b!4810535 m!5796470))

(assert (=> b!4810535 m!5796470))

(declare-fun m!5796472 () Bool)

(assert (=> b!4810535 m!5796472))

(check-sat tp_is_empty!33973 b_and!341925 (not b_next!130929) (not b_next!130931) (not mapNonEmpty!22316) (not b!4810530) b_and!341923 (not b!4810531) (not b!4810535) (not b!4810534))
(check-sat b_and!341923 b_and!341925 (not b_next!130929) (not b_next!130931))
