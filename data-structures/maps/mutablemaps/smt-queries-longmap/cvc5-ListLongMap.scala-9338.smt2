; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111500 () Bool)

(assert start!111500)

(declare-fun b_free!30121 () Bool)

(declare-fun b_next!30121 () Bool)

(assert (=> start!111500 (= b_free!30121 (not b_next!30121))))

(declare-fun tp!105839 () Bool)

(declare-fun b_and!48411 () Bool)

(assert (=> start!111500 (= tp!105839 b_and!48411)))

(declare-fun b!1319234 () Bool)

(declare-fun e!752721 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(assert (=> b!1319234 (= e!752721 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!53025 0))(
  ( (V!53026 (val!18045 Int)) )
))
(declare-datatypes ((tuple2!23384 0))(
  ( (tuple2!23385 (_1!11702 (_ BitVec 64)) (_2!11702 V!53025)) )
))
(declare-datatypes ((List!30570 0))(
  ( (Nil!30567) (Cons!30566 (h!31775 tuple2!23384) (t!44247 List!30570)) )
))
(declare-datatypes ((ListLongMap!21053 0))(
  ( (ListLongMap!21054 (toList!10542 List!30570)) )
))
(declare-fun lt!586555 () ListLongMap!21053)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8633 (ListLongMap!21053 (_ BitVec 64)) Bool)

(assert (=> b!1319234 (contains!8633 lt!586555 k!1164)))

(declare-fun minValue!1279 () V!53025)

(declare-datatypes ((Unit!43400 0))(
  ( (Unit!43401) )
))
(declare-fun lt!586554 () Unit!43400)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!115 ((_ BitVec 64) (_ BitVec 64) V!53025 ListLongMap!21053) Unit!43400)

(assert (=> b!1319234 (= lt!586554 (lemmaInListMapAfterAddingDiffThenInBefore!115 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586555))))

(declare-datatypes ((array!88781 0))(
  ( (array!88782 (arr!42860 (Array (_ BitVec 32) (_ BitVec 64))) (size!43411 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88781)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53025)

(declare-datatypes ((ValueCell!17072 0))(
  ( (ValueCellFull!17072 (v!20673 V!53025)) (EmptyCell!17072) )
))
(declare-datatypes ((array!88783 0))(
  ( (array!88784 (arr!42861 (Array (_ BitVec 32) ValueCell!17072)) (size!43412 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88783)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun +!4500 (ListLongMap!21053 tuple2!23384) ListLongMap!21053)

(declare-fun getCurrentListMapNoExtraKeys!6215 (array!88781 array!88783 (_ BitVec 32) (_ BitVec 32) V!53025 V!53025 (_ BitVec 32) Int) ListLongMap!21053)

(declare-fun get!21588 (ValueCell!17072 V!53025) V!53025)

(declare-fun dynLambda!3537 (Int (_ BitVec 64)) V!53025)

(assert (=> b!1319234 (= lt!586555 (+!4500 (+!4500 (getCurrentListMapNoExtraKeys!6215 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23385 (select (arr!42860 _keys!1609) from!2000) (get!21588 (select (arr!42861 _values!1337) from!2000) (dynLambda!3537 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23385 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1319235 () Bool)

(declare-fun res!875656 () Bool)

(assert (=> b!1319235 (=> (not res!875656) (not e!752721))))

(declare-datatypes ((List!30571 0))(
  ( (Nil!30568) (Cons!30567 (h!31776 (_ BitVec 64)) (t!44248 List!30571)) )
))
(declare-fun arrayNoDuplicates!0 (array!88781 (_ BitVec 32) List!30571) Bool)

(assert (=> b!1319235 (= res!875656 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30568))))

(declare-fun b!1319236 () Bool)

(declare-fun e!752720 () Bool)

(declare-fun e!752719 () Bool)

(declare-fun mapRes!55559 () Bool)

(assert (=> b!1319236 (= e!752720 (and e!752719 mapRes!55559))))

(declare-fun condMapEmpty!55559 () Bool)

(declare-fun mapDefault!55559 () ValueCell!17072)

