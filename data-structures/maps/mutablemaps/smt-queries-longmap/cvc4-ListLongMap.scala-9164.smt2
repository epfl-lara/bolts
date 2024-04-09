; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110098 () Bool)

(assert start!110098)

(declare-fun b_free!29261 () Bool)

(declare-fun b_next!29261 () Bool)

(assert (=> start!110098 (= b_free!29261 (not b_next!29261))))

(declare-fun tp!102935 () Bool)

(declare-fun b_and!47435 () Bool)

(assert (=> start!110098 (= tp!102935 b_and!47435)))

(declare-fun b!1303339 () Bool)

(declare-fun e!743444 () Bool)

(assert (=> b!1303339 (= e!743444 true)))

(assert (=> b!1303339 false))

(declare-datatypes ((V!51637 0))(
  ( (V!51638 (val!17525 Int)) )
))
(declare-fun minValue!1387 () V!51637)

(declare-datatypes ((Unit!43100 0))(
  ( (Unit!43101) )
))
(declare-fun lt!583221 () Unit!43100)

(declare-datatypes ((tuple2!22768 0))(
  ( (tuple2!22769 (_1!11394 (_ BitVec 64)) (_2!11394 V!51637)) )
))
(declare-datatypes ((List!29920 0))(
  ( (Nil!29917) (Cons!29916 (h!31125 tuple2!22768) (t!43521 List!29920)) )
))
(declare-datatypes ((ListLongMap!20437 0))(
  ( (ListLongMap!20438 (toList!10234 List!29920)) )
))
(declare-fun lt!583218 () ListLongMap!20437)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!87 ((_ BitVec 64) (_ BitVec 64) V!51637 ListLongMap!20437) Unit!43100)

(assert (=> b!1303339 (= lt!583221 (lemmaInListMapAfterAddingDiffThenInBefore!87 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!583218))))

(declare-fun lt!583216 () ListLongMap!20437)

(declare-fun contains!8305 (ListLongMap!20437 (_ BitVec 64)) Bool)

(declare-fun +!4454 (ListLongMap!20437 tuple2!22768) ListLongMap!20437)

(assert (=> b!1303339 (not (contains!8305 (+!4454 lt!583216 (tuple2!22769 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!583219 () Unit!43100)

(declare-fun addStillNotContains!478 (ListLongMap!20437 (_ BitVec 64) V!51637 (_ BitVec 64)) Unit!43100)

(assert (=> b!1303339 (= lt!583219 (addStillNotContains!478 lt!583216 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1303339 (not (contains!8305 lt!583218 k!1205))))

(declare-fun zeroValue!1387 () V!51637)

(assert (=> b!1303339 (= lt!583218 (+!4454 lt!583216 (tuple2!22769 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583217 () Unit!43100)

(assert (=> b!1303339 (= lt!583217 (addStillNotContains!478 lt!583216 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16552 0))(
  ( (ValueCellFull!16552 (v!20139 V!51637)) (EmptyCell!16552) )
))
(declare-datatypes ((array!86779 0))(
  ( (array!86780 (arr!41876 (Array (_ BitVec 32) ValueCell!16552)) (size!42427 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86779)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86781 0))(
  ( (array!86782 (arr!41877 (Array (_ BitVec 32) (_ BitVec 64))) (size!42428 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86781)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6168 (array!86781 array!86779 (_ BitVec 32) (_ BitVec 32) V!51637 V!51637 (_ BitVec 32) Int) ListLongMap!20437)

(assert (=> b!1303339 (= lt!583216 (getCurrentListMapNoExtraKeys!6168 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303340 () Bool)

(declare-fun res!865744 () Bool)

(declare-fun e!743447 () Bool)

(assert (=> b!1303340 (=> (not res!865744) (not e!743447))))

(assert (=> b!1303340 (= res!865744 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42428 _keys!1741))))))

(declare-fun b!1303341 () Bool)

(declare-fun res!865745 () Bool)

(assert (=> b!1303341 (=> (not res!865745) (not e!743447))))

(assert (=> b!1303341 (= res!865745 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42428 _keys!1741))))))

(declare-fun b!1303342 () Bool)

(declare-fun e!743445 () Bool)

(declare-fun e!743442 () Bool)

(declare-fun mapRes!53944 () Bool)

(assert (=> b!1303342 (= e!743445 (and e!743442 mapRes!53944))))

(declare-fun condMapEmpty!53944 () Bool)

(declare-fun mapDefault!53944 () ValueCell!16552)

