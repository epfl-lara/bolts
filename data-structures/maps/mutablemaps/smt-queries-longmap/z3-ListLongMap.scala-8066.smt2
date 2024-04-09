; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99300 () Bool)

(assert start!99300)

(declare-fun b_free!24843 () Bool)

(declare-fun b_next!24843 () Bool)

(assert (=> start!99300 (= b_free!24843 (not b_next!24843))))

(declare-fun tp!87243 () Bool)

(declare-fun b_and!40567 () Bool)

(assert (=> start!99300 (= tp!87243 b_and!40567)))

(declare-fun b!1168994 () Bool)

(declare-fun res!775717 () Bool)

(declare-fun e!664423 () Bool)

(assert (=> b!1168994 (=> (not res!775717) (not e!664423))))

(declare-datatypes ((array!75522 0))(
  ( (array!75523 (arr!36407 (Array (_ BitVec 32) (_ BitVec 64))) (size!36944 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75522)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1168994 (= res!775717 (= (select (arr!36407 _keys!1208) i!673) k0!934))))

(declare-fun b!1168995 () Bool)

(declare-fun e!664425 () Bool)

(declare-fun e!664429 () Bool)

(assert (=> b!1168995 (= e!664425 (not e!664429))))

(declare-fun res!775714 () Bool)

(assert (=> b!1168995 (=> res!775714 e!664429)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1168995 (= res!775714 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168995 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38464 0))(
  ( (Unit!38465) )
))
(declare-fun lt!526338 () Unit!38464)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75522 (_ BitVec 64) (_ BitVec 32)) Unit!38464)

(assert (=> b!1168995 (= lt!526338 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1168996 () Bool)

(declare-fun e!664432 () Bool)

(declare-fun e!664431 () Bool)

(assert (=> b!1168996 (= e!664432 e!664431)))

(declare-fun res!775708 () Bool)

(assert (=> b!1168996 (=> res!775708 e!664431)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168996 (= res!775708 (not (validKeyInArray!0 (select (arr!36407 _keys!1208) from!1455))))))

(declare-datatypes ((V!44291 0))(
  ( (V!44292 (val!14743 Int)) )
))
(declare-datatypes ((tuple2!18904 0))(
  ( (tuple2!18905 (_1!9462 (_ BitVec 64)) (_2!9462 V!44291)) )
))
(declare-datatypes ((List!25676 0))(
  ( (Nil!25673) (Cons!25672 (h!26881 tuple2!18904) (t!37518 List!25676)) )
))
(declare-datatypes ((ListLongMap!16885 0))(
  ( (ListLongMap!16886 (toList!8458 List!25676)) )
))
(declare-fun lt!526334 () ListLongMap!16885)

(declare-fun lt!526331 () ListLongMap!16885)

(assert (=> b!1168996 (= lt!526334 lt!526331)))

(declare-fun lt!526336 () ListLongMap!16885)

(declare-fun -!1484 (ListLongMap!16885 (_ BitVec 64)) ListLongMap!16885)

(assert (=> b!1168996 (= lt!526331 (-!1484 lt!526336 k0!934))))

(declare-fun zeroValue!944 () V!44291)

(declare-datatypes ((ValueCell!13977 0))(
  ( (ValueCellFull!13977 (v!17382 V!44291)) (EmptyCell!13977) )
))
(declare-datatypes ((array!75524 0))(
  ( (array!75525 (arr!36408 (Array (_ BitVec 32) ValueCell!13977)) (size!36945 (_ BitVec 32))) )
))
(declare-fun lt!526330 () array!75524)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526335 () array!75522)

(declare-fun minValue!944 () V!44291)

(declare-fun getCurrentListMapNoExtraKeys!4891 (array!75522 array!75524 (_ BitVec 32) (_ BitVec 32) V!44291 V!44291 (_ BitVec 32) Int) ListLongMap!16885)

(assert (=> b!1168996 (= lt!526334 (getCurrentListMapNoExtraKeys!4891 lt!526335 lt!526330 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75524)

(assert (=> b!1168996 (= lt!526336 (getCurrentListMapNoExtraKeys!4891 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526333 () Unit!38464)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!708 (array!75522 array!75524 (_ BitVec 32) (_ BitVec 32) V!44291 V!44291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38464)

(assert (=> b!1168996 (= lt!526333 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!708 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168997 () Bool)

(declare-fun e!664427 () Bool)

(declare-fun e!664430 () Bool)

(assert (=> b!1168997 (= e!664427 e!664430)))

(declare-fun res!775707 () Bool)

(assert (=> b!1168997 (=> res!775707 e!664430)))

(assert (=> b!1168997 (= res!775707 (not (= (select (arr!36407 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1168999 () Bool)

(assert (=> b!1168999 (= e!664429 e!664432)))

(declare-fun res!775709 () Bool)

(assert (=> b!1168999 (=> res!775709 e!664432)))

(assert (=> b!1168999 (= res!775709 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!526329 () ListLongMap!16885)

(assert (=> b!1168999 (= lt!526329 (getCurrentListMapNoExtraKeys!4891 lt!526335 lt!526330 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526337 () V!44291)

(assert (=> b!1168999 (= lt!526330 (array!75525 (store (arr!36408 _values!996) i!673 (ValueCellFull!13977 lt!526337)) (size!36945 _values!996)))))

(declare-fun dynLambda!2883 (Int (_ BitVec 64)) V!44291)

(assert (=> b!1168999 (= lt!526337 (dynLambda!2883 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526332 () ListLongMap!16885)

(assert (=> b!1168999 (= lt!526332 (getCurrentListMapNoExtraKeys!4891 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!45887 () Bool)

(declare-fun mapRes!45887 () Bool)

(assert (=> mapIsEmpty!45887 mapRes!45887))

(declare-fun b!1169000 () Bool)

(declare-fun res!775706 () Bool)

(assert (=> b!1169000 (=> (not res!775706) (not e!664423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75522 (_ BitVec 32)) Bool)

(assert (=> b!1169000 (= res!775706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169001 () Bool)

(assert (=> b!1169001 (= e!664423 e!664425)))

(declare-fun res!775715 () Bool)

(assert (=> b!1169001 (=> (not res!775715) (not e!664425))))

(assert (=> b!1169001 (= res!775715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526335 mask!1564))))

(assert (=> b!1169001 (= lt!526335 (array!75523 (store (arr!36407 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36944 _keys!1208)))))

(declare-fun b!1169002 () Bool)

(assert (=> b!1169002 (= e!664431 true)))

(assert (=> b!1169002 e!664427))

(declare-fun res!775716 () Bool)

(assert (=> b!1169002 (=> (not res!775716) (not e!664427))))

(declare-fun +!3708 (ListLongMap!16885 tuple2!18904) ListLongMap!16885)

(declare-fun get!18589 (ValueCell!13977 V!44291) V!44291)

(assert (=> b!1169002 (= res!775716 (= lt!526329 (+!3708 lt!526331 (tuple2!18905 (select (arr!36407 _keys!1208) from!1455) (get!18589 (select (arr!36408 _values!996) from!1455) lt!526337)))))))

(declare-fun b!1169003 () Bool)

(declare-fun res!775705 () Bool)

(assert (=> b!1169003 (=> (not res!775705) (not e!664423))))

(assert (=> b!1169003 (= res!775705 (validKeyInArray!0 k0!934))))

(declare-fun b!1169004 () Bool)

(declare-fun res!775703 () Bool)

(assert (=> b!1169004 (=> (not res!775703) (not e!664425))))

(declare-datatypes ((List!25677 0))(
  ( (Nil!25674) (Cons!25673 (h!26882 (_ BitVec 64)) (t!37519 List!25677)) )
))
(declare-fun arrayNoDuplicates!0 (array!75522 (_ BitVec 32) List!25677) Bool)

(assert (=> b!1169004 (= res!775703 (arrayNoDuplicates!0 lt!526335 #b00000000000000000000000000000000 Nil!25674))))

(declare-fun mapNonEmpty!45887 () Bool)

(declare-fun tp!87244 () Bool)

(declare-fun e!664424 () Bool)

(assert (=> mapNonEmpty!45887 (= mapRes!45887 (and tp!87244 e!664424))))

(declare-fun mapValue!45887 () ValueCell!13977)

(declare-fun mapKey!45887 () (_ BitVec 32))

(declare-fun mapRest!45887 () (Array (_ BitVec 32) ValueCell!13977))

(assert (=> mapNonEmpty!45887 (= (arr!36408 _values!996) (store mapRest!45887 mapKey!45887 mapValue!45887))))

(declare-fun b!1169005 () Bool)

(declare-fun tp_is_empty!29373 () Bool)

(assert (=> b!1169005 (= e!664424 tp_is_empty!29373)))

(declare-fun b!1169006 () Bool)

(declare-fun res!775711 () Bool)

(assert (=> b!1169006 (=> (not res!775711) (not e!664423))))

(assert (=> b!1169006 (= res!775711 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25674))))

(declare-fun b!1169007 () Bool)

(declare-fun e!664422 () Bool)

(assert (=> b!1169007 (= e!664422 tp_is_empty!29373)))

(declare-fun b!1169008 () Bool)

(declare-fun res!775710 () Bool)

(assert (=> b!1169008 (=> (not res!775710) (not e!664423))))

(assert (=> b!1169008 (= res!775710 (and (= (size!36945 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36944 _keys!1208) (size!36945 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169009 () Bool)

(declare-fun res!775704 () Bool)

(assert (=> b!1169009 (=> (not res!775704) (not e!664423))))

(assert (=> b!1169009 (= res!775704 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36944 _keys!1208))))))

(declare-fun b!1169010 () Bool)

(assert (=> b!1169010 (= e!664430 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169011 () Bool)

(declare-fun e!664426 () Bool)

(assert (=> b!1169011 (= e!664426 (and e!664422 mapRes!45887))))

(declare-fun condMapEmpty!45887 () Bool)

(declare-fun mapDefault!45887 () ValueCell!13977)

(assert (=> b!1169011 (= condMapEmpty!45887 (= (arr!36408 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13977)) mapDefault!45887)))))

(declare-fun res!775713 () Bool)

(assert (=> start!99300 (=> (not res!775713) (not e!664423))))

(assert (=> start!99300 (= res!775713 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36944 _keys!1208))))))

(assert (=> start!99300 e!664423))

(assert (=> start!99300 tp_is_empty!29373))

(declare-fun array_inv!27704 (array!75522) Bool)

(assert (=> start!99300 (array_inv!27704 _keys!1208)))

(assert (=> start!99300 true))

(assert (=> start!99300 tp!87243))

(declare-fun array_inv!27705 (array!75524) Bool)

(assert (=> start!99300 (and (array_inv!27705 _values!996) e!664426)))

(declare-fun b!1168998 () Bool)

(declare-fun res!775712 () Bool)

(assert (=> b!1168998 (=> (not res!775712) (not e!664423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168998 (= res!775712 (validMask!0 mask!1564))))

(assert (= (and start!99300 res!775713) b!1168998))

(assert (= (and b!1168998 res!775712) b!1169008))

(assert (= (and b!1169008 res!775710) b!1169000))

(assert (= (and b!1169000 res!775706) b!1169006))

(assert (= (and b!1169006 res!775711) b!1169009))

(assert (= (and b!1169009 res!775704) b!1169003))

(assert (= (and b!1169003 res!775705) b!1168994))

(assert (= (and b!1168994 res!775717) b!1169001))

(assert (= (and b!1169001 res!775715) b!1169004))

(assert (= (and b!1169004 res!775703) b!1168995))

(assert (= (and b!1168995 (not res!775714)) b!1168999))

(assert (= (and b!1168999 (not res!775709)) b!1168996))

(assert (= (and b!1168996 (not res!775708)) b!1169002))

(assert (= (and b!1169002 res!775716) b!1168997))

(assert (= (and b!1168997 (not res!775707)) b!1169010))

(assert (= (and b!1169011 condMapEmpty!45887) mapIsEmpty!45887))

(assert (= (and b!1169011 (not condMapEmpty!45887)) mapNonEmpty!45887))

(get-info :version)

(assert (= (and mapNonEmpty!45887 ((_ is ValueCellFull!13977) mapValue!45887)) b!1169005))

(assert (= (and b!1169011 ((_ is ValueCellFull!13977) mapDefault!45887)) b!1169007))

(assert (= start!99300 b!1169011))

(declare-fun b_lambda!20005 () Bool)

(assert (=> (not b_lambda!20005) (not b!1168999)))

(declare-fun t!37517 () Bool)

(declare-fun tb!9663 () Bool)

(assert (=> (and start!99300 (= defaultEntry!1004 defaultEntry!1004) t!37517) tb!9663))

(declare-fun result!19885 () Bool)

(assert (=> tb!9663 (= result!19885 tp_is_empty!29373)))

(assert (=> b!1168999 t!37517))

(declare-fun b_and!40569 () Bool)

(assert (= b_and!40567 (and (=> t!37517 result!19885) b_and!40569)))

(declare-fun m!1076921 () Bool)

(assert (=> b!1168997 m!1076921))

(declare-fun m!1076923 () Bool)

(assert (=> mapNonEmpty!45887 m!1076923))

(declare-fun m!1076925 () Bool)

(assert (=> b!1168994 m!1076925))

(declare-fun m!1076927 () Bool)

(assert (=> b!1169001 m!1076927))

(declare-fun m!1076929 () Bool)

(assert (=> b!1169001 m!1076929))

(declare-fun m!1076931 () Bool)

(assert (=> b!1169004 m!1076931))

(declare-fun m!1076933 () Bool)

(assert (=> b!1169003 m!1076933))

(declare-fun m!1076935 () Bool)

(assert (=> b!1169006 m!1076935))

(declare-fun m!1076937 () Bool)

(assert (=> b!1168998 m!1076937))

(declare-fun m!1076939 () Bool)

(assert (=> start!99300 m!1076939))

(declare-fun m!1076941 () Bool)

(assert (=> start!99300 m!1076941))

(declare-fun m!1076943 () Bool)

(assert (=> b!1169010 m!1076943))

(assert (=> b!1169002 m!1076921))

(declare-fun m!1076945 () Bool)

(assert (=> b!1169002 m!1076945))

(assert (=> b!1169002 m!1076945))

(declare-fun m!1076947 () Bool)

(assert (=> b!1169002 m!1076947))

(declare-fun m!1076949 () Bool)

(assert (=> b!1169002 m!1076949))

(declare-fun m!1076951 () Bool)

(assert (=> b!1168995 m!1076951))

(declare-fun m!1076953 () Bool)

(assert (=> b!1168995 m!1076953))

(declare-fun m!1076955 () Bool)

(assert (=> b!1168999 m!1076955))

(declare-fun m!1076957 () Bool)

(assert (=> b!1168999 m!1076957))

(declare-fun m!1076959 () Bool)

(assert (=> b!1168999 m!1076959))

(declare-fun m!1076961 () Bool)

(assert (=> b!1168999 m!1076961))

(declare-fun m!1076963 () Bool)

(assert (=> b!1169000 m!1076963))

(declare-fun m!1076965 () Bool)

(assert (=> b!1168996 m!1076965))

(declare-fun m!1076967 () Bool)

(assert (=> b!1168996 m!1076967))

(declare-fun m!1076969 () Bool)

(assert (=> b!1168996 m!1076969))

(declare-fun m!1076971 () Bool)

(assert (=> b!1168996 m!1076971))

(assert (=> b!1168996 m!1076921))

(declare-fun m!1076973 () Bool)

(assert (=> b!1168996 m!1076973))

(assert (=> b!1168996 m!1076921))

(check-sat (not b!1169001) (not b!1168999) (not b!1169004) (not mapNonEmpty!45887) tp_is_empty!29373 (not b_lambda!20005) (not start!99300) b_and!40569 (not b!1168996) (not b_next!24843) (not b!1168995) (not b!1169003) (not b!1168998) (not b!1169002) (not b!1169006) (not b!1169000) (not b!1169010))
(check-sat b_and!40569 (not b_next!24843))
