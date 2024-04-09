; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99076 () Bool)

(assert start!99076)

(declare-fun b_free!24645 () Bool)

(declare-fun b_next!24645 () Bool)

(assert (=> start!99076 (= b_free!24645 (not b_next!24645))))

(declare-fun tp!86646 () Bool)

(declare-fun b_and!40153 () Bool)

(assert (=> start!99076 (= tp!86646 b_and!40153)))

(declare-fun b!1164250 () Bool)

(declare-fun e!662010 () Bool)

(declare-fun e!662008 () Bool)

(declare-fun mapRes!45587 () Bool)

(assert (=> b!1164250 (= e!662010 (and e!662008 mapRes!45587))))

(declare-fun condMapEmpty!45587 () Bool)

(declare-datatypes ((V!44027 0))(
  ( (V!44028 (val!14644 Int)) )
))
(declare-datatypes ((ValueCell!13878 0))(
  ( (ValueCellFull!13878 (v!17282 V!44027)) (EmptyCell!13878) )
))
(declare-datatypes ((array!75134 0))(
  ( (array!75135 (arr!36214 (Array (_ BitVec 32) ValueCell!13878)) (size!36751 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75134)

(declare-fun mapDefault!45587 () ValueCell!13878)

(assert (=> b!1164250 (= condMapEmpty!45587 (= (arr!36214 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13878)) mapDefault!45587)))))

(declare-fun mapNonEmpty!45587 () Bool)

(declare-fun tp!86647 () Bool)

(declare-fun e!662006 () Bool)

(assert (=> mapNonEmpty!45587 (= mapRes!45587 (and tp!86647 e!662006))))

(declare-fun mapRest!45587 () (Array (_ BitVec 32) ValueCell!13878))

(declare-fun mapKey!45587 () (_ BitVec 32))

(declare-fun mapValue!45587 () ValueCell!13878)

(assert (=> mapNonEmpty!45587 (= (arr!36214 _values!996) (store mapRest!45587 mapKey!45587 mapValue!45587))))

(declare-fun res!772134 () Bool)

(declare-fun e!662009 () Bool)

(assert (=> start!99076 (=> (not res!772134) (not e!662009))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75136 0))(
  ( (array!75137 (arr!36215 (Array (_ BitVec 32) (_ BitVec 64))) (size!36752 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75136)

(assert (=> start!99076 (= res!772134 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36752 _keys!1208))))))

(assert (=> start!99076 e!662009))

(declare-fun tp_is_empty!29175 () Bool)

(assert (=> start!99076 tp_is_empty!29175))

(declare-fun array_inv!27576 (array!75136) Bool)

(assert (=> start!99076 (array_inv!27576 _keys!1208)))

(assert (=> start!99076 true))

(assert (=> start!99076 tp!86646))

(declare-fun array_inv!27577 (array!75134) Bool)

(assert (=> start!99076 (and (array_inv!27577 _values!996) e!662010)))

(declare-fun b!1164251 () Bool)

(declare-fun res!772138 () Bool)

(assert (=> b!1164251 (=> (not res!772138) (not e!662009))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164251 (= res!772138 (validMask!0 mask!1564))))

(declare-fun b!1164252 () Bool)

(declare-fun res!772142 () Bool)

(assert (=> b!1164252 (=> (not res!772142) (not e!662009))))

(declare-datatypes ((List!25524 0))(
  ( (Nil!25521) (Cons!25520 (h!26729 (_ BitVec 64)) (t!37168 List!25524)) )
))
(declare-fun arrayNoDuplicates!0 (array!75136 (_ BitVec 32) List!25524) Bool)

(assert (=> b!1164252 (= res!772142 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25521))))

(declare-fun b!1164253 () Bool)

(declare-fun e!662007 () Bool)

(assert (=> b!1164253 (= e!662007 true)))

(declare-fun zeroValue!944 () V!44027)

(declare-datatypes ((tuple2!18750 0))(
  ( (tuple2!18751 (_1!9385 (_ BitVec 64)) (_2!9385 V!44027)) )
))
(declare-datatypes ((List!25525 0))(
  ( (Nil!25522) (Cons!25521 (h!26730 tuple2!18750) (t!37169 List!25525)) )
))
(declare-datatypes ((ListLongMap!16731 0))(
  ( (ListLongMap!16732 (toList!8381 List!25525)) )
))
(declare-fun lt!524551 () ListLongMap!16731)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!524552 () array!75136)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44027)

(declare-fun getCurrentListMapNoExtraKeys!4814 (array!75136 array!75134 (_ BitVec 32) (_ BitVec 32) V!44027 V!44027 (_ BitVec 32) Int) ListLongMap!16731)

(declare-fun dynLambda!2811 (Int (_ BitVec 64)) V!44027)

(assert (=> b!1164253 (= lt!524551 (getCurrentListMapNoExtraKeys!4814 lt!524552 (array!75135 (store (arr!36214 _values!996) i!673 (ValueCellFull!13878 (dynLambda!2811 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36751 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524550 () ListLongMap!16731)

(assert (=> b!1164253 (= lt!524550 (getCurrentListMapNoExtraKeys!4814 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164254 () Bool)

(declare-fun res!772132 () Bool)

(assert (=> b!1164254 (=> (not res!772132) (not e!662009))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164254 (= res!772132 (validKeyInArray!0 k0!934))))

(declare-fun b!1164255 () Bool)

(declare-fun res!772135 () Bool)

(assert (=> b!1164255 (=> (not res!772135) (not e!662009))))

(assert (=> b!1164255 (= res!772135 (= (select (arr!36215 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!45587 () Bool)

(assert (=> mapIsEmpty!45587 mapRes!45587))

(declare-fun b!1164256 () Bool)

(declare-fun res!772137 () Bool)

(assert (=> b!1164256 (=> (not res!772137) (not e!662009))))

(assert (=> b!1164256 (= res!772137 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36752 _keys!1208))))))

(declare-fun b!1164257 () Bool)

(assert (=> b!1164257 (= e!662008 tp_is_empty!29175)))

(declare-fun b!1164258 () Bool)

(assert (=> b!1164258 (= e!662006 tp_is_empty!29175)))

(declare-fun b!1164259 () Bool)

(declare-fun res!772136 () Bool)

(declare-fun e!662004 () Bool)

(assert (=> b!1164259 (=> (not res!772136) (not e!662004))))

(assert (=> b!1164259 (= res!772136 (arrayNoDuplicates!0 lt!524552 #b00000000000000000000000000000000 Nil!25521))))

(declare-fun b!1164260 () Bool)

(assert (=> b!1164260 (= e!662009 e!662004)))

(declare-fun res!772139 () Bool)

(assert (=> b!1164260 (=> (not res!772139) (not e!662004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75136 (_ BitVec 32)) Bool)

(assert (=> b!1164260 (= res!772139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524552 mask!1564))))

(assert (=> b!1164260 (= lt!524552 (array!75137 (store (arr!36215 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36752 _keys!1208)))))

(declare-fun b!1164261 () Bool)

(assert (=> b!1164261 (= e!662004 (not e!662007))))

(declare-fun res!772141 () Bool)

(assert (=> b!1164261 (=> res!772141 e!662007)))

(assert (=> b!1164261 (= res!772141 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164261 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38320 0))(
  ( (Unit!38321) )
))
(declare-fun lt!524553 () Unit!38320)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75136 (_ BitVec 64) (_ BitVec 32)) Unit!38320)

(assert (=> b!1164261 (= lt!524553 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1164262 () Bool)

(declare-fun res!772140 () Bool)

(assert (=> b!1164262 (=> (not res!772140) (not e!662009))))

(assert (=> b!1164262 (= res!772140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164263 () Bool)

(declare-fun res!772133 () Bool)

(assert (=> b!1164263 (=> (not res!772133) (not e!662009))))

(assert (=> b!1164263 (= res!772133 (and (= (size!36751 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36752 _keys!1208) (size!36751 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99076 res!772134) b!1164251))

(assert (= (and b!1164251 res!772138) b!1164263))

(assert (= (and b!1164263 res!772133) b!1164262))

(assert (= (and b!1164262 res!772140) b!1164252))

(assert (= (and b!1164252 res!772142) b!1164256))

(assert (= (and b!1164256 res!772137) b!1164254))

(assert (= (and b!1164254 res!772132) b!1164255))

(assert (= (and b!1164255 res!772135) b!1164260))

(assert (= (and b!1164260 res!772139) b!1164259))

(assert (= (and b!1164259 res!772136) b!1164261))

(assert (= (and b!1164261 (not res!772141)) b!1164253))

(assert (= (and b!1164250 condMapEmpty!45587) mapIsEmpty!45587))

(assert (= (and b!1164250 (not condMapEmpty!45587)) mapNonEmpty!45587))

(get-info :version)

(assert (= (and mapNonEmpty!45587 ((_ is ValueCellFull!13878) mapValue!45587)) b!1164258))

(assert (= (and b!1164250 ((_ is ValueCellFull!13878) mapDefault!45587)) b!1164257))

(assert (= start!99076 b!1164250))

(declare-fun b_lambda!19769 () Bool)

(assert (=> (not b_lambda!19769) (not b!1164253)))

(declare-fun t!37167 () Bool)

(declare-fun tb!9465 () Bool)

(assert (=> (and start!99076 (= defaultEntry!1004 defaultEntry!1004) t!37167) tb!9465))

(declare-fun result!19487 () Bool)

(assert (=> tb!9465 (= result!19487 tp_is_empty!29175)))

(assert (=> b!1164253 t!37167))

(declare-fun b_and!40155 () Bool)

(assert (= b_and!40153 (and (=> t!37167 result!19487) b_and!40155)))

(declare-fun m!1072757 () Bool)

(assert (=> b!1164260 m!1072757))

(declare-fun m!1072759 () Bool)

(assert (=> b!1164260 m!1072759))

(declare-fun m!1072761 () Bool)

(assert (=> b!1164262 m!1072761))

(declare-fun m!1072763 () Bool)

(assert (=> b!1164252 m!1072763))

(declare-fun m!1072765 () Bool)

(assert (=> mapNonEmpty!45587 m!1072765))

(declare-fun m!1072767 () Bool)

(assert (=> b!1164253 m!1072767))

(declare-fun m!1072769 () Bool)

(assert (=> b!1164253 m!1072769))

(declare-fun m!1072771 () Bool)

(assert (=> b!1164253 m!1072771))

(declare-fun m!1072773 () Bool)

(assert (=> b!1164253 m!1072773))

(declare-fun m!1072775 () Bool)

(assert (=> start!99076 m!1072775))

(declare-fun m!1072777 () Bool)

(assert (=> start!99076 m!1072777))

(declare-fun m!1072779 () Bool)

(assert (=> b!1164259 m!1072779))

(declare-fun m!1072781 () Bool)

(assert (=> b!1164261 m!1072781))

(declare-fun m!1072783 () Bool)

(assert (=> b!1164261 m!1072783))

(declare-fun m!1072785 () Bool)

(assert (=> b!1164251 m!1072785))

(declare-fun m!1072787 () Bool)

(assert (=> b!1164255 m!1072787))

(declare-fun m!1072789 () Bool)

(assert (=> b!1164254 m!1072789))

(check-sat tp_is_empty!29175 (not b_next!24645) (not b_lambda!19769) (not mapNonEmpty!45587) (not b!1164251) (not b!1164260) b_and!40155 (not b!1164262) (not b!1164261) (not b!1164259) (not start!99076) (not b!1164254) (not b!1164253) (not b!1164252))
(check-sat b_and!40155 (not b_next!24645))
