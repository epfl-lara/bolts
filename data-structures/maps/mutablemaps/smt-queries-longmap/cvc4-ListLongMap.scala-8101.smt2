; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99512 () Bool)

(assert start!99512)

(declare-fun b_free!25055 () Bool)

(declare-fun b_next!25055 () Bool)

(assert (=> start!99512 (= b_free!25055 (not b_next!25055))))

(declare-fun tp!87879 () Bool)

(declare-fun b_and!40991 () Bool)

(assert (=> start!99512 (= tp!87879 b_and!40991)))

(declare-fun mapNonEmpty!46205 () Bool)

(declare-fun mapRes!46205 () Bool)

(declare-fun tp!87880 () Bool)

(declare-fun e!668276 () Bool)

(assert (=> mapNonEmpty!46205 (= mapRes!46205 (and tp!87880 e!668276))))

(declare-fun mapKey!46205 () (_ BitVec 32))

(declare-datatypes ((V!44573 0))(
  ( (V!44574 (val!14849 Int)) )
))
(declare-datatypes ((ValueCell!14083 0))(
  ( (ValueCellFull!14083 (v!17488 V!44573)) (EmptyCell!14083) )
))
(declare-fun mapRest!46205 () (Array (_ BitVec 32) ValueCell!14083))

(declare-fun mapValue!46205 () ValueCell!14083)

(declare-datatypes ((array!75946 0))(
  ( (array!75947 (arr!36619 (Array (_ BitVec 32) ValueCell!14083)) (size!37156 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75946)

(assert (=> mapNonEmpty!46205 (= (arr!36619 _values!996) (store mapRest!46205 mapKey!46205 mapValue!46205))))

(declare-fun b!1175585 () Bool)

(declare-fun res!780844 () Bool)

(declare-fun e!668270 () Bool)

(assert (=> b!1175585 (=> (not res!780844) (not e!668270))))

(declare-datatypes ((array!75948 0))(
  ( (array!75949 (arr!36620 (Array (_ BitVec 32) (_ BitVec 64))) (size!37157 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75948)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75948 (_ BitVec 32)) Bool)

(assert (=> b!1175585 (= res!780844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175586 () Bool)

(declare-datatypes ((Unit!38723 0))(
  ( (Unit!38724) )
))
(declare-fun e!668271 () Unit!38723)

(declare-fun Unit!38725 () Unit!38723)

(assert (=> b!1175586 (= e!668271 Unit!38725)))

(declare-fun lt!530374 () Unit!38723)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75948 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38723)

(assert (=> b!1175586 (= lt!530374 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175586 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530382 () Unit!38723)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75948 (_ BitVec 32) (_ BitVec 32)) Unit!38723)

(assert (=> b!1175586 (= lt!530382 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25864 0))(
  ( (Nil!25861) (Cons!25860 (h!27069 (_ BitVec 64)) (t!37918 List!25864)) )
))
(declare-fun arrayNoDuplicates!0 (array!75948 (_ BitVec 32) List!25864) Bool)

(assert (=> b!1175586 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25861)))

(declare-fun lt!530378 () Unit!38723)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75948 (_ BitVec 64) (_ BitVec 32) List!25864) Unit!38723)

(assert (=> b!1175586 (= lt!530378 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25861))))

(assert (=> b!1175586 false))

(declare-fun b!1175587 () Bool)

(declare-fun e!668272 () Bool)

(declare-fun tp_is_empty!29585 () Bool)

(assert (=> b!1175587 (= e!668272 tp_is_empty!29585)))

(declare-fun b!1175588 () Bool)

(declare-fun e!668281 () Bool)

(declare-fun e!668279 () Bool)

(assert (=> b!1175588 (= e!668281 e!668279)))

(declare-fun res!780854 () Bool)

(assert (=> b!1175588 (=> res!780854 e!668279)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175588 (= res!780854 (not (validKeyInArray!0 (select (arr!36620 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19096 0))(
  ( (tuple2!19097 (_1!9558 (_ BitVec 64)) (_2!9558 V!44573)) )
))
(declare-datatypes ((List!25865 0))(
  ( (Nil!25862) (Cons!25861 (h!27070 tuple2!19096) (t!37919 List!25865)) )
))
(declare-datatypes ((ListLongMap!17077 0))(
  ( (ListLongMap!17078 (toList!8554 List!25865)) )
))
(declare-fun lt!530370 () ListLongMap!17077)

(declare-fun lt!530372 () ListLongMap!17077)

(assert (=> b!1175588 (= lt!530370 lt!530372)))

(declare-fun lt!530375 () ListLongMap!17077)

(declare-fun -!1561 (ListLongMap!17077 (_ BitVec 64)) ListLongMap!17077)

(assert (=> b!1175588 (= lt!530372 (-!1561 lt!530375 k!934))))

(declare-fun zeroValue!944 () V!44573)

(declare-fun lt!530381 () array!75948)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44573)

(declare-fun lt!530376 () array!75946)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4985 (array!75948 array!75946 (_ BitVec 32) (_ BitVec 32) V!44573 V!44573 (_ BitVec 32) Int) ListLongMap!17077)

(assert (=> b!1175588 (= lt!530370 (getCurrentListMapNoExtraKeys!4985 lt!530381 lt!530376 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175588 (= lt!530375 (getCurrentListMapNoExtraKeys!4985 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530371 () Unit!38723)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!785 (array!75948 array!75946 (_ BitVec 32) (_ BitVec 32) V!44573 V!44573 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38723)

(assert (=> b!1175588 (= lt!530371 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!785 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175589 () Bool)

(declare-fun res!780855 () Bool)

(assert (=> b!1175589 (=> (not res!780855) (not e!668270))))

(assert (=> b!1175589 (= res!780855 (and (= (size!37156 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37157 _keys!1208) (size!37156 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175590 () Bool)

(declare-fun res!780849 () Bool)

(declare-fun e!668274 () Bool)

(assert (=> b!1175590 (=> (not res!780849) (not e!668274))))

(assert (=> b!1175590 (= res!780849 (arrayNoDuplicates!0 lt!530381 #b00000000000000000000000000000000 Nil!25861))))

(declare-fun b!1175591 () Bool)

(declare-fun res!780848 () Bool)

(assert (=> b!1175591 (=> (not res!780848) (not e!668270))))

(assert (=> b!1175591 (= res!780848 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37157 _keys!1208))))))

(declare-fun mapIsEmpty!46205 () Bool)

(assert (=> mapIsEmpty!46205 mapRes!46205))

(declare-fun b!1175593 () Bool)

(assert (=> b!1175593 (= e!668276 tp_is_empty!29585)))

(declare-fun b!1175594 () Bool)

(declare-fun e!668273 () Bool)

(assert (=> b!1175594 (= e!668273 e!668281)))

(declare-fun res!780846 () Bool)

(assert (=> b!1175594 (=> res!780846 e!668281)))

(assert (=> b!1175594 (= res!780846 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!530369 () ListLongMap!17077)

(assert (=> b!1175594 (= lt!530369 (getCurrentListMapNoExtraKeys!4985 lt!530381 lt!530376 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530373 () V!44573)

(assert (=> b!1175594 (= lt!530376 (array!75947 (store (arr!36619 _values!996) i!673 (ValueCellFull!14083 lt!530373)) (size!37156 _values!996)))))

(declare-fun dynLambda!2964 (Int (_ BitVec 64)) V!44573)

(assert (=> b!1175594 (= lt!530373 (dynLambda!2964 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530377 () ListLongMap!17077)

(assert (=> b!1175594 (= lt!530377 (getCurrentListMapNoExtraKeys!4985 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175595 () Bool)

(declare-fun Unit!38726 () Unit!38723)

(assert (=> b!1175595 (= e!668271 Unit!38726)))

(declare-fun b!1175596 () Bool)

(assert (=> b!1175596 (= e!668279 true)))

(assert (=> b!1175596 (not (= (select (arr!36620 _keys!1208) from!1455) k!934))))

(declare-fun lt!530380 () Unit!38723)

(assert (=> b!1175596 (= lt!530380 e!668271)))

(declare-fun c!116654 () Bool)

(assert (=> b!1175596 (= c!116654 (= (select (arr!36620 _keys!1208) from!1455) k!934))))

(declare-fun e!668275 () Bool)

(assert (=> b!1175596 e!668275))

(declare-fun res!780856 () Bool)

(assert (=> b!1175596 (=> (not res!780856) (not e!668275))))

(declare-fun +!3780 (ListLongMap!17077 tuple2!19096) ListLongMap!17077)

(declare-fun get!18731 (ValueCell!14083 V!44573) V!44573)

(assert (=> b!1175596 (= res!780856 (= lt!530369 (+!3780 lt!530372 (tuple2!19097 (select (arr!36620 _keys!1208) from!1455) (get!18731 (select (arr!36619 _values!996) from!1455) lt!530373)))))))

(declare-fun b!1175597 () Bool)

(declare-fun e!668280 () Bool)

(assert (=> b!1175597 (= e!668275 e!668280)))

(declare-fun res!780843 () Bool)

(assert (=> b!1175597 (=> res!780843 e!668280)))

(assert (=> b!1175597 (= res!780843 (not (= (select (arr!36620 _keys!1208) from!1455) k!934)))))

(declare-fun b!1175598 () Bool)

(declare-fun res!780845 () Bool)

(assert (=> b!1175598 (=> (not res!780845) (not e!668270))))

(assert (=> b!1175598 (= res!780845 (= (select (arr!36620 _keys!1208) i!673) k!934))))

(declare-fun b!1175599 () Bool)

(declare-fun res!780851 () Bool)

(assert (=> b!1175599 (=> (not res!780851) (not e!668270))))

(assert (=> b!1175599 (= res!780851 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25861))))

(declare-fun b!1175600 () Bool)

(assert (=> b!1175600 (= e!668280 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175601 () Bool)

(declare-fun res!780852 () Bool)

(assert (=> b!1175601 (=> (not res!780852) (not e!668270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175601 (= res!780852 (validMask!0 mask!1564))))

(declare-fun b!1175602 () Bool)

(assert (=> b!1175602 (= e!668270 e!668274)))

(declare-fun res!780853 () Bool)

(assert (=> b!1175602 (=> (not res!780853) (not e!668274))))

(assert (=> b!1175602 (= res!780853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530381 mask!1564))))

(assert (=> b!1175602 (= lt!530381 (array!75949 (store (arr!36620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37157 _keys!1208)))))

(declare-fun res!780847 () Bool)

(assert (=> start!99512 (=> (not res!780847) (not e!668270))))

(assert (=> start!99512 (= res!780847 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37157 _keys!1208))))))

(assert (=> start!99512 e!668270))

(assert (=> start!99512 tp_is_empty!29585))

(declare-fun array_inv!27854 (array!75948) Bool)

(assert (=> start!99512 (array_inv!27854 _keys!1208)))

(assert (=> start!99512 true))

(assert (=> start!99512 tp!87879))

(declare-fun e!668277 () Bool)

(declare-fun array_inv!27855 (array!75946) Bool)

(assert (=> start!99512 (and (array_inv!27855 _values!996) e!668277)))

(declare-fun b!1175592 () Bool)

(declare-fun res!780842 () Bool)

(assert (=> b!1175592 (=> (not res!780842) (not e!668270))))

(assert (=> b!1175592 (= res!780842 (validKeyInArray!0 k!934))))

(declare-fun b!1175603 () Bool)

(assert (=> b!1175603 (= e!668274 (not e!668273))))

(declare-fun res!780850 () Bool)

(assert (=> b!1175603 (=> res!780850 e!668273)))

(assert (=> b!1175603 (= res!780850 (bvsgt from!1455 i!673))))

(assert (=> b!1175603 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!530379 () Unit!38723)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75948 (_ BitVec 64) (_ BitVec 32)) Unit!38723)

(assert (=> b!1175603 (= lt!530379 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175604 () Bool)

(assert (=> b!1175604 (= e!668277 (and e!668272 mapRes!46205))))

(declare-fun condMapEmpty!46205 () Bool)

(declare-fun mapDefault!46205 () ValueCell!14083)

