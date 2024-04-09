; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108356 () Bool)

(assert start!108356)

(declare-fun mapNonEmpty!51812 () Bool)

(declare-fun mapRes!51812 () Bool)

(declare-fun tp!98787 () Bool)

(declare-fun e!730342 () Bool)

(assert (=> mapNonEmpty!51812 (= mapRes!51812 (and tp!98787 e!730342))))

(declare-datatypes ((V!49779 0))(
  ( (V!49780 (val!16828 Int)) )
))
(declare-datatypes ((ValueCell!15855 0))(
  ( (ValueCellFull!15855 (v!19426 V!49779)) (EmptyCell!15855) )
))
(declare-fun mapRest!51812 () (Array (_ BitVec 32) ValueCell!15855))

(declare-datatypes ((array!84055 0))(
  ( (array!84056 (arr!40527 (Array (_ BitVec 32) ValueCell!15855)) (size!41078 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84055)

(declare-fun mapKey!51812 () (_ BitVec 32))

(declare-fun mapValue!51812 () ValueCell!15855)

(assert (=> mapNonEmpty!51812 (= (arr!40527 _values!1445) (store mapRest!51812 mapKey!51812 mapValue!51812))))

(declare-fun b!1278453 () Bool)

(declare-fun e!730344 () Bool)

(declare-fun tp_is_empty!33507 () Bool)

(assert (=> b!1278453 (= e!730344 tp_is_empty!33507)))

(declare-fun b!1278454 () Bool)

(declare-fun res!849427 () Bool)

(declare-fun e!730343 () Bool)

(assert (=> b!1278454 (=> (not res!849427) (not e!730343))))

(declare-datatypes ((array!84057 0))(
  ( (array!84058 (arr!40528 (Array (_ BitVec 32) (_ BitVec 64))) (size!41079 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84057)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84057 (_ BitVec 32)) Bool)

(assert (=> b!1278454 (= res!849427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278455 () Bool)

(assert (=> b!1278455 (= e!730343 false)))

(declare-fun lt!575827 () Bool)

(declare-datatypes ((List!28905 0))(
  ( (Nil!28902) (Cons!28901 (h!30110 (_ BitVec 64)) (t!42452 List!28905)) )
))
(declare-fun arrayNoDuplicates!0 (array!84057 (_ BitVec 32) List!28905) Bool)

(assert (=> b!1278455 (= lt!575827 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28902))))

(declare-fun res!849426 () Bool)

(assert (=> start!108356 (=> (not res!849426) (not e!730343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108356 (= res!849426 (validMask!0 mask!2175))))

(assert (=> start!108356 e!730343))

(assert (=> start!108356 true))

(declare-fun e!730341 () Bool)

(declare-fun array_inv!30759 (array!84055) Bool)

(assert (=> start!108356 (and (array_inv!30759 _values!1445) e!730341)))

(declare-fun array_inv!30760 (array!84057) Bool)

(assert (=> start!108356 (array_inv!30760 _keys!1741)))

(declare-fun b!1278456 () Bool)

(assert (=> b!1278456 (= e!730342 tp_is_empty!33507)))

(declare-fun mapIsEmpty!51812 () Bool)

(assert (=> mapIsEmpty!51812 mapRes!51812))

(declare-fun b!1278457 () Bool)

(declare-fun res!849428 () Bool)

(assert (=> b!1278457 (=> (not res!849428) (not e!730343))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278457 (= res!849428 (and (= (size!41078 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41079 _keys!1741) (size!41078 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278458 () Bool)

(assert (=> b!1278458 (= e!730341 (and e!730344 mapRes!51812))))

(declare-fun condMapEmpty!51812 () Bool)

(declare-fun mapDefault!51812 () ValueCell!15855)

(assert (=> b!1278458 (= condMapEmpty!51812 (= (arr!40527 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15855)) mapDefault!51812)))))

(assert (= (and start!108356 res!849426) b!1278457))

(assert (= (and b!1278457 res!849428) b!1278454))

(assert (= (and b!1278454 res!849427) b!1278455))

(assert (= (and b!1278458 condMapEmpty!51812) mapIsEmpty!51812))

(assert (= (and b!1278458 (not condMapEmpty!51812)) mapNonEmpty!51812))

(get-info :version)

(assert (= (and mapNonEmpty!51812 ((_ is ValueCellFull!15855) mapValue!51812)) b!1278456))

(assert (= (and b!1278458 ((_ is ValueCellFull!15855) mapDefault!51812)) b!1278453))

(assert (= start!108356 b!1278458))

(declare-fun m!1173767 () Bool)

(assert (=> mapNonEmpty!51812 m!1173767))

(declare-fun m!1173769 () Bool)

(assert (=> b!1278454 m!1173769))

(declare-fun m!1173771 () Bool)

(assert (=> b!1278455 m!1173771))

(declare-fun m!1173773 () Bool)

(assert (=> start!108356 m!1173773))

(declare-fun m!1173775 () Bool)

(assert (=> start!108356 m!1173775))

(declare-fun m!1173777 () Bool)

(assert (=> start!108356 m!1173777))

(check-sat tp_is_empty!33507 (not mapNonEmpty!51812) (not b!1278454) (not start!108356) (not b!1278455))
(check-sat)
