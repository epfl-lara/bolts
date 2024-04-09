; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107448 () Bool)

(assert start!107448)

(declare-fun b!1272491 () Bool)

(declare-fun b_free!27673 () Bool)

(declare-fun b_next!27673 () Bool)

(assert (=> b!1272491 (= b_free!27673 (not b_next!27673))))

(declare-fun tp!97539 () Bool)

(declare-fun b_and!45739 () Bool)

(assert (=> b!1272491 (= tp!97539 b_and!45739)))

(declare-fun b!1272490 () Bool)

(declare-fun res!846486 () Bool)

(declare-fun e!725856 () Bool)

(assert (=> b!1272490 (=> (not res!846486) (not e!725856))))

(declare-datatypes ((V!49251 0))(
  ( (V!49252 (val!16596 Int)) )
))
(declare-datatypes ((ValueCell!15668 0))(
  ( (ValueCellFull!15668 (v!19231 V!49251)) (EmptyCell!15668) )
))
(declare-datatypes ((array!83285 0))(
  ( (array!83286 (arr!40171 (Array (_ BitVec 32) ValueCell!15668)) (size!40710 (_ BitVec 32))) )
))
(declare-datatypes ((array!83287 0))(
  ( (array!83288 (arr!40172 (Array (_ BitVec 32) (_ BitVec 64))) (size!40711 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6100 0))(
  ( (LongMapFixedSize!6101 (defaultEntry!6696 Int) (mask!34443 (_ BitVec 32)) (extraKeys!6375 (_ BitVec 32)) (zeroValue!6481 V!49251) (minValue!6481 V!49251) (_size!3105 (_ BitVec 32)) (_keys!12101 array!83287) (_values!6719 array!83285) (_vacant!3105 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6100)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272490 (= res!846486 (validMask!0 (mask!34443 thiss!1559)))))

(declare-fun e!725860 () Bool)

(declare-fun tp_is_empty!33043 () Bool)

(declare-fun e!725857 () Bool)

(declare-fun array_inv!30495 (array!83287) Bool)

(declare-fun array_inv!30496 (array!83285) Bool)

(assert (=> b!1272491 (= e!725860 (and tp!97539 tp_is_empty!33043 (array_inv!30495 (_keys!12101 thiss!1559)) (array_inv!30496 (_values!6719 thiss!1559)) e!725857))))

(declare-fun mapIsEmpty!51159 () Bool)

(declare-fun mapRes!51159 () Bool)

(assert (=> mapIsEmpty!51159 mapRes!51159))

(declare-fun b!1272492 () Bool)

(declare-fun e!725859 () Bool)

(assert (=> b!1272492 (= e!725859 tp_is_empty!33043)))

(declare-fun res!846485 () Bool)

(assert (=> start!107448 (=> (not res!846485) (not e!725856))))

(declare-fun valid!2244 (LongMapFixedSize!6100) Bool)

(assert (=> start!107448 (= res!846485 (valid!2244 thiss!1559))))

(assert (=> start!107448 e!725856))

(assert (=> start!107448 e!725860))

(declare-fun mapNonEmpty!51159 () Bool)

(declare-fun tp!97540 () Bool)

(assert (=> mapNonEmpty!51159 (= mapRes!51159 (and tp!97540 e!725859))))

(declare-fun mapValue!51159 () ValueCell!15668)

(declare-fun mapKey!51159 () (_ BitVec 32))

(declare-fun mapRest!51159 () (Array (_ BitVec 32) ValueCell!15668))

(assert (=> mapNonEmpty!51159 (= (arr!40171 (_values!6719 thiss!1559)) (store mapRest!51159 mapKey!51159 mapValue!51159))))

(declare-fun b!1272493 () Bool)

(declare-fun e!725855 () Bool)

(assert (=> b!1272493 (= e!725857 (and e!725855 mapRes!51159))))

(declare-fun condMapEmpty!51159 () Bool)

(declare-fun mapDefault!51159 () ValueCell!15668)

