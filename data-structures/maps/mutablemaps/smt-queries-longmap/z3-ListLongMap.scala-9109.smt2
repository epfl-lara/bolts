; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109476 () Bool)

(assert start!109476)

(declare-fun b_free!28929 () Bool)

(declare-fun b_next!28929 () Bool)

(assert (=> start!109476 (= b_free!28929 (not b_next!28929))))

(declare-fun tp!101906 () Bool)

(declare-fun b_and!47029 () Bool)

(assert (=> start!109476 (= tp!101906 b_and!47029)))

(declare-fun b!1295745 () Bool)

(declare-fun e!739312 () Bool)

(declare-fun tp_is_empty!34569 () Bool)

(assert (=> b!1295745 (= e!739312 tp_is_empty!34569)))

(declare-fun b!1295746 () Bool)

(declare-fun e!739315 () Bool)

(declare-fun e!739313 () Bool)

(assert (=> b!1295746 (= e!739315 (not e!739313))))

(declare-fun res!861304 () Bool)

(assert (=> b!1295746 (=> res!861304 e!739313)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295746 (= res!861304 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51195 0))(
  ( (V!51196 (val!17359 Int)) )
))
(declare-datatypes ((tuple2!22506 0))(
  ( (tuple2!22507 (_1!11263 (_ BitVec 64)) (_2!11263 V!51195)) )
))
(declare-datatypes ((List!29675 0))(
  ( (Nil!29672) (Cons!29671 (h!30880 tuple2!22506) (t!43246 List!29675)) )
))
(declare-datatypes ((ListLongMap!20175 0))(
  ( (ListLongMap!20176 (toList!10103 List!29675)) )
))
(declare-fun contains!8159 (ListLongMap!20175 (_ BitVec 64)) Bool)

(assert (=> b!1295746 (not (contains!8159 (ListLongMap!20176 Nil!29672) k0!1205))))

(declare-datatypes ((Unit!42869 0))(
  ( (Unit!42870) )
))
(declare-fun lt!579936 () Unit!42869)

(declare-fun emptyContainsNothing!189 ((_ BitVec 64)) Unit!42869)

(assert (=> b!1295746 (= lt!579936 (emptyContainsNothing!189 k0!1205))))

(declare-fun b!1295747 () Bool)

(declare-fun res!861309 () Bool)

(assert (=> b!1295747 (=> (not res!861309) (not e!739315))))

(declare-fun minValue!1387 () V!51195)

(declare-fun zeroValue!1387 () V!51195)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16386 0))(
  ( (ValueCellFull!16386 (v!19960 V!51195)) (EmptyCell!16386) )
))
(declare-datatypes ((array!86119 0))(
  ( (array!86120 (arr!41556 (Array (_ BitVec 32) ValueCell!16386)) (size!42107 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86119)

(declare-datatypes ((array!86121 0))(
  ( (array!86122 (arr!41557 (Array (_ BitVec 32) (_ BitVec 64))) (size!42108 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86121)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5082 (array!86121 array!86119 (_ BitVec 32) (_ BitVec 32) V!51195 V!51195 (_ BitVec 32) Int) ListLongMap!20175)

(assert (=> b!1295747 (= res!861309 (contains!8159 (getCurrentListMap!5082 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1295748 () Bool)

(declare-fun e!739314 () Bool)

(declare-fun e!739310 () Bool)

(declare-fun mapRes!53414 () Bool)

(assert (=> b!1295748 (= e!739314 (and e!739310 mapRes!53414))))

(declare-fun condMapEmpty!53414 () Bool)

(declare-fun mapDefault!53414 () ValueCell!16386)

(assert (=> b!1295748 (= condMapEmpty!53414 (= (arr!41556 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16386)) mapDefault!53414)))))

(declare-fun b!1295749 () Bool)

(declare-fun res!861305 () Bool)

(assert (=> b!1295749 (=> (not res!861305) (not e!739315))))

(assert (=> b!1295749 (= res!861305 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42108 _keys!1741))))))

(declare-fun b!1295750 () Bool)

(assert (=> b!1295750 (= e!739310 tp_is_empty!34569)))

(declare-fun b!1295751 () Bool)

(declare-fun res!861303 () Bool)

(assert (=> b!1295751 (=> (not res!861303) (not e!739315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86121 (_ BitVec 32)) Bool)

(assert (=> b!1295751 (= res!861303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295752 () Bool)

(declare-fun res!861306 () Bool)

(assert (=> b!1295752 (=> (not res!861306) (not e!739315))))

(assert (=> b!1295752 (= res!861306 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42108 _keys!1741))))))

(declare-fun b!1295753 () Bool)

(assert (=> b!1295753 (= e!739313 (bvsle from!2144 (size!42108 _keys!1741)))))

(declare-fun lt!579937 () ListLongMap!20175)

(declare-fun +!4404 (ListLongMap!20175 tuple2!22506) ListLongMap!20175)

(assert (=> b!1295753 (not (contains!8159 (+!4404 lt!579937 (tuple2!22507 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579935 () Unit!42869)

(declare-fun addStillNotContains!449 (ListLongMap!20175 (_ BitVec 64) V!51195 (_ BitVec 64)) Unit!42869)

(assert (=> b!1295753 (= lt!579935 (addStillNotContains!449 lt!579937 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6120 (array!86121 array!86119 (_ BitVec 32) (_ BitVec 32) V!51195 V!51195 (_ BitVec 32) Int) ListLongMap!20175)

(assert (=> b!1295753 (= lt!579937 (getCurrentListMapNoExtraKeys!6120 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295754 () Bool)

(declare-fun res!861308 () Bool)

(assert (=> b!1295754 (=> (not res!861308) (not e!739315))))

(declare-datatypes ((List!29676 0))(
  ( (Nil!29673) (Cons!29672 (h!30881 (_ BitVec 64)) (t!43247 List!29676)) )
))
(declare-fun arrayNoDuplicates!0 (array!86121 (_ BitVec 32) List!29676) Bool)

(assert (=> b!1295754 (= res!861308 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29673))))

(declare-fun mapNonEmpty!53414 () Bool)

(declare-fun tp!101907 () Bool)

(assert (=> mapNonEmpty!53414 (= mapRes!53414 (and tp!101907 e!739312))))

(declare-fun mapValue!53414 () ValueCell!16386)

(declare-fun mapRest!53414 () (Array (_ BitVec 32) ValueCell!16386))

(declare-fun mapKey!53414 () (_ BitVec 32))

(assert (=> mapNonEmpty!53414 (= (arr!41556 _values!1445) (store mapRest!53414 mapKey!53414 mapValue!53414))))

(declare-fun b!1295755 () Bool)

(declare-fun res!861302 () Bool)

(assert (=> b!1295755 (=> (not res!861302) (not e!739315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295755 (= res!861302 (not (validKeyInArray!0 (select (arr!41557 _keys!1741) from!2144))))))

(declare-fun res!861307 () Bool)

(assert (=> start!109476 (=> (not res!861307) (not e!739315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109476 (= res!861307 (validMask!0 mask!2175))))

(assert (=> start!109476 e!739315))

(assert (=> start!109476 tp_is_empty!34569))

(assert (=> start!109476 true))

(declare-fun array_inv!31451 (array!86119) Bool)

(assert (=> start!109476 (and (array_inv!31451 _values!1445) e!739314)))

(declare-fun array_inv!31452 (array!86121) Bool)

(assert (=> start!109476 (array_inv!31452 _keys!1741)))

(assert (=> start!109476 tp!101906))

(declare-fun mapIsEmpty!53414 () Bool)

(assert (=> mapIsEmpty!53414 mapRes!53414))

(declare-fun b!1295756 () Bool)

(declare-fun res!861301 () Bool)

(assert (=> b!1295756 (=> (not res!861301) (not e!739315))))

(assert (=> b!1295756 (= res!861301 (and (= (size!42107 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42108 _keys!1741) (size!42107 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109476 res!861307) b!1295756))

(assert (= (and b!1295756 res!861301) b!1295751))

(assert (= (and b!1295751 res!861303) b!1295754))

(assert (= (and b!1295754 res!861308) b!1295752))

(assert (= (and b!1295752 res!861306) b!1295747))

(assert (= (and b!1295747 res!861309) b!1295749))

(assert (= (and b!1295749 res!861305) b!1295755))

(assert (= (and b!1295755 res!861302) b!1295746))

(assert (= (and b!1295746 (not res!861304)) b!1295753))

(assert (= (and b!1295748 condMapEmpty!53414) mapIsEmpty!53414))

(assert (= (and b!1295748 (not condMapEmpty!53414)) mapNonEmpty!53414))

(get-info :version)

(assert (= (and mapNonEmpty!53414 ((_ is ValueCellFull!16386) mapValue!53414)) b!1295745))

(assert (= (and b!1295748 ((_ is ValueCellFull!16386) mapDefault!53414)) b!1295750))

(assert (= start!109476 b!1295748))

(declare-fun m!1187761 () Bool)

(assert (=> b!1295754 m!1187761))

(declare-fun m!1187763 () Bool)

(assert (=> b!1295746 m!1187763))

(declare-fun m!1187765 () Bool)

(assert (=> b!1295746 m!1187765))

(declare-fun m!1187767 () Bool)

(assert (=> b!1295747 m!1187767))

(assert (=> b!1295747 m!1187767))

(declare-fun m!1187769 () Bool)

(assert (=> b!1295747 m!1187769))

(declare-fun m!1187771 () Bool)

(assert (=> start!109476 m!1187771))

(declare-fun m!1187773 () Bool)

(assert (=> start!109476 m!1187773))

(declare-fun m!1187775 () Bool)

(assert (=> start!109476 m!1187775))

(declare-fun m!1187777 () Bool)

(assert (=> b!1295753 m!1187777))

(assert (=> b!1295753 m!1187777))

(declare-fun m!1187779 () Bool)

(assert (=> b!1295753 m!1187779))

(declare-fun m!1187781 () Bool)

(assert (=> b!1295753 m!1187781))

(declare-fun m!1187783 () Bool)

(assert (=> b!1295753 m!1187783))

(declare-fun m!1187785 () Bool)

(assert (=> b!1295751 m!1187785))

(declare-fun m!1187787 () Bool)

(assert (=> mapNonEmpty!53414 m!1187787))

(declare-fun m!1187789 () Bool)

(assert (=> b!1295755 m!1187789))

(assert (=> b!1295755 m!1187789))

(declare-fun m!1187791 () Bool)

(assert (=> b!1295755 m!1187791))

(check-sat (not b!1295754) (not b!1295753) (not b!1295746) (not b_next!28929) (not mapNonEmpty!53414) (not b!1295755) (not b!1295751) (not b!1295747) tp_is_empty!34569 (not start!109476) b_and!47029)
(check-sat b_and!47029 (not b_next!28929))
