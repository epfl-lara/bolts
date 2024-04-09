; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109230 () Bool)

(assert start!109230)

(declare-fun b_free!28683 () Bool)

(declare-fun b_next!28683 () Bool)

(assert (=> start!109230 (= b_free!28683 (not b_next!28683))))

(declare-fun tp!101169 () Bool)

(declare-fun b_and!46783 () Bool)

(assert (=> start!109230 (= tp!101169 b_and!46783)))

(declare-fun res!858149 () Bool)

(declare-fun e!737259 () Bool)

(assert (=> start!109230 (=> (not res!858149) (not e!737259))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109230 (= res!858149 (validMask!0 mask!2175))))

(assert (=> start!109230 e!737259))

(declare-fun tp_is_empty!34323 () Bool)

(assert (=> start!109230 tp_is_empty!34323))

(assert (=> start!109230 true))

(declare-datatypes ((V!50867 0))(
  ( (V!50868 (val!17236 Int)) )
))
(declare-datatypes ((ValueCell!16263 0))(
  ( (ValueCellFull!16263 (v!19837 V!50867)) (EmptyCell!16263) )
))
(declare-datatypes ((array!85641 0))(
  ( (array!85642 (arr!41317 (Array (_ BitVec 32) ValueCell!16263)) (size!41868 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85641)

(declare-fun e!737262 () Bool)

(declare-fun array_inv!31281 (array!85641) Bool)

(assert (=> start!109230 (and (array_inv!31281 _values!1445) e!737262)))

(declare-datatypes ((array!85643 0))(
  ( (array!85644 (arr!41318 (Array (_ BitVec 32) (_ BitVec 64))) (size!41869 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85643)

(declare-fun array_inv!31282 (array!85643) Bool)

(assert (=> start!109230 (array_inv!31282 _keys!1741)))

(assert (=> start!109230 tp!101169))

(declare-fun b!1291479 () Bool)

(declare-fun res!858142 () Bool)

(assert (=> b!1291479 (=> (not res!858142) (not e!737259))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291479 (= res!858142 (and (= (size!41868 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41869 _keys!1741) (size!41868 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291480 () Bool)

(declare-fun e!737261 () Bool)

(assert (=> b!1291480 (= e!737261 true)))

(assert (=> b!1291480 false))

(declare-fun minValue!1387 () V!50867)

(declare-datatypes ((Unit!42685 0))(
  ( (Unit!42686) )
))
(declare-fun lt!579136 () Unit!42685)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22296 0))(
  ( (tuple2!22297 (_1!11158 (_ BitVec 64)) (_2!11158 V!50867)) )
))
(declare-datatypes ((List!29488 0))(
  ( (Nil!29485) (Cons!29484 (h!30693 tuple2!22296) (t!43059 List!29488)) )
))
(declare-datatypes ((ListLongMap!19965 0))(
  ( (ListLongMap!19966 (toList!9998 List!29488)) )
))
(declare-fun lt!579132 () ListLongMap!19965)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!55 ((_ BitVec 64) (_ BitVec 64) V!50867 ListLongMap!19965) Unit!42685)

(assert (=> b!1291480 (= lt!579136 (lemmaInListMapAfterAddingDiffThenInBefore!55 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579132))))

(declare-fun lt!579135 () ListLongMap!19965)

(declare-fun contains!8054 (ListLongMap!19965 (_ BitVec 64)) Bool)

(declare-fun +!4360 (ListLongMap!19965 tuple2!22296) ListLongMap!19965)

(assert (=> b!1291480 (not (contains!8054 (+!4360 lt!579135 (tuple2!22297 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579133 () Unit!42685)

(declare-fun addStillNotContains!405 (ListLongMap!19965 (_ BitVec 64) V!50867 (_ BitVec 64)) Unit!42685)

(assert (=> b!1291480 (= lt!579133 (addStillNotContains!405 lt!579135 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1291480 (not (contains!8054 lt!579132 k0!1205))))

(declare-fun zeroValue!1387 () V!50867)

(assert (=> b!1291480 (= lt!579132 (+!4360 lt!579135 (tuple2!22297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579134 () Unit!42685)

(assert (=> b!1291480 (= lt!579134 (addStillNotContains!405 lt!579135 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6072 (array!85643 array!85641 (_ BitVec 32) (_ BitVec 32) V!50867 V!50867 (_ BitVec 32) Int) ListLongMap!19965)

(assert (=> b!1291480 (= lt!579135 (getCurrentListMapNoExtraKeys!6072 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291481 () Bool)

(declare-fun res!858145 () Bool)

(assert (=> b!1291481 (=> (not res!858145) (not e!737259))))

(assert (=> b!1291481 (= res!858145 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41869 _keys!1741))))))

(declare-fun b!1291482 () Bool)

(declare-fun res!858148 () Bool)

(assert (=> b!1291482 (=> (not res!858148) (not e!737259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85643 (_ BitVec 32)) Bool)

(assert (=> b!1291482 (= res!858148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291483 () Bool)

(declare-fun res!858143 () Bool)

(assert (=> b!1291483 (=> (not res!858143) (not e!737259))))

(assert (=> b!1291483 (= res!858143 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41869 _keys!1741))))))

(declare-fun b!1291484 () Bool)

(declare-fun e!737263 () Bool)

(assert (=> b!1291484 (= e!737263 tp_is_empty!34323)))

(declare-fun b!1291485 () Bool)

(assert (=> b!1291485 (= e!737259 (not e!737261))))

(declare-fun res!858144 () Bool)

(assert (=> b!1291485 (=> res!858144 e!737261)))

(assert (=> b!1291485 (= res!858144 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1291485 (not (contains!8054 (ListLongMap!19966 Nil!29485) k0!1205))))

(declare-fun lt!579131 () Unit!42685)

(declare-fun emptyContainsNothing!100 ((_ BitVec 64)) Unit!42685)

(assert (=> b!1291485 (= lt!579131 (emptyContainsNothing!100 k0!1205))))

(declare-fun b!1291486 () Bool)

(declare-fun e!737260 () Bool)

(assert (=> b!1291486 (= e!737260 tp_is_empty!34323)))

(declare-fun b!1291487 () Bool)

(declare-fun res!858147 () Bool)

(assert (=> b!1291487 (=> (not res!858147) (not e!737259))))

(declare-datatypes ((List!29489 0))(
  ( (Nil!29486) (Cons!29485 (h!30694 (_ BitVec 64)) (t!43060 List!29489)) )
))
(declare-fun arrayNoDuplicates!0 (array!85643 (_ BitVec 32) List!29489) Bool)

(assert (=> b!1291487 (= res!858147 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29486))))

(declare-fun b!1291488 () Bool)

(declare-fun mapRes!53045 () Bool)

(assert (=> b!1291488 (= e!737262 (and e!737260 mapRes!53045))))

(declare-fun condMapEmpty!53045 () Bool)

(declare-fun mapDefault!53045 () ValueCell!16263)

(assert (=> b!1291488 (= condMapEmpty!53045 (= (arr!41317 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16263)) mapDefault!53045)))))

(declare-fun b!1291489 () Bool)

(declare-fun res!858146 () Bool)

(assert (=> b!1291489 (=> (not res!858146) (not e!737259))))

(declare-fun getCurrentListMap!4993 (array!85643 array!85641 (_ BitVec 32) (_ BitVec 32) V!50867 V!50867 (_ BitVec 32) Int) ListLongMap!19965)

(assert (=> b!1291489 (= res!858146 (contains!8054 (getCurrentListMap!4993 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!53045 () Bool)

(declare-fun tp!101168 () Bool)

(assert (=> mapNonEmpty!53045 (= mapRes!53045 (and tp!101168 e!737263))))

(declare-fun mapKey!53045 () (_ BitVec 32))

(declare-fun mapRest!53045 () (Array (_ BitVec 32) ValueCell!16263))

(declare-fun mapValue!53045 () ValueCell!16263)

(assert (=> mapNonEmpty!53045 (= (arr!41317 _values!1445) (store mapRest!53045 mapKey!53045 mapValue!53045))))

(declare-fun b!1291490 () Bool)

(declare-fun res!858150 () Bool)

(assert (=> b!1291490 (=> (not res!858150) (not e!737259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291490 (= res!858150 (not (validKeyInArray!0 (select (arr!41318 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53045 () Bool)

(assert (=> mapIsEmpty!53045 mapRes!53045))

(assert (= (and start!109230 res!858149) b!1291479))

(assert (= (and b!1291479 res!858142) b!1291482))

(assert (= (and b!1291482 res!858148) b!1291487))

(assert (= (and b!1291487 res!858147) b!1291481))

(assert (= (and b!1291481 res!858145) b!1291489))

(assert (= (and b!1291489 res!858146) b!1291483))

(assert (= (and b!1291483 res!858143) b!1291490))

(assert (= (and b!1291490 res!858150) b!1291485))

(assert (= (and b!1291485 (not res!858144)) b!1291480))

(assert (= (and b!1291488 condMapEmpty!53045) mapIsEmpty!53045))

(assert (= (and b!1291488 (not condMapEmpty!53045)) mapNonEmpty!53045))

(get-info :version)

(assert (= (and mapNonEmpty!53045 ((_ is ValueCellFull!16263) mapValue!53045)) b!1291484))

(assert (= (and b!1291488 ((_ is ValueCellFull!16263) mapDefault!53045)) b!1291486))

(assert (= start!109230 b!1291488))

(declare-fun m!1184241 () Bool)

(assert (=> b!1291490 m!1184241))

(assert (=> b!1291490 m!1184241))

(declare-fun m!1184243 () Bool)

(assert (=> b!1291490 m!1184243))

(declare-fun m!1184245 () Bool)

(assert (=> b!1291480 m!1184245))

(declare-fun m!1184247 () Bool)

(assert (=> b!1291480 m!1184247))

(declare-fun m!1184249 () Bool)

(assert (=> b!1291480 m!1184249))

(assert (=> b!1291480 m!1184249))

(declare-fun m!1184251 () Bool)

(assert (=> b!1291480 m!1184251))

(declare-fun m!1184253 () Bool)

(assert (=> b!1291480 m!1184253))

(declare-fun m!1184255 () Bool)

(assert (=> b!1291480 m!1184255))

(declare-fun m!1184257 () Bool)

(assert (=> b!1291480 m!1184257))

(declare-fun m!1184259 () Bool)

(assert (=> b!1291480 m!1184259))

(declare-fun m!1184261 () Bool)

(assert (=> b!1291482 m!1184261))

(declare-fun m!1184263 () Bool)

(assert (=> b!1291489 m!1184263))

(assert (=> b!1291489 m!1184263))

(declare-fun m!1184265 () Bool)

(assert (=> b!1291489 m!1184265))

(declare-fun m!1184267 () Bool)

(assert (=> b!1291485 m!1184267))

(declare-fun m!1184269 () Bool)

(assert (=> b!1291485 m!1184269))

(declare-fun m!1184271 () Bool)

(assert (=> start!109230 m!1184271))

(declare-fun m!1184273 () Bool)

(assert (=> start!109230 m!1184273))

(declare-fun m!1184275 () Bool)

(assert (=> start!109230 m!1184275))

(declare-fun m!1184277 () Bool)

(assert (=> mapNonEmpty!53045 m!1184277))

(declare-fun m!1184279 () Bool)

(assert (=> b!1291487 m!1184279))

(check-sat (not b!1291482) (not b!1291480) (not b!1291490) (not b_next!28683) (not b!1291485) (not b!1291489) tp_is_empty!34323 (not mapNonEmpty!53045) b_and!46783 (not b!1291487) (not start!109230))
(check-sat b_and!46783 (not b_next!28683))
