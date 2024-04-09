; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3180 () Bool)

(assert start!3180)

(declare-fun b!19398 () Bool)

(declare-fun b_free!677 () Bool)

(declare-fun b_next!677 () Bool)

(assert (=> b!19398 (= b_free!677 (not b_next!677))))

(declare-fun tp!3239 () Bool)

(declare-fun b_and!1339 () Bool)

(assert (=> b!19398 (= tp!3239 b_and!1339)))

(declare-fun b!19396 () Bool)

(declare-fun e!12521 () Bool)

(declare-fun tp_is_empty!941 () Bool)

(assert (=> b!19396 (= e!12521 tp_is_empty!941)))

(declare-fun b!19397 () Bool)

(declare-fun e!12526 () Bool)

(declare-fun e!12520 () Bool)

(assert (=> b!19397 (= e!12526 e!12520)))

(declare-fun e!12522 () Bool)

(declare-datatypes ((V!1079 0))(
  ( (V!1080 (val!497 Int)) )
))
(declare-datatypes ((ValueCell!271 0))(
  ( (ValueCellFull!271 (v!1510 V!1079)) (EmptyCell!271) )
))
(declare-datatypes ((array!1087 0))(
  ( (array!1088 (arr!521 (Array (_ BitVec 32) ValueCell!271)) (size!613 (_ BitVec 32))) )
))
(declare-datatypes ((array!1089 0))(
  ( (array!1090 (arr!522 (Array (_ BitVec 32) (_ BitVec 64))) (size!614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!128 0))(
  ( (LongMapFixedSize!129 (defaultEntry!1683 Int) (mask!4630 (_ BitVec 32)) (extraKeys!1593 (_ BitVec 32)) (zeroValue!1617 V!1079) (minValue!1617 V!1079) (_size!97 (_ BitVec 32)) (_keys!3110 array!1089) (_values!1679 array!1087) (_vacant!97 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!128 0))(
  ( (Cell!129 (v!1511 LongMapFixedSize!128)) )
))
(declare-datatypes ((LongMap!128 0))(
  ( (LongMap!129 (underlying!75 Cell!128)) )
))
(declare-fun thiss!938 () LongMap!128)

(declare-fun array_inv!373 (array!1089) Bool)

(declare-fun array_inv!374 (array!1087) Bool)

(assert (=> b!19398 (= e!12520 (and tp!3239 tp_is_empty!941 (array_inv!373 (_keys!3110 (v!1511 (underlying!75 thiss!938)))) (array_inv!374 (_values!1679 (v!1511 (underlying!75 thiss!938)))) e!12522))))

(declare-fun mapNonEmpty!863 () Bool)

(declare-fun mapRes!863 () Bool)

(declare-fun tp!3238 () Bool)

(assert (=> mapNonEmpty!863 (= mapRes!863 (and tp!3238 e!12521))))

(declare-fun mapKey!863 () (_ BitVec 32))

(declare-fun mapValue!863 () ValueCell!271)

(declare-fun mapRest!863 () (Array (_ BitVec 32) ValueCell!271))

(assert (=> mapNonEmpty!863 (= (arr!521 (_values!1679 (v!1511 (underlying!75 thiss!938)))) (store mapRest!863 mapKey!863 mapValue!863))))

(declare-fun b!19400 () Bool)

(declare-fun e!12524 () Bool)

(assert (=> b!19400 (= e!12524 (and (bvsge (_size!97 (v!1511 (underlying!75 thiss!938))) #b00000000000000000000000000000000) (bvsle (_size!97 (v!1511 (underlying!75 thiss!938))) (bvadd #b00000000000000000000000000000001 (mask!4630 (v!1511 (underlying!75 thiss!938))))) (bvslt (_vacant!97 (v!1511 (underlying!75 thiss!938))) #b00000000000000000000000000000000)))))

(declare-fun b!19401 () Bool)

(declare-fun res!13170 () Bool)

(assert (=> b!19401 (=> (not res!13170) (not e!12524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!19401 (= res!13170 (validMask!0 (mask!4630 (v!1511 (underlying!75 thiss!938)))))))

(declare-fun mapIsEmpty!863 () Bool)

(assert (=> mapIsEmpty!863 mapRes!863))

(declare-fun b!19402 () Bool)

(declare-fun e!12523 () Bool)

(assert (=> b!19402 (= e!12523 tp_is_empty!941)))

(declare-fun b!19403 () Bool)

(assert (=> b!19403 (= e!12522 (and e!12523 mapRes!863))))

(declare-fun condMapEmpty!863 () Bool)

(declare-fun mapDefault!863 () ValueCell!271)

