; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109310 () Bool)

(assert start!109310)

(declare-fun b_free!28763 () Bool)

(declare-fun b_next!28763 () Bool)

(assert (=> start!109310 (= b_free!28763 (not b_next!28763))))

(declare-fun tp!101409 () Bool)

(declare-fun b_and!46863 () Bool)

(assert (=> start!109310 (= tp!101409 b_and!46863)))

(declare-fun b!1292838 () Bool)

(declare-fun e!737900 () Bool)

(declare-fun e!737899 () Bool)

(assert (=> b!1292838 (= e!737900 (not e!737899))))

(declare-fun res!859146 () Bool)

(assert (=> b!1292838 (=> res!859146 e!737899)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292838 (= res!859146 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50973 0))(
  ( (V!50974 (val!17276 Int)) )
))
(declare-datatypes ((tuple2!22366 0))(
  ( (tuple2!22367 (_1!11193 (_ BitVec 64)) (_2!11193 V!50973)) )
))
(declare-datatypes ((List!29551 0))(
  ( (Nil!29548) (Cons!29547 (h!30756 tuple2!22366) (t!43122 List!29551)) )
))
(declare-datatypes ((ListLongMap!20035 0))(
  ( (ListLongMap!20036 (toList!10033 List!29551)) )
))
(declare-fun contains!8089 (ListLongMap!20035 (_ BitVec 64)) Bool)

(assert (=> b!1292838 (not (contains!8089 (ListLongMap!20036 Nil!29548) k!1205))))

(declare-datatypes ((Unit!42745 0))(
  ( (Unit!42746) )
))
(declare-fun lt!579361 () Unit!42745)

(declare-fun emptyContainsNothing!129 ((_ BitVec 64)) Unit!42745)

(assert (=> b!1292838 (= lt!579361 (emptyContainsNothing!129 k!1205))))

(declare-fun mapNonEmpty!53165 () Bool)

(declare-fun mapRes!53165 () Bool)

(declare-fun tp!101408 () Bool)

(declare-fun e!737897 () Bool)

(assert (=> mapNonEmpty!53165 (= mapRes!53165 (and tp!101408 e!737897))))

(declare-datatypes ((ValueCell!16303 0))(
  ( (ValueCellFull!16303 (v!19877 V!50973)) (EmptyCell!16303) )
))
(declare-fun mapRest!53165 () (Array (_ BitVec 32) ValueCell!16303))

(declare-fun mapKey!53165 () (_ BitVec 32))

(declare-datatypes ((array!85795 0))(
  ( (array!85796 (arr!41394 (Array (_ BitVec 32) ValueCell!16303)) (size!41945 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85795)

(declare-fun mapValue!53165 () ValueCell!16303)

(assert (=> mapNonEmpty!53165 (= (arr!41394 _values!1445) (store mapRest!53165 mapKey!53165 mapValue!53165))))

(declare-fun b!1292839 () Bool)

(declare-fun res!859145 () Bool)

(assert (=> b!1292839 (=> (not res!859145) (not e!737900))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85797 0))(
  ( (array!85798 (arr!41395 (Array (_ BitVec 32) (_ BitVec 64))) (size!41946 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85797)

(assert (=> b!1292839 (= res!859145 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41946 _keys!1741))))))

(declare-fun res!859148 () Bool)

(assert (=> start!109310 (=> (not res!859148) (not e!737900))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109310 (= res!859148 (validMask!0 mask!2175))))

(assert (=> start!109310 e!737900))

(declare-fun tp_is_empty!34403 () Bool)

(assert (=> start!109310 tp_is_empty!34403))

(assert (=> start!109310 true))

(declare-fun e!737901 () Bool)

(declare-fun array_inv!31337 (array!85795) Bool)

(assert (=> start!109310 (and (array_inv!31337 _values!1445) e!737901)))

(declare-fun array_inv!31338 (array!85797) Bool)

(assert (=> start!109310 (array_inv!31338 _keys!1741)))

(assert (=> start!109310 tp!101409))

(declare-fun mapIsEmpty!53165 () Bool)

(assert (=> mapIsEmpty!53165 mapRes!53165))

(declare-fun b!1292840 () Bool)

(declare-fun res!859149 () Bool)

(assert (=> b!1292840 (=> (not res!859149) (not e!737900))))

(declare-fun minValue!1387 () V!50973)

(declare-fun zeroValue!1387 () V!50973)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5022 (array!85797 array!85795 (_ BitVec 32) (_ BitVec 32) V!50973 V!50973 (_ BitVec 32) Int) ListLongMap!20035)

(assert (=> b!1292840 (= res!859149 (contains!8089 (getCurrentListMap!5022 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292841 () Bool)

(declare-fun res!859143 () Bool)

(assert (=> b!1292841 (=> (not res!859143) (not e!737900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292841 (= res!859143 (not (validKeyInArray!0 (select (arr!41395 _keys!1741) from!2144))))))

(declare-fun b!1292842 () Bool)

(declare-fun res!859144 () Bool)

(assert (=> b!1292842 (=> (not res!859144) (not e!737900))))

(declare-datatypes ((List!29552 0))(
  ( (Nil!29549) (Cons!29548 (h!30757 (_ BitVec 64)) (t!43123 List!29552)) )
))
(declare-fun arrayNoDuplicates!0 (array!85797 (_ BitVec 32) List!29552) Bool)

(assert (=> b!1292842 (= res!859144 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29549))))

(declare-fun b!1292843 () Bool)

(declare-fun res!859147 () Bool)

(assert (=> b!1292843 (=> (not res!859147) (not e!737900))))

(assert (=> b!1292843 (= res!859147 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41946 _keys!1741))))))

(declare-fun b!1292844 () Bool)

(declare-fun e!737898 () Bool)

(assert (=> b!1292844 (= e!737901 (and e!737898 mapRes!53165))))

(declare-fun condMapEmpty!53165 () Bool)

(declare-fun mapDefault!53165 () ValueCell!16303)

