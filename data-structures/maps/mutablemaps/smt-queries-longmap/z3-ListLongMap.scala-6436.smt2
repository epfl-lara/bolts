; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82442 () Bool)

(assert start!82442)

(declare-fun b!960814 () Bool)

(declare-fun e!541673 () Bool)

(declare-fun tp_is_empty!21393 () Bool)

(assert (=> b!960814 (= e!541673 tp_is_empty!21393)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun b!960815 () Bool)

(declare-datatypes ((V!33507 0))(
  ( (V!33508 (val!10747 Int)) )
))
(declare-datatypes ((ValueCell!10215 0))(
  ( (ValueCellFull!10215 (v!13304 V!33507)) (EmptyCell!10215) )
))
(declare-datatypes ((array!58881 0))(
  ( (array!58882 (arr!28310 (Array (_ BitVec 32) ValueCell!10215)) (size!28790 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58881)

(declare-datatypes ((array!58883 0))(
  ( (array!58884 (arr!28311 (Array (_ BitVec 32) (_ BitVec 64))) (size!28791 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58883)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun e!541669 () Bool)

(assert (=> b!960815 (= e!541669 (and (= (size!28790 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28791 _keys!1686) (size!28790 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011) (= (size!28791 _keys!1686) (bvadd #b00000000000000000000000000000001 mask!2110)) (bvsgt #b00000000000000000000000000000000 (size!28791 _keys!1686))))))

(declare-fun mapNonEmpty!34069 () Bool)

(declare-fun mapRes!34069 () Bool)

(declare-fun tp!64999 () Bool)

(declare-fun e!541670 () Bool)

(assert (=> mapNonEmpty!34069 (= mapRes!34069 (and tp!64999 e!541670))))

(declare-fun mapRest!34069 () (Array (_ BitVec 32) ValueCell!10215))

(declare-fun mapValue!34069 () ValueCell!10215)

(declare-fun mapKey!34069 () (_ BitVec 32))

(assert (=> mapNonEmpty!34069 (= (arr!28310 _values!1400) (store mapRest!34069 mapKey!34069 mapValue!34069))))

(declare-fun b!960816 () Bool)

(assert (=> b!960816 (= e!541670 tp_is_empty!21393)))

(declare-fun b!960817 () Bool)

(declare-fun e!541671 () Bool)

(assert (=> b!960817 (= e!541671 (and e!541673 mapRes!34069))))

(declare-fun condMapEmpty!34069 () Bool)

(declare-fun mapDefault!34069 () ValueCell!10215)

(assert (=> b!960817 (= condMapEmpty!34069 (= (arr!28310 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10215)) mapDefault!34069)))))

(declare-fun res!643245 () Bool)

(assert (=> start!82442 (=> (not res!643245) (not e!541669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82442 (= res!643245 (validMask!0 mask!2110))))

(assert (=> start!82442 e!541669))

(assert (=> start!82442 true))

(declare-fun array_inv!21869 (array!58881) Bool)

(assert (=> start!82442 (and (array_inv!21869 _values!1400) e!541671)))

(declare-fun array_inv!21870 (array!58883) Bool)

(assert (=> start!82442 (array_inv!21870 _keys!1686)))

(declare-fun mapIsEmpty!34069 () Bool)

(assert (=> mapIsEmpty!34069 mapRes!34069))

(assert (= (and start!82442 res!643245) b!960815))

(assert (= (and b!960817 condMapEmpty!34069) mapIsEmpty!34069))

(assert (= (and b!960817 (not condMapEmpty!34069)) mapNonEmpty!34069))

(get-info :version)

(assert (= (and mapNonEmpty!34069 ((_ is ValueCellFull!10215) mapValue!34069)) b!960816))

(assert (= (and b!960817 ((_ is ValueCellFull!10215) mapDefault!34069)) b!960814))

(assert (= start!82442 b!960817))

(declare-fun m!891053 () Bool)

(assert (=> mapNonEmpty!34069 m!891053))

(declare-fun m!891055 () Bool)

(assert (=> start!82442 m!891055))

(declare-fun m!891057 () Bool)

(assert (=> start!82442 m!891057))

(declare-fun m!891059 () Bool)

(assert (=> start!82442 m!891059))

(check-sat (not start!82442) (not mapNonEmpty!34069) tp_is_empty!21393)
(check-sat)
(get-model)

(declare-fun d!115935 () Bool)

(assert (=> d!115935 (= (validMask!0 mask!2110) (and (or (= mask!2110 #b00000000000000000000000000000111) (= mask!2110 #b00000000000000000000000000001111) (= mask!2110 #b00000000000000000000000000011111) (= mask!2110 #b00000000000000000000000000111111) (= mask!2110 #b00000000000000000000000001111111) (= mask!2110 #b00000000000000000000000011111111) (= mask!2110 #b00000000000000000000000111111111) (= mask!2110 #b00000000000000000000001111111111) (= mask!2110 #b00000000000000000000011111111111) (= mask!2110 #b00000000000000000000111111111111) (= mask!2110 #b00000000000000000001111111111111) (= mask!2110 #b00000000000000000011111111111111) (= mask!2110 #b00000000000000000111111111111111) (= mask!2110 #b00000000000000001111111111111111) (= mask!2110 #b00000000000000011111111111111111) (= mask!2110 #b00000000000000111111111111111111) (= mask!2110 #b00000000000001111111111111111111) (= mask!2110 #b00000000000011111111111111111111) (= mask!2110 #b00000000000111111111111111111111) (= mask!2110 #b00000000001111111111111111111111) (= mask!2110 #b00000000011111111111111111111111) (= mask!2110 #b00000000111111111111111111111111) (= mask!2110 #b00000001111111111111111111111111) (= mask!2110 #b00000011111111111111111111111111) (= mask!2110 #b00000111111111111111111111111111) (= mask!2110 #b00001111111111111111111111111111) (= mask!2110 #b00011111111111111111111111111111) (= mask!2110 #b00111111111111111111111111111111)) (bvsle mask!2110 #b00111111111111111111111111111111)))))

(assert (=> start!82442 d!115935))

(declare-fun d!115937 () Bool)

(assert (=> d!115937 (= (array_inv!21869 _values!1400) (bvsge (size!28790 _values!1400) #b00000000000000000000000000000000))))

(assert (=> start!82442 d!115937))

(declare-fun d!115939 () Bool)

(assert (=> d!115939 (= (array_inv!21870 _keys!1686) (bvsge (size!28791 _keys!1686) #b00000000000000000000000000000000))))

(assert (=> start!82442 d!115939))

(declare-fun b!960836 () Bool)

(declare-fun e!541693 () Bool)

(assert (=> b!960836 (= e!541693 tp_is_empty!21393)))

(declare-fun b!960837 () Bool)

(declare-fun e!541694 () Bool)

(assert (=> b!960837 (= e!541694 tp_is_empty!21393)))

(declare-fun mapNonEmpty!34075 () Bool)

(declare-fun mapRes!34075 () Bool)

(declare-fun tp!65005 () Bool)

(assert (=> mapNonEmpty!34075 (= mapRes!34075 (and tp!65005 e!541693))))

(declare-fun mapRest!34075 () (Array (_ BitVec 32) ValueCell!10215))

(declare-fun mapKey!34075 () (_ BitVec 32))

(declare-fun mapValue!34075 () ValueCell!10215)

(assert (=> mapNonEmpty!34075 (= mapRest!34069 (store mapRest!34075 mapKey!34075 mapValue!34075))))

(declare-fun condMapEmpty!34075 () Bool)

(declare-fun mapDefault!34075 () ValueCell!10215)

(assert (=> mapNonEmpty!34069 (= condMapEmpty!34075 (= mapRest!34069 ((as const (Array (_ BitVec 32) ValueCell!10215)) mapDefault!34075)))))

(assert (=> mapNonEmpty!34069 (= tp!64999 (and e!541694 mapRes!34075))))

(declare-fun mapIsEmpty!34075 () Bool)

(assert (=> mapIsEmpty!34075 mapRes!34075))

(assert (= (and mapNonEmpty!34069 condMapEmpty!34075) mapIsEmpty!34075))

(assert (= (and mapNonEmpty!34069 (not condMapEmpty!34075)) mapNonEmpty!34075))

(assert (= (and mapNonEmpty!34075 ((_ is ValueCellFull!10215) mapValue!34075)) b!960836))

(assert (= (and mapNonEmpty!34069 ((_ is ValueCellFull!10215) mapDefault!34075)) b!960837))

(declare-fun m!891069 () Bool)

(assert (=> mapNonEmpty!34075 m!891069))

(check-sat (not mapNonEmpty!34075) tp_is_empty!21393)
(check-sat)
