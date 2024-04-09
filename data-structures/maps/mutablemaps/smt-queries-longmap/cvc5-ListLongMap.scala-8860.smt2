; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107544 () Bool)

(assert start!107544)

(declare-fun b!1273032 () Bool)

(declare-fun b_free!27703 () Bool)

(declare-fun b_next!27703 () Bool)

(assert (=> b!1273032 (= b_free!27703 (not b_next!27703))))

(declare-fun tp!97647 () Bool)

(declare-fun b_and!45769 () Bool)

(assert (=> b!1273032 (= tp!97647 b_and!45769)))

(declare-fun b!1273029 () Bool)

(declare-fun res!846723 () Bool)

(declare-fun e!726275 () Bool)

(assert (=> b!1273029 (=> (not res!846723) (not e!726275))))

(declare-datatypes ((V!49291 0))(
  ( (V!49292 (val!16611 Int)) )
))
(declare-datatypes ((ValueCell!15683 0))(
  ( (ValueCellFull!15683 (v!19246 V!49291)) (EmptyCell!15683) )
))
(declare-datatypes ((array!83355 0))(
  ( (array!83356 (arr!40201 (Array (_ BitVec 32) ValueCell!15683)) (size!40743 (_ BitVec 32))) )
))
(declare-datatypes ((array!83357 0))(
  ( (array!83358 (arr!40202 (Array (_ BitVec 32) (_ BitVec 64))) (size!40744 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6130 0))(
  ( (LongMapFixedSize!6131 (defaultEntry!6711 Int) (mask!34477 (_ BitVec 32)) (extraKeys!6390 (_ BitVec 32)) (zeroValue!6496 V!49291) (minValue!6496 V!49291) (_size!3120 (_ BitVec 32)) (_keys!12120 array!83357) (_values!6734 array!83355) (_vacant!3120 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6130)

(assert (=> b!1273029 (= res!846723 (and (= (size!40743 (_values!6734 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34477 thiss!1559))) (= (size!40744 (_keys!12120 thiss!1559)) (size!40743 (_values!6734 thiss!1559))) (bvsge (mask!34477 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6390 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6390 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun b!1273030 () Bool)

(declare-fun res!846720 () Bool)

(assert (=> b!1273030 (=> (not res!846720) (not e!726275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273030 (= res!846720 (validMask!0 (mask!34477 thiss!1559)))))

(declare-fun b!1273031 () Bool)

(declare-fun e!726276 () Bool)

(declare-fun tp_is_empty!33073 () Bool)

(assert (=> b!1273031 (= e!726276 tp_is_empty!33073)))

(declare-fun e!726279 () Bool)

(declare-fun e!726277 () Bool)

(declare-fun array_inv!30517 (array!83357) Bool)

(declare-fun array_inv!30518 (array!83355) Bool)

(assert (=> b!1273032 (= e!726279 (and tp!97647 tp_is_empty!33073 (array_inv!30517 (_keys!12120 thiss!1559)) (array_inv!30518 (_values!6734 thiss!1559)) e!726277))))

(declare-fun mapIsEmpty!51222 () Bool)

(declare-fun mapRes!51222 () Bool)

(assert (=> mapIsEmpty!51222 mapRes!51222))

(declare-fun res!846722 () Bool)

(assert (=> start!107544 (=> (not res!846722) (not e!726275))))

(declare-fun valid!2256 (LongMapFixedSize!6130) Bool)

(assert (=> start!107544 (= res!846722 (valid!2256 thiss!1559))))

(assert (=> start!107544 e!726275))

(assert (=> start!107544 e!726279))

(declare-fun b!1273033 () Bool)

(assert (=> b!1273033 (= e!726277 (and e!726276 mapRes!51222))))

(declare-fun condMapEmpty!51222 () Bool)

(declare-fun mapDefault!51222 () ValueCell!15683)

