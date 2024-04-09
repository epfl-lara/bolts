; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109482 () Bool)

(assert start!109482)

(declare-fun b_free!28935 () Bool)

(declare-fun b_next!28935 () Bool)

(assert (=> start!109482 (= b_free!28935 (not b_next!28935))))

(declare-fun tp!101925 () Bool)

(declare-fun b_and!47035 () Bool)

(assert (=> start!109482 (= tp!101925 b_and!47035)))

(declare-fun b!1295853 () Bool)

(declare-fun res!861390 () Bool)

(declare-fun e!739367 () Bool)

(assert (=> b!1295853 (=> (not res!861390) (not e!739367))))

(declare-datatypes ((V!51203 0))(
  ( (V!51204 (val!17362 Int)) )
))
(declare-fun minValue!1387 () V!51203)

(declare-fun zeroValue!1387 () V!51203)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86129 0))(
  ( (array!86130 (arr!41561 (Array (_ BitVec 32) (_ BitVec 64))) (size!42112 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86129)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16389 0))(
  ( (ValueCellFull!16389 (v!19963 V!51203)) (EmptyCell!16389) )
))
(declare-datatypes ((array!86131 0))(
  ( (array!86132 (arr!41562 (Array (_ BitVec 32) ValueCell!16389)) (size!42113 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86131)

(declare-datatypes ((tuple2!22510 0))(
  ( (tuple2!22511 (_1!11265 (_ BitVec 64)) (_2!11265 V!51203)) )
))
(declare-datatypes ((List!29678 0))(
  ( (Nil!29675) (Cons!29674 (h!30883 tuple2!22510) (t!43249 List!29678)) )
))
(declare-datatypes ((ListLongMap!20179 0))(
  ( (ListLongMap!20180 (toList!10105 List!29678)) )
))
(declare-fun contains!8161 (ListLongMap!20179 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5083 (array!86129 array!86131 (_ BitVec 32) (_ BitVec 32) V!51203 V!51203 (_ BitVec 32) Int) ListLongMap!20179)

(assert (=> b!1295853 (= res!861390 (contains!8161 (getCurrentListMap!5083 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1295854 () Bool)

(declare-fun e!739368 () Bool)

(declare-fun tp_is_empty!34575 () Bool)

(assert (=> b!1295854 (= e!739368 tp_is_empty!34575)))

(declare-fun mapNonEmpty!53423 () Bool)

(declare-fun mapRes!53423 () Bool)

(declare-fun tp!101924 () Bool)

(declare-fun e!739364 () Bool)

(assert (=> mapNonEmpty!53423 (= mapRes!53423 (and tp!101924 e!739364))))

(declare-fun mapValue!53423 () ValueCell!16389)

(declare-fun mapRest!53423 () (Array (_ BitVec 32) ValueCell!16389))

(declare-fun mapKey!53423 () (_ BitVec 32))

(assert (=> mapNonEmpty!53423 (= (arr!41562 _values!1445) (store mapRest!53423 mapKey!53423 mapValue!53423))))

(declare-fun b!1295855 () Bool)

(declare-fun res!861384 () Bool)

(assert (=> b!1295855 (=> (not res!861384) (not e!739367))))

(assert (=> b!1295855 (= res!861384 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42112 _keys!1741))))))

(declare-fun b!1295856 () Bool)

(declare-fun e!739369 () Bool)

(assert (=> b!1295856 (= e!739367 (not e!739369))))

(declare-fun res!861389 () Bool)

(assert (=> b!1295856 (=> res!861389 e!739369)))

(assert (=> b!1295856 (= res!861389 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295856 (not (contains!8161 (ListLongMap!20180 Nil!29675) k0!1205))))

(declare-datatypes ((Unit!42873 0))(
  ( (Unit!42874) )
))
(declare-fun lt!579962 () Unit!42873)

(declare-fun emptyContainsNothing!191 ((_ BitVec 64)) Unit!42873)

(assert (=> b!1295856 (= lt!579962 (emptyContainsNothing!191 k0!1205))))

(declare-fun b!1295857 () Bool)

(declare-fun e!739366 () Bool)

(assert (=> b!1295857 (= e!739366 (and e!739368 mapRes!53423))))

(declare-fun condMapEmpty!53423 () Bool)

(declare-fun mapDefault!53423 () ValueCell!16389)

(assert (=> b!1295857 (= condMapEmpty!53423 (= (arr!41562 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16389)) mapDefault!53423)))))

(declare-fun b!1295858 () Bool)

(assert (=> b!1295858 (= e!739364 tp_is_empty!34575)))

(declare-fun mapIsEmpty!53423 () Bool)

(assert (=> mapIsEmpty!53423 mapRes!53423))

(declare-fun b!1295860 () Bool)

(declare-fun res!861383 () Bool)

(assert (=> b!1295860 (=> (not res!861383) (not e!739367))))

(assert (=> b!1295860 (= res!861383 (and (= (size!42113 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42112 _keys!1741) (size!42113 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295861 () Bool)

(declare-fun res!861388 () Bool)

(assert (=> b!1295861 (=> (not res!861388) (not e!739367))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295861 (= res!861388 (not (validKeyInArray!0 (select (arr!41561 _keys!1741) from!2144))))))

(declare-fun b!1295862 () Bool)

(declare-fun res!861386 () Bool)

(assert (=> b!1295862 (=> (not res!861386) (not e!739367))))

(assert (=> b!1295862 (= res!861386 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42112 _keys!1741))))))

(declare-fun b!1295863 () Bool)

(assert (=> b!1295863 (= e!739369 true)))

(declare-fun lt!579963 () ListLongMap!20179)

(declare-fun +!4405 (ListLongMap!20179 tuple2!22510) ListLongMap!20179)

(assert (=> b!1295863 (not (contains!8161 (+!4405 lt!579963 (tuple2!22511 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579964 () Unit!42873)

(declare-fun addStillNotContains!450 (ListLongMap!20179 (_ BitVec 64) V!51203 (_ BitVec 64)) Unit!42873)

(assert (=> b!1295863 (= lt!579964 (addStillNotContains!450 lt!579963 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6121 (array!86129 array!86131 (_ BitVec 32) (_ BitVec 32) V!51203 V!51203 (_ BitVec 32) Int) ListLongMap!20179)

(assert (=> b!1295863 (= lt!579963 (getCurrentListMapNoExtraKeys!6121 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295864 () Bool)

(declare-fun res!861385 () Bool)

(assert (=> b!1295864 (=> (not res!861385) (not e!739367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86129 (_ BitVec 32)) Bool)

(assert (=> b!1295864 (= res!861385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!861387 () Bool)

(assert (=> start!109482 (=> (not res!861387) (not e!739367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109482 (= res!861387 (validMask!0 mask!2175))))

(assert (=> start!109482 e!739367))

(assert (=> start!109482 tp_is_empty!34575))

(assert (=> start!109482 true))

(declare-fun array_inv!31455 (array!86131) Bool)

(assert (=> start!109482 (and (array_inv!31455 _values!1445) e!739366)))

(declare-fun array_inv!31456 (array!86129) Bool)

(assert (=> start!109482 (array_inv!31456 _keys!1741)))

(assert (=> start!109482 tp!101925))

(declare-fun b!1295859 () Bool)

(declare-fun res!861382 () Bool)

(assert (=> b!1295859 (=> (not res!861382) (not e!739367))))

(declare-datatypes ((List!29679 0))(
  ( (Nil!29676) (Cons!29675 (h!30884 (_ BitVec 64)) (t!43250 List!29679)) )
))
(declare-fun arrayNoDuplicates!0 (array!86129 (_ BitVec 32) List!29679) Bool)

(assert (=> b!1295859 (= res!861382 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29676))))

(assert (= (and start!109482 res!861387) b!1295860))

(assert (= (and b!1295860 res!861383) b!1295864))

(assert (= (and b!1295864 res!861385) b!1295859))

(assert (= (and b!1295859 res!861382) b!1295862))

(assert (= (and b!1295862 res!861386) b!1295853))

(assert (= (and b!1295853 res!861390) b!1295855))

(assert (= (and b!1295855 res!861384) b!1295861))

(assert (= (and b!1295861 res!861388) b!1295856))

(assert (= (and b!1295856 (not res!861389)) b!1295863))

(assert (= (and b!1295857 condMapEmpty!53423) mapIsEmpty!53423))

(assert (= (and b!1295857 (not condMapEmpty!53423)) mapNonEmpty!53423))

(get-info :version)

(assert (= (and mapNonEmpty!53423 ((_ is ValueCellFull!16389) mapValue!53423)) b!1295858))

(assert (= (and b!1295857 ((_ is ValueCellFull!16389) mapDefault!53423)) b!1295854))

(assert (= start!109482 b!1295857))

(declare-fun m!1187857 () Bool)

(assert (=> mapNonEmpty!53423 m!1187857))

(declare-fun m!1187859 () Bool)

(assert (=> b!1295861 m!1187859))

(assert (=> b!1295861 m!1187859))

(declare-fun m!1187861 () Bool)

(assert (=> b!1295861 m!1187861))

(declare-fun m!1187863 () Bool)

(assert (=> b!1295853 m!1187863))

(assert (=> b!1295853 m!1187863))

(declare-fun m!1187865 () Bool)

(assert (=> b!1295853 m!1187865))

(declare-fun m!1187867 () Bool)

(assert (=> b!1295863 m!1187867))

(assert (=> b!1295863 m!1187867))

(declare-fun m!1187869 () Bool)

(assert (=> b!1295863 m!1187869))

(declare-fun m!1187871 () Bool)

(assert (=> b!1295863 m!1187871))

(declare-fun m!1187873 () Bool)

(assert (=> b!1295863 m!1187873))

(declare-fun m!1187875 () Bool)

(assert (=> start!109482 m!1187875))

(declare-fun m!1187877 () Bool)

(assert (=> start!109482 m!1187877))

(declare-fun m!1187879 () Bool)

(assert (=> start!109482 m!1187879))

(declare-fun m!1187881 () Bool)

(assert (=> b!1295859 m!1187881))

(declare-fun m!1187883 () Bool)

(assert (=> b!1295864 m!1187883))

(declare-fun m!1187885 () Bool)

(assert (=> b!1295856 m!1187885))

(declare-fun m!1187887 () Bool)

(assert (=> b!1295856 m!1187887))

(check-sat tp_is_empty!34575 (not b!1295856) (not b!1295864) (not start!109482) (not b!1295861) (not b!1295863) (not b_next!28935) b_and!47035 (not mapNonEmpty!53423) (not b!1295853) (not b!1295859))
(check-sat b_and!47035 (not b_next!28935))
