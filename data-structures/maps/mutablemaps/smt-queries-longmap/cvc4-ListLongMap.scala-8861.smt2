; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107566 () Bool)

(assert start!107566)

(declare-fun b!1273208 () Bool)

(declare-fun b_free!27713 () Bool)

(declare-fun b_next!27713 () Bool)

(assert (=> b!1273208 (= b_free!27713 (not b_next!27713))))

(declare-fun tp!97680 () Bool)

(declare-fun b_and!45779 () Bool)

(assert (=> b!1273208 (= tp!97680 b_and!45779)))

(declare-fun b!1273201 () Bool)

(declare-fun res!846812 () Bool)

(declare-fun e!726397 () Bool)

(assert (=> b!1273201 (=> (not res!846812) (not e!726397))))

(declare-datatypes ((V!49303 0))(
  ( (V!49304 (val!16616 Int)) )
))
(declare-datatypes ((ValueCell!15688 0))(
  ( (ValueCellFull!15688 (v!19251 V!49303)) (EmptyCell!15688) )
))
(declare-datatypes ((array!83377 0))(
  ( (array!83378 (arr!40211 (Array (_ BitVec 32) ValueCell!15688)) (size!40753 (_ BitVec 32))) )
))
(declare-datatypes ((array!83379 0))(
  ( (array!83380 (arr!40212 (Array (_ BitVec 32) (_ BitVec 64))) (size!40754 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6140 0))(
  ( (LongMapFixedSize!6141 (defaultEntry!6716 Int) (mask!34486 (_ BitVec 32)) (extraKeys!6395 (_ BitVec 32)) (zeroValue!6501 V!49303) (minValue!6501 V!49303) (_size!3125 (_ BitVec 32)) (_keys!12126 array!83379) (_values!6739 array!83377) (_vacant!3125 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6140)

(assert (=> b!1273201 (= res!846812 (and (= (size!40753 (_values!6739 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34486 thiss!1559))) (= (size!40754 (_keys!12126 thiss!1559)) (size!40753 (_values!6739 thiss!1559))) (bvsge (mask!34486 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6395 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6395 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun res!846815 () Bool)

(assert (=> start!107566 (=> (not res!846815) (not e!726397))))

(declare-fun valid!2260 (LongMapFixedSize!6140) Bool)

(assert (=> start!107566 (= res!846815 (valid!2260 thiss!1559))))

(assert (=> start!107566 e!726397))

(declare-fun e!726395 () Bool)

(assert (=> start!107566 e!726395))

(declare-fun mapNonEmpty!51240 () Bool)

(declare-fun mapRes!51240 () Bool)

(declare-fun tp!97681 () Bool)

(declare-fun e!726396 () Bool)

(assert (=> mapNonEmpty!51240 (= mapRes!51240 (and tp!97681 e!726396))))

(declare-fun mapValue!51240 () ValueCell!15688)

(declare-fun mapRest!51240 () (Array (_ BitVec 32) ValueCell!15688))

(declare-fun mapKey!51240 () (_ BitVec 32))

(assert (=> mapNonEmpty!51240 (= (arr!40211 (_values!6739 thiss!1559)) (store mapRest!51240 mapKey!51240 mapValue!51240))))

(declare-fun b!1273202 () Bool)

(declare-fun e!726400 () Bool)

(declare-fun e!726399 () Bool)

(assert (=> b!1273202 (= e!726400 (and e!726399 mapRes!51240))))

(declare-fun condMapEmpty!51240 () Bool)

(declare-fun mapDefault!51240 () ValueCell!15688)

