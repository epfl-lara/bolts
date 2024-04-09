; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107624 () Bool)

(assert start!107624)

(declare-fun b!1273488 () Bool)

(declare-fun b_free!27733 () Bool)

(declare-fun b_next!27733 () Bool)

(assert (=> b!1273488 (= b_free!27733 (not b_next!27733))))

(declare-fun tp!97753 () Bool)

(declare-fun b_and!45799 () Bool)

(assert (=> b!1273488 (= tp!97753 b_and!45799)))

(declare-fun b!1273486 () Bool)

(declare-fun e!726643 () Bool)

(declare-fun tp_is_empty!33103 () Bool)

(assert (=> b!1273486 (= e!726643 tp_is_empty!33103)))

(declare-fun mapIsEmpty!51283 () Bool)

(declare-fun mapRes!51283 () Bool)

(assert (=> mapIsEmpty!51283 mapRes!51283))

(declare-fun b!1273487 () Bool)

(declare-fun e!726641 () Bool)

(assert (=> b!1273487 (= e!726641 tp_is_empty!33103)))

(declare-fun e!726640 () Bool)

(declare-datatypes ((V!49331 0))(
  ( (V!49332 (val!16626 Int)) )
))
(declare-datatypes ((ValueCell!15698 0))(
  ( (ValueCellFull!15698 (v!19261 V!49331)) (EmptyCell!15698) )
))
(declare-datatypes ((array!83425 0))(
  ( (array!83426 (arr!40231 (Array (_ BitVec 32) ValueCell!15698)) (size!40776 (_ BitVec 32))) )
))
(declare-datatypes ((array!83427 0))(
  ( (array!83428 (arr!40232 (Array (_ BitVec 32) (_ BitVec 64))) (size!40777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6160 0))(
  ( (LongMapFixedSize!6161 (defaultEntry!6726 Int) (mask!34508 (_ BitVec 32)) (extraKeys!6405 (_ BitVec 32)) (zeroValue!6511 V!49331) (minValue!6511 V!49331) (_size!3135 (_ BitVec 32)) (_keys!12137 array!83427) (_values!6749 array!83425) (_vacant!3135 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6160)

(declare-fun e!726645 () Bool)

(declare-fun array_inv!30537 (array!83427) Bool)

(declare-fun array_inv!30538 (array!83425) Bool)

(assert (=> b!1273488 (= e!726645 (and tp!97753 tp_is_empty!33103 (array_inv!30537 (_keys!12137 thiss!1551)) (array_inv!30538 (_values!6749 thiss!1551)) e!726640))))

(declare-fun mapNonEmpty!51283 () Bool)

(declare-fun tp!97754 () Bool)

(assert (=> mapNonEmpty!51283 (= mapRes!51283 (and tp!97754 e!726641))))

(declare-fun mapRest!51283 () (Array (_ BitVec 32) ValueCell!15698))

(declare-fun mapValue!51283 () ValueCell!15698)

(declare-fun mapKey!51283 () (_ BitVec 32))

(assert (=> mapNonEmpty!51283 (= (arr!40231 (_values!6749 thiss!1551)) (store mapRest!51283 mapKey!51283 mapValue!51283))))

(declare-fun b!1273490 () Bool)

(declare-fun res!846921 () Bool)

(declare-fun e!726642 () Bool)

(assert (=> b!1273490 (=> (not res!846921) (not e!726642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273490 (= res!846921 (validMask!0 (mask!34508 thiss!1551)))))

(declare-fun b!1273491 () Bool)

(assert (=> b!1273491 (= e!726642 (not (= (size!40777 (_keys!12137 thiss!1551)) (bvadd #b00000000000000000000000000000001 (mask!34508 thiss!1551)))))))

(declare-fun b!1273492 () Bool)

(declare-fun res!846919 () Bool)

(assert (=> b!1273492 (=> (not res!846919) (not e!726642))))

(declare-fun arrayCountValidKeys!0 (array!83427 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273492 (= res!846919 (= (arrayCountValidKeys!0 (_keys!12137 thiss!1551) #b00000000000000000000000000000000 (size!40777 (_keys!12137 thiss!1551))) (_size!3135 thiss!1551)))))

(declare-fun res!846920 () Bool)

(assert (=> start!107624 (=> (not res!846920) (not e!726642))))

(declare-fun simpleValid!469 (LongMapFixedSize!6160) Bool)

(assert (=> start!107624 (= res!846920 (simpleValid!469 thiss!1551))))

(assert (=> start!107624 e!726642))

(assert (=> start!107624 e!726645))

(declare-fun b!1273489 () Bool)

(assert (=> b!1273489 (= e!726640 (and e!726643 mapRes!51283))))

(declare-fun condMapEmpty!51283 () Bool)

(declare-fun mapDefault!51283 () ValueCell!15698)

