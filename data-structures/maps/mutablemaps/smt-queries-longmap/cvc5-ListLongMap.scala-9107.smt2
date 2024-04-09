; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109462 () Bool)

(assert start!109462)

(declare-fun b_free!28915 () Bool)

(declare-fun b_next!28915 () Bool)

(assert (=> start!109462 (= b_free!28915 (not b_next!28915))))

(declare-fun tp!101864 () Bool)

(declare-fun b_and!47015 () Bool)

(assert (=> start!109462 (= tp!101864 b_and!47015)))

(declare-fun b!1295493 () Bool)

(declare-fun res!861117 () Bool)

(declare-fun e!739188 () Bool)

(assert (=> b!1295493 (=> (not res!861117) (not e!739188))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86093 0))(
  ( (array!86094 (arr!41543 (Array (_ BitVec 32) (_ BitVec 64))) (size!42094 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86093)

(assert (=> b!1295493 (= res!861117 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42094 _keys!1741))))))

(declare-fun b!1295494 () Bool)

(declare-fun res!861119 () Bool)

(assert (=> b!1295494 (=> (not res!861119) (not e!739188))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86093 (_ BitVec 32)) Bool)

(assert (=> b!1295494 (= res!861119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295495 () Bool)

(declare-fun e!739186 () Bool)

(declare-fun tp_is_empty!34555 () Bool)

(assert (=> b!1295495 (= e!739186 tp_is_empty!34555)))

(declare-fun res!861120 () Bool)

(assert (=> start!109462 (=> (not res!861120) (not e!739188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109462 (= res!861120 (validMask!0 mask!2175))))

(assert (=> start!109462 e!739188))

(assert (=> start!109462 tp_is_empty!34555))

(assert (=> start!109462 true))

(declare-datatypes ((V!51177 0))(
  ( (V!51178 (val!17352 Int)) )
))
(declare-datatypes ((ValueCell!16379 0))(
  ( (ValueCellFull!16379 (v!19953 V!51177)) (EmptyCell!16379) )
))
(declare-datatypes ((array!86095 0))(
  ( (array!86096 (arr!41544 (Array (_ BitVec 32) ValueCell!16379)) (size!42095 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86095)

(declare-fun e!739184 () Bool)

(declare-fun array_inv!31441 (array!86095) Bool)

(assert (=> start!109462 (and (array_inv!31441 _values!1445) e!739184)))

(declare-fun array_inv!31442 (array!86093) Bool)

(assert (=> start!109462 (array_inv!31442 _keys!1741)))

(assert (=> start!109462 tp!101864))

(declare-fun b!1295496 () Bool)

(declare-fun res!861112 () Bool)

(assert (=> b!1295496 (=> (not res!861112) (not e!739188))))

(declare-datatypes ((List!29664 0))(
  ( (Nil!29661) (Cons!29660 (h!30869 (_ BitVec 64)) (t!43235 List!29664)) )
))
(declare-fun arrayNoDuplicates!0 (array!86093 (_ BitVec 32) List!29664) Bool)

(assert (=> b!1295496 (= res!861112 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29661))))

(declare-fun b!1295497 () Bool)

(declare-fun res!861115 () Bool)

(assert (=> b!1295497 (=> (not res!861115) (not e!739188))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1295497 (= res!861115 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42094 _keys!1741))))))

(declare-fun b!1295498 () Bool)

(declare-fun res!861118 () Bool)

(assert (=> b!1295498 (=> (not res!861118) (not e!739188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295498 (= res!861118 (not (validKeyInArray!0 (select (arr!41543 _keys!1741) from!2144))))))

(declare-fun b!1295499 () Bool)

(declare-fun res!861116 () Bool)

(assert (=> b!1295499 (=> (not res!861116) (not e!739188))))

(declare-fun minValue!1387 () V!51177)

(declare-fun zeroValue!1387 () V!51177)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22496 0))(
  ( (tuple2!22497 (_1!11258 (_ BitVec 64)) (_2!11258 V!51177)) )
))
(declare-datatypes ((List!29665 0))(
  ( (Nil!29662) (Cons!29661 (h!30870 tuple2!22496) (t!43236 List!29665)) )
))
(declare-datatypes ((ListLongMap!20165 0))(
  ( (ListLongMap!20166 (toList!10098 List!29665)) )
))
(declare-fun contains!8154 (ListLongMap!20165 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5078 (array!86093 array!86095 (_ BitVec 32) (_ BitVec 32) V!51177 V!51177 (_ BitVec 32) Int) ListLongMap!20165)

(assert (=> b!1295499 (= res!861116 (contains!8154 (getCurrentListMap!5078 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295500 () Bool)

(declare-fun e!739189 () Bool)

(assert (=> b!1295500 (= e!739188 (not e!739189))))

(declare-fun res!861114 () Bool)

(assert (=> b!1295500 (=> res!861114 e!739189)))

(assert (=> b!1295500 (= res!861114 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295500 (not (contains!8154 (ListLongMap!20166 Nil!29662) k!1205))))

(declare-datatypes ((Unit!42859 0))(
  ( (Unit!42860) )
))
(declare-fun lt!579874 () Unit!42859)

(declare-fun emptyContainsNothing!185 ((_ BitVec 64)) Unit!42859)

(assert (=> b!1295500 (= lt!579874 (emptyContainsNothing!185 k!1205))))

(declare-fun b!1295501 () Bool)

(declare-fun e!739185 () Bool)

(assert (=> b!1295501 (= e!739185 tp_is_empty!34555)))

(declare-fun b!1295502 () Bool)

(assert (=> b!1295502 (= e!739189 true)))

(declare-fun lt!579873 () ListLongMap!20165)

(declare-fun +!4399 (ListLongMap!20165 tuple2!22496) ListLongMap!20165)

(assert (=> b!1295502 (not (contains!8154 (+!4399 lt!579873 (tuple2!22497 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579872 () Unit!42859)

(declare-fun addStillNotContains!444 (ListLongMap!20165 (_ BitVec 64) V!51177 (_ BitVec 64)) Unit!42859)

(assert (=> b!1295502 (= lt!579872 (addStillNotContains!444 lt!579873 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6115 (array!86093 array!86095 (_ BitVec 32) (_ BitVec 32) V!51177 V!51177 (_ BitVec 32) Int) ListLongMap!20165)

(assert (=> b!1295502 (= lt!579873 (getCurrentListMapNoExtraKeys!6115 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295503 () Bool)

(declare-fun mapRes!53393 () Bool)

(assert (=> b!1295503 (= e!739184 (and e!739186 mapRes!53393))))

(declare-fun condMapEmpty!53393 () Bool)

(declare-fun mapDefault!53393 () ValueCell!16379)

