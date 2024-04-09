; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109554 () Bool)

(assert start!109554)

(declare-fun b_free!29007 () Bool)

(declare-fun b_next!29007 () Bool)

(assert (=> start!109554 (= b_free!29007 (not b_next!29007))))

(declare-fun tp!102141 () Bool)

(declare-fun b_and!47107 () Bool)

(assert (=> start!109554 (= tp!102141 b_and!47107)))

(declare-fun b!1297021 () Bool)

(declare-fun res!862067 () Bool)

(declare-fun e!739999 () Bool)

(assert (=> b!1297021 (=> (not res!862067) (not e!739999))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86271 0))(
  ( (array!86272 (arr!41632 (Array (_ BitVec 32) (_ BitVec 64))) (size!42183 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86271)

(assert (=> b!1297021 (= res!862067 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42183 _keys!1741))))))

(declare-fun mapNonEmpty!53531 () Bool)

(declare-fun mapRes!53531 () Bool)

(declare-fun tp!102140 () Bool)

(declare-fun e!740001 () Bool)

(assert (=> mapNonEmpty!53531 (= mapRes!53531 (and tp!102140 e!740001))))

(declare-fun mapKey!53531 () (_ BitVec 32))

(declare-datatypes ((V!51299 0))(
  ( (V!51300 (val!17398 Int)) )
))
(declare-datatypes ((ValueCell!16425 0))(
  ( (ValueCellFull!16425 (v!19999 V!51299)) (EmptyCell!16425) )
))
(declare-fun mapRest!53531 () (Array (_ BitVec 32) ValueCell!16425))

(declare-fun mapValue!53531 () ValueCell!16425)

(declare-datatypes ((array!86273 0))(
  ( (array!86274 (arr!41633 (Array (_ BitVec 32) ValueCell!16425)) (size!42184 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86273)

(assert (=> mapNonEmpty!53531 (= (arr!41633 _values!1445) (store mapRest!53531 mapKey!53531 mapValue!53531))))

(declare-fun b!1297022 () Bool)

(declare-fun e!739998 () Bool)

(declare-fun e!740000 () Bool)

(assert (=> b!1297022 (= e!739998 (and e!740000 mapRes!53531))))

(declare-fun condMapEmpty!53531 () Bool)

(declare-fun mapDefault!53531 () ValueCell!16425)

(assert (=> b!1297022 (= condMapEmpty!53531 (= (arr!41633 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16425)) mapDefault!53531)))))

(declare-fun b!1297023 () Bool)

(declare-fun res!862068 () Bool)

(assert (=> b!1297023 (=> (not res!862068) (not e!739999))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297023 (= res!862068 (and (= (size!42184 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42183 _keys!1741) (size!42184 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297024 () Bool)

(declare-fun res!862066 () Bool)

(assert (=> b!1297024 (=> (not res!862066) (not e!739999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86271 (_ BitVec 32)) Bool)

(assert (=> b!1297024 (= res!862066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297025 () Bool)

(declare-fun res!862065 () Bool)

(assert (=> b!1297025 (=> (not res!862065) (not e!739999))))

(declare-datatypes ((List!29732 0))(
  ( (Nil!29729) (Cons!29728 (h!30937 (_ BitVec 64)) (t!43303 List!29732)) )
))
(declare-fun arrayNoDuplicates!0 (array!86271 (_ BitVec 32) List!29732) Bool)

(assert (=> b!1297025 (= res!862065 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29729))))

(declare-fun b!1297026 () Bool)

(declare-fun tp_is_empty!34647 () Bool)

(assert (=> b!1297026 (= e!740001 tp_is_empty!34647)))

(declare-fun b!1297027 () Bool)

(assert (=> b!1297027 (= e!739999 false)))

(declare-fun minValue!1387 () V!51299)

(declare-fun zeroValue!1387 () V!51299)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!580492 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22568 0))(
  ( (tuple2!22569 (_1!11294 (_ BitVec 64)) (_2!11294 V!51299)) )
))
(declare-datatypes ((List!29733 0))(
  ( (Nil!29730) (Cons!29729 (h!30938 tuple2!22568) (t!43304 List!29733)) )
))
(declare-datatypes ((ListLongMap!20237 0))(
  ( (ListLongMap!20238 (toList!10134 List!29733)) )
))
(declare-fun contains!8188 (ListLongMap!20237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5108 (array!86271 array!86273 (_ BitVec 32) (_ BitVec 32) V!51299 V!51299 (_ BitVec 32) Int) ListLongMap!20237)

(assert (=> b!1297027 (= lt!580492 (contains!8188 (getCurrentListMap!5108 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1297028 () Bool)

(assert (=> b!1297028 (= e!740000 tp_is_empty!34647)))

(declare-fun mapIsEmpty!53531 () Bool)

(assert (=> mapIsEmpty!53531 mapRes!53531))

(declare-fun res!862064 () Bool)

(assert (=> start!109554 (=> (not res!862064) (not e!739999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109554 (= res!862064 (validMask!0 mask!2175))))

(assert (=> start!109554 e!739999))

(assert (=> start!109554 tp_is_empty!34647))

(assert (=> start!109554 true))

(declare-fun array_inv!31511 (array!86273) Bool)

(assert (=> start!109554 (and (array_inv!31511 _values!1445) e!739998)))

(declare-fun array_inv!31512 (array!86271) Bool)

(assert (=> start!109554 (array_inv!31512 _keys!1741)))

(assert (=> start!109554 tp!102141))

(assert (= (and start!109554 res!862064) b!1297023))

(assert (= (and b!1297023 res!862068) b!1297024))

(assert (= (and b!1297024 res!862066) b!1297025))

(assert (= (and b!1297025 res!862065) b!1297021))

(assert (= (and b!1297021 res!862067) b!1297027))

(assert (= (and b!1297022 condMapEmpty!53531) mapIsEmpty!53531))

(assert (= (and b!1297022 (not condMapEmpty!53531)) mapNonEmpty!53531))

(get-info :version)

(assert (= (and mapNonEmpty!53531 ((_ is ValueCellFull!16425) mapValue!53531)) b!1297026))

(assert (= (and b!1297022 ((_ is ValueCellFull!16425) mapDefault!53531)) b!1297028))

(assert (= start!109554 b!1297022))

(declare-fun m!1188765 () Bool)

(assert (=> b!1297024 m!1188765))

(declare-fun m!1188767 () Bool)

(assert (=> b!1297027 m!1188767))

(assert (=> b!1297027 m!1188767))

(declare-fun m!1188769 () Bool)

(assert (=> b!1297027 m!1188769))

(declare-fun m!1188771 () Bool)

(assert (=> b!1297025 m!1188771))

(declare-fun m!1188773 () Bool)

(assert (=> start!109554 m!1188773))

(declare-fun m!1188775 () Bool)

(assert (=> start!109554 m!1188775))

(declare-fun m!1188777 () Bool)

(assert (=> start!109554 m!1188777))

(declare-fun m!1188779 () Bool)

(assert (=> mapNonEmpty!53531 m!1188779))

(check-sat b_and!47107 (not start!109554) (not mapNonEmpty!53531) (not b!1297027) (not b!1297025) (not b!1297024) (not b_next!29007) tp_is_empty!34647)
(check-sat b_and!47107 (not b_next!29007))
