; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109374 () Bool)

(assert start!109374)

(declare-fun b_free!28827 () Bool)

(declare-fun b_next!28827 () Bool)

(assert (=> start!109374 (= b_free!28827 (not b_next!28827))))

(declare-fun tp!101600 () Bool)

(declare-fun b_and!46927 () Bool)

(assert (=> start!109374 (= tp!101600 b_and!46927)))

(declare-fun mapNonEmpty!53261 () Bool)

(declare-fun mapRes!53261 () Bool)

(declare-fun tp!101601 () Bool)

(declare-fun e!738462 () Bool)

(assert (=> mapNonEmpty!53261 (= mapRes!53261 (and tp!101601 e!738462))))

(declare-datatypes ((V!51059 0))(
  ( (V!51060 (val!17308 Int)) )
))
(declare-datatypes ((ValueCell!16335 0))(
  ( (ValueCellFull!16335 (v!19909 V!51059)) (EmptyCell!16335) )
))
(declare-fun mapRest!53261 () (Array (_ BitVec 32) ValueCell!16335))

(declare-fun mapKey!53261 () (_ BitVec 32))

(declare-fun mapValue!53261 () ValueCell!16335)

(declare-datatypes ((array!85921 0))(
  ( (array!85922 (arr!41457 (Array (_ BitVec 32) ValueCell!16335)) (size!42008 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85921)

(assert (=> mapNonEmpty!53261 (= (arr!41457 _values!1445) (store mapRest!53261 mapKey!53261 mapValue!53261))))

(declare-fun mapIsEmpty!53261 () Bool)

(assert (=> mapIsEmpty!53261 mapRes!53261))

(declare-fun b!1293977 () Bool)

(declare-fun res!859994 () Bool)

(declare-fun e!738461 () Bool)

(assert (=> b!1293977 (=> (not res!859994) (not e!738461))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85923 0))(
  ( (array!85924 (arr!41458 (Array (_ BitVec 32) (_ BitVec 64))) (size!42009 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85923)

(assert (=> b!1293977 (= res!859994 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42009 _keys!1741))))))

(declare-fun b!1293978 () Bool)

(declare-fun res!859992 () Bool)

(assert (=> b!1293978 (=> (not res!859992) (not e!738461))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1293978 (= res!859992 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42009 _keys!1741))))))

(declare-fun b!1293979 () Bool)

(declare-fun res!859997 () Bool)

(assert (=> b!1293979 (=> (not res!859997) (not e!738461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293979 (= res!859997 (not (validKeyInArray!0 (select (arr!41458 _keys!1741) from!2144))))))

(declare-fun b!1293980 () Bool)

(declare-fun res!859995 () Bool)

(assert (=> b!1293980 (=> (not res!859995) (not e!738461))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85923 (_ BitVec 32)) Bool)

(assert (=> b!1293980 (= res!859995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293981 () Bool)

(declare-fun e!738459 () Bool)

(declare-fun tp_is_empty!34467 () Bool)

(assert (=> b!1293981 (= e!738459 tp_is_empty!34467)))

(declare-fun b!1293982 () Bool)

(declare-fun e!738463 () Bool)

(assert (=> b!1293982 (= e!738463 (and e!738459 mapRes!53261))))

(declare-fun condMapEmpty!53261 () Bool)

(declare-fun mapDefault!53261 () ValueCell!16335)

(assert (=> b!1293982 (= condMapEmpty!53261 (= (arr!41457 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16335)) mapDefault!53261)))))

(declare-fun b!1293976 () Bool)

(assert (=> b!1293976 (= e!738462 tp_is_empty!34467)))

(declare-fun res!859991 () Bool)

(assert (=> start!109374 (=> (not res!859991) (not e!738461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109374 (= res!859991 (validMask!0 mask!2175))))

(assert (=> start!109374 e!738461))

(assert (=> start!109374 tp_is_empty!34467))

(assert (=> start!109374 true))

(declare-fun array_inv!31377 (array!85921) Bool)

(assert (=> start!109374 (and (array_inv!31377 _values!1445) e!738463)))

(declare-fun array_inv!31378 (array!85923) Bool)

(assert (=> start!109374 (array_inv!31378 _keys!1741)))

(assert (=> start!109374 tp!101600))

(declare-fun b!1293983 () Bool)

(declare-fun res!859998 () Bool)

(assert (=> b!1293983 (=> (not res!859998) (not e!738461))))

(declare-datatypes ((List!29599 0))(
  ( (Nil!29596) (Cons!29595 (h!30804 (_ BitVec 64)) (t!43170 List!29599)) )
))
(declare-fun arrayNoDuplicates!0 (array!85923 (_ BitVec 32) List!29599) Bool)

(assert (=> b!1293983 (= res!859998 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29596))))

(declare-fun b!1293984 () Bool)

(declare-fun res!859996 () Bool)

(assert (=> b!1293984 (=> (not res!859996) (not e!738461))))

(declare-fun minValue!1387 () V!51059)

(declare-fun zeroValue!1387 () V!51059)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22420 0))(
  ( (tuple2!22421 (_1!11220 (_ BitVec 64)) (_2!11220 V!51059)) )
))
(declare-datatypes ((List!29600 0))(
  ( (Nil!29597) (Cons!29596 (h!30805 tuple2!22420) (t!43171 List!29600)) )
))
(declare-datatypes ((ListLongMap!20089 0))(
  ( (ListLongMap!20090 (toList!10060 List!29600)) )
))
(declare-fun contains!8116 (ListLongMap!20089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5045 (array!85923 array!85921 (_ BitVec 32) (_ BitVec 32) V!51059 V!51059 (_ BitVec 32) Int) ListLongMap!20089)

(assert (=> b!1293984 (= res!859996 (contains!8116 (getCurrentListMap!5045 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293985 () Bool)

(assert (=> b!1293985 (= e!738461 (not true))))

(assert (=> b!1293985 (not (contains!8116 (ListLongMap!20090 Nil!29597) k0!1205))))

(declare-datatypes ((Unit!42795 0))(
  ( (Unit!42796) )
))
(declare-fun lt!579619 () Unit!42795)

(declare-fun emptyContainsNothing!154 ((_ BitVec 64)) Unit!42795)

(assert (=> b!1293985 (= lt!579619 (emptyContainsNothing!154 k0!1205))))

(declare-fun b!1293986 () Bool)

(declare-fun res!859993 () Bool)

(assert (=> b!1293986 (=> (not res!859993) (not e!738461))))

(assert (=> b!1293986 (= res!859993 (and (= (size!42008 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42009 _keys!1741) (size!42008 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109374 res!859991) b!1293986))

(assert (= (and b!1293986 res!859993) b!1293980))

(assert (= (and b!1293980 res!859995) b!1293983))

(assert (= (and b!1293983 res!859998) b!1293977))

(assert (= (and b!1293977 res!859994) b!1293984))

(assert (= (and b!1293984 res!859996) b!1293978))

(assert (= (and b!1293978 res!859992) b!1293979))

(assert (= (and b!1293979 res!859997) b!1293985))

(assert (= (and b!1293982 condMapEmpty!53261) mapIsEmpty!53261))

(assert (= (and b!1293982 (not condMapEmpty!53261)) mapNonEmpty!53261))

(get-info :version)

(assert (= (and mapNonEmpty!53261 ((_ is ValueCellFull!16335) mapValue!53261)) b!1293976))

(assert (= (and b!1293982 ((_ is ValueCellFull!16335) mapDefault!53261)) b!1293981))

(assert (= start!109374 b!1293982))

(declare-fun m!1186325 () Bool)

(assert (=> b!1293980 m!1186325))

(declare-fun m!1186327 () Bool)

(assert (=> start!109374 m!1186327))

(declare-fun m!1186329 () Bool)

(assert (=> start!109374 m!1186329))

(declare-fun m!1186331 () Bool)

(assert (=> start!109374 m!1186331))

(declare-fun m!1186333 () Bool)

(assert (=> b!1293983 m!1186333))

(declare-fun m!1186335 () Bool)

(assert (=> b!1293985 m!1186335))

(declare-fun m!1186337 () Bool)

(assert (=> b!1293985 m!1186337))

(declare-fun m!1186339 () Bool)

(assert (=> b!1293984 m!1186339))

(assert (=> b!1293984 m!1186339))

(declare-fun m!1186341 () Bool)

(assert (=> b!1293984 m!1186341))

(declare-fun m!1186343 () Bool)

(assert (=> b!1293979 m!1186343))

(assert (=> b!1293979 m!1186343))

(declare-fun m!1186345 () Bool)

(assert (=> b!1293979 m!1186345))

(declare-fun m!1186347 () Bool)

(assert (=> mapNonEmpty!53261 m!1186347))

(check-sat (not start!109374) (not b!1293984) (not b_next!28827) b_and!46927 (not b!1293980) tp_is_empty!34467 (not b!1293983) (not b!1293979) (not mapNonEmpty!53261) (not b!1293985))
(check-sat b_and!46927 (not b_next!28827))
