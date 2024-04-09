; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109428 () Bool)

(assert start!109428)

(declare-fun b_free!28881 () Bool)

(declare-fun b_next!28881 () Bool)

(assert (=> start!109428 (= b_free!28881 (not b_next!28881))))

(declare-fun tp!101763 () Bool)

(declare-fun b_and!46981 () Bool)

(assert (=> start!109428 (= tp!101763 b_and!46981)))

(declare-fun b!1294881 () Bool)

(declare-fun e!738878 () Bool)

(declare-fun e!738879 () Bool)

(declare-fun mapRes!53342 () Bool)

(assert (=> b!1294881 (= e!738878 (and e!738879 mapRes!53342))))

(declare-fun condMapEmpty!53342 () Bool)

(declare-datatypes ((V!51131 0))(
  ( (V!51132 (val!17335 Int)) )
))
(declare-datatypes ((ValueCell!16362 0))(
  ( (ValueCellFull!16362 (v!19936 V!51131)) (EmptyCell!16362) )
))
(declare-datatypes ((array!86027 0))(
  ( (array!86028 (arr!41510 (Array (_ BitVec 32) ValueCell!16362)) (size!42061 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86027)

(declare-fun mapDefault!53342 () ValueCell!16362)

(assert (=> b!1294881 (= condMapEmpty!53342 (= (arr!41510 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16362)) mapDefault!53342)))))

(declare-fun b!1294882 () Bool)

(declare-fun res!860655 () Bool)

(declare-fun e!738880 () Bool)

(assert (=> b!1294882 (=> (not res!860655) (not e!738880))))

(declare-datatypes ((array!86029 0))(
  ( (array!86030 (arr!41511 (Array (_ BitVec 32) (_ BitVec 64))) (size!42062 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86029)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86029 (_ BitVec 32)) Bool)

(assert (=> b!1294882 (= res!860655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294883 () Bool)

(declare-fun res!860660 () Bool)

(assert (=> b!1294883 (=> (not res!860660) (not e!738880))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1294883 (= res!860660 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42062 _keys!1741))))))

(declare-fun b!1294884 () Bool)

(declare-fun e!738881 () Bool)

(assert (=> b!1294884 (= e!738880 (not e!738881))))

(declare-fun res!860657 () Bool)

(assert (=> b!1294884 (=> res!860657 e!738881)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1294884 (= res!860657 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!22466 0))(
  ( (tuple2!22467 (_1!11243 (_ BitVec 64)) (_2!11243 V!51131)) )
))
(declare-datatypes ((List!29636 0))(
  ( (Nil!29633) (Cons!29632 (h!30841 tuple2!22466) (t!43207 List!29636)) )
))
(declare-datatypes ((ListLongMap!20135 0))(
  ( (ListLongMap!20136 (toList!10083 List!29636)) )
))
(declare-fun contains!8139 (ListLongMap!20135 (_ BitVec 64)) Bool)

(assert (=> b!1294884 (not (contains!8139 (ListLongMap!20136 Nil!29633) k0!1205))))

(declare-datatypes ((Unit!42833 0))(
  ( (Unit!42834) )
))
(declare-fun lt!579719 () Unit!42833)

(declare-fun emptyContainsNothing!173 ((_ BitVec 64)) Unit!42833)

(assert (=> b!1294884 (= lt!579719 (emptyContainsNothing!173 k0!1205))))

(declare-fun b!1294885 () Bool)

(declare-fun res!860656 () Bool)

(assert (=> b!1294885 (=> (not res!860656) (not e!738880))))

(declare-fun minValue!1387 () V!51131)

(declare-fun zeroValue!1387 () V!51131)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5065 (array!86029 array!86027 (_ BitVec 32) (_ BitVec 32) V!51131 V!51131 (_ BitVec 32) Int) ListLongMap!20135)

(assert (=> b!1294885 (= res!860656 (contains!8139 (getCurrentListMap!5065 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294886 () Bool)

(declare-fun e!738883 () Bool)

(declare-fun tp_is_empty!34521 () Bool)

(assert (=> b!1294886 (= e!738883 tp_is_empty!34521)))

(declare-fun mapIsEmpty!53342 () Bool)

(assert (=> mapIsEmpty!53342 mapRes!53342))

(declare-fun res!860658 () Bool)

(assert (=> start!109428 (=> (not res!860658) (not e!738880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109428 (= res!860658 (validMask!0 mask!2175))))

(assert (=> start!109428 e!738880))

(assert (=> start!109428 tp_is_empty!34521))

(assert (=> start!109428 true))

(declare-fun array_inv!31411 (array!86027) Bool)

(assert (=> start!109428 (and (array_inv!31411 _values!1445) e!738878)))

(declare-fun array_inv!31412 (array!86029) Bool)

(assert (=> start!109428 (array_inv!31412 _keys!1741)))

(assert (=> start!109428 tp!101763))

(declare-fun mapNonEmpty!53342 () Bool)

(declare-fun tp!101762 () Bool)

(assert (=> mapNonEmpty!53342 (= mapRes!53342 (and tp!101762 e!738883))))

(declare-fun mapValue!53342 () ValueCell!16362)

(declare-fun mapKey!53342 () (_ BitVec 32))

(declare-fun mapRest!53342 () (Array (_ BitVec 32) ValueCell!16362))

(assert (=> mapNonEmpty!53342 (= (arr!41510 _values!1445) (store mapRest!53342 mapKey!53342 mapValue!53342))))

(declare-fun b!1294887 () Bool)

(declare-fun res!860661 () Bool)

(assert (=> b!1294887 (=> (not res!860661) (not e!738880))))

(assert (=> b!1294887 (= res!860661 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42062 _keys!1741))))))

(declare-fun b!1294888 () Bool)

(declare-fun res!860654 () Bool)

(assert (=> b!1294888 (=> (not res!860654) (not e!738880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294888 (= res!860654 (not (validKeyInArray!0 (select (arr!41511 _keys!1741) from!2144))))))

(declare-fun b!1294889 () Bool)

(declare-fun res!860659 () Bool)

(assert (=> b!1294889 (=> (not res!860659) (not e!738880))))

(assert (=> b!1294889 (= res!860659 (and (= (size!42061 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42062 _keys!1741) (size!42061 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294890 () Bool)

(declare-fun res!860653 () Bool)

(assert (=> b!1294890 (=> (not res!860653) (not e!738880))))

(declare-datatypes ((List!29637 0))(
  ( (Nil!29634) (Cons!29633 (h!30842 (_ BitVec 64)) (t!43208 List!29637)) )
))
(declare-fun arrayNoDuplicates!0 (array!86029 (_ BitVec 32) List!29637) Bool)

(assert (=> b!1294890 (= res!860653 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29634))))

(declare-fun b!1294891 () Bool)

(assert (=> b!1294891 (= e!738881 true)))

(declare-fun lt!579720 () ListLongMap!20135)

(declare-fun +!4387 (ListLongMap!20135 tuple2!22466) ListLongMap!20135)

(assert (=> b!1294891 (not (contains!8139 (+!4387 lt!579720 (tuple2!22467 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579721 () Unit!42833)

(declare-fun addStillNotContains!432 (ListLongMap!20135 (_ BitVec 64) V!51131 (_ BitVec 64)) Unit!42833)

(assert (=> b!1294891 (= lt!579721 (addStillNotContains!432 lt!579720 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6103 (array!86029 array!86027 (_ BitVec 32) (_ BitVec 32) V!51131 V!51131 (_ BitVec 32) Int) ListLongMap!20135)

(assert (=> b!1294891 (= lt!579720 (getCurrentListMapNoExtraKeys!6103 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1294892 () Bool)

(assert (=> b!1294892 (= e!738879 tp_is_empty!34521)))

(assert (= (and start!109428 res!860658) b!1294889))

(assert (= (and b!1294889 res!860659) b!1294882))

(assert (= (and b!1294882 res!860655) b!1294890))

(assert (= (and b!1294890 res!860653) b!1294887))

(assert (= (and b!1294887 res!860661) b!1294885))

(assert (= (and b!1294885 res!860656) b!1294883))

(assert (= (and b!1294883 res!860660) b!1294888))

(assert (= (and b!1294888 res!860654) b!1294884))

(assert (= (and b!1294884 (not res!860657)) b!1294891))

(assert (= (and b!1294881 condMapEmpty!53342) mapIsEmpty!53342))

(assert (= (and b!1294881 (not condMapEmpty!53342)) mapNonEmpty!53342))

(get-info :version)

(assert (= (and mapNonEmpty!53342 ((_ is ValueCellFull!16362) mapValue!53342)) b!1294886))

(assert (= (and b!1294881 ((_ is ValueCellFull!16362) mapDefault!53342)) b!1294892))

(assert (= start!109428 b!1294881))

(declare-fun m!1186993 () Bool)

(assert (=> b!1294891 m!1186993))

(assert (=> b!1294891 m!1186993))

(declare-fun m!1186995 () Bool)

(assert (=> b!1294891 m!1186995))

(declare-fun m!1186997 () Bool)

(assert (=> b!1294891 m!1186997))

(declare-fun m!1186999 () Bool)

(assert (=> b!1294891 m!1186999))

(declare-fun m!1187001 () Bool)

(assert (=> mapNonEmpty!53342 m!1187001))

(declare-fun m!1187003 () Bool)

(assert (=> b!1294884 m!1187003))

(declare-fun m!1187005 () Bool)

(assert (=> b!1294884 m!1187005))

(declare-fun m!1187007 () Bool)

(assert (=> b!1294885 m!1187007))

(assert (=> b!1294885 m!1187007))

(declare-fun m!1187009 () Bool)

(assert (=> b!1294885 m!1187009))

(declare-fun m!1187011 () Bool)

(assert (=> b!1294882 m!1187011))

(declare-fun m!1187013 () Bool)

(assert (=> b!1294888 m!1187013))

(assert (=> b!1294888 m!1187013))

(declare-fun m!1187015 () Bool)

(assert (=> b!1294888 m!1187015))

(declare-fun m!1187017 () Bool)

(assert (=> start!109428 m!1187017))

(declare-fun m!1187019 () Bool)

(assert (=> start!109428 m!1187019))

(declare-fun m!1187021 () Bool)

(assert (=> start!109428 m!1187021))

(declare-fun m!1187023 () Bool)

(assert (=> b!1294890 m!1187023))

(check-sat (not b!1294885) (not b_next!28881) b_and!46981 (not b!1294888) (not b!1294884) (not b!1294891) (not mapNonEmpty!53342) (not start!109428) (not b!1294890) (not b!1294882) tp_is_empty!34521)
(check-sat b_and!46981 (not b_next!28881))
