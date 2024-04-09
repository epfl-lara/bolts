; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111494 () Bool)

(assert start!111494)

(declare-fun b_free!30115 () Bool)

(declare-fun b_next!30115 () Bool)

(assert (=> start!111494 (= b_free!30115 (not b_next!30115))))

(declare-fun tp!105822 () Bool)

(declare-fun b_and!48399 () Bool)

(assert (=> start!111494 (= tp!105822 b_and!48399)))

(declare-fun mapIsEmpty!55550 () Bool)

(declare-fun mapRes!55550 () Bool)

(assert (=> mapIsEmpty!55550 mapRes!55550))

(declare-fun b!1319129 () Bool)

(declare-fun e!752677 () Bool)

(assert (=> b!1319129 (= e!752677 (not true))))

(declare-datatypes ((V!53017 0))(
  ( (V!53018 (val!18042 Int)) )
))
(declare-datatypes ((tuple2!23378 0))(
  ( (tuple2!23379 (_1!11699 (_ BitVec 64)) (_2!11699 V!53017)) )
))
(declare-datatypes ((List!30566 0))(
  ( (Nil!30563) (Cons!30562 (h!31771 tuple2!23378) (t!44237 List!30566)) )
))
(declare-datatypes ((ListLongMap!21047 0))(
  ( (ListLongMap!21048 (toList!10539 List!30566)) )
))
(declare-fun lt!586536 () ListLongMap!21047)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8630 (ListLongMap!21047 (_ BitVec 64)) Bool)

(assert (=> b!1319129 (contains!8630 lt!586536 k!1164)))

(declare-fun minValue!1279 () V!53017)

(declare-datatypes ((Unit!43394 0))(
  ( (Unit!43395) )
))
(declare-fun lt!586537 () Unit!43394)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!112 ((_ BitVec 64) (_ BitVec 64) V!53017 ListLongMap!21047) Unit!43394)

(assert (=> b!1319129 (= lt!586537 (lemmaInListMapAfterAddingDiffThenInBefore!112 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586536))))

(declare-datatypes ((array!88769 0))(
  ( (array!88770 (arr!42854 (Array (_ BitVec 32) (_ BitVec 64))) (size!43405 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88769)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53017)

(declare-datatypes ((ValueCell!17069 0))(
  ( (ValueCellFull!17069 (v!20670 V!53017)) (EmptyCell!17069) )
))
(declare-datatypes ((array!88771 0))(
  ( (array!88772 (arr!42855 (Array (_ BitVec 32) ValueCell!17069)) (size!43406 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88771)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun +!4497 (ListLongMap!21047 tuple2!23378) ListLongMap!21047)

(declare-fun getCurrentListMapNoExtraKeys!6212 (array!88769 array!88771 (_ BitVec 32) (_ BitVec 32) V!53017 V!53017 (_ BitVec 32) Int) ListLongMap!21047)

(declare-fun get!21583 (ValueCell!17069 V!53017) V!53017)

(declare-fun dynLambda!3534 (Int (_ BitVec 64)) V!53017)

(assert (=> b!1319129 (= lt!586536 (+!4497 (+!4497 (getCurrentListMapNoExtraKeys!6212 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23379 (select (arr!42854 _keys!1609) from!2000) (get!21583 (select (arr!42855 _values!1337) from!2000) (dynLambda!3534 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23379 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1319130 () Bool)

(declare-fun res!875580 () Bool)

(assert (=> b!1319130 (=> (not res!875580) (not e!752677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319130 (= res!875580 (validKeyInArray!0 (select (arr!42854 _keys!1609) from!2000)))))

(declare-fun b!1319131 () Bool)

(declare-fun e!752673 () Bool)

(declare-fun e!752676 () Bool)

(assert (=> b!1319131 (= e!752673 (and e!752676 mapRes!55550))))

(declare-fun condMapEmpty!55550 () Bool)

(declare-fun mapDefault!55550 () ValueCell!17069)

