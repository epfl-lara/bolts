; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98134 () Bool)

(assert start!98134)

(declare-fun b_free!23799 () Bool)

(declare-fun b_next!23799 () Bool)

(assert (=> start!98134 (= b_free!23799 (not b_next!23799))))

(declare-fun tp!84102 () Bool)

(declare-fun b_and!38403 () Bool)

(assert (=> start!98134 (= tp!84102 b_and!38403)))

(declare-fun b!1126941 () Bool)

(declare-fun e!641483 () Bool)

(declare-fun e!641481 () Bool)

(assert (=> b!1126941 (= e!641483 e!641481)))

(declare-fun res!753159 () Bool)

(assert (=> b!1126941 (=> res!753159 e!641481)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73478 0))(
  ( (array!73479 (arr!35388 (Array (_ BitVec 32) (_ BitVec 64))) (size!35925 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73478)

(assert (=> b!1126941 (= res!753159 (not (= (select (arr!35388 _keys!1208) from!1455) k0!934)))))

(declare-fun e!641479 () Bool)

(assert (=> b!1126941 e!641479))

(declare-fun c!109649 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126941 (= c!109649 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42899 0))(
  ( (V!42900 (val!14221 Int)) )
))
(declare-fun zeroValue!944 () V!42899)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36875 0))(
  ( (Unit!36876) )
))
(declare-fun lt!500394 () Unit!36875)

(declare-datatypes ((ValueCell!13455 0))(
  ( (ValueCellFull!13455 (v!16855 V!42899)) (EmptyCell!13455) )
))
(declare-datatypes ((array!73480 0))(
  ( (array!73481 (arr!35389 (Array (_ BitVec 32) ValueCell!13455)) (size!35926 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73480)

(declare-fun minValue!944 () V!42899)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!386 (array!73478 array!73480 (_ BitVec 32) (_ BitVec 32) V!42899 V!42899 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36875)

(assert (=> b!1126941 (= lt!500394 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!386 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126942 () Bool)

(declare-fun res!753153 () Bool)

(assert (=> b!1126942 (=> res!753153 e!641481)))

(declare-datatypes ((tuple2!17972 0))(
  ( (tuple2!17973 (_1!8996 (_ BitVec 64)) (_2!8996 V!42899)) )
))
(declare-datatypes ((List!24798 0))(
  ( (Nil!24795) (Cons!24794 (h!26003 tuple2!17972) (t!35596 List!24798)) )
))
(declare-datatypes ((ListLongMap!15953 0))(
  ( (ListLongMap!15954 (toList!7992 List!24798)) )
))
(declare-fun contains!6499 (ListLongMap!15953 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4451 (array!73478 array!73480 (_ BitVec 32) (_ BitVec 32) V!42899 V!42899 (_ BitVec 32) Int) ListLongMap!15953)

(assert (=> b!1126942 (= res!753153 (not (contains!6499 (getCurrentListMapNoExtraKeys!4451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934)))))

(declare-fun b!1126943 () Bool)

(declare-fun e!641475 () Bool)

(declare-fun tp_is_empty!28329 () Bool)

(assert (=> b!1126943 (= e!641475 tp_is_empty!28329)))

(declare-fun b!1126944 () Bool)

(declare-fun res!753157 () Bool)

(declare-fun e!641478 () Bool)

(assert (=> b!1126944 (=> (not res!753157) (not e!641478))))

(declare-datatypes ((List!24799 0))(
  ( (Nil!24796) (Cons!24795 (h!26004 (_ BitVec 64)) (t!35597 List!24799)) )
))
(declare-fun arrayNoDuplicates!0 (array!73478 (_ BitVec 32) List!24799) Bool)

(assert (=> b!1126944 (= res!753157 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24796))))

(declare-fun b!1126945 () Bool)

(declare-fun res!753152 () Bool)

(assert (=> b!1126945 (=> (not res!753152) (not e!641478))))

(assert (=> b!1126945 (= res!753152 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35925 _keys!1208))))))

(declare-fun b!1126947 () Bool)

(declare-fun e!641474 () Bool)

(assert (=> b!1126947 (= e!641474 e!641483)))

(declare-fun res!753149 () Bool)

(assert (=> b!1126947 (=> res!753149 e!641483)))

(assert (=> b!1126947 (= res!753149 (not (= from!1455 i!673)))))

(declare-fun lt!500393 () array!73480)

(declare-fun lt!500397 () ListLongMap!15953)

(declare-fun lt!500395 () array!73478)

(assert (=> b!1126947 (= lt!500397 (getCurrentListMapNoExtraKeys!4451 lt!500395 lt!500393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2531 (Int (_ BitVec 64)) V!42899)

(assert (=> b!1126947 (= lt!500393 (array!73481 (store (arr!35389 _values!996) i!673 (ValueCellFull!13455 (dynLambda!2531 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35926 _values!996)))))

(declare-fun lt!500392 () ListLongMap!15953)

(assert (=> b!1126947 (= lt!500392 (getCurrentListMapNoExtraKeys!4451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126948 () Bool)

(assert (=> b!1126948 (= e!641481 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35925 _keys!1208)))))))

(declare-fun b!1126949 () Bool)

(declare-fun res!753148 () Bool)

(assert (=> b!1126949 (=> (not res!753148) (not e!641478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126949 (= res!753148 (validKeyInArray!0 k0!934))))

(declare-fun b!1126950 () Bool)

(declare-fun res!753146 () Bool)

(assert (=> b!1126950 (=> (not res!753146) (not e!641478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73478 (_ BitVec 32)) Bool)

(assert (=> b!1126950 (= res!753146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47677 () Bool)

(declare-fun call!47680 () ListLongMap!15953)

(assert (=> bm!47677 (= call!47680 (getCurrentListMapNoExtraKeys!4451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126951 () Bool)

(declare-fun e!641480 () Bool)

(assert (=> b!1126951 (= e!641480 tp_is_empty!28329)))

(declare-fun b!1126952 () Bool)

(declare-fun e!641476 () Bool)

(declare-fun mapRes!44311 () Bool)

(assert (=> b!1126952 (= e!641476 (and e!641475 mapRes!44311))))

(declare-fun condMapEmpty!44311 () Bool)

(declare-fun mapDefault!44311 () ValueCell!13455)

(assert (=> b!1126952 (= condMapEmpty!44311 (= (arr!35389 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13455)) mapDefault!44311)))))

(declare-fun mapNonEmpty!44311 () Bool)

(declare-fun tp!84101 () Bool)

(assert (=> mapNonEmpty!44311 (= mapRes!44311 (and tp!84101 e!641480))))

(declare-fun mapRest!44311 () (Array (_ BitVec 32) ValueCell!13455))

(declare-fun mapKey!44311 () (_ BitVec 32))

(declare-fun mapValue!44311 () ValueCell!13455)

(assert (=> mapNonEmpty!44311 (= (arr!35389 _values!996) (store mapRest!44311 mapKey!44311 mapValue!44311))))

(declare-fun b!1126953 () Bool)

(declare-fun res!753147 () Bool)

(assert (=> b!1126953 (=> (not res!753147) (not e!641478))))

(assert (=> b!1126953 (= res!753147 (and (= (size!35926 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35925 _keys!1208) (size!35926 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126954 () Bool)

(declare-fun res!753158 () Bool)

(declare-fun e!641477 () Bool)

(assert (=> b!1126954 (=> (not res!753158) (not e!641477))))

(assert (=> b!1126954 (= res!753158 (arrayNoDuplicates!0 lt!500395 #b00000000000000000000000000000000 Nil!24796))))

(declare-fun b!1126955 () Bool)

(assert (=> b!1126955 (= e!641478 e!641477)))

(declare-fun res!753155 () Bool)

(assert (=> b!1126955 (=> (not res!753155) (not e!641477))))

(assert (=> b!1126955 (= res!753155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500395 mask!1564))))

(assert (=> b!1126955 (= lt!500395 (array!73479 (store (arr!35388 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35925 _keys!1208)))))

(declare-fun res!753154 () Bool)

(assert (=> start!98134 (=> (not res!753154) (not e!641478))))

(assert (=> start!98134 (= res!753154 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35925 _keys!1208))))))

(assert (=> start!98134 e!641478))

(assert (=> start!98134 tp_is_empty!28329))

(declare-fun array_inv!27026 (array!73478) Bool)

(assert (=> start!98134 (array_inv!27026 _keys!1208)))

(assert (=> start!98134 true))

(assert (=> start!98134 tp!84102))

(declare-fun array_inv!27027 (array!73480) Bool)

(assert (=> start!98134 (and (array_inv!27027 _values!996) e!641476)))

(declare-fun b!1126946 () Bool)

(declare-fun res!753156 () Bool)

(assert (=> b!1126946 (=> (not res!753156) (not e!641478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126946 (= res!753156 (validMask!0 mask!1564))))

(declare-fun bm!47678 () Bool)

(declare-fun call!47681 () ListLongMap!15953)

(assert (=> bm!47678 (= call!47681 (getCurrentListMapNoExtraKeys!4451 lt!500395 lt!500393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44311 () Bool)

(assert (=> mapIsEmpty!44311 mapRes!44311))

(declare-fun b!1126956 () Bool)

(assert (=> b!1126956 (= e!641477 (not e!641474))))

(declare-fun res!753151 () Bool)

(assert (=> b!1126956 (=> res!753151 e!641474)))

(assert (=> b!1126956 (= res!753151 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126956 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500396 () Unit!36875)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73478 (_ BitVec 64) (_ BitVec 32)) Unit!36875)

(assert (=> b!1126956 (= lt!500396 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1126957 () Bool)

(declare-fun -!1131 (ListLongMap!15953 (_ BitVec 64)) ListLongMap!15953)

(assert (=> b!1126957 (= e!641479 (= call!47681 (-!1131 call!47680 k0!934)))))

(declare-fun b!1126958 () Bool)

(declare-fun res!753150 () Bool)

(assert (=> b!1126958 (=> (not res!753150) (not e!641478))))

(assert (=> b!1126958 (= res!753150 (= (select (arr!35388 _keys!1208) i!673) k0!934))))

(declare-fun b!1126959 () Bool)

(assert (=> b!1126959 (= e!641479 (= call!47681 call!47680))))

(assert (= (and start!98134 res!753154) b!1126946))

(assert (= (and b!1126946 res!753156) b!1126953))

(assert (= (and b!1126953 res!753147) b!1126950))

(assert (= (and b!1126950 res!753146) b!1126944))

(assert (= (and b!1126944 res!753157) b!1126945))

(assert (= (and b!1126945 res!753152) b!1126949))

(assert (= (and b!1126949 res!753148) b!1126958))

(assert (= (and b!1126958 res!753150) b!1126955))

(assert (= (and b!1126955 res!753155) b!1126954))

(assert (= (and b!1126954 res!753158) b!1126956))

(assert (= (and b!1126956 (not res!753151)) b!1126947))

(assert (= (and b!1126947 (not res!753149)) b!1126941))

(assert (= (and b!1126941 c!109649) b!1126957))

(assert (= (and b!1126941 (not c!109649)) b!1126959))

(assert (= (or b!1126957 b!1126959) bm!47678))

(assert (= (or b!1126957 b!1126959) bm!47677))

(assert (= (and b!1126941 (not res!753159)) b!1126942))

(assert (= (and b!1126942 (not res!753153)) b!1126948))

(assert (= (and b!1126952 condMapEmpty!44311) mapIsEmpty!44311))

(assert (= (and b!1126952 (not condMapEmpty!44311)) mapNonEmpty!44311))

(get-info :version)

(assert (= (and mapNonEmpty!44311 ((_ is ValueCellFull!13455) mapValue!44311)) b!1126951))

(assert (= (and b!1126952 ((_ is ValueCellFull!13455) mapDefault!44311)) b!1126943))

(assert (= start!98134 b!1126952))

(declare-fun b_lambda!18803 () Bool)

(assert (=> (not b_lambda!18803) (not b!1126947)))

(declare-fun t!35595 () Bool)

(declare-fun tb!8619 () Bool)

(assert (=> (and start!98134 (= defaultEntry!1004 defaultEntry!1004) t!35595) tb!8619))

(declare-fun result!17791 () Bool)

(assert (=> tb!8619 (= result!17791 tp_is_empty!28329)))

(assert (=> b!1126947 t!35595))

(declare-fun b_and!38405 () Bool)

(assert (= b_and!38403 (and (=> t!35595 result!17791) b_and!38405)))

(declare-fun m!1040925 () Bool)

(assert (=> b!1126954 m!1040925))

(declare-fun m!1040927 () Bool)

(assert (=> mapNonEmpty!44311 m!1040927))

(declare-fun m!1040929 () Bool)

(assert (=> b!1126950 m!1040929))

(declare-fun m!1040931 () Bool)

(assert (=> b!1126942 m!1040931))

(assert (=> b!1126942 m!1040931))

(declare-fun m!1040933 () Bool)

(assert (=> b!1126942 m!1040933))

(declare-fun m!1040935 () Bool)

(assert (=> b!1126957 m!1040935))

(declare-fun m!1040937 () Bool)

(assert (=> bm!47678 m!1040937))

(declare-fun m!1040939 () Bool)

(assert (=> b!1126958 m!1040939))

(declare-fun m!1040941 () Bool)

(assert (=> b!1126947 m!1040941))

(declare-fun m!1040943 () Bool)

(assert (=> b!1126947 m!1040943))

(declare-fun m!1040945 () Bool)

(assert (=> b!1126947 m!1040945))

(declare-fun m!1040947 () Bool)

(assert (=> b!1126947 m!1040947))

(declare-fun m!1040949 () Bool)

(assert (=> b!1126956 m!1040949))

(declare-fun m!1040951 () Bool)

(assert (=> b!1126956 m!1040951))

(declare-fun m!1040953 () Bool)

(assert (=> b!1126946 m!1040953))

(declare-fun m!1040955 () Bool)

(assert (=> start!98134 m!1040955))

(declare-fun m!1040957 () Bool)

(assert (=> start!98134 m!1040957))

(assert (=> bm!47677 m!1040931))

(declare-fun m!1040959 () Bool)

(assert (=> b!1126955 m!1040959))

(declare-fun m!1040961 () Bool)

(assert (=> b!1126955 m!1040961))

(declare-fun m!1040963 () Bool)

(assert (=> b!1126941 m!1040963))

(declare-fun m!1040965 () Bool)

(assert (=> b!1126941 m!1040965))

(declare-fun m!1040967 () Bool)

(assert (=> b!1126949 m!1040967))

(declare-fun m!1040969 () Bool)

(assert (=> b!1126944 m!1040969))

(check-sat (not b!1126950) (not bm!47678) tp_is_empty!28329 (not start!98134) (not b!1126955) b_and!38405 (not bm!47677) (not mapNonEmpty!44311) (not b!1126946) (not b!1126942) (not b!1126944) (not b!1126949) (not b!1126941) (not b!1126947) (not b!1126954) (not b!1126956) (not b_next!23799) (not b_lambda!18803) (not b!1126957))
(check-sat b_and!38405 (not b_next!23799))
