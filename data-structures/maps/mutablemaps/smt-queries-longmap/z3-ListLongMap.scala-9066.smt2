; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109218 () Bool)

(assert start!109218)

(declare-fun b_free!28671 () Bool)

(declare-fun b_next!28671 () Bool)

(assert (=> start!109218 (= b_free!28671 (not b_next!28671))))

(declare-fun tp!101132 () Bool)

(declare-fun b_and!46771 () Bool)

(assert (=> start!109218 (= tp!101132 b_and!46771)))

(declare-fun b!1291263 () Bool)

(declare-fun e!737153 () Bool)

(declare-fun e!737152 () Bool)

(assert (=> b!1291263 (= e!737153 (not e!737152))))

(declare-fun res!857982 () Bool)

(assert (=> b!1291263 (=> res!857982 e!737152)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291263 (= res!857982 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50851 0))(
  ( (V!50852 (val!17230 Int)) )
))
(declare-datatypes ((tuple2!22286 0))(
  ( (tuple2!22287 (_1!11153 (_ BitVec 64)) (_2!11153 V!50851)) )
))
(declare-datatypes ((List!29478 0))(
  ( (Nil!29475) (Cons!29474 (h!30683 tuple2!22286) (t!43049 List!29478)) )
))
(declare-datatypes ((ListLongMap!19955 0))(
  ( (ListLongMap!19956 (toList!9993 List!29478)) )
))
(declare-fun contains!8049 (ListLongMap!19955 (_ BitVec 64)) Bool)

(assert (=> b!1291263 (not (contains!8049 (ListLongMap!19956 Nil!29475) k0!1205))))

(declare-datatypes ((Unit!42675 0))(
  ( (Unit!42676) )
))
(declare-fun lt!579023 () Unit!42675)

(declare-fun emptyContainsNothing!96 ((_ BitVec 64)) Unit!42675)

(assert (=> b!1291263 (= lt!579023 (emptyContainsNothing!96 k0!1205))))

(declare-fun b!1291264 () Bool)

(declare-fun res!857980 () Bool)

(assert (=> b!1291264 (=> (not res!857980) (not e!737153))))

(declare-datatypes ((array!85617 0))(
  ( (array!85618 (arr!41305 (Array (_ BitVec 32) (_ BitVec 64))) (size!41856 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85617)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291264 (= res!857980 (not (validKeyInArray!0 (select (arr!41305 _keys!1741) from!2144))))))

(declare-fun b!1291265 () Bool)

(declare-fun res!857987 () Bool)

(assert (=> b!1291265 (=> (not res!857987) (not e!737153))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16257 0))(
  ( (ValueCellFull!16257 (v!19831 V!50851)) (EmptyCell!16257) )
))
(declare-datatypes ((array!85619 0))(
  ( (array!85620 (arr!41306 (Array (_ BitVec 32) ValueCell!16257)) (size!41857 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85619)

(assert (=> b!1291265 (= res!857987 (and (= (size!41857 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41856 _keys!1741) (size!41857 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291266 () Bool)

(declare-fun e!737155 () Bool)

(declare-fun tp_is_empty!34311 () Bool)

(assert (=> b!1291266 (= e!737155 tp_is_empty!34311)))

(declare-fun b!1291268 () Bool)

(declare-fun res!857988 () Bool)

(assert (=> b!1291268 (=> (not res!857988) (not e!737153))))

(declare-fun minValue!1387 () V!50851)

(declare-fun zeroValue!1387 () V!50851)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4989 (array!85617 array!85619 (_ BitVec 32) (_ BitVec 32) V!50851 V!50851 (_ BitVec 32) Int) ListLongMap!19955)

(assert (=> b!1291268 (= res!857988 (contains!8049 (getCurrentListMap!4989 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!53027 () Bool)

(declare-fun mapRes!53027 () Bool)

(declare-fun tp!101133 () Bool)

(declare-fun e!737150 () Bool)

(assert (=> mapNonEmpty!53027 (= mapRes!53027 (and tp!101133 e!737150))))

(declare-fun mapRest!53027 () (Array (_ BitVec 32) ValueCell!16257))

(declare-fun mapKey!53027 () (_ BitVec 32))

(declare-fun mapValue!53027 () ValueCell!16257)

(assert (=> mapNonEmpty!53027 (= (arr!41306 _values!1445) (store mapRest!53027 mapKey!53027 mapValue!53027))))

(declare-fun b!1291269 () Bool)

(declare-fun res!857986 () Bool)

(assert (=> b!1291269 (=> (not res!857986) (not e!737153))))

(declare-datatypes ((List!29479 0))(
  ( (Nil!29476) (Cons!29475 (h!30684 (_ BitVec 64)) (t!43050 List!29479)) )
))
(declare-fun arrayNoDuplicates!0 (array!85617 (_ BitVec 32) List!29479) Bool)

(assert (=> b!1291269 (= res!857986 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29476))))

(declare-fun b!1291270 () Bool)

(assert (=> b!1291270 (= e!737150 tp_is_empty!34311)))

(declare-fun b!1291271 () Bool)

(declare-fun e!737154 () Bool)

(assert (=> b!1291271 (= e!737154 (and e!737155 mapRes!53027))))

(declare-fun condMapEmpty!53027 () Bool)

(declare-fun mapDefault!53027 () ValueCell!16257)

(assert (=> b!1291271 (= condMapEmpty!53027 (= (arr!41306 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16257)) mapDefault!53027)))))

(declare-fun b!1291272 () Bool)

(assert (=> b!1291272 (= e!737152 true)))

(assert (=> b!1291272 false))

(declare-fun lt!579024 () ListLongMap!19955)

(declare-fun lt!579026 () Unit!42675)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!51 ((_ BitVec 64) (_ BitVec 64) V!50851 ListLongMap!19955) Unit!42675)

(assert (=> b!1291272 (= lt!579026 (lemmaInListMapAfterAddingDiffThenInBefore!51 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579024))))

(declare-fun lt!579028 () ListLongMap!19955)

(declare-fun +!4356 (ListLongMap!19955 tuple2!22286) ListLongMap!19955)

(assert (=> b!1291272 (not (contains!8049 (+!4356 lt!579028 (tuple2!22287 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579027 () Unit!42675)

(declare-fun addStillNotContains!401 (ListLongMap!19955 (_ BitVec 64) V!50851 (_ BitVec 64)) Unit!42675)

(assert (=> b!1291272 (= lt!579027 (addStillNotContains!401 lt!579028 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1291272 (not (contains!8049 lt!579024 k0!1205))))

(assert (=> b!1291272 (= lt!579024 (+!4356 lt!579028 (tuple2!22287 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579025 () Unit!42675)

(assert (=> b!1291272 (= lt!579025 (addStillNotContains!401 lt!579028 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6068 (array!85617 array!85619 (_ BitVec 32) (_ BitVec 32) V!50851 V!50851 (_ BitVec 32) Int) ListLongMap!19955)

(assert (=> b!1291272 (= lt!579028 (getCurrentListMapNoExtraKeys!6068 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291273 () Bool)

(declare-fun res!857984 () Bool)

(assert (=> b!1291273 (=> (not res!857984) (not e!737153))))

(assert (=> b!1291273 (= res!857984 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41856 _keys!1741))))))

(declare-fun res!857983 () Bool)

(assert (=> start!109218 (=> (not res!857983) (not e!737153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109218 (= res!857983 (validMask!0 mask!2175))))

(assert (=> start!109218 e!737153))

(assert (=> start!109218 tp_is_empty!34311))

(assert (=> start!109218 true))

(declare-fun array_inv!31275 (array!85619) Bool)

(assert (=> start!109218 (and (array_inv!31275 _values!1445) e!737154)))

(declare-fun array_inv!31276 (array!85617) Bool)

(assert (=> start!109218 (array_inv!31276 _keys!1741)))

(assert (=> start!109218 tp!101132))

(declare-fun b!1291267 () Bool)

(declare-fun res!857981 () Bool)

(assert (=> b!1291267 (=> (not res!857981) (not e!737153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85617 (_ BitVec 32)) Bool)

(assert (=> b!1291267 (= res!857981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291274 () Bool)

(declare-fun res!857985 () Bool)

(assert (=> b!1291274 (=> (not res!857985) (not e!737153))))

(assert (=> b!1291274 (= res!857985 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41856 _keys!1741))))))

(declare-fun mapIsEmpty!53027 () Bool)

(assert (=> mapIsEmpty!53027 mapRes!53027))

(assert (= (and start!109218 res!857983) b!1291265))

(assert (= (and b!1291265 res!857987) b!1291267))

(assert (= (and b!1291267 res!857981) b!1291269))

(assert (= (and b!1291269 res!857986) b!1291274))

(assert (= (and b!1291274 res!857985) b!1291268))

(assert (= (and b!1291268 res!857988) b!1291273))

(assert (= (and b!1291273 res!857984) b!1291264))

(assert (= (and b!1291264 res!857980) b!1291263))

(assert (= (and b!1291263 (not res!857982)) b!1291272))

(assert (= (and b!1291271 condMapEmpty!53027) mapIsEmpty!53027))

(assert (= (and b!1291271 (not condMapEmpty!53027)) mapNonEmpty!53027))

(get-info :version)

(assert (= (and mapNonEmpty!53027 ((_ is ValueCellFull!16257) mapValue!53027)) b!1291270))

(assert (= (and b!1291271 ((_ is ValueCellFull!16257) mapDefault!53027)) b!1291266))

(assert (= start!109218 b!1291271))

(declare-fun m!1184001 () Bool)

(assert (=> b!1291263 m!1184001))

(declare-fun m!1184003 () Bool)

(assert (=> b!1291263 m!1184003))

(declare-fun m!1184005 () Bool)

(assert (=> b!1291264 m!1184005))

(assert (=> b!1291264 m!1184005))

(declare-fun m!1184007 () Bool)

(assert (=> b!1291264 m!1184007))

(declare-fun m!1184009 () Bool)

(assert (=> b!1291272 m!1184009))

(declare-fun m!1184011 () Bool)

(assert (=> b!1291272 m!1184011))

(declare-fun m!1184013 () Bool)

(assert (=> b!1291272 m!1184013))

(assert (=> b!1291272 m!1184009))

(declare-fun m!1184015 () Bool)

(assert (=> b!1291272 m!1184015))

(declare-fun m!1184017 () Bool)

(assert (=> b!1291272 m!1184017))

(declare-fun m!1184019 () Bool)

(assert (=> b!1291272 m!1184019))

(declare-fun m!1184021 () Bool)

(assert (=> b!1291272 m!1184021))

(declare-fun m!1184023 () Bool)

(assert (=> b!1291272 m!1184023))

(declare-fun m!1184025 () Bool)

(assert (=> start!109218 m!1184025))

(declare-fun m!1184027 () Bool)

(assert (=> start!109218 m!1184027))

(declare-fun m!1184029 () Bool)

(assert (=> start!109218 m!1184029))

(declare-fun m!1184031 () Bool)

(assert (=> mapNonEmpty!53027 m!1184031))

(declare-fun m!1184033 () Bool)

(assert (=> b!1291268 m!1184033))

(assert (=> b!1291268 m!1184033))

(declare-fun m!1184035 () Bool)

(assert (=> b!1291268 m!1184035))

(declare-fun m!1184037 () Bool)

(assert (=> b!1291267 m!1184037))

(declare-fun m!1184039 () Bool)

(assert (=> b!1291269 m!1184039))

(check-sat (not b!1291268) b_and!46771 (not mapNonEmpty!53027) (not b!1291272) (not b!1291267) tp_is_empty!34311 (not b!1291269) (not b!1291264) (not start!109218) (not b_next!28671) (not b!1291263))
(check-sat b_and!46771 (not b_next!28671))
