; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97836 () Bool)

(assert start!97836)

(declare-fun b_free!23501 () Bool)

(declare-fun b_next!23501 () Bool)

(assert (=> start!97836 (= b_free!23501 (not b_next!23501))))

(declare-fun tp!83207 () Bool)

(declare-fun b_and!37807 () Bool)

(assert (=> start!97836 (= tp!83207 b_and!37807)))

(declare-fun b!1118920 () Bool)

(declare-fun res!747442 () Bool)

(declare-fun e!637327 () Bool)

(assert (=> b!1118920 (=> (not res!747442) (not e!637327))))

(declare-datatypes ((array!72890 0))(
  ( (array!72891 (arr!35094 (Array (_ BitVec 32) (_ BitVec 64))) (size!35631 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72890)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72890 (_ BitVec 32)) Bool)

(assert (=> b!1118920 (= res!747442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118921 () Bool)

(declare-fun e!637325 () Bool)

(declare-fun e!637322 () Bool)

(assert (=> b!1118921 (= e!637325 (not e!637322))))

(declare-fun res!747444 () Bool)

(assert (=> b!1118921 (=> res!747444 e!637322)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118921 (= res!747444 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118921 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36629 0))(
  ( (Unit!36630) )
))
(declare-fun lt!497596 () Unit!36629)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72890 (_ BitVec 64) (_ BitVec 32)) Unit!36629)

(assert (=> b!1118921 (= lt!497596 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1118922 () Bool)

(assert (=> b!1118922 (= e!637322 true)))

(declare-datatypes ((V!42501 0))(
  ( (V!42502 (val!14072 Int)) )
))
(declare-fun zeroValue!944 () V!42501)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17704 0))(
  ( (tuple2!17705 (_1!8862 (_ BitVec 64)) (_2!8862 V!42501)) )
))
(declare-datatypes ((List!24542 0))(
  ( (Nil!24539) (Cons!24538 (h!25747 tuple2!17704) (t!35042 List!24542)) )
))
(declare-datatypes ((ListLongMap!15685 0))(
  ( (ListLongMap!15686 (toList!7858 List!24542)) )
))
(declare-fun lt!497597 () ListLongMap!15685)

(declare-fun minValue!944 () V!42501)

(declare-datatypes ((ValueCell!13306 0))(
  ( (ValueCellFull!13306 (v!16706 V!42501)) (EmptyCell!13306) )
))
(declare-datatypes ((array!72892 0))(
  ( (array!72893 (arr!35095 (Array (_ BitVec 32) ValueCell!13306)) (size!35632 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72892)

(declare-fun lt!497598 () array!72890)

(declare-fun getCurrentListMapNoExtraKeys!4319 (array!72890 array!72892 (_ BitVec 32) (_ BitVec 32) V!42501 V!42501 (_ BitVec 32) Int) ListLongMap!15685)

(declare-fun dynLambda!2421 (Int (_ BitVec 64)) V!42501)

(assert (=> b!1118922 (= lt!497597 (getCurrentListMapNoExtraKeys!4319 lt!497598 (array!72893 (store (arr!35095 _values!996) i!673 (ValueCellFull!13306 (dynLambda!2421 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35632 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497595 () ListLongMap!15685)

(assert (=> b!1118922 (= lt!497595 (getCurrentListMapNoExtraKeys!4319 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118923 () Bool)

(assert (=> b!1118923 (= e!637327 e!637325)))

(declare-fun res!747445 () Bool)

(assert (=> b!1118923 (=> (not res!747445) (not e!637325))))

(assert (=> b!1118923 (= res!747445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497598 mask!1564))))

(assert (=> b!1118923 (= lt!497598 (array!72891 (store (arr!35094 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35631 _keys!1208)))))

(declare-fun b!1118924 () Bool)

(declare-fun e!637328 () Bool)

(declare-fun e!637326 () Bool)

(declare-fun mapRes!43864 () Bool)

(assert (=> b!1118924 (= e!637328 (and e!637326 mapRes!43864))))

(declare-fun condMapEmpty!43864 () Bool)

(declare-fun mapDefault!43864 () ValueCell!13306)

