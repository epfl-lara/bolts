; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109322 () Bool)

(assert start!109322)

(declare-fun b_free!28775 () Bool)

(declare-fun b_next!28775 () Bool)

(assert (=> start!109322 (= b_free!28775 (not b_next!28775))))

(declare-fun tp!101444 () Bool)

(declare-fun b_and!46875 () Bool)

(assert (=> start!109322 (= tp!101444 b_and!46875)))

(declare-fun b!1293054 () Bool)

(declare-fun res!859309 () Bool)

(declare-fun e!738007 () Bool)

(assert (=> b!1293054 (=> (not res!859309) (not e!738007))))

(declare-datatypes ((array!85819 0))(
  ( (array!85820 (arr!41406 (Array (_ BitVec 32) (_ BitVec 64))) (size!41957 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85819)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85819 (_ BitVec 32)) Bool)

(assert (=> b!1293054 (= res!859309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!859305 () Bool)

(assert (=> start!109322 (=> (not res!859305) (not e!738007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109322 (= res!859305 (validMask!0 mask!2175))))

(assert (=> start!109322 e!738007))

(declare-fun tp_is_empty!34415 () Bool)

(assert (=> start!109322 tp_is_empty!34415))

(assert (=> start!109322 true))

(declare-datatypes ((V!50989 0))(
  ( (V!50990 (val!17282 Int)) )
))
(declare-datatypes ((ValueCell!16309 0))(
  ( (ValueCellFull!16309 (v!19883 V!50989)) (EmptyCell!16309) )
))
(declare-datatypes ((array!85821 0))(
  ( (array!85822 (arr!41407 (Array (_ BitVec 32) ValueCell!16309)) (size!41958 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85821)

(declare-fun e!738008 () Bool)

(declare-fun array_inv!31345 (array!85821) Bool)

(assert (=> start!109322 (and (array_inv!31345 _values!1445) e!738008)))

(declare-fun array_inv!31346 (array!85819) Bool)

(assert (=> start!109322 (array_inv!31346 _keys!1741)))

(assert (=> start!109322 tp!101444))

(declare-fun b!1293055 () Bool)

(declare-fun res!859310 () Bool)

(assert (=> b!1293055 (=> (not res!859310) (not e!738007))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1293055 (= res!859310 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41957 _keys!1741))))))

(declare-fun mapIsEmpty!53183 () Bool)

(declare-fun mapRes!53183 () Bool)

(assert (=> mapIsEmpty!53183 mapRes!53183))

(declare-fun b!1293056 () Bool)

(declare-fun e!738006 () Bool)

(assert (=> b!1293056 (= e!738006 true)))

(declare-datatypes ((tuple2!22378 0))(
  ( (tuple2!22379 (_1!11199 (_ BitVec 64)) (_2!11199 V!50989)) )
))
(declare-datatypes ((List!29562 0))(
  ( (Nil!29559) (Cons!29558 (h!30767 tuple2!22378) (t!43133 List!29562)) )
))
(declare-datatypes ((ListLongMap!20047 0))(
  ( (ListLongMap!20048 (toList!10039 List!29562)) )
))
(declare-fun lt!579414 () ListLongMap!20047)

(declare-fun zeroValue!1387 () V!50989)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8095 (ListLongMap!20047 (_ BitVec 64)) Bool)

(declare-fun +!4372 (ListLongMap!20047 tuple2!22378) ListLongMap!20047)

(assert (=> b!1293056 (not (contains!8095 (+!4372 lt!579414 (tuple2!22379 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42757 0))(
  ( (Unit!42758) )
))
(declare-fun lt!579413 () Unit!42757)

(declare-fun addStillNotContains!417 (ListLongMap!20047 (_ BitVec 64) V!50989 (_ BitVec 64)) Unit!42757)

(assert (=> b!1293056 (= lt!579413 (addStillNotContains!417 lt!579414 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50989)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6085 (array!85819 array!85821 (_ BitVec 32) (_ BitVec 32) V!50989 V!50989 (_ BitVec 32) Int) ListLongMap!20047)

(assert (=> b!1293056 (= lt!579414 (getCurrentListMapNoExtraKeys!6085 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293057 () Bool)

(declare-fun e!738009 () Bool)

(assert (=> b!1293057 (= e!738009 tp_is_empty!34415)))

(declare-fun b!1293058 () Bool)

(assert (=> b!1293058 (= e!738007 (not e!738006))))

(declare-fun res!859304 () Bool)

(assert (=> b!1293058 (=> res!859304 e!738006)))

(assert (=> b!1293058 (= res!859304 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293058 (not (contains!8095 (ListLongMap!20048 Nil!29559) k!1205))))

(declare-fun lt!579415 () Unit!42757)

(declare-fun emptyContainsNothing!135 ((_ BitVec 64)) Unit!42757)

(assert (=> b!1293058 (= lt!579415 (emptyContainsNothing!135 k!1205))))

(declare-fun mapNonEmpty!53183 () Bool)

(declare-fun tp!101445 () Bool)

(assert (=> mapNonEmpty!53183 (= mapRes!53183 (and tp!101445 e!738009))))

(declare-fun mapValue!53183 () ValueCell!16309)

(declare-fun mapKey!53183 () (_ BitVec 32))

(declare-fun mapRest!53183 () (Array (_ BitVec 32) ValueCell!16309))

(assert (=> mapNonEmpty!53183 (= (arr!41407 _values!1445) (store mapRest!53183 mapKey!53183 mapValue!53183))))

(declare-fun b!1293059 () Bool)

(declare-fun res!859311 () Bool)

(assert (=> b!1293059 (=> (not res!859311) (not e!738007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293059 (= res!859311 (not (validKeyInArray!0 (select (arr!41406 _keys!1741) from!2144))))))

(declare-fun b!1293060 () Bool)

(declare-fun res!859308 () Bool)

(assert (=> b!1293060 (=> (not res!859308) (not e!738007))))

(declare-datatypes ((List!29563 0))(
  ( (Nil!29560) (Cons!29559 (h!30768 (_ BitVec 64)) (t!43134 List!29563)) )
))
(declare-fun arrayNoDuplicates!0 (array!85819 (_ BitVec 32) List!29563) Bool)

(assert (=> b!1293060 (= res!859308 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29560))))

(declare-fun b!1293061 () Bool)

(declare-fun res!859306 () Bool)

(assert (=> b!1293061 (=> (not res!859306) (not e!738007))))

(declare-fun getCurrentListMap!5026 (array!85819 array!85821 (_ BitVec 32) (_ BitVec 32) V!50989 V!50989 (_ BitVec 32) Int) ListLongMap!20047)

(assert (=> b!1293061 (= res!859306 (contains!8095 (getCurrentListMap!5026 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293062 () Bool)

(declare-fun res!859303 () Bool)

(assert (=> b!1293062 (=> (not res!859303) (not e!738007))))

(assert (=> b!1293062 (= res!859303 (and (= (size!41958 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41957 _keys!1741) (size!41958 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293063 () Bool)

(declare-fun e!738010 () Bool)

(assert (=> b!1293063 (= e!738008 (and e!738010 mapRes!53183))))

(declare-fun condMapEmpty!53183 () Bool)

(declare-fun mapDefault!53183 () ValueCell!16309)

