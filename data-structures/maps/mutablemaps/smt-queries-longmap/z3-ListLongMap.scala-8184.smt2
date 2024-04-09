; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100008 () Bool)

(assert start!100008)

(declare-fun b_free!25551 () Bool)

(declare-fun b_next!25551 () Bool)

(assert (=> start!100008 (= b_free!25551 (not b_next!25551))))

(declare-fun tp!89368 () Bool)

(declare-fun b_and!41983 () Bool)

(assert (=> start!100008 (= tp!89368 b_and!41983)))

(declare-fun b!1190558 () Bool)

(declare-fun e!676855 () Bool)

(assert (=> b!1190558 (= e!676855 true)))

(declare-datatypes ((V!45235 0))(
  ( (V!45236 (val!15097 Int)) )
))
(declare-fun zeroValue!944 () V!45235)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45235)

(declare-datatypes ((array!76928 0))(
  ( (array!76929 (arr!37110 (Array (_ BitVec 32) (_ BitVec 64))) (size!37647 (_ BitVec 32))) )
))
(declare-fun lt!541466 () array!76928)

(declare-fun _keys!1208 () array!76928)

(declare-datatypes ((ValueCell!14331 0))(
  ( (ValueCellFull!14331 (v!17736 V!45235)) (EmptyCell!14331) )
))
(declare-datatypes ((array!76930 0))(
  ( (array!76931 (arr!37111 (Array (_ BitVec 32) ValueCell!14331)) (size!37648 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76930)

(declare-fun lt!541469 () array!76930)

(declare-datatypes ((tuple2!19536 0))(
  ( (tuple2!19537 (_1!9778 (_ BitVec 64)) (_2!9778 V!45235)) )
))
(declare-datatypes ((List!26296 0))(
  ( (Nil!26293) (Cons!26292 (h!27501 tuple2!19536) (t!38846 List!26296)) )
))
(declare-datatypes ((ListLongMap!17517 0))(
  ( (ListLongMap!17518 (toList!8774 List!26296)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5188 (array!76928 array!76930 (_ BitVec 32) (_ BitVec 32) V!45235 V!45235 (_ BitVec 32) Int) ListLongMap!17517)

(declare-fun -!1756 (ListLongMap!17517 (_ BitVec 64)) ListLongMap!17517)

(assert (=> b!1190558 (= (getCurrentListMapNoExtraKeys!5188 lt!541466 lt!541469 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1756 (getCurrentListMapNoExtraKeys!5188 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39440 0))(
  ( (Unit!39441) )
))
(declare-fun lt!541467 () Unit!39440)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!962 (array!76928 array!76930 (_ BitVec 32) (_ BitVec 32) V!45235 V!45235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39440)

(assert (=> b!1190558 (= lt!541467 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!962 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190559 () Bool)

(declare-fun res!791906 () Bool)

(declare-fun e!676859 () Bool)

(assert (=> b!1190559 (=> (not res!791906) (not e!676859))))

(assert (=> b!1190559 (= res!791906 (= (select (arr!37110 _keys!1208) i!673) k0!934))))

(declare-fun b!1190560 () Bool)

(declare-fun res!791903 () Bool)

(assert (=> b!1190560 (=> (not res!791903) (not e!676859))))

(assert (=> b!1190560 (= res!791903 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37647 _keys!1208))))))

(declare-fun b!1190561 () Bool)

(declare-fun res!791897 () Bool)

(assert (=> b!1190561 (=> (not res!791897) (not e!676859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190561 (= res!791897 (validKeyInArray!0 k0!934))))

(declare-fun b!1190562 () Bool)

(declare-fun res!791908 () Bool)

(assert (=> b!1190562 (=> (not res!791908) (not e!676859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190562 (= res!791908 (validMask!0 mask!1564))))

(declare-fun b!1190563 () Bool)

(declare-fun res!791900 () Bool)

(declare-fun e!676857 () Bool)

(assert (=> b!1190563 (=> (not res!791900) (not e!676857))))

(declare-datatypes ((List!26297 0))(
  ( (Nil!26294) (Cons!26293 (h!27502 (_ BitVec 64)) (t!38847 List!26297)) )
))
(declare-fun arrayNoDuplicates!0 (array!76928 (_ BitVec 32) List!26297) Bool)

(assert (=> b!1190563 (= res!791900 (arrayNoDuplicates!0 lt!541466 #b00000000000000000000000000000000 Nil!26294))))

(declare-fun b!1190564 () Bool)

(declare-fun res!791898 () Bool)

(assert (=> b!1190564 (=> (not res!791898) (not e!676859))))

(assert (=> b!1190564 (= res!791898 (and (= (size!37648 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37647 _keys!1208) (size!37648 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!46949 () Bool)

(declare-fun mapRes!46949 () Bool)

(declare-fun tp!89367 () Bool)

(declare-fun e!676860 () Bool)

(assert (=> mapNonEmpty!46949 (= mapRes!46949 (and tp!89367 e!676860))))

(declare-fun mapRest!46949 () (Array (_ BitVec 32) ValueCell!14331))

(declare-fun mapKey!46949 () (_ BitVec 32))

(declare-fun mapValue!46949 () ValueCell!14331)

(assert (=> mapNonEmpty!46949 (= (arr!37111 _values!996) (store mapRest!46949 mapKey!46949 mapValue!46949))))

(declare-fun b!1190565 () Bool)

(declare-fun e!676856 () Bool)

(declare-fun tp_is_empty!30081 () Bool)

(assert (=> b!1190565 (= e!676856 tp_is_empty!30081)))

(declare-fun b!1190566 () Bool)

(assert (=> b!1190566 (= e!676860 tp_is_empty!30081)))

(declare-fun res!791899 () Bool)

(assert (=> start!100008 (=> (not res!791899) (not e!676859))))

(assert (=> start!100008 (= res!791899 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37647 _keys!1208))))))

(assert (=> start!100008 e!676859))

(assert (=> start!100008 tp_is_empty!30081))

(declare-fun array_inv!28200 (array!76928) Bool)

(assert (=> start!100008 (array_inv!28200 _keys!1208)))

(assert (=> start!100008 true))

(assert (=> start!100008 tp!89368))

(declare-fun e!676858 () Bool)

(declare-fun array_inv!28201 (array!76930) Bool)

(assert (=> start!100008 (and (array_inv!28201 _values!996) e!676858)))

(declare-fun b!1190567 () Bool)

(declare-fun e!676854 () Bool)

(assert (=> b!1190567 (= e!676857 (not e!676854))))

(declare-fun res!791902 () Bool)

(assert (=> b!1190567 (=> res!791902 e!676854)))

(assert (=> b!1190567 (= res!791902 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190567 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541465 () Unit!39440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76928 (_ BitVec 64) (_ BitVec 32)) Unit!39440)

(assert (=> b!1190567 (= lt!541465 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1190568 () Bool)

(declare-fun res!791905 () Bool)

(assert (=> b!1190568 (=> (not res!791905) (not e!676859))))

(assert (=> b!1190568 (= res!791905 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26294))))

(declare-fun b!1190569 () Bool)

(assert (=> b!1190569 (= e!676854 e!676855)))

(declare-fun res!791907 () Bool)

(assert (=> b!1190569 (=> res!791907 e!676855)))

(assert (=> b!1190569 (= res!791907 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541470 () ListLongMap!17517)

(assert (=> b!1190569 (= lt!541470 (getCurrentListMapNoExtraKeys!5188 lt!541466 lt!541469 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3134 (Int (_ BitVec 64)) V!45235)

(assert (=> b!1190569 (= lt!541469 (array!76931 (store (arr!37111 _values!996) i!673 (ValueCellFull!14331 (dynLambda!3134 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37648 _values!996)))))

(declare-fun lt!541468 () ListLongMap!17517)

(assert (=> b!1190569 (= lt!541468 (getCurrentListMapNoExtraKeys!5188 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190570 () Bool)

(assert (=> b!1190570 (= e!676858 (and e!676856 mapRes!46949))))

(declare-fun condMapEmpty!46949 () Bool)

(declare-fun mapDefault!46949 () ValueCell!14331)

(assert (=> b!1190570 (= condMapEmpty!46949 (= (arr!37111 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14331)) mapDefault!46949)))))

(declare-fun b!1190571 () Bool)

(declare-fun res!791901 () Bool)

(assert (=> b!1190571 (=> (not res!791901) (not e!676859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76928 (_ BitVec 32)) Bool)

(assert (=> b!1190571 (= res!791901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190572 () Bool)

(assert (=> b!1190572 (= e!676859 e!676857)))

(declare-fun res!791904 () Bool)

(assert (=> b!1190572 (=> (not res!791904) (not e!676857))))

(assert (=> b!1190572 (= res!791904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541466 mask!1564))))

(assert (=> b!1190572 (= lt!541466 (array!76929 (store (arr!37110 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37647 _keys!1208)))))

(declare-fun mapIsEmpty!46949 () Bool)

(assert (=> mapIsEmpty!46949 mapRes!46949))

(assert (= (and start!100008 res!791899) b!1190562))

(assert (= (and b!1190562 res!791908) b!1190564))

(assert (= (and b!1190564 res!791898) b!1190571))

(assert (= (and b!1190571 res!791901) b!1190568))

(assert (= (and b!1190568 res!791905) b!1190560))

(assert (= (and b!1190560 res!791903) b!1190561))

(assert (= (and b!1190561 res!791897) b!1190559))

(assert (= (and b!1190559 res!791906) b!1190572))

(assert (= (and b!1190572 res!791904) b!1190563))

(assert (= (and b!1190563 res!791900) b!1190567))

(assert (= (and b!1190567 (not res!791902)) b!1190569))

(assert (= (and b!1190569 (not res!791907)) b!1190558))

(assert (= (and b!1190570 condMapEmpty!46949) mapIsEmpty!46949))

(assert (= (and b!1190570 (not condMapEmpty!46949)) mapNonEmpty!46949))

(get-info :version)

(assert (= (and mapNonEmpty!46949 ((_ is ValueCellFull!14331) mapValue!46949)) b!1190566))

(assert (= (and b!1190570 ((_ is ValueCellFull!14331) mapDefault!46949)) b!1190565))

(assert (= start!100008 b!1190570))

(declare-fun b_lambda!20713 () Bool)

(assert (=> (not b_lambda!20713) (not b!1190569)))

(declare-fun t!38845 () Bool)

(declare-fun tb!10371 () Bool)

(assert (=> (and start!100008 (= defaultEntry!1004 defaultEntry!1004) t!38845) tb!10371))

(declare-fun result!21301 () Bool)

(assert (=> tb!10371 (= result!21301 tp_is_empty!30081)))

(assert (=> b!1190569 t!38845))

(declare-fun b_and!41985 () Bool)

(assert (= b_and!41983 (and (=> t!38845 result!21301) b_and!41985)))

(declare-fun m!1099163 () Bool)

(assert (=> b!1190562 m!1099163))

(declare-fun m!1099165 () Bool)

(assert (=> b!1190569 m!1099165))

(declare-fun m!1099167 () Bool)

(assert (=> b!1190569 m!1099167))

(declare-fun m!1099169 () Bool)

(assert (=> b!1190569 m!1099169))

(declare-fun m!1099171 () Bool)

(assert (=> b!1190569 m!1099171))

(declare-fun m!1099173 () Bool)

(assert (=> b!1190567 m!1099173))

(declare-fun m!1099175 () Bool)

(assert (=> b!1190567 m!1099175))

(declare-fun m!1099177 () Bool)

(assert (=> b!1190568 m!1099177))

(declare-fun m!1099179 () Bool)

(assert (=> b!1190561 m!1099179))

(declare-fun m!1099181 () Bool)

(assert (=> b!1190559 m!1099181))

(declare-fun m!1099183 () Bool)

(assert (=> b!1190571 m!1099183))

(declare-fun m!1099185 () Bool)

(assert (=> start!100008 m!1099185))

(declare-fun m!1099187 () Bool)

(assert (=> start!100008 m!1099187))

(declare-fun m!1099189 () Bool)

(assert (=> b!1190558 m!1099189))

(declare-fun m!1099191 () Bool)

(assert (=> b!1190558 m!1099191))

(assert (=> b!1190558 m!1099191))

(declare-fun m!1099193 () Bool)

(assert (=> b!1190558 m!1099193))

(declare-fun m!1099195 () Bool)

(assert (=> b!1190558 m!1099195))

(declare-fun m!1099197 () Bool)

(assert (=> mapNonEmpty!46949 m!1099197))

(declare-fun m!1099199 () Bool)

(assert (=> b!1190572 m!1099199))

(declare-fun m!1099201 () Bool)

(assert (=> b!1190572 m!1099201))

(declare-fun m!1099203 () Bool)

(assert (=> b!1190563 m!1099203))

(check-sat (not b!1190569) (not b!1190568) (not b!1190571) (not b_next!25551) tp_is_empty!30081 (not b!1190562) (not b!1190561) (not b!1190563) (not mapNonEmpty!46949) (not b!1190567) b_and!41985 (not b_lambda!20713) (not b!1190572) (not start!100008) (not b!1190558))
(check-sat b_and!41985 (not b_next!25551))
