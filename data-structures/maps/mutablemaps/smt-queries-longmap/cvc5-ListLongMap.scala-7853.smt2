; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97898 () Bool)

(assert start!97898)

(declare-fun b_free!23563 () Bool)

(declare-fun b_next!23563 () Bool)

(assert (=> start!97898 (= b_free!23563 (not b_next!23563))))

(declare-fun tp!83393 () Bool)

(declare-fun b_and!37931 () Bool)

(assert (=> start!97898 (= tp!83393 b_and!37931)))

(declare-fun b!1120284 () Bool)

(declare-fun res!748463 () Bool)

(declare-fun e!637973 () Bool)

(assert (=> b!1120284 (=> (not res!748463) (not e!637973))))

(declare-datatypes ((array!73012 0))(
  ( (array!73013 (arr!35155 (Array (_ BitVec 32) (_ BitVec 64))) (size!35692 (_ BitVec 32))) )
))
(declare-fun lt!497968 () array!73012)

(declare-datatypes ((List!24588 0))(
  ( (Nil!24585) (Cons!24584 (h!25793 (_ BitVec 64)) (t!35150 List!24588)) )
))
(declare-fun arrayNoDuplicates!0 (array!73012 (_ BitVec 32) List!24588) Bool)

(assert (=> b!1120284 (= res!748463 (arrayNoDuplicates!0 lt!497968 #b00000000000000000000000000000000 Nil!24585))))

(declare-fun b!1120285 () Bool)

(declare-fun res!748467 () Bool)

(declare-fun e!637977 () Bool)

(assert (=> b!1120285 (=> (not res!748467) (not e!637977))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120285 (= res!748467 (validMask!0 mask!1564))))

(declare-fun b!1120286 () Bool)

(declare-fun res!748470 () Bool)

(assert (=> b!1120286 (=> (not res!748470) (not e!637977))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120286 (= res!748470 (validKeyInArray!0 k!934))))

(declare-fun b!1120287 () Bool)

(declare-fun res!748469 () Bool)

(assert (=> b!1120287 (=> (not res!748469) (not e!637977))))

(declare-fun _keys!1208 () array!73012)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42585 0))(
  ( (V!42586 (val!14103 Int)) )
))
(declare-datatypes ((ValueCell!13337 0))(
  ( (ValueCellFull!13337 (v!16737 V!42585)) (EmptyCell!13337) )
))
(declare-datatypes ((array!73014 0))(
  ( (array!73015 (arr!35156 (Array (_ BitVec 32) ValueCell!13337)) (size!35693 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73014)

(assert (=> b!1120287 (= res!748469 (and (= (size!35693 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35692 _keys!1208) (size!35693 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120288 () Bool)

(declare-fun res!748465 () Bool)

(assert (=> b!1120288 (=> (not res!748465) (not e!637977))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120288 (= res!748465 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35692 _keys!1208))))))

(declare-fun b!1120289 () Bool)

(declare-fun e!637976 () Bool)

(assert (=> b!1120289 (= e!637976 true)))

(declare-fun zeroValue!944 () V!42585)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42585)

(declare-datatypes ((tuple2!17748 0))(
  ( (tuple2!17749 (_1!8884 (_ BitVec 64)) (_2!8884 V!42585)) )
))
(declare-datatypes ((List!24589 0))(
  ( (Nil!24586) (Cons!24585 (h!25794 tuple2!17748) (t!35151 List!24589)) )
))
(declare-datatypes ((ListLongMap!15729 0))(
  ( (ListLongMap!15730 (toList!7880 List!24589)) )
))
(declare-fun lt!497970 () ListLongMap!15729)

(declare-fun getCurrentListMapNoExtraKeys!4341 (array!73012 array!73014 (_ BitVec 32) (_ BitVec 32) V!42585 V!42585 (_ BitVec 32) Int) ListLongMap!15729)

(declare-fun dynLambda!2443 (Int (_ BitVec 64)) V!42585)

(assert (=> b!1120289 (= lt!497970 (getCurrentListMapNoExtraKeys!4341 lt!497968 (array!73015 (store (arr!35156 _values!996) i!673 (ValueCellFull!13337 (dynLambda!2443 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35693 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497969 () ListLongMap!15729)

(assert (=> b!1120289 (= lt!497969 (getCurrentListMapNoExtraKeys!4341 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120290 () Bool)

(assert (=> b!1120290 (= e!637973 (not e!637976))))

(declare-fun res!748468 () Bool)

(assert (=> b!1120290 (=> res!748468 e!637976)))

(assert (=> b!1120290 (= res!748468 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120290 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36681 0))(
  ( (Unit!36682) )
))
(declare-fun lt!497967 () Unit!36681)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73012 (_ BitVec 64) (_ BitVec 32)) Unit!36681)

(assert (=> b!1120290 (= lt!497967 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!43957 () Bool)

(declare-fun mapRes!43957 () Bool)

(declare-fun tp!83394 () Bool)

(declare-fun e!637975 () Bool)

(assert (=> mapNonEmpty!43957 (= mapRes!43957 (and tp!83394 e!637975))))

(declare-fun mapKey!43957 () (_ BitVec 32))

(declare-fun mapValue!43957 () ValueCell!13337)

(declare-fun mapRest!43957 () (Array (_ BitVec 32) ValueCell!13337))

(assert (=> mapNonEmpty!43957 (= (arr!35156 _values!996) (store mapRest!43957 mapKey!43957 mapValue!43957))))

(declare-fun b!1120291 () Bool)

(declare-fun tp_is_empty!28093 () Bool)

(assert (=> b!1120291 (= e!637975 tp_is_empty!28093)))

(declare-fun b!1120292 () Bool)

(declare-fun e!637974 () Bool)

(assert (=> b!1120292 (= e!637974 tp_is_empty!28093)))

(declare-fun b!1120293 () Bool)

(declare-fun res!748466 () Bool)

(assert (=> b!1120293 (=> (not res!748466) (not e!637977))))

(assert (=> b!1120293 (= res!748466 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24585))))

(declare-fun b!1120294 () Bool)

(declare-fun res!748464 () Bool)

(assert (=> b!1120294 (=> (not res!748464) (not e!637977))))

(assert (=> b!1120294 (= res!748464 (= (select (arr!35155 _keys!1208) i!673) k!934))))

(declare-fun res!748473 () Bool)

(assert (=> start!97898 (=> (not res!748473) (not e!637977))))

(assert (=> start!97898 (= res!748473 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35692 _keys!1208))))))

(assert (=> start!97898 e!637977))

(assert (=> start!97898 tp_is_empty!28093))

(declare-fun array_inv!26868 (array!73012) Bool)

(assert (=> start!97898 (array_inv!26868 _keys!1208)))

(assert (=> start!97898 true))

(assert (=> start!97898 tp!83393))

(declare-fun e!637978 () Bool)

(declare-fun array_inv!26869 (array!73014) Bool)

(assert (=> start!97898 (and (array_inv!26869 _values!996) e!637978)))

(declare-fun b!1120295 () Bool)

(assert (=> b!1120295 (= e!637978 (and e!637974 mapRes!43957))))

(declare-fun condMapEmpty!43957 () Bool)

(declare-fun mapDefault!43957 () ValueCell!13337)

