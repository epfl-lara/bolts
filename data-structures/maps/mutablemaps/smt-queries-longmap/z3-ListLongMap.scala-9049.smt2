; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109116 () Bool)

(assert start!109116)

(declare-fun b_free!28569 () Bool)

(declare-fun b_next!28569 () Bool)

(assert (=> start!109116 (= b_free!28569 (not b_next!28569))))

(declare-fun tp!100826 () Bool)

(declare-fun b_and!46669 () Bool)

(assert (=> start!109116 (= tp!100826 b_and!46669)))

(declare-fun b!1289427 () Bool)

(declare-fun res!856611 () Bool)

(declare-fun e!736232 () Bool)

(assert (=> b!1289427 (=> (not res!856611) (not e!736232))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85417 0))(
  ( (array!85418 (arr!41205 (Array (_ BitVec 32) (_ BitVec 64))) (size!41756 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85417)

(assert (=> b!1289427 (= res!856611 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41756 _keys!1741))))))

(declare-fun b!1289429 () Bool)

(declare-fun res!856606 () Bool)

(assert (=> b!1289429 (=> (not res!856606) (not e!736232))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1289429 (= res!856606 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41756 _keys!1741))))))

(declare-fun b!1289430 () Bool)

(declare-fun e!736233 () Bool)

(declare-fun tp_is_empty!34209 () Bool)

(assert (=> b!1289430 (= e!736233 tp_is_empty!34209)))

(declare-fun b!1289431 () Bool)

(declare-fun e!736235 () Bool)

(assert (=> b!1289431 (= e!736232 (not e!736235))))

(declare-fun res!856607 () Bool)

(assert (=> b!1289431 (=> res!856607 e!736235)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1289431 (= res!856607 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!50715 0))(
  ( (V!50716 (val!17179 Int)) )
))
(declare-datatypes ((tuple2!22198 0))(
  ( (tuple2!22199 (_1!11109 (_ BitVec 64)) (_2!11109 V!50715)) )
))
(declare-datatypes ((List!29398 0))(
  ( (Nil!29395) (Cons!29394 (h!30603 tuple2!22198) (t!42969 List!29398)) )
))
(declare-datatypes ((ListLongMap!19867 0))(
  ( (ListLongMap!19868 (toList!9949 List!29398)) )
))
(declare-fun contains!8005 (ListLongMap!19867 (_ BitVec 64)) Bool)

(assert (=> b!1289431 (not (contains!8005 (ListLongMap!19868 Nil!29395) k0!1205))))

(declare-datatypes ((Unit!42593 0))(
  ( (Unit!42594) )
))
(declare-fun lt!578221 () Unit!42593)

(declare-fun emptyContainsNothing!61 ((_ BitVec 64)) Unit!42593)

(assert (=> b!1289431 (= lt!578221 (emptyContainsNothing!61 k0!1205))))

(declare-fun mapIsEmpty!52874 () Bool)

(declare-fun mapRes!52874 () Bool)

(assert (=> mapIsEmpty!52874 mapRes!52874))

(declare-fun b!1289432 () Bool)

(declare-fun e!736237 () Bool)

(assert (=> b!1289432 (= e!736237 (and e!736233 mapRes!52874))))

(declare-fun condMapEmpty!52874 () Bool)

(declare-datatypes ((ValueCell!16206 0))(
  ( (ValueCellFull!16206 (v!19780 V!50715)) (EmptyCell!16206) )
))
(declare-datatypes ((array!85419 0))(
  ( (array!85420 (arr!41206 (Array (_ BitVec 32) ValueCell!16206)) (size!41757 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85419)

(declare-fun mapDefault!52874 () ValueCell!16206)

(assert (=> b!1289432 (= condMapEmpty!52874 (= (arr!41206 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16206)) mapDefault!52874)))))

(declare-fun b!1289433 () Bool)

(declare-fun res!856605 () Bool)

(assert (=> b!1289433 (=> (not res!856605) (not e!736232))))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1289433 (= res!856605 (and (= (size!41757 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41756 _keys!1741) (size!41757 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52874 () Bool)

(declare-fun tp!100827 () Bool)

(declare-fun e!736234 () Bool)

(assert (=> mapNonEmpty!52874 (= mapRes!52874 (and tp!100827 e!736234))))

(declare-fun mapValue!52874 () ValueCell!16206)

(declare-fun mapKey!52874 () (_ BitVec 32))

(declare-fun mapRest!52874 () (Array (_ BitVec 32) ValueCell!16206))

(assert (=> mapNonEmpty!52874 (= (arr!41206 _values!1445) (store mapRest!52874 mapKey!52874 mapValue!52874))))

(declare-fun b!1289434 () Bool)

(assert (=> b!1289434 (= e!736235 true)))

(declare-fun lt!578224 () ListLongMap!19867)

(declare-fun minValue!1387 () V!50715)

(declare-fun +!4321 (ListLongMap!19867 tuple2!22198) ListLongMap!19867)

(assert (=> b!1289434 (not (contains!8005 (+!4321 lt!578224 (tuple2!22199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578223 () Unit!42593)

(declare-fun addStillNotContains!366 (ListLongMap!19867 (_ BitVec 64) V!50715 (_ BitVec 64)) Unit!42593)

(assert (=> b!1289434 (= lt!578223 (addStillNotContains!366 lt!578224 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!50715)

(assert (=> b!1289434 (not (contains!8005 (+!4321 lt!578224 (tuple2!22199 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578222 () Unit!42593)

(assert (=> b!1289434 (= lt!578222 (addStillNotContains!366 lt!578224 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6033 (array!85417 array!85419 (_ BitVec 32) (_ BitVec 32) V!50715 V!50715 (_ BitVec 32) Int) ListLongMap!19867)

(assert (=> b!1289434 (= lt!578224 (getCurrentListMapNoExtraKeys!6033 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun res!856603 () Bool)

(assert (=> start!109116 (=> (not res!856603) (not e!736232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109116 (= res!856603 (validMask!0 mask!2175))))

(assert (=> start!109116 e!736232))

(assert (=> start!109116 tp_is_empty!34209))

(assert (=> start!109116 true))

(declare-fun array_inv!31211 (array!85419) Bool)

(assert (=> start!109116 (and (array_inv!31211 _values!1445) e!736237)))

(declare-fun array_inv!31212 (array!85417) Bool)

(assert (=> start!109116 (array_inv!31212 _keys!1741)))

(assert (=> start!109116 tp!100826))

(declare-fun b!1289428 () Bool)

(declare-fun res!856610 () Bool)

(assert (=> b!1289428 (=> (not res!856610) (not e!736232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85417 (_ BitVec 32)) Bool)

(assert (=> b!1289428 (= res!856610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289435 () Bool)

(declare-fun res!856608 () Bool)

(assert (=> b!1289435 (=> (not res!856608) (not e!736232))))

(declare-fun getCurrentListMap!4952 (array!85417 array!85419 (_ BitVec 32) (_ BitVec 32) V!50715 V!50715 (_ BitVec 32) Int) ListLongMap!19867)

(assert (=> b!1289435 (= res!856608 (contains!8005 (getCurrentListMap!4952 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289436 () Bool)

(declare-fun res!856609 () Bool)

(assert (=> b!1289436 (=> (not res!856609) (not e!736232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289436 (= res!856609 (not (validKeyInArray!0 (select (arr!41205 _keys!1741) from!2144))))))

(declare-fun b!1289437 () Bool)

(assert (=> b!1289437 (= e!736234 tp_is_empty!34209)))

(declare-fun b!1289438 () Bool)

(declare-fun res!856604 () Bool)

(assert (=> b!1289438 (=> (not res!856604) (not e!736232))))

(declare-datatypes ((List!29399 0))(
  ( (Nil!29396) (Cons!29395 (h!30604 (_ BitVec 64)) (t!42970 List!29399)) )
))
(declare-fun arrayNoDuplicates!0 (array!85417 (_ BitVec 32) List!29399) Bool)

(assert (=> b!1289438 (= res!856604 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29396))))

(assert (= (and start!109116 res!856603) b!1289433))

(assert (= (and b!1289433 res!856605) b!1289428))

(assert (= (and b!1289428 res!856610) b!1289438))

(assert (= (and b!1289438 res!856604) b!1289427))

(assert (= (and b!1289427 res!856611) b!1289435))

(assert (= (and b!1289435 res!856608) b!1289429))

(assert (= (and b!1289429 res!856606) b!1289436))

(assert (= (and b!1289436 res!856609) b!1289431))

(assert (= (and b!1289431 (not res!856607)) b!1289434))

(assert (= (and b!1289432 condMapEmpty!52874) mapIsEmpty!52874))

(assert (= (and b!1289432 (not condMapEmpty!52874)) mapNonEmpty!52874))

(get-info :version)

(assert (= (and mapNonEmpty!52874 ((_ is ValueCellFull!16206) mapValue!52874)) b!1289437))

(assert (= (and b!1289432 ((_ is ValueCellFull!16206) mapDefault!52874)) b!1289430))

(assert (= start!109116 b!1289432))

(declare-fun m!1181995 () Bool)

(assert (=> b!1289436 m!1181995))

(assert (=> b!1289436 m!1181995))

(declare-fun m!1181997 () Bool)

(assert (=> b!1289436 m!1181997))

(declare-fun m!1181999 () Bool)

(assert (=> b!1289431 m!1181999))

(declare-fun m!1182001 () Bool)

(assert (=> b!1289431 m!1182001))

(declare-fun m!1182003 () Bool)

(assert (=> b!1289435 m!1182003))

(assert (=> b!1289435 m!1182003))

(declare-fun m!1182005 () Bool)

(assert (=> b!1289435 m!1182005))

(declare-fun m!1182007 () Bool)

(assert (=> b!1289428 m!1182007))

(declare-fun m!1182009 () Bool)

(assert (=> b!1289434 m!1182009))

(declare-fun m!1182011 () Bool)

(assert (=> b!1289434 m!1182011))

(declare-fun m!1182013 () Bool)

(assert (=> b!1289434 m!1182013))

(declare-fun m!1182015 () Bool)

(assert (=> b!1289434 m!1182015))

(assert (=> b!1289434 m!1182013))

(declare-fun m!1182017 () Bool)

(assert (=> b!1289434 m!1182017))

(declare-fun m!1182019 () Bool)

(assert (=> b!1289434 m!1182019))

(declare-fun m!1182021 () Bool)

(assert (=> b!1289434 m!1182021))

(assert (=> b!1289434 m!1182009))

(declare-fun m!1182023 () Bool)

(assert (=> mapNonEmpty!52874 m!1182023))

(declare-fun m!1182025 () Bool)

(assert (=> b!1289438 m!1182025))

(declare-fun m!1182027 () Bool)

(assert (=> start!109116 m!1182027))

(declare-fun m!1182029 () Bool)

(assert (=> start!109116 m!1182029))

(declare-fun m!1182031 () Bool)

(assert (=> start!109116 m!1182031))

(check-sat (not b!1289431) (not b_next!28569) b_and!46669 (not start!109116) (not b!1289434) (not b!1289435) (not b!1289436) tp_is_empty!34209 (not b!1289438) (not mapNonEmpty!52874) (not b!1289428))
(check-sat b_and!46669 (not b_next!28569))
