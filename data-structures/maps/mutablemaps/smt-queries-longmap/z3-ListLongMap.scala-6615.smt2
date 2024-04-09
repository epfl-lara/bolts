; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83648 () Bool)

(assert start!83648)

(declare-fun b!976800 () Bool)

(declare-fun e!550584 () Bool)

(declare-fun tp_is_empty!22467 () Bool)

(assert (=> b!976800 (= e!550584 tp_is_empty!22467)))

(declare-fun mapNonEmpty!35714 () Bool)

(declare-fun mapRes!35714 () Bool)

(declare-fun tp!67967 () Bool)

(declare-fun e!550582 () Bool)

(assert (=> mapNonEmpty!35714 (= mapRes!35714 (and tp!67967 e!550582))))

(declare-datatypes ((V!34939 0))(
  ( (V!34940 (val!11284 Int)) )
))
(declare-datatypes ((ValueCell!10752 0))(
  ( (ValueCellFull!10752 (v!13845 V!34939)) (EmptyCell!10752) )
))
(declare-datatypes ((array!60945 0))(
  ( (array!60946 (arr!29331 (Array (_ BitVec 32) ValueCell!10752)) (size!29811 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60945)

(declare-fun mapKey!35714 () (_ BitVec 32))

(declare-fun mapRest!35714 () (Array (_ BitVec 32) ValueCell!10752))

(declare-fun mapValue!35714 () ValueCell!10752)

(assert (=> mapNonEmpty!35714 (= (arr!29331 _values!1278) (store mapRest!35714 mapKey!35714 mapValue!35714))))

(declare-fun b!976801 () Bool)

(assert (=> b!976801 (= e!550582 tp_is_empty!22467)))

(declare-fun mapIsEmpty!35714 () Bool)

(assert (=> mapIsEmpty!35714 mapRes!35714))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun e!550581 () Bool)

(declare-datatypes ((array!60947 0))(
  ( (array!60948 (arr!29332 (Array (_ BitVec 32) (_ BitVec 64))) (size!29812 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60947)

(declare-fun b!976802 () Bool)

(assert (=> b!976802 (= e!550581 (and (= (size!29811 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29812 _keys!1544) (size!29811 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011) (= (size!29812 _keys!1544) (bvadd #b00000000000000000000000000000001 mask!1948)) (bvsgt #b00000000000000000000000000000000 (size!29812 _keys!1544))))))

(declare-fun b!976803 () Bool)

(declare-fun e!550580 () Bool)

(assert (=> b!976803 (= e!550580 (and e!550584 mapRes!35714))))

(declare-fun condMapEmpty!35714 () Bool)

(declare-fun mapDefault!35714 () ValueCell!10752)

(assert (=> b!976803 (= condMapEmpty!35714 (= (arr!29331 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10752)) mapDefault!35714)))))

(declare-fun res!653944 () Bool)

(assert (=> start!83648 (=> (not res!653944) (not e!550581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83648 (= res!653944 (validMask!0 mask!1948))))

(assert (=> start!83648 e!550581))

(assert (=> start!83648 true))

(declare-fun array_inv!22581 (array!60945) Bool)

(assert (=> start!83648 (and (array_inv!22581 _values!1278) e!550580)))

(declare-fun array_inv!22582 (array!60947) Bool)

(assert (=> start!83648 (array_inv!22582 _keys!1544)))

(assert (= (and start!83648 res!653944) b!976802))

(assert (= (and b!976803 condMapEmpty!35714) mapIsEmpty!35714))

(assert (= (and b!976803 (not condMapEmpty!35714)) mapNonEmpty!35714))

(get-info :version)

(assert (= (and mapNonEmpty!35714 ((_ is ValueCellFull!10752) mapValue!35714)) b!976801))

(assert (= (and b!976803 ((_ is ValueCellFull!10752) mapDefault!35714)) b!976800))

(assert (= start!83648 b!976803))

(declare-fun m!904359 () Bool)

(assert (=> mapNonEmpty!35714 m!904359))

(declare-fun m!904361 () Bool)

(assert (=> start!83648 m!904361))

(declare-fun m!904363 () Bool)

(assert (=> start!83648 m!904363))

(declare-fun m!904365 () Bool)

(assert (=> start!83648 m!904365))

(check-sat (not start!83648) (not mapNonEmpty!35714) tp_is_empty!22467)
(check-sat)
(get-model)

(declare-fun d!116539 () Bool)

(assert (=> d!116539 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!83648 d!116539))

(declare-fun d!116541 () Bool)

(assert (=> d!116541 (= (array_inv!22581 _values!1278) (bvsge (size!29811 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!83648 d!116541))

(declare-fun d!116543 () Bool)

(assert (=> d!116543 (= (array_inv!22582 _keys!1544) (bvsge (size!29812 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!83648 d!116543))

(declare-fun mapNonEmpty!35720 () Bool)

(declare-fun mapRes!35720 () Bool)

(declare-fun tp!67973 () Bool)

(declare-fun e!550604 () Bool)

(assert (=> mapNonEmpty!35720 (= mapRes!35720 (and tp!67973 e!550604))))

(declare-fun mapRest!35720 () (Array (_ BitVec 32) ValueCell!10752))

(declare-fun mapKey!35720 () (_ BitVec 32))

(declare-fun mapValue!35720 () ValueCell!10752)

(assert (=> mapNonEmpty!35720 (= mapRest!35714 (store mapRest!35720 mapKey!35720 mapValue!35720))))

(declare-fun b!976823 () Bool)

(declare-fun e!550605 () Bool)

(assert (=> b!976823 (= e!550605 tp_is_empty!22467)))

(declare-fun condMapEmpty!35720 () Bool)

(declare-fun mapDefault!35720 () ValueCell!10752)

(assert (=> mapNonEmpty!35714 (= condMapEmpty!35720 (= mapRest!35714 ((as const (Array (_ BitVec 32) ValueCell!10752)) mapDefault!35720)))))

(assert (=> mapNonEmpty!35714 (= tp!67967 (and e!550605 mapRes!35720))))

(declare-fun mapIsEmpty!35720 () Bool)

(assert (=> mapIsEmpty!35720 mapRes!35720))

(declare-fun b!976822 () Bool)

(assert (=> b!976822 (= e!550604 tp_is_empty!22467)))

(assert (= (and mapNonEmpty!35714 condMapEmpty!35720) mapIsEmpty!35720))

(assert (= (and mapNonEmpty!35714 (not condMapEmpty!35720)) mapNonEmpty!35720))

(assert (= (and mapNonEmpty!35720 ((_ is ValueCellFull!10752) mapValue!35720)) b!976822))

(assert (= (and mapNonEmpty!35714 ((_ is ValueCellFull!10752) mapDefault!35720)) b!976823))

(declare-fun m!904375 () Bool)

(assert (=> mapNonEmpty!35720 m!904375))

(check-sat (not mapNonEmpty!35720) tp_is_empty!22467)
(check-sat)
