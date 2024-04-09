; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108634 () Bool)

(assert start!108634)

(declare-fun b_free!28125 () Bool)

(declare-fun b_next!28125 () Bool)

(assert (=> start!108634 (= b_free!28125 (not b_next!28125))))

(declare-fun tp!99489 () Bool)

(declare-fun b_and!46199 () Bool)

(assert (=> start!108634 (= tp!99489 b_and!46199)))

(declare-fun b!1281821 () Bool)

(declare-fun res!851552 () Bool)

(declare-fun e!732401 () Bool)

(assert (=> b!1281821 (=> (not res!851552) (not e!732401))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50123 0))(
  ( (V!50124 (val!16957 Int)) )
))
(declare-datatypes ((ValueCell!15984 0))(
  ( (ValueCellFull!15984 (v!19556 V!50123)) (EmptyCell!15984) )
))
(declare-datatypes ((array!84555 0))(
  ( (array!84556 (arr!40776 (Array (_ BitVec 32) ValueCell!15984)) (size!41327 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84555)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84557 0))(
  ( (array!84558 (arr!40777 (Array (_ BitVec 32) (_ BitVec 64))) (size!41328 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84557)

(assert (=> b!1281821 (= res!851552 (and (= (size!41327 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41328 _keys!1741) (size!41327 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52202 () Bool)

(declare-fun mapRes!52202 () Bool)

(declare-fun tp!99488 () Bool)

(declare-fun e!732403 () Bool)

(assert (=> mapNonEmpty!52202 (= mapRes!52202 (and tp!99488 e!732403))))

(declare-fun mapKey!52202 () (_ BitVec 32))

(declare-fun mapValue!52202 () ValueCell!15984)

(declare-fun mapRest!52202 () (Array (_ BitVec 32) ValueCell!15984))

(assert (=> mapNonEmpty!52202 (= (arr!40776 _values!1445) (store mapRest!52202 mapKey!52202 mapValue!52202))))

(declare-fun b!1281822 () Bool)

(declare-fun res!851553 () Bool)

(assert (=> b!1281822 (=> (not res!851553) (not e!732401))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1281822 (= res!851553 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41328 _keys!1741))))))

(declare-fun b!1281823 () Bool)

(declare-fun res!851549 () Bool)

(assert (=> b!1281823 (=> (not res!851549) (not e!732401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84557 (_ BitVec 32)) Bool)

(assert (=> b!1281823 (= res!851549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281824 () Bool)

(declare-fun e!732402 () Bool)

(declare-fun e!732399 () Bool)

(assert (=> b!1281824 (= e!732402 (and e!732399 mapRes!52202))))

(declare-fun condMapEmpty!52202 () Bool)

(declare-fun mapDefault!52202 () ValueCell!15984)

(assert (=> b!1281824 (= condMapEmpty!52202 (= (arr!40776 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15984)) mapDefault!52202)))))

(declare-fun b!1281825 () Bool)

(declare-fun res!851551 () Bool)

(assert (=> b!1281825 (=> (not res!851551) (not e!732401))))

(declare-datatypes ((List!29068 0))(
  ( (Nil!29065) (Cons!29064 (h!30273 (_ BitVec 64)) (t!42617 List!29068)) )
))
(declare-fun arrayNoDuplicates!0 (array!84557 (_ BitVec 32) List!29068) Bool)

(assert (=> b!1281825 (= res!851551 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29065))))

(declare-fun mapIsEmpty!52202 () Bool)

(assert (=> mapIsEmpty!52202 mapRes!52202))

(declare-fun b!1281827 () Bool)

(declare-fun tp_is_empty!33765 () Bool)

(assert (=> b!1281827 (= e!732403 tp_is_empty!33765)))

(declare-fun b!1281828 () Bool)

(assert (=> b!1281828 (= e!732399 tp_is_empty!33765)))

(declare-fun b!1281826 () Bool)

(assert (=> b!1281826 (= e!732401 false)))

(declare-fun minValue!1387 () V!50123)

(declare-fun zeroValue!1387 () V!50123)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!576342 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21860 0))(
  ( (tuple2!21861 (_1!10940 (_ BitVec 64)) (_2!10940 V!50123)) )
))
(declare-datatypes ((List!29069 0))(
  ( (Nil!29066) (Cons!29065 (h!30274 tuple2!21860) (t!42618 List!29069)) )
))
(declare-datatypes ((ListLongMap!19529 0))(
  ( (ListLongMap!19530 (toList!9780 List!29069)) )
))
(declare-fun contains!7834 (ListLongMap!19529 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4800 (array!84557 array!84555 (_ BitVec 32) (_ BitVec 32) V!50123 V!50123 (_ BitVec 32) Int) ListLongMap!19529)

(assert (=> b!1281826 (= lt!576342 (contains!7834 (getCurrentListMap!4800 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!851550 () Bool)

(assert (=> start!108634 (=> (not res!851550) (not e!732401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108634 (= res!851550 (validMask!0 mask!2175))))

(assert (=> start!108634 e!732401))

(assert (=> start!108634 tp_is_empty!33765))

(assert (=> start!108634 true))

(declare-fun array_inv!30921 (array!84555) Bool)

(assert (=> start!108634 (and (array_inv!30921 _values!1445) e!732402)))

(declare-fun array_inv!30922 (array!84557) Bool)

(assert (=> start!108634 (array_inv!30922 _keys!1741)))

(assert (=> start!108634 tp!99489))

(assert (= (and start!108634 res!851550) b!1281821))

(assert (= (and b!1281821 res!851552) b!1281823))

(assert (= (and b!1281823 res!851549) b!1281825))

(assert (= (and b!1281825 res!851551) b!1281822))

(assert (= (and b!1281822 res!851553) b!1281826))

(assert (= (and b!1281824 condMapEmpty!52202) mapIsEmpty!52202))

(assert (= (and b!1281824 (not condMapEmpty!52202)) mapNonEmpty!52202))

(get-info :version)

(assert (= (and mapNonEmpty!52202 ((_ is ValueCellFull!15984) mapValue!52202)) b!1281827))

(assert (= (and b!1281824 ((_ is ValueCellFull!15984) mapDefault!52202)) b!1281828))

(assert (= start!108634 b!1281824))

(declare-fun m!1176231 () Bool)

(assert (=> mapNonEmpty!52202 m!1176231))

(declare-fun m!1176233 () Bool)

(assert (=> b!1281826 m!1176233))

(assert (=> b!1281826 m!1176233))

(declare-fun m!1176235 () Bool)

(assert (=> b!1281826 m!1176235))

(declare-fun m!1176237 () Bool)

(assert (=> start!108634 m!1176237))

(declare-fun m!1176239 () Bool)

(assert (=> start!108634 m!1176239))

(declare-fun m!1176241 () Bool)

(assert (=> start!108634 m!1176241))

(declare-fun m!1176243 () Bool)

(assert (=> b!1281825 m!1176243))

(declare-fun m!1176245 () Bool)

(assert (=> b!1281823 m!1176245))

(check-sat (not b!1281825) (not b_next!28125) (not b!1281826) (not mapNonEmpty!52202) b_and!46199 (not b!1281823) tp_is_empty!33765 (not start!108634))
(check-sat b_and!46199 (not b_next!28125))
