; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109452 () Bool)

(assert start!109452)

(declare-fun b_free!28905 () Bool)

(declare-fun b_next!28905 () Bool)

(assert (=> start!109452 (= b_free!28905 (not b_next!28905))))

(declare-fun tp!101835 () Bool)

(declare-fun b_and!47005 () Bool)

(assert (=> start!109452 (= tp!101835 b_and!47005)))

(declare-fun b!1295313 () Bool)

(declare-fun res!860985 () Bool)

(declare-fun e!739098 () Bool)

(assert (=> b!1295313 (=> (not res!860985) (not e!739098))))

(declare-datatypes ((array!86073 0))(
  ( (array!86074 (arr!41533 (Array (_ BitVec 32) (_ BitVec 64))) (size!42084 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86073)

(declare-datatypes ((List!29655 0))(
  ( (Nil!29652) (Cons!29651 (h!30860 (_ BitVec 64)) (t!43226 List!29655)) )
))
(declare-fun arrayNoDuplicates!0 (array!86073 (_ BitVec 32) List!29655) Bool)

(assert (=> b!1295313 (= res!860985 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29652))))

(declare-fun mapNonEmpty!53378 () Bool)

(declare-fun mapRes!53378 () Bool)

(declare-fun tp!101834 () Bool)

(declare-fun e!739099 () Bool)

(assert (=> mapNonEmpty!53378 (= mapRes!53378 (and tp!101834 e!739099))))

(declare-datatypes ((V!51163 0))(
  ( (V!51164 (val!17347 Int)) )
))
(declare-datatypes ((ValueCell!16374 0))(
  ( (ValueCellFull!16374 (v!19948 V!51163)) (EmptyCell!16374) )
))
(declare-fun mapValue!53378 () ValueCell!16374)

(declare-fun mapKey!53378 () (_ BitVec 32))

(declare-fun mapRest!53378 () (Array (_ BitVec 32) ValueCell!16374))

(declare-datatypes ((array!86075 0))(
  ( (array!86076 (arr!41534 (Array (_ BitVec 32) ValueCell!16374)) (size!42085 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86075)

(assert (=> mapNonEmpty!53378 (= (arr!41534 _values!1445) (store mapRest!53378 mapKey!53378 mapValue!53378))))

(declare-fun b!1295314 () Bool)

(declare-fun res!860981 () Bool)

(assert (=> b!1295314 (=> (not res!860981) (not e!739098))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295314 (= res!860981 (and (= (size!42085 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42084 _keys!1741) (size!42085 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53378 () Bool)

(assert (=> mapIsEmpty!53378 mapRes!53378))

(declare-fun b!1295316 () Bool)

(declare-fun e!739094 () Bool)

(assert (=> b!1295316 (= e!739094 true)))

(declare-datatypes ((tuple2!22488 0))(
  ( (tuple2!22489 (_1!11254 (_ BitVec 64)) (_2!11254 V!51163)) )
))
(declare-datatypes ((List!29656 0))(
  ( (Nil!29653) (Cons!29652 (h!30861 tuple2!22488) (t!43227 List!29656)) )
))
(declare-datatypes ((ListLongMap!20157 0))(
  ( (ListLongMap!20158 (toList!10094 List!29656)) )
))
(declare-fun lt!579829 () ListLongMap!20157)

(declare-fun minValue!1387 () V!51163)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8150 (ListLongMap!20157 (_ BitVec 64)) Bool)

(declare-fun +!4397 (ListLongMap!20157 tuple2!22488) ListLongMap!20157)

(assert (=> b!1295316 (not (contains!8150 (+!4397 lt!579829 (tuple2!22489 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42855 0))(
  ( (Unit!42856) )
))
(declare-fun lt!579828 () Unit!42855)

(declare-fun addStillNotContains!442 (ListLongMap!20157 (_ BitVec 64) V!51163 (_ BitVec 64)) Unit!42855)

(assert (=> b!1295316 (= lt!579828 (addStillNotContains!442 lt!579829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!51163)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6113 (array!86073 array!86075 (_ BitVec 32) (_ BitVec 32) V!51163 V!51163 (_ BitVec 32) Int) ListLongMap!20157)

(assert (=> b!1295316 (= lt!579829 (getCurrentListMapNoExtraKeys!6113 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295317 () Bool)

(declare-fun e!739097 () Bool)

(declare-fun tp_is_empty!34545 () Bool)

(assert (=> b!1295317 (= e!739097 tp_is_empty!34545)))

(declare-fun b!1295318 () Bool)

(declare-fun res!860980 () Bool)

(assert (=> b!1295318 (=> (not res!860980) (not e!739098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86073 (_ BitVec 32)) Bool)

(assert (=> b!1295318 (= res!860980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295319 () Bool)

(declare-fun res!860978 () Bool)

(assert (=> b!1295319 (=> (not res!860978) (not e!739098))))

(assert (=> b!1295319 (= res!860978 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42084 _keys!1741))))))

(declare-fun b!1295320 () Bool)

(assert (=> b!1295320 (= e!739099 tp_is_empty!34545)))

(declare-fun b!1295321 () Bool)

(assert (=> b!1295321 (= e!739098 (not e!739094))))

(declare-fun res!860984 () Bool)

(assert (=> b!1295321 (=> res!860984 e!739094)))

(assert (=> b!1295321 (= res!860984 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295321 (not (contains!8150 (ListLongMap!20158 Nil!29653) k0!1205))))

(declare-fun lt!579827 () Unit!42855)

(declare-fun emptyContainsNothing!183 ((_ BitVec 64)) Unit!42855)

(assert (=> b!1295321 (= lt!579827 (emptyContainsNothing!183 k0!1205))))

(declare-fun b!1295322 () Bool)

(declare-fun e!739095 () Bool)

(assert (=> b!1295322 (= e!739095 (and e!739097 mapRes!53378))))

(declare-fun condMapEmpty!53378 () Bool)

(declare-fun mapDefault!53378 () ValueCell!16374)

(assert (=> b!1295322 (= condMapEmpty!53378 (= (arr!41534 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16374)) mapDefault!53378)))))

(declare-fun b!1295323 () Bool)

(declare-fun res!860977 () Bool)

(assert (=> b!1295323 (=> (not res!860977) (not e!739098))))

(declare-fun getCurrentListMap!5074 (array!86073 array!86075 (_ BitVec 32) (_ BitVec 32) V!51163 V!51163 (_ BitVec 32) Int) ListLongMap!20157)

(assert (=> b!1295323 (= res!860977 (contains!8150 (getCurrentListMap!5074 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1295324 () Bool)

(declare-fun res!860982 () Bool)

(assert (=> b!1295324 (=> (not res!860982) (not e!739098))))

(assert (=> b!1295324 (= res!860982 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42084 _keys!1741))))))

(declare-fun b!1295315 () Bool)

(declare-fun res!860983 () Bool)

(assert (=> b!1295315 (=> (not res!860983) (not e!739098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295315 (= res!860983 (not (validKeyInArray!0 (select (arr!41533 _keys!1741) from!2144))))))

(declare-fun res!860979 () Bool)

(assert (=> start!109452 (=> (not res!860979) (not e!739098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109452 (= res!860979 (validMask!0 mask!2175))))

(assert (=> start!109452 e!739098))

(assert (=> start!109452 tp_is_empty!34545))

(assert (=> start!109452 true))

(declare-fun array_inv!31431 (array!86075) Bool)

(assert (=> start!109452 (and (array_inv!31431 _values!1445) e!739095)))

(declare-fun array_inv!31432 (array!86073) Bool)

(assert (=> start!109452 (array_inv!31432 _keys!1741)))

(assert (=> start!109452 tp!101835))

(assert (= (and start!109452 res!860979) b!1295314))

(assert (= (and b!1295314 res!860981) b!1295318))

(assert (= (and b!1295318 res!860980) b!1295313))

(assert (= (and b!1295313 res!860985) b!1295324))

(assert (= (and b!1295324 res!860982) b!1295323))

(assert (= (and b!1295323 res!860977) b!1295319))

(assert (= (and b!1295319 res!860978) b!1295315))

(assert (= (and b!1295315 res!860983) b!1295321))

(assert (= (and b!1295321 (not res!860984)) b!1295316))

(assert (= (and b!1295322 condMapEmpty!53378) mapIsEmpty!53378))

(assert (= (and b!1295322 (not condMapEmpty!53378)) mapNonEmpty!53378))

(get-info :version)

(assert (= (and mapNonEmpty!53378 ((_ is ValueCellFull!16374) mapValue!53378)) b!1295320))

(assert (= (and b!1295322 ((_ is ValueCellFull!16374) mapDefault!53378)) b!1295317))

(assert (= start!109452 b!1295322))

(declare-fun m!1187377 () Bool)

(assert (=> b!1295318 m!1187377))

(declare-fun m!1187379 () Bool)

(assert (=> b!1295313 m!1187379))

(declare-fun m!1187381 () Bool)

(assert (=> start!109452 m!1187381))

(declare-fun m!1187383 () Bool)

(assert (=> start!109452 m!1187383))

(declare-fun m!1187385 () Bool)

(assert (=> start!109452 m!1187385))

(declare-fun m!1187387 () Bool)

(assert (=> b!1295315 m!1187387))

(assert (=> b!1295315 m!1187387))

(declare-fun m!1187389 () Bool)

(assert (=> b!1295315 m!1187389))

(declare-fun m!1187391 () Bool)

(assert (=> mapNonEmpty!53378 m!1187391))

(declare-fun m!1187393 () Bool)

(assert (=> b!1295316 m!1187393))

(assert (=> b!1295316 m!1187393))

(declare-fun m!1187395 () Bool)

(assert (=> b!1295316 m!1187395))

(declare-fun m!1187397 () Bool)

(assert (=> b!1295316 m!1187397))

(declare-fun m!1187399 () Bool)

(assert (=> b!1295316 m!1187399))

(declare-fun m!1187401 () Bool)

(assert (=> b!1295321 m!1187401))

(declare-fun m!1187403 () Bool)

(assert (=> b!1295321 m!1187403))

(declare-fun m!1187405 () Bool)

(assert (=> b!1295323 m!1187405))

(assert (=> b!1295323 m!1187405))

(declare-fun m!1187407 () Bool)

(assert (=> b!1295323 m!1187407))

(check-sat (not b!1295316) (not b!1295321) tp_is_empty!34545 b_and!47005 (not b_next!28905) (not start!109452) (not b!1295318) (not b!1295313) (not b!1295315) (not mapNonEmpty!53378) (not b!1295323))
(check-sat b_and!47005 (not b_next!28905))
