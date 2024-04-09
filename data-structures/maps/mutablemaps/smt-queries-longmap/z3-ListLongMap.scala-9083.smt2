; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109320 () Bool)

(assert start!109320)

(declare-fun b_free!28773 () Bool)

(declare-fun b_next!28773 () Bool)

(assert (=> start!109320 (= b_free!28773 (not b_next!28773))))

(declare-fun tp!101438 () Bool)

(declare-fun b_and!46873 () Bool)

(assert (=> start!109320 (= tp!101438 b_and!46873)))

(declare-fun b!1293018 () Bool)

(declare-fun res!859278 () Bool)

(declare-fun e!737988 () Bool)

(assert (=> b!1293018 (=> (not res!859278) (not e!737988))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85815 0))(
  ( (array!85816 (arr!41404 (Array (_ BitVec 32) (_ BitVec 64))) (size!41955 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85815)

(assert (=> b!1293018 (= res!859278 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41955 _keys!1741))))))

(declare-fun b!1293019 () Bool)

(declare-fun e!737992 () Bool)

(declare-fun e!737987 () Bool)

(declare-fun mapRes!53180 () Bool)

(assert (=> b!1293019 (= e!737992 (and e!737987 mapRes!53180))))

(declare-fun condMapEmpty!53180 () Bool)

(declare-datatypes ((V!50987 0))(
  ( (V!50988 (val!17281 Int)) )
))
(declare-datatypes ((ValueCell!16308 0))(
  ( (ValueCellFull!16308 (v!19882 V!50987)) (EmptyCell!16308) )
))
(declare-datatypes ((array!85817 0))(
  ( (array!85818 (arr!41405 (Array (_ BitVec 32) ValueCell!16308)) (size!41956 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85817)

(declare-fun mapDefault!53180 () ValueCell!16308)

(assert (=> b!1293019 (= condMapEmpty!53180 (= (arr!41405 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16308)) mapDefault!53180)))))

(declare-fun b!1293020 () Bool)

(declare-fun res!859276 () Bool)

(assert (=> b!1293020 (=> (not res!859276) (not e!737988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293020 (= res!859276 (not (validKeyInArray!0 (select (arr!41404 _keys!1741) from!2144))))))

(declare-fun b!1293021 () Bool)

(declare-fun res!859280 () Bool)

(assert (=> b!1293021 (=> (not res!859280) (not e!737988))))

(declare-datatypes ((List!29560 0))(
  ( (Nil!29557) (Cons!29556 (h!30765 (_ BitVec 64)) (t!43131 List!29560)) )
))
(declare-fun arrayNoDuplicates!0 (array!85815 (_ BitVec 32) List!29560) Bool)

(assert (=> b!1293021 (= res!859280 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29557))))

(declare-fun b!1293022 () Bool)

(declare-fun res!859279 () Bool)

(assert (=> b!1293022 (=> (not res!859279) (not e!737988))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293022 (= res!859279 (and (= (size!41956 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41955 _keys!1741) (size!41956 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293023 () Bool)

(declare-fun res!859284 () Bool)

(assert (=> b!1293023 (=> (not res!859284) (not e!737988))))

(assert (=> b!1293023 (= res!859284 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41955 _keys!1741))))))

(declare-fun b!1293024 () Bool)

(declare-fun res!859283 () Bool)

(assert (=> b!1293024 (=> (not res!859283) (not e!737988))))

(declare-fun minValue!1387 () V!50987)

(declare-fun zeroValue!1387 () V!50987)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22376 0))(
  ( (tuple2!22377 (_1!11198 (_ BitVec 64)) (_2!11198 V!50987)) )
))
(declare-datatypes ((List!29561 0))(
  ( (Nil!29558) (Cons!29557 (h!30766 tuple2!22376) (t!43132 List!29561)) )
))
(declare-datatypes ((ListLongMap!20045 0))(
  ( (ListLongMap!20046 (toList!10038 List!29561)) )
))
(declare-fun contains!8094 (ListLongMap!20045 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5025 (array!85815 array!85817 (_ BitVec 32) (_ BitVec 32) V!50987 V!50987 (_ BitVec 32) Int) ListLongMap!20045)

(assert (=> b!1293024 (= res!859283 (contains!8094 (getCurrentListMap!5025 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!859282 () Bool)

(assert (=> start!109320 (=> (not res!859282) (not e!737988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109320 (= res!859282 (validMask!0 mask!2175))))

(assert (=> start!109320 e!737988))

(declare-fun tp_is_empty!34413 () Bool)

(assert (=> start!109320 tp_is_empty!34413))

(assert (=> start!109320 true))

(declare-fun array_inv!31343 (array!85817) Bool)

(assert (=> start!109320 (and (array_inv!31343 _values!1445) e!737992)))

(declare-fun array_inv!31344 (array!85815) Bool)

(assert (=> start!109320 (array_inv!31344 _keys!1741)))

(assert (=> start!109320 tp!101438))

(declare-fun b!1293025 () Bool)

(declare-fun e!737989 () Bool)

(assert (=> b!1293025 (= e!737989 tp_is_empty!34413)))

(declare-fun b!1293026 () Bool)

(declare-fun res!859281 () Bool)

(assert (=> b!1293026 (=> (not res!859281) (not e!737988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85815 (_ BitVec 32)) Bool)

(assert (=> b!1293026 (= res!859281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53180 () Bool)

(assert (=> mapIsEmpty!53180 mapRes!53180))

(declare-fun b!1293027 () Bool)

(declare-fun e!737990 () Bool)

(assert (=> b!1293027 (= e!737990 true)))

(declare-fun lt!579404 () ListLongMap!20045)

(declare-fun +!4371 (ListLongMap!20045 tuple2!22376) ListLongMap!20045)

(assert (=> b!1293027 (not (contains!8094 (+!4371 lt!579404 (tuple2!22377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42755 0))(
  ( (Unit!42756) )
))
(declare-fun lt!579406 () Unit!42755)

(declare-fun addStillNotContains!416 (ListLongMap!20045 (_ BitVec 64) V!50987 (_ BitVec 64)) Unit!42755)

(assert (=> b!1293027 (= lt!579406 (addStillNotContains!416 lt!579404 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6084 (array!85815 array!85817 (_ BitVec 32) (_ BitVec 32) V!50987 V!50987 (_ BitVec 32) Int) ListLongMap!20045)

(assert (=> b!1293027 (= lt!579404 (getCurrentListMapNoExtraKeys!6084 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293028 () Bool)

(assert (=> b!1293028 (= e!737987 tp_is_empty!34413)))

(declare-fun b!1293029 () Bool)

(assert (=> b!1293029 (= e!737988 (not e!737990))))

(declare-fun res!859277 () Bool)

(assert (=> b!1293029 (=> res!859277 e!737990)))

(assert (=> b!1293029 (= res!859277 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293029 (not (contains!8094 (ListLongMap!20046 Nil!29558) k0!1205))))

(declare-fun lt!579405 () Unit!42755)

(declare-fun emptyContainsNothing!134 ((_ BitVec 64)) Unit!42755)

(assert (=> b!1293029 (= lt!579405 (emptyContainsNothing!134 k0!1205))))

(declare-fun mapNonEmpty!53180 () Bool)

(declare-fun tp!101439 () Bool)

(assert (=> mapNonEmpty!53180 (= mapRes!53180 (and tp!101439 e!737989))))

(declare-fun mapKey!53180 () (_ BitVec 32))

(declare-fun mapRest!53180 () (Array (_ BitVec 32) ValueCell!16308))

(declare-fun mapValue!53180 () ValueCell!16308)

(assert (=> mapNonEmpty!53180 (= (arr!41405 _values!1445) (store mapRest!53180 mapKey!53180 mapValue!53180))))

(assert (= (and start!109320 res!859282) b!1293022))

(assert (= (and b!1293022 res!859279) b!1293026))

(assert (= (and b!1293026 res!859281) b!1293021))

(assert (= (and b!1293021 res!859280) b!1293023))

(assert (= (and b!1293023 res!859284) b!1293024))

(assert (= (and b!1293024 res!859283) b!1293018))

(assert (= (and b!1293018 res!859278) b!1293020))

(assert (= (and b!1293020 res!859276) b!1293029))

(assert (= (and b!1293029 (not res!859277)) b!1293027))

(assert (= (and b!1293019 condMapEmpty!53180) mapIsEmpty!53180))

(assert (= (and b!1293019 (not condMapEmpty!53180)) mapNonEmpty!53180))

(get-info :version)

(assert (= (and mapNonEmpty!53180 ((_ is ValueCellFull!16308) mapValue!53180)) b!1293025))

(assert (= (and b!1293019 ((_ is ValueCellFull!16308) mapDefault!53180)) b!1293028))

(assert (= start!109320 b!1293019))

(declare-fun m!1185493 () Bool)

(assert (=> b!1293026 m!1185493))

(declare-fun m!1185495 () Bool)

(assert (=> b!1293021 m!1185495))

(declare-fun m!1185497 () Bool)

(assert (=> b!1293024 m!1185497))

(assert (=> b!1293024 m!1185497))

(declare-fun m!1185499 () Bool)

(assert (=> b!1293024 m!1185499))

(declare-fun m!1185501 () Bool)

(assert (=> start!109320 m!1185501))

(declare-fun m!1185503 () Bool)

(assert (=> start!109320 m!1185503))

(declare-fun m!1185505 () Bool)

(assert (=> start!109320 m!1185505))

(declare-fun m!1185507 () Bool)

(assert (=> mapNonEmpty!53180 m!1185507))

(declare-fun m!1185509 () Bool)

(assert (=> b!1293027 m!1185509))

(assert (=> b!1293027 m!1185509))

(declare-fun m!1185511 () Bool)

(assert (=> b!1293027 m!1185511))

(declare-fun m!1185513 () Bool)

(assert (=> b!1293027 m!1185513))

(declare-fun m!1185515 () Bool)

(assert (=> b!1293027 m!1185515))

(declare-fun m!1185517 () Bool)

(assert (=> b!1293020 m!1185517))

(assert (=> b!1293020 m!1185517))

(declare-fun m!1185519 () Bool)

(assert (=> b!1293020 m!1185519))

(declare-fun m!1185521 () Bool)

(assert (=> b!1293029 m!1185521))

(declare-fun m!1185523 () Bool)

(assert (=> b!1293029 m!1185523))

(check-sat (not b!1293026) (not b!1293024) (not b!1293020) (not b!1293021) (not b!1293027) (not b_next!28773) (not start!109320) b_and!46873 (not mapNonEmpty!53180) (not b!1293029) tp_is_empty!34413)
(check-sat b_and!46873 (not b_next!28773))
