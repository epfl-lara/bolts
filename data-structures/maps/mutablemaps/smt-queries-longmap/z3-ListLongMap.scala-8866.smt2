; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107642 () Bool)

(assert start!107642)

(declare-fun b!1273593 () Bool)

(declare-fun b_free!27741 () Bool)

(declare-fun b_next!27741 () Bool)

(assert (=> b!1273593 (= b_free!27741 (not b_next!27741))))

(declare-fun tp!97781 () Bool)

(declare-fun b_and!45807 () Bool)

(assert (=> b!1273593 (= tp!97781 b_and!45807)))

(declare-fun e!726731 () Bool)

(declare-fun tp_is_empty!33111 () Bool)

(declare-fun e!726732 () Bool)

(declare-datatypes ((V!49341 0))(
  ( (V!49342 (val!16630 Int)) )
))
(declare-datatypes ((ValueCell!15702 0))(
  ( (ValueCellFull!15702 (v!19265 V!49341)) (EmptyCell!15702) )
))
(declare-datatypes ((array!83443 0))(
  ( (array!83444 (arr!40239 (Array (_ BitVec 32) ValueCell!15702)) (size!40785 (_ BitVec 32))) )
))
(declare-datatypes ((array!83445 0))(
  ( (array!83446 (arr!40240 (Array (_ BitVec 32) (_ BitVec 64))) (size!40786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6168 0))(
  ( (LongMapFixedSize!6169 (defaultEntry!6730 Int) (mask!34515 (_ BitVec 32)) (extraKeys!6409 (_ BitVec 32)) (zeroValue!6515 V!49341) (minValue!6515 V!49341) (_size!3139 (_ BitVec 32)) (_keys!12141 array!83445) (_values!6753 array!83443) (_vacant!3139 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6168)

(declare-fun array_inv!30543 (array!83445) Bool)

(declare-fun array_inv!30544 (array!83443) Bool)

(assert (=> b!1273593 (= e!726732 (and tp!97781 tp_is_empty!33111 (array_inv!30543 (_keys!12141 thiss!1551)) (array_inv!30544 (_values!6753 thiss!1551)) e!726731))))

(declare-fun b!1273594 () Bool)

(declare-fun e!726728 () Bool)

(assert (=> b!1273594 (= e!726728 tp_is_empty!33111)))

(declare-fun b!1273595 () Bool)

(declare-fun e!726729 () Bool)

(assert (=> b!1273595 (= e!726729 tp_is_empty!33111)))

(declare-fun mapNonEmpty!51298 () Bool)

(declare-fun mapRes!51298 () Bool)

(declare-fun tp!97780 () Bool)

(assert (=> mapNonEmpty!51298 (= mapRes!51298 (and tp!97780 e!726729))))

(declare-fun mapKey!51298 () (_ BitVec 32))

(declare-fun mapValue!51298 () ValueCell!15702)

(declare-fun mapRest!51298 () (Array (_ BitVec 32) ValueCell!15702))

(assert (=> mapNonEmpty!51298 (= (arr!40239 (_values!6753 thiss!1551)) (store mapRest!51298 mapKey!51298 mapValue!51298))))

(declare-fun b!1273592 () Bool)

(declare-fun e!726727 () Bool)

(assert (=> b!1273592 (= e!726727 false)))

(declare-fun lt!575079 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!83445 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273592 (= lt!575079 (arrayCountValidKeys!0 (_keys!12141 thiss!1551) #b00000000000000000000000000000000 (size!40786 (_keys!12141 thiss!1551))))))

(declare-fun res!846957 () Bool)

(assert (=> start!107642 (=> (not res!846957) (not e!726727))))

(declare-fun simpleValid!471 (LongMapFixedSize!6168) Bool)

(assert (=> start!107642 (= res!846957 (simpleValid!471 thiss!1551))))

(assert (=> start!107642 e!726727))

(assert (=> start!107642 e!726732))

(declare-fun mapIsEmpty!51298 () Bool)

(assert (=> mapIsEmpty!51298 mapRes!51298))

(declare-fun b!1273596 () Bool)

(assert (=> b!1273596 (= e!726731 (and e!726728 mapRes!51298))))

(declare-fun condMapEmpty!51298 () Bool)

(declare-fun mapDefault!51298 () ValueCell!15702)

(assert (=> b!1273596 (= condMapEmpty!51298 (= (arr!40239 (_values!6753 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15702)) mapDefault!51298)))))

(assert (= (and start!107642 res!846957) b!1273592))

(assert (= (and b!1273596 condMapEmpty!51298) mapIsEmpty!51298))

(assert (= (and b!1273596 (not condMapEmpty!51298)) mapNonEmpty!51298))

(get-info :version)

(assert (= (and mapNonEmpty!51298 ((_ is ValueCellFull!15702) mapValue!51298)) b!1273595))

(assert (= (and b!1273596 ((_ is ValueCellFull!15702) mapDefault!51298)) b!1273594))

(assert (= b!1273593 b!1273596))

(assert (= start!107642 b!1273593))

(declare-fun m!1170703 () Bool)

(assert (=> b!1273593 m!1170703))

(declare-fun m!1170705 () Bool)

(assert (=> b!1273593 m!1170705))

(declare-fun m!1170707 () Bool)

(assert (=> mapNonEmpty!51298 m!1170707))

(declare-fun m!1170709 () Bool)

(assert (=> b!1273592 m!1170709))

(declare-fun m!1170711 () Bool)

(assert (=> start!107642 m!1170711))

(check-sat (not start!107642) (not b!1273593) tp_is_empty!33111 (not mapNonEmpty!51298) (not b!1273592) (not b_next!27741) b_and!45807)
(check-sat b_and!45807 (not b_next!27741))
