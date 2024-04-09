; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109134 () Bool)

(assert start!109134)

(declare-fun b_free!28587 () Bool)

(declare-fun b_next!28587 () Bool)

(assert (=> start!109134 (= b_free!28587 (not b_next!28587))))

(declare-fun tp!100881 () Bool)

(declare-fun b_and!46687 () Bool)

(assert (=> start!109134 (= tp!100881 b_and!46687)))

(declare-fun res!856851 () Bool)

(declare-fun e!736397 () Bool)

(assert (=> start!109134 (=> (not res!856851) (not e!736397))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109134 (= res!856851 (validMask!0 mask!2175))))

(assert (=> start!109134 e!736397))

(declare-fun tp_is_empty!34227 () Bool)

(assert (=> start!109134 tp_is_empty!34227))

(assert (=> start!109134 true))

(declare-datatypes ((V!50739 0))(
  ( (V!50740 (val!17188 Int)) )
))
(declare-datatypes ((ValueCell!16215 0))(
  ( (ValueCellFull!16215 (v!19789 V!50739)) (EmptyCell!16215) )
))
(declare-datatypes ((array!85453 0))(
  ( (array!85454 (arr!41223 (Array (_ BitVec 32) ValueCell!16215)) (size!41774 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85453)

(declare-fun e!736399 () Bool)

(declare-fun array_inv!31221 (array!85453) Bool)

(assert (=> start!109134 (and (array_inv!31221 _values!1445) e!736399)))

(declare-datatypes ((array!85455 0))(
  ( (array!85456 (arr!41224 (Array (_ BitVec 32) (_ BitVec 64))) (size!41775 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85455)

(declare-fun array_inv!31222 (array!85455) Bool)

(assert (=> start!109134 (array_inv!31222 _keys!1741)))

(assert (=> start!109134 tp!100881))

(declare-fun b!1289751 () Bool)

(declare-fun e!736398 () Bool)

(assert (=> b!1289751 (= e!736398 tp_is_empty!34227)))

(declare-fun b!1289752 () Bool)

(declare-fun res!856853 () Bool)

(assert (=> b!1289752 (=> (not res!856853) (not e!736397))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289752 (= res!856853 (not (validKeyInArray!0 (select (arr!41224 _keys!1741) from!2144))))))

(declare-fun b!1289753 () Bool)

(declare-fun res!856854 () Bool)

(assert (=> b!1289753 (=> (not res!856854) (not e!736397))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1289753 (= res!856854 (and (= (size!41774 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41775 _keys!1741) (size!41774 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289754 () Bool)

(declare-fun res!856849 () Bool)

(assert (=> b!1289754 (=> (not res!856849) (not e!736397))))

(declare-fun minValue!1387 () V!50739)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun zeroValue!1387 () V!50739)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22214 0))(
  ( (tuple2!22215 (_1!11117 (_ BitVec 64)) (_2!11117 V!50739)) )
))
(declare-datatypes ((List!29412 0))(
  ( (Nil!29409) (Cons!29408 (h!30617 tuple2!22214) (t!42983 List!29412)) )
))
(declare-datatypes ((ListLongMap!19883 0))(
  ( (ListLongMap!19884 (toList!9957 List!29412)) )
))
(declare-fun contains!8013 (ListLongMap!19883 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4959 (array!85455 array!85453 (_ BitVec 32) (_ BitVec 32) V!50739 V!50739 (_ BitVec 32) Int) ListLongMap!19883)

(assert (=> b!1289754 (= res!856849 (contains!8013 (getCurrentListMap!4959 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289755 () Bool)

(declare-fun e!736394 () Bool)

(assert (=> b!1289755 (= e!736394 true)))

(declare-fun lt!578332 () ListLongMap!19883)

(declare-fun +!4327 (ListLongMap!19883 tuple2!22214) ListLongMap!19883)

(assert (=> b!1289755 (not (contains!8013 (+!4327 lt!578332 (tuple2!22215 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42605 0))(
  ( (Unit!42606) )
))
(declare-fun lt!578329 () Unit!42605)

(declare-fun addStillNotContains!372 (ListLongMap!19883 (_ BitVec 64) V!50739 (_ BitVec 64)) Unit!42605)

(assert (=> b!1289755 (= lt!578329 (addStillNotContains!372 lt!578332 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1289755 (not (contains!8013 (+!4327 lt!578332 (tuple2!22215 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578330 () Unit!42605)

(assert (=> b!1289755 (= lt!578330 (addStillNotContains!372 lt!578332 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6039 (array!85455 array!85453 (_ BitVec 32) (_ BitVec 32) V!50739 V!50739 (_ BitVec 32) Int) ListLongMap!19883)

(assert (=> b!1289755 (= lt!578332 (getCurrentListMapNoExtraKeys!6039 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289756 () Bool)

(declare-fun res!856848 () Bool)

(assert (=> b!1289756 (=> (not res!856848) (not e!736397))))

(assert (=> b!1289756 (= res!856848 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41775 _keys!1741))))))

(declare-fun mapNonEmpty!52901 () Bool)

(declare-fun mapRes!52901 () Bool)

(declare-fun tp!100880 () Bool)

(assert (=> mapNonEmpty!52901 (= mapRes!52901 (and tp!100880 e!736398))))

(declare-fun mapRest!52901 () (Array (_ BitVec 32) ValueCell!16215))

(declare-fun mapKey!52901 () (_ BitVec 32))

(declare-fun mapValue!52901 () ValueCell!16215)

(assert (=> mapNonEmpty!52901 (= (arr!41223 _values!1445) (store mapRest!52901 mapKey!52901 mapValue!52901))))

(declare-fun mapIsEmpty!52901 () Bool)

(assert (=> mapIsEmpty!52901 mapRes!52901))

(declare-fun b!1289757 () Bool)

(declare-fun e!736395 () Bool)

(assert (=> b!1289757 (= e!736395 tp_is_empty!34227)))

(declare-fun b!1289758 () Bool)

(declare-fun res!856846 () Bool)

(assert (=> b!1289758 (=> (not res!856846) (not e!736397))))

(declare-datatypes ((List!29413 0))(
  ( (Nil!29410) (Cons!29409 (h!30618 (_ BitVec 64)) (t!42984 List!29413)) )
))
(declare-fun arrayNoDuplicates!0 (array!85455 (_ BitVec 32) List!29413) Bool)

(assert (=> b!1289758 (= res!856846 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29410))))

(declare-fun b!1289759 () Bool)

(assert (=> b!1289759 (= e!736399 (and e!736395 mapRes!52901))))

(declare-fun condMapEmpty!52901 () Bool)

(declare-fun mapDefault!52901 () ValueCell!16215)

(assert (=> b!1289759 (= condMapEmpty!52901 (= (arr!41223 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16215)) mapDefault!52901)))))

(declare-fun b!1289760 () Bool)

(declare-fun res!856847 () Bool)

(assert (=> b!1289760 (=> (not res!856847) (not e!736397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85455 (_ BitVec 32)) Bool)

(assert (=> b!1289760 (= res!856847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289761 () Bool)

(assert (=> b!1289761 (= e!736397 (not e!736394))))

(declare-fun res!856850 () Bool)

(assert (=> b!1289761 (=> res!856850 e!736394)))

(assert (=> b!1289761 (= res!856850 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289761 (not (contains!8013 (ListLongMap!19884 Nil!29409) k0!1205))))

(declare-fun lt!578331 () Unit!42605)

(declare-fun emptyContainsNothing!65 ((_ BitVec 64)) Unit!42605)

(assert (=> b!1289761 (= lt!578331 (emptyContainsNothing!65 k0!1205))))

(declare-fun b!1289762 () Bool)

(declare-fun res!856852 () Bool)

(assert (=> b!1289762 (=> (not res!856852) (not e!736397))))

(assert (=> b!1289762 (= res!856852 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41775 _keys!1741))))))

(assert (= (and start!109134 res!856851) b!1289753))

(assert (= (and b!1289753 res!856854) b!1289760))

(assert (= (and b!1289760 res!856847) b!1289758))

(assert (= (and b!1289758 res!856846) b!1289762))

(assert (= (and b!1289762 res!856852) b!1289754))

(assert (= (and b!1289754 res!856849) b!1289756))

(assert (= (and b!1289756 res!856848) b!1289752))

(assert (= (and b!1289752 res!856853) b!1289761))

(assert (= (and b!1289761 (not res!856850)) b!1289755))

(assert (= (and b!1289759 condMapEmpty!52901) mapIsEmpty!52901))

(assert (= (and b!1289759 (not condMapEmpty!52901)) mapNonEmpty!52901))

(get-info :version)

(assert (= (and mapNonEmpty!52901 ((_ is ValueCellFull!16215) mapValue!52901)) b!1289751))

(assert (= (and b!1289759 ((_ is ValueCellFull!16215) mapDefault!52901)) b!1289757))

(assert (= start!109134 b!1289759))

(declare-fun m!1182337 () Bool)

(assert (=> b!1289754 m!1182337))

(assert (=> b!1289754 m!1182337))

(declare-fun m!1182339 () Bool)

(assert (=> b!1289754 m!1182339))

(declare-fun m!1182341 () Bool)

(assert (=> b!1289760 m!1182341))

(declare-fun m!1182343 () Bool)

(assert (=> start!109134 m!1182343))

(declare-fun m!1182345 () Bool)

(assert (=> start!109134 m!1182345))

(declare-fun m!1182347 () Bool)

(assert (=> start!109134 m!1182347))

(declare-fun m!1182349 () Bool)

(assert (=> b!1289755 m!1182349))

(declare-fun m!1182351 () Bool)

(assert (=> b!1289755 m!1182351))

(declare-fun m!1182353 () Bool)

(assert (=> b!1289755 m!1182353))

(declare-fun m!1182355 () Bool)

(assert (=> b!1289755 m!1182355))

(assert (=> b!1289755 m!1182355))

(declare-fun m!1182357 () Bool)

(assert (=> b!1289755 m!1182357))

(declare-fun m!1182359 () Bool)

(assert (=> b!1289755 m!1182359))

(declare-fun m!1182361 () Bool)

(assert (=> b!1289755 m!1182361))

(assert (=> b!1289755 m!1182349))

(declare-fun m!1182363 () Bool)

(assert (=> b!1289752 m!1182363))

(assert (=> b!1289752 m!1182363))

(declare-fun m!1182365 () Bool)

(assert (=> b!1289752 m!1182365))

(declare-fun m!1182367 () Bool)

(assert (=> b!1289758 m!1182367))

(declare-fun m!1182369 () Bool)

(assert (=> mapNonEmpty!52901 m!1182369))

(declare-fun m!1182371 () Bool)

(assert (=> b!1289761 m!1182371))

(declare-fun m!1182373 () Bool)

(assert (=> b!1289761 m!1182373))

(check-sat (not b!1289754) (not b!1289758) (not start!109134) (not mapNonEmpty!52901) (not b!1289752) (not b!1289761) b_and!46687 (not b!1289755) tp_is_empty!34227 (not b_next!28587) (not b!1289760))
(check-sat b_and!46687 (not b_next!28587))
