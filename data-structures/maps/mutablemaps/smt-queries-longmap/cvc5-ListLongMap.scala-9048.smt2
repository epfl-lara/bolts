; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109108 () Bool)

(assert start!109108)

(declare-fun b_free!28561 () Bool)

(declare-fun b_next!28561 () Bool)

(assert (=> start!109108 (= b_free!28561 (not b_next!28561))))

(declare-fun tp!100802 () Bool)

(declare-fun b_and!46661 () Bool)

(assert (=> start!109108 (= tp!100802 b_and!46661)))

(declare-fun b!1289283 () Bool)

(declare-fun res!856500 () Bool)

(declare-fun e!736163 () Bool)

(assert (=> b!1289283 (=> (not res!856500) (not e!736163))))

(declare-datatypes ((V!50705 0))(
  ( (V!50706 (val!17175 Int)) )
))
(declare-fun minValue!1387 () V!50705)

(declare-fun zeroValue!1387 () V!50705)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16202 0))(
  ( (ValueCellFull!16202 (v!19776 V!50705)) (EmptyCell!16202) )
))
(declare-datatypes ((array!85401 0))(
  ( (array!85402 (arr!41197 (Array (_ BitVec 32) ValueCell!16202)) (size!41748 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85401)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85403 0))(
  ( (array!85404 (arr!41198 (Array (_ BitVec 32) (_ BitVec 64))) (size!41749 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85403)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22190 0))(
  ( (tuple2!22191 (_1!11105 (_ BitVec 64)) (_2!11105 V!50705)) )
))
(declare-datatypes ((List!29390 0))(
  ( (Nil!29387) (Cons!29386 (h!30595 tuple2!22190) (t!42961 List!29390)) )
))
(declare-datatypes ((ListLongMap!19859 0))(
  ( (ListLongMap!19860 (toList!9945 List!29390)) )
))
(declare-fun contains!8001 (ListLongMap!19859 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4948 (array!85403 array!85401 (_ BitVec 32) (_ BitVec 32) V!50705 V!50705 (_ BitVec 32) Int) ListLongMap!19859)

(assert (=> b!1289283 (= res!856500 (contains!8001 (getCurrentListMap!4948 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289284 () Bool)

(declare-fun res!856501 () Bool)

(assert (=> b!1289284 (=> (not res!856501) (not e!736163))))

(declare-datatypes ((List!29391 0))(
  ( (Nil!29388) (Cons!29387 (h!30596 (_ BitVec 64)) (t!42962 List!29391)) )
))
(declare-fun arrayNoDuplicates!0 (array!85403 (_ BitVec 32) List!29391) Bool)

(assert (=> b!1289284 (= res!856501 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29388))))

(declare-fun b!1289285 () Bool)

(declare-fun res!856496 () Bool)

(assert (=> b!1289285 (=> (not res!856496) (not e!736163))))

(assert (=> b!1289285 (= res!856496 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41749 _keys!1741))))))

(declare-fun b!1289286 () Bool)

(declare-fun res!856497 () Bool)

(assert (=> b!1289286 (=> (not res!856497) (not e!736163))))

(assert (=> b!1289286 (= res!856497 (and (= (size!41748 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41749 _keys!1741) (size!41748 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289287 () Bool)

(declare-fun res!856495 () Bool)

(assert (=> b!1289287 (=> (not res!856495) (not e!736163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289287 (= res!856495 (not (validKeyInArray!0 (select (arr!41198 _keys!1741) from!2144))))))

(declare-fun b!1289288 () Bool)

(declare-fun e!736160 () Bool)

(declare-fun tp_is_empty!34201 () Bool)

(assert (=> b!1289288 (= e!736160 tp_is_empty!34201)))

(declare-fun b!1289289 () Bool)

(declare-fun e!736162 () Bool)

(assert (=> b!1289289 (= e!736162 tp_is_empty!34201)))

(declare-fun b!1289290 () Bool)

(declare-fun res!856499 () Bool)

(assert (=> b!1289290 (=> (not res!856499) (not e!736163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85403 (_ BitVec 32)) Bool)

(assert (=> b!1289290 (= res!856499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!856498 () Bool)

(assert (=> start!109108 (=> (not res!856498) (not e!736163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109108 (= res!856498 (validMask!0 mask!2175))))

(assert (=> start!109108 e!736163))

(assert (=> start!109108 tp_is_empty!34201))

(assert (=> start!109108 true))

(declare-fun e!736161 () Bool)

(declare-fun array_inv!31205 (array!85401) Bool)

(assert (=> start!109108 (and (array_inv!31205 _values!1445) e!736161)))

(declare-fun array_inv!31206 (array!85403) Bool)

(assert (=> start!109108 (array_inv!31206 _keys!1741)))

(assert (=> start!109108 tp!100802))

(declare-fun b!1289291 () Bool)

(declare-fun e!736164 () Bool)

(assert (=> b!1289291 (= e!736163 (not e!736164))))

(declare-fun res!856503 () Bool)

(assert (=> b!1289291 (=> res!856503 e!736164)))

(assert (=> b!1289291 (= res!856503 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289291 (not (contains!8001 (ListLongMap!19860 Nil!29387) k!1205))))

(declare-datatypes ((Unit!42585 0))(
  ( (Unit!42586) )
))
(declare-fun lt!578174 () Unit!42585)

(declare-fun emptyContainsNothing!57 ((_ BitVec 64)) Unit!42585)

(assert (=> b!1289291 (= lt!578174 (emptyContainsNothing!57 k!1205))))

(declare-fun b!1289292 () Bool)

(assert (=> b!1289292 (= e!736164 true)))

(declare-fun lt!578176 () ListLongMap!19859)

(declare-fun +!4318 (ListLongMap!19859 tuple2!22190) ListLongMap!19859)

(assert (=> b!1289292 (not (contains!8001 (+!4318 lt!578176 (tuple2!22191 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578175 () Unit!42585)

(declare-fun addStillNotContains!363 (ListLongMap!19859 (_ BitVec 64) V!50705 (_ BitVec 64)) Unit!42585)

(assert (=> b!1289292 (= lt!578175 (addStillNotContains!363 lt!578176 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1289292 (not (contains!8001 (+!4318 lt!578176 (tuple2!22191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578173 () Unit!42585)

(assert (=> b!1289292 (= lt!578173 (addStillNotContains!363 lt!578176 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6030 (array!85403 array!85401 (_ BitVec 32) (_ BitVec 32) V!50705 V!50705 (_ BitVec 32) Int) ListLongMap!19859)

(assert (=> b!1289292 (= lt!578176 (getCurrentListMapNoExtraKeys!6030 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!52862 () Bool)

(declare-fun mapRes!52862 () Bool)

(assert (=> mapIsEmpty!52862 mapRes!52862))

(declare-fun b!1289293 () Bool)

(assert (=> b!1289293 (= e!736161 (and e!736160 mapRes!52862))))

(declare-fun condMapEmpty!52862 () Bool)

(declare-fun mapDefault!52862 () ValueCell!16202)

