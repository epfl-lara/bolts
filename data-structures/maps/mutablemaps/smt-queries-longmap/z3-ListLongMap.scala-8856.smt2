; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107472 () Bool)

(assert start!107472)

(declare-fun b!1272632 () Bool)

(declare-fun b_free!27681 () Bool)

(declare-fun b_next!27681 () Bool)

(assert (=> b!1272632 (= b_free!27681 (not b_next!27681))))

(declare-fun tp!97567 () Bool)

(declare-fun b_and!45747 () Bool)

(assert (=> b!1272632 (= tp!97567 b_and!45747)))

(declare-datatypes ((V!49261 0))(
  ( (V!49262 (val!16600 Int)) )
))
(declare-datatypes ((ValueCell!15672 0))(
  ( (ValueCellFull!15672 (v!19235 V!49261)) (EmptyCell!15672) )
))
(declare-datatypes ((array!83303 0))(
  ( (array!83304 (arr!40179 (Array (_ BitVec 32) ValueCell!15672)) (size!40719 (_ BitVec 32))) )
))
(declare-datatypes ((array!83305 0))(
  ( (array!83306 (arr!40180 (Array (_ BitVec 32) (_ BitVec 64))) (size!40720 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6108 0))(
  ( (LongMapFixedSize!6109 (defaultEntry!6700 Int) (mask!34451 (_ BitVec 32)) (extraKeys!6379 (_ BitVec 32)) (zeroValue!6485 V!49261) (minValue!6485 V!49261) (_size!3109 (_ BitVec 32)) (_keys!12106 array!83305) (_values!6723 array!83303) (_vacant!3109 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6108)

(declare-fun tp_is_empty!33051 () Bool)

(declare-fun e!725973 () Bool)

(declare-fun e!725972 () Bool)

(declare-fun array_inv!30499 (array!83305) Bool)

(declare-fun array_inv!30500 (array!83303) Bool)

(assert (=> b!1272632 (= e!725972 (and tp!97567 tp_is_empty!33051 (array_inv!30499 (_keys!12106 thiss!1559)) (array_inv!30500 (_values!6723 thiss!1559)) e!725973))))

(declare-fun mapNonEmpty!51175 () Bool)

(declare-fun mapRes!51175 () Bool)

(declare-fun tp!97568 () Bool)

(declare-fun e!725968 () Bool)

(assert (=> mapNonEmpty!51175 (= mapRes!51175 (and tp!97568 e!725968))))

(declare-fun mapKey!51175 () (_ BitVec 32))

(declare-fun mapRest!51175 () (Array (_ BitVec 32) ValueCell!15672))

(declare-fun mapValue!51175 () ValueCell!15672)

(assert (=> mapNonEmpty!51175 (= (arr!40179 (_values!6723 thiss!1559)) (store mapRest!51175 mapKey!51175 mapValue!51175))))

(declare-fun b!1272633 () Bool)

(assert (=> b!1272633 (= e!725968 tp_is_empty!33051)))

(declare-fun b!1272634 () Bool)

(declare-fun e!725971 () Bool)

(assert (=> b!1272634 (= e!725971 tp_is_empty!33051)))

(declare-fun b!1272635 () Bool)

(declare-fun e!725969 () Bool)

(assert (=> b!1272635 (= e!725969 (and (= (size!40719 (_values!6723 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34451 thiss!1559))) (= (size!40720 (_keys!12106 thiss!1559)) (size!40719 (_values!6723 thiss!1559))) (bvslt (mask!34451 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun b!1272636 () Bool)

(assert (=> b!1272636 (= e!725973 (and e!725971 mapRes!51175))))

(declare-fun condMapEmpty!51175 () Bool)

(declare-fun mapDefault!51175 () ValueCell!15672)

(assert (=> b!1272636 (= condMapEmpty!51175 (= (arr!40179 (_values!6723 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15672)) mapDefault!51175)))))

(declare-fun b!1272637 () Bool)

(declare-fun res!846546 () Bool)

(assert (=> b!1272637 (=> (not res!846546) (not e!725969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272637 (= res!846546 (validMask!0 (mask!34451 thiss!1559)))))

(declare-fun mapIsEmpty!51175 () Bool)

(assert (=> mapIsEmpty!51175 mapRes!51175))

(declare-fun res!846545 () Bool)

(assert (=> start!107472 (=> (not res!846545) (not e!725969))))

(declare-fun valid!2247 (LongMapFixedSize!6108) Bool)

(assert (=> start!107472 (= res!846545 (valid!2247 thiss!1559))))

(assert (=> start!107472 e!725969))

(assert (=> start!107472 e!725972))

(assert (= (and start!107472 res!846545) b!1272637))

(assert (= (and b!1272637 res!846546) b!1272635))

(assert (= (and b!1272636 condMapEmpty!51175) mapIsEmpty!51175))

(assert (= (and b!1272636 (not condMapEmpty!51175)) mapNonEmpty!51175))

(get-info :version)

(assert (= (and mapNonEmpty!51175 ((_ is ValueCellFull!15672) mapValue!51175)) b!1272633))

(assert (= (and b!1272636 ((_ is ValueCellFull!15672) mapDefault!51175)) b!1272634))

(assert (= b!1272632 b!1272636))

(assert (= start!107472 b!1272632))

(declare-fun m!1170201 () Bool)

(assert (=> b!1272632 m!1170201))

(declare-fun m!1170203 () Bool)

(assert (=> b!1272632 m!1170203))

(declare-fun m!1170205 () Bool)

(assert (=> mapNonEmpty!51175 m!1170205))

(declare-fun m!1170207 () Bool)

(assert (=> b!1272637 m!1170207))

(declare-fun m!1170209 () Bool)

(assert (=> start!107472 m!1170209))

(check-sat (not b_next!27681) tp_is_empty!33051 (not b!1272637) (not b!1272632) b_and!45747 (not start!107472) (not mapNonEmpty!51175))
(check-sat b_and!45747 (not b_next!27681))
(get-model)

(declare-fun d!139817 () Bool)

(declare-fun res!846559 () Bool)

(declare-fun e!725994 () Bool)

(assert (=> d!139817 (=> (not res!846559) (not e!725994))))

(declare-fun simpleValid!457 (LongMapFixedSize!6108) Bool)

(assert (=> d!139817 (= res!846559 (simpleValid!457 thiss!1559))))

(assert (=> d!139817 (= (valid!2247 thiss!1559) e!725994)))

(declare-fun b!1272662 () Bool)

(declare-fun res!846560 () Bool)

(assert (=> b!1272662 (=> (not res!846560) (not e!725994))))

(declare-fun arrayCountValidKeys!0 (array!83305 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1272662 (= res!846560 (= (arrayCountValidKeys!0 (_keys!12106 thiss!1559) #b00000000000000000000000000000000 (size!40720 (_keys!12106 thiss!1559))) (_size!3109 thiss!1559)))))

(declare-fun b!1272663 () Bool)

(declare-fun res!846561 () Bool)

(assert (=> b!1272663 (=> (not res!846561) (not e!725994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83305 (_ BitVec 32)) Bool)

(assert (=> b!1272663 (= res!846561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12106 thiss!1559) (mask!34451 thiss!1559)))))

(declare-fun b!1272664 () Bool)

(declare-datatypes ((List!28719 0))(
  ( (Nil!28716) (Cons!28715 (h!29924 (_ BitVec 64)) (t!42259 List!28719)) )
))
(declare-fun arrayNoDuplicates!0 (array!83305 (_ BitVec 32) List!28719) Bool)

(assert (=> b!1272664 (= e!725994 (arrayNoDuplicates!0 (_keys!12106 thiss!1559) #b00000000000000000000000000000000 Nil!28716))))

(assert (= (and d!139817 res!846559) b!1272662))

(assert (= (and b!1272662 res!846560) b!1272663))

(assert (= (and b!1272663 res!846561) b!1272664))

(declare-fun m!1170221 () Bool)

(assert (=> d!139817 m!1170221))

(declare-fun m!1170223 () Bool)

(assert (=> b!1272662 m!1170223))

(declare-fun m!1170225 () Bool)

(assert (=> b!1272663 m!1170225))

(declare-fun m!1170227 () Bool)

(assert (=> b!1272664 m!1170227))

(assert (=> start!107472 d!139817))

(declare-fun d!139819 () Bool)

(assert (=> d!139819 (= (array_inv!30499 (_keys!12106 thiss!1559)) (bvsge (size!40720 (_keys!12106 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272632 d!139819))

(declare-fun d!139821 () Bool)

(assert (=> d!139821 (= (array_inv!30500 (_values!6723 thiss!1559)) (bvsge (size!40719 (_values!6723 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272632 d!139821))

(declare-fun d!139823 () Bool)

(assert (=> d!139823 (= (validMask!0 (mask!34451 thiss!1559)) (and (or (= (mask!34451 thiss!1559) #b00000000000000000000000000000111) (= (mask!34451 thiss!1559) #b00000000000000000000000000001111) (= (mask!34451 thiss!1559) #b00000000000000000000000000011111) (= (mask!34451 thiss!1559) #b00000000000000000000000000111111) (= (mask!34451 thiss!1559) #b00000000000000000000000001111111) (= (mask!34451 thiss!1559) #b00000000000000000000000011111111) (= (mask!34451 thiss!1559) #b00000000000000000000000111111111) (= (mask!34451 thiss!1559) #b00000000000000000000001111111111) (= (mask!34451 thiss!1559) #b00000000000000000000011111111111) (= (mask!34451 thiss!1559) #b00000000000000000000111111111111) (= (mask!34451 thiss!1559) #b00000000000000000001111111111111) (= (mask!34451 thiss!1559) #b00000000000000000011111111111111) (= (mask!34451 thiss!1559) #b00000000000000000111111111111111) (= (mask!34451 thiss!1559) #b00000000000000001111111111111111) (= (mask!34451 thiss!1559) #b00000000000000011111111111111111) (= (mask!34451 thiss!1559) #b00000000000000111111111111111111) (= (mask!34451 thiss!1559) #b00000000000001111111111111111111) (= (mask!34451 thiss!1559) #b00000000000011111111111111111111) (= (mask!34451 thiss!1559) #b00000000000111111111111111111111) (= (mask!34451 thiss!1559) #b00000000001111111111111111111111) (= (mask!34451 thiss!1559) #b00000000011111111111111111111111) (= (mask!34451 thiss!1559) #b00000000111111111111111111111111) (= (mask!34451 thiss!1559) #b00000001111111111111111111111111) (= (mask!34451 thiss!1559) #b00000011111111111111111111111111) (= (mask!34451 thiss!1559) #b00000111111111111111111111111111) (= (mask!34451 thiss!1559) #b00001111111111111111111111111111) (= (mask!34451 thiss!1559) #b00011111111111111111111111111111) (= (mask!34451 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34451 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1272637 d!139823))

(declare-fun condMapEmpty!51181 () Bool)

(declare-fun mapDefault!51181 () ValueCell!15672)

(assert (=> mapNonEmpty!51175 (= condMapEmpty!51181 (= mapRest!51175 ((as const (Array (_ BitVec 32) ValueCell!15672)) mapDefault!51181)))))

(declare-fun e!725999 () Bool)

(declare-fun mapRes!51181 () Bool)

(assert (=> mapNonEmpty!51175 (= tp!97568 (and e!725999 mapRes!51181))))

(declare-fun mapNonEmpty!51181 () Bool)

(declare-fun tp!97577 () Bool)

(declare-fun e!726000 () Bool)

(assert (=> mapNonEmpty!51181 (= mapRes!51181 (and tp!97577 e!726000))))

(declare-fun mapValue!51181 () ValueCell!15672)

(declare-fun mapRest!51181 () (Array (_ BitVec 32) ValueCell!15672))

(declare-fun mapKey!51181 () (_ BitVec 32))

(assert (=> mapNonEmpty!51181 (= mapRest!51175 (store mapRest!51181 mapKey!51181 mapValue!51181))))

(declare-fun mapIsEmpty!51181 () Bool)

(assert (=> mapIsEmpty!51181 mapRes!51181))

(declare-fun b!1272671 () Bool)

(assert (=> b!1272671 (= e!726000 tp_is_empty!33051)))

(declare-fun b!1272672 () Bool)

(assert (=> b!1272672 (= e!725999 tp_is_empty!33051)))

(assert (= (and mapNonEmpty!51175 condMapEmpty!51181) mapIsEmpty!51181))

(assert (= (and mapNonEmpty!51175 (not condMapEmpty!51181)) mapNonEmpty!51181))

(assert (= (and mapNonEmpty!51181 ((_ is ValueCellFull!15672) mapValue!51181)) b!1272671))

(assert (= (and mapNonEmpty!51175 ((_ is ValueCellFull!15672) mapDefault!51181)) b!1272672))

(declare-fun m!1170229 () Bool)

(assert (=> mapNonEmpty!51181 m!1170229))

(check-sat (not b_next!27681) (not b!1272663) (not mapNonEmpty!51181) (not b!1272662) (not b!1272664) b_and!45747 tp_is_empty!33051 (not d!139817))
(check-sat b_and!45747 (not b_next!27681))
