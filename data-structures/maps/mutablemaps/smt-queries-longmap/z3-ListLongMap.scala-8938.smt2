; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108392 () Bool)

(assert start!108392)

(declare-fun b!1278777 () Bool)

(declare-fun e!730611 () Bool)

(declare-fun tp_is_empty!33543 () Bool)

(assert (=> b!1278777 (= e!730611 tp_is_empty!33543)))

(declare-fun b!1278778 () Bool)

(declare-fun e!730615 () Bool)

(declare-fun e!730612 () Bool)

(declare-fun mapRes!51866 () Bool)

(assert (=> b!1278778 (= e!730615 (and e!730612 mapRes!51866))))

(declare-fun condMapEmpty!51866 () Bool)

(declare-datatypes ((V!49827 0))(
  ( (V!49828 (val!16846 Int)) )
))
(declare-datatypes ((ValueCell!15873 0))(
  ( (ValueCellFull!15873 (v!19444 V!49827)) (EmptyCell!15873) )
))
(declare-datatypes ((array!84125 0))(
  ( (array!84126 (arr!40562 (Array (_ BitVec 32) ValueCell!15873)) (size!41113 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84125)

(declare-fun mapDefault!51866 () ValueCell!15873)

(assert (=> b!1278778 (= condMapEmpty!51866 (= (arr!40562 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15873)) mapDefault!51866)))))

(declare-fun b!1278779 () Bool)

(declare-fun res!849589 () Bool)

(declare-fun e!730614 () Bool)

(assert (=> b!1278779 (=> (not res!849589) (not e!730614))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84127 0))(
  ( (array!84128 (arr!40563 (Array (_ BitVec 32) (_ BitVec 64))) (size!41114 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84127)

(assert (=> b!1278779 (= res!849589 (and (= (size!41113 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41114 _keys!1741) (size!41113 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51866 () Bool)

(declare-fun tp!98841 () Bool)

(assert (=> mapNonEmpty!51866 (= mapRes!51866 (and tp!98841 e!730611))))

(declare-fun mapKey!51866 () (_ BitVec 32))

(declare-fun mapRest!51866 () (Array (_ BitVec 32) ValueCell!15873))

(declare-fun mapValue!51866 () ValueCell!15873)

(assert (=> mapNonEmpty!51866 (= (arr!40562 _values!1445) (store mapRest!51866 mapKey!51866 mapValue!51866))))

(declare-fun mapIsEmpty!51866 () Bool)

(assert (=> mapIsEmpty!51866 mapRes!51866))

(declare-fun res!849588 () Bool)

(assert (=> start!108392 (=> (not res!849588) (not e!730614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108392 (= res!849588 (validMask!0 mask!2175))))

(assert (=> start!108392 e!730614))

(assert (=> start!108392 true))

(declare-fun array_inv!30783 (array!84125) Bool)

(assert (=> start!108392 (and (array_inv!30783 _values!1445) e!730615)))

(declare-fun array_inv!30784 (array!84127) Bool)

(assert (=> start!108392 (array_inv!30784 _keys!1741)))

(declare-fun b!1278780 () Bool)

(assert (=> b!1278780 (= e!730614 false)))

(declare-fun lt!575881 () Bool)

(declare-datatypes ((List!28917 0))(
  ( (Nil!28914) (Cons!28913 (h!30122 (_ BitVec 64)) (t!42464 List!28917)) )
))
(declare-fun arrayNoDuplicates!0 (array!84127 (_ BitVec 32) List!28917) Bool)

(assert (=> b!1278780 (= lt!575881 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28914))))

(declare-fun b!1278781 () Bool)

(declare-fun res!849590 () Bool)

(assert (=> b!1278781 (=> (not res!849590) (not e!730614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84127 (_ BitVec 32)) Bool)

(assert (=> b!1278781 (= res!849590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278782 () Bool)

(assert (=> b!1278782 (= e!730612 tp_is_empty!33543)))

(assert (= (and start!108392 res!849588) b!1278779))

(assert (= (and b!1278779 res!849589) b!1278781))

(assert (= (and b!1278781 res!849590) b!1278780))

(assert (= (and b!1278778 condMapEmpty!51866) mapIsEmpty!51866))

(assert (= (and b!1278778 (not condMapEmpty!51866)) mapNonEmpty!51866))

(get-info :version)

(assert (= (and mapNonEmpty!51866 ((_ is ValueCellFull!15873) mapValue!51866)) b!1278777))

(assert (= (and b!1278778 ((_ is ValueCellFull!15873) mapDefault!51866)) b!1278782))

(assert (= start!108392 b!1278778))

(declare-fun m!1173983 () Bool)

(assert (=> mapNonEmpty!51866 m!1173983))

(declare-fun m!1173985 () Bool)

(assert (=> start!108392 m!1173985))

(declare-fun m!1173987 () Bool)

(assert (=> start!108392 m!1173987))

(declare-fun m!1173989 () Bool)

(assert (=> start!108392 m!1173989))

(declare-fun m!1173991 () Bool)

(assert (=> b!1278780 m!1173991))

(declare-fun m!1173993 () Bool)

(assert (=> b!1278781 m!1173993))

(check-sat (not b!1278781) (not start!108392) (not b!1278780) tp_is_empty!33543 (not mapNonEmpty!51866))
(check-sat)
