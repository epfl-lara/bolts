; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107706 () Bool)

(assert start!107706)

(declare-fun b!1273974 () Bool)

(declare-fun b_free!27763 () Bool)

(declare-fun b_next!27763 () Bool)

(assert (=> b!1273974 (= b_free!27763 (not b_next!27763))))

(declare-fun tp!97856 () Bool)

(declare-fun b_and!45829 () Bool)

(assert (=> b!1273974 (= tp!97856 b_and!45829)))

(declare-fun b!1273971 () Bool)

(declare-fun e!727013 () Bool)

(declare-fun tp_is_empty!33133 () Bool)

(assert (=> b!1273971 (= e!727013 tp_is_empty!33133)))

(declare-fun b!1273972 () Bool)

(declare-fun res!847107 () Bool)

(declare-fun e!727010 () Bool)

(assert (=> b!1273972 (=> (not res!847107) (not e!727010))))

(declare-datatypes ((V!49371 0))(
  ( (V!49372 (val!16641 Int)) )
))
(declare-datatypes ((ValueCell!15713 0))(
  ( (ValueCellFull!15713 (v!19276 V!49371)) (EmptyCell!15713) )
))
(declare-datatypes ((array!83493 0))(
  ( (array!83494 (arr!40261 (Array (_ BitVec 32) ValueCell!15713)) (size!40810 (_ BitVec 32))) )
))
(declare-datatypes ((array!83495 0))(
  ( (array!83496 (arr!40262 (Array (_ BitVec 32) (_ BitVec 64))) (size!40811 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6190 0))(
  ( (LongMapFixedSize!6191 (defaultEntry!6741 Int) (mask!34539 (_ BitVec 32)) (extraKeys!6420 (_ BitVec 32)) (zeroValue!6526 V!49371) (minValue!6526 V!49371) (_size!3150 (_ BitVec 32)) (_keys!12155 array!83495) (_values!6764 array!83493) (_vacant!3150 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6190)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83495 (_ BitVec 32)) Bool)

(assert (=> b!1273972 (= res!847107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12155 thiss!1551) (mask!34539 thiss!1551)))))

(declare-fun mapNonEmpty!51341 () Bool)

(declare-fun mapRes!51341 () Bool)

(declare-fun tp!97857 () Bool)

(assert (=> mapNonEmpty!51341 (= mapRes!51341 (and tp!97857 e!727013))))

(declare-fun mapValue!51341 () ValueCell!15713)

(declare-fun mapKey!51341 () (_ BitVec 32))

(declare-fun mapRest!51341 () (Array (_ BitVec 32) ValueCell!15713))

(assert (=> mapNonEmpty!51341 (= (arr!40261 (_values!6764 thiss!1551)) (store mapRest!51341 mapKey!51341 mapValue!51341))))

(declare-fun b!1273973 () Bool)

(declare-fun e!727015 () Bool)

(declare-fun e!727011 () Bool)

(assert (=> b!1273973 (= e!727015 (and e!727011 mapRes!51341))))

(declare-fun condMapEmpty!51341 () Bool)

(declare-fun mapDefault!51341 () ValueCell!15713)

