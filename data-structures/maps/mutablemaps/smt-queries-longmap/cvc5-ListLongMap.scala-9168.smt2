; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110194 () Bool)

(assert start!110194)

(declare-fun b_free!29281 () Bool)

(declare-fun b_next!29281 () Bool)

(assert (=> start!110194 (= b_free!29281 (not b_next!29281))))

(declare-fun tp!103001 () Bool)

(declare-fun b_and!47471 () Bool)

(assert (=> start!110194 (= tp!103001 b_and!47471)))

(declare-fun mapNonEmpty!53981 () Bool)

(declare-fun mapRes!53981 () Bool)

(declare-fun tp!103002 () Bool)

(declare-fun e!743932 () Bool)

(assert (=> mapNonEmpty!53981 (= mapRes!53981 (and tp!103002 e!743932))))

(declare-datatypes ((V!51665 0))(
  ( (V!51666 (val!17535 Int)) )
))
(declare-datatypes ((ValueCell!16562 0))(
  ( (ValueCellFull!16562 (v!20152 V!51665)) (EmptyCell!16562) )
))
(declare-fun mapRest!53981 () (Array (_ BitVec 32) ValueCell!16562))

(declare-datatypes ((array!86823 0))(
  ( (array!86824 (arr!41896 (Array (_ BitVec 32) ValueCell!16562)) (size!42447 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86823)

(declare-fun mapValue!53981 () ValueCell!16562)

(declare-fun mapKey!53981 () (_ BitVec 32))

(assert (=> mapNonEmpty!53981 (= (arr!41896 _values!1445) (store mapRest!53981 mapKey!53981 mapValue!53981))))

(declare-fun b!1304168 () Bool)

(declare-fun res!866217 () Bool)

(declare-fun e!743930 () Bool)

(assert (=> b!1304168 (=> (not res!866217) (not e!743930))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86825 0))(
  ( (array!86826 (arr!41897 (Array (_ BitVec 32) (_ BitVec 64))) (size!42448 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86825)

(assert (=> b!1304168 (= res!866217 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42448 _keys!1741))))))

(declare-fun b!1304169 () Bool)

(declare-fun e!743933 () Bool)

(assert (=> b!1304169 (= e!743933 true)))

(declare-datatypes ((tuple2!22788 0))(
  ( (tuple2!22789 (_1!11404 (_ BitVec 64)) (_2!11404 V!51665)) )
))
(declare-datatypes ((List!29939 0))(
  ( (Nil!29936) (Cons!29935 (h!31144 tuple2!22788) (t!43544 List!29939)) )
))
(declare-datatypes ((ListLongMap!20457 0))(
  ( (ListLongMap!20458 (toList!10244 List!29939)) )
))
(declare-fun lt!583684 () ListLongMap!20457)

(declare-fun zeroValue!1387 () V!51665)

(declare-fun contains!8319 (ListLongMap!20457 (_ BitVec 64)) Bool)

(declare-fun +!4462 (ListLongMap!20457 tuple2!22788) ListLongMap!20457)

(assert (=> b!1304169 (not (contains!8319 (+!4462 lt!583684 (tuple2!22789 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!43136 0))(
  ( (Unit!43137) )
))
(declare-fun lt!583685 () Unit!43136)

(declare-fun addStillNotContains!486 (ListLongMap!20457 (_ BitVec 64) V!51665 (_ BitVec 64)) Unit!43136)

(assert (=> b!1304169 (= lt!583685 (addStillNotContains!486 lt!583684 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!51665)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6178 (array!86825 array!86823 (_ BitVec 32) (_ BitVec 32) V!51665 V!51665 (_ BitVec 32) Int) ListLongMap!20457)

(assert (=> b!1304169 (= lt!583684 (getCurrentListMapNoExtraKeys!6178 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304170 () Bool)

(declare-fun e!743935 () Bool)

(declare-fun e!743934 () Bool)

(assert (=> b!1304170 (= e!743935 (and e!743934 mapRes!53981))))

(declare-fun condMapEmpty!53981 () Bool)

(declare-fun mapDefault!53981 () ValueCell!16562)

