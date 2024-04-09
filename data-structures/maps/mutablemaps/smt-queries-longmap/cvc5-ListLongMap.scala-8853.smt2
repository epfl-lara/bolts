; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107404 () Bool)

(assert start!107404)

(declare-fun b!1272249 () Bool)

(declare-fun b_free!27661 () Bool)

(declare-fun b_next!27661 () Bool)

(assert (=> b!1272249 (= b_free!27661 (not b_next!27661))))

(declare-fun tp!97496 () Bool)

(declare-fun b_and!45727 () Bool)

(assert (=> b!1272249 (= tp!97496 b_and!45727)))

(declare-fun tp_is_empty!33031 () Bool)

(declare-fun e!725667 () Bool)

(declare-fun e!725669 () Bool)

(declare-datatypes ((V!49235 0))(
  ( (V!49236 (val!16590 Int)) )
))
(declare-datatypes ((ValueCell!15662 0))(
  ( (ValueCellFull!15662 (v!19225 V!49235)) (EmptyCell!15662) )
))
(declare-datatypes ((array!83257 0))(
  ( (array!83258 (arr!40159 (Array (_ BitVec 32) ValueCell!15662)) (size!40696 (_ BitVec 32))) )
))
(declare-datatypes ((array!83259 0))(
  ( (array!83260 (arr!40160 (Array (_ BitVec 32) (_ BitVec 64))) (size!40697 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6088 0))(
  ( (LongMapFixedSize!6089 (defaultEntry!6690 Int) (mask!34429 (_ BitVec 32)) (extraKeys!6369 (_ BitVec 32)) (zeroValue!6475 V!49235) (minValue!6475 V!49235) (_size!3099 (_ BitVec 32)) (_keys!12093 array!83259) (_values!6713 array!83257) (_vacant!3099 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6088)

(declare-fun array_inv!30487 (array!83259) Bool)

(declare-fun array_inv!30488 (array!83257) Bool)

(assert (=> b!1272249 (= e!725667 (and tp!97496 tp_is_empty!33031 (array_inv!30487 (_keys!12093 thiss!1559)) (array_inv!30488 (_values!6713 thiss!1559)) e!725669))))

(declare-fun b!1272250 () Bool)

(declare-fun e!725668 () Bool)

(assert (=> b!1272250 (= e!725668 tp_is_empty!33031)))

(declare-fun res!846384 () Bool)

(declare-fun e!725665 () Bool)

(assert (=> start!107404 (=> (not res!846384) (not e!725665))))

(declare-fun valid!2239 (LongMapFixedSize!6088) Bool)

(assert (=> start!107404 (= res!846384 (valid!2239 thiss!1559))))

(assert (=> start!107404 e!725665))

(assert (=> start!107404 e!725667))

(declare-fun b!1272251 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272251 (= e!725665 (not (validMask!0 (mask!34429 thiss!1559))))))

(declare-fun mapNonEmpty!51133 () Bool)

(declare-fun mapRes!51133 () Bool)

(declare-fun tp!97495 () Bool)

(declare-fun e!725670 () Bool)

(assert (=> mapNonEmpty!51133 (= mapRes!51133 (and tp!97495 e!725670))))

(declare-fun mapKey!51133 () (_ BitVec 32))

(declare-fun mapValue!51133 () ValueCell!15662)

(declare-fun mapRest!51133 () (Array (_ BitVec 32) ValueCell!15662))

(assert (=> mapNonEmpty!51133 (= (arr!40159 (_values!6713 thiss!1559)) (store mapRest!51133 mapKey!51133 mapValue!51133))))

(declare-fun b!1272252 () Bool)

(assert (=> b!1272252 (= e!725669 (and e!725668 mapRes!51133))))

(declare-fun condMapEmpty!51133 () Bool)

(declare-fun mapDefault!51133 () ValueCell!15662)

