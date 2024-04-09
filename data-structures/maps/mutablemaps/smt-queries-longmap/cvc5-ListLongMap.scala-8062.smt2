; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99248 () Bool)

(assert start!99248)

(declare-fun b_free!24817 () Bool)

(declare-fun b_next!24817 () Bool)

(assert (=> start!99248 (= b_free!24817 (not b_next!24817))))

(declare-fun tp!87163 () Bool)

(declare-fun b_and!40497 () Bool)

(assert (=> start!99248 (= tp!87163 b_and!40497)))

(declare-fun mapNonEmpty!45845 () Bool)

(declare-fun mapRes!45845 () Bool)

(declare-fun tp!87162 () Bool)

(declare-fun e!663974 () Bool)

(assert (=> mapNonEmpty!45845 (= mapRes!45845 (and tp!87162 e!663974))))

(declare-datatypes ((V!44257 0))(
  ( (V!44258 (val!14730 Int)) )
))
(declare-datatypes ((ValueCell!13964 0))(
  ( (ValueCellFull!13964 (v!17368 V!44257)) (EmptyCell!13964) )
))
(declare-fun mapRest!45845 () (Array (_ BitVec 32) ValueCell!13964))

(declare-fun mapKey!45845 () (_ BitVec 32))

(declare-datatypes ((array!75468 0))(
  ( (array!75469 (arr!36381 (Array (_ BitVec 32) ValueCell!13964)) (size!36918 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75468)

(declare-fun mapValue!45845 () ValueCell!13964)

(assert (=> mapNonEmpty!45845 (= (arr!36381 _values!996) (store mapRest!45845 mapKey!45845 mapValue!45845))))

(declare-fun b!1168191 () Bool)

(declare-fun e!663968 () Bool)

(declare-fun tp_is_empty!29347 () Bool)

(assert (=> b!1168191 (= e!663968 tp_is_empty!29347)))

(declare-fun b!1168192 () Bool)

(declare-fun res!775129 () Bool)

(declare-fun e!663975 () Bool)

(assert (=> b!1168192 (=> (not res!775129) (not e!663975))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168192 (= res!775129 (validMask!0 mask!1564))))

(declare-fun b!1168193 () Bool)

(declare-fun e!663969 () Bool)

(declare-fun e!663970 () Bool)

(assert (=> b!1168193 (= e!663969 e!663970)))

(declare-fun res!775137 () Bool)

(assert (=> b!1168193 (=> res!775137 e!663970)))

(declare-datatypes ((array!75470 0))(
  ( (array!75471 (arr!36382 (Array (_ BitVec 32) (_ BitVec 64))) (size!36919 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75470)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168193 (= res!775137 (not (validKeyInArray!0 (select (arr!36382 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!44257)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!44257)

(declare-fun lt!525892 () array!75470)

(declare-fun lt!525894 () array!75468)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18878 0))(
  ( (tuple2!18879 (_1!9449 (_ BitVec 64)) (_2!9449 V!44257)) )
))
(declare-datatypes ((List!25654 0))(
  ( (Nil!25651) (Cons!25650 (h!26859 tuple2!18878) (t!37470 List!25654)) )
))
(declare-datatypes ((ListLongMap!16859 0))(
  ( (ListLongMap!16860 (toList!8445 List!25654)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4878 (array!75470 array!75468 (_ BitVec 32) (_ BitVec 32) V!44257 V!44257 (_ BitVec 32) Int) ListLongMap!16859)

(declare-fun -!1474 (ListLongMap!16859 (_ BitVec 64)) ListLongMap!16859)

(assert (=> b!1168193 (= (getCurrentListMapNoExtraKeys!4878 lt!525892 lt!525894 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1474 (getCurrentListMapNoExtraKeys!4878 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38438 0))(
  ( (Unit!38439) )
))
(declare-fun lt!525897 () Unit!38438)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!698 (array!75470 array!75468 (_ BitVec 32) (_ BitVec 32) V!44257 V!44257 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38438)

(assert (=> b!1168193 (= lt!525897 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!698 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168194 () Bool)

(assert (=> b!1168194 (= e!663974 tp_is_empty!29347)))

(declare-fun b!1168195 () Bool)

(assert (=> b!1168195 (= e!663970 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36919 _keys!1208))))))

(declare-fun b!1168197 () Bool)

(declare-fun e!663973 () Bool)

(assert (=> b!1168197 (= e!663973 e!663969)))

(declare-fun res!775130 () Bool)

(assert (=> b!1168197 (=> res!775130 e!663969)))

(assert (=> b!1168197 (= res!775130 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525896 () ListLongMap!16859)

(assert (=> b!1168197 (= lt!525896 (getCurrentListMapNoExtraKeys!4878 lt!525892 lt!525894 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2870 (Int (_ BitVec 64)) V!44257)

(assert (=> b!1168197 (= lt!525894 (array!75469 (store (arr!36381 _values!996) i!673 (ValueCellFull!13964 (dynLambda!2870 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36918 _values!996)))))

(declare-fun lt!525893 () ListLongMap!16859)

(assert (=> b!1168197 (= lt!525893 (getCurrentListMapNoExtraKeys!4878 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168198 () Bool)

(declare-fun res!775135 () Bool)

(assert (=> b!1168198 (=> (not res!775135) (not e!663975))))

(assert (=> b!1168198 (= res!775135 (and (= (size!36918 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36919 _keys!1208) (size!36918 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!45845 () Bool)

(assert (=> mapIsEmpty!45845 mapRes!45845))

(declare-fun b!1168199 () Bool)

(declare-fun e!663972 () Bool)

(assert (=> b!1168199 (= e!663975 e!663972)))

(declare-fun res!775138 () Bool)

(assert (=> b!1168199 (=> (not res!775138) (not e!663972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75470 (_ BitVec 32)) Bool)

(assert (=> b!1168199 (= res!775138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525892 mask!1564))))

(assert (=> b!1168199 (= lt!525892 (array!75471 (store (arr!36382 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36919 _keys!1208)))))

(declare-fun b!1168200 () Bool)

(declare-fun res!775131 () Bool)

(assert (=> b!1168200 (=> (not res!775131) (not e!663975))))

(assert (=> b!1168200 (= res!775131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168201 () Bool)

(assert (=> b!1168201 (= e!663972 (not e!663973))))

(declare-fun res!775134 () Bool)

(assert (=> b!1168201 (=> res!775134 e!663973)))

(assert (=> b!1168201 (= res!775134 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168201 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525895 () Unit!38438)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75470 (_ BitVec 64) (_ BitVec 32)) Unit!38438)

(assert (=> b!1168201 (= lt!525895 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168202 () Bool)

(declare-fun res!775132 () Bool)

(assert (=> b!1168202 (=> (not res!775132) (not e!663975))))

(declare-datatypes ((List!25655 0))(
  ( (Nil!25652) (Cons!25651 (h!26860 (_ BitVec 64)) (t!37471 List!25655)) )
))
(declare-fun arrayNoDuplicates!0 (array!75470 (_ BitVec 32) List!25655) Bool)

(assert (=> b!1168202 (= res!775132 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25652))))

(declare-fun b!1168203 () Bool)

(declare-fun res!775127 () Bool)

(assert (=> b!1168203 (=> (not res!775127) (not e!663972))))

(assert (=> b!1168203 (= res!775127 (arrayNoDuplicates!0 lt!525892 #b00000000000000000000000000000000 Nil!25652))))

(declare-fun b!1168204 () Bool)

(declare-fun res!775133 () Bool)

(assert (=> b!1168204 (=> (not res!775133) (not e!663975))))

(assert (=> b!1168204 (= res!775133 (validKeyInArray!0 k!934))))

(declare-fun b!1168196 () Bool)

(declare-fun res!775136 () Bool)

(assert (=> b!1168196 (=> (not res!775136) (not e!663975))))

(assert (=> b!1168196 (= res!775136 (= (select (arr!36382 _keys!1208) i!673) k!934))))

(declare-fun res!775139 () Bool)

(assert (=> start!99248 (=> (not res!775139) (not e!663975))))

(assert (=> start!99248 (= res!775139 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36919 _keys!1208))))))

(assert (=> start!99248 e!663975))

(assert (=> start!99248 tp_is_empty!29347))

(declare-fun array_inv!27688 (array!75470) Bool)

(assert (=> start!99248 (array_inv!27688 _keys!1208)))

(assert (=> start!99248 true))

(assert (=> start!99248 tp!87163))

(declare-fun e!663971 () Bool)

(declare-fun array_inv!27689 (array!75468) Bool)

(assert (=> start!99248 (and (array_inv!27689 _values!996) e!663971)))

(declare-fun b!1168205 () Bool)

(declare-fun res!775128 () Bool)

(assert (=> b!1168205 (=> (not res!775128) (not e!663975))))

(assert (=> b!1168205 (= res!775128 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36919 _keys!1208))))))

(declare-fun b!1168206 () Bool)

(assert (=> b!1168206 (= e!663971 (and e!663968 mapRes!45845))))

(declare-fun condMapEmpty!45845 () Bool)

(declare-fun mapDefault!45845 () ValueCell!13964)

