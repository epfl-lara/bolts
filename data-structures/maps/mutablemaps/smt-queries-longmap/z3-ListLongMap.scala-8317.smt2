; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101288 () Bool)

(assert start!101288)

(declare-fun b_free!26175 () Bool)

(declare-fun b_next!26175 () Bool)

(assert (=> start!101288 (= b_free!26175 (not b_next!26175))))

(declare-fun tp!91548 () Bool)

(declare-fun b_and!43477 () Bool)

(assert (=> start!101288 (= tp!91548 b_and!43477)))

(declare-fun b!1216048 () Bool)

(declare-fun e!690467 () Bool)

(declare-fun tp_is_empty!30879 () Bool)

(assert (=> b!1216048 (= e!690467 tp_is_empty!30879)))

(declare-fun b!1216049 () Bool)

(declare-fun e!690471 () Bool)

(assert (=> b!1216049 (= e!690471 true)))

(declare-datatypes ((V!46299 0))(
  ( (V!46300 (val!15496 Int)) )
))
(declare-fun zeroValue!944 () V!46299)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!78508 0))(
  ( (array!78509 (arr!37885 (Array (_ BitVec 32) (_ BitVec 64))) (size!38422 (_ BitVec 32))) )
))
(declare-fun lt!552743 () array!78508)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14730 0))(
  ( (ValueCellFull!14730 (v!18150 V!46299)) (EmptyCell!14730) )
))
(declare-datatypes ((array!78510 0))(
  ( (array!78511 (arr!37886 (Array (_ BitVec 32) ValueCell!14730)) (size!38423 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78510)

(declare-fun minValue!944 () V!46299)

(declare-datatypes ((tuple2!20062 0))(
  ( (tuple2!20063 (_1!10041 (_ BitVec 64)) (_2!10041 V!46299)) )
))
(declare-datatypes ((List!26881 0))(
  ( (Nil!26878) (Cons!26877 (h!28086 tuple2!20062) (t!40043 List!26881)) )
))
(declare-datatypes ((ListLongMap!18043 0))(
  ( (ListLongMap!18044 (toList!9037 List!26881)) )
))
(declare-fun lt!552740 () ListLongMap!18043)

(declare-fun getCurrentListMapNoExtraKeys!5442 (array!78508 array!78510 (_ BitVec 32) (_ BitVec 32) V!46299 V!46299 (_ BitVec 32) Int) ListLongMap!18043)

(declare-fun dynLambda!3351 (Int (_ BitVec 64)) V!46299)

(assert (=> b!1216049 (= lt!552740 (getCurrentListMapNoExtraKeys!5442 lt!552743 (array!78511 (store (arr!37886 _values!996) i!673 (ValueCellFull!14730 (dynLambda!3351 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38423 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!78508)

(declare-fun lt!552741 () ListLongMap!18043)

(assert (=> b!1216049 (= lt!552741 (getCurrentListMapNoExtraKeys!5442 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1216050 () Bool)

(declare-fun e!690465 () Bool)

(declare-fun e!690469 () Bool)

(assert (=> b!1216050 (= e!690465 e!690469)))

(declare-fun res!807563 () Bool)

(assert (=> b!1216050 (=> (not res!807563) (not e!690469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78508 (_ BitVec 32)) Bool)

(assert (=> b!1216050 (= res!807563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552743 mask!1564))))

(assert (=> b!1216050 (= lt!552743 (array!78509 (store (arr!37885 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38422 _keys!1208)))))

(declare-fun b!1216051 () Bool)

(declare-fun res!807562 () Bool)

(assert (=> b!1216051 (=> (not res!807562) (not e!690465))))

(assert (=> b!1216051 (= res!807562 (and (= (size!38423 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38422 _keys!1208) (size!38423 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216052 () Bool)

(declare-fun e!690466 () Bool)

(declare-fun mapRes!48193 () Bool)

(assert (=> b!1216052 (= e!690466 (and e!690467 mapRes!48193))))

(declare-fun condMapEmpty!48193 () Bool)

(declare-fun mapDefault!48193 () ValueCell!14730)

(assert (=> b!1216052 (= condMapEmpty!48193 (= (arr!37886 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14730)) mapDefault!48193)))))

(declare-fun mapIsEmpty!48193 () Bool)

(assert (=> mapIsEmpty!48193 mapRes!48193))

(declare-fun b!1216053 () Bool)

(declare-fun res!807559 () Bool)

(assert (=> b!1216053 (=> (not res!807559) (not e!690465))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1216053 (= res!807559 (= (select (arr!37885 _keys!1208) i!673) k0!934))))

(declare-fun b!1216054 () Bool)

(declare-fun res!807561 () Bool)

(assert (=> b!1216054 (=> (not res!807561) (not e!690465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216054 (= res!807561 (validKeyInArray!0 k0!934))))

(declare-fun res!807565 () Bool)

(assert (=> start!101288 (=> (not res!807565) (not e!690465))))

(assert (=> start!101288 (= res!807565 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38422 _keys!1208))))))

(assert (=> start!101288 e!690465))

(assert (=> start!101288 tp_is_empty!30879))

(declare-fun array_inv!28746 (array!78508) Bool)

(assert (=> start!101288 (array_inv!28746 _keys!1208)))

(assert (=> start!101288 true))

(assert (=> start!101288 tp!91548))

(declare-fun array_inv!28747 (array!78510) Bool)

(assert (=> start!101288 (and (array_inv!28747 _values!996) e!690466)))

(declare-fun b!1216055 () Bool)

(declare-fun e!690468 () Bool)

(assert (=> b!1216055 (= e!690468 tp_is_empty!30879)))

(declare-fun mapNonEmpty!48193 () Bool)

(declare-fun tp!91547 () Bool)

(assert (=> mapNonEmpty!48193 (= mapRes!48193 (and tp!91547 e!690468))))

(declare-fun mapValue!48193 () ValueCell!14730)

(declare-fun mapRest!48193 () (Array (_ BitVec 32) ValueCell!14730))

(declare-fun mapKey!48193 () (_ BitVec 32))

(assert (=> mapNonEmpty!48193 (= (arr!37886 _values!996) (store mapRest!48193 mapKey!48193 mapValue!48193))))

(declare-fun b!1216056 () Bool)

(declare-fun res!807558 () Bool)

(assert (=> b!1216056 (=> (not res!807558) (not e!690465))))

(assert (=> b!1216056 (= res!807558 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38422 _keys!1208))))))

(declare-fun b!1216057 () Bool)

(declare-fun res!807567 () Bool)

(assert (=> b!1216057 (=> (not res!807567) (not e!690469))))

(declare-datatypes ((List!26882 0))(
  ( (Nil!26879) (Cons!26878 (h!28087 (_ BitVec 64)) (t!40044 List!26882)) )
))
(declare-fun arrayNoDuplicates!0 (array!78508 (_ BitVec 32) List!26882) Bool)

(assert (=> b!1216057 (= res!807567 (arrayNoDuplicates!0 lt!552743 #b00000000000000000000000000000000 Nil!26879))))

(declare-fun b!1216058 () Bool)

(assert (=> b!1216058 (= e!690469 (not e!690471))))

(declare-fun res!807564 () Bool)

(assert (=> b!1216058 (=> res!807564 e!690471)))

(assert (=> b!1216058 (= res!807564 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216058 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40258 0))(
  ( (Unit!40259) )
))
(declare-fun lt!552742 () Unit!40258)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78508 (_ BitVec 64) (_ BitVec 32)) Unit!40258)

(assert (=> b!1216058 (= lt!552742 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1216059 () Bool)

(declare-fun res!807560 () Bool)

(assert (=> b!1216059 (=> (not res!807560) (not e!690465))))

(assert (=> b!1216059 (= res!807560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216060 () Bool)

(declare-fun res!807566 () Bool)

(assert (=> b!1216060 (=> (not res!807566) (not e!690465))))

(assert (=> b!1216060 (= res!807566 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26879))))

(declare-fun b!1216061 () Bool)

(declare-fun res!807568 () Bool)

(assert (=> b!1216061 (=> (not res!807568) (not e!690465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216061 (= res!807568 (validMask!0 mask!1564))))

(assert (= (and start!101288 res!807565) b!1216061))

(assert (= (and b!1216061 res!807568) b!1216051))

(assert (= (and b!1216051 res!807562) b!1216059))

(assert (= (and b!1216059 res!807560) b!1216060))

(assert (= (and b!1216060 res!807566) b!1216056))

(assert (= (and b!1216056 res!807558) b!1216054))

(assert (= (and b!1216054 res!807561) b!1216053))

(assert (= (and b!1216053 res!807559) b!1216050))

(assert (= (and b!1216050 res!807563) b!1216057))

(assert (= (and b!1216057 res!807567) b!1216058))

(assert (= (and b!1216058 (not res!807564)) b!1216049))

(assert (= (and b!1216052 condMapEmpty!48193) mapIsEmpty!48193))

(assert (= (and b!1216052 (not condMapEmpty!48193)) mapNonEmpty!48193))

(get-info :version)

(assert (= (and mapNonEmpty!48193 ((_ is ValueCellFull!14730) mapValue!48193)) b!1216055))

(assert (= (and b!1216052 ((_ is ValueCellFull!14730) mapDefault!48193)) b!1216048))

(assert (= start!101288 b!1216052))

(declare-fun b_lambda!21861 () Bool)

(assert (=> (not b_lambda!21861) (not b!1216049)))

(declare-fun t!40042 () Bool)

(declare-fun tb!10983 () Bool)

(assert (=> (and start!101288 (= defaultEntry!1004 defaultEntry!1004) t!40042) tb!10983))

(declare-fun result!22555 () Bool)

(assert (=> tb!10983 (= result!22555 tp_is_empty!30879)))

(assert (=> b!1216049 t!40042))

(declare-fun b_and!43479 () Bool)

(assert (= b_and!43477 (and (=> t!40042 result!22555) b_and!43479)))

(declare-fun m!1120905 () Bool)

(assert (=> start!101288 m!1120905))

(declare-fun m!1120907 () Bool)

(assert (=> start!101288 m!1120907))

(declare-fun m!1120909 () Bool)

(assert (=> b!1216059 m!1120909))

(declare-fun m!1120911 () Bool)

(assert (=> b!1216061 m!1120911))

(declare-fun m!1120913 () Bool)

(assert (=> b!1216060 m!1120913))

(declare-fun m!1120915 () Bool)

(assert (=> b!1216054 m!1120915))

(declare-fun m!1120917 () Bool)

(assert (=> b!1216058 m!1120917))

(declare-fun m!1120919 () Bool)

(assert (=> b!1216058 m!1120919))

(declare-fun m!1120921 () Bool)

(assert (=> b!1216057 m!1120921))

(declare-fun m!1120923 () Bool)

(assert (=> b!1216049 m!1120923))

(declare-fun m!1120925 () Bool)

(assert (=> b!1216049 m!1120925))

(declare-fun m!1120927 () Bool)

(assert (=> b!1216049 m!1120927))

(declare-fun m!1120929 () Bool)

(assert (=> b!1216049 m!1120929))

(declare-fun m!1120931 () Bool)

(assert (=> b!1216053 m!1120931))

(declare-fun m!1120933 () Bool)

(assert (=> mapNonEmpty!48193 m!1120933))

(declare-fun m!1120935 () Bool)

(assert (=> b!1216050 m!1120935))

(declare-fun m!1120937 () Bool)

(assert (=> b!1216050 m!1120937))

(check-sat tp_is_empty!30879 b_and!43479 (not b!1216059) (not b!1216057) (not mapNonEmpty!48193) (not b_next!26175) (not b!1216060) (not b!1216054) (not b_lambda!21861) (not b!1216050) (not start!101288) (not b!1216061) (not b!1216058) (not b!1216049))
(check-sat b_and!43479 (not b_next!26175))
