; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109344 () Bool)

(assert start!109344)

(declare-fun b_free!28797 () Bool)

(declare-fun b_next!28797 () Bool)

(assert (=> start!109344 (= b_free!28797 (not b_next!28797))))

(declare-fun tp!101510 () Bool)

(declare-fun b_and!46897 () Bool)

(assert (=> start!109344 (= tp!101510 b_and!46897)))

(declare-fun b!1293450 () Bool)

(declare-fun res!859605 () Bool)

(declare-fun e!738207 () Bool)

(assert (=> b!1293450 (=> (not res!859605) (not e!738207))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51019 0))(
  ( (V!51020 (val!17293 Int)) )
))
(declare-datatypes ((ValueCell!16320 0))(
  ( (ValueCellFull!16320 (v!19894 V!51019)) (EmptyCell!16320) )
))
(declare-datatypes ((array!85861 0))(
  ( (array!85862 (arr!41427 (Array (_ BitVec 32) ValueCell!16320)) (size!41978 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85861)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85863 0))(
  ( (array!85864 (arr!41428 (Array (_ BitVec 32) (_ BitVec 64))) (size!41979 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85863)

(assert (=> b!1293450 (= res!859605 (and (= (size!41978 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41979 _keys!1741) (size!41978 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293451 () Bool)

(declare-fun res!859608 () Bool)

(assert (=> b!1293451 (=> (not res!859608) (not e!738207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85863 (_ BitVec 32)) Bool)

(assert (=> b!1293451 (= res!859608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293452 () Bool)

(declare-fun e!738205 () Bool)

(declare-fun e!738203 () Bool)

(declare-fun mapRes!53216 () Bool)

(assert (=> b!1293452 (= e!738205 (and e!738203 mapRes!53216))))

(declare-fun condMapEmpty!53216 () Bool)

(declare-fun mapDefault!53216 () ValueCell!16320)

(assert (=> b!1293452 (= condMapEmpty!53216 (= (arr!41427 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16320)) mapDefault!53216)))))

(declare-fun b!1293453 () Bool)

(declare-fun res!859604 () Bool)

(assert (=> b!1293453 (=> (not res!859604) (not e!738207))))

(declare-datatypes ((List!29578 0))(
  ( (Nil!29575) (Cons!29574 (h!30783 (_ BitVec 64)) (t!43149 List!29578)) )
))
(declare-fun arrayNoDuplicates!0 (array!85863 (_ BitVec 32) List!29578) Bool)

(assert (=> b!1293453 (= res!859604 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29575))))

(declare-fun b!1293454 () Bool)

(declare-fun tp_is_empty!34437 () Bool)

(assert (=> b!1293454 (= e!738203 tp_is_empty!34437)))

(declare-fun b!1293455 () Bool)

(declare-fun res!859603 () Bool)

(assert (=> b!1293455 (=> (not res!859603) (not e!738207))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1293455 (= res!859603 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41979 _keys!1741))))))

(declare-fun b!1293456 () Bool)

(declare-fun res!859607 () Bool)

(assert (=> b!1293456 (=> (not res!859607) (not e!738207))))

(assert (=> b!1293456 (= res!859607 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41979 _keys!1741))))))

(declare-fun b!1293457 () Bool)

(declare-fun e!738208 () Bool)

(assert (=> b!1293457 (= e!738208 true)))

(declare-datatypes ((tuple2!22396 0))(
  ( (tuple2!22397 (_1!11208 (_ BitVec 64)) (_2!11208 V!51019)) )
))
(declare-datatypes ((List!29579 0))(
  ( (Nil!29576) (Cons!29575 (h!30784 tuple2!22396) (t!43150 List!29579)) )
))
(declare-datatypes ((ListLongMap!20065 0))(
  ( (ListLongMap!20066 (toList!10048 List!29579)) )
))
(declare-fun lt!579512 () ListLongMap!20065)

(declare-fun zeroValue!1387 () V!51019)

(declare-fun contains!8104 (ListLongMap!20065 (_ BitVec 64)) Bool)

(declare-fun +!4379 (ListLongMap!20065 tuple2!22396) ListLongMap!20065)

(assert (=> b!1293457 (not (contains!8104 (+!4379 lt!579512 (tuple2!22397 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42773 0))(
  ( (Unit!42774) )
))
(declare-fun lt!579513 () Unit!42773)

(declare-fun addStillNotContains!424 (ListLongMap!20065 (_ BitVec 64) V!51019 (_ BitVec 64)) Unit!42773)

(assert (=> b!1293457 (= lt!579513 (addStillNotContains!424 lt!579512 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!51019)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6092 (array!85863 array!85861 (_ BitVec 32) (_ BitVec 32) V!51019 V!51019 (_ BitVec 32) Int) ListLongMap!20065)

(assert (=> b!1293457 (= lt!579512 (getCurrentListMapNoExtraKeys!6092 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293458 () Bool)

(declare-fun res!859606 () Bool)

(assert (=> b!1293458 (=> (not res!859606) (not e!738207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293458 (= res!859606 (not (validKeyInArray!0 (select (arr!41428 _keys!1741) from!2144))))))

(declare-fun res!859600 () Bool)

(assert (=> start!109344 (=> (not res!859600) (not e!738207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109344 (= res!859600 (validMask!0 mask!2175))))

(assert (=> start!109344 e!738207))

(assert (=> start!109344 tp_is_empty!34437))

(assert (=> start!109344 true))

(declare-fun array_inv!31359 (array!85861) Bool)

(assert (=> start!109344 (and (array_inv!31359 _values!1445) e!738205)))

(declare-fun array_inv!31360 (array!85863) Bool)

(assert (=> start!109344 (array_inv!31360 _keys!1741)))

(assert (=> start!109344 tp!101510))

(declare-fun b!1293459 () Bool)

(declare-fun res!859602 () Bool)

(assert (=> b!1293459 (=> (not res!859602) (not e!738207))))

(declare-fun getCurrentListMap!5034 (array!85863 array!85861 (_ BitVec 32) (_ BitVec 32) V!51019 V!51019 (_ BitVec 32) Int) ListLongMap!20065)

(assert (=> b!1293459 (= res!859602 (contains!8104 (getCurrentListMap!5034 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293460 () Bool)

(assert (=> b!1293460 (= e!738207 (not e!738208))))

(declare-fun res!859601 () Bool)

(assert (=> b!1293460 (=> res!859601 e!738208)))

(assert (=> b!1293460 (= res!859601 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293460 (not (contains!8104 (ListLongMap!20066 Nil!29576) k0!1205))))

(declare-fun lt!579514 () Unit!42773)

(declare-fun emptyContainsNothing!143 ((_ BitVec 64)) Unit!42773)

(assert (=> b!1293460 (= lt!579514 (emptyContainsNothing!143 k0!1205))))

(declare-fun mapIsEmpty!53216 () Bool)

(assert (=> mapIsEmpty!53216 mapRes!53216))

(declare-fun mapNonEmpty!53216 () Bool)

(declare-fun tp!101511 () Bool)

(declare-fun e!738206 () Bool)

(assert (=> mapNonEmpty!53216 (= mapRes!53216 (and tp!101511 e!738206))))

(declare-fun mapKey!53216 () (_ BitVec 32))

(declare-fun mapRest!53216 () (Array (_ BitVec 32) ValueCell!16320))

(declare-fun mapValue!53216 () ValueCell!16320)

(assert (=> mapNonEmpty!53216 (= (arr!41427 _values!1445) (store mapRest!53216 mapKey!53216 mapValue!53216))))

(declare-fun b!1293461 () Bool)

(assert (=> b!1293461 (= e!738206 tp_is_empty!34437)))

(assert (= (and start!109344 res!859600) b!1293450))

(assert (= (and b!1293450 res!859605) b!1293451))

(assert (= (and b!1293451 res!859608) b!1293453))

(assert (= (and b!1293453 res!859604) b!1293456))

(assert (= (and b!1293456 res!859607) b!1293459))

(assert (= (and b!1293459 res!859602) b!1293455))

(assert (= (and b!1293455 res!859603) b!1293458))

(assert (= (and b!1293458 res!859606) b!1293460))

(assert (= (and b!1293460 (not res!859601)) b!1293457))

(assert (= (and b!1293452 condMapEmpty!53216) mapIsEmpty!53216))

(assert (= (and b!1293452 (not condMapEmpty!53216)) mapNonEmpty!53216))

(get-info :version)

(assert (= (and mapNonEmpty!53216 ((_ is ValueCellFull!16320) mapValue!53216)) b!1293461))

(assert (= (and b!1293452 ((_ is ValueCellFull!16320) mapDefault!53216)) b!1293454))

(assert (= start!109344 b!1293452))

(declare-fun m!1185877 () Bool)

(assert (=> b!1293453 m!1185877))

(declare-fun m!1185879 () Bool)

(assert (=> b!1293451 m!1185879))

(declare-fun m!1185881 () Bool)

(assert (=> b!1293458 m!1185881))

(assert (=> b!1293458 m!1185881))

(declare-fun m!1185883 () Bool)

(assert (=> b!1293458 m!1185883))

(declare-fun m!1185885 () Bool)

(assert (=> b!1293459 m!1185885))

(assert (=> b!1293459 m!1185885))

(declare-fun m!1185887 () Bool)

(assert (=> b!1293459 m!1185887))

(declare-fun m!1185889 () Bool)

(assert (=> b!1293460 m!1185889))

(declare-fun m!1185891 () Bool)

(assert (=> b!1293460 m!1185891))

(declare-fun m!1185893 () Bool)

(assert (=> mapNonEmpty!53216 m!1185893))

(declare-fun m!1185895 () Bool)

(assert (=> start!109344 m!1185895))

(declare-fun m!1185897 () Bool)

(assert (=> start!109344 m!1185897))

(declare-fun m!1185899 () Bool)

(assert (=> start!109344 m!1185899))

(declare-fun m!1185901 () Bool)

(assert (=> b!1293457 m!1185901))

(assert (=> b!1293457 m!1185901))

(declare-fun m!1185903 () Bool)

(assert (=> b!1293457 m!1185903))

(declare-fun m!1185905 () Bool)

(assert (=> b!1293457 m!1185905))

(declare-fun m!1185907 () Bool)

(assert (=> b!1293457 m!1185907))

(check-sat (not b!1293458) (not b!1293453) (not b!1293459) b_and!46897 (not b!1293451) (not b!1293460) (not b!1293457) (not start!109344) tp_is_empty!34437 (not b_next!28797) (not mapNonEmpty!53216))
(check-sat b_and!46897 (not b_next!28797))
