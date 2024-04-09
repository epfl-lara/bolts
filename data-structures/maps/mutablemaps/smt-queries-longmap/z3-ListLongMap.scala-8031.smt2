; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99064 () Bool)

(assert start!99064)

(declare-fun b_free!24633 () Bool)

(declare-fun b_next!24633 () Bool)

(assert (=> start!99064 (= b_free!24633 (not b_next!24633))))

(declare-fun tp!86610 () Bool)

(declare-fun b_and!40129 () Bool)

(assert (=> start!99064 (= tp!86610 b_and!40129)))

(declare-fun b!1163986 () Bool)

(declare-fun res!771944 () Bool)

(declare-fun e!661881 () Bool)

(assert (=> b!1163986 (=> (not res!771944) (not e!661881))))

(declare-datatypes ((array!75114 0))(
  ( (array!75115 (arr!36204 (Array (_ BitVec 32) (_ BitVec 64))) (size!36741 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75114)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1163986 (= res!771944 (= (select (arr!36204 _keys!1208) i!673) k0!934))))

(declare-fun res!771937 () Bool)

(assert (=> start!99064 (=> (not res!771937) (not e!661881))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99064 (= res!771937 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36741 _keys!1208))))))

(assert (=> start!99064 e!661881))

(declare-fun tp_is_empty!29163 () Bool)

(assert (=> start!99064 tp_is_empty!29163))

(declare-fun array_inv!27570 (array!75114) Bool)

(assert (=> start!99064 (array_inv!27570 _keys!1208)))

(assert (=> start!99064 true))

(assert (=> start!99064 tp!86610))

(declare-datatypes ((V!44011 0))(
  ( (V!44012 (val!14638 Int)) )
))
(declare-datatypes ((ValueCell!13872 0))(
  ( (ValueCellFull!13872 (v!17276 V!44011)) (EmptyCell!13872) )
))
(declare-datatypes ((array!75116 0))(
  ( (array!75117 (arr!36205 (Array (_ BitVec 32) ValueCell!13872)) (size!36742 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75116)

(declare-fun e!661882 () Bool)

(declare-fun array_inv!27571 (array!75116) Bool)

(assert (=> start!99064 (and (array_inv!27571 _values!996) e!661882)))

(declare-fun b!1163987 () Bool)

(declare-fun e!661884 () Bool)

(declare-fun mapRes!45569 () Bool)

(assert (=> b!1163987 (= e!661882 (and e!661884 mapRes!45569))))

(declare-fun condMapEmpty!45569 () Bool)

(declare-fun mapDefault!45569 () ValueCell!13872)

(assert (=> b!1163987 (= condMapEmpty!45569 (= (arr!36205 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13872)) mapDefault!45569)))))

(declare-fun b!1163988 () Bool)

(declare-fun e!661879 () Bool)

(assert (=> b!1163988 (= e!661881 e!661879)))

(declare-fun res!771941 () Bool)

(assert (=> b!1163988 (=> (not res!771941) (not e!661879))))

(declare-fun lt!524479 () array!75114)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75114 (_ BitVec 32)) Bool)

(assert (=> b!1163988 (= res!771941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524479 mask!1564))))

(assert (=> b!1163988 (= lt!524479 (array!75115 (store (arr!36204 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36741 _keys!1208)))))

(declare-fun mapNonEmpty!45569 () Bool)

(declare-fun tp!86611 () Bool)

(declare-fun e!661878 () Bool)

(assert (=> mapNonEmpty!45569 (= mapRes!45569 (and tp!86611 e!661878))))

(declare-fun mapValue!45569 () ValueCell!13872)

(declare-fun mapKey!45569 () (_ BitVec 32))

(declare-fun mapRest!45569 () (Array (_ BitVec 32) ValueCell!13872))

(assert (=> mapNonEmpty!45569 (= (arr!36205 _values!996) (store mapRest!45569 mapKey!45569 mapValue!45569))))

(declare-fun b!1163989 () Bool)

(declare-fun res!771942 () Bool)

(assert (=> b!1163989 (=> (not res!771942) (not e!661881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1163989 (= res!771942 (validMask!0 mask!1564))))

(declare-fun b!1163990 () Bool)

(declare-fun res!771939 () Bool)

(assert (=> b!1163990 (=> (not res!771939) (not e!661881))))

(declare-datatypes ((List!25518 0))(
  ( (Nil!25515) (Cons!25514 (h!26723 (_ BitVec 64)) (t!37150 List!25518)) )
))
(declare-fun arrayNoDuplicates!0 (array!75114 (_ BitVec 32) List!25518) Bool)

(assert (=> b!1163990 (= res!771939 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25515))))

(declare-fun b!1163991 () Bool)

(declare-fun res!771934 () Bool)

(assert (=> b!1163991 (=> (not res!771934) (not e!661881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1163991 (= res!771934 (validKeyInArray!0 k0!934))))

(declare-fun b!1163992 () Bool)

(assert (=> b!1163992 (= e!661884 tp_is_empty!29163)))

(declare-fun b!1163993 () Bool)

(declare-fun res!771940 () Bool)

(assert (=> b!1163993 (=> (not res!771940) (not e!661879))))

(assert (=> b!1163993 (= res!771940 (arrayNoDuplicates!0 lt!524479 #b00000000000000000000000000000000 Nil!25515))))

(declare-fun b!1163994 () Bool)

(assert (=> b!1163994 (= e!661878 tp_is_empty!29163)))

(declare-fun b!1163995 () Bool)

(declare-fun res!771936 () Bool)

(assert (=> b!1163995 (=> (not res!771936) (not e!661881))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1163995 (= res!771936 (and (= (size!36742 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36741 _keys!1208) (size!36742 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163996 () Bool)

(declare-fun res!771943 () Bool)

(assert (=> b!1163996 (=> (not res!771943) (not e!661881))))

(assert (=> b!1163996 (= res!771943 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36741 _keys!1208))))))

(declare-fun b!1163997 () Bool)

(declare-fun res!771938 () Bool)

(assert (=> b!1163997 (=> (not res!771938) (not e!661881))))

(assert (=> b!1163997 (= res!771938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45569 () Bool)

(assert (=> mapIsEmpty!45569 mapRes!45569))

(declare-fun b!1163998 () Bool)

(declare-fun e!661880 () Bool)

(assert (=> b!1163998 (= e!661879 (not e!661880))))

(declare-fun res!771935 () Bool)

(assert (=> b!1163998 (=> res!771935 e!661880)))

(assert (=> b!1163998 (= res!771935 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163998 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38314 0))(
  ( (Unit!38315) )
))
(declare-fun lt!524478 () Unit!38314)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75114 (_ BitVec 64) (_ BitVec 32)) Unit!38314)

(assert (=> b!1163998 (= lt!524478 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1163999 () Bool)

(assert (=> b!1163999 (= e!661880 true)))

(declare-fun zeroValue!944 () V!44011)

(declare-fun minValue!944 () V!44011)

(declare-datatypes ((tuple2!18744 0))(
  ( (tuple2!18745 (_1!9382 (_ BitVec 64)) (_2!9382 V!44011)) )
))
(declare-datatypes ((List!25519 0))(
  ( (Nil!25516) (Cons!25515 (h!26724 tuple2!18744) (t!37151 List!25519)) )
))
(declare-datatypes ((ListLongMap!16725 0))(
  ( (ListLongMap!16726 (toList!8378 List!25519)) )
))
(declare-fun lt!524480 () ListLongMap!16725)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4811 (array!75114 array!75116 (_ BitVec 32) (_ BitVec 32) V!44011 V!44011 (_ BitVec 32) Int) ListLongMap!16725)

(declare-fun dynLambda!2808 (Int (_ BitVec 64)) V!44011)

(assert (=> b!1163999 (= lt!524480 (getCurrentListMapNoExtraKeys!4811 lt!524479 (array!75117 (store (arr!36205 _values!996) i!673 (ValueCellFull!13872 (dynLambda!2808 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36742 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524481 () ListLongMap!16725)

(assert (=> b!1163999 (= lt!524481 (getCurrentListMapNoExtraKeys!4811 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!99064 res!771937) b!1163989))

(assert (= (and b!1163989 res!771942) b!1163995))

(assert (= (and b!1163995 res!771936) b!1163997))

(assert (= (and b!1163997 res!771938) b!1163990))

(assert (= (and b!1163990 res!771939) b!1163996))

(assert (= (and b!1163996 res!771943) b!1163991))

(assert (= (and b!1163991 res!771934) b!1163986))

(assert (= (and b!1163986 res!771944) b!1163988))

(assert (= (and b!1163988 res!771941) b!1163993))

(assert (= (and b!1163993 res!771940) b!1163998))

(assert (= (and b!1163998 (not res!771935)) b!1163999))

(assert (= (and b!1163987 condMapEmpty!45569) mapIsEmpty!45569))

(assert (= (and b!1163987 (not condMapEmpty!45569)) mapNonEmpty!45569))

(get-info :version)

(assert (= (and mapNonEmpty!45569 ((_ is ValueCellFull!13872) mapValue!45569)) b!1163994))

(assert (= (and b!1163987 ((_ is ValueCellFull!13872) mapDefault!45569)) b!1163992))

(assert (= start!99064 b!1163987))

(declare-fun b_lambda!19757 () Bool)

(assert (=> (not b_lambda!19757) (not b!1163999)))

(declare-fun t!37149 () Bool)

(declare-fun tb!9453 () Bool)

(assert (=> (and start!99064 (= defaultEntry!1004 defaultEntry!1004) t!37149) tb!9453))

(declare-fun result!19463 () Bool)

(assert (=> tb!9453 (= result!19463 tp_is_empty!29163)))

(assert (=> b!1163999 t!37149))

(declare-fun b_and!40131 () Bool)

(assert (= b_and!40129 (and (=> t!37149 result!19463) b_and!40131)))

(declare-fun m!1072553 () Bool)

(assert (=> b!1163990 m!1072553))

(declare-fun m!1072555 () Bool)

(assert (=> b!1163993 m!1072555))

(declare-fun m!1072557 () Bool)

(assert (=> b!1163986 m!1072557))

(declare-fun m!1072559 () Bool)

(assert (=> b!1163989 m!1072559))

(declare-fun m!1072561 () Bool)

(assert (=> b!1163998 m!1072561))

(declare-fun m!1072563 () Bool)

(assert (=> b!1163998 m!1072563))

(declare-fun m!1072565 () Bool)

(assert (=> b!1163999 m!1072565))

(declare-fun m!1072567 () Bool)

(assert (=> b!1163999 m!1072567))

(declare-fun m!1072569 () Bool)

(assert (=> b!1163999 m!1072569))

(declare-fun m!1072571 () Bool)

(assert (=> b!1163999 m!1072571))

(declare-fun m!1072573 () Bool)

(assert (=> b!1163997 m!1072573))

(declare-fun m!1072575 () Bool)

(assert (=> b!1163991 m!1072575))

(declare-fun m!1072577 () Bool)

(assert (=> b!1163988 m!1072577))

(declare-fun m!1072579 () Bool)

(assert (=> b!1163988 m!1072579))

(declare-fun m!1072581 () Bool)

(assert (=> mapNonEmpty!45569 m!1072581))

(declare-fun m!1072583 () Bool)

(assert (=> start!99064 m!1072583))

(declare-fun m!1072585 () Bool)

(assert (=> start!99064 m!1072585))

(check-sat (not b_next!24633) (not b!1163991) (not b!1163997) (not b!1163988) (not start!99064) (not b_lambda!19757) (not b!1163989) (not b!1163990) b_and!40131 tp_is_empty!29163 (not b!1163993) (not b!1163999) (not b!1163998) (not mapNonEmpty!45569))
(check-sat b_and!40131 (not b_next!24633))
