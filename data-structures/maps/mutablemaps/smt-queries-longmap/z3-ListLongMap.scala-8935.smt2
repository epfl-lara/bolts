; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108374 () Bool)

(assert start!108374)

(declare-fun b!1278615 () Bool)

(declare-fun res!849509 () Bool)

(declare-fun e!730477 () Bool)

(assert (=> b!1278615 (=> (not res!849509) (not e!730477))))

(declare-datatypes ((array!84089 0))(
  ( (array!84090 (arr!40544 (Array (_ BitVec 32) (_ BitVec 64))) (size!41095 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84089)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84089 (_ BitVec 32)) Bool)

(assert (=> b!1278615 (= res!849509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278616 () Bool)

(assert (=> b!1278616 (= e!730477 false)))

(declare-fun lt!575854 () Bool)

(declare-datatypes ((List!28910 0))(
  ( (Nil!28907) (Cons!28906 (h!30115 (_ BitVec 64)) (t!42457 List!28910)) )
))
(declare-fun arrayNoDuplicates!0 (array!84089 (_ BitVec 32) List!28910) Bool)

(assert (=> b!1278616 (= lt!575854 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28907))))

(declare-fun b!1278617 () Bool)

(declare-fun e!730476 () Bool)

(declare-fun tp_is_empty!33525 () Bool)

(assert (=> b!1278617 (= e!730476 tp_is_empty!33525)))

(declare-fun b!1278618 () Bool)

(declare-fun res!849507 () Bool)

(assert (=> b!1278618 (=> (not res!849507) (not e!730477))))

(declare-datatypes ((V!49803 0))(
  ( (V!49804 (val!16837 Int)) )
))
(declare-datatypes ((ValueCell!15864 0))(
  ( (ValueCellFull!15864 (v!19435 V!49803)) (EmptyCell!15864) )
))
(declare-datatypes ((array!84091 0))(
  ( (array!84092 (arr!40545 (Array (_ BitVec 32) ValueCell!15864)) (size!41096 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84091)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278618 (= res!849507 (and (= (size!41096 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41095 _keys!1741) (size!41096 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!849508 () Bool)

(assert (=> start!108374 (=> (not res!849508) (not e!730477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108374 (= res!849508 (validMask!0 mask!2175))))

(assert (=> start!108374 e!730477))

(assert (=> start!108374 true))

(declare-fun e!730480 () Bool)

(declare-fun array_inv!30773 (array!84091) Bool)

(assert (=> start!108374 (and (array_inv!30773 _values!1445) e!730480)))

(declare-fun array_inv!30774 (array!84089) Bool)

(assert (=> start!108374 (array_inv!30774 _keys!1741)))

(declare-fun mapIsEmpty!51839 () Bool)

(declare-fun mapRes!51839 () Bool)

(assert (=> mapIsEmpty!51839 mapRes!51839))

(declare-fun mapNonEmpty!51839 () Bool)

(declare-fun tp!98814 () Bool)

(assert (=> mapNonEmpty!51839 (= mapRes!51839 (and tp!98814 e!730476))))

(declare-fun mapRest!51839 () (Array (_ BitVec 32) ValueCell!15864))

(declare-fun mapValue!51839 () ValueCell!15864)

(declare-fun mapKey!51839 () (_ BitVec 32))

(assert (=> mapNonEmpty!51839 (= (arr!40545 _values!1445) (store mapRest!51839 mapKey!51839 mapValue!51839))))

(declare-fun b!1278619 () Bool)

(declare-fun e!730478 () Bool)

(assert (=> b!1278619 (= e!730478 tp_is_empty!33525)))

(declare-fun b!1278620 () Bool)

(assert (=> b!1278620 (= e!730480 (and e!730478 mapRes!51839))))

(declare-fun condMapEmpty!51839 () Bool)

(declare-fun mapDefault!51839 () ValueCell!15864)

(assert (=> b!1278620 (= condMapEmpty!51839 (= (arr!40545 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15864)) mapDefault!51839)))))

(assert (= (and start!108374 res!849508) b!1278618))

(assert (= (and b!1278618 res!849507) b!1278615))

(assert (= (and b!1278615 res!849509) b!1278616))

(assert (= (and b!1278620 condMapEmpty!51839) mapIsEmpty!51839))

(assert (= (and b!1278620 (not condMapEmpty!51839)) mapNonEmpty!51839))

(get-info :version)

(assert (= (and mapNonEmpty!51839 ((_ is ValueCellFull!15864) mapValue!51839)) b!1278617))

(assert (= (and b!1278620 ((_ is ValueCellFull!15864) mapDefault!51839)) b!1278619))

(assert (= start!108374 b!1278620))

(declare-fun m!1173875 () Bool)

(assert (=> b!1278615 m!1173875))

(declare-fun m!1173877 () Bool)

(assert (=> b!1278616 m!1173877))

(declare-fun m!1173879 () Bool)

(assert (=> start!108374 m!1173879))

(declare-fun m!1173881 () Bool)

(assert (=> start!108374 m!1173881))

(declare-fun m!1173883 () Bool)

(assert (=> start!108374 m!1173883))

(declare-fun m!1173885 () Bool)

(assert (=> mapNonEmpty!51839 m!1173885))

(check-sat (not mapNonEmpty!51839) (not start!108374) (not b!1278616) (not b!1278615) tp_is_empty!33525)
(check-sat)
