; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2986 () Bool)

(assert start!2986)

(declare-fun b!17347 () Bool)

(declare-fun b_free!595 () Bool)

(declare-fun b_next!595 () Bool)

(assert (=> b!17347 (= b_free!595 (not b_next!595))))

(declare-fun tp!2976 () Bool)

(declare-fun b_and!1245 () Bool)

(assert (=> b!17347 (= tp!2976 b_and!1245)))

(declare-fun b!17337 () Bool)

(declare-datatypes ((V!971 0))(
  ( (V!972 (val!456 Int)) )
))
(declare-datatypes ((ValueCell!230 0))(
  ( (ValueCellFull!230 (v!1416 V!971)) (EmptyCell!230) )
))
(declare-datatypes ((array!915 0))(
  ( (array!916 (arr!439 (Array (_ BitVec 32) ValueCell!230)) (size!529 (_ BitVec 32))) )
))
(declare-datatypes ((array!917 0))(
  ( (array!918 (arr!440 (Array (_ BitVec 32) (_ BitVec 64))) (size!530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!46 0))(
  ( (LongMapFixedSize!47 (defaultEntry!1634 Int) (mask!4549 (_ BitVec 32)) (extraKeys!1547 (_ BitVec 32)) (zeroValue!1570 V!971) (minValue!1570 V!971) (_size!55 (_ BitVec 32)) (_keys!3059 array!917) (_values!1631 array!915) (_vacant!55 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!46 0))(
  ( (Cell!47 (v!1417 LongMapFixedSize!46)) )
))
(declare-datatypes ((LongMap!46 0))(
  ( (LongMap!47 (underlying!34 Cell!46)) )
))
(declare-datatypes ((tuple2!696 0))(
  ( (tuple2!697 (_1!349 Bool) (_2!349 LongMap!46)) )
))
(declare-fun e!10836 () tuple2!696)

(declare-fun thiss!848 () LongMap!46)

(assert (=> b!17337 (= e!10836 (tuple2!697 true thiss!848))))

(declare-fun b!17338 () Bool)

(declare-fun e!10833 () Bool)

(declare-fun e!10835 () Bool)

(assert (=> b!17338 (= e!10833 e!10835)))

(declare-fun res!12549 () Bool)

(assert (=> b!17338 (=> (not res!12549) (not e!10835))))

(declare-fun lt!4499 () LongMap!46)

(declare-fun valid!30 (LongMap!46) Bool)

(assert (=> b!17338 (= res!12549 (valid!30 lt!4499))))

(declare-datatypes ((tuple2!698 0))(
  ( (tuple2!699 (_1!350 Bool) (_2!350 LongMapFixedSize!46)) )
))
(declare-fun lt!4497 () tuple2!698)

(assert (=> b!17338 (= lt!4499 (LongMap!47 (Cell!47 (_2!350 lt!4497))))))

(declare-fun key!682 () (_ BitVec 64))

(declare-fun v!259 () V!971)

(declare-fun lt!4500 () tuple2!696)

(declare-fun update!5 (LongMapFixedSize!46 (_ BitVec 64) V!971) tuple2!698)

(assert (=> b!17338 (= lt!4497 (update!5 (v!1417 (underlying!34 (_2!349 lt!4500))) key!682 v!259))))

(declare-fun b!17339 () Bool)

(declare-fun e!10832 () Bool)

(declare-fun e!10838 () Bool)

(assert (=> b!17339 (= e!10832 e!10838)))

(declare-fun b!17340 () Bool)

(declare-fun e!10831 () Bool)

(assert (=> b!17340 (= e!10831 e!10833)))

(declare-fun res!12548 () Bool)

(assert (=> b!17340 (=> (not res!12548) (not e!10833))))

(assert (=> b!17340 (= res!12548 (_1!349 lt!4500))))

(assert (=> b!17340 (= lt!4500 e!10836)))

(declare-fun c!1747 () Bool)

(declare-fun imbalanced!6 (LongMap!46) Bool)

(assert (=> b!17340 (= c!1747 (imbalanced!6 thiss!848))))

(declare-fun b!17341 () Bool)

(declare-fun e!10829 () Bool)

(declare-fun tp_is_empty!859 () Bool)

(assert (=> b!17341 (= e!10829 tp_is_empty!859)))

(declare-fun b!17342 () Bool)

(declare-fun res!12546 () Bool)

(assert (=> b!17342 (=> (not res!12546) (not e!10835))))

(assert (=> b!17342 (= res!12546 (_1!350 lt!4497))))

(declare-fun b!17343 () Bool)

(assert (=> b!17343 (= e!10835 false)))

(declare-fun lt!4498 () Bool)

(declare-datatypes ((tuple2!700 0))(
  ( (tuple2!701 (_1!351 (_ BitVec 64)) (_2!351 V!971)) )
))
(declare-datatypes ((List!529 0))(
  ( (Nil!526) (Cons!525 (h!1091 tuple2!700) (t!3170 List!529)) )
))
(declare-datatypes ((ListLongMap!509 0))(
  ( (ListLongMap!510 (toList!270 List!529)) )
))
(declare-fun contains!201 (ListLongMap!509 (_ BitVec 64)) Bool)

(declare-fun map!332 (LongMap!46) ListLongMap!509)

(assert (=> b!17343 (= lt!4498 (contains!201 (map!332 lt!4499) key!682))))

(declare-fun mapIsEmpty!723 () Bool)

(declare-fun mapRes!723 () Bool)

(assert (=> mapIsEmpty!723 mapRes!723))

(declare-fun b!17345 () Bool)

(declare-fun e!10834 () Bool)

(assert (=> b!17345 (= e!10838 e!10834)))

(declare-fun mapNonEmpty!723 () Bool)

(declare-fun tp!2975 () Bool)

(assert (=> mapNonEmpty!723 (= mapRes!723 (and tp!2975 e!10829))))

(declare-fun mapKey!723 () (_ BitVec 32))

(declare-fun mapValue!723 () ValueCell!230)

(declare-fun mapRest!723 () (Array (_ BitVec 32) ValueCell!230))

(assert (=> mapNonEmpty!723 (= (arr!439 (_values!1631 (v!1417 (underlying!34 thiss!848)))) (store mapRest!723 mapKey!723 mapValue!723))))

(declare-fun b!17346 () Bool)

(declare-fun e!10830 () Bool)

(assert (=> b!17346 (= e!10830 tp_is_empty!859)))

(declare-fun res!12547 () Bool)

(assert (=> start!2986 (=> (not res!12547) (not e!10831))))

(assert (=> start!2986 (= res!12547 (valid!30 thiss!848))))

(assert (=> start!2986 e!10831))

(assert (=> start!2986 e!10832))

(assert (=> start!2986 true))

(assert (=> start!2986 tp_is_empty!859))

(declare-fun b!17344 () Bool)

(declare-fun repack!4 (LongMap!46) tuple2!696)

(assert (=> b!17344 (= e!10836 (repack!4 thiss!848))))

(declare-fun e!10837 () Bool)

(declare-fun array_inv!309 (array!917) Bool)

(declare-fun array_inv!310 (array!915) Bool)

(assert (=> b!17347 (= e!10834 (and tp!2976 tp_is_empty!859 (array_inv!309 (_keys!3059 (v!1417 (underlying!34 thiss!848)))) (array_inv!310 (_values!1631 (v!1417 (underlying!34 thiss!848)))) e!10837))))

(declare-fun b!17348 () Bool)

(assert (=> b!17348 (= e!10837 (and e!10830 mapRes!723))))

(declare-fun condMapEmpty!723 () Bool)

(declare-fun mapDefault!723 () ValueCell!230)

