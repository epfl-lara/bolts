; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107582 () Bool)

(assert start!107582)

(declare-fun b!1273281 () Bool)

(declare-fun b_free!27717 () Bool)

(declare-fun b_next!27717 () Bool)

(assert (=> b!1273281 (= b_free!27717 (not b_next!27717))))

(declare-fun tp!97696 () Bool)

(declare-fun b_and!45783 () Bool)

(assert (=> b!1273281 (= tp!97696 b_and!45783)))

(declare-fun b!1273279 () Bool)

(declare-fun e!726462 () Bool)

(declare-fun e!726466 () Bool)

(declare-fun mapRes!51249 () Bool)

(assert (=> b!1273279 (= e!726462 (and e!726466 mapRes!51249))))

(declare-fun condMapEmpty!51249 () Bool)

(declare-datatypes ((V!49309 0))(
  ( (V!49310 (val!16618 Int)) )
))
(declare-datatypes ((ValueCell!15690 0))(
  ( (ValueCellFull!15690 (v!19253 V!49309)) (EmptyCell!15690) )
))
(declare-datatypes ((array!83387 0))(
  ( (array!83388 (arr!40215 (Array (_ BitVec 32) ValueCell!15690)) (size!40757 (_ BitVec 32))) )
))
(declare-datatypes ((array!83389 0))(
  ( (array!83390 (arr!40216 (Array (_ BitVec 32) (_ BitVec 64))) (size!40758 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6144 0))(
  ( (LongMapFixedSize!6145 (defaultEntry!6718 Int) (mask!34492 (_ BitVec 32)) (extraKeys!6397 (_ BitVec 32)) (zeroValue!6503 V!49309) (minValue!6503 V!49309) (_size!3127 (_ BitVec 32)) (_keys!12129 array!83389) (_values!6741 array!83387) (_vacant!3127 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6144)

(declare-fun mapDefault!51249 () ValueCell!15690)

(assert (=> b!1273279 (= condMapEmpty!51249 (= (arr!40215 (_values!6741 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15690)) mapDefault!51249)))))

(declare-fun b!1273280 () Bool)

(declare-fun e!726461 () Bool)

(assert (=> b!1273280 (= e!726461 (bvsgt #b00000000000000000000000000000000 (size!40758 (_keys!12129 thiss!1551))))))

(declare-fun mapNonEmpty!51249 () Bool)

(declare-fun tp!97695 () Bool)

(declare-fun e!726465 () Bool)

(assert (=> mapNonEmpty!51249 (= mapRes!51249 (and tp!97695 e!726465))))

(declare-fun mapRest!51249 () (Array (_ BitVec 32) ValueCell!15690))

(declare-fun mapValue!51249 () ValueCell!15690)

(declare-fun mapKey!51249 () (_ BitVec 32))

(assert (=> mapNonEmpty!51249 (= (arr!40215 (_values!6741 thiss!1551)) (store mapRest!51249 mapKey!51249 mapValue!51249))))

(declare-fun mapIsEmpty!51249 () Bool)

(assert (=> mapIsEmpty!51249 mapRes!51249))

(declare-fun res!846846 () Bool)

(assert (=> start!107582 (=> (not res!846846) (not e!726461))))

(declare-fun simpleValid!463 (LongMapFixedSize!6144) Bool)

(assert (=> start!107582 (= res!846846 (simpleValid!463 thiss!1551))))

(assert (=> start!107582 e!726461))

(declare-fun e!726463 () Bool)

(assert (=> start!107582 e!726463))

(declare-fun tp_is_empty!33087 () Bool)

(declare-fun array_inv!30527 (array!83389) Bool)

(declare-fun array_inv!30528 (array!83387) Bool)

(assert (=> b!1273281 (= e!726463 (and tp!97696 tp_is_empty!33087 (array_inv!30527 (_keys!12129 thiss!1551)) (array_inv!30528 (_values!6741 thiss!1551)) e!726462))))

(declare-fun b!1273282 () Bool)

(assert (=> b!1273282 (= e!726466 tp_is_empty!33087)))

(declare-fun b!1273283 () Bool)

(assert (=> b!1273283 (= e!726465 tp_is_empty!33087)))

(assert (= (and start!107582 res!846846) b!1273280))

(assert (= (and b!1273279 condMapEmpty!51249) mapIsEmpty!51249))

(assert (= (and b!1273279 (not condMapEmpty!51249)) mapNonEmpty!51249))

(get-info :version)

(assert (= (and mapNonEmpty!51249 ((_ is ValueCellFull!15690) mapValue!51249)) b!1273283))

(assert (= (and b!1273279 ((_ is ValueCellFull!15690) mapDefault!51249)) b!1273282))

(assert (= b!1273281 b!1273279))

(assert (= start!107582 b!1273281))

(declare-fun m!1170547 () Bool)

(assert (=> mapNonEmpty!51249 m!1170547))

(declare-fun m!1170549 () Bool)

(assert (=> start!107582 m!1170549))

(declare-fun m!1170551 () Bool)

(assert (=> b!1273281 m!1170551))

(declare-fun m!1170553 () Bool)

(assert (=> b!1273281 m!1170553))

(check-sat (not b!1273281) b_and!45783 (not mapNonEmpty!51249) (not b_next!27717) tp_is_empty!33087 (not start!107582))
(check-sat b_and!45783 (not b_next!27717))
(get-model)

(declare-fun d!139903 () Bool)

(assert (=> d!139903 (= (array_inv!30527 (_keys!12129 thiss!1551)) (bvsge (size!40758 (_keys!12129 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273281 d!139903))

(declare-fun d!139905 () Bool)

(assert (=> d!139905 (= (array_inv!30528 (_values!6741 thiss!1551)) (bvsge (size!40757 (_values!6741 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273281 d!139905))

(declare-fun b!1273309 () Bool)

(declare-fun res!846860 () Bool)

(declare-fun e!726487 () Bool)

(assert (=> b!1273309 (=> (not res!846860) (not e!726487))))

(declare-fun size!40761 (LongMapFixedSize!6144) (_ BitVec 32))

(assert (=> b!1273309 (= res!846860 (= (size!40761 thiss!1551) (bvadd (_size!3127 thiss!1551) (bvsdiv (bvadd (extraKeys!6397 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1273307 () Bool)

(declare-fun res!846861 () Bool)

(assert (=> b!1273307 (=> (not res!846861) (not e!726487))))

(assert (=> b!1273307 (= res!846861 (and (= (size!40757 (_values!6741 thiss!1551)) (bvadd (mask!34492 thiss!1551) #b00000000000000000000000000000001)) (= (size!40758 (_keys!12129 thiss!1551)) (size!40757 (_values!6741 thiss!1551))) (bvsge (_size!3127 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3127 thiss!1551) (bvadd (mask!34492 thiss!1551) #b00000000000000000000000000000001))))))

(declare-fun b!1273310 () Bool)

(assert (=> b!1273310 (= e!726487 (and (bvsge (extraKeys!6397 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6397 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3127 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1273308 () Bool)

(declare-fun res!846859 () Bool)

(assert (=> b!1273308 (=> (not res!846859) (not e!726487))))

(assert (=> b!1273308 (= res!846859 (bvsge (size!40761 thiss!1551) (_size!3127 thiss!1551)))))

(declare-fun d!139907 () Bool)

(declare-fun res!846858 () Bool)

(assert (=> d!139907 (=> (not res!846858) (not e!726487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!139907 (= res!846858 (validMask!0 (mask!34492 thiss!1551)))))

(assert (=> d!139907 (= (simpleValid!463 thiss!1551) e!726487)))

(assert (= (and d!139907 res!846858) b!1273307))

(assert (= (and b!1273307 res!846861) b!1273308))

(assert (= (and b!1273308 res!846859) b!1273309))

(assert (= (and b!1273309 res!846860) b!1273310))

(declare-fun m!1170563 () Bool)

(assert (=> b!1273309 m!1170563))

(assert (=> b!1273308 m!1170563))

(declare-fun m!1170565 () Bool)

(assert (=> d!139907 m!1170565))

(assert (=> start!107582 d!139907))

(declare-fun b!1273318 () Bool)

(declare-fun e!726492 () Bool)

(assert (=> b!1273318 (= e!726492 tp_is_empty!33087)))

(declare-fun mapIsEmpty!51255 () Bool)

(declare-fun mapRes!51255 () Bool)

(assert (=> mapIsEmpty!51255 mapRes!51255))

(declare-fun condMapEmpty!51255 () Bool)

(declare-fun mapDefault!51255 () ValueCell!15690)

(assert (=> mapNonEmpty!51249 (= condMapEmpty!51255 (= mapRest!51249 ((as const (Array (_ BitVec 32) ValueCell!15690)) mapDefault!51255)))))

(assert (=> mapNonEmpty!51249 (= tp!97695 (and e!726492 mapRes!51255))))

(declare-fun mapNonEmpty!51255 () Bool)

(declare-fun tp!97705 () Bool)

(declare-fun e!726493 () Bool)

(assert (=> mapNonEmpty!51255 (= mapRes!51255 (and tp!97705 e!726493))))

(declare-fun mapRest!51255 () (Array (_ BitVec 32) ValueCell!15690))

(declare-fun mapValue!51255 () ValueCell!15690)

(declare-fun mapKey!51255 () (_ BitVec 32))

(assert (=> mapNonEmpty!51255 (= mapRest!51249 (store mapRest!51255 mapKey!51255 mapValue!51255))))

(declare-fun b!1273317 () Bool)

(assert (=> b!1273317 (= e!726493 tp_is_empty!33087)))

(assert (= (and mapNonEmpty!51249 condMapEmpty!51255) mapIsEmpty!51255))

(assert (= (and mapNonEmpty!51249 (not condMapEmpty!51255)) mapNonEmpty!51255))

(assert (= (and mapNonEmpty!51255 ((_ is ValueCellFull!15690) mapValue!51255)) b!1273317))

(assert (= (and mapNonEmpty!51249 ((_ is ValueCellFull!15690) mapDefault!51255)) b!1273318))

(declare-fun m!1170567 () Bool)

(assert (=> mapNonEmpty!51255 m!1170567))

(check-sat b_and!45783 (not b!1273308) (not mapNonEmpty!51255) (not b_next!27717) tp_is_empty!33087 (not b!1273309) (not d!139907))
(check-sat b_and!45783 (not b_next!27717))
