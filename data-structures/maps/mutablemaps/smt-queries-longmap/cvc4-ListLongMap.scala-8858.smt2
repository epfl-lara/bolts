; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107510 () Bool)

(assert start!107510)

(declare-fun b!1272845 () Bool)

(declare-fun b_free!27695 () Bool)

(declare-fun b_next!27695 () Bool)

(assert (=> b!1272845 (= b_free!27695 (not b_next!27695))))

(declare-fun tp!97617 () Bool)

(declare-fun b_and!45761 () Bool)

(assert (=> b!1272845 (= tp!97617 b_and!45761)))

(declare-fun tp_is_empty!33065 () Bool)

(declare-fun e!726149 () Bool)

(declare-datatypes ((V!49279 0))(
  ( (V!49280 (val!16607 Int)) )
))
(declare-datatypes ((ValueCell!15679 0))(
  ( (ValueCellFull!15679 (v!19242 V!49279)) (EmptyCell!15679) )
))
(declare-datatypes ((array!83335 0))(
  ( (array!83336 (arr!40193 (Array (_ BitVec 32) ValueCell!15679)) (size!40734 (_ BitVec 32))) )
))
(declare-datatypes ((array!83337 0))(
  ( (array!83338 (arr!40194 (Array (_ BitVec 32) (_ BitVec 64))) (size!40735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6122 0))(
  ( (LongMapFixedSize!6123 (defaultEntry!6707 Int) (mask!34465 (_ BitVec 32)) (extraKeys!6386 (_ BitVec 32)) (zeroValue!6492 V!49279) (minValue!6492 V!49279) (_size!3116 (_ BitVec 32)) (_keys!12114 array!83337) (_values!6730 array!83335) (_vacant!3116 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6122)

(declare-fun e!726148 () Bool)

(declare-fun array_inv!30511 (array!83337) Bool)

(declare-fun array_inv!30512 (array!83335) Bool)

(assert (=> b!1272845 (= e!726149 (and tp!97617 tp_is_empty!33065 (array_inv!30511 (_keys!12114 thiss!1559)) (array_inv!30512 (_values!6730 thiss!1559)) e!726148))))

(declare-fun b!1272846 () Bool)

(declare-fun e!726147 () Bool)

(assert (=> b!1272846 (= e!726147 (and (= (size!40734 (_values!6730 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34465 thiss!1559))) (= (size!40735 (_keys!12114 thiss!1559)) (size!40734 (_values!6730 thiss!1559))) (bvsge (mask!34465 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6386 thiss!1559) #b00000000000000000000000000000000) (bvsgt (extraKeys!6386 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun b!1272847 () Bool)

(declare-fun e!726144 () Bool)

(assert (=> b!1272847 (= e!726144 tp_is_empty!33065)))

(declare-fun res!846633 () Bool)

(assert (=> start!107510 (=> (not res!846633) (not e!726147))))

(declare-fun valid!2252 (LongMapFixedSize!6122) Bool)

(assert (=> start!107510 (= res!846633 (valid!2252 thiss!1559))))

(assert (=> start!107510 e!726147))

(assert (=> start!107510 e!726149))

(declare-fun mapNonEmpty!51203 () Bool)

(declare-fun mapRes!51203 () Bool)

(declare-fun tp!97616 () Bool)

(declare-fun e!726145 () Bool)

(assert (=> mapNonEmpty!51203 (= mapRes!51203 (and tp!97616 e!726145))))

(declare-fun mapRest!51203 () (Array (_ BitVec 32) ValueCell!15679))

(declare-fun mapKey!51203 () (_ BitVec 32))

(declare-fun mapValue!51203 () ValueCell!15679)

(assert (=> mapNonEmpty!51203 (= (arr!40193 (_values!6730 thiss!1559)) (store mapRest!51203 mapKey!51203 mapValue!51203))))

(declare-fun b!1272848 () Bool)

(assert (=> b!1272848 (= e!726145 tp_is_empty!33065)))

(declare-fun b!1272849 () Bool)

(assert (=> b!1272849 (= e!726148 (and e!726144 mapRes!51203))))

(declare-fun condMapEmpty!51203 () Bool)

(declare-fun mapDefault!51203 () ValueCell!15679)

