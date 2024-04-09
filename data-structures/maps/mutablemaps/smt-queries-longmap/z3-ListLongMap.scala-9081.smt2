; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109308 () Bool)

(assert start!109308)

(declare-fun b_free!28761 () Bool)

(declare-fun b_next!28761 () Bool)

(assert (=> start!109308 (= b_free!28761 (not b_next!28761))))

(declare-fun tp!101402 () Bool)

(declare-fun b_and!46861 () Bool)

(assert (=> start!109308 (= tp!101402 b_and!46861)))

(declare-fun b!1292802 () Bool)

(declare-fun res!859120 () Bool)

(declare-fun e!737883 () Bool)

(assert (=> b!1292802 (=> (not res!859120) (not e!737883))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85791 0))(
  ( (array!85792 (arr!41392 (Array (_ BitVec 32) (_ BitVec 64))) (size!41943 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85791)

(assert (=> b!1292802 (= res!859120 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41943 _keys!1741))))))

(declare-fun b!1292803 () Bool)

(declare-fun res!859116 () Bool)

(assert (=> b!1292803 (=> (not res!859116) (not e!737883))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50971 0))(
  ( (V!50972 (val!17275 Int)) )
))
(declare-datatypes ((ValueCell!16302 0))(
  ( (ValueCellFull!16302 (v!19876 V!50971)) (EmptyCell!16302) )
))
(declare-datatypes ((array!85793 0))(
  ( (array!85794 (arr!41393 (Array (_ BitVec 32) ValueCell!16302)) (size!41944 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85793)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292803 (= res!859116 (and (= (size!41944 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41943 _keys!1741) (size!41944 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292804 () Bool)

(declare-fun res!859117 () Bool)

(assert (=> b!1292804 (=> (not res!859117) (not e!737883))))

(declare-datatypes ((List!29549 0))(
  ( (Nil!29546) (Cons!29545 (h!30754 (_ BitVec 64)) (t!43120 List!29549)) )
))
(declare-fun arrayNoDuplicates!0 (array!85791 (_ BitVec 32) List!29549) Bool)

(assert (=> b!1292804 (= res!859117 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29546))))

(declare-fun b!1292805 () Bool)

(declare-fun res!859114 () Bool)

(assert (=> b!1292805 (=> (not res!859114) (not e!737883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85791 (_ BitVec 32)) Bool)

(assert (=> b!1292805 (= res!859114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292806 () Bool)

(declare-fun e!737882 () Bool)

(assert (=> b!1292806 (= e!737882 true)))

(declare-datatypes ((tuple2!22364 0))(
  ( (tuple2!22365 (_1!11192 (_ BitVec 64)) (_2!11192 V!50971)) )
))
(declare-datatypes ((List!29550 0))(
  ( (Nil!29547) (Cons!29546 (h!30755 tuple2!22364) (t!43121 List!29550)) )
))
(declare-datatypes ((ListLongMap!20033 0))(
  ( (ListLongMap!20034 (toList!10032 List!29550)) )
))
(declare-fun lt!579350 () ListLongMap!20033)

(declare-fun zeroValue!1387 () V!50971)

(declare-fun contains!8088 (ListLongMap!20033 (_ BitVec 64)) Bool)

(declare-fun +!4366 (ListLongMap!20033 tuple2!22364) ListLongMap!20033)

(assert (=> b!1292806 (not (contains!8088 (+!4366 lt!579350 (tuple2!22365 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42743 0))(
  ( (Unit!42744) )
))
(declare-fun lt!579351 () Unit!42743)

(declare-fun addStillNotContains!411 (ListLongMap!20033 (_ BitVec 64) V!50971 (_ BitVec 64)) Unit!42743)

(assert (=> b!1292806 (= lt!579351 (addStillNotContains!411 lt!579350 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50971)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6079 (array!85791 array!85793 (_ BitVec 32) (_ BitVec 32) V!50971 V!50971 (_ BitVec 32) Int) ListLongMap!20033)

(assert (=> b!1292806 (= lt!579350 (getCurrentListMapNoExtraKeys!6079 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1292807 () Bool)

(declare-fun e!737880 () Bool)

(declare-fun tp_is_empty!34401 () Bool)

(assert (=> b!1292807 (= e!737880 tp_is_empty!34401)))

(declare-fun b!1292808 () Bool)

(declare-fun res!859118 () Bool)

(assert (=> b!1292808 (=> (not res!859118) (not e!737883))))

(assert (=> b!1292808 (= res!859118 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41943 _keys!1741))))))

(declare-fun b!1292809 () Bool)

(declare-fun e!737879 () Bool)

(declare-fun e!737884 () Bool)

(declare-fun mapRes!53162 () Bool)

(assert (=> b!1292809 (= e!737879 (and e!737884 mapRes!53162))))

(declare-fun condMapEmpty!53162 () Bool)

(declare-fun mapDefault!53162 () ValueCell!16302)

(assert (=> b!1292809 (= condMapEmpty!53162 (= (arr!41393 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16302)) mapDefault!53162)))))

(declare-fun mapNonEmpty!53162 () Bool)

(declare-fun tp!101403 () Bool)

(assert (=> mapNonEmpty!53162 (= mapRes!53162 (and tp!101403 e!737880))))

(declare-fun mapRest!53162 () (Array (_ BitVec 32) ValueCell!16302))

(declare-fun mapKey!53162 () (_ BitVec 32))

(declare-fun mapValue!53162 () ValueCell!16302)

(assert (=> mapNonEmpty!53162 (= (arr!41393 _values!1445) (store mapRest!53162 mapKey!53162 mapValue!53162))))

(declare-fun b!1292811 () Bool)

(declare-fun res!859122 () Bool)

(assert (=> b!1292811 (=> (not res!859122) (not e!737883))))

(declare-fun getCurrentListMap!5021 (array!85791 array!85793 (_ BitVec 32) (_ BitVec 32) V!50971 V!50971 (_ BitVec 32) Int) ListLongMap!20033)

(assert (=> b!1292811 (= res!859122 (contains!8088 (getCurrentListMap!5021 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292812 () Bool)

(assert (=> b!1292812 (= e!737883 (not e!737882))))

(declare-fun res!859119 () Bool)

(assert (=> b!1292812 (=> res!859119 e!737882)))

(assert (=> b!1292812 (= res!859119 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1292812 (not (contains!8088 (ListLongMap!20034 Nil!29547) k0!1205))))

(declare-fun lt!579352 () Unit!42743)

(declare-fun emptyContainsNothing!128 ((_ BitVec 64)) Unit!42743)

(assert (=> b!1292812 (= lt!579352 (emptyContainsNothing!128 k0!1205))))

(declare-fun mapIsEmpty!53162 () Bool)

(assert (=> mapIsEmpty!53162 mapRes!53162))

(declare-fun b!1292813 () Bool)

(declare-fun res!859121 () Bool)

(assert (=> b!1292813 (=> (not res!859121) (not e!737883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292813 (= res!859121 (not (validKeyInArray!0 (select (arr!41392 _keys!1741) from!2144))))))

(declare-fun b!1292810 () Bool)

(assert (=> b!1292810 (= e!737884 tp_is_empty!34401)))

(declare-fun res!859115 () Bool)

(assert (=> start!109308 (=> (not res!859115) (not e!737883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109308 (= res!859115 (validMask!0 mask!2175))))

(assert (=> start!109308 e!737883))

(assert (=> start!109308 tp_is_empty!34401))

(assert (=> start!109308 true))

(declare-fun array_inv!31335 (array!85793) Bool)

(assert (=> start!109308 (and (array_inv!31335 _values!1445) e!737879)))

(declare-fun array_inv!31336 (array!85791) Bool)

(assert (=> start!109308 (array_inv!31336 _keys!1741)))

(assert (=> start!109308 tp!101402))

(assert (= (and start!109308 res!859115) b!1292803))

(assert (= (and b!1292803 res!859116) b!1292805))

(assert (= (and b!1292805 res!859114) b!1292804))

(assert (= (and b!1292804 res!859117) b!1292808))

(assert (= (and b!1292808 res!859118) b!1292811))

(assert (= (and b!1292811 res!859122) b!1292802))

(assert (= (and b!1292802 res!859120) b!1292813))

(assert (= (and b!1292813 res!859121) b!1292812))

(assert (= (and b!1292812 (not res!859119)) b!1292806))

(assert (= (and b!1292809 condMapEmpty!53162) mapIsEmpty!53162))

(assert (= (and b!1292809 (not condMapEmpty!53162)) mapNonEmpty!53162))

(get-info :version)

(assert (= (and mapNonEmpty!53162 ((_ is ValueCellFull!16302) mapValue!53162)) b!1292807))

(assert (= (and b!1292809 ((_ is ValueCellFull!16302) mapDefault!53162)) b!1292810))

(assert (= start!109308 b!1292809))

(declare-fun m!1185301 () Bool)

(assert (=> b!1292813 m!1185301))

(assert (=> b!1292813 m!1185301))

(declare-fun m!1185303 () Bool)

(assert (=> b!1292813 m!1185303))

(declare-fun m!1185305 () Bool)

(assert (=> mapNonEmpty!53162 m!1185305))

(declare-fun m!1185307 () Bool)

(assert (=> b!1292812 m!1185307))

(declare-fun m!1185309 () Bool)

(assert (=> b!1292812 m!1185309))

(declare-fun m!1185311 () Bool)

(assert (=> b!1292805 m!1185311))

(declare-fun m!1185313 () Bool)

(assert (=> start!109308 m!1185313))

(declare-fun m!1185315 () Bool)

(assert (=> start!109308 m!1185315))

(declare-fun m!1185317 () Bool)

(assert (=> start!109308 m!1185317))

(declare-fun m!1185319 () Bool)

(assert (=> b!1292806 m!1185319))

(assert (=> b!1292806 m!1185319))

(declare-fun m!1185321 () Bool)

(assert (=> b!1292806 m!1185321))

(declare-fun m!1185323 () Bool)

(assert (=> b!1292806 m!1185323))

(declare-fun m!1185325 () Bool)

(assert (=> b!1292806 m!1185325))

(declare-fun m!1185327 () Bool)

(assert (=> b!1292804 m!1185327))

(declare-fun m!1185329 () Bool)

(assert (=> b!1292811 m!1185329))

(assert (=> b!1292811 m!1185329))

(declare-fun m!1185331 () Bool)

(assert (=> b!1292811 m!1185331))

(check-sat (not b!1292806) tp_is_empty!34401 (not b!1292804) (not b!1292813) b_and!46861 (not b!1292812) (not b!1292805) (not start!109308) (not mapNonEmpty!53162) (not b!1292811) (not b_next!28761))
(check-sat b_and!46861 (not b_next!28761))
