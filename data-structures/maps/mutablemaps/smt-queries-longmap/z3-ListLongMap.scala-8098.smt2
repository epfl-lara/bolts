; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99492 () Bool)

(assert start!99492)

(declare-fun b_free!25035 () Bool)

(declare-fun b_next!25035 () Bool)

(assert (=> start!99492 (= b_free!25035 (not b_next!25035))))

(declare-fun tp!87820 () Bool)

(declare-fun b_and!40951 () Bool)

(assert (=> start!99492 (= tp!87820 b_and!40951)))

(declare-fun b!1174965 () Bool)

(declare-fun res!780405 () Bool)

(declare-fun e!667912 () Bool)

(assert (=> b!1174965 (=> (not res!780405) (not e!667912))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174965 (= res!780405 (validMask!0 mask!1564))))

(declare-fun b!1174966 () Bool)

(declare-fun res!780394 () Bool)

(assert (=> b!1174966 (=> (not res!780394) (not e!667912))))

(declare-datatypes ((array!75906 0))(
  ( (array!75907 (arr!36599 (Array (_ BitVec 32) (_ BitVec 64))) (size!37136 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75906)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75906 (_ BitVec 32)) Bool)

(assert (=> b!1174966 (= res!780394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46175 () Bool)

(declare-fun mapRes!46175 () Bool)

(declare-fun tp!87819 () Bool)

(declare-fun e!667914 () Bool)

(assert (=> mapNonEmpty!46175 (= mapRes!46175 (and tp!87819 e!667914))))

(declare-datatypes ((V!44547 0))(
  ( (V!44548 (val!14839 Int)) )
))
(declare-datatypes ((ValueCell!14073 0))(
  ( (ValueCellFull!14073 (v!17478 V!44547)) (EmptyCell!14073) )
))
(declare-fun mapValue!46175 () ValueCell!14073)

(declare-datatypes ((array!75908 0))(
  ( (array!75909 (arr!36600 (Array (_ BitVec 32) ValueCell!14073)) (size!37137 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75908)

(declare-fun mapRest!46175 () (Array (_ BitVec 32) ValueCell!14073))

(declare-fun mapKey!46175 () (_ BitVec 32))

(assert (=> mapNonEmpty!46175 (= (arr!36600 _values!996) (store mapRest!46175 mapKey!46175 mapValue!46175))))

(declare-fun b!1174967 () Bool)

(declare-fun e!667913 () Bool)

(assert (=> b!1174967 (= e!667913 true)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1174967 (not (= (select (arr!36599 _keys!1208) from!1455) k0!934))))

(declare-datatypes ((Unit!38687 0))(
  ( (Unit!38688) )
))
(declare-fun lt!529952 () Unit!38687)

(declare-fun e!667920 () Unit!38687)

(assert (=> b!1174967 (= lt!529952 e!667920)))

(declare-fun c!116624 () Bool)

(assert (=> b!1174967 (= c!116624 (= (select (arr!36599 _keys!1208) from!1455) k0!934))))

(declare-fun e!667919 () Bool)

(assert (=> b!1174967 e!667919))

(declare-fun res!780395 () Bool)

(assert (=> b!1174967 (=> (not res!780395) (not e!667919))))

(declare-datatypes ((tuple2!19076 0))(
  ( (tuple2!19077 (_1!9548 (_ BitVec 64)) (_2!9548 V!44547)) )
))
(declare-datatypes ((List!25845 0))(
  ( (Nil!25842) (Cons!25841 (h!27050 tuple2!19076) (t!37879 List!25845)) )
))
(declare-datatypes ((ListLongMap!17057 0))(
  ( (ListLongMap!17058 (toList!8544 List!25845)) )
))
(declare-fun lt!529953 () ListLongMap!17057)

(declare-fun lt!529954 () ListLongMap!17057)

(declare-fun lt!529959 () V!44547)

(declare-fun +!3773 (ListLongMap!17057 tuple2!19076) ListLongMap!17057)

(declare-fun get!18718 (ValueCell!14073 V!44547) V!44547)

(assert (=> b!1174967 (= res!780395 (= lt!529953 (+!3773 lt!529954 (tuple2!19077 (select (arr!36599 _keys!1208) from!1455) (get!18718 (select (arr!36600 _values!996) from!1455) lt!529959)))))))

(declare-fun b!1174968 () Bool)

(declare-fun res!780392 () Bool)

(assert (=> b!1174968 (=> (not res!780392) (not e!667912))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1174968 (= res!780392 (= (select (arr!36599 _keys!1208) i!673) k0!934))))

(declare-fun b!1174969 () Bool)

(declare-fun e!667915 () Bool)

(declare-fun e!667918 () Bool)

(assert (=> b!1174969 (= e!667915 (and e!667918 mapRes!46175))))

(declare-fun condMapEmpty!46175 () Bool)

(declare-fun mapDefault!46175 () ValueCell!14073)

(assert (=> b!1174969 (= condMapEmpty!46175 (= (arr!36600 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14073)) mapDefault!46175)))))

(declare-fun b!1174970 () Bool)

(declare-fun tp_is_empty!29565 () Bool)

(assert (=> b!1174970 (= e!667918 tp_is_empty!29565)))

(declare-fun b!1174971 () Bool)

(declare-fun e!667910 () Bool)

(assert (=> b!1174971 (= e!667910 e!667913)))

(declare-fun res!780398 () Bool)

(assert (=> b!1174971 (=> res!780398 e!667913)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174971 (= res!780398 (not (validKeyInArray!0 (select (arr!36599 _keys!1208) from!1455))))))

(declare-fun lt!529962 () ListLongMap!17057)

(assert (=> b!1174971 (= lt!529962 lt!529954)))

(declare-fun lt!529961 () ListLongMap!17057)

(declare-fun -!1553 (ListLongMap!17057 (_ BitVec 64)) ListLongMap!17057)

(assert (=> b!1174971 (= lt!529954 (-!1553 lt!529961 k0!934))))

(declare-fun zeroValue!944 () V!44547)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44547)

(declare-fun lt!529958 () array!75906)

(declare-fun lt!529950 () array!75908)

(declare-fun getCurrentListMapNoExtraKeys!4975 (array!75906 array!75908 (_ BitVec 32) (_ BitVec 32) V!44547 V!44547 (_ BitVec 32) Int) ListLongMap!17057)

(assert (=> b!1174971 (= lt!529962 (getCurrentListMapNoExtraKeys!4975 lt!529958 lt!529950 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174971 (= lt!529961 (getCurrentListMapNoExtraKeys!4975 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529955 () Unit!38687)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!777 (array!75906 array!75908 (_ BitVec 32) (_ BitVec 32) V!44547 V!44547 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38687)

(assert (=> b!1174971 (= lt!529955 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!777 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174972 () Bool)

(declare-fun e!667916 () Bool)

(declare-fun e!667917 () Bool)

(assert (=> b!1174972 (= e!667916 (not e!667917))))

(declare-fun res!780401 () Bool)

(assert (=> b!1174972 (=> res!780401 e!667917)))

(assert (=> b!1174972 (= res!780401 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174972 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!529956 () Unit!38687)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75906 (_ BitVec 64) (_ BitVec 32)) Unit!38687)

(assert (=> b!1174972 (= lt!529956 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!780403 () Bool)

(assert (=> start!99492 (=> (not res!780403) (not e!667912))))

(assert (=> start!99492 (= res!780403 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37136 _keys!1208))))))

(assert (=> start!99492 e!667912))

(assert (=> start!99492 tp_is_empty!29565))

(declare-fun array_inv!27840 (array!75906) Bool)

(assert (=> start!99492 (array_inv!27840 _keys!1208)))

(assert (=> start!99492 true))

(assert (=> start!99492 tp!87820))

(declare-fun array_inv!27841 (array!75908) Bool)

(assert (=> start!99492 (and (array_inv!27841 _values!996) e!667915)))

(declare-fun b!1174973 () Bool)

(declare-fun res!780404 () Bool)

(assert (=> b!1174973 (=> (not res!780404) (not e!667912))))

(assert (=> b!1174973 (= res!780404 (validKeyInArray!0 k0!934))))

(declare-fun b!1174974 () Bool)

(declare-fun res!780393 () Bool)

(assert (=> b!1174974 (=> (not res!780393) (not e!667912))))

(assert (=> b!1174974 (= res!780393 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37136 _keys!1208))))))

(declare-fun b!1174975 () Bool)

(declare-fun res!780399 () Bool)

(assert (=> b!1174975 (=> (not res!780399) (not e!667912))))

(assert (=> b!1174975 (= res!780399 (and (= (size!37137 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37136 _keys!1208) (size!37137 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174976 () Bool)

(assert (=> b!1174976 (= e!667917 e!667910)))

(declare-fun res!780400 () Bool)

(assert (=> b!1174976 (=> res!780400 e!667910)))

(assert (=> b!1174976 (= res!780400 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1174976 (= lt!529953 (getCurrentListMapNoExtraKeys!4975 lt!529958 lt!529950 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174976 (= lt!529950 (array!75909 (store (arr!36600 _values!996) i!673 (ValueCellFull!14073 lt!529959)) (size!37137 _values!996)))))

(declare-fun dynLambda!2955 (Int (_ BitVec 64)) V!44547)

(assert (=> b!1174976 (= lt!529959 (dynLambda!2955 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529949 () ListLongMap!17057)

(assert (=> b!1174976 (= lt!529949 (getCurrentListMapNoExtraKeys!4975 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174977 () Bool)

(declare-fun Unit!38689 () Unit!38687)

(assert (=> b!1174977 (= e!667920 Unit!38689)))

(declare-fun lt!529957 () Unit!38687)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75906 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38687)

(assert (=> b!1174977 (= lt!529957 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174977 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529951 () Unit!38687)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75906 (_ BitVec 32) (_ BitVec 32)) Unit!38687)

(assert (=> b!1174977 (= lt!529951 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25846 0))(
  ( (Nil!25843) (Cons!25842 (h!27051 (_ BitVec 64)) (t!37880 List!25846)) )
))
(declare-fun arrayNoDuplicates!0 (array!75906 (_ BitVec 32) List!25846) Bool)

(assert (=> b!1174977 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25843)))

(declare-fun lt!529960 () Unit!38687)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75906 (_ BitVec 64) (_ BitVec 32) List!25846) Unit!38687)

(assert (=> b!1174977 (= lt!529960 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25843))))

(assert (=> b!1174977 false))

(declare-fun b!1174978 () Bool)

(declare-fun res!780397 () Bool)

(assert (=> b!1174978 (=> (not res!780397) (not e!667912))))

(assert (=> b!1174978 (= res!780397 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25843))))

(declare-fun mapIsEmpty!46175 () Bool)

(assert (=> mapIsEmpty!46175 mapRes!46175))

(declare-fun b!1174979 () Bool)

(assert (=> b!1174979 (= e!667914 tp_is_empty!29565)))

(declare-fun b!1174980 () Bool)

(declare-fun e!667921 () Bool)

(assert (=> b!1174980 (= e!667921 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174981 () Bool)

(declare-fun Unit!38690 () Unit!38687)

(assert (=> b!1174981 (= e!667920 Unit!38690)))

(declare-fun b!1174982 () Bool)

(assert (=> b!1174982 (= e!667919 e!667921)))

(declare-fun res!780402 () Bool)

(assert (=> b!1174982 (=> res!780402 e!667921)))

(assert (=> b!1174982 (= res!780402 (not (= (select (arr!36599 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1174983 () Bool)

(assert (=> b!1174983 (= e!667912 e!667916)))

(declare-fun res!780396 () Bool)

(assert (=> b!1174983 (=> (not res!780396) (not e!667916))))

(assert (=> b!1174983 (= res!780396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529958 mask!1564))))

(assert (=> b!1174983 (= lt!529958 (array!75907 (store (arr!36599 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37136 _keys!1208)))))

(declare-fun b!1174984 () Bool)

(declare-fun res!780406 () Bool)

(assert (=> b!1174984 (=> (not res!780406) (not e!667916))))

(assert (=> b!1174984 (= res!780406 (arrayNoDuplicates!0 lt!529958 #b00000000000000000000000000000000 Nil!25843))))

(assert (= (and start!99492 res!780403) b!1174965))

(assert (= (and b!1174965 res!780405) b!1174975))

(assert (= (and b!1174975 res!780399) b!1174966))

(assert (= (and b!1174966 res!780394) b!1174978))

(assert (= (and b!1174978 res!780397) b!1174974))

(assert (= (and b!1174974 res!780393) b!1174973))

(assert (= (and b!1174973 res!780404) b!1174968))

(assert (= (and b!1174968 res!780392) b!1174983))

(assert (= (and b!1174983 res!780396) b!1174984))

(assert (= (and b!1174984 res!780406) b!1174972))

(assert (= (and b!1174972 (not res!780401)) b!1174976))

(assert (= (and b!1174976 (not res!780400)) b!1174971))

(assert (= (and b!1174971 (not res!780398)) b!1174967))

(assert (= (and b!1174967 res!780395) b!1174982))

(assert (= (and b!1174982 (not res!780402)) b!1174980))

(assert (= (and b!1174967 c!116624) b!1174977))

(assert (= (and b!1174967 (not c!116624)) b!1174981))

(assert (= (and b!1174969 condMapEmpty!46175) mapIsEmpty!46175))

(assert (= (and b!1174969 (not condMapEmpty!46175)) mapNonEmpty!46175))

(get-info :version)

(assert (= (and mapNonEmpty!46175 ((_ is ValueCellFull!14073) mapValue!46175)) b!1174979))

(assert (= (and b!1174969 ((_ is ValueCellFull!14073) mapDefault!46175)) b!1174970))

(assert (= start!99492 b!1174969))

(declare-fun b_lambda!20197 () Bool)

(assert (=> (not b_lambda!20197) (not b!1174976)))

(declare-fun t!37878 () Bool)

(declare-fun tb!9855 () Bool)

(assert (=> (and start!99492 (= defaultEntry!1004 defaultEntry!1004) t!37878) tb!9855))

(declare-fun result!20269 () Bool)

(assert (=> tb!9855 (= result!20269 tp_is_empty!29565)))

(assert (=> b!1174976 t!37878))

(declare-fun b_and!40953 () Bool)

(assert (= b_and!40951 (and (=> t!37878 result!20269) b_and!40953)))

(declare-fun m!1082913 () Bool)

(assert (=> b!1174972 m!1082913))

(declare-fun m!1082915 () Bool)

(assert (=> b!1174972 m!1082915))

(declare-fun m!1082917 () Bool)

(assert (=> b!1174984 m!1082917))

(declare-fun m!1082919 () Bool)

(assert (=> b!1174968 m!1082919))

(declare-fun m!1082921 () Bool)

(assert (=> b!1174966 m!1082921))

(declare-fun m!1082923 () Bool)

(assert (=> b!1174976 m!1082923))

(declare-fun m!1082925 () Bool)

(assert (=> b!1174976 m!1082925))

(declare-fun m!1082927 () Bool)

(assert (=> b!1174976 m!1082927))

(declare-fun m!1082929 () Bool)

(assert (=> b!1174976 m!1082929))

(declare-fun m!1082931 () Bool)

(assert (=> b!1174980 m!1082931))

(declare-fun m!1082933 () Bool)

(assert (=> b!1174971 m!1082933))

(declare-fun m!1082935 () Bool)

(assert (=> b!1174971 m!1082935))

(declare-fun m!1082937 () Bool)

(assert (=> b!1174971 m!1082937))

(declare-fun m!1082939 () Bool)

(assert (=> b!1174971 m!1082939))

(declare-fun m!1082941 () Bool)

(assert (=> b!1174971 m!1082941))

(declare-fun m!1082943 () Bool)

(assert (=> b!1174971 m!1082943))

(assert (=> b!1174971 m!1082939))

(declare-fun m!1082945 () Bool)

(assert (=> start!99492 m!1082945))

(declare-fun m!1082947 () Bool)

(assert (=> start!99492 m!1082947))

(declare-fun m!1082949 () Bool)

(assert (=> b!1174977 m!1082949))

(declare-fun m!1082951 () Bool)

(assert (=> b!1174977 m!1082951))

(declare-fun m!1082953 () Bool)

(assert (=> b!1174977 m!1082953))

(declare-fun m!1082955 () Bool)

(assert (=> b!1174977 m!1082955))

(declare-fun m!1082957 () Bool)

(assert (=> b!1174977 m!1082957))

(assert (=> b!1174967 m!1082939))

(declare-fun m!1082959 () Bool)

(assert (=> b!1174967 m!1082959))

(assert (=> b!1174967 m!1082959))

(declare-fun m!1082961 () Bool)

(assert (=> b!1174967 m!1082961))

(declare-fun m!1082963 () Bool)

(assert (=> b!1174967 m!1082963))

(declare-fun m!1082965 () Bool)

(assert (=> b!1174978 m!1082965))

(assert (=> b!1174982 m!1082939))

(declare-fun m!1082967 () Bool)

(assert (=> mapNonEmpty!46175 m!1082967))

(declare-fun m!1082969 () Bool)

(assert (=> b!1174983 m!1082969))

(declare-fun m!1082971 () Bool)

(assert (=> b!1174983 m!1082971))

(declare-fun m!1082973 () Bool)

(assert (=> b!1174965 m!1082973))

(declare-fun m!1082975 () Bool)

(assert (=> b!1174973 m!1082975))

(check-sat (not b!1174966) (not b!1174977) (not b!1174980) (not b!1174983) (not b!1174965) b_and!40953 (not start!99492) (not b!1174973) (not b!1174978) tp_is_empty!29565 (not mapNonEmpty!46175) (not b!1174971) (not b!1174976) (not b!1174984) (not b!1174972) (not b!1174967) (not b_lambda!20197) (not b_next!25035))
(check-sat b_and!40953 (not b_next!25035))
