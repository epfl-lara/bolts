; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109142 () Bool)

(assert start!109142)

(declare-fun b_free!28595 () Bool)

(declare-fun b_next!28595 () Bool)

(assert (=> start!109142 (= b_free!28595 (not b_next!28595))))

(declare-fun tp!100905 () Bool)

(declare-fun b_and!46695 () Bool)

(assert (=> start!109142 (= tp!100905 b_and!46695)))

(declare-fun b!1289895 () Bool)

(declare-fun res!856958 () Bool)

(declare-fun e!736470 () Bool)

(assert (=> b!1289895 (=> (not res!856958) (not e!736470))))

(declare-datatypes ((V!50749 0))(
  ( (V!50750 (val!17192 Int)) )
))
(declare-fun minValue!1387 () V!50749)

(declare-fun zeroValue!1387 () V!50749)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16219 0))(
  ( (ValueCellFull!16219 (v!19793 V!50749)) (EmptyCell!16219) )
))
(declare-datatypes ((array!85469 0))(
  ( (array!85470 (arr!41231 (Array (_ BitVec 32) ValueCell!16219)) (size!41782 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85469)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85471 0))(
  ( (array!85472 (arr!41232 (Array (_ BitVec 32) (_ BitVec 64))) (size!41783 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85471)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22222 0))(
  ( (tuple2!22223 (_1!11121 (_ BitVec 64)) (_2!11121 V!50749)) )
))
(declare-datatypes ((List!29419 0))(
  ( (Nil!29416) (Cons!29415 (h!30624 tuple2!22222) (t!42990 List!29419)) )
))
(declare-datatypes ((ListLongMap!19891 0))(
  ( (ListLongMap!19892 (toList!9961 List!29419)) )
))
(declare-fun contains!8017 (ListLongMap!19891 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4963 (array!85471 array!85469 (_ BitVec 32) (_ BitVec 32) V!50749 V!50749 (_ BitVec 32) Int) ListLongMap!19891)

(assert (=> b!1289895 (= res!856958 (contains!8017 (getCurrentListMap!4963 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289896 () Bool)

(declare-fun e!736466 () Bool)

(declare-fun tp_is_empty!34235 () Bool)

(assert (=> b!1289896 (= e!736466 tp_is_empty!34235)))

(declare-fun b!1289897 () Bool)

(declare-fun e!736469 () Bool)

(assert (=> b!1289897 (= e!736469 true)))

(declare-fun lt!578379 () ListLongMap!19891)

(declare-fun +!4331 (ListLongMap!19891 tuple2!22222) ListLongMap!19891)

(assert (=> b!1289897 (not (contains!8017 (+!4331 lt!578379 (tuple2!22223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42613 0))(
  ( (Unit!42614) )
))
(declare-fun lt!578378 () Unit!42613)

(declare-fun addStillNotContains!376 (ListLongMap!19891 (_ BitVec 64) V!50749 (_ BitVec 64)) Unit!42613)

(assert (=> b!1289897 (= lt!578378 (addStillNotContains!376 lt!578379 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1289897 (not (contains!8017 (+!4331 lt!578379 (tuple2!22223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578380 () Unit!42613)

(assert (=> b!1289897 (= lt!578380 (addStillNotContains!376 lt!578379 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6043 (array!85471 array!85469 (_ BitVec 32) (_ BitVec 32) V!50749 V!50749 (_ BitVec 32) Int) ListLongMap!19891)

(assert (=> b!1289897 (= lt!578379 (getCurrentListMapNoExtraKeys!6043 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289898 () Bool)

(declare-fun res!856962 () Bool)

(assert (=> b!1289898 (=> (not res!856962) (not e!736470))))

(declare-datatypes ((List!29420 0))(
  ( (Nil!29417) (Cons!29416 (h!30625 (_ BitVec 64)) (t!42991 List!29420)) )
))
(declare-fun arrayNoDuplicates!0 (array!85471 (_ BitVec 32) List!29420) Bool)

(assert (=> b!1289898 (= res!856962 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29417))))

(declare-fun b!1289899 () Bool)

(declare-fun res!856956 () Bool)

(assert (=> b!1289899 (=> (not res!856956) (not e!736470))))

(assert (=> b!1289899 (= res!856956 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41783 _keys!1741))))))

(declare-fun b!1289900 () Bool)

(declare-fun res!856955 () Bool)

(assert (=> b!1289900 (=> (not res!856955) (not e!736470))))

(assert (=> b!1289900 (= res!856955 (and (= (size!41782 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41783 _keys!1741) (size!41782 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289901 () Bool)

(declare-fun res!856960 () Bool)

(assert (=> b!1289901 (=> (not res!856960) (not e!736470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85471 (_ BitVec 32)) Bool)

(assert (=> b!1289901 (= res!856960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289902 () Bool)

(declare-fun res!856954 () Bool)

(assert (=> b!1289902 (=> (not res!856954) (not e!736470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289902 (= res!856954 (not (validKeyInArray!0 (select (arr!41232 _keys!1741) from!2144))))))

(declare-fun b!1289903 () Bool)

(assert (=> b!1289903 (= e!736470 (not e!736469))))

(declare-fun res!856961 () Bool)

(assert (=> b!1289903 (=> res!856961 e!736469)))

(assert (=> b!1289903 (= res!856961 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289903 (not (contains!8017 (ListLongMap!19892 Nil!29416) k!1205))))

(declare-fun lt!578377 () Unit!42613)

(declare-fun emptyContainsNothing!68 ((_ BitVec 64)) Unit!42613)

(assert (=> b!1289903 (= lt!578377 (emptyContainsNothing!68 k!1205))))

(declare-fun b!1289904 () Bool)

(declare-fun e!736467 () Bool)

(assert (=> b!1289904 (= e!736467 tp_is_empty!34235)))

(declare-fun b!1289905 () Bool)

(declare-fun e!736468 () Bool)

(declare-fun mapRes!52913 () Bool)

(assert (=> b!1289905 (= e!736468 (and e!736467 mapRes!52913))))

(declare-fun condMapEmpty!52913 () Bool)

(declare-fun mapDefault!52913 () ValueCell!16219)

