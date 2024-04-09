; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99336 () Bool)

(assert start!99336)

(declare-fun b_free!24879 () Bool)

(declare-fun b_next!24879 () Bool)

(assert (=> start!99336 (= b_free!24879 (not b_next!24879))))

(declare-fun tp!87352 () Bool)

(declare-fun b_and!40639 () Bool)

(assert (=> start!99336 (= tp!87352 b_and!40639)))

(declare-fun mapNonEmpty!45941 () Bool)

(declare-fun mapRes!45941 () Bool)

(declare-fun tp!87351 () Bool)

(declare-fun e!665028 () Bool)

(assert (=> mapNonEmpty!45941 (= mapRes!45941 (and tp!87351 e!665028))))

(declare-datatypes ((V!44339 0))(
  ( (V!44340 (val!14761 Int)) )
))
(declare-datatypes ((ValueCell!13995 0))(
  ( (ValueCellFull!13995 (v!17400 V!44339)) (EmptyCell!13995) )
))
(declare-fun mapRest!45941 () (Array (_ BitVec 32) ValueCell!13995))

(declare-fun mapValue!45941 () ValueCell!13995)

(declare-fun mapKey!45941 () (_ BitVec 32))

(declare-datatypes ((array!75594 0))(
  ( (array!75595 (arr!36443 (Array (_ BitVec 32) ValueCell!13995)) (size!36980 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75594)

(assert (=> mapNonEmpty!45941 (= (arr!36443 _values!996) (store mapRest!45941 mapKey!45941 mapValue!45941))))

(declare-fun b!1170007 () Bool)

(declare-fun tp_is_empty!29409 () Bool)

(assert (=> b!1170007 (= e!665028 tp_is_empty!29409)))

(declare-fun res!776529 () Bool)

(declare-fun e!665029 () Bool)

(assert (=> start!99336 (=> (not res!776529) (not e!665029))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75596 0))(
  ( (array!75597 (arr!36444 (Array (_ BitVec 32) (_ BitVec 64))) (size!36981 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75596)

(assert (=> start!99336 (= res!776529 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36981 _keys!1208))))))

(assert (=> start!99336 e!665029))

(assert (=> start!99336 tp_is_empty!29409))

(declare-fun array_inv!27734 (array!75596) Bool)

(assert (=> start!99336 (array_inv!27734 _keys!1208)))

(assert (=> start!99336 true))

(assert (=> start!99336 tp!87352))

(declare-fun e!665032 () Bool)

(declare-fun array_inv!27735 (array!75594) Bool)

(assert (=> start!99336 (and (array_inv!27735 _values!996) e!665032)))

(declare-fun b!1170008 () Bool)

(declare-fun e!665021 () Bool)

(declare-fun e!665023 () Bool)

(assert (=> b!1170008 (= e!665021 e!665023)))

(declare-fun res!776525 () Bool)

(assert (=> b!1170008 (=> res!776525 e!665023)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170008 (= res!776525 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44339)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18938 0))(
  ( (tuple2!18939 (_1!9479 (_ BitVec 64)) (_2!9479 V!44339)) )
))
(declare-datatypes ((List!25709 0))(
  ( (Nil!25706) (Cons!25705 (h!26914 tuple2!18938) (t!37587 List!25709)) )
))
(declare-datatypes ((ListLongMap!16919 0))(
  ( (ListLongMap!16920 (toList!8475 List!25709)) )
))
(declare-fun lt!526874 () ListLongMap!16919)

(declare-fun minValue!944 () V!44339)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!526881 () array!75596)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526883 () array!75594)

(declare-fun getCurrentListMapNoExtraKeys!4908 (array!75596 array!75594 (_ BitVec 32) (_ BitVec 32) V!44339 V!44339 (_ BitVec 32) Int) ListLongMap!16919)

(assert (=> b!1170008 (= lt!526874 (getCurrentListMapNoExtraKeys!4908 lt!526881 lt!526883 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526880 () V!44339)

(assert (=> b!1170008 (= lt!526883 (array!75595 (store (arr!36443 _values!996) i!673 (ValueCellFull!13995 lt!526880)) (size!36980 _values!996)))))

(declare-fun dynLambda!2897 (Int (_ BitVec 64)) V!44339)

(assert (=> b!1170008 (= lt!526880 (dynLambda!2897 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526876 () ListLongMap!16919)

(assert (=> b!1170008 (= lt!526876 (getCurrentListMapNoExtraKeys!4908 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170009 () Bool)

(declare-fun e!665026 () Bool)

(assert (=> b!1170009 (= e!665026 (not e!665021))))

(declare-fun res!776524 () Bool)

(assert (=> b!1170009 (=> res!776524 e!665021)))

(assert (=> b!1170009 (= res!776524 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170009 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38492 0))(
  ( (Unit!38493) )
))
(declare-fun lt!526877 () Unit!38492)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75596 (_ BitVec 64) (_ BitVec 32)) Unit!38492)

(assert (=> b!1170009 (= lt!526877 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170010 () Bool)

(declare-fun e!665030 () Bool)

(assert (=> b!1170010 (= e!665023 e!665030)))

(declare-fun res!776530 () Bool)

(assert (=> b!1170010 (=> res!776530 e!665030)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170010 (= res!776530 (not (validKeyInArray!0 (select (arr!36444 _keys!1208) from!1455))))))

(declare-fun lt!526879 () ListLongMap!16919)

(declare-fun lt!526875 () ListLongMap!16919)

(assert (=> b!1170010 (= lt!526879 lt!526875)))

(declare-fun lt!526882 () ListLongMap!16919)

(declare-fun -!1497 (ListLongMap!16919 (_ BitVec 64)) ListLongMap!16919)

(assert (=> b!1170010 (= lt!526875 (-!1497 lt!526882 k0!934))))

(assert (=> b!1170010 (= lt!526879 (getCurrentListMapNoExtraKeys!4908 lt!526881 lt!526883 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170010 (= lt!526882 (getCurrentListMapNoExtraKeys!4908 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526878 () Unit!38492)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!721 (array!75596 array!75594 (_ BitVec 32) (_ BitVec 32) V!44339 V!44339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38492)

(assert (=> b!1170010 (= lt!526878 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!721 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170011 () Bool)

(declare-fun res!776526 () Bool)

(assert (=> b!1170011 (=> (not res!776526) (not e!665026))))

(declare-datatypes ((List!25710 0))(
  ( (Nil!25707) (Cons!25706 (h!26915 (_ BitVec 64)) (t!37588 List!25710)) )
))
(declare-fun arrayNoDuplicates!0 (array!75596 (_ BitVec 32) List!25710) Bool)

(assert (=> b!1170011 (= res!776526 (arrayNoDuplicates!0 lt!526881 #b00000000000000000000000000000000 Nil!25707))))

(declare-fun b!1170012 () Bool)

(declare-fun e!665022 () Bool)

(assert (=> b!1170012 (= e!665032 (and e!665022 mapRes!45941))))

(declare-fun condMapEmpty!45941 () Bool)

(declare-fun mapDefault!45941 () ValueCell!13995)

(assert (=> b!1170012 (= condMapEmpty!45941 (= (arr!36443 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13995)) mapDefault!45941)))))

(declare-fun b!1170013 () Bool)

(declare-fun res!776519 () Bool)

(assert (=> b!1170013 (=> (not res!776519) (not e!665029))))

(assert (=> b!1170013 (= res!776519 (= (select (arr!36444 _keys!1208) i!673) k0!934))))

(declare-fun b!1170014 () Bool)

(assert (=> b!1170014 (= e!665029 e!665026)))

(declare-fun res!776522 () Bool)

(assert (=> b!1170014 (=> (not res!776522) (not e!665026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75596 (_ BitVec 32)) Bool)

(assert (=> b!1170014 (= res!776522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526881 mask!1564))))

(assert (=> b!1170014 (= lt!526881 (array!75597 (store (arr!36444 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36981 _keys!1208)))))

(declare-fun b!1170015 () Bool)

(assert (=> b!1170015 (= e!665022 tp_is_empty!29409)))

(declare-fun b!1170016 () Bool)

(declare-fun res!776532 () Bool)

(assert (=> b!1170016 (=> (not res!776532) (not e!665029))))

(assert (=> b!1170016 (= res!776532 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36981 _keys!1208))))))

(declare-fun b!1170017 () Bool)

(declare-fun res!776527 () Bool)

(assert (=> b!1170017 (=> (not res!776527) (not e!665029))))

(assert (=> b!1170017 (= res!776527 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25707))))

(declare-fun b!1170018 () Bool)

(declare-fun res!776518 () Bool)

(assert (=> b!1170018 (=> (not res!776518) (not e!665029))))

(assert (=> b!1170018 (= res!776518 (and (= (size!36980 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36981 _keys!1208) (size!36980 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170019 () Bool)

(declare-fun e!665027 () Bool)

(assert (=> b!1170019 (= e!665030 e!665027)))

(declare-fun res!776523 () Bool)

(assert (=> b!1170019 (=> res!776523 e!665027)))

(assert (=> b!1170019 (= res!776523 (not (= (select (arr!36444 _keys!1208) from!1455) k0!934)))))

(declare-fun e!665024 () Bool)

(assert (=> b!1170019 e!665024))

(declare-fun res!776531 () Bool)

(assert (=> b!1170019 (=> (not res!776531) (not e!665024))))

(declare-fun +!3720 (ListLongMap!16919 tuple2!18938) ListLongMap!16919)

(declare-fun get!18613 (ValueCell!13995 V!44339) V!44339)

(assert (=> b!1170019 (= res!776531 (= lt!526874 (+!3720 lt!526875 (tuple2!18939 (select (arr!36444 _keys!1208) from!1455) (get!18613 (select (arr!36443 _values!996) from!1455) lt!526880)))))))

(declare-fun b!1170020 () Bool)

(declare-fun res!776528 () Bool)

(assert (=> b!1170020 (=> (not res!776528) (not e!665029))))

(assert (=> b!1170020 (= res!776528 (validKeyInArray!0 k0!934))))

(declare-fun b!1170021 () Bool)

(declare-fun res!776521 () Bool)

(assert (=> b!1170021 (=> (not res!776521) (not e!665029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170021 (= res!776521 (validMask!0 mask!1564))))

(declare-fun b!1170022 () Bool)

(assert (=> b!1170022 (= e!665027 true)))

(assert (=> b!1170022 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!526884 () Unit!38492)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75596 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38492)

(assert (=> b!1170022 (= lt!526884 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!45941 () Bool)

(assert (=> mapIsEmpty!45941 mapRes!45941))

(declare-fun b!1170023 () Bool)

(declare-fun e!665025 () Bool)

(assert (=> b!1170023 (= e!665024 e!665025)))

(declare-fun res!776520 () Bool)

(assert (=> b!1170023 (=> res!776520 e!665025)))

(assert (=> b!1170023 (= res!776520 (not (= (select (arr!36444 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1170024 () Bool)

(assert (=> b!1170024 (= e!665025 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170025 () Bool)

(declare-fun res!776533 () Bool)

(assert (=> b!1170025 (=> (not res!776533) (not e!665029))))

(assert (=> b!1170025 (= res!776533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!99336 res!776529) b!1170021))

(assert (= (and b!1170021 res!776521) b!1170018))

(assert (= (and b!1170018 res!776518) b!1170025))

(assert (= (and b!1170025 res!776533) b!1170017))

(assert (= (and b!1170017 res!776527) b!1170016))

(assert (= (and b!1170016 res!776532) b!1170020))

(assert (= (and b!1170020 res!776528) b!1170013))

(assert (= (and b!1170013 res!776519) b!1170014))

(assert (= (and b!1170014 res!776522) b!1170011))

(assert (= (and b!1170011 res!776526) b!1170009))

(assert (= (and b!1170009 (not res!776524)) b!1170008))

(assert (= (and b!1170008 (not res!776525)) b!1170010))

(assert (= (and b!1170010 (not res!776530)) b!1170019))

(assert (= (and b!1170019 res!776531) b!1170023))

(assert (= (and b!1170023 (not res!776520)) b!1170024))

(assert (= (and b!1170019 (not res!776523)) b!1170022))

(assert (= (and b!1170012 condMapEmpty!45941) mapIsEmpty!45941))

(assert (= (and b!1170012 (not condMapEmpty!45941)) mapNonEmpty!45941))

(get-info :version)

(assert (= (and mapNonEmpty!45941 ((_ is ValueCellFull!13995) mapValue!45941)) b!1170007))

(assert (= (and b!1170012 ((_ is ValueCellFull!13995) mapDefault!45941)) b!1170015))

(assert (= start!99336 b!1170012))

(declare-fun b_lambda!20041 () Bool)

(assert (=> (not b_lambda!20041) (not b!1170008)))

(declare-fun t!37586 () Bool)

(declare-fun tb!9699 () Bool)

(assert (=> (and start!99336 (= defaultEntry!1004 defaultEntry!1004) t!37586) tb!9699))

(declare-fun result!19957 () Bool)

(assert (=> tb!9699 (= result!19957 tp_is_empty!29409)))

(assert (=> b!1170008 t!37586))

(declare-fun b_and!40641 () Bool)

(assert (= b_and!40639 (and (=> t!37586 result!19957) b_and!40641)))

(declare-fun m!1077897 () Bool)

(assert (=> b!1170025 m!1077897))

(declare-fun m!1077899 () Bool)

(assert (=> b!1170013 m!1077899))

(declare-fun m!1077901 () Bool)

(assert (=> b!1170017 m!1077901))

(declare-fun m!1077903 () Bool)

(assert (=> b!1170021 m!1077903))

(declare-fun m!1077905 () Bool)

(assert (=> b!1170020 m!1077905))

(declare-fun m!1077907 () Bool)

(assert (=> b!1170023 m!1077907))

(declare-fun m!1077909 () Bool)

(assert (=> b!1170024 m!1077909))

(assert (=> b!1170019 m!1077907))

(declare-fun m!1077911 () Bool)

(assert (=> b!1170019 m!1077911))

(assert (=> b!1170019 m!1077911))

(declare-fun m!1077913 () Bool)

(assert (=> b!1170019 m!1077913))

(declare-fun m!1077915 () Bool)

(assert (=> b!1170019 m!1077915))

(declare-fun m!1077917 () Bool)

(assert (=> b!1170014 m!1077917))

(declare-fun m!1077919 () Bool)

(assert (=> b!1170014 m!1077919))

(declare-fun m!1077921 () Bool)

(assert (=> mapNonEmpty!45941 m!1077921))

(declare-fun m!1077923 () Bool)

(assert (=> b!1170010 m!1077923))

(declare-fun m!1077925 () Bool)

(assert (=> b!1170010 m!1077925))

(declare-fun m!1077927 () Bool)

(assert (=> b!1170010 m!1077927))

(declare-fun m!1077929 () Bool)

(assert (=> b!1170010 m!1077929))

(assert (=> b!1170010 m!1077907))

(declare-fun m!1077931 () Bool)

(assert (=> b!1170010 m!1077931))

(assert (=> b!1170010 m!1077907))

(declare-fun m!1077933 () Bool)

(assert (=> start!99336 m!1077933))

(declare-fun m!1077935 () Bool)

(assert (=> start!99336 m!1077935))

(declare-fun m!1077937 () Bool)

(assert (=> b!1170008 m!1077937))

(declare-fun m!1077939 () Bool)

(assert (=> b!1170008 m!1077939))

(declare-fun m!1077941 () Bool)

(assert (=> b!1170008 m!1077941))

(declare-fun m!1077943 () Bool)

(assert (=> b!1170008 m!1077943))

(declare-fun m!1077945 () Bool)

(assert (=> b!1170022 m!1077945))

(declare-fun m!1077947 () Bool)

(assert (=> b!1170022 m!1077947))

(declare-fun m!1077949 () Bool)

(assert (=> b!1170009 m!1077949))

(declare-fun m!1077951 () Bool)

(assert (=> b!1170009 m!1077951))

(declare-fun m!1077953 () Bool)

(assert (=> b!1170011 m!1077953))

(check-sat (not b!1170011) (not b!1170017) (not b!1170019) tp_is_empty!29409 (not b_lambda!20041) (not b!1170009) (not b!1170021) (not b!1170014) (not b!1170025) b_and!40641 (not mapNonEmpty!45941) (not b!1170008) (not start!99336) (not b!1170010) (not b!1170020) (not b!1170024) (not b!1170022) (not b_next!24879))
(check-sat b_and!40641 (not b_next!24879))
