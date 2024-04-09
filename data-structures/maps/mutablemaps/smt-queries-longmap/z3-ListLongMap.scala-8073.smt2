; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99342 () Bool)

(assert start!99342)

(declare-fun b_free!24885 () Bool)

(declare-fun b_next!24885 () Bool)

(assert (=> start!99342 (= b_free!24885 (not b_next!24885))))

(declare-fun tp!87370 () Bool)

(declare-fun b_and!40651 () Bool)

(assert (=> start!99342 (= tp!87370 b_and!40651)))

(declare-fun b!1170184 () Bool)

(declare-fun e!665131 () Bool)

(declare-fun e!665130 () Bool)

(assert (=> b!1170184 (= e!665131 e!665130)))

(declare-fun res!776666 () Bool)

(assert (=> b!1170184 (=> (not res!776666) (not e!665130))))

(declare-datatypes ((array!75606 0))(
  ( (array!75607 (arr!36449 (Array (_ BitVec 32) (_ BitVec 64))) (size!36986 (_ BitVec 32))) )
))
(declare-fun lt!526976 () array!75606)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75606 (_ BitVec 32)) Bool)

(assert (=> b!1170184 (= res!776666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526976 mask!1564))))

(declare-fun _keys!1208 () array!75606)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170184 (= lt!526976 (array!75607 (store (arr!36449 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36986 _keys!1208)))))

(declare-fun b!1170185 () Bool)

(declare-fun res!776668 () Bool)

(assert (=> b!1170185 (=> (not res!776668) (not e!665130))))

(declare-datatypes ((List!25715 0))(
  ( (Nil!25712) (Cons!25711 (h!26920 (_ BitVec 64)) (t!37599 List!25715)) )
))
(declare-fun arrayNoDuplicates!0 (array!75606 (_ BitVec 32) List!25715) Bool)

(assert (=> b!1170185 (= res!776668 (arrayNoDuplicates!0 lt!526976 #b00000000000000000000000000000000 Nil!25712))))

(declare-fun b!1170186 () Bool)

(declare-fun res!776676 () Bool)

(assert (=> b!1170186 (=> (not res!776676) (not e!665131))))

(assert (=> b!1170186 (= res!776676 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25712))))

(declare-fun b!1170187 () Bool)

(declare-fun e!665139 () Bool)

(declare-fun e!665140 () Bool)

(assert (=> b!1170187 (= e!665139 e!665140)))

(declare-fun res!776675 () Bool)

(assert (=> b!1170187 (=> res!776675 e!665140)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1170187 (= res!776675 (not (= (select (arr!36449 _keys!1208) from!1455) k0!934)))))

(declare-fun e!665132 () Bool)

(assert (=> b!1170187 e!665132))

(declare-fun res!776672 () Bool)

(assert (=> b!1170187 (=> (not res!776672) (not e!665132))))

(declare-datatypes ((V!44347 0))(
  ( (V!44348 (val!14764 Int)) )
))
(declare-fun lt!526982 () V!44347)

(declare-datatypes ((tuple2!18944 0))(
  ( (tuple2!18945 (_1!9482 (_ BitVec 64)) (_2!9482 V!44347)) )
))
(declare-datatypes ((List!25716 0))(
  ( (Nil!25713) (Cons!25712 (h!26921 tuple2!18944) (t!37600 List!25716)) )
))
(declare-datatypes ((ListLongMap!16925 0))(
  ( (ListLongMap!16926 (toList!8478 List!25716)) )
))
(declare-fun lt!526978 () ListLongMap!16925)

(declare-datatypes ((ValueCell!13998 0))(
  ( (ValueCellFull!13998 (v!17403 V!44347)) (EmptyCell!13998) )
))
(declare-datatypes ((array!75608 0))(
  ( (array!75609 (arr!36450 (Array (_ BitVec 32) ValueCell!13998)) (size!36987 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75608)

(declare-fun lt!526981 () ListLongMap!16925)

(declare-fun +!3722 (ListLongMap!16925 tuple2!18944) ListLongMap!16925)

(declare-fun get!18617 (ValueCell!13998 V!44347) V!44347)

(assert (=> b!1170187 (= res!776672 (= lt!526981 (+!3722 lt!526978 (tuple2!18945 (select (arr!36449 _keys!1208) from!1455) (get!18617 (select (arr!36450 _values!996) from!1455) lt!526982)))))))

(declare-fun b!1170188 () Bool)

(declare-fun e!665133 () Bool)

(declare-fun e!665129 () Bool)

(declare-fun mapRes!45950 () Bool)

(assert (=> b!1170188 (= e!665133 (and e!665129 mapRes!45950))))

(declare-fun condMapEmpty!45950 () Bool)

(declare-fun mapDefault!45950 () ValueCell!13998)

(assert (=> b!1170188 (= condMapEmpty!45950 (= (arr!36450 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13998)) mapDefault!45950)))))

(declare-fun b!1170189 () Bool)

(declare-fun e!665136 () Bool)

(declare-fun arrayContainsKey!0 (array!75606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170189 (= e!665136 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170190 () Bool)

(declare-fun e!665137 () Bool)

(declare-fun tp_is_empty!29415 () Bool)

(assert (=> b!1170190 (= e!665137 tp_is_empty!29415)))

(declare-fun b!1170191 () Bool)

(declare-fun e!665135 () Bool)

(declare-fun e!665134 () Bool)

(assert (=> b!1170191 (= e!665135 e!665134)))

(declare-fun res!776669 () Bool)

(assert (=> b!1170191 (=> res!776669 e!665134)))

(assert (=> b!1170191 (= res!776669 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44347)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526977 () array!75608)

(declare-fun minValue!944 () V!44347)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4911 (array!75606 array!75608 (_ BitVec 32) (_ BitVec 32) V!44347 V!44347 (_ BitVec 32) Int) ListLongMap!16925)

(assert (=> b!1170191 (= lt!526981 (getCurrentListMapNoExtraKeys!4911 lt!526976 lt!526977 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1170191 (= lt!526977 (array!75609 (store (arr!36450 _values!996) i!673 (ValueCellFull!13998 lt!526982)) (size!36987 _values!996)))))

(declare-fun dynLambda!2900 (Int (_ BitVec 64)) V!44347)

(assert (=> b!1170191 (= lt!526982 (dynLambda!2900 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526979 () ListLongMap!16925)

(assert (=> b!1170191 (= lt!526979 (getCurrentListMapNoExtraKeys!4911 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170192 () Bool)

(declare-fun res!776667 () Bool)

(assert (=> b!1170192 (=> (not res!776667) (not e!665131))))

(assert (=> b!1170192 (= res!776667 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36986 _keys!1208))))))

(declare-fun mapIsEmpty!45950 () Bool)

(assert (=> mapIsEmpty!45950 mapRes!45950))

(declare-fun b!1170193 () Bool)

(declare-fun res!776662 () Bool)

(assert (=> b!1170193 (=> (not res!776662) (not e!665131))))

(assert (=> b!1170193 (= res!776662 (= (select (arr!36449 _keys!1208) i!673) k0!934))))

(declare-fun b!1170194 () Bool)

(assert (=> b!1170194 (= e!665132 e!665136)))

(declare-fun res!776670 () Bool)

(assert (=> b!1170194 (=> res!776670 e!665136)))

(assert (=> b!1170194 (= res!776670 (not (= (select (arr!36449 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1170195 () Bool)

(declare-fun res!776671 () Bool)

(assert (=> b!1170195 (=> (not res!776671) (not e!665131))))

(assert (=> b!1170195 (= res!776671 (and (= (size!36987 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36986 _keys!1208) (size!36987 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45950 () Bool)

(declare-fun tp!87369 () Bool)

(assert (=> mapNonEmpty!45950 (= mapRes!45950 (and tp!87369 e!665137))))

(declare-fun mapKey!45950 () (_ BitVec 32))

(declare-fun mapValue!45950 () ValueCell!13998)

(declare-fun mapRest!45950 () (Array (_ BitVec 32) ValueCell!13998))

(assert (=> mapNonEmpty!45950 (= (arr!36450 _values!996) (store mapRest!45950 mapKey!45950 mapValue!45950))))

(declare-fun b!1170196 () Bool)

(assert (=> b!1170196 (= e!665134 e!665139)))

(declare-fun res!776665 () Bool)

(assert (=> b!1170196 (=> res!776665 e!665139)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170196 (= res!776665 (not (validKeyInArray!0 (select (arr!36449 _keys!1208) from!1455))))))

(declare-fun lt!526975 () ListLongMap!16925)

(assert (=> b!1170196 (= lt!526975 lt!526978)))

(declare-fun lt!526980 () ListLongMap!16925)

(declare-fun -!1499 (ListLongMap!16925 (_ BitVec 64)) ListLongMap!16925)

(assert (=> b!1170196 (= lt!526978 (-!1499 lt!526980 k0!934))))

(assert (=> b!1170196 (= lt!526975 (getCurrentListMapNoExtraKeys!4911 lt!526976 lt!526977 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170196 (= lt!526980 (getCurrentListMapNoExtraKeys!4911 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38498 0))(
  ( (Unit!38499) )
))
(declare-fun lt!526974 () Unit!38498)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!723 (array!75606 array!75608 (_ BitVec 32) (_ BitVec 32) V!44347 V!44347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38498)

(assert (=> b!1170196 (= lt!526974 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!723 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170197 () Bool)

(assert (=> b!1170197 (= e!665140 true)))

(assert (=> b!1170197 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!526983 () Unit!38498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75606 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38498)

(assert (=> b!1170197 (= lt!526983 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170198 () Bool)

(declare-fun res!776674 () Bool)

(assert (=> b!1170198 (=> (not res!776674) (not e!665131))))

(assert (=> b!1170198 (= res!776674 (validKeyInArray!0 k0!934))))

(declare-fun res!776663 () Bool)

(assert (=> start!99342 (=> (not res!776663) (not e!665131))))

(assert (=> start!99342 (= res!776663 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36986 _keys!1208))))))

(assert (=> start!99342 e!665131))

(assert (=> start!99342 tp_is_empty!29415))

(declare-fun array_inv!27738 (array!75606) Bool)

(assert (=> start!99342 (array_inv!27738 _keys!1208)))

(assert (=> start!99342 true))

(assert (=> start!99342 tp!87370))

(declare-fun array_inv!27739 (array!75608) Bool)

(assert (=> start!99342 (and (array_inv!27739 _values!996) e!665133)))

(declare-fun b!1170199 () Bool)

(assert (=> b!1170199 (= e!665129 tp_is_empty!29415)))

(declare-fun b!1170200 () Bool)

(assert (=> b!1170200 (= e!665130 (not e!665135))))

(declare-fun res!776677 () Bool)

(assert (=> b!1170200 (=> res!776677 e!665135)))

(assert (=> b!1170200 (= res!776677 (bvsgt from!1455 i!673))))

(assert (=> b!1170200 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!526973 () Unit!38498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75606 (_ BitVec 64) (_ BitVec 32)) Unit!38498)

(assert (=> b!1170200 (= lt!526973 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170201 () Bool)

(declare-fun res!776664 () Bool)

(assert (=> b!1170201 (=> (not res!776664) (not e!665131))))

(assert (=> b!1170201 (= res!776664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170202 () Bool)

(declare-fun res!776673 () Bool)

(assert (=> b!1170202 (=> (not res!776673) (not e!665131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170202 (= res!776673 (validMask!0 mask!1564))))

(assert (= (and start!99342 res!776663) b!1170202))

(assert (= (and b!1170202 res!776673) b!1170195))

(assert (= (and b!1170195 res!776671) b!1170201))

(assert (= (and b!1170201 res!776664) b!1170186))

(assert (= (and b!1170186 res!776676) b!1170192))

(assert (= (and b!1170192 res!776667) b!1170198))

(assert (= (and b!1170198 res!776674) b!1170193))

(assert (= (and b!1170193 res!776662) b!1170184))

(assert (= (and b!1170184 res!776666) b!1170185))

(assert (= (and b!1170185 res!776668) b!1170200))

(assert (= (and b!1170200 (not res!776677)) b!1170191))

(assert (= (and b!1170191 (not res!776669)) b!1170196))

(assert (= (and b!1170196 (not res!776665)) b!1170187))

(assert (= (and b!1170187 res!776672) b!1170194))

(assert (= (and b!1170194 (not res!776670)) b!1170189))

(assert (= (and b!1170187 (not res!776675)) b!1170197))

(assert (= (and b!1170188 condMapEmpty!45950) mapIsEmpty!45950))

(assert (= (and b!1170188 (not condMapEmpty!45950)) mapNonEmpty!45950))

(get-info :version)

(assert (= (and mapNonEmpty!45950 ((_ is ValueCellFull!13998) mapValue!45950)) b!1170190))

(assert (= (and b!1170188 ((_ is ValueCellFull!13998) mapDefault!45950)) b!1170199))

(assert (= start!99342 b!1170188))

(declare-fun b_lambda!20047 () Bool)

(assert (=> (not b_lambda!20047) (not b!1170191)))

(declare-fun t!37598 () Bool)

(declare-fun tb!9705 () Bool)

(assert (=> (and start!99342 (= defaultEntry!1004 defaultEntry!1004) t!37598) tb!9705))

(declare-fun result!19969 () Bool)

(assert (=> tb!9705 (= result!19969 tp_is_empty!29415)))

(assert (=> b!1170191 t!37598))

(declare-fun b_and!40653 () Bool)

(assert (= b_and!40651 (and (=> t!37598 result!19969) b_and!40653)))

(declare-fun m!1078071 () Bool)

(assert (=> b!1170187 m!1078071))

(declare-fun m!1078073 () Bool)

(assert (=> b!1170187 m!1078073))

(assert (=> b!1170187 m!1078073))

(declare-fun m!1078075 () Bool)

(assert (=> b!1170187 m!1078075))

(declare-fun m!1078077 () Bool)

(assert (=> b!1170187 m!1078077))

(declare-fun m!1078079 () Bool)

(assert (=> b!1170191 m!1078079))

(declare-fun m!1078081 () Bool)

(assert (=> b!1170191 m!1078081))

(declare-fun m!1078083 () Bool)

(assert (=> b!1170191 m!1078083))

(declare-fun m!1078085 () Bool)

(assert (=> b!1170191 m!1078085))

(declare-fun m!1078087 () Bool)

(assert (=> b!1170193 m!1078087))

(declare-fun m!1078089 () Bool)

(assert (=> b!1170198 m!1078089))

(declare-fun m!1078091 () Bool)

(assert (=> b!1170201 m!1078091))

(declare-fun m!1078093 () Bool)

(assert (=> b!1170196 m!1078093))

(declare-fun m!1078095 () Bool)

(assert (=> b!1170196 m!1078095))

(declare-fun m!1078097 () Bool)

(assert (=> b!1170196 m!1078097))

(declare-fun m!1078099 () Bool)

(assert (=> b!1170196 m!1078099))

(assert (=> b!1170196 m!1078071))

(declare-fun m!1078101 () Bool)

(assert (=> b!1170196 m!1078101))

(assert (=> b!1170196 m!1078071))

(declare-fun m!1078103 () Bool)

(assert (=> b!1170200 m!1078103))

(declare-fun m!1078105 () Bool)

(assert (=> b!1170200 m!1078105))

(declare-fun m!1078107 () Bool)

(assert (=> start!99342 m!1078107))

(declare-fun m!1078109 () Bool)

(assert (=> start!99342 m!1078109))

(assert (=> b!1170194 m!1078071))

(declare-fun m!1078111 () Bool)

(assert (=> b!1170202 m!1078111))

(declare-fun m!1078113 () Bool)

(assert (=> b!1170185 m!1078113))

(declare-fun m!1078115 () Bool)

(assert (=> b!1170197 m!1078115))

(declare-fun m!1078117 () Bool)

(assert (=> b!1170197 m!1078117))

(declare-fun m!1078119 () Bool)

(assert (=> b!1170186 m!1078119))

(declare-fun m!1078121 () Bool)

(assert (=> b!1170189 m!1078121))

(declare-fun m!1078123 () Bool)

(assert (=> mapNonEmpty!45950 m!1078123))

(declare-fun m!1078125 () Bool)

(assert (=> b!1170184 m!1078125))

(declare-fun m!1078127 () Bool)

(assert (=> b!1170184 m!1078127))

(check-sat (not b!1170201) (not b!1170185) (not start!99342) (not b!1170198) (not b!1170191) (not b_lambda!20047) (not b!1170202) (not b!1170187) tp_is_empty!29415 (not b!1170184) (not b_next!24885) b_and!40653 (not b!1170186) (not b!1170196) (not b!1170197) (not b!1170189) (not mapNonEmpty!45950) (not b!1170200))
(check-sat b_and!40653 (not b_next!24885))
