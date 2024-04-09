; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99522 () Bool)

(assert start!99522)

(declare-fun b_free!25065 () Bool)

(declare-fun b_next!25065 () Bool)

(assert (=> start!99522 (= b_free!25065 (not b_next!25065))))

(declare-fun tp!87910 () Bool)

(declare-fun b_and!41011 () Bool)

(assert (=> start!99522 (= tp!87910 b_and!41011)))

(declare-fun b!1175895 () Bool)

(declare-fun res!781076 () Bool)

(declare-fun e!668451 () Bool)

(assert (=> b!1175895 (=> (not res!781076) (not e!668451))))

(declare-datatypes ((array!75966 0))(
  ( (array!75967 (arr!36629 (Array (_ BitVec 32) (_ BitVec 64))) (size!37166 (_ BitVec 32))) )
))
(declare-fun lt!530582 () array!75966)

(declare-datatypes ((List!25874 0))(
  ( (Nil!25871) (Cons!25870 (h!27079 (_ BitVec 64)) (t!37938 List!25874)) )
))
(declare-fun arrayNoDuplicates!0 (array!75966 (_ BitVec 32) List!25874) Bool)

(assert (=> b!1175895 (= res!781076 (arrayNoDuplicates!0 lt!530582 #b00000000000000000000000000000000 Nil!25871))))

(declare-fun b!1175896 () Bool)

(declare-fun e!668457 () Bool)

(declare-fun e!668456 () Bool)

(assert (=> b!1175896 (= e!668457 e!668456)))

(declare-fun res!781071 () Bool)

(assert (=> b!1175896 (=> res!781071 e!668456)))

(declare-fun _keys!1208 () array!75966)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175896 (= res!781071 (not (validKeyInArray!0 (select (arr!36629 _keys!1208) from!1455))))))

(declare-datatypes ((V!44587 0))(
  ( (V!44588 (val!14854 Int)) )
))
(declare-datatypes ((tuple2!19106 0))(
  ( (tuple2!19107 (_1!9563 (_ BitVec 64)) (_2!9563 V!44587)) )
))
(declare-datatypes ((List!25875 0))(
  ( (Nil!25872) (Cons!25871 (h!27080 tuple2!19106) (t!37939 List!25875)) )
))
(declare-datatypes ((ListLongMap!17087 0))(
  ( (ListLongMap!17088 (toList!8559 List!25875)) )
))
(declare-fun lt!530580 () ListLongMap!17087)

(declare-fun lt!530585 () ListLongMap!17087)

(assert (=> b!1175896 (= lt!530580 lt!530585)))

(declare-fun lt!530581 () ListLongMap!17087)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1565 (ListLongMap!17087 (_ BitVec 64)) ListLongMap!17087)

(assert (=> b!1175896 (= lt!530585 (-!1565 lt!530581 k0!934))))

(declare-fun zeroValue!944 () V!44587)

(declare-datatypes ((ValueCell!14088 0))(
  ( (ValueCellFull!14088 (v!17493 V!44587)) (EmptyCell!14088) )
))
(declare-datatypes ((array!75968 0))(
  ( (array!75969 (arr!36630 (Array (_ BitVec 32) ValueCell!14088)) (size!37167 (_ BitVec 32))) )
))
(declare-fun lt!530584 () array!75968)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44587)

(declare-fun getCurrentListMapNoExtraKeys!4990 (array!75966 array!75968 (_ BitVec 32) (_ BitVec 32) V!44587 V!44587 (_ BitVec 32) Int) ListLongMap!17087)

(assert (=> b!1175896 (= lt!530580 (getCurrentListMapNoExtraKeys!4990 lt!530582 lt!530584 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75968)

(assert (=> b!1175896 (= lt!530581 (getCurrentListMapNoExtraKeys!4990 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38738 0))(
  ( (Unit!38739) )
))
(declare-fun lt!530583 () Unit!38738)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!789 (array!75966 array!75968 (_ BitVec 32) (_ BitVec 32) V!44587 V!44587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38738)

(assert (=> b!1175896 (= lt!530583 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!789 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175897 () Bool)

(declare-fun e!668459 () Bool)

(assert (=> b!1175897 (= e!668451 (not e!668459))))

(declare-fun res!781067 () Bool)

(assert (=> b!1175897 (=> res!781067 e!668459)))

(assert (=> b!1175897 (= res!781067 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175897 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!530579 () Unit!38738)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75966 (_ BitVec 64) (_ BitVec 32)) Unit!38738)

(assert (=> b!1175897 (= lt!530579 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!46220 () Bool)

(declare-fun mapRes!46220 () Bool)

(declare-fun tp!87909 () Bool)

(declare-fun e!668450 () Bool)

(assert (=> mapNonEmpty!46220 (= mapRes!46220 (and tp!87909 e!668450))))

(declare-fun mapRest!46220 () (Array (_ BitVec 32) ValueCell!14088))

(declare-fun mapKey!46220 () (_ BitVec 32))

(declare-fun mapValue!46220 () ValueCell!14088)

(assert (=> mapNonEmpty!46220 (= (arr!36630 _values!996) (store mapRest!46220 mapKey!46220 mapValue!46220))))

(declare-fun b!1175898 () Bool)

(declare-fun e!668458 () Unit!38738)

(declare-fun Unit!38740 () Unit!38738)

(assert (=> b!1175898 (= e!668458 Unit!38740)))

(declare-fun b!1175899 () Bool)

(declare-fun e!668453 () Bool)

(declare-fun e!668460 () Bool)

(assert (=> b!1175899 (= e!668453 (and e!668460 mapRes!46220))))

(declare-fun condMapEmpty!46220 () Bool)

(declare-fun mapDefault!46220 () ValueCell!14088)

(assert (=> b!1175899 (= condMapEmpty!46220 (= (arr!36630 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14088)) mapDefault!46220)))))

(declare-fun b!1175900 () Bool)

(declare-fun e!668452 () Bool)

(declare-fun e!668461 () Bool)

(assert (=> b!1175900 (= e!668452 e!668461)))

(declare-fun res!781077 () Bool)

(assert (=> b!1175900 (=> res!781077 e!668461)))

(assert (=> b!1175900 (= res!781077 (not (= (select (arr!36629 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1175901 () Bool)

(declare-fun res!781081 () Bool)

(declare-fun e!668454 () Bool)

(assert (=> b!1175901 (=> (not res!781081) (not e!668454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75966 (_ BitVec 32)) Bool)

(assert (=> b!1175901 (= res!781081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175902 () Bool)

(assert (=> b!1175902 (= e!668461 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1175903 () Bool)

(declare-fun res!781069 () Bool)

(assert (=> b!1175903 (=> (not res!781069) (not e!668454))))

(assert (=> b!1175903 (= res!781069 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37166 _keys!1208))))))

(declare-fun b!1175904 () Bool)

(declare-fun res!781072 () Bool)

(assert (=> b!1175904 (=> (not res!781072) (not e!668454))))

(assert (=> b!1175904 (= res!781072 (= (select (arr!36629 _keys!1208) i!673) k0!934))))

(declare-fun res!781080 () Bool)

(assert (=> start!99522 (=> (not res!781080) (not e!668454))))

(assert (=> start!99522 (= res!781080 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37166 _keys!1208))))))

(assert (=> start!99522 e!668454))

(declare-fun tp_is_empty!29595 () Bool)

(assert (=> start!99522 tp_is_empty!29595))

(declare-fun array_inv!27862 (array!75966) Bool)

(assert (=> start!99522 (array_inv!27862 _keys!1208)))

(assert (=> start!99522 true))

(assert (=> start!99522 tp!87910))

(declare-fun array_inv!27863 (array!75968) Bool)

(assert (=> start!99522 (and (array_inv!27863 _values!996) e!668453)))

(declare-fun b!1175905 () Bool)

(assert (=> b!1175905 (= e!668460 tp_is_empty!29595)))

(declare-fun b!1175906 () Bool)

(declare-fun res!781074 () Bool)

(assert (=> b!1175906 (=> (not res!781074) (not e!668454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175906 (= res!781074 (validMask!0 mask!1564))))

(declare-fun b!1175907 () Bool)

(assert (=> b!1175907 (= e!668459 e!668457)))

(declare-fun res!781070 () Bool)

(assert (=> b!1175907 (=> res!781070 e!668457)))

(assert (=> b!1175907 (= res!781070 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!530590 () ListLongMap!17087)

(assert (=> b!1175907 (= lt!530590 (getCurrentListMapNoExtraKeys!4990 lt!530582 lt!530584 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530589 () V!44587)

(assert (=> b!1175907 (= lt!530584 (array!75969 (store (arr!36630 _values!996) i!673 (ValueCellFull!14088 lt!530589)) (size!37167 _values!996)))))

(declare-fun dynLambda!2968 (Int (_ BitVec 64)) V!44587)

(assert (=> b!1175907 (= lt!530589 (dynLambda!2968 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530587 () ListLongMap!17087)

(assert (=> b!1175907 (= lt!530587 (getCurrentListMapNoExtraKeys!4990 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175908 () Bool)

(declare-fun res!781078 () Bool)

(assert (=> b!1175908 (=> (not res!781078) (not e!668454))))

(assert (=> b!1175908 (= res!781078 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25871))))

(declare-fun b!1175909 () Bool)

(assert (=> b!1175909 (= e!668450 tp_is_empty!29595)))

(declare-fun b!1175910 () Bool)

(declare-fun res!781068 () Bool)

(assert (=> b!1175910 (=> (not res!781068) (not e!668454))))

(assert (=> b!1175910 (= res!781068 (and (= (size!37167 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37166 _keys!1208) (size!37167 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175911 () Bool)

(declare-fun res!781079 () Bool)

(assert (=> b!1175911 (=> (not res!781079) (not e!668454))))

(assert (=> b!1175911 (= res!781079 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!46220 () Bool)

(assert (=> mapIsEmpty!46220 mapRes!46220))

(declare-fun b!1175912 () Bool)

(assert (=> b!1175912 (= e!668456 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37166 _keys!1208))))))

(assert (=> b!1175912 (not (= (select (arr!36629 _keys!1208) from!1455) k0!934))))

(declare-fun lt!530588 () Unit!38738)

(assert (=> b!1175912 (= lt!530588 e!668458)))

(declare-fun c!116669 () Bool)

(assert (=> b!1175912 (= c!116669 (= (select (arr!36629 _keys!1208) from!1455) k0!934))))

(assert (=> b!1175912 e!668452))

(declare-fun res!781073 () Bool)

(assert (=> b!1175912 (=> (not res!781073) (not e!668452))))

(declare-fun +!3783 (ListLongMap!17087 tuple2!19106) ListLongMap!17087)

(declare-fun get!18738 (ValueCell!14088 V!44587) V!44587)

(assert (=> b!1175912 (= res!781073 (= lt!530590 (+!3783 lt!530585 (tuple2!19107 (select (arr!36629 _keys!1208) from!1455) (get!18738 (select (arr!36630 _values!996) from!1455) lt!530589)))))))

(declare-fun b!1175913 () Bool)

(declare-fun Unit!38741 () Unit!38738)

(assert (=> b!1175913 (= e!668458 Unit!38741)))

(declare-fun lt!530591 () Unit!38738)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75966 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38738)

(assert (=> b!1175913 (= lt!530591 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1175913 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530592 () Unit!38738)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75966 (_ BitVec 32) (_ BitVec 32)) Unit!38738)

(assert (=> b!1175913 (= lt!530592 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1175913 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25871)))

(declare-fun lt!530586 () Unit!38738)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75966 (_ BitVec 64) (_ BitVec 32) List!25874) Unit!38738)

(assert (=> b!1175913 (= lt!530586 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25871))))

(assert (=> b!1175913 false))

(declare-fun b!1175914 () Bool)

(assert (=> b!1175914 (= e!668454 e!668451)))

(declare-fun res!781075 () Bool)

(assert (=> b!1175914 (=> (not res!781075) (not e!668451))))

(assert (=> b!1175914 (= res!781075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530582 mask!1564))))

(assert (=> b!1175914 (= lt!530582 (array!75967 (store (arr!36629 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37166 _keys!1208)))))

(assert (= (and start!99522 res!781080) b!1175906))

(assert (= (and b!1175906 res!781074) b!1175910))

(assert (= (and b!1175910 res!781068) b!1175901))

(assert (= (and b!1175901 res!781081) b!1175908))

(assert (= (and b!1175908 res!781078) b!1175903))

(assert (= (and b!1175903 res!781069) b!1175911))

(assert (= (and b!1175911 res!781079) b!1175904))

(assert (= (and b!1175904 res!781072) b!1175914))

(assert (= (and b!1175914 res!781075) b!1175895))

(assert (= (and b!1175895 res!781076) b!1175897))

(assert (= (and b!1175897 (not res!781067)) b!1175907))

(assert (= (and b!1175907 (not res!781070)) b!1175896))

(assert (= (and b!1175896 (not res!781071)) b!1175912))

(assert (= (and b!1175912 res!781073) b!1175900))

(assert (= (and b!1175900 (not res!781077)) b!1175902))

(assert (= (and b!1175912 c!116669) b!1175913))

(assert (= (and b!1175912 (not c!116669)) b!1175898))

(assert (= (and b!1175899 condMapEmpty!46220) mapIsEmpty!46220))

(assert (= (and b!1175899 (not condMapEmpty!46220)) mapNonEmpty!46220))

(get-info :version)

(assert (= (and mapNonEmpty!46220 ((_ is ValueCellFull!14088) mapValue!46220)) b!1175909))

(assert (= (and b!1175899 ((_ is ValueCellFull!14088) mapDefault!46220)) b!1175905))

(assert (= start!99522 b!1175899))

(declare-fun b_lambda!20227 () Bool)

(assert (=> (not b_lambda!20227) (not b!1175907)))

(declare-fun t!37937 () Bool)

(declare-fun tb!9885 () Bool)

(assert (=> (and start!99522 (= defaultEntry!1004 defaultEntry!1004) t!37937) tb!9885))

(declare-fun result!20329 () Bool)

(assert (=> tb!9885 (= result!20329 tp_is_empty!29595)))

(assert (=> b!1175907 t!37937))

(declare-fun b_and!41013 () Bool)

(assert (= b_and!41011 (and (=> t!37937 result!20329) b_and!41013)))

(declare-fun m!1083873 () Bool)

(assert (=> b!1175908 m!1083873))

(declare-fun m!1083875 () Bool)

(assert (=> b!1175904 m!1083875))

(declare-fun m!1083877 () Bool)

(assert (=> b!1175913 m!1083877))

(declare-fun m!1083879 () Bool)

(assert (=> b!1175913 m!1083879))

(declare-fun m!1083881 () Bool)

(assert (=> b!1175913 m!1083881))

(declare-fun m!1083883 () Bool)

(assert (=> b!1175913 m!1083883))

(declare-fun m!1083885 () Bool)

(assert (=> b!1175913 m!1083885))

(declare-fun m!1083887 () Bool)

(assert (=> start!99522 m!1083887))

(declare-fun m!1083889 () Bool)

(assert (=> start!99522 m!1083889))

(declare-fun m!1083891 () Bool)

(assert (=> b!1175900 m!1083891))

(declare-fun m!1083893 () Bool)

(assert (=> b!1175901 m!1083893))

(declare-fun m!1083895 () Bool)

(assert (=> b!1175907 m!1083895))

(declare-fun m!1083897 () Bool)

(assert (=> b!1175907 m!1083897))

(declare-fun m!1083899 () Bool)

(assert (=> b!1175907 m!1083899))

(declare-fun m!1083901 () Bool)

(assert (=> b!1175907 m!1083901))

(declare-fun m!1083903 () Bool)

(assert (=> mapNonEmpty!46220 m!1083903))

(declare-fun m!1083905 () Bool)

(assert (=> b!1175897 m!1083905))

(declare-fun m!1083907 () Bool)

(assert (=> b!1175897 m!1083907))

(declare-fun m!1083909 () Bool)

(assert (=> b!1175914 m!1083909))

(declare-fun m!1083911 () Bool)

(assert (=> b!1175914 m!1083911))

(declare-fun m!1083913 () Bool)

(assert (=> b!1175895 m!1083913))

(declare-fun m!1083915 () Bool)

(assert (=> b!1175902 m!1083915))

(declare-fun m!1083917 () Bool)

(assert (=> b!1175906 m!1083917))

(assert (=> b!1175912 m!1083891))

(declare-fun m!1083919 () Bool)

(assert (=> b!1175912 m!1083919))

(assert (=> b!1175912 m!1083919))

(declare-fun m!1083921 () Bool)

(assert (=> b!1175912 m!1083921))

(declare-fun m!1083923 () Bool)

(assert (=> b!1175912 m!1083923))

(declare-fun m!1083925 () Bool)

(assert (=> b!1175896 m!1083925))

(declare-fun m!1083927 () Bool)

(assert (=> b!1175896 m!1083927))

(declare-fun m!1083929 () Bool)

(assert (=> b!1175896 m!1083929))

(assert (=> b!1175896 m!1083891))

(declare-fun m!1083931 () Bool)

(assert (=> b!1175896 m!1083931))

(assert (=> b!1175896 m!1083891))

(declare-fun m!1083933 () Bool)

(assert (=> b!1175896 m!1083933))

(declare-fun m!1083935 () Bool)

(assert (=> b!1175911 m!1083935))

(check-sat (not b!1175908) (not b!1175906) (not b_lambda!20227) (not b!1175913) (not mapNonEmpty!46220) (not b!1175907) (not b!1175902) (not b!1175901) tp_is_empty!29595 (not start!99522) (not b!1175895) (not b!1175911) (not b!1175912) (not b!1175914) (not b!1175896) (not b_next!25065) (not b!1175897) b_and!41013)
(check-sat b_and!41013 (not b_next!25065))
