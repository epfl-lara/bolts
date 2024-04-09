; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99112 () Bool)

(assert start!99112)

(declare-fun b_free!24681 () Bool)

(declare-fun b_next!24681 () Bool)

(assert (=> start!99112 (= b_free!24681 (not b_next!24681))))

(declare-fun tp!86755 () Bool)

(declare-fun b_and!40225 () Bool)

(assert (=> start!99112 (= tp!86755 b_and!40225)))

(declare-fun mapNonEmpty!45641 () Bool)

(declare-fun mapRes!45641 () Bool)

(declare-fun tp!86754 () Bool)

(declare-fun e!662387 () Bool)

(assert (=> mapNonEmpty!45641 (= mapRes!45641 (and tp!86754 e!662387))))

(declare-datatypes ((V!44075 0))(
  ( (V!44076 (val!14662 Int)) )
))
(declare-datatypes ((ValueCell!13896 0))(
  ( (ValueCellFull!13896 (v!17300 V!44075)) (EmptyCell!13896) )
))
(declare-fun mapValue!45641 () ValueCell!13896)

(declare-fun mapKey!45641 () (_ BitVec 32))

(declare-fun mapRest!45641 () (Array (_ BitVec 32) ValueCell!13896))

(declare-datatypes ((array!75206 0))(
  ( (array!75207 (arr!36250 (Array (_ BitVec 32) ValueCell!13896)) (size!36787 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75206)

(assert (=> mapNonEmpty!45641 (= (arr!36250 _values!996) (store mapRest!45641 mapKey!45641 mapValue!45641))))

(declare-fun b!1165042 () Bool)

(declare-fun res!772729 () Bool)

(declare-fun e!662385 () Bool)

(assert (=> b!1165042 (=> (not res!772729) (not e!662385))))

(declare-datatypes ((array!75208 0))(
  ( (array!75209 (arr!36251 (Array (_ BitVec 32) (_ BitVec 64))) (size!36788 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75208)

(declare-datatypes ((List!25548 0))(
  ( (Nil!25545) (Cons!25544 (h!26753 (_ BitVec 64)) (t!37228 List!25548)) )
))
(declare-fun arrayNoDuplicates!0 (array!75208 (_ BitVec 32) List!25548) Bool)

(assert (=> b!1165042 (= res!772729 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25545))))

(declare-fun b!1165043 () Bool)

(declare-fun e!662384 () Bool)

(declare-fun tp_is_empty!29211 () Bool)

(assert (=> b!1165043 (= e!662384 tp_is_empty!29211)))

(declare-fun b!1165044 () Bool)

(declare-fun e!662386 () Bool)

(assert (=> b!1165044 (= e!662386 true)))

(declare-fun zeroValue!944 () V!44075)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18772 0))(
  ( (tuple2!18773 (_1!9396 (_ BitVec 64)) (_2!9396 V!44075)) )
))
(declare-datatypes ((List!25549 0))(
  ( (Nil!25546) (Cons!25545 (h!26754 tuple2!18772) (t!37229 List!25549)) )
))
(declare-datatypes ((ListLongMap!16753 0))(
  ( (ListLongMap!16754 (toList!8392 List!25549)) )
))
(declare-fun lt!524769 () ListLongMap!16753)

(declare-fun lt!524768 () array!75208)

(declare-fun minValue!944 () V!44075)

(declare-fun getCurrentListMapNoExtraKeys!4825 (array!75208 array!75206 (_ BitVec 32) (_ BitVec 32) V!44075 V!44075 (_ BitVec 32) Int) ListLongMap!16753)

(declare-fun dynLambda!2822 (Int (_ BitVec 64)) V!44075)

(assert (=> b!1165044 (= lt!524769 (getCurrentListMapNoExtraKeys!4825 lt!524768 (array!75207 (store (arr!36250 _values!996) i!673 (ValueCellFull!13896 (dynLambda!2822 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36787 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524766 () ListLongMap!16753)

(assert (=> b!1165044 (= lt!524766 (getCurrentListMapNoExtraKeys!4825 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165045 () Bool)

(declare-fun e!662388 () Bool)

(assert (=> b!1165045 (= e!662388 (and e!662384 mapRes!45641))))

(declare-fun condMapEmpty!45641 () Bool)

(declare-fun mapDefault!45641 () ValueCell!13896)

(assert (=> b!1165045 (= condMapEmpty!45641 (= (arr!36250 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13896)) mapDefault!45641)))))

(declare-fun b!1165046 () Bool)

(declare-fun res!772727 () Bool)

(assert (=> b!1165046 (=> (not res!772727) (not e!662385))))

(assert (=> b!1165046 (= res!772727 (and (= (size!36787 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36788 _keys!1208) (size!36787 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165047 () Bool)

(declare-fun res!772736 () Bool)

(assert (=> b!1165047 (=> (not res!772736) (not e!662385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165047 (= res!772736 (validMask!0 mask!1564))))

(declare-fun b!1165048 () Bool)

(declare-fun res!772731 () Bool)

(assert (=> b!1165048 (=> (not res!772731) (not e!662385))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165048 (= res!772731 (validKeyInArray!0 k0!934))))

(declare-fun b!1165049 () Bool)

(declare-fun e!662383 () Bool)

(assert (=> b!1165049 (= e!662383 (not e!662386))))

(declare-fun res!772734 () Bool)

(assert (=> b!1165049 (=> res!772734 e!662386)))

(assert (=> b!1165049 (= res!772734 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165049 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38340 0))(
  ( (Unit!38341) )
))
(declare-fun lt!524767 () Unit!38340)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75208 (_ BitVec 64) (_ BitVec 32)) Unit!38340)

(assert (=> b!1165049 (= lt!524767 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1165050 () Bool)

(declare-fun res!772726 () Bool)

(assert (=> b!1165050 (=> (not res!772726) (not e!662385))))

(assert (=> b!1165050 (= res!772726 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36788 _keys!1208))))))

(declare-fun b!1165051 () Bool)

(declare-fun res!772730 () Bool)

(assert (=> b!1165051 (=> (not res!772730) (not e!662383))))

(assert (=> b!1165051 (= res!772730 (arrayNoDuplicates!0 lt!524768 #b00000000000000000000000000000000 Nil!25545))))

(declare-fun b!1165052 () Bool)

(assert (=> b!1165052 (= e!662385 e!662383)))

(declare-fun res!772728 () Bool)

(assert (=> b!1165052 (=> (not res!772728) (not e!662383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75208 (_ BitVec 32)) Bool)

(assert (=> b!1165052 (= res!772728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524768 mask!1564))))

(assert (=> b!1165052 (= lt!524768 (array!75209 (store (arr!36251 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36788 _keys!1208)))))

(declare-fun b!1165053 () Bool)

(declare-fun res!772733 () Bool)

(assert (=> b!1165053 (=> (not res!772733) (not e!662385))))

(assert (=> b!1165053 (= res!772733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!772732 () Bool)

(assert (=> start!99112 (=> (not res!772732) (not e!662385))))

(assert (=> start!99112 (= res!772732 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36788 _keys!1208))))))

(assert (=> start!99112 e!662385))

(assert (=> start!99112 tp_is_empty!29211))

(declare-fun array_inv!27600 (array!75208) Bool)

(assert (=> start!99112 (array_inv!27600 _keys!1208)))

(assert (=> start!99112 true))

(assert (=> start!99112 tp!86755))

(declare-fun array_inv!27601 (array!75206) Bool)

(assert (=> start!99112 (and (array_inv!27601 _values!996) e!662388)))

(declare-fun b!1165054 () Bool)

(assert (=> b!1165054 (= e!662387 tp_is_empty!29211)))

(declare-fun mapIsEmpty!45641 () Bool)

(assert (=> mapIsEmpty!45641 mapRes!45641))

(declare-fun b!1165055 () Bool)

(declare-fun res!772735 () Bool)

(assert (=> b!1165055 (=> (not res!772735) (not e!662385))))

(assert (=> b!1165055 (= res!772735 (= (select (arr!36251 _keys!1208) i!673) k0!934))))

(assert (= (and start!99112 res!772732) b!1165047))

(assert (= (and b!1165047 res!772736) b!1165046))

(assert (= (and b!1165046 res!772727) b!1165053))

(assert (= (and b!1165053 res!772733) b!1165042))

(assert (= (and b!1165042 res!772729) b!1165050))

(assert (= (and b!1165050 res!772726) b!1165048))

(assert (= (and b!1165048 res!772731) b!1165055))

(assert (= (and b!1165055 res!772735) b!1165052))

(assert (= (and b!1165052 res!772728) b!1165051))

(assert (= (and b!1165051 res!772730) b!1165049))

(assert (= (and b!1165049 (not res!772734)) b!1165044))

(assert (= (and b!1165045 condMapEmpty!45641) mapIsEmpty!45641))

(assert (= (and b!1165045 (not condMapEmpty!45641)) mapNonEmpty!45641))

(get-info :version)

(assert (= (and mapNonEmpty!45641 ((_ is ValueCellFull!13896) mapValue!45641)) b!1165054))

(assert (= (and b!1165045 ((_ is ValueCellFull!13896) mapDefault!45641)) b!1165043))

(assert (= start!99112 b!1165045))

(declare-fun b_lambda!19805 () Bool)

(assert (=> (not b_lambda!19805) (not b!1165044)))

(declare-fun t!37227 () Bool)

(declare-fun tb!9501 () Bool)

(assert (=> (and start!99112 (= defaultEntry!1004 defaultEntry!1004) t!37227) tb!9501))

(declare-fun result!19559 () Bool)

(assert (=> tb!9501 (= result!19559 tp_is_empty!29211)))

(assert (=> b!1165044 t!37227))

(declare-fun b_and!40227 () Bool)

(assert (= b_and!40225 (and (=> t!37227 result!19559) b_and!40227)))

(declare-fun m!1073369 () Bool)

(assert (=> b!1165055 m!1073369))

(declare-fun m!1073371 () Bool)

(assert (=> b!1165049 m!1073371))

(declare-fun m!1073373 () Bool)

(assert (=> b!1165049 m!1073373))

(declare-fun m!1073375 () Bool)

(assert (=> b!1165047 m!1073375))

(declare-fun m!1073377 () Bool)

(assert (=> b!1165048 m!1073377))

(declare-fun m!1073379 () Bool)

(assert (=> b!1165053 m!1073379))

(declare-fun m!1073381 () Bool)

(assert (=> b!1165052 m!1073381))

(declare-fun m!1073383 () Bool)

(assert (=> b!1165052 m!1073383))

(declare-fun m!1073385 () Bool)

(assert (=> b!1165051 m!1073385))

(declare-fun m!1073387 () Bool)

(assert (=> b!1165044 m!1073387))

(declare-fun m!1073389 () Bool)

(assert (=> b!1165044 m!1073389))

(declare-fun m!1073391 () Bool)

(assert (=> b!1165044 m!1073391))

(declare-fun m!1073393 () Bool)

(assert (=> b!1165044 m!1073393))

(declare-fun m!1073395 () Bool)

(assert (=> mapNonEmpty!45641 m!1073395))

(declare-fun m!1073397 () Bool)

(assert (=> start!99112 m!1073397))

(declare-fun m!1073399 () Bool)

(assert (=> start!99112 m!1073399))

(declare-fun m!1073401 () Bool)

(assert (=> b!1165042 m!1073401))

(check-sat (not start!99112) (not b!1165051) (not b_next!24681) (not b_lambda!19805) b_and!40227 tp_is_empty!29211 (not b!1165047) (not b!1165053) (not b!1165049) (not b!1165044) (not b!1165048) (not mapNonEmpty!45641) (not b!1165052) (not b!1165042))
(check-sat b_and!40227 (not b_next!24681))
