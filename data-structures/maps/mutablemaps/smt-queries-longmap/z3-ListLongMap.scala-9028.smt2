; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108990 () Bool)

(assert start!108990)

(declare-fun b_free!28443 () Bool)

(declare-fun b_next!28443 () Bool)

(assert (=> start!108990 (= b_free!28443 (not b_next!28443))))

(declare-fun tp!100448 () Bool)

(declare-fun b_and!46543 () Bool)

(assert (=> start!108990 (= tp!100448 b_and!46543)))

(declare-fun b!1287235 () Bool)

(declare-fun res!854980 () Bool)

(declare-fun e!735178 () Bool)

(assert (=> b!1287235 (=> (not res!854980) (not e!735178))))

(declare-datatypes ((array!85171 0))(
  ( (array!85172 (arr!41082 (Array (_ BitVec 32) (_ BitVec 64))) (size!41633 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85171)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85171 (_ BitVec 32)) Bool)

(assert (=> b!1287235 (= res!854980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287236 () Bool)

(declare-fun e!735175 () Bool)

(declare-fun e!735176 () Bool)

(declare-fun mapRes!52685 () Bool)

(assert (=> b!1287236 (= e!735175 (and e!735176 mapRes!52685))))

(declare-fun condMapEmpty!52685 () Bool)

(declare-datatypes ((V!50547 0))(
  ( (V!50548 (val!17116 Int)) )
))
(declare-datatypes ((ValueCell!16143 0))(
  ( (ValueCellFull!16143 (v!19717 V!50547)) (EmptyCell!16143) )
))
(declare-datatypes ((array!85173 0))(
  ( (array!85174 (arr!41083 (Array (_ BitVec 32) ValueCell!16143)) (size!41634 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85173)

(declare-fun mapDefault!52685 () ValueCell!16143)

(assert (=> b!1287236 (= condMapEmpty!52685 (= (arr!41083 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16143)) mapDefault!52685)))))

(declare-fun res!854984 () Bool)

(assert (=> start!108990 (=> (not res!854984) (not e!735178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108990 (= res!854984 (validMask!0 mask!2175))))

(assert (=> start!108990 e!735178))

(declare-fun tp_is_empty!34083 () Bool)

(assert (=> start!108990 tp_is_empty!34083))

(assert (=> start!108990 true))

(declare-fun array_inv!31127 (array!85173) Bool)

(assert (=> start!108990 (and (array_inv!31127 _values!1445) e!735175)))

(declare-fun array_inv!31128 (array!85171) Bool)

(assert (=> start!108990 (array_inv!31128 _keys!1741)))

(assert (=> start!108990 tp!100448))

(declare-fun b!1287237 () Bool)

(declare-fun e!735177 () Bool)

(assert (=> b!1287237 (= e!735177 tp_is_empty!34083)))

(declare-fun b!1287238 () Bool)

(declare-fun res!854979 () Bool)

(assert (=> b!1287238 (=> (not res!854979) (not e!735178))))

(declare-fun minValue!1387 () V!50547)

(declare-fun zeroValue!1387 () V!50547)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22092 0))(
  ( (tuple2!22093 (_1!11056 (_ BitVec 64)) (_2!11056 V!50547)) )
))
(declare-datatypes ((List!29293 0))(
  ( (Nil!29290) (Cons!29289 (h!30498 tuple2!22092) (t!42864 List!29293)) )
))
(declare-datatypes ((ListLongMap!19761 0))(
  ( (ListLongMap!19762 (toList!9896 List!29293)) )
))
(declare-fun contains!7952 (ListLongMap!19761 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4904 (array!85171 array!85173 (_ BitVec 32) (_ BitVec 32) V!50547 V!50547 (_ BitVec 32) Int) ListLongMap!19761)

(assert (=> b!1287238 (= res!854979 (contains!7952 (getCurrentListMap!4904 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1287239 () Bool)

(assert (=> b!1287239 (= e!735176 tp_is_empty!34083)))

(declare-fun b!1287240 () Bool)

(declare-fun res!854978 () Bool)

(assert (=> b!1287240 (=> (not res!854978) (not e!735178))))

(declare-datatypes ((List!29294 0))(
  ( (Nil!29291) (Cons!29290 (h!30499 (_ BitVec 64)) (t!42865 List!29294)) )
))
(declare-fun arrayNoDuplicates!0 (array!85171 (_ BitVec 32) List!29294) Bool)

(assert (=> b!1287240 (= res!854978 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29291))))

(declare-fun mapNonEmpty!52685 () Bool)

(declare-fun tp!100449 () Bool)

(assert (=> mapNonEmpty!52685 (= mapRes!52685 (and tp!100449 e!735177))))

(declare-fun mapRest!52685 () (Array (_ BitVec 32) ValueCell!16143))

(declare-fun mapKey!52685 () (_ BitVec 32))

(declare-fun mapValue!52685 () ValueCell!16143)

(assert (=> mapNonEmpty!52685 (= (arr!41083 _values!1445) (store mapRest!52685 mapKey!52685 mapValue!52685))))

(declare-fun b!1287241 () Bool)

(declare-fun res!854985 () Bool)

(assert (=> b!1287241 (=> (not res!854985) (not e!735178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287241 (= res!854985 (not (validKeyInArray!0 (select (arr!41082 _keys!1741) from!2144))))))

(declare-fun b!1287242 () Bool)

(declare-fun res!854982 () Bool)

(assert (=> b!1287242 (=> (not res!854982) (not e!735178))))

(assert (=> b!1287242 (= res!854982 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41633 _keys!1741))))))

(declare-fun b!1287243 () Bool)

(assert (=> b!1287243 (= e!735178 (not true))))

(assert (=> b!1287243 (not (contains!7952 (ListLongMap!19762 Nil!29290) k0!1205))))

(declare-datatypes ((Unit!42499 0))(
  ( (Unit!42500) )
))
(declare-fun lt!577792 () Unit!42499)

(declare-fun emptyContainsNothing!17 ((_ BitVec 64)) Unit!42499)

(assert (=> b!1287243 (= lt!577792 (emptyContainsNothing!17 k0!1205))))

(declare-fun mapIsEmpty!52685 () Bool)

(assert (=> mapIsEmpty!52685 mapRes!52685))

(declare-fun b!1287244 () Bool)

(declare-fun res!854983 () Bool)

(assert (=> b!1287244 (=> (not res!854983) (not e!735178))))

(assert (=> b!1287244 (= res!854983 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41633 _keys!1741))))))

(declare-fun b!1287245 () Bool)

(declare-fun res!854981 () Bool)

(assert (=> b!1287245 (=> (not res!854981) (not e!735178))))

(assert (=> b!1287245 (= res!854981 (and (= (size!41634 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41633 _keys!1741) (size!41634 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108990 res!854984) b!1287245))

(assert (= (and b!1287245 res!854981) b!1287235))

(assert (= (and b!1287235 res!854980) b!1287240))

(assert (= (and b!1287240 res!854978) b!1287242))

(assert (= (and b!1287242 res!854982) b!1287238))

(assert (= (and b!1287238 res!854979) b!1287244))

(assert (= (and b!1287244 res!854983) b!1287241))

(assert (= (and b!1287241 res!854985) b!1287243))

(assert (= (and b!1287236 condMapEmpty!52685) mapIsEmpty!52685))

(assert (= (and b!1287236 (not condMapEmpty!52685)) mapNonEmpty!52685))

(get-info :version)

(assert (= (and mapNonEmpty!52685 ((_ is ValueCellFull!16143) mapValue!52685)) b!1287237))

(assert (= (and b!1287236 ((_ is ValueCellFull!16143) mapDefault!52685)) b!1287239))

(assert (= start!108990 b!1287236))

(declare-fun m!1180169 () Bool)

(assert (=> b!1287241 m!1180169))

(assert (=> b!1287241 m!1180169))

(declare-fun m!1180171 () Bool)

(assert (=> b!1287241 m!1180171))

(declare-fun m!1180173 () Bool)

(assert (=> mapNonEmpty!52685 m!1180173))

(declare-fun m!1180175 () Bool)

(assert (=> b!1287243 m!1180175))

(declare-fun m!1180177 () Bool)

(assert (=> b!1287243 m!1180177))

(declare-fun m!1180179 () Bool)

(assert (=> start!108990 m!1180179))

(declare-fun m!1180181 () Bool)

(assert (=> start!108990 m!1180181))

(declare-fun m!1180183 () Bool)

(assert (=> start!108990 m!1180183))

(declare-fun m!1180185 () Bool)

(assert (=> b!1287235 m!1180185))

(declare-fun m!1180187 () Bool)

(assert (=> b!1287240 m!1180187))

(declare-fun m!1180189 () Bool)

(assert (=> b!1287238 m!1180189))

(assert (=> b!1287238 m!1180189))

(declare-fun m!1180191 () Bool)

(assert (=> b!1287238 m!1180191))

(check-sat (not b!1287235) (not start!108990) (not b_next!28443) (not mapNonEmpty!52685) b_and!46543 (not b!1287238) (not b!1287240) tp_is_empty!34083 (not b!1287241) (not b!1287243))
(check-sat b_and!46543 (not b_next!28443))
