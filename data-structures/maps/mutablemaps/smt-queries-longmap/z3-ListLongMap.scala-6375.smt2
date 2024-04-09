; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82016 () Bool)

(assert start!82016)

(declare-fun b!956125 () Bool)

(declare-fun e!538759 () Bool)

(declare-fun e!538760 () Bool)

(declare-fun mapRes!33502 () Bool)

(assert (=> b!956125 (= e!538759 (and e!538760 mapRes!33502))))

(declare-fun condMapEmpty!33502 () Bool)

(declare-datatypes ((V!33019 0))(
  ( (V!33020 (val!10564 Int)) )
))
(declare-datatypes ((ValueCell!10032 0))(
  ( (ValueCellFull!10032 (v!13119 V!33019)) (EmptyCell!10032) )
))
(declare-datatypes ((array!58175 0))(
  ( (array!58176 (arr!27963 (Array (_ BitVec 32) ValueCell!10032)) (size!28443 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58175)

(declare-fun mapDefault!33502 () ValueCell!10032)

(assert (=> b!956125 (= condMapEmpty!33502 (= (arr!27963 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10032)) mapDefault!33502)))))

(declare-fun b!956126 () Bool)

(declare-fun res!640331 () Bool)

(declare-fun e!538757 () Bool)

(assert (=> b!956126 (=> (not res!640331) (not e!538757))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58177 0))(
  ( (array!58178 (arr!27964 (Array (_ BitVec 32) (_ BitVec 64))) (size!28444 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58177)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!956126 (= res!640331 (and (= (size!28443 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28444 _keys!1441) (size!28443 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956127 () Bool)

(assert (=> b!956127 (= e!538757 false)))

(declare-fun lt!430063 () Bool)

(declare-datatypes ((List!19620 0))(
  ( (Nil!19617) (Cons!19616 (h!20778 (_ BitVec 64)) (t!27989 List!19620)) )
))
(declare-fun arrayNoDuplicates!0 (array!58177 (_ BitVec 32) List!19620) Bool)

(assert (=> b!956127 (= lt!430063 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19617))))

(declare-fun b!956128 () Bool)

(declare-fun e!538758 () Bool)

(declare-fun tp_is_empty!21027 () Bool)

(assert (=> b!956128 (= e!538758 tp_is_empty!21027)))

(declare-fun res!640333 () Bool)

(assert (=> start!82016 (=> (not res!640333) (not e!538757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82016 (= res!640333 (validMask!0 mask!1823))))

(assert (=> start!82016 e!538757))

(assert (=> start!82016 true))

(declare-fun array_inv!21643 (array!58175) Bool)

(assert (=> start!82016 (and (array_inv!21643 _values!1197) e!538759)))

(declare-fun array_inv!21644 (array!58177) Bool)

(assert (=> start!82016 (array_inv!21644 _keys!1441)))

(declare-fun b!956129 () Bool)

(assert (=> b!956129 (= e!538760 tp_is_empty!21027)))

(declare-fun mapNonEmpty!33502 () Bool)

(declare-fun tp!64081 () Bool)

(assert (=> mapNonEmpty!33502 (= mapRes!33502 (and tp!64081 e!538758))))

(declare-fun mapKey!33502 () (_ BitVec 32))

(declare-fun mapValue!33502 () ValueCell!10032)

(declare-fun mapRest!33502 () (Array (_ BitVec 32) ValueCell!10032))

(assert (=> mapNonEmpty!33502 (= (arr!27963 _values!1197) (store mapRest!33502 mapKey!33502 mapValue!33502))))

(declare-fun mapIsEmpty!33502 () Bool)

(assert (=> mapIsEmpty!33502 mapRes!33502))

(declare-fun b!956130 () Bool)

(declare-fun res!640332 () Bool)

(assert (=> b!956130 (=> (not res!640332) (not e!538757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58177 (_ BitVec 32)) Bool)

(assert (=> b!956130 (= res!640332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(assert (= (and start!82016 res!640333) b!956126))

(assert (= (and b!956126 res!640331) b!956130))

(assert (= (and b!956130 res!640332) b!956127))

(assert (= (and b!956125 condMapEmpty!33502) mapIsEmpty!33502))

(assert (= (and b!956125 (not condMapEmpty!33502)) mapNonEmpty!33502))

(get-info :version)

(assert (= (and mapNonEmpty!33502 ((_ is ValueCellFull!10032) mapValue!33502)) b!956128))

(assert (= (and b!956125 ((_ is ValueCellFull!10032) mapDefault!33502)) b!956129))

(assert (= start!82016 b!956125))

(declare-fun m!887565 () Bool)

(assert (=> b!956127 m!887565))

(declare-fun m!887567 () Bool)

(assert (=> start!82016 m!887567))

(declare-fun m!887569 () Bool)

(assert (=> start!82016 m!887569))

(declare-fun m!887571 () Bool)

(assert (=> start!82016 m!887571))

(declare-fun m!887573 () Bool)

(assert (=> mapNonEmpty!33502 m!887573))

(declare-fun m!887575 () Bool)

(assert (=> b!956130 m!887575))

(check-sat (not start!82016) (not b!956127) tp_is_empty!21027 (not mapNonEmpty!33502) (not b!956130))
(check-sat)
