; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99338 () Bool)

(assert start!99338)

(declare-fun b_free!24881 () Bool)

(declare-fun b_next!24881 () Bool)

(assert (=> start!99338 (= b_free!24881 (not b_next!24881))))

(declare-fun tp!87358 () Bool)

(declare-fun b_and!40643 () Bool)

(assert (=> start!99338 (= tp!87358 b_and!40643)))

(declare-fun b!1170066 () Bool)

(declare-fun e!665068 () Bool)

(declare-fun e!665065 () Bool)

(assert (=> b!1170066 (= e!665068 (not e!665065))))

(declare-fun res!776573 () Bool)

(assert (=> b!1170066 (=> res!776573 e!665065)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170066 (= res!776573 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75598 0))(
  ( (array!75599 (arr!36445 (Array (_ BitVec 32) (_ BitVec 64))) (size!36982 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75598)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170066 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38494 0))(
  ( (Unit!38495) )
))
(declare-fun lt!526917 () Unit!38494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75598 (_ BitVec 64) (_ BitVec 32)) Unit!38494)

(assert (=> b!1170066 (= lt!526917 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170067 () Bool)

(declare-fun res!776574 () Bool)

(declare-fun e!665061 () Bool)

(assert (=> b!1170067 (=> (not res!776574) (not e!665061))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75598 (_ BitVec 32)) Bool)

(assert (=> b!1170067 (= res!776574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170068 () Bool)

(declare-fun e!665059 () Bool)

(declare-fun tp_is_empty!29411 () Bool)

(assert (=> b!1170068 (= e!665059 tp_is_empty!29411)))

(declare-fun b!1170069 () Bool)

(declare-fun res!776568 () Bool)

(assert (=> b!1170069 (=> (not res!776568) (not e!665068))))

(declare-fun lt!526913 () array!75598)

(declare-datatypes ((List!25711 0))(
  ( (Nil!25708) (Cons!25707 (h!26916 (_ BitVec 64)) (t!37591 List!25711)) )
))
(declare-fun arrayNoDuplicates!0 (array!75598 (_ BitVec 32) List!25711) Bool)

(assert (=> b!1170069 (= res!776568 (arrayNoDuplicates!0 lt!526913 #b00000000000000000000000000000000 Nil!25708))))

(declare-fun b!1170070 () Bool)

(declare-fun e!665064 () Bool)

(assert (=> b!1170070 (= e!665064 tp_is_empty!29411)))

(declare-fun e!665058 () Bool)

(declare-fun b!1170071 () Bool)

(assert (=> b!1170071 (= e!665058 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170072 () Bool)

(declare-fun res!776579 () Bool)

(assert (=> b!1170072 (=> (not res!776579) (not e!665061))))

(assert (=> b!1170072 (= res!776579 (= (select (arr!36445 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!45944 () Bool)

(declare-fun mapRes!45944 () Bool)

(declare-fun tp!87357 () Bool)

(assert (=> mapNonEmpty!45944 (= mapRes!45944 (and tp!87357 e!665064))))

(declare-datatypes ((V!44341 0))(
  ( (V!44342 (val!14762 Int)) )
))
(declare-datatypes ((ValueCell!13996 0))(
  ( (ValueCellFull!13996 (v!17401 V!44341)) (EmptyCell!13996) )
))
(declare-fun mapValue!45944 () ValueCell!13996)

(declare-fun mapKey!45944 () (_ BitVec 32))

(declare-datatypes ((array!75600 0))(
  ( (array!75601 (arr!36446 (Array (_ BitVec 32) ValueCell!13996)) (size!36983 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75600)

(declare-fun mapRest!45944 () (Array (_ BitVec 32) ValueCell!13996))

(assert (=> mapNonEmpty!45944 (= (arr!36446 _values!996) (store mapRest!45944 mapKey!45944 mapValue!45944))))

(declare-fun b!1170074 () Bool)

(declare-fun res!776570 () Bool)

(assert (=> b!1170074 (=> (not res!776570) (not e!665061))))

(assert (=> b!1170074 (= res!776570 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25708))))

(declare-fun b!1170075 () Bool)

(declare-fun res!776566 () Bool)

(assert (=> b!1170075 (=> (not res!776566) (not e!665061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170075 (= res!776566 (validKeyInArray!0 k!934))))

(declare-fun b!1170076 () Bool)

(declare-fun e!665067 () Bool)

(assert (=> b!1170076 (= e!665065 e!665067)))

(declare-fun res!776581 () Bool)

(assert (=> b!1170076 (=> res!776581 e!665067)))

(assert (=> b!1170076 (= res!776581 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44341)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!526908 () array!75600)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44341)

(declare-datatypes ((tuple2!18940 0))(
  ( (tuple2!18941 (_1!9480 (_ BitVec 64)) (_2!9480 V!44341)) )
))
(declare-datatypes ((List!25712 0))(
  ( (Nil!25709) (Cons!25708 (h!26917 tuple2!18940) (t!37592 List!25712)) )
))
(declare-datatypes ((ListLongMap!16921 0))(
  ( (ListLongMap!16922 (toList!8476 List!25712)) )
))
(declare-fun lt!526916 () ListLongMap!16921)

(declare-fun getCurrentListMapNoExtraKeys!4909 (array!75598 array!75600 (_ BitVec 32) (_ BitVec 32) V!44341 V!44341 (_ BitVec 32) Int) ListLongMap!16921)

(assert (=> b!1170076 (= lt!526916 (getCurrentListMapNoExtraKeys!4909 lt!526913 lt!526908 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526910 () V!44341)

(assert (=> b!1170076 (= lt!526908 (array!75601 (store (arr!36446 _values!996) i!673 (ValueCellFull!13996 lt!526910)) (size!36983 _values!996)))))

(declare-fun dynLambda!2898 (Int (_ BitVec 64)) V!44341)

(assert (=> b!1170076 (= lt!526910 (dynLambda!2898 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526907 () ListLongMap!16921)

(assert (=> b!1170076 (= lt!526907 (getCurrentListMapNoExtraKeys!4909 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170077 () Bool)

(declare-fun res!776578 () Bool)

(assert (=> b!1170077 (=> (not res!776578) (not e!665061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170077 (= res!776578 (validMask!0 mask!1564))))

(declare-fun b!1170078 () Bool)

(declare-fun res!776569 () Bool)

(assert (=> b!1170078 (=> (not res!776569) (not e!665061))))

(assert (=> b!1170078 (= res!776569 (and (= (size!36983 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36982 _keys!1208) (size!36983 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!45944 () Bool)

(assert (=> mapIsEmpty!45944 mapRes!45944))

(declare-fun b!1170079 () Bool)

(declare-fun res!776580 () Bool)

(assert (=> b!1170079 (=> (not res!776580) (not e!665061))))

(assert (=> b!1170079 (= res!776580 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36982 _keys!1208))))))

(declare-fun res!776572 () Bool)

(assert (=> start!99338 (=> (not res!776572) (not e!665061))))

(assert (=> start!99338 (= res!776572 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36982 _keys!1208))))))

(assert (=> start!99338 e!665061))

(assert (=> start!99338 tp_is_empty!29411))

(declare-fun array_inv!27736 (array!75598) Bool)

(assert (=> start!99338 (array_inv!27736 _keys!1208)))

(assert (=> start!99338 true))

(assert (=> start!99338 tp!87358))

(declare-fun e!665066 () Bool)

(declare-fun array_inv!27737 (array!75600) Bool)

(assert (=> start!99338 (and (array_inv!27737 _values!996) e!665066)))

(declare-fun b!1170073 () Bool)

(declare-fun e!665063 () Bool)

(assert (=> b!1170073 (= e!665063 e!665058)))

(declare-fun res!776567 () Bool)

(assert (=> b!1170073 (=> res!776567 e!665058)))

(assert (=> b!1170073 (= res!776567 (not (= (select (arr!36445 _keys!1208) from!1455) k!934)))))

(declare-fun b!1170080 () Bool)

(declare-fun e!665062 () Bool)

(assert (=> b!1170080 (= e!665067 e!665062)))

(declare-fun res!776571 () Bool)

(assert (=> b!1170080 (=> res!776571 e!665062)))

(assert (=> b!1170080 (= res!776571 (not (validKeyInArray!0 (select (arr!36445 _keys!1208) from!1455))))))

(declare-fun lt!526912 () ListLongMap!16921)

(declare-fun lt!526915 () ListLongMap!16921)

(assert (=> b!1170080 (= lt!526912 lt!526915)))

(declare-fun lt!526909 () ListLongMap!16921)

(declare-fun -!1498 (ListLongMap!16921 (_ BitVec 64)) ListLongMap!16921)

(assert (=> b!1170080 (= lt!526915 (-!1498 lt!526909 k!934))))

(assert (=> b!1170080 (= lt!526912 (getCurrentListMapNoExtraKeys!4909 lt!526913 lt!526908 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170080 (= lt!526909 (getCurrentListMapNoExtraKeys!4909 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526914 () Unit!38494)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!722 (array!75598 array!75600 (_ BitVec 32) (_ BitVec 32) V!44341 V!44341 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38494)

(assert (=> b!1170080 (= lt!526914 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!722 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170081 () Bool)

(assert (=> b!1170081 (= e!665061 e!665068)))

(declare-fun res!776577 () Bool)

(assert (=> b!1170081 (=> (not res!776577) (not e!665068))))

(assert (=> b!1170081 (= res!776577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526913 mask!1564))))

(assert (=> b!1170081 (= lt!526913 (array!75599 (store (arr!36445 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36982 _keys!1208)))))

(declare-fun b!1170082 () Bool)

(declare-fun e!665057 () Bool)

(assert (=> b!1170082 (= e!665062 e!665057)))

(declare-fun res!776576 () Bool)

(assert (=> b!1170082 (=> res!776576 e!665057)))

(assert (=> b!1170082 (= res!776576 (not (= (select (arr!36445 _keys!1208) from!1455) k!934)))))

(assert (=> b!1170082 e!665063))

(declare-fun res!776575 () Bool)

(assert (=> b!1170082 (=> (not res!776575) (not e!665063))))

(declare-fun +!3721 (ListLongMap!16921 tuple2!18940) ListLongMap!16921)

(declare-fun get!18614 (ValueCell!13996 V!44341) V!44341)

(assert (=> b!1170082 (= res!776575 (= lt!526916 (+!3721 lt!526915 (tuple2!18941 (select (arr!36445 _keys!1208) from!1455) (get!18614 (select (arr!36446 _values!996) from!1455) lt!526910)))))))

(declare-fun b!1170083 () Bool)

(assert (=> b!1170083 (= e!665057 true)))

(assert (=> b!1170083 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!526911 () Unit!38494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75598 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38494)

(assert (=> b!1170083 (= lt!526911 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170084 () Bool)

(assert (=> b!1170084 (= e!665066 (and e!665059 mapRes!45944))))

(declare-fun condMapEmpty!45944 () Bool)

(declare-fun mapDefault!45944 () ValueCell!13996)

