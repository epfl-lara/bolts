; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107484 () Bool)

(assert start!107484)

(declare-fun b!1272687 () Bool)

(declare-fun b_free!27685 () Bool)

(declare-fun b_next!27685 () Bool)

(assert (=> b!1272687 (= b_free!27685 (not b_next!27685))))

(declare-fun tp!97583 () Bool)

(declare-fun b_and!45751 () Bool)

(assert (=> b!1272687 (= tp!97583 b_and!45751)))

(declare-fun b!1272685 () Bool)

(declare-fun e!726016 () Bool)

(declare-fun tp_is_empty!33055 () Bool)

(assert (=> b!1272685 (= e!726016 tp_is_empty!33055)))

(declare-fun mapNonEmpty!51184 () Bool)

(declare-fun mapRes!51184 () Bool)

(declare-fun tp!97582 () Bool)

(assert (=> mapNonEmpty!51184 (= mapRes!51184 (and tp!97582 e!726016))))

(declare-datatypes ((V!49267 0))(
  ( (V!49268 (val!16602 Int)) )
))
(declare-datatypes ((ValueCell!15674 0))(
  ( (ValueCellFull!15674 (v!19237 V!49267)) (EmptyCell!15674) )
))
(declare-datatypes ((array!83313 0))(
  ( (array!83314 (arr!40183 (Array (_ BitVec 32) ValueCell!15674)) (size!40723 (_ BitVec 32))) )
))
(declare-datatypes ((array!83315 0))(
  ( (array!83316 (arr!40184 (Array (_ BitVec 32) (_ BitVec 64))) (size!40724 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6112 0))(
  ( (LongMapFixedSize!6113 (defaultEntry!6702 Int) (mask!34456 (_ BitVec 32)) (extraKeys!6381 (_ BitVec 32)) (zeroValue!6487 V!49267) (minValue!6487 V!49267) (_size!3111 (_ BitVec 32)) (_keys!12108 array!83315) (_values!6725 array!83313) (_vacant!3111 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6112)

(declare-fun mapKey!51184 () (_ BitVec 32))

(declare-fun mapRest!51184 () (Array (_ BitVec 32) ValueCell!15674))

(declare-fun mapValue!51184 () ValueCell!15674)

(assert (=> mapNonEmpty!51184 (= (arr!40183 (_values!6725 thiss!1559)) (store mapRest!51184 mapKey!51184 mapValue!51184))))

(declare-fun mapIsEmpty!51184 () Bool)

(assert (=> mapIsEmpty!51184 mapRes!51184))

(declare-fun res!846567 () Bool)

(declare-fun e!726014 () Bool)

(assert (=> start!107484 (=> (not res!846567) (not e!726014))))

(declare-fun valid!2248 (LongMapFixedSize!6112) Bool)

(assert (=> start!107484 (= res!846567 (valid!2248 thiss!1559))))

(assert (=> start!107484 e!726014))

(declare-fun e!726013 () Bool)

(assert (=> start!107484 e!726013))

(declare-fun b!1272686 () Bool)

(declare-fun e!726017 () Bool)

(assert (=> b!1272686 (= e!726017 tp_is_empty!33055)))

(declare-fun e!726015 () Bool)

(declare-fun array_inv!30503 (array!83315) Bool)

(declare-fun array_inv!30504 (array!83313) Bool)

(assert (=> b!1272687 (= e!726013 (and tp!97583 tp_is_empty!33055 (array_inv!30503 (_keys!12108 thiss!1559)) (array_inv!30504 (_values!6725 thiss!1559)) e!726015))))

(declare-fun b!1272688 () Bool)

(declare-fun res!846566 () Bool)

(assert (=> b!1272688 (=> (not res!846566) (not e!726014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272688 (= res!846566 (validMask!0 (mask!34456 thiss!1559)))))

(declare-fun b!1272689 () Bool)

(assert (=> b!1272689 (= e!726014 (and (= (size!40723 (_values!6725 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34456 thiss!1559))) (= (size!40724 (_keys!12108 thiss!1559)) (size!40723 (_values!6725 thiss!1559))) (bvsge (mask!34456 thiss!1559) #b00000000000000000000000000000000) (bvslt (extraKeys!6381 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun b!1272690 () Bool)

(assert (=> b!1272690 (= e!726015 (and e!726017 mapRes!51184))))

(declare-fun condMapEmpty!51184 () Bool)

(declare-fun mapDefault!51184 () ValueCell!15674)

