; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8252 () Bool)

(assert start!8252)

(declare-fun b!52361 () Bool)

(declare-fun b_free!1645 () Bool)

(declare-fun b_next!1645 () Bool)

(assert (=> b!52361 (= b_free!1645 (not b_next!1645))))

(declare-fun tp!7035 () Bool)

(declare-fun b_and!2865 () Bool)

(assert (=> b!52361 (= tp!7035 b_and!2865)))

(declare-fun b!52362 () Bool)

(declare-fun b_free!1647 () Bool)

(declare-fun b_next!1647 () Bool)

(assert (=> b!52362 (= b_free!1647 (not b_next!1647))))

(declare-fun tp!7036 () Bool)

(declare-fun b_and!2867 () Bool)

(assert (=> b!52362 (= tp!7036 b_and!2867)))

(declare-fun b!52353 () Bool)

(declare-fun res!29787 () Bool)

(declare-fun e!34061 () Bool)

(assert (=> b!52353 (=> (not res!29787) (not e!34061))))

(declare-datatypes ((V!2633 0))(
  ( (V!2634 (val!1164 Int)) )
))
(declare-datatypes ((array!3400 0))(
  ( (array!3401 (arr!1622 (Array (_ BitVec 32) (_ BitVec 64))) (size!1851 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!776 0))(
  ( (ValueCellFull!776 (v!2213 V!2633)) (EmptyCell!776) )
))
(declare-datatypes ((array!3402 0))(
  ( (array!3403 (arr!1623 (Array (_ BitVec 32) ValueCell!776)) (size!1852 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!460 0))(
  ( (LongMapFixedSize!461 (defaultEntry!1944 Int) (mask!5767 (_ BitVec 32)) (extraKeys!1835 (_ BitVec 32)) (zeroValue!1862 V!2633) (minValue!1862 V!2633) (_size!279 (_ BitVec 32)) (_keys!3564 array!3400) (_values!1927 array!3402) (_vacant!279 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!460)

(declare-datatypes ((Cell!276 0))(
  ( (Cell!277 (v!2214 LongMapFixedSize!460)) )
))
(declare-datatypes ((LongMap!276 0))(
  ( (LongMap!277 (underlying!149 Cell!276)) )
))
(declare-fun thiss!992 () LongMap!276)

(assert (=> b!52353 (= res!29787 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5767 newMap!16)) (_size!279 (v!2214 (underlying!149 thiss!992)))))))

(declare-fun mapNonEmpty!2387 () Bool)

(declare-fun mapRes!2387 () Bool)

(declare-fun tp!7038 () Bool)

(declare-fun e!34054 () Bool)

(assert (=> mapNonEmpty!2387 (= mapRes!2387 (and tp!7038 e!34054))))

(declare-fun mapRest!2387 () (Array (_ BitVec 32) ValueCell!776))

(declare-fun mapValue!2388 () ValueCell!776)

(declare-fun mapKey!2387 () (_ BitVec 32))

(assert (=> mapNonEmpty!2387 (= (arr!1623 (_values!1927 newMap!16)) (store mapRest!2387 mapKey!2387 mapValue!2388))))

(declare-fun mapIsEmpty!2387 () Bool)

(declare-fun mapRes!2388 () Bool)

(assert (=> mapIsEmpty!2387 mapRes!2388))

(declare-fun b!52354 () Bool)

(assert (=> b!52354 (= e!34061 false)))

(declare-datatypes ((tuple2!1848 0))(
  ( (tuple2!1849 (_1!934 (_ BitVec 64)) (_2!934 V!2633)) )
))
(declare-datatypes ((List!1357 0))(
  ( (Nil!1354) (Cons!1353 (h!1933 tuple2!1848) (t!4399 List!1357)) )
))
(declare-datatypes ((ListLongMap!1267 0))(
  ( (ListLongMap!1268 (toList!649 List!1357)) )
))
(declare-fun lt!21277 () ListLongMap!1267)

(declare-fun map!1012 (LongMapFixedSize!460) ListLongMap!1267)

(assert (=> b!52354 (= lt!21277 (map!1012 newMap!16))))

(declare-fun lt!21276 () ListLongMap!1267)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!358 (array!3400 array!3402 (_ BitVec 32) (_ BitVec 32) V!2633 V!2633 (_ BitVec 32) Int) ListLongMap!1267)

(assert (=> b!52354 (= lt!21276 (getCurrentListMap!358 (_keys!3564 (v!2214 (underlying!149 thiss!992))) (_values!1927 (v!2214 (underlying!149 thiss!992))) (mask!5767 (v!2214 (underlying!149 thiss!992))) (extraKeys!1835 (v!2214 (underlying!149 thiss!992))) (zeroValue!1862 (v!2214 (underlying!149 thiss!992))) (minValue!1862 (v!2214 (underlying!149 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1944 (v!2214 (underlying!149 thiss!992)))))))

(declare-fun b!52355 () Bool)

(declare-fun e!34053 () Bool)

(declare-fun e!34057 () Bool)

(assert (=> b!52355 (= e!34053 (and e!34057 mapRes!2387))))

(declare-fun condMapEmpty!2388 () Bool)

(declare-fun mapDefault!2387 () ValueCell!776)

