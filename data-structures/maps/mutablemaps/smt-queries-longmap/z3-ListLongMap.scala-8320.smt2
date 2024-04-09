; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101306 () Bool)

(assert start!101306)

(declare-fun b_free!26193 () Bool)

(declare-fun b_next!26193 () Bool)

(assert (=> start!101306 (= b_free!26193 (not b_next!26193))))

(declare-fun tp!91601 () Bool)

(declare-fun b_and!43513 () Bool)

(assert (=> start!101306 (= tp!91601 b_and!43513)))

(declare-fun b!1216458 () Bool)

(declare-fun e!690675 () Bool)

(assert (=> b!1216458 (= e!690675 true)))

(declare-datatypes ((V!46323 0))(
  ( (V!46324 (val!15505 Int)) )
))
(declare-fun zeroValue!944 () V!46323)

(declare-datatypes ((array!78542 0))(
  ( (array!78543 (arr!37902 (Array (_ BitVec 32) (_ BitVec 64))) (size!38439 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78542)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!552879 () array!78542)

(declare-datatypes ((ValueCell!14739 0))(
  ( (ValueCellFull!14739 (v!18159 V!46323)) (EmptyCell!14739) )
))
(declare-datatypes ((array!78544 0))(
  ( (array!78545 (arr!37903 (Array (_ BitVec 32) ValueCell!14739)) (size!38440 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78544)

(declare-fun minValue!944 () V!46323)

(declare-fun lt!552880 () array!78544)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!20070 0))(
  ( (tuple2!20071 (_1!10045 (_ BitVec 64)) (_2!10045 V!46323)) )
))
(declare-datatypes ((List!26892 0))(
  ( (Nil!26889) (Cons!26888 (h!28097 tuple2!20070) (t!40072 List!26892)) )
))
(declare-datatypes ((ListLongMap!18051 0))(
  ( (ListLongMap!18052 (toList!9041 List!26892)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5446 (array!78542 array!78544 (_ BitVec 32) (_ BitVec 32) V!46323 V!46323 (_ BitVec 32) Int) ListLongMap!18051)

(declare-fun -!1904 (ListLongMap!18051 (_ BitVec 64)) ListLongMap!18051)

(assert (=> b!1216458 (= (getCurrentListMapNoExtraKeys!5446 lt!552879 lt!552880 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1904 (getCurrentListMapNoExtraKeys!5446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40266 0))(
  ( (Unit!40267) )
))
(declare-fun lt!552878 () Unit!40266)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1106 (array!78542 array!78544 (_ BitVec 32) (_ BitVec 32) V!46323 V!46323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40266)

(assert (=> b!1216458 (= lt!552878 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1106 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216459 () Bool)

(declare-fun res!807870 () Bool)

(declare-fun e!690669 () Bool)

(assert (=> b!1216459 (=> (not res!807870) (not e!690669))))

(assert (=> b!1216459 (= res!807870 (and (= (size!38440 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38439 _keys!1208) (size!38440 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216460 () Bool)

(declare-fun e!690674 () Bool)

(assert (=> b!1216460 (= e!690669 e!690674)))

(declare-fun res!807869 () Bool)

(assert (=> b!1216460 (=> (not res!807869) (not e!690674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78542 (_ BitVec 32)) Bool)

(assert (=> b!1216460 (= res!807869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552879 mask!1564))))

(assert (=> b!1216460 (= lt!552879 (array!78543 (store (arr!37902 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38439 _keys!1208)))))

(declare-fun b!1216461 () Bool)

(declare-fun e!690670 () Bool)

(assert (=> b!1216461 (= e!690670 e!690675)))

(declare-fun res!807879 () Bool)

(assert (=> b!1216461 (=> res!807879 e!690675)))

(assert (=> b!1216461 (= res!807879 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!552881 () ListLongMap!18051)

(assert (=> b!1216461 (= lt!552881 (getCurrentListMapNoExtraKeys!5446 lt!552879 lt!552880 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3354 (Int (_ BitVec 64)) V!46323)

(assert (=> b!1216461 (= lt!552880 (array!78545 (store (arr!37903 _values!996) i!673 (ValueCellFull!14739 (dynLambda!3354 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38440 _values!996)))))

(declare-fun lt!552877 () ListLongMap!18051)

(assert (=> b!1216461 (= lt!552877 (getCurrentListMapNoExtraKeys!5446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1216462 () Bool)

(declare-fun res!807872 () Bool)

(assert (=> b!1216462 (=> (not res!807872) (not e!690669))))

(assert (=> b!1216462 (= res!807872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48220 () Bool)

(declare-fun mapRes!48220 () Bool)

(declare-fun tp!91602 () Bool)

(declare-fun e!690671 () Bool)

(assert (=> mapNonEmpty!48220 (= mapRes!48220 (and tp!91602 e!690671))))

(declare-fun mapKey!48220 () (_ BitVec 32))

(declare-fun mapRest!48220 () (Array (_ BitVec 32) ValueCell!14739))

(declare-fun mapValue!48220 () ValueCell!14739)

(assert (=> mapNonEmpty!48220 (= (arr!37903 _values!996) (store mapRest!48220 mapKey!48220 mapValue!48220))))

(declare-fun b!1216463 () Bool)

(declare-fun e!690673 () Bool)

(declare-fun e!690668 () Bool)

(assert (=> b!1216463 (= e!690673 (and e!690668 mapRes!48220))))

(declare-fun condMapEmpty!48220 () Bool)

(declare-fun mapDefault!48220 () ValueCell!14739)

(assert (=> b!1216463 (= condMapEmpty!48220 (= (arr!37903 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14739)) mapDefault!48220)))))

(declare-fun b!1216464 () Bool)

(declare-fun res!807880 () Bool)

(assert (=> b!1216464 (=> (not res!807880) (not e!690669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216464 (= res!807880 (validKeyInArray!0 k0!934))))

(declare-fun b!1216466 () Bool)

(declare-fun res!807871 () Bool)

(assert (=> b!1216466 (=> (not res!807871) (not e!690669))))

(assert (=> b!1216466 (= res!807871 (= (select (arr!37902 _keys!1208) i!673) k0!934))))

(declare-fun b!1216467 () Bool)

(declare-fun tp_is_empty!30897 () Bool)

(assert (=> b!1216467 (= e!690671 tp_is_empty!30897)))

(declare-fun b!1216468 () Bool)

(declare-fun res!807875 () Bool)

(assert (=> b!1216468 (=> (not res!807875) (not e!690669))))

(assert (=> b!1216468 (= res!807875 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38439 _keys!1208))))))

(declare-fun b!1216469 () Bool)

(assert (=> b!1216469 (= e!690674 (not e!690670))))

(declare-fun res!807874 () Bool)

(assert (=> b!1216469 (=> res!807874 e!690670)))

(assert (=> b!1216469 (= res!807874 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216469 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!552876 () Unit!40266)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78542 (_ BitVec 64) (_ BitVec 32)) Unit!40266)

(assert (=> b!1216469 (= lt!552876 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1216470 () Bool)

(assert (=> b!1216470 (= e!690668 tp_is_empty!30897)))

(declare-fun b!1216471 () Bool)

(declare-fun res!807876 () Bool)

(assert (=> b!1216471 (=> (not res!807876) (not e!690669))))

(declare-datatypes ((List!26893 0))(
  ( (Nil!26890) (Cons!26889 (h!28098 (_ BitVec 64)) (t!40073 List!26893)) )
))
(declare-fun arrayNoDuplicates!0 (array!78542 (_ BitVec 32) List!26893) Bool)

(assert (=> b!1216471 (= res!807876 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26890))))

(declare-fun mapIsEmpty!48220 () Bool)

(assert (=> mapIsEmpty!48220 mapRes!48220))

(declare-fun b!1216472 () Bool)

(declare-fun res!807873 () Bool)

(assert (=> b!1216472 (=> (not res!807873) (not e!690669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216472 (= res!807873 (validMask!0 mask!1564))))

(declare-fun res!807878 () Bool)

(assert (=> start!101306 (=> (not res!807878) (not e!690669))))

(assert (=> start!101306 (= res!807878 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38439 _keys!1208))))))

(assert (=> start!101306 e!690669))

(assert (=> start!101306 tp_is_empty!30897))

(declare-fun array_inv!28758 (array!78542) Bool)

(assert (=> start!101306 (array_inv!28758 _keys!1208)))

(assert (=> start!101306 true))

(assert (=> start!101306 tp!91601))

(declare-fun array_inv!28759 (array!78544) Bool)

(assert (=> start!101306 (and (array_inv!28759 _values!996) e!690673)))

(declare-fun b!1216465 () Bool)

(declare-fun res!807877 () Bool)

(assert (=> b!1216465 (=> (not res!807877) (not e!690674))))

(assert (=> b!1216465 (= res!807877 (arrayNoDuplicates!0 lt!552879 #b00000000000000000000000000000000 Nil!26890))))

(assert (= (and start!101306 res!807878) b!1216472))

(assert (= (and b!1216472 res!807873) b!1216459))

(assert (= (and b!1216459 res!807870) b!1216462))

(assert (= (and b!1216462 res!807872) b!1216471))

(assert (= (and b!1216471 res!807876) b!1216468))

(assert (= (and b!1216468 res!807875) b!1216464))

(assert (= (and b!1216464 res!807880) b!1216466))

(assert (= (and b!1216466 res!807871) b!1216460))

(assert (= (and b!1216460 res!807869) b!1216465))

(assert (= (and b!1216465 res!807877) b!1216469))

(assert (= (and b!1216469 (not res!807874)) b!1216461))

(assert (= (and b!1216461 (not res!807879)) b!1216458))

(assert (= (and b!1216463 condMapEmpty!48220) mapIsEmpty!48220))

(assert (= (and b!1216463 (not condMapEmpty!48220)) mapNonEmpty!48220))

(get-info :version)

(assert (= (and mapNonEmpty!48220 ((_ is ValueCellFull!14739) mapValue!48220)) b!1216467))

(assert (= (and b!1216463 ((_ is ValueCellFull!14739) mapDefault!48220)) b!1216470))

(assert (= start!101306 b!1216463))

(declare-fun b_lambda!21879 () Bool)

(assert (=> (not b_lambda!21879) (not b!1216461)))

(declare-fun t!40071 () Bool)

(declare-fun tb!11001 () Bool)

(assert (=> (and start!101306 (= defaultEntry!1004 defaultEntry!1004) t!40071) tb!11001))

(declare-fun result!22591 () Bool)

(assert (=> tb!11001 (= result!22591 tp_is_empty!30897)))

(assert (=> b!1216461 t!40071))

(declare-fun b_and!43515 () Bool)

(assert (= b_and!43513 (and (=> t!40071 result!22591) b_and!43515)))

(declare-fun m!1121243 () Bool)

(assert (=> b!1216465 m!1121243))

(declare-fun m!1121245 () Bool)

(assert (=> b!1216464 m!1121245))

(declare-fun m!1121247 () Bool)

(assert (=> b!1216461 m!1121247))

(declare-fun m!1121249 () Bool)

(assert (=> b!1216461 m!1121249))

(declare-fun m!1121251 () Bool)

(assert (=> b!1216461 m!1121251))

(declare-fun m!1121253 () Bool)

(assert (=> b!1216461 m!1121253))

(declare-fun m!1121255 () Bool)

(assert (=> b!1216462 m!1121255))

(declare-fun m!1121257 () Bool)

(assert (=> b!1216466 m!1121257))

(declare-fun m!1121259 () Bool)

(assert (=> b!1216472 m!1121259))

(declare-fun m!1121261 () Bool)

(assert (=> b!1216458 m!1121261))

(declare-fun m!1121263 () Bool)

(assert (=> b!1216458 m!1121263))

(assert (=> b!1216458 m!1121263))

(declare-fun m!1121265 () Bool)

(assert (=> b!1216458 m!1121265))

(declare-fun m!1121267 () Bool)

(assert (=> b!1216458 m!1121267))

(declare-fun m!1121269 () Bool)

(assert (=> b!1216469 m!1121269))

(declare-fun m!1121271 () Bool)

(assert (=> b!1216469 m!1121271))

(declare-fun m!1121273 () Bool)

(assert (=> mapNonEmpty!48220 m!1121273))

(declare-fun m!1121275 () Bool)

(assert (=> b!1216471 m!1121275))

(declare-fun m!1121277 () Bool)

(assert (=> b!1216460 m!1121277))

(declare-fun m!1121279 () Bool)

(assert (=> b!1216460 m!1121279))

(declare-fun m!1121281 () Bool)

(assert (=> start!101306 m!1121281))

(declare-fun m!1121283 () Bool)

(assert (=> start!101306 m!1121283))

(check-sat tp_is_empty!30897 (not b!1216462) (not b!1216461) (not b!1216464) (not mapNonEmpty!48220) (not b!1216469) b_and!43515 (not b!1216465) (not b!1216458) (not b_next!26193) (not b!1216460) (not b!1216472) (not b!1216471) (not start!101306) (not b_lambda!21879))
(check-sat b_and!43515 (not b_next!26193))
