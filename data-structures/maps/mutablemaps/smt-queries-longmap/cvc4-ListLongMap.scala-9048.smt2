; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109112 () Bool)

(assert start!109112)

(declare-fun b_free!28565 () Bool)

(declare-fun b_next!28565 () Bool)

(assert (=> start!109112 (= b_free!28565 (not b_next!28565))))

(declare-fun tp!100815 () Bool)

(declare-fun b_and!46665 () Bool)

(assert (=> start!109112 (= tp!100815 b_and!46665)))

(declare-fun b!1289355 () Bool)

(declare-fun e!736199 () Bool)

(declare-fun tp_is_empty!34205 () Bool)

(assert (=> b!1289355 (= e!736199 tp_is_empty!34205)))

(declare-fun b!1289356 () Bool)

(declare-fun e!736198 () Bool)

(assert (=> b!1289356 (= e!736198 true)))

(declare-datatypes ((V!50709 0))(
  ( (V!50710 (val!17177 Int)) )
))
(declare-datatypes ((tuple2!22194 0))(
  ( (tuple2!22195 (_1!11107 (_ BitVec 64)) (_2!11107 V!50709)) )
))
(declare-datatypes ((List!29394 0))(
  ( (Nil!29391) (Cons!29390 (h!30599 tuple2!22194) (t!42965 List!29394)) )
))
(declare-datatypes ((ListLongMap!19863 0))(
  ( (ListLongMap!19864 (toList!9947 List!29394)) )
))
(declare-fun lt!578200 () ListLongMap!19863)

(declare-fun minValue!1387 () V!50709)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8003 (ListLongMap!19863 (_ BitVec 64)) Bool)

(declare-fun +!4320 (ListLongMap!19863 tuple2!22194) ListLongMap!19863)

(assert (=> b!1289356 (not (contains!8003 (+!4320 lt!578200 (tuple2!22195 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42589 0))(
  ( (Unit!42590) )
))
(declare-fun lt!578198 () Unit!42589)

(declare-fun addStillNotContains!365 (ListLongMap!19863 (_ BitVec 64) V!50709 (_ BitVec 64)) Unit!42589)

(assert (=> b!1289356 (= lt!578198 (addStillNotContains!365 lt!578200 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50709)

(assert (=> b!1289356 (not (contains!8003 (+!4320 lt!578200 (tuple2!22195 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578199 () Unit!42589)

(assert (=> b!1289356 (= lt!578199 (addStillNotContains!365 lt!578200 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16204 0))(
  ( (ValueCellFull!16204 (v!19778 V!50709)) (EmptyCell!16204) )
))
(declare-datatypes ((array!85409 0))(
  ( (array!85410 (arr!41201 (Array (_ BitVec 32) ValueCell!16204)) (size!41752 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85409)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85411 0))(
  ( (array!85412 (arr!41202 (Array (_ BitVec 32) (_ BitVec 64))) (size!41753 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85411)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6032 (array!85411 array!85409 (_ BitVec 32) (_ BitVec 32) V!50709 V!50709 (_ BitVec 32) Int) ListLongMap!19863)

(assert (=> b!1289356 (= lt!578200 (getCurrentListMapNoExtraKeys!6032 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289357 () Bool)

(declare-fun res!856554 () Bool)

(declare-fun e!736201 () Bool)

(assert (=> b!1289357 (=> (not res!856554) (not e!736201))))

(assert (=> b!1289357 (= res!856554 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41753 _keys!1741))))))

(declare-fun b!1289358 () Bool)

(declare-fun res!856552 () Bool)

(assert (=> b!1289358 (=> (not res!856552) (not e!736201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289358 (= res!856552 (not (validKeyInArray!0 (select (arr!41202 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!52868 () Bool)

(declare-fun mapRes!52868 () Bool)

(assert (=> mapIsEmpty!52868 mapRes!52868))

(declare-fun res!856555 () Bool)

(assert (=> start!109112 (=> (not res!856555) (not e!736201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109112 (= res!856555 (validMask!0 mask!2175))))

(assert (=> start!109112 e!736201))

(assert (=> start!109112 tp_is_empty!34205))

(assert (=> start!109112 true))

(declare-fun e!736196 () Bool)

(declare-fun array_inv!31209 (array!85409) Bool)

(assert (=> start!109112 (and (array_inv!31209 _values!1445) e!736196)))

(declare-fun array_inv!31210 (array!85411) Bool)

(assert (=> start!109112 (array_inv!31210 _keys!1741)))

(assert (=> start!109112 tp!100815))

(declare-fun b!1289359 () Bool)

(declare-fun e!736197 () Bool)

(assert (=> b!1289359 (= e!736197 tp_is_empty!34205)))

(declare-fun mapNonEmpty!52868 () Bool)

(declare-fun tp!100814 () Bool)

(assert (=> mapNonEmpty!52868 (= mapRes!52868 (and tp!100814 e!736197))))

(declare-fun mapValue!52868 () ValueCell!16204)

(declare-fun mapRest!52868 () (Array (_ BitVec 32) ValueCell!16204))

(declare-fun mapKey!52868 () (_ BitVec 32))

(assert (=> mapNonEmpty!52868 (= (arr!41201 _values!1445) (store mapRest!52868 mapKey!52868 mapValue!52868))))

(declare-fun b!1289360 () Bool)

(declare-fun res!856556 () Bool)

(assert (=> b!1289360 (=> (not res!856556) (not e!736201))))

(declare-fun getCurrentListMap!4950 (array!85411 array!85409 (_ BitVec 32) (_ BitVec 32) V!50709 V!50709 (_ BitVec 32) Int) ListLongMap!19863)

(assert (=> b!1289360 (= res!856556 (contains!8003 (getCurrentListMap!4950 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289361 () Bool)

(declare-fun res!856549 () Bool)

(assert (=> b!1289361 (=> (not res!856549) (not e!736201))))

(declare-datatypes ((List!29395 0))(
  ( (Nil!29392) (Cons!29391 (h!30600 (_ BitVec 64)) (t!42966 List!29395)) )
))
(declare-fun arrayNoDuplicates!0 (array!85411 (_ BitVec 32) List!29395) Bool)

(assert (=> b!1289361 (= res!856549 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29392))))

(declare-fun b!1289362 () Bool)

(declare-fun res!856550 () Bool)

(assert (=> b!1289362 (=> (not res!856550) (not e!736201))))

(assert (=> b!1289362 (= res!856550 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41753 _keys!1741))))))

(declare-fun b!1289363 () Bool)

(assert (=> b!1289363 (= e!736201 (not e!736198))))

(declare-fun res!856557 () Bool)

(assert (=> b!1289363 (=> res!856557 e!736198)))

(assert (=> b!1289363 (= res!856557 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289363 (not (contains!8003 (ListLongMap!19864 Nil!29391) k!1205))))

(declare-fun lt!578197 () Unit!42589)

(declare-fun emptyContainsNothing!59 ((_ BitVec 64)) Unit!42589)

(assert (=> b!1289363 (= lt!578197 (emptyContainsNothing!59 k!1205))))

(declare-fun b!1289364 () Bool)

(declare-fun res!856551 () Bool)

(assert (=> b!1289364 (=> (not res!856551) (not e!736201))))

(assert (=> b!1289364 (= res!856551 (and (= (size!41752 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41753 _keys!1741) (size!41752 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289365 () Bool)

(declare-fun res!856553 () Bool)

(assert (=> b!1289365 (=> (not res!856553) (not e!736201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85411 (_ BitVec 32)) Bool)

(assert (=> b!1289365 (= res!856553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289366 () Bool)

(assert (=> b!1289366 (= e!736196 (and e!736199 mapRes!52868))))

(declare-fun condMapEmpty!52868 () Bool)

(declare-fun mapDefault!52868 () ValueCell!16204)

