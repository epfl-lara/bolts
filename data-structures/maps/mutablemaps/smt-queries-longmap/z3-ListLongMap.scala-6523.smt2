; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83008 () Bool)

(assert start!83008)

(declare-fun b!968374 () Bool)

(declare-fun e!545778 () Bool)

(declare-fun e!545780 () Bool)

(declare-fun mapRes!34867 () Bool)

(assert (=> b!968374 (= e!545778 (and e!545780 mapRes!34867))))

(declare-fun condMapEmpty!34867 () Bool)

(declare-datatypes ((V!34203 0))(
  ( (V!34204 (val!11008 Int)) )
))
(declare-datatypes ((ValueCell!10476 0))(
  ( (ValueCellFull!10476 (v!13566 V!34203)) (EmptyCell!10476) )
))
(declare-datatypes ((array!59881 0))(
  ( (array!59882 (arr!28805 (Array (_ BitVec 32) ValueCell!10476)) (size!29285 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59881)

(declare-fun mapDefault!34867 () ValueCell!10476)

(assert (=> b!968374 (= condMapEmpty!34867 (= (arr!28805 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10476)) mapDefault!34867)))))

(declare-fun mapNonEmpty!34867 () Bool)

(declare-fun tp!66436 () Bool)

(declare-fun e!545782 () Bool)

(assert (=> mapNonEmpty!34867 (= mapRes!34867 (and tp!66436 e!545782))))

(declare-fun mapValue!34867 () ValueCell!10476)

(declare-fun mapKey!34867 () (_ BitVec 32))

(declare-fun mapRest!34867 () (Array (_ BitVec 32) ValueCell!10476))

(assert (=> mapNonEmpty!34867 (= (arr!28805 _values!1425) (store mapRest!34867 mapKey!34867 mapValue!34867))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun b!968375 () Bool)

(declare-fun e!545781 () Bool)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!59883 0))(
  ( (array!59884 (arr!28806 (Array (_ BitVec 32) (_ BitVec 64))) (size!29286 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59883)

(assert (=> b!968375 (= e!545781 (and (= (size!29285 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29286 _keys!1717) (size!29285 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011) (= (size!29286 _keys!1717) (bvadd #b00000000000000000000000000000001 mask!2147)) (bvsgt #b00000000000000000000000000000000 (size!29286 _keys!1717))))))

(declare-fun mapIsEmpty!34867 () Bool)

(assert (=> mapIsEmpty!34867 mapRes!34867))

(declare-fun b!968376 () Bool)

(declare-fun tp_is_empty!21915 () Bool)

(assert (=> b!968376 (= e!545782 tp_is_empty!21915)))

(declare-fun b!968377 () Bool)

(assert (=> b!968377 (= e!545780 tp_is_empty!21915)))

(declare-fun res!648392 () Bool)

(assert (=> start!83008 (=> (not res!648392) (not e!545781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83008 (= res!648392 (validMask!0 mask!2147))))

(assert (=> start!83008 e!545781))

(assert (=> start!83008 true))

(declare-fun array_inv!22195 (array!59881) Bool)

(assert (=> start!83008 (and (array_inv!22195 _values!1425) e!545778)))

(declare-fun array_inv!22196 (array!59883) Bool)

(assert (=> start!83008 (array_inv!22196 _keys!1717)))

(assert (= (and start!83008 res!648392) b!968375))

(assert (= (and b!968374 condMapEmpty!34867) mapIsEmpty!34867))

(assert (= (and b!968374 (not condMapEmpty!34867)) mapNonEmpty!34867))

(get-info :version)

(assert (= (and mapNonEmpty!34867 ((_ is ValueCellFull!10476) mapValue!34867)) b!968376))

(assert (= (and b!968374 ((_ is ValueCellFull!10476) mapDefault!34867)) b!968377))

(assert (= start!83008 b!968374))

(declare-fun m!896811 () Bool)

(assert (=> mapNonEmpty!34867 m!896811))

(declare-fun m!896813 () Bool)

(assert (=> start!83008 m!896813))

(declare-fun m!896815 () Bool)

(assert (=> start!83008 m!896815))

(declare-fun m!896817 () Bool)

(assert (=> start!83008 m!896817))

(check-sat (not start!83008) (not mapNonEmpty!34867) tp_is_empty!21915)
(check-sat)
(get-model)

(declare-fun d!116155 () Bool)

(assert (=> d!116155 (= (validMask!0 mask!2147) (and (or (= mask!2147 #b00000000000000000000000000000111) (= mask!2147 #b00000000000000000000000000001111) (= mask!2147 #b00000000000000000000000000011111) (= mask!2147 #b00000000000000000000000000111111) (= mask!2147 #b00000000000000000000000001111111) (= mask!2147 #b00000000000000000000000011111111) (= mask!2147 #b00000000000000000000000111111111) (= mask!2147 #b00000000000000000000001111111111) (= mask!2147 #b00000000000000000000011111111111) (= mask!2147 #b00000000000000000000111111111111) (= mask!2147 #b00000000000000000001111111111111) (= mask!2147 #b00000000000000000011111111111111) (= mask!2147 #b00000000000000000111111111111111) (= mask!2147 #b00000000000000001111111111111111) (= mask!2147 #b00000000000000011111111111111111) (= mask!2147 #b00000000000000111111111111111111) (= mask!2147 #b00000000000001111111111111111111) (= mask!2147 #b00000000000011111111111111111111) (= mask!2147 #b00000000000111111111111111111111) (= mask!2147 #b00000000001111111111111111111111) (= mask!2147 #b00000000011111111111111111111111) (= mask!2147 #b00000000111111111111111111111111) (= mask!2147 #b00000001111111111111111111111111) (= mask!2147 #b00000011111111111111111111111111) (= mask!2147 #b00000111111111111111111111111111) (= mask!2147 #b00001111111111111111111111111111) (= mask!2147 #b00011111111111111111111111111111) (= mask!2147 #b00111111111111111111111111111111)) (bvsle mask!2147 #b00111111111111111111111111111111)))))

(assert (=> start!83008 d!116155))

(declare-fun d!116157 () Bool)

(assert (=> d!116157 (= (array_inv!22195 _values!1425) (bvsge (size!29285 _values!1425) #b00000000000000000000000000000000))))

(assert (=> start!83008 d!116157))

(declare-fun d!116159 () Bool)

(assert (=> d!116159 (= (array_inv!22196 _keys!1717) (bvsge (size!29286 _keys!1717) #b00000000000000000000000000000000))))

(assert (=> start!83008 d!116159))

(declare-fun mapIsEmpty!34873 () Bool)

(declare-fun mapRes!34873 () Bool)

(assert (=> mapIsEmpty!34873 mapRes!34873))

(declare-fun b!968397 () Bool)

(declare-fun e!545803 () Bool)

(assert (=> b!968397 (= e!545803 tp_is_empty!21915)))

(declare-fun mapNonEmpty!34873 () Bool)

(declare-fun tp!66442 () Bool)

(declare-fun e!545802 () Bool)

(assert (=> mapNonEmpty!34873 (= mapRes!34873 (and tp!66442 e!545802))))

(declare-fun mapRest!34873 () (Array (_ BitVec 32) ValueCell!10476))

(declare-fun mapValue!34873 () ValueCell!10476)

(declare-fun mapKey!34873 () (_ BitVec 32))

(assert (=> mapNonEmpty!34873 (= mapRest!34867 (store mapRest!34873 mapKey!34873 mapValue!34873))))

(declare-fun condMapEmpty!34873 () Bool)

(declare-fun mapDefault!34873 () ValueCell!10476)

(assert (=> mapNonEmpty!34867 (= condMapEmpty!34873 (= mapRest!34867 ((as const (Array (_ BitVec 32) ValueCell!10476)) mapDefault!34873)))))

(assert (=> mapNonEmpty!34867 (= tp!66436 (and e!545803 mapRes!34873))))

(declare-fun b!968396 () Bool)

(assert (=> b!968396 (= e!545802 tp_is_empty!21915)))

(assert (= (and mapNonEmpty!34867 condMapEmpty!34873) mapIsEmpty!34873))

(assert (= (and mapNonEmpty!34867 (not condMapEmpty!34873)) mapNonEmpty!34873))

(assert (= (and mapNonEmpty!34873 ((_ is ValueCellFull!10476) mapValue!34873)) b!968396))

(assert (= (and mapNonEmpty!34867 ((_ is ValueCellFull!10476) mapDefault!34873)) b!968397))

(declare-fun m!896827 () Bool)

(assert (=> mapNonEmpty!34873 m!896827))

(check-sat (not mapNonEmpty!34873) tp_is_empty!21915)
(check-sat)
