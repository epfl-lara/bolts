; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109524 () Bool)

(assert start!109524)

(declare-fun b_free!28977 () Bool)

(declare-fun b_next!28977 () Bool)

(assert (=> start!109524 (= b_free!28977 (not b_next!28977))))

(declare-fun tp!102050 () Bool)

(declare-fun b_and!47077 () Bool)

(assert (=> start!109524 (= tp!102050 b_and!47077)))

(declare-fun mapNonEmpty!53486 () Bool)

(declare-fun mapRes!53486 () Bool)

(declare-fun tp!102051 () Bool)

(declare-fun e!739775 () Bool)

(assert (=> mapNonEmpty!53486 (= mapRes!53486 (and tp!102051 e!739775))))

(declare-datatypes ((V!51259 0))(
  ( (V!51260 (val!17383 Int)) )
))
(declare-datatypes ((ValueCell!16410 0))(
  ( (ValueCellFull!16410 (v!19984 V!51259)) (EmptyCell!16410) )
))
(declare-fun mapValue!53486 () ValueCell!16410)

(declare-datatypes ((array!86213 0))(
  ( (array!86214 (arr!41603 (Array (_ BitVec 32) ValueCell!16410)) (size!42154 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86213)

(declare-fun mapKey!53486 () (_ BitVec 32))

(declare-fun mapRest!53486 () (Array (_ BitVec 32) ValueCell!16410))

(assert (=> mapNonEmpty!53486 (= (arr!41603 _values!1445) (store mapRest!53486 mapKey!53486 mapValue!53486))))

(declare-fun b!1296652 () Bool)

(declare-fun e!739773 () Bool)

(declare-fun e!739776 () Bool)

(assert (=> b!1296652 (= e!739773 (and e!739776 mapRes!53486))))

(declare-fun condMapEmpty!53486 () Bool)

(declare-fun mapDefault!53486 () ValueCell!16410)

(assert (=> b!1296652 (= condMapEmpty!53486 (= (arr!41603 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16410)) mapDefault!53486)))))

(declare-fun b!1296653 () Bool)

(declare-fun res!861831 () Bool)

(declare-fun e!739777 () Bool)

(assert (=> b!1296653 (=> (not res!861831) (not e!739777))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86215 0))(
  ( (array!86216 (arr!41604 (Array (_ BitVec 32) (_ BitVec 64))) (size!42155 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86215)

(assert (=> b!1296653 (= res!861831 (and (= (size!42154 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42155 _keys!1741) (size!42154 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296654 () Bool)

(declare-fun res!861833 () Bool)

(assert (=> b!1296654 (=> (not res!861833) (not e!739777))))

(declare-datatypes ((List!29712 0))(
  ( (Nil!29709) (Cons!29708 (h!30917 (_ BitVec 64)) (t!43283 List!29712)) )
))
(declare-fun arrayNoDuplicates!0 (array!86215 (_ BitVec 32) List!29712) Bool)

(assert (=> b!1296654 (= res!861833 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29709))))

(declare-fun b!1296655 () Bool)

(declare-fun res!861834 () Bool)

(assert (=> b!1296655 (=> (not res!861834) (not e!739777))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296655 (= res!861834 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42155 _keys!1741))))))

(declare-fun b!1296656 () Bool)

(declare-fun tp_is_empty!34617 () Bool)

(assert (=> b!1296656 (= e!739775 tp_is_empty!34617)))

(declare-fun mapIsEmpty!53486 () Bool)

(assert (=> mapIsEmpty!53486 mapRes!53486))

(declare-fun b!1296658 () Bool)

(assert (=> b!1296658 (= e!739776 tp_is_empty!34617)))

(declare-fun b!1296659 () Bool)

(assert (=> b!1296659 (= e!739777 false)))

(declare-fun minValue!1387 () V!51259)

(declare-fun zeroValue!1387 () V!51259)

(declare-fun lt!580456 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22546 0))(
  ( (tuple2!22547 (_1!11283 (_ BitVec 64)) (_2!11283 V!51259)) )
))
(declare-datatypes ((List!29713 0))(
  ( (Nil!29710) (Cons!29709 (h!30918 tuple2!22546) (t!43284 List!29713)) )
))
(declare-datatypes ((ListLongMap!20215 0))(
  ( (ListLongMap!20216 (toList!10123 List!29713)) )
))
(declare-fun contains!8177 (ListLongMap!20215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5097 (array!86215 array!86213 (_ BitVec 32) (_ BitVec 32) V!51259 V!51259 (_ BitVec 32) Int) ListLongMap!20215)

(assert (=> b!1296659 (= lt!580456 (contains!8177 (getCurrentListMap!5097 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1296657 () Bool)

(declare-fun res!861832 () Bool)

(assert (=> b!1296657 (=> (not res!861832) (not e!739777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86215 (_ BitVec 32)) Bool)

(assert (=> b!1296657 (= res!861832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!861830 () Bool)

(assert (=> start!109524 (=> (not res!861830) (not e!739777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109524 (= res!861830 (validMask!0 mask!2175))))

(assert (=> start!109524 e!739777))

(assert (=> start!109524 tp_is_empty!34617))

(assert (=> start!109524 true))

(declare-fun array_inv!31487 (array!86213) Bool)

(assert (=> start!109524 (and (array_inv!31487 _values!1445) e!739773)))

(declare-fun array_inv!31488 (array!86215) Bool)

(assert (=> start!109524 (array_inv!31488 _keys!1741)))

(assert (=> start!109524 tp!102050))

(assert (= (and start!109524 res!861830) b!1296653))

(assert (= (and b!1296653 res!861831) b!1296657))

(assert (= (and b!1296657 res!861832) b!1296654))

(assert (= (and b!1296654 res!861833) b!1296655))

(assert (= (and b!1296655 res!861834) b!1296659))

(assert (= (and b!1296652 condMapEmpty!53486) mapIsEmpty!53486))

(assert (= (and b!1296652 (not condMapEmpty!53486)) mapNonEmpty!53486))

(get-info :version)

(assert (= (and mapNonEmpty!53486 ((_ is ValueCellFull!16410) mapValue!53486)) b!1296656))

(assert (= (and b!1296652 ((_ is ValueCellFull!16410) mapDefault!53486)) b!1296658))

(assert (= start!109524 b!1296652))

(declare-fun m!1188525 () Bool)

(assert (=> b!1296657 m!1188525))

(declare-fun m!1188527 () Bool)

(assert (=> mapNonEmpty!53486 m!1188527))

(declare-fun m!1188529 () Bool)

(assert (=> b!1296654 m!1188529))

(declare-fun m!1188531 () Bool)

(assert (=> b!1296659 m!1188531))

(assert (=> b!1296659 m!1188531))

(declare-fun m!1188533 () Bool)

(assert (=> b!1296659 m!1188533))

(declare-fun m!1188535 () Bool)

(assert (=> start!109524 m!1188535))

(declare-fun m!1188537 () Bool)

(assert (=> start!109524 m!1188537))

(declare-fun m!1188539 () Bool)

(assert (=> start!109524 m!1188539))

(check-sat (not b!1296659) (not mapNonEmpty!53486) (not b_next!28977) (not b!1296657) b_and!47077 tp_is_empty!34617 (not start!109524) (not b!1296654))
(check-sat b_and!47077 (not b_next!28977))
