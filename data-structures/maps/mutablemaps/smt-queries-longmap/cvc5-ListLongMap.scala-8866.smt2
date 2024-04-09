; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107640 () Bool)

(assert start!107640)

(declare-fun b!1273579 () Bool)

(declare-fun b_free!27739 () Bool)

(declare-fun b_next!27739 () Bool)

(assert (=> b!1273579 (= b_free!27739 (not b_next!27739))))

(declare-fun tp!97775 () Bool)

(declare-fun b_and!45805 () Bool)

(assert (=> b!1273579 (= tp!97775 b_and!45805)))

(declare-fun mapNonEmpty!51295 () Bool)

(declare-fun mapRes!51295 () Bool)

(declare-fun tp!97774 () Bool)

(declare-fun e!726713 () Bool)

(assert (=> mapNonEmpty!51295 (= mapRes!51295 (and tp!97774 e!726713))))

(declare-datatypes ((V!49339 0))(
  ( (V!49340 (val!16629 Int)) )
))
(declare-datatypes ((ValueCell!15701 0))(
  ( (ValueCellFull!15701 (v!19264 V!49339)) (EmptyCell!15701) )
))
(declare-fun mapValue!51295 () ValueCell!15701)

(declare-datatypes ((array!83439 0))(
  ( (array!83440 (arr!40237 (Array (_ BitVec 32) ValueCell!15701)) (size!40783 (_ BitVec 32))) )
))
(declare-datatypes ((array!83441 0))(
  ( (array!83442 (arr!40238 (Array (_ BitVec 32) (_ BitVec 64))) (size!40784 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6166 0))(
  ( (LongMapFixedSize!6167 (defaultEntry!6729 Int) (mask!34514 (_ BitVec 32)) (extraKeys!6408 (_ BitVec 32)) (zeroValue!6514 V!49339) (minValue!6514 V!49339) (_size!3138 (_ BitVec 32)) (_keys!12140 array!83441) (_values!6752 array!83439) (_vacant!3138 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6166)

(declare-fun mapRest!51295 () (Array (_ BitVec 32) ValueCell!15701))

(declare-fun mapKey!51295 () (_ BitVec 32))

(assert (=> mapNonEmpty!51295 (= (arr!40237 (_values!6752 thiss!1551)) (store mapRest!51295 mapKey!51295 mapValue!51295))))

(declare-fun b!1273577 () Bool)

(declare-fun tp_is_empty!33109 () Bool)

(assert (=> b!1273577 (= e!726713 tp_is_empty!33109)))

(declare-fun b!1273578 () Bool)

(declare-fun e!726709 () Bool)

(declare-fun e!726710 () Bool)

(assert (=> b!1273578 (= e!726709 (and e!726710 mapRes!51295))))

(declare-fun condMapEmpty!51295 () Bool)

(declare-fun mapDefault!51295 () ValueCell!15701)

