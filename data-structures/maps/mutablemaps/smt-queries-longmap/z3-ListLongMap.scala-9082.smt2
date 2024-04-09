; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109314 () Bool)

(assert start!109314)

(declare-fun b_free!28767 () Bool)

(declare-fun b_next!28767 () Bool)

(assert (=> start!109314 (= b_free!28767 (not b_next!28767))))

(declare-fun tp!101421 () Bool)

(declare-fun b_and!46867 () Bool)

(assert (=> start!109314 (= tp!101421 b_and!46867)))

(declare-fun b!1292910 () Bool)

(declare-fun res!859202 () Bool)

(declare-fun e!737938 () Bool)

(assert (=> b!1292910 (=> (not res!859202) (not e!737938))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85803 0))(
  ( (array!85804 (arr!41398 (Array (_ BitVec 32) (_ BitVec 64))) (size!41949 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85803)

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1292910 (= res!859202 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41949 _keys!1741))))))

(declare-fun b!1292911 () Bool)

(declare-fun e!737936 () Bool)

(assert (=> b!1292911 (= e!737938 (not e!737936))))

(declare-fun res!859199 () Bool)

(assert (=> b!1292911 (=> res!859199 e!737936)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292911 (= res!859199 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!50979 0))(
  ( (V!50980 (val!17278 Int)) )
))
(declare-datatypes ((tuple2!22370 0))(
  ( (tuple2!22371 (_1!11195 (_ BitVec 64)) (_2!11195 V!50979)) )
))
(declare-datatypes ((List!29554 0))(
  ( (Nil!29551) (Cons!29550 (h!30759 tuple2!22370) (t!43125 List!29554)) )
))
(declare-datatypes ((ListLongMap!20039 0))(
  ( (ListLongMap!20040 (toList!10035 List!29554)) )
))
(declare-fun contains!8091 (ListLongMap!20039 (_ BitVec 64)) Bool)

(assert (=> b!1292911 (not (contains!8091 (ListLongMap!20040 Nil!29551) k0!1205))))

(declare-datatypes ((Unit!42749 0))(
  ( (Unit!42750) )
))
(declare-fun lt!579378 () Unit!42749)

(declare-fun emptyContainsNothing!131 ((_ BitVec 64)) Unit!42749)

(assert (=> b!1292911 (= lt!579378 (emptyContainsNothing!131 k0!1205))))

(declare-fun b!1292912 () Bool)

(declare-fun e!737935 () Bool)

(declare-fun tp_is_empty!34407 () Bool)

(assert (=> b!1292912 (= e!737935 tp_is_empty!34407)))

(declare-fun b!1292913 () Bool)

(assert (=> b!1292913 (= e!737936 true)))

(declare-fun lt!579379 () ListLongMap!20039)

(declare-fun zeroValue!1387 () V!50979)

(declare-fun +!4368 (ListLongMap!20039 tuple2!22370) ListLongMap!20039)

(assert (=> b!1292913 (not (contains!8091 (+!4368 lt!579379 (tuple2!22371 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!579377 () Unit!42749)

(declare-fun addStillNotContains!413 (ListLongMap!20039 (_ BitVec 64) V!50979 (_ BitVec 64)) Unit!42749)

(assert (=> b!1292913 (= lt!579377 (addStillNotContains!413 lt!579379 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50979)

(declare-datatypes ((ValueCell!16305 0))(
  ( (ValueCellFull!16305 (v!19879 V!50979)) (EmptyCell!16305) )
))
(declare-datatypes ((array!85805 0))(
  ( (array!85806 (arr!41399 (Array (_ BitVec 32) ValueCell!16305)) (size!41950 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85805)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6081 (array!85803 array!85805 (_ BitVec 32) (_ BitVec 32) V!50979 V!50979 (_ BitVec 32) Int) ListLongMap!20039)

(assert (=> b!1292913 (= lt!579379 (getCurrentListMapNoExtraKeys!6081 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1292914 () Bool)

(declare-fun e!737933 () Bool)

(assert (=> b!1292914 (= e!737933 tp_is_empty!34407)))

(declare-fun b!1292915 () Bool)

(declare-fun res!859198 () Bool)

(assert (=> b!1292915 (=> (not res!859198) (not e!737938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292915 (= res!859198 (not (validKeyInArray!0 (select (arr!41398 _keys!1741) from!2144))))))

(declare-fun b!1292916 () Bool)

(declare-fun res!859195 () Bool)

(assert (=> b!1292916 (=> (not res!859195) (not e!737938))))

(assert (=> b!1292916 (= res!859195 (and (= (size!41950 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41949 _keys!1741) (size!41950 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292917 () Bool)

(declare-fun res!859203 () Bool)

(assert (=> b!1292917 (=> (not res!859203) (not e!737938))))

(declare-datatypes ((List!29555 0))(
  ( (Nil!29552) (Cons!29551 (h!30760 (_ BitVec 64)) (t!43126 List!29555)) )
))
(declare-fun arrayNoDuplicates!0 (array!85803 (_ BitVec 32) List!29555) Bool)

(assert (=> b!1292917 (= res!859203 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29552))))

(declare-fun b!1292918 () Bool)

(declare-fun res!859200 () Bool)

(assert (=> b!1292918 (=> (not res!859200) (not e!737938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85803 (_ BitVec 32)) Bool)

(assert (=> b!1292918 (= res!859200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53171 () Bool)

(declare-fun mapRes!53171 () Bool)

(assert (=> mapIsEmpty!53171 mapRes!53171))

(declare-fun b!1292919 () Bool)

(declare-fun res!859201 () Bool)

(assert (=> b!1292919 (=> (not res!859201) (not e!737938))))

(assert (=> b!1292919 (= res!859201 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41949 _keys!1741))))))

(declare-fun mapNonEmpty!53171 () Bool)

(declare-fun tp!101420 () Bool)

(assert (=> mapNonEmpty!53171 (= mapRes!53171 (and tp!101420 e!737935))))

(declare-fun mapKey!53171 () (_ BitVec 32))

(declare-fun mapRest!53171 () (Array (_ BitVec 32) ValueCell!16305))

(declare-fun mapValue!53171 () ValueCell!16305)

(assert (=> mapNonEmpty!53171 (= (arr!41399 _values!1445) (store mapRest!53171 mapKey!53171 mapValue!53171))))

(declare-fun res!859197 () Bool)

(assert (=> start!109314 (=> (not res!859197) (not e!737938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109314 (= res!859197 (validMask!0 mask!2175))))

(assert (=> start!109314 e!737938))

(assert (=> start!109314 tp_is_empty!34407))

(assert (=> start!109314 true))

(declare-fun e!737934 () Bool)

(declare-fun array_inv!31339 (array!85805) Bool)

(assert (=> start!109314 (and (array_inv!31339 _values!1445) e!737934)))

(declare-fun array_inv!31340 (array!85803) Bool)

(assert (=> start!109314 (array_inv!31340 _keys!1741)))

(assert (=> start!109314 tp!101421))

(declare-fun b!1292920 () Bool)

(declare-fun res!859196 () Bool)

(assert (=> b!1292920 (=> (not res!859196) (not e!737938))))

(declare-fun getCurrentListMap!5023 (array!85803 array!85805 (_ BitVec 32) (_ BitVec 32) V!50979 V!50979 (_ BitVec 32) Int) ListLongMap!20039)

(assert (=> b!1292920 (= res!859196 (contains!8091 (getCurrentListMap!5023 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292921 () Bool)

(assert (=> b!1292921 (= e!737934 (and e!737933 mapRes!53171))))

(declare-fun condMapEmpty!53171 () Bool)

(declare-fun mapDefault!53171 () ValueCell!16305)

(assert (=> b!1292921 (= condMapEmpty!53171 (= (arr!41399 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16305)) mapDefault!53171)))))

(assert (= (and start!109314 res!859197) b!1292916))

(assert (= (and b!1292916 res!859195) b!1292918))

(assert (= (and b!1292918 res!859200) b!1292917))

(assert (= (and b!1292917 res!859203) b!1292919))

(assert (= (and b!1292919 res!859201) b!1292920))

(assert (= (and b!1292920 res!859196) b!1292910))

(assert (= (and b!1292910 res!859202) b!1292915))

(assert (= (and b!1292915 res!859198) b!1292911))

(assert (= (and b!1292911 (not res!859199)) b!1292913))

(assert (= (and b!1292921 condMapEmpty!53171) mapIsEmpty!53171))

(assert (= (and b!1292921 (not condMapEmpty!53171)) mapNonEmpty!53171))

(get-info :version)

(assert (= (and mapNonEmpty!53171 ((_ is ValueCellFull!16305) mapValue!53171)) b!1292912))

(assert (= (and b!1292921 ((_ is ValueCellFull!16305) mapDefault!53171)) b!1292914))

(assert (= start!109314 b!1292921))

(declare-fun m!1185397 () Bool)

(assert (=> b!1292920 m!1185397))

(assert (=> b!1292920 m!1185397))

(declare-fun m!1185399 () Bool)

(assert (=> b!1292920 m!1185399))

(declare-fun m!1185401 () Bool)

(assert (=> b!1292915 m!1185401))

(assert (=> b!1292915 m!1185401))

(declare-fun m!1185403 () Bool)

(assert (=> b!1292915 m!1185403))

(declare-fun m!1185405 () Bool)

(assert (=> b!1292918 m!1185405))

(declare-fun m!1185407 () Bool)

(assert (=> b!1292917 m!1185407))

(declare-fun m!1185409 () Bool)

(assert (=> start!109314 m!1185409))

(declare-fun m!1185411 () Bool)

(assert (=> start!109314 m!1185411))

(declare-fun m!1185413 () Bool)

(assert (=> start!109314 m!1185413))

(declare-fun m!1185415 () Bool)

(assert (=> b!1292911 m!1185415))

(declare-fun m!1185417 () Bool)

(assert (=> b!1292911 m!1185417))

(declare-fun m!1185419 () Bool)

(assert (=> b!1292913 m!1185419))

(assert (=> b!1292913 m!1185419))

(declare-fun m!1185421 () Bool)

(assert (=> b!1292913 m!1185421))

(declare-fun m!1185423 () Bool)

(assert (=> b!1292913 m!1185423))

(declare-fun m!1185425 () Bool)

(assert (=> b!1292913 m!1185425))

(declare-fun m!1185427 () Bool)

(assert (=> mapNonEmpty!53171 m!1185427))

(check-sat (not b!1292913) b_and!46867 (not b!1292920) (not b_next!28767) (not b!1292911) (not mapNonEmpty!53171) (not b!1292918) tp_is_empty!34407 (not start!109314) (not b!1292915) (not b!1292917))
(check-sat b_and!46867 (not b_next!28767))
