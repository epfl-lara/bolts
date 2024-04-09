; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110062 () Bool)

(assert start!110062)

(declare-fun b_free!29249 () Bool)

(declare-fun b_next!29249 () Bool)

(assert (=> start!110062 (= b_free!29249 (not b_next!29249))))

(declare-fun tp!102896 () Bool)

(declare-fun b_and!47417 () Bool)

(assert (=> start!110062 (= tp!102896 b_and!47417)))

(declare-fun b!1302950 () Bool)

(declare-fun res!865504 () Bool)

(declare-fun e!743227 () Bool)

(assert (=> b!1302950 (=> (not res!865504) (not e!743227))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51621 0))(
  ( (V!51622 (val!17519 Int)) )
))
(declare-datatypes ((ValueCell!16546 0))(
  ( (ValueCellFull!16546 (v!20132 V!51621)) (EmptyCell!16546) )
))
(declare-datatypes ((array!86753 0))(
  ( (array!86754 (arr!41864 (Array (_ BitVec 32) ValueCell!16546)) (size!42415 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86753)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86755 0))(
  ( (array!86756 (arr!41865 (Array (_ BitVec 32) (_ BitVec 64))) (size!42416 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86755)

(assert (=> b!1302950 (= res!865504 (and (= (size!42415 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42416 _keys!1741) (size!42415 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1302951 () Bool)

(declare-fun res!865508 () Bool)

(assert (=> b!1302951 (=> (not res!865508) (not e!743227))))

(declare-datatypes ((List!29911 0))(
  ( (Nil!29908) (Cons!29907 (h!31116 (_ BitVec 64)) (t!43510 List!29911)) )
))
(declare-fun arrayNoDuplicates!0 (array!86755 (_ BitVec 32) List!29911) Bool)

(assert (=> b!1302951 (= res!865508 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29908))))

(declare-fun e!743229 () Bool)

(declare-datatypes ((tuple2!22758 0))(
  ( (tuple2!22759 (_1!11389 (_ BitVec 64)) (_2!11389 V!51621)) )
))
(declare-fun lt!582953 () tuple2!22758)

(declare-datatypes ((List!29912 0))(
  ( (Nil!29909) (Cons!29908 (h!31117 tuple2!22758) (t!43511 List!29912)) )
))
(declare-datatypes ((ListLongMap!20427 0))(
  ( (ListLongMap!20428 (toList!10229 List!29912)) )
))
(declare-fun lt!582949 () ListLongMap!20427)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun b!1302952 () Bool)

(declare-fun contains!8298 (ListLongMap!20427 (_ BitVec 64)) Bool)

(declare-fun +!4449 (ListLongMap!20427 tuple2!22758) ListLongMap!20427)

(assert (=> b!1302952 (= e!743229 (contains!8298 (+!4449 lt!582949 lt!582953) k!1205))))

(declare-fun lt!582948 () ListLongMap!20427)

(assert (=> b!1302952 (not (contains!8298 (+!4449 lt!582948 lt!582953) k!1205))))

(declare-fun minValue!1387 () V!51621)

(assert (=> b!1302952 (= lt!582953 (tuple2!22759 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-datatypes ((Unit!43084 0))(
  ( (Unit!43085) )
))
(declare-fun lt!582952 () Unit!43084)

(declare-fun addStillNotContains!473 (ListLongMap!20427 (_ BitVec 64) V!51621 (_ BitVec 64)) Unit!43084)

(assert (=> b!1302952 (= lt!582952 (addStillNotContains!473 lt!582948 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1302952 (not (contains!8298 lt!582949 k!1205))))

(declare-fun zeroValue!1387 () V!51621)

(assert (=> b!1302952 (= lt!582949 (+!4449 lt!582948 (tuple2!22759 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582951 () Unit!43084)

(assert (=> b!1302952 (= lt!582951 (addStillNotContains!473 lt!582948 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6163 (array!86755 array!86753 (_ BitVec 32) (_ BitVec 32) V!51621 V!51621 (_ BitVec 32) Int) ListLongMap!20427)

(assert (=> b!1302952 (= lt!582948 (getCurrentListMapNoExtraKeys!6163 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1302953 () Bool)

(declare-fun res!865510 () Bool)

(assert (=> b!1302953 (=> (not res!865510) (not e!743227))))

(assert (=> b!1302953 (= res!865510 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42416 _keys!1741))))))

(declare-fun b!1302954 () Bool)

(declare-fun res!865507 () Bool)

(assert (=> b!1302954 (=> (not res!865507) (not e!743227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1302954 (= res!865507 (not (validKeyInArray!0 (select (arr!41865 _keys!1741) from!2144))))))

(declare-fun b!1302955 () Bool)

(declare-fun e!743224 () Bool)

(declare-fun tp_is_empty!34889 () Bool)

(assert (=> b!1302955 (= e!743224 tp_is_empty!34889)))

(declare-fun mapIsEmpty!53923 () Bool)

(declare-fun mapRes!53923 () Bool)

(assert (=> mapIsEmpty!53923 mapRes!53923))

(declare-fun b!1302956 () Bool)

(assert (=> b!1302956 (= e!743227 (not e!743229))))

(declare-fun res!865509 () Bool)

(assert (=> b!1302956 (=> res!865509 e!743229)))

(assert (=> b!1302956 (= res!865509 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1302956 (not (contains!8298 (ListLongMap!20428 Nil!29909) k!1205))))

(declare-fun lt!582950 () Unit!43084)

(declare-fun emptyContainsNothing!217 ((_ BitVec 64)) Unit!43084)

(assert (=> b!1302956 (= lt!582950 (emptyContainsNothing!217 k!1205))))

(declare-fun b!1302958 () Bool)

(declare-fun res!865505 () Bool)

(assert (=> b!1302958 (=> (not res!865505) (not e!743227))))

(assert (=> b!1302958 (= res!865505 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42416 _keys!1741))))))

(declare-fun b!1302959 () Bool)

(declare-fun e!743225 () Bool)

(assert (=> b!1302959 (= e!743225 tp_is_empty!34889)))

(declare-fun mapNonEmpty!53923 () Bool)

(declare-fun tp!102895 () Bool)

(assert (=> mapNonEmpty!53923 (= mapRes!53923 (and tp!102895 e!743224))))

(declare-fun mapRest!53923 () (Array (_ BitVec 32) ValueCell!16546))

(declare-fun mapKey!53923 () (_ BitVec 32))

(declare-fun mapValue!53923 () ValueCell!16546)

(assert (=> mapNonEmpty!53923 (= (arr!41864 _values!1445) (store mapRest!53923 mapKey!53923 mapValue!53923))))

(declare-fun b!1302960 () Bool)

(declare-fun e!743228 () Bool)

(assert (=> b!1302960 (= e!743228 (and e!743225 mapRes!53923))))

(declare-fun condMapEmpty!53923 () Bool)

(declare-fun mapDefault!53923 () ValueCell!16546)

