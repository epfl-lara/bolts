; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99106 () Bool)

(assert start!99106)

(declare-fun b_free!24675 () Bool)

(declare-fun b_next!24675 () Bool)

(assert (=> start!99106 (= b_free!24675 (not b_next!24675))))

(declare-fun tp!86737 () Bool)

(declare-fun b_and!40213 () Bool)

(assert (=> start!99106 (= tp!86737 b_and!40213)))

(declare-fun b!1164910 () Bool)

(declare-fun res!772630 () Bool)

(declare-fun e!662320 () Bool)

(assert (=> b!1164910 (=> (not res!772630) (not e!662320))))

(declare-datatypes ((array!75194 0))(
  ( (array!75195 (arr!36244 (Array (_ BitVec 32) (_ BitVec 64))) (size!36781 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75194)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44067 0))(
  ( (V!44068 (val!14659 Int)) )
))
(declare-datatypes ((ValueCell!13893 0))(
  ( (ValueCellFull!13893 (v!17297 V!44067)) (EmptyCell!13893) )
))
(declare-datatypes ((array!75196 0))(
  ( (array!75197 (arr!36245 (Array (_ BitVec 32) ValueCell!13893)) (size!36782 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75196)

(assert (=> b!1164910 (= res!772630 (and (= (size!36782 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36781 _keys!1208) (size!36782 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164911 () Bool)

(declare-fun res!772632 () Bool)

(declare-fun e!662319 () Bool)

(assert (=> b!1164911 (=> (not res!772632) (not e!662319))))

(declare-fun lt!524733 () array!75194)

(declare-datatypes ((List!25545 0))(
  ( (Nil!25542) (Cons!25541 (h!26750 (_ BitVec 64)) (t!37219 List!25545)) )
))
(declare-fun arrayNoDuplicates!0 (array!75194 (_ BitVec 32) List!25545) Bool)

(assert (=> b!1164911 (= res!772632 (arrayNoDuplicates!0 lt!524733 #b00000000000000000000000000000000 Nil!25542))))

(declare-fun res!772636 () Bool)

(assert (=> start!99106 (=> (not res!772636) (not e!662320))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99106 (= res!772636 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36781 _keys!1208))))))

(assert (=> start!99106 e!662320))

(declare-fun tp_is_empty!29205 () Bool)

(assert (=> start!99106 tp_is_empty!29205))

(declare-fun array_inv!27598 (array!75194) Bool)

(assert (=> start!99106 (array_inv!27598 _keys!1208)))

(assert (=> start!99106 true))

(assert (=> start!99106 tp!86737))

(declare-fun e!662321 () Bool)

(declare-fun array_inv!27599 (array!75196) Bool)

(assert (=> start!99106 (and (array_inv!27599 _values!996) e!662321)))

(declare-fun b!1164912 () Bool)

(declare-fun e!662323 () Bool)

(assert (=> b!1164912 (= e!662319 (not e!662323))))

(declare-fun res!772628 () Bool)

(assert (=> b!1164912 (=> res!772628 e!662323)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164912 (= res!772628 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164912 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38338 0))(
  ( (Unit!38339) )
))
(declare-fun lt!524732 () Unit!38338)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75194 (_ BitVec 64) (_ BitVec 32)) Unit!38338)

(assert (=> b!1164912 (= lt!524732 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1164913 () Bool)

(assert (=> b!1164913 (= e!662320 e!662319)))

(declare-fun res!772629 () Bool)

(assert (=> b!1164913 (=> (not res!772629) (not e!662319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75194 (_ BitVec 32)) Bool)

(assert (=> b!1164913 (= res!772629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524733 mask!1564))))

(assert (=> b!1164913 (= lt!524733 (array!75195 (store (arr!36244 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36781 _keys!1208)))))

(declare-fun mapIsEmpty!45632 () Bool)

(declare-fun mapRes!45632 () Bool)

(assert (=> mapIsEmpty!45632 mapRes!45632))

(declare-fun b!1164914 () Bool)

(declare-fun e!662324 () Bool)

(assert (=> b!1164914 (= e!662321 (and e!662324 mapRes!45632))))

(declare-fun condMapEmpty!45632 () Bool)

(declare-fun mapDefault!45632 () ValueCell!13893)

(assert (=> b!1164914 (= condMapEmpty!45632 (= (arr!36245 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13893)) mapDefault!45632)))))

(declare-fun b!1164915 () Bool)

(declare-fun res!772635 () Bool)

(assert (=> b!1164915 (=> (not res!772635) (not e!662320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164915 (= res!772635 (validMask!0 mask!1564))))

(declare-fun b!1164916 () Bool)

(assert (=> b!1164916 (= e!662324 tp_is_empty!29205)))

(declare-fun b!1164917 () Bool)

(declare-fun res!772634 () Bool)

(assert (=> b!1164917 (=> (not res!772634) (not e!662320))))

(assert (=> b!1164917 (= res!772634 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36781 _keys!1208))))))

(declare-fun b!1164918 () Bool)

(declare-fun res!772637 () Bool)

(assert (=> b!1164918 (=> (not res!772637) (not e!662320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164918 (= res!772637 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!45632 () Bool)

(declare-fun tp!86736 () Bool)

(declare-fun e!662325 () Bool)

(assert (=> mapNonEmpty!45632 (= mapRes!45632 (and tp!86736 e!662325))))

(declare-fun mapKey!45632 () (_ BitVec 32))

(declare-fun mapRest!45632 () (Array (_ BitVec 32) ValueCell!13893))

(declare-fun mapValue!45632 () ValueCell!13893)

(assert (=> mapNonEmpty!45632 (= (arr!36245 _values!996) (store mapRest!45632 mapKey!45632 mapValue!45632))))

(declare-fun b!1164919 () Bool)

(declare-fun res!772627 () Bool)

(assert (=> b!1164919 (=> (not res!772627) (not e!662320))))

(assert (=> b!1164919 (= res!772627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164920 () Bool)

(declare-fun res!772631 () Bool)

(assert (=> b!1164920 (=> (not res!772631) (not e!662320))))

(assert (=> b!1164920 (= res!772631 (= (select (arr!36244 _keys!1208) i!673) k0!934))))

(declare-fun b!1164921 () Bool)

(assert (=> b!1164921 (= e!662325 tp_is_empty!29205)))

(declare-fun b!1164922 () Bool)

(assert (=> b!1164922 (= e!662323 true)))

(declare-fun zeroValue!944 () V!44067)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18768 0))(
  ( (tuple2!18769 (_1!9394 (_ BitVec 64)) (_2!9394 V!44067)) )
))
(declare-datatypes ((List!25546 0))(
  ( (Nil!25543) (Cons!25542 (h!26751 tuple2!18768) (t!37220 List!25546)) )
))
(declare-datatypes ((ListLongMap!16749 0))(
  ( (ListLongMap!16750 (toList!8390 List!25546)) )
))
(declare-fun lt!524730 () ListLongMap!16749)

(declare-fun minValue!944 () V!44067)

(declare-fun getCurrentListMapNoExtraKeys!4823 (array!75194 array!75196 (_ BitVec 32) (_ BitVec 32) V!44067 V!44067 (_ BitVec 32) Int) ListLongMap!16749)

(declare-fun dynLambda!2820 (Int (_ BitVec 64)) V!44067)

(assert (=> b!1164922 (= lt!524730 (getCurrentListMapNoExtraKeys!4823 lt!524733 (array!75197 (store (arr!36245 _values!996) i!673 (ValueCellFull!13893 (dynLambda!2820 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36782 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524731 () ListLongMap!16749)

(assert (=> b!1164922 (= lt!524731 (getCurrentListMapNoExtraKeys!4823 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164923 () Bool)

(declare-fun res!772633 () Bool)

(assert (=> b!1164923 (=> (not res!772633) (not e!662320))))

(assert (=> b!1164923 (= res!772633 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25542))))

(assert (= (and start!99106 res!772636) b!1164915))

(assert (= (and b!1164915 res!772635) b!1164910))

(assert (= (and b!1164910 res!772630) b!1164919))

(assert (= (and b!1164919 res!772627) b!1164923))

(assert (= (and b!1164923 res!772633) b!1164917))

(assert (= (and b!1164917 res!772634) b!1164918))

(assert (= (and b!1164918 res!772637) b!1164920))

(assert (= (and b!1164920 res!772631) b!1164913))

(assert (= (and b!1164913 res!772629) b!1164911))

(assert (= (and b!1164911 res!772632) b!1164912))

(assert (= (and b!1164912 (not res!772628)) b!1164922))

(assert (= (and b!1164914 condMapEmpty!45632) mapIsEmpty!45632))

(assert (= (and b!1164914 (not condMapEmpty!45632)) mapNonEmpty!45632))

(get-info :version)

(assert (= (and mapNonEmpty!45632 ((_ is ValueCellFull!13893) mapValue!45632)) b!1164921))

(assert (= (and b!1164914 ((_ is ValueCellFull!13893) mapDefault!45632)) b!1164916))

(assert (= start!99106 b!1164914))

(declare-fun b_lambda!19799 () Bool)

(assert (=> (not b_lambda!19799) (not b!1164922)))

(declare-fun t!37218 () Bool)

(declare-fun tb!9495 () Bool)

(assert (=> (and start!99106 (= defaultEntry!1004 defaultEntry!1004) t!37218) tb!9495))

(declare-fun result!19547 () Bool)

(assert (=> tb!9495 (= result!19547 tp_is_empty!29205)))

(assert (=> b!1164922 t!37218))

(declare-fun b_and!40215 () Bool)

(assert (= b_and!40213 (and (=> t!37218 result!19547) b_and!40215)))

(declare-fun m!1073267 () Bool)

(assert (=> b!1164912 m!1073267))

(declare-fun m!1073269 () Bool)

(assert (=> b!1164912 m!1073269))

(declare-fun m!1073271 () Bool)

(assert (=> b!1164915 m!1073271))

(declare-fun m!1073273 () Bool)

(assert (=> b!1164923 m!1073273))

(declare-fun m!1073275 () Bool)

(assert (=> b!1164911 m!1073275))

(declare-fun m!1073277 () Bool)

(assert (=> b!1164920 m!1073277))

(declare-fun m!1073279 () Bool)

(assert (=> b!1164919 m!1073279))

(declare-fun m!1073281 () Bool)

(assert (=> b!1164913 m!1073281))

(declare-fun m!1073283 () Bool)

(assert (=> b!1164913 m!1073283))

(declare-fun m!1073285 () Bool)

(assert (=> b!1164922 m!1073285))

(declare-fun m!1073287 () Bool)

(assert (=> b!1164922 m!1073287))

(declare-fun m!1073289 () Bool)

(assert (=> b!1164922 m!1073289))

(declare-fun m!1073291 () Bool)

(assert (=> b!1164922 m!1073291))

(declare-fun m!1073293 () Bool)

(assert (=> b!1164918 m!1073293))

(declare-fun m!1073295 () Bool)

(assert (=> mapNonEmpty!45632 m!1073295))

(declare-fun m!1073297 () Bool)

(assert (=> start!99106 m!1073297))

(declare-fun m!1073299 () Bool)

(assert (=> start!99106 m!1073299))

(check-sat (not b!1164912) (not b!1164923) (not b!1164915) (not b!1164913) (not b!1164918) (not b_next!24675) (not start!99106) (not b!1164922) (not b!1164911) b_and!40215 (not b_lambda!19799) (not b!1164919) (not mapNonEmpty!45632) tp_is_empty!29205)
(check-sat b_and!40215 (not b_next!24675))
