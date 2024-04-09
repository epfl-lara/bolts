; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110262 () Bool)

(assert start!110262)

(declare-fun b_free!29297 () Bool)

(declare-fun b_next!29297 () Bool)

(assert (=> start!110262 (= b_free!29297 (not b_next!29297))))

(declare-fun tp!103054 () Bool)

(declare-fun b_and!47497 () Bool)

(assert (=> start!110262 (= tp!103054 b_and!47497)))

(declare-fun b!1304765 () Bool)

(declare-fun e!744284 () Bool)

(assert (=> b!1304765 (= e!744284 false)))

(declare-datatypes ((V!51685 0))(
  ( (V!51686 (val!17543 Int)) )
))
(declare-datatypes ((tuple2!22802 0))(
  ( (tuple2!22803 (_1!11411 (_ BitVec 64)) (_2!11411 V!51685)) )
))
(declare-datatypes ((List!29952 0))(
  ( (Nil!29949) (Cons!29948 (h!31157 tuple2!22802) (t!43559 List!29952)) )
))
(declare-datatypes ((ListLongMap!20471 0))(
  ( (ListLongMap!20472 (toList!10251 List!29952)) )
))
(declare-fun lt!583970 () ListLongMap!20471)

(declare-fun minValue!1387 () V!51685)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8328 (ListLongMap!20471 (_ BitVec 64)) Bool)

(declare-fun +!4468 (ListLongMap!20471 tuple2!22802) ListLongMap!20471)

(assert (=> b!1304765 (not (contains!8328 (+!4468 lt!583970 (tuple2!22803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!43162 0))(
  ( (Unit!43163) )
))
(declare-fun lt!583972 () Unit!43162)

(declare-fun addStillNotContains!492 (ListLongMap!20471 (_ BitVec 64) V!51685 (_ BitVec 64)) Unit!43162)

(assert (=> b!1304765 (= lt!583972 (addStillNotContains!492 lt!583970 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51685)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16570 0))(
  ( (ValueCellFull!16570 (v!20162 V!51685)) (EmptyCell!16570) )
))
(declare-datatypes ((array!86855 0))(
  ( (array!86856 (arr!41911 (Array (_ BitVec 32) ValueCell!16570)) (size!42462 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86855)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86857 0))(
  ( (array!86858 (arr!41912 (Array (_ BitVec 32) (_ BitVec 64))) (size!42463 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86857)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6185 (array!86857 array!86855 (_ BitVec 32) (_ BitVec 32) V!51685 V!51685 (_ BitVec 32) Int) ListLongMap!20471)

(assert (=> b!1304765 (= lt!583970 (getCurrentListMapNoExtraKeys!6185 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304766 () Bool)

(declare-fun res!866573 () Bool)

(declare-fun e!744283 () Bool)

(assert (=> b!1304766 (=> (not res!866573) (not e!744283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86857 (_ BitVec 32)) Bool)

(assert (=> b!1304766 (= res!866573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1304767 () Bool)

(declare-fun e!744279 () Bool)

(declare-fun e!744280 () Bool)

(declare-fun mapRes!54009 () Bool)

(assert (=> b!1304767 (= e!744279 (and e!744280 mapRes!54009))))

(declare-fun condMapEmpty!54009 () Bool)

(declare-fun mapDefault!54009 () ValueCell!16570)

