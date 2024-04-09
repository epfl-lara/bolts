; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111482 () Bool)

(assert start!111482)

(declare-fun b_free!30103 () Bool)

(declare-fun b_next!30103 () Bool)

(assert (=> start!111482 (= b_free!30103 (not b_next!30103))))

(declare-fun tp!105785 () Bool)

(declare-fun b_and!48375 () Bool)

(assert (=> start!111482 (= tp!105785 b_and!48375)))

(declare-fun b!1318919 () Bool)

(declare-fun res!875437 () Bool)

(declare-fun e!752587 () Bool)

(assert (=> b!1318919 (=> (not res!875437) (not e!752587))))

(declare-datatypes ((array!88745 0))(
  ( (array!88746 (arr!42842 (Array (_ BitVec 32) (_ BitVec 64))) (size!43393 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88745)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318919 (= res!875437 (not (= (select (arr!42842 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!55532 () Bool)

(declare-fun mapRes!55532 () Bool)

(declare-fun tp!105786 () Bool)

(declare-fun e!752584 () Bool)

(assert (=> mapNonEmpty!55532 (= mapRes!55532 (and tp!105786 e!752584))))

(declare-datatypes ((V!53001 0))(
  ( (V!53002 (val!18036 Int)) )
))
(declare-datatypes ((ValueCell!17063 0))(
  ( (ValueCellFull!17063 (v!20664 V!53001)) (EmptyCell!17063) )
))
(declare-fun mapRest!55532 () (Array (_ BitVec 32) ValueCell!17063))

(declare-fun mapKey!55532 () (_ BitVec 32))

(declare-fun mapValue!55532 () ValueCell!17063)

(declare-datatypes ((array!88747 0))(
  ( (array!88748 (arr!42843 (Array (_ BitVec 32) ValueCell!17063)) (size!43394 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88747)

(assert (=> mapNonEmpty!55532 (= (arr!42843 _values!1337) (store mapRest!55532 mapKey!55532 mapValue!55532))))

(declare-fun b!1318920 () Bool)

(declare-fun res!875434 () Bool)

(assert (=> b!1318920 (=> (not res!875434) (not e!752587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318920 (= res!875434 (validKeyInArray!0 (select (arr!42842 _keys!1609) from!2000)))))

(declare-fun b!1318921 () Bool)

(declare-fun tp_is_empty!35923 () Bool)

(assert (=> b!1318921 (= e!752584 tp_is_empty!35923)))

(declare-fun b!1318922 () Bool)

(declare-fun e!752583 () Bool)

(assert (=> b!1318922 (= e!752583 tp_is_empty!35923)))

(declare-fun res!875435 () Bool)

(assert (=> start!111482 (=> (not res!875435) (not e!752587))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111482 (= res!875435 (validMask!0 mask!2019))))

(assert (=> start!111482 e!752587))

(declare-fun array_inv!32299 (array!88745) Bool)

(assert (=> start!111482 (array_inv!32299 _keys!1609)))

(assert (=> start!111482 true))

(assert (=> start!111482 tp_is_empty!35923))

(declare-fun e!752585 () Bool)

(declare-fun array_inv!32300 (array!88747) Bool)

(assert (=> start!111482 (and (array_inv!32300 _values!1337) e!752585)))

(assert (=> start!111482 tp!105785))

(declare-fun b!1318923 () Bool)

(declare-fun res!875433 () Bool)

(assert (=> b!1318923 (=> (not res!875433) (not e!752587))))

(declare-datatypes ((List!30555 0))(
  ( (Nil!30552) (Cons!30551 (h!31760 (_ BitVec 64)) (t!44214 List!30555)) )
))
(declare-fun arrayNoDuplicates!0 (array!88745 (_ BitVec 32) List!30555) Bool)

(assert (=> b!1318923 (= res!875433 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30552))))

(declare-fun b!1318924 () Bool)

(assert (=> b!1318924 (= e!752587 (not true))))

(declare-datatypes ((tuple2!23366 0))(
  ( (tuple2!23367 (_1!11693 (_ BitVec 64)) (_2!11693 V!53001)) )
))
(declare-datatypes ((List!30556 0))(
  ( (Nil!30553) (Cons!30552 (h!31761 tuple2!23366) (t!44215 List!30556)) )
))
(declare-datatypes ((ListLongMap!21035 0))(
  ( (ListLongMap!21036 (toList!10533 List!30556)) )
))
(declare-fun lt!586500 () ListLongMap!21035)

(declare-fun contains!8624 (ListLongMap!21035 (_ BitVec 64)) Bool)

(assert (=> b!1318924 (contains!8624 lt!586500 k!1164)))

(declare-datatypes ((Unit!43384 0))(
  ( (Unit!43385) )
))
(declare-fun lt!586501 () Unit!43384)

(declare-fun minValue!1279 () V!53001)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!107 ((_ BitVec 64) (_ BitVec 64) V!53001 ListLongMap!21035) Unit!43384)

(assert (=> b!1318924 (= lt!586501 (lemmaInListMapAfterAddingDiffThenInBefore!107 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586500))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-fun zeroValue!1279 () V!53001)

(declare-fun +!4492 (ListLongMap!21035 tuple2!23366) ListLongMap!21035)

(declare-fun getCurrentListMapNoExtraKeys!6207 (array!88745 array!88747 (_ BitVec 32) (_ BitVec 32) V!53001 V!53001 (_ BitVec 32) Int) ListLongMap!21035)

(declare-fun get!21574 (ValueCell!17063 V!53001) V!53001)

(declare-fun dynLambda!3529 (Int (_ BitVec 64)) V!53001)

(assert (=> b!1318924 (= lt!586500 (+!4492 (+!4492 (getCurrentListMapNoExtraKeys!6207 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23367 (select (arr!42842 _keys!1609) from!2000) (get!21574 (select (arr!42843 _values!1337) from!2000) (dynLambda!3529 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23367 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapIsEmpty!55532 () Bool)

(assert (=> mapIsEmpty!55532 mapRes!55532))

(declare-fun b!1318925 () Bool)

(declare-fun res!875440 () Bool)

(assert (=> b!1318925 (=> (not res!875440) (not e!752587))))

(assert (=> b!1318925 (= res!875440 (and (= (size!43394 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43393 _keys!1609) (size!43394 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318926 () Bool)

(declare-fun res!875439 () Bool)

(assert (=> b!1318926 (=> (not res!875439) (not e!752587))))

(assert (=> b!1318926 (= res!875439 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43393 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318927 () Bool)

(assert (=> b!1318927 (= e!752585 (and e!752583 mapRes!55532))))

(declare-fun condMapEmpty!55532 () Bool)

(declare-fun mapDefault!55532 () ValueCell!17063)

