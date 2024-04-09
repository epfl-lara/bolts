; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99082 () Bool)

(assert start!99082)

(declare-fun b_free!24651 () Bool)

(declare-fun b_next!24651 () Bool)

(assert (=> start!99082 (= b_free!24651 (not b_next!24651))))

(declare-fun tp!86665 () Bool)

(declare-fun b_and!40165 () Bool)

(assert (=> start!99082 (= tp!86665 b_and!40165)))

(declare-fun mapIsEmpty!45596 () Bool)

(declare-fun mapRes!45596 () Bool)

(assert (=> mapIsEmpty!45596 mapRes!45596))

(declare-fun b!1164382 () Bool)

(declare-fun res!772237 () Bool)

(declare-fun e!662072 () Bool)

(assert (=> b!1164382 (=> (not res!772237) (not e!662072))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164382 (= res!772237 (validMask!0 mask!1564))))

(declare-fun b!1164383 () Bool)

(declare-fun e!662068 () Bool)

(assert (=> b!1164383 (= e!662068 true)))

(declare-datatypes ((V!44035 0))(
  ( (V!44036 (val!14647 Int)) )
))
(declare-fun zeroValue!944 () V!44035)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!75146 0))(
  ( (array!75147 (arr!36220 (Array (_ BitVec 32) (_ BitVec 64))) (size!36757 (_ BitVec 32))) )
))
(declare-fun lt!524589 () array!75146)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13881 0))(
  ( (ValueCellFull!13881 (v!17285 V!44035)) (EmptyCell!13881) )
))
(declare-datatypes ((array!75148 0))(
  ( (array!75149 (arr!36221 (Array (_ BitVec 32) ValueCell!13881)) (size!36758 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75148)

(declare-fun minValue!944 () V!44035)

(declare-datatypes ((tuple2!18754 0))(
  ( (tuple2!18755 (_1!9387 (_ BitVec 64)) (_2!9387 V!44035)) )
))
(declare-datatypes ((List!25529 0))(
  ( (Nil!25526) (Cons!25525 (h!26734 tuple2!18754) (t!37179 List!25529)) )
))
(declare-datatypes ((ListLongMap!16735 0))(
  ( (ListLongMap!16736 (toList!8383 List!25529)) )
))
(declare-fun lt!524588 () ListLongMap!16735)

(declare-fun getCurrentListMapNoExtraKeys!4816 (array!75146 array!75148 (_ BitVec 32) (_ BitVec 32) V!44035 V!44035 (_ BitVec 32) Int) ListLongMap!16735)

(declare-fun dynLambda!2813 (Int (_ BitVec 64)) V!44035)

(assert (=> b!1164383 (= lt!524588 (getCurrentListMapNoExtraKeys!4816 lt!524589 (array!75149 (store (arr!36221 _values!996) i!673 (ValueCellFull!13881 (dynLambda!2813 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36758 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!75146)

(declare-fun lt!524586 () ListLongMap!16735)

(assert (=> b!1164383 (= lt!524586 (getCurrentListMapNoExtraKeys!4816 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164384 () Bool)

(declare-fun res!772238 () Bool)

(assert (=> b!1164384 (=> (not res!772238) (not e!662072))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1164384 (= res!772238 (= (select (arr!36220 _keys!1208) i!673) k0!934))))

(declare-fun b!1164385 () Bool)

(declare-fun e!662070 () Bool)

(declare-fun e!662069 () Bool)

(assert (=> b!1164385 (= e!662070 (and e!662069 mapRes!45596))))

(declare-fun condMapEmpty!45596 () Bool)

(declare-fun mapDefault!45596 () ValueCell!13881)

(assert (=> b!1164385 (= condMapEmpty!45596 (= (arr!36221 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13881)) mapDefault!45596)))))

(declare-fun b!1164386 () Bool)

(declare-fun res!772240 () Bool)

(assert (=> b!1164386 (=> (not res!772240) (not e!662072))))

(declare-datatypes ((List!25530 0))(
  ( (Nil!25527) (Cons!25526 (h!26735 (_ BitVec 64)) (t!37180 List!25530)) )
))
(declare-fun arrayNoDuplicates!0 (array!75146 (_ BitVec 32) List!25530) Bool)

(assert (=> b!1164386 (= res!772240 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25527))))

(declare-fun b!1164387 () Bool)

(declare-fun res!772241 () Bool)

(assert (=> b!1164387 (=> (not res!772241) (not e!662072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164387 (= res!772241 (validKeyInArray!0 k0!934))))

(declare-fun b!1164388 () Bool)

(declare-fun tp_is_empty!29181 () Bool)

(assert (=> b!1164388 (= e!662069 tp_is_empty!29181)))

(declare-fun b!1164389 () Bool)

(declare-fun e!662067 () Bool)

(assert (=> b!1164389 (= e!662072 e!662067)))

(declare-fun res!772239 () Bool)

(assert (=> b!1164389 (=> (not res!772239) (not e!662067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75146 (_ BitVec 32)) Bool)

(assert (=> b!1164389 (= res!772239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524589 mask!1564))))

(assert (=> b!1164389 (= lt!524589 (array!75147 (store (arr!36220 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36757 _keys!1208)))))

(declare-fun b!1164390 () Bool)

(declare-fun res!772231 () Bool)

(assert (=> b!1164390 (=> (not res!772231) (not e!662072))))

(assert (=> b!1164390 (= res!772231 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36757 _keys!1208))))))

(declare-fun b!1164391 () Bool)

(declare-fun res!772232 () Bool)

(assert (=> b!1164391 (=> (not res!772232) (not e!662072))))

(assert (=> b!1164391 (= res!772232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164392 () Bool)

(assert (=> b!1164392 (= e!662067 (not e!662068))))

(declare-fun res!772236 () Bool)

(assert (=> b!1164392 (=> res!772236 e!662068)))

(assert (=> b!1164392 (= res!772236 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164392 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38322 0))(
  ( (Unit!38323) )
))
(declare-fun lt!524587 () Unit!38322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75146 (_ BitVec 64) (_ BitVec 32)) Unit!38322)

(assert (=> b!1164392 (= lt!524587 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!772235 () Bool)

(assert (=> start!99082 (=> (not res!772235) (not e!662072))))

(assert (=> start!99082 (= res!772235 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36757 _keys!1208))))))

(assert (=> start!99082 e!662072))

(assert (=> start!99082 tp_is_empty!29181))

(declare-fun array_inv!27580 (array!75146) Bool)

(assert (=> start!99082 (array_inv!27580 _keys!1208)))

(assert (=> start!99082 true))

(assert (=> start!99082 tp!86665))

(declare-fun array_inv!27581 (array!75148) Bool)

(assert (=> start!99082 (and (array_inv!27581 _values!996) e!662070)))

(declare-fun b!1164393 () Bool)

(declare-fun e!662071 () Bool)

(assert (=> b!1164393 (= e!662071 tp_is_empty!29181)))

(declare-fun mapNonEmpty!45596 () Bool)

(declare-fun tp!86664 () Bool)

(assert (=> mapNonEmpty!45596 (= mapRes!45596 (and tp!86664 e!662071))))

(declare-fun mapRest!45596 () (Array (_ BitVec 32) ValueCell!13881))

(declare-fun mapValue!45596 () ValueCell!13881)

(declare-fun mapKey!45596 () (_ BitVec 32))

(assert (=> mapNonEmpty!45596 (= (arr!36221 _values!996) (store mapRest!45596 mapKey!45596 mapValue!45596))))

(declare-fun b!1164394 () Bool)

(declare-fun res!772233 () Bool)

(assert (=> b!1164394 (=> (not res!772233) (not e!662072))))

(assert (=> b!1164394 (= res!772233 (and (= (size!36758 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36757 _keys!1208) (size!36758 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164395 () Bool)

(declare-fun res!772234 () Bool)

(assert (=> b!1164395 (=> (not res!772234) (not e!662067))))

(assert (=> b!1164395 (= res!772234 (arrayNoDuplicates!0 lt!524589 #b00000000000000000000000000000000 Nil!25527))))

(assert (= (and start!99082 res!772235) b!1164382))

(assert (= (and b!1164382 res!772237) b!1164394))

(assert (= (and b!1164394 res!772233) b!1164391))

(assert (= (and b!1164391 res!772232) b!1164386))

(assert (= (and b!1164386 res!772240) b!1164390))

(assert (= (and b!1164390 res!772231) b!1164387))

(assert (= (and b!1164387 res!772241) b!1164384))

(assert (= (and b!1164384 res!772238) b!1164389))

(assert (= (and b!1164389 res!772239) b!1164395))

(assert (= (and b!1164395 res!772234) b!1164392))

(assert (= (and b!1164392 (not res!772236)) b!1164383))

(assert (= (and b!1164385 condMapEmpty!45596) mapIsEmpty!45596))

(assert (= (and b!1164385 (not condMapEmpty!45596)) mapNonEmpty!45596))

(get-info :version)

(assert (= (and mapNonEmpty!45596 ((_ is ValueCellFull!13881) mapValue!45596)) b!1164393))

(assert (= (and b!1164385 ((_ is ValueCellFull!13881) mapDefault!45596)) b!1164388))

(assert (= start!99082 b!1164385))

(declare-fun b_lambda!19775 () Bool)

(assert (=> (not b_lambda!19775) (not b!1164383)))

(declare-fun t!37178 () Bool)

(declare-fun tb!9471 () Bool)

(assert (=> (and start!99082 (= defaultEntry!1004 defaultEntry!1004) t!37178) tb!9471))

(declare-fun result!19499 () Bool)

(assert (=> tb!9471 (= result!19499 tp_is_empty!29181)))

(assert (=> b!1164383 t!37178))

(declare-fun b_and!40167 () Bool)

(assert (= b_and!40165 (and (=> t!37178 result!19499) b_and!40167)))

(declare-fun m!1072859 () Bool)

(assert (=> b!1164395 m!1072859))

(declare-fun m!1072861 () Bool)

(assert (=> mapNonEmpty!45596 m!1072861))

(declare-fun m!1072863 () Bool)

(assert (=> b!1164382 m!1072863))

(declare-fun m!1072865 () Bool)

(assert (=> b!1164387 m!1072865))

(declare-fun m!1072867 () Bool)

(assert (=> b!1164384 m!1072867))

(declare-fun m!1072869 () Bool)

(assert (=> start!99082 m!1072869))

(declare-fun m!1072871 () Bool)

(assert (=> start!99082 m!1072871))

(declare-fun m!1072873 () Bool)

(assert (=> b!1164391 m!1072873))

(declare-fun m!1072875 () Bool)

(assert (=> b!1164389 m!1072875))

(declare-fun m!1072877 () Bool)

(assert (=> b!1164389 m!1072877))

(declare-fun m!1072879 () Bool)

(assert (=> b!1164383 m!1072879))

(declare-fun m!1072881 () Bool)

(assert (=> b!1164383 m!1072881))

(declare-fun m!1072883 () Bool)

(assert (=> b!1164383 m!1072883))

(declare-fun m!1072885 () Bool)

(assert (=> b!1164383 m!1072885))

(declare-fun m!1072887 () Bool)

(assert (=> b!1164386 m!1072887))

(declare-fun m!1072889 () Bool)

(assert (=> b!1164392 m!1072889))

(declare-fun m!1072891 () Bool)

(assert (=> b!1164392 m!1072891))

(check-sat b_and!40167 (not b!1164395) tp_is_empty!29181 (not start!99082) (not b!1164386) (not b!1164389) (not b!1164382) (not b_lambda!19775) (not b_next!24651) (not b!1164391) (not b!1164383) (not b!1164387) (not b!1164392) (not mapNonEmpty!45596))
(check-sat b_and!40167 (not b_next!24651))
