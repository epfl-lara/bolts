; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109224 () Bool)

(assert start!109224)

(declare-fun b_free!28677 () Bool)

(declare-fun b_next!28677 () Bool)

(assert (=> start!109224 (= b_free!28677 (not b_next!28677))))

(declare-fun tp!101150 () Bool)

(declare-fun b_and!46777 () Bool)

(assert (=> start!109224 (= tp!101150 b_and!46777)))

(declare-fun b!1291371 () Bool)

(declare-fun res!858068 () Bool)

(declare-fun e!737209 () Bool)

(assert (=> b!1291371 (=> (not res!858068) (not e!737209))))

(declare-datatypes ((V!50859 0))(
  ( (V!50860 (val!17233 Int)) )
))
(declare-fun minValue!1387 () V!50859)

(declare-fun zeroValue!1387 () V!50859)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85629 0))(
  ( (array!85630 (arr!41311 (Array (_ BitVec 32) (_ BitVec 64))) (size!41862 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85629)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16260 0))(
  ( (ValueCellFull!16260 (v!19834 V!50859)) (EmptyCell!16260) )
))
(declare-datatypes ((array!85631 0))(
  ( (array!85632 (arr!41312 (Array (_ BitVec 32) ValueCell!16260)) (size!41863 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85631)

(declare-datatypes ((tuple2!22292 0))(
  ( (tuple2!22293 (_1!11156 (_ BitVec 64)) (_2!11156 V!50859)) )
))
(declare-datatypes ((List!29484 0))(
  ( (Nil!29481) (Cons!29480 (h!30689 tuple2!22292) (t!43055 List!29484)) )
))
(declare-datatypes ((ListLongMap!19961 0))(
  ( (ListLongMap!19962 (toList!9996 List!29484)) )
))
(declare-fun contains!8052 (ListLongMap!19961 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4991 (array!85629 array!85631 (_ BitVec 32) (_ BitVec 32) V!50859 V!50859 (_ BitVec 32) Int) ListLongMap!19961)

(assert (=> b!1291371 (= res!858068 (contains!8052 (getCurrentListMap!4991 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1291372 () Bool)

(declare-fun res!858065 () Bool)

(assert (=> b!1291372 (=> (not res!858065) (not e!737209))))

(assert (=> b!1291372 (= res!858065 (and (= (size!41863 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41862 _keys!1741) (size!41863 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291373 () Bool)

(declare-fun e!737204 () Bool)

(assert (=> b!1291373 (= e!737204 true)))

(assert (=> b!1291373 false))

(declare-fun lt!579082 () ListLongMap!19961)

(declare-datatypes ((Unit!42681 0))(
  ( (Unit!42682) )
))
(declare-fun lt!579078 () Unit!42681)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!53 ((_ BitVec 64) (_ BitVec 64) V!50859 ListLongMap!19961) Unit!42681)

(assert (=> b!1291373 (= lt!579078 (lemmaInListMapAfterAddingDiffThenInBefore!53 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579082))))

(declare-fun lt!579081 () ListLongMap!19961)

(declare-fun +!4358 (ListLongMap!19961 tuple2!22292) ListLongMap!19961)

(assert (=> b!1291373 (not (contains!8052 (+!4358 lt!579081 (tuple2!22293 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579077 () Unit!42681)

(declare-fun addStillNotContains!403 (ListLongMap!19961 (_ BitVec 64) V!50859 (_ BitVec 64)) Unit!42681)

(assert (=> b!1291373 (= lt!579077 (addStillNotContains!403 lt!579081 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1291373 (not (contains!8052 lt!579082 k0!1205))))

(assert (=> b!1291373 (= lt!579082 (+!4358 lt!579081 (tuple2!22293 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579080 () Unit!42681)

(assert (=> b!1291373 (= lt!579080 (addStillNotContains!403 lt!579081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6070 (array!85629 array!85631 (_ BitVec 32) (_ BitVec 32) V!50859 V!50859 (_ BitVec 32) Int) ListLongMap!19961)

(assert (=> b!1291373 (= lt!579081 (getCurrentListMapNoExtraKeys!6070 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53036 () Bool)

(declare-fun mapRes!53036 () Bool)

(assert (=> mapIsEmpty!53036 mapRes!53036))

(declare-fun b!1291374 () Bool)

(declare-fun res!858062 () Bool)

(assert (=> b!1291374 (=> (not res!858062) (not e!737209))))

(assert (=> b!1291374 (= res!858062 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41862 _keys!1741))))))

(declare-fun b!1291375 () Bool)

(declare-fun res!858067 () Bool)

(assert (=> b!1291375 (=> (not res!858067) (not e!737209))))

(assert (=> b!1291375 (= res!858067 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41862 _keys!1741))))))

(declare-fun b!1291376 () Bool)

(declare-fun e!737208 () Bool)

(declare-fun tp_is_empty!34317 () Bool)

(assert (=> b!1291376 (= e!737208 tp_is_empty!34317)))

(declare-fun b!1291377 () Bool)

(declare-fun e!737205 () Bool)

(assert (=> b!1291377 (= e!737205 (and e!737208 mapRes!53036))))

(declare-fun condMapEmpty!53036 () Bool)

(declare-fun mapDefault!53036 () ValueCell!16260)

(assert (=> b!1291377 (= condMapEmpty!53036 (= (arr!41312 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16260)) mapDefault!53036)))))

(declare-fun b!1291378 () Bool)

(declare-fun res!858066 () Bool)

(assert (=> b!1291378 (=> (not res!858066) (not e!737209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291378 (= res!858066 (not (validKeyInArray!0 (select (arr!41311 _keys!1741) from!2144))))))

(declare-fun b!1291379 () Bool)

(declare-fun e!737206 () Bool)

(assert (=> b!1291379 (= e!737206 tp_is_empty!34317)))

(declare-fun b!1291380 () Bool)

(assert (=> b!1291380 (= e!737209 (not e!737204))))

(declare-fun res!858064 () Bool)

(assert (=> b!1291380 (=> res!858064 e!737204)))

(assert (=> b!1291380 (= res!858064 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1291380 (not (contains!8052 (ListLongMap!19962 Nil!29481) k0!1205))))

(declare-fun lt!579079 () Unit!42681)

(declare-fun emptyContainsNothing!98 ((_ BitVec 64)) Unit!42681)

(assert (=> b!1291380 (= lt!579079 (emptyContainsNothing!98 k0!1205))))

(declare-fun res!858069 () Bool)

(assert (=> start!109224 (=> (not res!858069) (not e!737209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109224 (= res!858069 (validMask!0 mask!2175))))

(assert (=> start!109224 e!737209))

(assert (=> start!109224 tp_is_empty!34317))

(assert (=> start!109224 true))

(declare-fun array_inv!31277 (array!85631) Bool)

(assert (=> start!109224 (and (array_inv!31277 _values!1445) e!737205)))

(declare-fun array_inv!31278 (array!85629) Bool)

(assert (=> start!109224 (array_inv!31278 _keys!1741)))

(assert (=> start!109224 tp!101150))

(declare-fun b!1291381 () Bool)

(declare-fun res!858063 () Bool)

(assert (=> b!1291381 (=> (not res!858063) (not e!737209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85629 (_ BitVec 32)) Bool)

(assert (=> b!1291381 (= res!858063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291382 () Bool)

(declare-fun res!858061 () Bool)

(assert (=> b!1291382 (=> (not res!858061) (not e!737209))))

(declare-datatypes ((List!29485 0))(
  ( (Nil!29482) (Cons!29481 (h!30690 (_ BitVec 64)) (t!43056 List!29485)) )
))
(declare-fun arrayNoDuplicates!0 (array!85629 (_ BitVec 32) List!29485) Bool)

(assert (=> b!1291382 (= res!858061 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29482))))

(declare-fun mapNonEmpty!53036 () Bool)

(declare-fun tp!101151 () Bool)

(assert (=> mapNonEmpty!53036 (= mapRes!53036 (and tp!101151 e!737206))))

(declare-fun mapRest!53036 () (Array (_ BitVec 32) ValueCell!16260))

(declare-fun mapValue!53036 () ValueCell!16260)

(declare-fun mapKey!53036 () (_ BitVec 32))

(assert (=> mapNonEmpty!53036 (= (arr!41312 _values!1445) (store mapRest!53036 mapKey!53036 mapValue!53036))))

(assert (= (and start!109224 res!858069) b!1291372))

(assert (= (and b!1291372 res!858065) b!1291381))

(assert (= (and b!1291381 res!858063) b!1291382))

(assert (= (and b!1291382 res!858061) b!1291374))

(assert (= (and b!1291374 res!858062) b!1291371))

(assert (= (and b!1291371 res!858068) b!1291375))

(assert (= (and b!1291375 res!858067) b!1291378))

(assert (= (and b!1291378 res!858066) b!1291380))

(assert (= (and b!1291380 (not res!858064)) b!1291373))

(assert (= (and b!1291377 condMapEmpty!53036) mapIsEmpty!53036))

(assert (= (and b!1291377 (not condMapEmpty!53036)) mapNonEmpty!53036))

(get-info :version)

(assert (= (and mapNonEmpty!53036 ((_ is ValueCellFull!16260) mapValue!53036)) b!1291379))

(assert (= (and b!1291377 ((_ is ValueCellFull!16260) mapDefault!53036)) b!1291376))

(assert (= start!109224 b!1291377))

(declare-fun m!1184121 () Bool)

(assert (=> b!1291373 m!1184121))

(declare-fun m!1184123 () Bool)

(assert (=> b!1291373 m!1184123))

(declare-fun m!1184125 () Bool)

(assert (=> b!1291373 m!1184125))

(declare-fun m!1184127 () Bool)

(assert (=> b!1291373 m!1184127))

(declare-fun m!1184129 () Bool)

(assert (=> b!1291373 m!1184129))

(declare-fun m!1184131 () Bool)

(assert (=> b!1291373 m!1184131))

(assert (=> b!1291373 m!1184121))

(declare-fun m!1184133 () Bool)

(assert (=> b!1291373 m!1184133))

(declare-fun m!1184135 () Bool)

(assert (=> b!1291373 m!1184135))

(declare-fun m!1184137 () Bool)

(assert (=> b!1291382 m!1184137))

(declare-fun m!1184139 () Bool)

(assert (=> mapNonEmpty!53036 m!1184139))

(declare-fun m!1184141 () Bool)

(assert (=> b!1291371 m!1184141))

(assert (=> b!1291371 m!1184141))

(declare-fun m!1184143 () Bool)

(assert (=> b!1291371 m!1184143))

(declare-fun m!1184145 () Bool)

(assert (=> b!1291380 m!1184145))

(declare-fun m!1184147 () Bool)

(assert (=> b!1291380 m!1184147))

(declare-fun m!1184149 () Bool)

(assert (=> b!1291381 m!1184149))

(declare-fun m!1184151 () Bool)

(assert (=> start!109224 m!1184151))

(declare-fun m!1184153 () Bool)

(assert (=> start!109224 m!1184153))

(declare-fun m!1184155 () Bool)

(assert (=> start!109224 m!1184155))

(declare-fun m!1184157 () Bool)

(assert (=> b!1291378 m!1184157))

(assert (=> b!1291378 m!1184157))

(declare-fun m!1184159 () Bool)

(assert (=> b!1291378 m!1184159))

(check-sat (not b!1291373) (not b!1291371) tp_is_empty!34317 (not b!1291382) b_and!46777 (not b!1291381) (not mapNonEmpty!53036) (not start!109224) (not b!1291378) (not b_next!28677) (not b!1291380))
(check-sat b_and!46777 (not b_next!28677))
