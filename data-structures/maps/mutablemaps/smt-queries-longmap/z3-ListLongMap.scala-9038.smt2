; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109050 () Bool)

(assert start!109050)

(declare-fun b_free!28503 () Bool)

(declare-fun b_next!28503 () Bool)

(assert (=> start!109050 (= b_free!28503 (not b_next!28503))))

(declare-fun tp!100629 () Bool)

(declare-fun b_and!46603 () Bool)

(assert (=> start!109050 (= tp!100629 b_and!46603)))

(declare-fun b!1288239 () Bool)

(declare-fun res!855713 () Bool)

(declare-fun e!735640 () Bool)

(assert (=> b!1288239 (=> (not res!855713) (not e!735640))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85287 0))(
  ( (array!85288 (arr!41140 (Array (_ BitVec 32) (_ BitVec 64))) (size!41691 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85287)

(assert (=> b!1288239 (= res!855713 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41691 _keys!1741))))))

(declare-fun mapNonEmpty!52775 () Bool)

(declare-fun mapRes!52775 () Bool)

(declare-fun tp!100628 () Bool)

(declare-fun e!735639 () Bool)

(assert (=> mapNonEmpty!52775 (= mapRes!52775 (and tp!100628 e!735639))))

(declare-datatypes ((V!50627 0))(
  ( (V!50628 (val!17146 Int)) )
))
(declare-datatypes ((ValueCell!16173 0))(
  ( (ValueCellFull!16173 (v!19747 V!50627)) (EmptyCell!16173) )
))
(declare-fun mapRest!52775 () (Array (_ BitVec 32) ValueCell!16173))

(declare-fun mapValue!52775 () ValueCell!16173)

(declare-datatypes ((array!85289 0))(
  ( (array!85290 (arr!41141 (Array (_ BitVec 32) ValueCell!16173)) (size!41692 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85289)

(declare-fun mapKey!52775 () (_ BitVec 32))

(assert (=> mapNonEmpty!52775 (= (arr!41141 _values!1445) (store mapRest!52775 mapKey!52775 mapValue!52775))))

(declare-fun b!1288240 () Bool)

(declare-fun tp_is_empty!34143 () Bool)

(assert (=> b!1288240 (= e!735639 tp_is_empty!34143)))

(declare-fun b!1288241 () Bool)

(declare-fun e!735641 () Bool)

(declare-fun e!735642 () Bool)

(assert (=> b!1288241 (= e!735641 (and e!735642 mapRes!52775))))

(declare-fun condMapEmpty!52775 () Bool)

(declare-fun mapDefault!52775 () ValueCell!16173)

(assert (=> b!1288241 (= condMapEmpty!52775 (= (arr!41141 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16173)) mapDefault!52775)))))

(declare-fun b!1288242 () Bool)

(assert (=> b!1288242 (= e!735642 tp_is_empty!34143)))

(declare-fun mapIsEmpty!52775 () Bool)

(assert (=> mapIsEmpty!52775 mapRes!52775))

(declare-fun b!1288243 () Bool)

(declare-fun res!855720 () Bool)

(assert (=> b!1288243 (=> (not res!855720) (not e!735640))))

(declare-fun minValue!1387 () V!50627)

(declare-fun zeroValue!1387 () V!50627)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22144 0))(
  ( (tuple2!22145 (_1!11082 (_ BitVec 64)) (_2!11082 V!50627)) )
))
(declare-datatypes ((List!29343 0))(
  ( (Nil!29340) (Cons!29339 (h!30548 tuple2!22144) (t!42914 List!29343)) )
))
(declare-datatypes ((ListLongMap!19813 0))(
  ( (ListLongMap!19814 (toList!9922 List!29343)) )
))
(declare-fun contains!7978 (ListLongMap!19813 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4925 (array!85287 array!85289 (_ BitVec 32) (_ BitVec 32) V!50627 V!50627 (_ BitVec 32) Int) ListLongMap!19813)

(assert (=> b!1288243 (= res!855720 (contains!7978 (getCurrentListMap!4925 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288244 () Bool)

(declare-fun res!855715 () Bool)

(assert (=> b!1288244 (=> (not res!855715) (not e!735640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85287 (_ BitVec 32)) Bool)

(assert (=> b!1288244 (= res!855715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288245 () Bool)

(declare-fun res!855714 () Bool)

(assert (=> b!1288245 (=> (not res!855714) (not e!735640))))

(assert (=> b!1288245 (= res!855714 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41691 _keys!1741))))))

(declare-fun b!1288246 () Bool)

(declare-fun res!855712 () Bool)

(assert (=> b!1288246 (=> (not res!855712) (not e!735640))))

(assert (=> b!1288246 (= res!855712 (and (= (size!41692 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41691 _keys!1741) (size!41692 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288248 () Bool)

(declare-fun res!855718 () Bool)

(assert (=> b!1288248 (=> (not res!855718) (not e!735640))))

(declare-datatypes ((List!29344 0))(
  ( (Nil!29341) (Cons!29340 (h!30549 (_ BitVec 64)) (t!42915 List!29344)) )
))
(declare-fun arrayNoDuplicates!0 (array!85287 (_ BitVec 32) List!29344) Bool)

(assert (=> b!1288248 (= res!855718 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29341))))

(declare-fun b!1288249 () Bool)

(declare-fun e!735643 () Bool)

(assert (=> b!1288249 (= e!735643 true)))

(declare-fun lt!577903 () ListLongMap!19813)

(declare-fun +!4298 (ListLongMap!19813 tuple2!22144) ListLongMap!19813)

(assert (=> b!1288249 (not (contains!7978 (+!4298 lt!577903 (tuple2!22145 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42539 0))(
  ( (Unit!42540) )
))
(declare-fun lt!577901 () Unit!42539)

(declare-fun addStillNotContains!343 (ListLongMap!19813 (_ BitVec 64) V!50627 (_ BitVec 64)) Unit!42539)

(assert (=> b!1288249 (= lt!577901 (addStillNotContains!343 lt!577903 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6010 (array!85287 array!85289 (_ BitVec 32) (_ BitVec 32) V!50627 V!50627 (_ BitVec 32) Int) ListLongMap!19813)

(assert (=> b!1288249 (= lt!577903 (getCurrentListMapNoExtraKeys!6010 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288250 () Bool)

(assert (=> b!1288250 (= e!735640 (not e!735643))))

(declare-fun res!855716 () Bool)

(assert (=> b!1288250 (=> res!855716 e!735643)))

(assert (=> b!1288250 (= res!855716 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288250 (not (contains!7978 (ListLongMap!19814 Nil!29340) k0!1205))))

(declare-fun lt!577902 () Unit!42539)

(declare-fun emptyContainsNothing!37 ((_ BitVec 64)) Unit!42539)

(assert (=> b!1288250 (= lt!577902 (emptyContainsNothing!37 k0!1205))))

(declare-fun res!855719 () Bool)

(assert (=> start!109050 (=> (not res!855719) (not e!735640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109050 (= res!855719 (validMask!0 mask!2175))))

(assert (=> start!109050 e!735640))

(assert (=> start!109050 tp_is_empty!34143))

(assert (=> start!109050 true))

(declare-fun array_inv!31169 (array!85289) Bool)

(assert (=> start!109050 (and (array_inv!31169 _values!1445) e!735641)))

(declare-fun array_inv!31170 (array!85287) Bool)

(assert (=> start!109050 (array_inv!31170 _keys!1741)))

(assert (=> start!109050 tp!100629))

(declare-fun b!1288247 () Bool)

(declare-fun res!855717 () Bool)

(assert (=> b!1288247 (=> (not res!855717) (not e!735640))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288247 (= res!855717 (not (validKeyInArray!0 (select (arr!41140 _keys!1741) from!2144))))))

(assert (= (and start!109050 res!855719) b!1288246))

(assert (= (and b!1288246 res!855712) b!1288244))

(assert (= (and b!1288244 res!855715) b!1288248))

(assert (= (and b!1288248 res!855718) b!1288239))

(assert (= (and b!1288239 res!855713) b!1288243))

(assert (= (and b!1288243 res!855720) b!1288245))

(assert (= (and b!1288245 res!855714) b!1288247))

(assert (= (and b!1288247 res!855717) b!1288250))

(assert (= (and b!1288250 (not res!855716)) b!1288249))

(assert (= (and b!1288241 condMapEmpty!52775) mapIsEmpty!52775))

(assert (= (and b!1288241 (not condMapEmpty!52775)) mapNonEmpty!52775))

(get-info :version)

(assert (= (and mapNonEmpty!52775 ((_ is ValueCellFull!16173) mapValue!52775)) b!1288240))

(assert (= (and b!1288241 ((_ is ValueCellFull!16173) mapDefault!52775)) b!1288242))

(assert (= start!109050 b!1288241))

(declare-fun m!1180909 () Bool)

(assert (=> mapNonEmpty!52775 m!1180909))

(declare-fun m!1180911 () Bool)

(assert (=> b!1288247 m!1180911))

(assert (=> b!1288247 m!1180911))

(declare-fun m!1180913 () Bool)

(assert (=> b!1288247 m!1180913))

(declare-fun m!1180915 () Bool)

(assert (=> b!1288250 m!1180915))

(declare-fun m!1180917 () Bool)

(assert (=> b!1288250 m!1180917))

(declare-fun m!1180919 () Bool)

(assert (=> b!1288249 m!1180919))

(assert (=> b!1288249 m!1180919))

(declare-fun m!1180921 () Bool)

(assert (=> b!1288249 m!1180921))

(declare-fun m!1180923 () Bool)

(assert (=> b!1288249 m!1180923))

(declare-fun m!1180925 () Bool)

(assert (=> b!1288249 m!1180925))

(declare-fun m!1180927 () Bool)

(assert (=> b!1288243 m!1180927))

(assert (=> b!1288243 m!1180927))

(declare-fun m!1180929 () Bool)

(assert (=> b!1288243 m!1180929))

(declare-fun m!1180931 () Bool)

(assert (=> b!1288244 m!1180931))

(declare-fun m!1180933 () Bool)

(assert (=> start!109050 m!1180933))

(declare-fun m!1180935 () Bool)

(assert (=> start!109050 m!1180935))

(declare-fun m!1180937 () Bool)

(assert (=> start!109050 m!1180937))

(declare-fun m!1180939 () Bool)

(assert (=> b!1288248 m!1180939))

(check-sat tp_is_empty!34143 (not b!1288248) (not start!109050) (not b!1288243) (not b!1288247) (not b!1288244) (not mapNonEmpty!52775) (not b_next!28503) (not b!1288249) b_and!46603 (not b!1288250))
(check-sat b_and!46603 (not b_next!28503))
