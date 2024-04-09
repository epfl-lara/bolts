; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107430 () Bool)

(assert start!107430)

(declare-fun b!1272402 () Bool)

(declare-fun b_free!27671 () Bool)

(declare-fun b_next!27671 () Bool)

(assert (=> b!1272402 (= b_free!27671 (not b_next!27671))))

(declare-fun tp!97530 () Bool)

(declare-fun b_and!45737 () Bool)

(assert (=> b!1272402 (= tp!97530 b_and!45737)))

(declare-datatypes ((V!49247 0))(
  ( (V!49248 (val!16595 Int)) )
))
(declare-datatypes ((ValueCell!15667 0))(
  ( (ValueCellFull!15667 (v!19230 V!49247)) (EmptyCell!15667) )
))
(declare-datatypes ((array!83279 0))(
  ( (array!83280 (arr!40169 (Array (_ BitVec 32) ValueCell!15667)) (size!40707 (_ BitVec 32))) )
))
(declare-datatypes ((array!83281 0))(
  ( (array!83282 (arr!40170 (Array (_ BitVec 32) (_ BitVec 64))) (size!40708 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6098 0))(
  ( (LongMapFixedSize!6099 (defaultEntry!6695 Int) (mask!34438 (_ BitVec 32)) (extraKeys!6374 (_ BitVec 32)) (zeroValue!6480 V!49247) (minValue!6480 V!49247) (_size!3104 (_ BitVec 32)) (_keys!12099 array!83281) (_values!6718 array!83279) (_vacant!3104 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6098)

(declare-fun e!725796 () Bool)

(declare-fun tp_is_empty!33041 () Bool)

(declare-fun e!725799 () Bool)

(declare-fun array_inv!30493 (array!83281) Bool)

(declare-fun array_inv!30494 (array!83279) Bool)

(assert (=> b!1272402 (= e!725799 (and tp!97530 tp_is_empty!33041 (array_inv!30493 (_keys!12099 thiss!1559)) (array_inv!30494 (_values!6718 thiss!1559)) e!725796))))

(declare-fun b!1272403 () Bool)

(declare-fun e!725800 () Bool)

(assert (=> b!1272403 (= e!725800 tp_is_empty!33041)))

(declare-fun mapNonEmpty!51152 () Bool)

(declare-fun mapRes!51152 () Bool)

(declare-fun tp!97529 () Bool)

(assert (=> mapNonEmpty!51152 (= mapRes!51152 (and tp!97529 e!725800))))

(declare-fun mapValue!51152 () ValueCell!15667)

(declare-fun mapRest!51152 () (Array (_ BitVec 32) ValueCell!15667))

(declare-fun mapKey!51152 () (_ BitVec 32))

(assert (=> mapNonEmpty!51152 (= (arr!40169 (_values!6718 thiss!1559)) (store mapRest!51152 mapKey!51152 mapValue!51152))))

(declare-fun b!1272404 () Bool)

(declare-fun res!846443 () Bool)

(declare-fun e!725801 () Bool)

(assert (=> b!1272404 (=> (not res!846443) (not e!725801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272404 (= res!846443 (validMask!0 (mask!34438 thiss!1559)))))

(declare-fun b!1272405 () Bool)

(assert (=> b!1272405 (= e!725801 (not (= (size!40707 (_values!6718 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34438 thiss!1559)))))))

(declare-fun b!1272406 () Bool)

(declare-fun e!725797 () Bool)

(assert (=> b!1272406 (= e!725796 (and e!725797 mapRes!51152))))

(declare-fun condMapEmpty!51152 () Bool)

(declare-fun mapDefault!51152 () ValueCell!15667)

