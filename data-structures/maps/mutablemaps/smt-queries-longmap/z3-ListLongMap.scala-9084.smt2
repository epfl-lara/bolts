; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109326 () Bool)

(assert start!109326)

(declare-fun b_free!28779 () Bool)

(declare-fun b_next!28779 () Bool)

(assert (=> start!109326 (= b_free!28779 (not b_next!28779))))

(declare-fun tp!101457 () Bool)

(declare-fun b_and!46879 () Bool)

(assert (=> start!109326 (= tp!101457 b_and!46879)))

(declare-fun b!1293126 () Bool)

(declare-fun res!859358 () Bool)

(declare-fun e!738042 () Bool)

(assert (=> b!1293126 (=> (not res!859358) (not e!738042))))

(declare-datatypes ((array!85827 0))(
  ( (array!85828 (arr!41410 (Array (_ BitVec 32) (_ BitVec 64))) (size!41961 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85827)

(declare-datatypes ((List!29565 0))(
  ( (Nil!29562) (Cons!29561 (h!30770 (_ BitVec 64)) (t!43136 List!29565)) )
))
(declare-fun arrayNoDuplicates!0 (array!85827 (_ BitVec 32) List!29565) Bool)

(assert (=> b!1293126 (= res!859358 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29562))))

(declare-fun b!1293127 () Bool)

(declare-fun e!738043 () Bool)

(assert (=> b!1293127 (= e!738043 true)))

(declare-datatypes ((V!50995 0))(
  ( (V!50996 (val!17284 Int)) )
))
(declare-datatypes ((tuple2!22382 0))(
  ( (tuple2!22383 (_1!11201 (_ BitVec 64)) (_2!11201 V!50995)) )
))
(declare-datatypes ((List!29566 0))(
  ( (Nil!29563) (Cons!29562 (h!30771 tuple2!22382) (t!43137 List!29566)) )
))
(declare-datatypes ((ListLongMap!20051 0))(
  ( (ListLongMap!20052 (toList!10041 List!29566)) )
))
(declare-fun lt!579431 () ListLongMap!20051)

(declare-fun zeroValue!1387 () V!50995)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8097 (ListLongMap!20051 (_ BitVec 64)) Bool)

(declare-fun +!4374 (ListLongMap!20051 tuple2!22382) ListLongMap!20051)

(assert (=> b!1293127 (not (contains!8097 (+!4374 lt!579431 (tuple2!22383 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42761 0))(
  ( (Unit!42762) )
))
(declare-fun lt!579432 () Unit!42761)

(declare-fun addStillNotContains!419 (ListLongMap!20051 (_ BitVec 64) V!50995 (_ BitVec 64)) Unit!42761)

(assert (=> b!1293127 (= lt!579432 (addStillNotContains!419 lt!579431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50995)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16311 0))(
  ( (ValueCellFull!16311 (v!19885 V!50995)) (EmptyCell!16311) )
))
(declare-datatypes ((array!85829 0))(
  ( (array!85830 (arr!41411 (Array (_ BitVec 32) ValueCell!16311)) (size!41962 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85829)

(declare-fun getCurrentListMapNoExtraKeys!6087 (array!85827 array!85829 (_ BitVec 32) (_ BitVec 32) V!50995 V!50995 (_ BitVec 32) Int) ListLongMap!20051)

(assert (=> b!1293127 (= lt!579431 (getCurrentListMapNoExtraKeys!6087 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!53189 () Bool)

(declare-fun mapRes!53189 () Bool)

(declare-fun tp!101456 () Bool)

(declare-fun e!738044 () Bool)

(assert (=> mapNonEmpty!53189 (= mapRes!53189 (and tp!101456 e!738044))))

(declare-fun mapRest!53189 () (Array (_ BitVec 32) ValueCell!16311))

(declare-fun mapKey!53189 () (_ BitVec 32))

(declare-fun mapValue!53189 () ValueCell!16311)

(assert (=> mapNonEmpty!53189 (= (arr!41411 _values!1445) (store mapRest!53189 mapKey!53189 mapValue!53189))))

(declare-fun b!1293128 () Bool)

(declare-fun res!859365 () Bool)

(assert (=> b!1293128 (=> (not res!859365) (not e!738042))))

(declare-fun getCurrentListMap!5027 (array!85827 array!85829 (_ BitVec 32) (_ BitVec 32) V!50995 V!50995 (_ BitVec 32) Int) ListLongMap!20051)

(assert (=> b!1293128 (= res!859365 (contains!8097 (getCurrentListMap!5027 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293129 () Bool)

(declare-fun res!859361 () Bool)

(assert (=> b!1293129 (=> (not res!859361) (not e!738042))))

(assert (=> b!1293129 (= res!859361 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41961 _keys!1741))))))

(declare-fun mapIsEmpty!53189 () Bool)

(assert (=> mapIsEmpty!53189 mapRes!53189))

(declare-fun b!1293130 () Bool)

(declare-fun e!738045 () Bool)

(declare-fun tp_is_empty!34419 () Bool)

(assert (=> b!1293130 (= e!738045 tp_is_empty!34419)))

(declare-fun b!1293131 () Bool)

(assert (=> b!1293131 (= e!738042 (not e!738043))))

(declare-fun res!859359 () Bool)

(assert (=> b!1293131 (=> res!859359 e!738043)))

(assert (=> b!1293131 (= res!859359 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293131 (not (contains!8097 (ListLongMap!20052 Nil!29563) k0!1205))))

(declare-fun lt!579433 () Unit!42761)

(declare-fun emptyContainsNothing!137 ((_ BitVec 64)) Unit!42761)

(assert (=> b!1293131 (= lt!579433 (emptyContainsNothing!137 k0!1205))))

(declare-fun res!859364 () Bool)

(assert (=> start!109326 (=> (not res!859364) (not e!738042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109326 (= res!859364 (validMask!0 mask!2175))))

(assert (=> start!109326 e!738042))

(assert (=> start!109326 tp_is_empty!34419))

(assert (=> start!109326 true))

(declare-fun e!738041 () Bool)

(declare-fun array_inv!31349 (array!85829) Bool)

(assert (=> start!109326 (and (array_inv!31349 _values!1445) e!738041)))

(declare-fun array_inv!31350 (array!85827) Bool)

(assert (=> start!109326 (array_inv!31350 _keys!1741)))

(assert (=> start!109326 tp!101457))

(declare-fun b!1293132 () Bool)

(declare-fun res!859360 () Bool)

(assert (=> b!1293132 (=> (not res!859360) (not e!738042))))

(assert (=> b!1293132 (= res!859360 (and (= (size!41962 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41961 _keys!1741) (size!41962 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293133 () Bool)

(assert (=> b!1293133 (= e!738044 tp_is_empty!34419)))

(declare-fun b!1293134 () Bool)

(declare-fun res!859357 () Bool)

(assert (=> b!1293134 (=> (not res!859357) (not e!738042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293134 (= res!859357 (not (validKeyInArray!0 (select (arr!41410 _keys!1741) from!2144))))))

(declare-fun b!1293135 () Bool)

(declare-fun res!859363 () Bool)

(assert (=> b!1293135 (=> (not res!859363) (not e!738042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85827 (_ BitVec 32)) Bool)

(assert (=> b!1293135 (= res!859363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293136 () Bool)

(declare-fun res!859362 () Bool)

(assert (=> b!1293136 (=> (not res!859362) (not e!738042))))

(assert (=> b!1293136 (= res!859362 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41961 _keys!1741))))))

(declare-fun b!1293137 () Bool)

(assert (=> b!1293137 (= e!738041 (and e!738045 mapRes!53189))))

(declare-fun condMapEmpty!53189 () Bool)

(declare-fun mapDefault!53189 () ValueCell!16311)

(assert (=> b!1293137 (= condMapEmpty!53189 (= (arr!41411 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16311)) mapDefault!53189)))))

(assert (= (and start!109326 res!859364) b!1293132))

(assert (= (and b!1293132 res!859360) b!1293135))

(assert (= (and b!1293135 res!859363) b!1293126))

(assert (= (and b!1293126 res!859358) b!1293136))

(assert (= (and b!1293136 res!859362) b!1293128))

(assert (= (and b!1293128 res!859365) b!1293129))

(assert (= (and b!1293129 res!859361) b!1293134))

(assert (= (and b!1293134 res!859357) b!1293131))

(assert (= (and b!1293131 (not res!859359)) b!1293127))

(assert (= (and b!1293137 condMapEmpty!53189) mapIsEmpty!53189))

(assert (= (and b!1293137 (not condMapEmpty!53189)) mapNonEmpty!53189))

(get-info :version)

(assert (= (and mapNonEmpty!53189 ((_ is ValueCellFull!16311) mapValue!53189)) b!1293133))

(assert (= (and b!1293137 ((_ is ValueCellFull!16311) mapDefault!53189)) b!1293130))

(assert (= start!109326 b!1293137))

(declare-fun m!1185589 () Bool)

(assert (=> b!1293126 m!1185589))

(declare-fun m!1185591 () Bool)

(assert (=> b!1293135 m!1185591))

(declare-fun m!1185593 () Bool)

(assert (=> b!1293127 m!1185593))

(assert (=> b!1293127 m!1185593))

(declare-fun m!1185595 () Bool)

(assert (=> b!1293127 m!1185595))

(declare-fun m!1185597 () Bool)

(assert (=> b!1293127 m!1185597))

(declare-fun m!1185599 () Bool)

(assert (=> b!1293127 m!1185599))

(declare-fun m!1185601 () Bool)

(assert (=> mapNonEmpty!53189 m!1185601))

(declare-fun m!1185603 () Bool)

(assert (=> b!1293128 m!1185603))

(assert (=> b!1293128 m!1185603))

(declare-fun m!1185605 () Bool)

(assert (=> b!1293128 m!1185605))

(declare-fun m!1185607 () Bool)

(assert (=> b!1293131 m!1185607))

(declare-fun m!1185609 () Bool)

(assert (=> b!1293131 m!1185609))

(declare-fun m!1185611 () Bool)

(assert (=> start!109326 m!1185611))

(declare-fun m!1185613 () Bool)

(assert (=> start!109326 m!1185613))

(declare-fun m!1185615 () Bool)

(assert (=> start!109326 m!1185615))

(declare-fun m!1185617 () Bool)

(assert (=> b!1293134 m!1185617))

(assert (=> b!1293134 m!1185617))

(declare-fun m!1185619 () Bool)

(assert (=> b!1293134 m!1185619))

(check-sat (not start!109326) (not b_next!28779) (not b!1293128) (not b!1293126) (not b!1293135) (not b!1293127) b_and!46879 (not b!1293134) (not mapNonEmpty!53189) tp_is_empty!34419 (not b!1293131))
(check-sat b_and!46879 (not b_next!28779))
