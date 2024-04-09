; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98120 () Bool)

(assert start!98120)

(declare-fun b_free!23785 () Bool)

(declare-fun b_next!23785 () Bool)

(assert (=> start!98120 (= b_free!23785 (not b_next!23785))))

(declare-fun tp!84059 () Bool)

(declare-fun b_and!38375 () Bool)

(assert (=> start!98120 (= tp!84059 b_and!38375)))

(declare-fun b!1126544 () Bool)

(declare-datatypes ((V!42881 0))(
  ( (V!42882 (val!14214 Int)) )
))
(declare-datatypes ((tuple2!17960 0))(
  ( (tuple2!17961 (_1!8990 (_ BitVec 64)) (_2!8990 V!42881)) )
))
(declare-datatypes ((List!24787 0))(
  ( (Nil!24784) (Cons!24783 (h!25992 tuple2!17960) (t!35571 List!24787)) )
))
(declare-datatypes ((ListLongMap!15941 0))(
  ( (ListLongMap!15942 (toList!7986 List!24787)) )
))
(declare-fun call!47639 () ListLongMap!15941)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!47638 () ListLongMap!15941)

(declare-fun e!641268 () Bool)

(declare-fun -!1126 (ListLongMap!15941 (_ BitVec 64)) ListLongMap!15941)

(assert (=> b!1126544 (= e!641268 (= call!47638 (-!1126 call!47639 k!934)))))

(declare-fun b!1126545 () Bool)

(declare-fun res!752873 () Bool)

(declare-fun e!641270 () Bool)

(assert (=> b!1126545 (=> (not res!752873) (not e!641270))))

(declare-datatypes ((array!73452 0))(
  ( (array!73453 (arr!35375 (Array (_ BitVec 32) (_ BitVec 64))) (size!35912 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73452)

(declare-datatypes ((List!24788 0))(
  ( (Nil!24785) (Cons!24784 (h!25993 (_ BitVec 64)) (t!35572 List!24788)) )
))
(declare-fun arrayNoDuplicates!0 (array!73452 (_ BitVec 32) List!24788) Bool)

(assert (=> b!1126545 (= res!752873 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24785))))

(declare-fun b!1126546 () Bool)

(declare-fun res!752868 () Bool)

(assert (=> b!1126546 (=> (not res!752868) (not e!641270))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126546 (= res!752868 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35912 _keys!1208))))))

(declare-fun b!1126547 () Bool)

(declare-fun e!641264 () Bool)

(assert (=> b!1126547 (= e!641264 true)))

(declare-fun zeroValue!944 () V!42881)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13448 0))(
  ( (ValueCellFull!13448 (v!16848 V!42881)) (EmptyCell!13448) )
))
(declare-datatypes ((array!73454 0))(
  ( (array!73455 (arr!35376 (Array (_ BitVec 32) ValueCell!13448)) (size!35913 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73454)

(declare-fun lt!500254 () Bool)

(declare-fun minValue!944 () V!42881)

(declare-fun contains!6493 (ListLongMap!15941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4445 (array!73452 array!73454 (_ BitVec 32) (_ BitVec 32) V!42881 V!42881 (_ BitVec 32) Int) ListLongMap!15941)

(assert (=> b!1126547 (= lt!500254 (contains!6493 (getCurrentListMapNoExtraKeys!4445 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1126548 () Bool)

(declare-fun res!752878 () Bool)

(assert (=> b!1126548 (=> (not res!752878) (not e!641270))))

(assert (=> b!1126548 (= res!752878 (and (= (size!35913 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35912 _keys!1208) (size!35913 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126549 () Bool)

(declare-fun e!641272 () Bool)

(declare-fun e!641266 () Bool)

(assert (=> b!1126549 (= e!641272 (not e!641266))))

(declare-fun res!752875 () Bool)

(assert (=> b!1126549 (=> res!752875 e!641266)))

(assert (=> b!1126549 (= res!752875 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126549 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36865 0))(
  ( (Unit!36866) )
))
(declare-fun lt!500250 () Unit!36865)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73452 (_ BitVec 64) (_ BitVec 32)) Unit!36865)

(assert (=> b!1126549 (= lt!500250 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1126550 () Bool)

(assert (=> b!1126550 (= e!641268 (= call!47638 call!47639))))

(declare-fun b!1126551 () Bool)

(declare-fun e!641265 () Bool)

(declare-fun e!641269 () Bool)

(declare-fun mapRes!44290 () Bool)

(assert (=> b!1126551 (= e!641265 (and e!641269 mapRes!44290))))

(declare-fun condMapEmpty!44290 () Bool)

(declare-fun mapDefault!44290 () ValueCell!13448)

