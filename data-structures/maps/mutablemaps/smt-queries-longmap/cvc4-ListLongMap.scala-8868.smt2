; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107666 () Bool)

(assert start!107666)

(declare-fun b!1273768 () Bool)

(declare-fun b_free!27755 () Bool)

(declare-fun b_next!27755 () Bool)

(assert (=> b!1273768 (= b_free!27755 (not b_next!27755))))

(declare-fun tp!97825 () Bool)

(declare-fun b_and!45821 () Bool)

(assert (=> b!1273768 (= tp!97825 b_and!45821)))

(declare-fun b!1273763 () Bool)

(declare-fun res!847025 () Bool)

(declare-fun e!726872 () Bool)

(assert (=> b!1273763 (=> (not res!847025) (not e!726872))))

(declare-datatypes ((V!49359 0))(
  ( (V!49360 (val!16637 Int)) )
))
(declare-datatypes ((ValueCell!15709 0))(
  ( (ValueCellFull!15709 (v!19272 V!49359)) (EmptyCell!15709) )
))
(declare-datatypes ((array!83473 0))(
  ( (array!83474 (arr!40253 (Array (_ BitVec 32) ValueCell!15709)) (size!40800 (_ BitVec 32))) )
))
(declare-datatypes ((array!83475 0))(
  ( (array!83476 (arr!40254 (Array (_ BitVec 32) (_ BitVec 64))) (size!40801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6182 0))(
  ( (LongMapFixedSize!6183 (defaultEntry!6737 Int) (mask!34527 (_ BitVec 32)) (extraKeys!6416 (_ BitVec 32)) (zeroValue!6522 V!49359) (minValue!6522 V!49359) (_size!3146 (_ BitVec 32)) (_keys!12148 array!83475) (_values!6760 array!83473) (_vacant!3146 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6182)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83475 (_ BitVec 32)) Bool)

(assert (=> b!1273763 (= res!847025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12148 thiss!1551) (mask!34527 thiss!1551)))))

(declare-fun b!1273764 () Bool)

(declare-fun e!726869 () Bool)

(declare-fun tp_is_empty!33125 () Bool)

(assert (=> b!1273764 (= e!726869 tp_is_empty!33125)))

(declare-fun b!1273765 () Bool)

(declare-fun res!847026 () Bool)

(assert (=> b!1273765 (=> (not res!847026) (not e!726872))))

(declare-fun arrayCountValidKeys!0 (array!83475 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273765 (= res!847026 (= (arrayCountValidKeys!0 (_keys!12148 thiss!1551) #b00000000000000000000000000000000 (size!40801 (_keys!12148 thiss!1551))) (_size!3146 thiss!1551)))))

(declare-fun b!1273766 () Bool)

(assert (=> b!1273766 (= e!726872 (bvsgt #b00000000000000000000000000000000 (size!40801 (_keys!12148 thiss!1551))))))

(declare-fun b!1273767 () Bool)

(declare-fun e!726873 () Bool)

(assert (=> b!1273767 (= e!726873 tp_is_empty!33125)))

(declare-fun mapIsEmpty!51322 () Bool)

(declare-fun mapRes!51322 () Bool)

(assert (=> mapIsEmpty!51322 mapRes!51322))

(declare-fun res!847024 () Bool)

(assert (=> start!107666 (=> (not res!847024) (not e!726872))))

(declare-fun simpleValid!474 (LongMapFixedSize!6182) Bool)

(assert (=> start!107666 (= res!847024 (simpleValid!474 thiss!1551))))

(assert (=> start!107666 e!726872))

(declare-fun e!726870 () Bool)

(assert (=> start!107666 e!726870))

(declare-fun mapNonEmpty!51322 () Bool)

(declare-fun tp!97826 () Bool)

(assert (=> mapNonEmpty!51322 (= mapRes!51322 (and tp!97826 e!726869))))

(declare-fun mapKey!51322 () (_ BitVec 32))

(declare-fun mapValue!51322 () ValueCell!15709)

(declare-fun mapRest!51322 () (Array (_ BitVec 32) ValueCell!15709))

(assert (=> mapNonEmpty!51322 (= (arr!40253 (_values!6760 thiss!1551)) (store mapRest!51322 mapKey!51322 mapValue!51322))))

(declare-fun e!726871 () Bool)

(declare-fun array_inv!30551 (array!83475) Bool)

(declare-fun array_inv!30552 (array!83473) Bool)

(assert (=> b!1273768 (= e!726870 (and tp!97825 tp_is_empty!33125 (array_inv!30551 (_keys!12148 thiss!1551)) (array_inv!30552 (_values!6760 thiss!1551)) e!726871))))

(declare-fun b!1273769 () Bool)

(assert (=> b!1273769 (= e!726871 (and e!726873 mapRes!51322))))

(declare-fun condMapEmpty!51322 () Bool)

(declare-fun mapDefault!51322 () ValueCell!15709)

