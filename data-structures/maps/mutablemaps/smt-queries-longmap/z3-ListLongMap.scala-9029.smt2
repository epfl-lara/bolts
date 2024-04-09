; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108996 () Bool)

(assert start!108996)

(declare-fun b_free!28449 () Bool)

(declare-fun b_next!28449 () Bool)

(assert (=> start!108996 (= b_free!28449 (not b_next!28449))))

(declare-fun tp!100467 () Bool)

(declare-fun b_and!46549 () Bool)

(assert (=> start!108996 (= tp!100467 b_and!46549)))

(declare-fun b!1287334 () Bool)

(declare-fun res!855053 () Bool)

(declare-fun e!735220 () Bool)

(assert (=> b!1287334 (=> (not res!855053) (not e!735220))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50555 0))(
  ( (V!50556 (val!17119 Int)) )
))
(declare-datatypes ((ValueCell!16146 0))(
  ( (ValueCellFull!16146 (v!19720 V!50555)) (EmptyCell!16146) )
))
(declare-datatypes ((array!85183 0))(
  ( (array!85184 (arr!41088 (Array (_ BitVec 32) ValueCell!16146)) (size!41639 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85183)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85185 0))(
  ( (array!85186 (arr!41089 (Array (_ BitVec 32) (_ BitVec 64))) (size!41640 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85185)

(assert (=> b!1287334 (= res!855053 (and (= (size!41639 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41640 _keys!1741) (size!41639 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52694 () Bool)

(declare-fun mapRes!52694 () Bool)

(declare-fun tp!100466 () Bool)

(declare-fun e!735222 () Bool)

(assert (=> mapNonEmpty!52694 (= mapRes!52694 (and tp!100466 e!735222))))

(declare-fun mapRest!52694 () (Array (_ BitVec 32) ValueCell!16146))

(declare-fun mapValue!52694 () ValueCell!16146)

(declare-fun mapKey!52694 () (_ BitVec 32))

(assert (=> mapNonEmpty!52694 (= (arr!41088 _values!1445) (store mapRest!52694 mapKey!52694 mapValue!52694))))

(declare-fun b!1287335 () Bool)

(assert (=> b!1287335 (= e!735220 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22096 0))(
  ( (tuple2!22097 (_1!11058 (_ BitVec 64)) (_2!11058 V!50555)) )
))
(declare-datatypes ((List!29298 0))(
  ( (Nil!29295) (Cons!29294 (h!30503 tuple2!22096) (t!42869 List!29298)) )
))
(declare-datatypes ((ListLongMap!19765 0))(
  ( (ListLongMap!19766 (toList!9898 List!29298)) )
))
(declare-fun contains!7954 (ListLongMap!19765 (_ BitVec 64)) Bool)

(assert (=> b!1287335 (not (contains!7954 (ListLongMap!19766 Nil!29295) k0!1205))))

(declare-datatypes ((Unit!42501 0))(
  ( (Unit!42502) )
))
(declare-fun lt!577801 () Unit!42501)

(declare-fun emptyContainsNothing!18 ((_ BitVec 64)) Unit!42501)

(assert (=> b!1287335 (= lt!577801 (emptyContainsNothing!18 k0!1205))))

(declare-fun b!1287336 () Bool)

(declare-fun res!855055 () Bool)

(assert (=> b!1287336 (=> (not res!855055) (not e!735220))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1287336 (= res!855055 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41640 _keys!1741))))))

(declare-fun mapIsEmpty!52694 () Bool)

(assert (=> mapIsEmpty!52694 mapRes!52694))

(declare-fun b!1287337 () Bool)

(declare-fun res!855056 () Bool)

(assert (=> b!1287337 (=> (not res!855056) (not e!735220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287337 (= res!855056 (not (validKeyInArray!0 (select (arr!41089 _keys!1741) from!2144))))))

(declare-fun b!1287338 () Bool)

(declare-fun e!735223 () Bool)

(declare-fun tp_is_empty!34089 () Bool)

(assert (=> b!1287338 (= e!735223 tp_is_empty!34089)))

(declare-fun res!855054 () Bool)

(assert (=> start!108996 (=> (not res!855054) (not e!735220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108996 (= res!855054 (validMask!0 mask!2175))))

(assert (=> start!108996 e!735220))

(assert (=> start!108996 tp_is_empty!34089))

(assert (=> start!108996 true))

(declare-fun e!735221 () Bool)

(declare-fun array_inv!31131 (array!85183) Bool)

(assert (=> start!108996 (and (array_inv!31131 _values!1445) e!735221)))

(declare-fun array_inv!31132 (array!85185) Bool)

(assert (=> start!108996 (array_inv!31132 _keys!1741)))

(assert (=> start!108996 tp!100467))

(declare-fun b!1287339 () Bool)

(declare-fun res!855051 () Bool)

(assert (=> b!1287339 (=> (not res!855051) (not e!735220))))

(assert (=> b!1287339 (= res!855051 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41640 _keys!1741))))))

(declare-fun b!1287340 () Bool)

(declare-fun res!855057 () Bool)

(assert (=> b!1287340 (=> (not res!855057) (not e!735220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85185 (_ BitVec 32)) Bool)

(assert (=> b!1287340 (= res!855057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287341 () Bool)

(assert (=> b!1287341 (= e!735221 (and e!735223 mapRes!52694))))

(declare-fun condMapEmpty!52694 () Bool)

(declare-fun mapDefault!52694 () ValueCell!16146)

(assert (=> b!1287341 (= condMapEmpty!52694 (= (arr!41088 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16146)) mapDefault!52694)))))

(declare-fun b!1287342 () Bool)

(declare-fun res!855050 () Bool)

(assert (=> b!1287342 (=> (not res!855050) (not e!735220))))

(declare-fun minValue!1387 () V!50555)

(declare-fun zeroValue!1387 () V!50555)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4906 (array!85185 array!85183 (_ BitVec 32) (_ BitVec 32) V!50555 V!50555 (_ BitVec 32) Int) ListLongMap!19765)

(assert (=> b!1287342 (= res!855050 (contains!7954 (getCurrentListMap!4906 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1287343 () Bool)

(assert (=> b!1287343 (= e!735222 tp_is_empty!34089)))

(declare-fun b!1287344 () Bool)

(declare-fun res!855052 () Bool)

(assert (=> b!1287344 (=> (not res!855052) (not e!735220))))

(declare-datatypes ((List!29299 0))(
  ( (Nil!29296) (Cons!29295 (h!30504 (_ BitVec 64)) (t!42870 List!29299)) )
))
(declare-fun arrayNoDuplicates!0 (array!85185 (_ BitVec 32) List!29299) Bool)

(assert (=> b!1287344 (= res!855052 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29296))))

(assert (= (and start!108996 res!855054) b!1287334))

(assert (= (and b!1287334 res!855053) b!1287340))

(assert (= (and b!1287340 res!855057) b!1287344))

(assert (= (and b!1287344 res!855052) b!1287336))

(assert (= (and b!1287336 res!855055) b!1287342))

(assert (= (and b!1287342 res!855050) b!1287339))

(assert (= (and b!1287339 res!855051) b!1287337))

(assert (= (and b!1287337 res!855056) b!1287335))

(assert (= (and b!1287341 condMapEmpty!52694) mapIsEmpty!52694))

(assert (= (and b!1287341 (not condMapEmpty!52694)) mapNonEmpty!52694))

(get-info :version)

(assert (= (and mapNonEmpty!52694 ((_ is ValueCellFull!16146) mapValue!52694)) b!1287343))

(assert (= (and b!1287341 ((_ is ValueCellFull!16146) mapDefault!52694)) b!1287338))

(assert (= start!108996 b!1287341))

(declare-fun m!1180241 () Bool)

(assert (=> b!1287344 m!1180241))

(declare-fun m!1180243 () Bool)

(assert (=> b!1287342 m!1180243))

(assert (=> b!1287342 m!1180243))

(declare-fun m!1180245 () Bool)

(assert (=> b!1287342 m!1180245))

(declare-fun m!1180247 () Bool)

(assert (=> mapNonEmpty!52694 m!1180247))

(declare-fun m!1180249 () Bool)

(assert (=> b!1287335 m!1180249))

(declare-fun m!1180251 () Bool)

(assert (=> b!1287335 m!1180251))

(declare-fun m!1180253 () Bool)

(assert (=> b!1287337 m!1180253))

(assert (=> b!1287337 m!1180253))

(declare-fun m!1180255 () Bool)

(assert (=> b!1287337 m!1180255))

(declare-fun m!1180257 () Bool)

(assert (=> b!1287340 m!1180257))

(declare-fun m!1180259 () Bool)

(assert (=> start!108996 m!1180259))

(declare-fun m!1180261 () Bool)

(assert (=> start!108996 m!1180261))

(declare-fun m!1180263 () Bool)

(assert (=> start!108996 m!1180263))

(check-sat (not b!1287340) tp_is_empty!34089 (not mapNonEmpty!52694) (not b!1287342) (not b_next!28449) (not start!108996) (not b!1287344) (not b!1287337) b_and!46549 (not b!1287335))
(check-sat b_and!46549 (not b_next!28449))
