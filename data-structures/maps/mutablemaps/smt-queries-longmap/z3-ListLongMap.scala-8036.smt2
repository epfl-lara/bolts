; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99094 () Bool)

(assert start!99094)

(declare-fun b_free!24663 () Bool)

(declare-fun b_next!24663 () Bool)

(assert (=> start!99094 (= b_free!24663 (not b_next!24663))))

(declare-fun tp!86701 () Bool)

(declare-fun b_and!40189 () Bool)

(assert (=> start!99094 (= tp!86701 b_and!40189)))

(declare-fun mapIsEmpty!45614 () Bool)

(declare-fun mapRes!45614 () Bool)

(assert (=> mapIsEmpty!45614 mapRes!45614))

(declare-fun b!1164646 () Bool)

(declare-fun res!772429 () Bool)

(declare-fun e!662199 () Bool)

(assert (=> b!1164646 (=> (not res!772429) (not e!662199))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164646 (= res!772429 (validMask!0 mask!1564))))

(declare-fun res!772431 () Bool)

(assert (=> start!99094 (=> (not res!772431) (not e!662199))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75170 0))(
  ( (array!75171 (arr!36232 (Array (_ BitVec 32) (_ BitVec 64))) (size!36769 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75170)

(assert (=> start!99094 (= res!772431 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36769 _keys!1208))))))

(assert (=> start!99094 e!662199))

(declare-fun tp_is_empty!29193 () Bool)

(assert (=> start!99094 tp_is_empty!29193))

(declare-fun array_inv!27588 (array!75170) Bool)

(assert (=> start!99094 (array_inv!27588 _keys!1208)))

(assert (=> start!99094 true))

(assert (=> start!99094 tp!86701))

(declare-datatypes ((V!44051 0))(
  ( (V!44052 (val!14653 Int)) )
))
(declare-datatypes ((ValueCell!13887 0))(
  ( (ValueCellFull!13887 (v!17291 V!44051)) (EmptyCell!13887) )
))
(declare-datatypes ((array!75172 0))(
  ( (array!75173 (arr!36233 (Array (_ BitVec 32) ValueCell!13887)) (size!36770 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75172)

(declare-fun e!662198 () Bool)

(declare-fun array_inv!27589 (array!75172) Bool)

(assert (=> start!99094 (and (array_inv!27589 _values!996) e!662198)))

(declare-fun b!1164647 () Bool)

(declare-fun e!662195 () Bool)

(declare-fun e!662193 () Bool)

(assert (=> b!1164647 (= e!662195 (not e!662193))))

(declare-fun res!772439 () Bool)

(assert (=> b!1164647 (=> res!772439 e!662193)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164647 (= res!772439 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164647 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38328 0))(
  ( (Unit!38329) )
))
(declare-fun lt!524661 () Unit!38328)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75170 (_ BitVec 64) (_ BitVec 32)) Unit!38328)

(assert (=> b!1164647 (= lt!524661 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1164648 () Bool)

(assert (=> b!1164648 (= e!662199 e!662195)))

(declare-fun res!772437 () Bool)

(assert (=> b!1164648 (=> (not res!772437) (not e!662195))))

(declare-fun lt!524658 () array!75170)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75170 (_ BitVec 32)) Bool)

(assert (=> b!1164648 (= res!772437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524658 mask!1564))))

(assert (=> b!1164648 (= lt!524658 (array!75171 (store (arr!36232 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36769 _keys!1208)))))

(declare-fun b!1164649 () Bool)

(declare-fun res!772433 () Bool)

(assert (=> b!1164649 (=> (not res!772433) (not e!662195))))

(declare-datatypes ((List!25536 0))(
  ( (Nil!25533) (Cons!25532 (h!26741 (_ BitVec 64)) (t!37198 List!25536)) )
))
(declare-fun arrayNoDuplicates!0 (array!75170 (_ BitVec 32) List!25536) Bool)

(assert (=> b!1164649 (= res!772433 (arrayNoDuplicates!0 lt!524658 #b00000000000000000000000000000000 Nil!25533))))

(declare-fun b!1164650 () Bool)

(declare-fun e!662194 () Bool)

(assert (=> b!1164650 (= e!662194 tp_is_empty!29193)))

(declare-fun b!1164651 () Bool)

(assert (=> b!1164651 (= e!662198 (and e!662194 mapRes!45614))))

(declare-fun condMapEmpty!45614 () Bool)

(declare-fun mapDefault!45614 () ValueCell!13887)

(assert (=> b!1164651 (= condMapEmpty!45614 (= (arr!36233 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13887)) mapDefault!45614)))))

(declare-fun b!1164652 () Bool)

(declare-fun res!772434 () Bool)

(assert (=> b!1164652 (=> (not res!772434) (not e!662199))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1164652 (= res!772434 (and (= (size!36770 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36769 _keys!1208) (size!36770 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164653 () Bool)

(assert (=> b!1164653 (= e!662193 true)))

(declare-fun zeroValue!944 () V!44051)

(declare-datatypes ((tuple2!18760 0))(
  ( (tuple2!18761 (_1!9390 (_ BitVec 64)) (_2!9390 V!44051)) )
))
(declare-datatypes ((List!25537 0))(
  ( (Nil!25534) (Cons!25533 (h!26742 tuple2!18760) (t!37199 List!25537)) )
))
(declare-datatypes ((ListLongMap!16741 0))(
  ( (ListLongMap!16742 (toList!8386 List!25537)) )
))
(declare-fun lt!524660 () ListLongMap!16741)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44051)

(declare-fun getCurrentListMapNoExtraKeys!4819 (array!75170 array!75172 (_ BitVec 32) (_ BitVec 32) V!44051 V!44051 (_ BitVec 32) Int) ListLongMap!16741)

(declare-fun dynLambda!2816 (Int (_ BitVec 64)) V!44051)

(assert (=> b!1164653 (= lt!524660 (getCurrentListMapNoExtraKeys!4819 lt!524658 (array!75173 (store (arr!36233 _values!996) i!673 (ValueCellFull!13887 (dynLambda!2816 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36770 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524659 () ListLongMap!16741)

(assert (=> b!1164653 (= lt!524659 (getCurrentListMapNoExtraKeys!4819 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164654 () Bool)

(declare-fun res!772435 () Bool)

(assert (=> b!1164654 (=> (not res!772435) (not e!662199))))

(assert (=> b!1164654 (= res!772435 (= (select (arr!36232 _keys!1208) i!673) k0!934))))

(declare-fun b!1164655 () Bool)

(declare-fun res!772436 () Bool)

(assert (=> b!1164655 (=> (not res!772436) (not e!662199))))

(assert (=> b!1164655 (= res!772436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!45614 () Bool)

(declare-fun tp!86700 () Bool)

(declare-fun e!662197 () Bool)

(assert (=> mapNonEmpty!45614 (= mapRes!45614 (and tp!86700 e!662197))))

(declare-fun mapKey!45614 () (_ BitVec 32))

(declare-fun mapRest!45614 () (Array (_ BitVec 32) ValueCell!13887))

(declare-fun mapValue!45614 () ValueCell!13887)

(assert (=> mapNonEmpty!45614 (= (arr!36233 _values!996) (store mapRest!45614 mapKey!45614 mapValue!45614))))

(declare-fun b!1164656 () Bool)

(declare-fun res!772430 () Bool)

(assert (=> b!1164656 (=> (not res!772430) (not e!662199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164656 (= res!772430 (validKeyInArray!0 k0!934))))

(declare-fun b!1164657 () Bool)

(declare-fun res!772432 () Bool)

(assert (=> b!1164657 (=> (not res!772432) (not e!662199))))

(assert (=> b!1164657 (= res!772432 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36769 _keys!1208))))))

(declare-fun b!1164658 () Bool)

(assert (=> b!1164658 (= e!662197 tp_is_empty!29193)))

(declare-fun b!1164659 () Bool)

(declare-fun res!772438 () Bool)

(assert (=> b!1164659 (=> (not res!772438) (not e!662199))))

(assert (=> b!1164659 (= res!772438 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25533))))

(assert (= (and start!99094 res!772431) b!1164646))

(assert (= (and b!1164646 res!772429) b!1164652))

(assert (= (and b!1164652 res!772434) b!1164655))

(assert (= (and b!1164655 res!772436) b!1164659))

(assert (= (and b!1164659 res!772438) b!1164657))

(assert (= (and b!1164657 res!772432) b!1164656))

(assert (= (and b!1164656 res!772430) b!1164654))

(assert (= (and b!1164654 res!772435) b!1164648))

(assert (= (and b!1164648 res!772437) b!1164649))

(assert (= (and b!1164649 res!772433) b!1164647))

(assert (= (and b!1164647 (not res!772439)) b!1164653))

(assert (= (and b!1164651 condMapEmpty!45614) mapIsEmpty!45614))

(assert (= (and b!1164651 (not condMapEmpty!45614)) mapNonEmpty!45614))

(get-info :version)

(assert (= (and mapNonEmpty!45614 ((_ is ValueCellFull!13887) mapValue!45614)) b!1164658))

(assert (= (and b!1164651 ((_ is ValueCellFull!13887) mapDefault!45614)) b!1164650))

(assert (= start!99094 b!1164651))

(declare-fun b_lambda!19787 () Bool)

(assert (=> (not b_lambda!19787) (not b!1164653)))

(declare-fun t!37197 () Bool)

(declare-fun tb!9483 () Bool)

(assert (=> (and start!99094 (= defaultEntry!1004 defaultEntry!1004) t!37197) tb!9483))

(declare-fun result!19523 () Bool)

(assert (=> tb!9483 (= result!19523 tp_is_empty!29193)))

(assert (=> b!1164653 t!37197))

(declare-fun b_and!40191 () Bool)

(assert (= b_and!40189 (and (=> t!37197 result!19523) b_and!40191)))

(declare-fun m!1073063 () Bool)

(assert (=> b!1164656 m!1073063))

(declare-fun m!1073065 () Bool)

(assert (=> b!1164646 m!1073065))

(declare-fun m!1073067 () Bool)

(assert (=> b!1164648 m!1073067))

(declare-fun m!1073069 () Bool)

(assert (=> b!1164648 m!1073069))

(declare-fun m!1073071 () Bool)

(assert (=> b!1164659 m!1073071))

(declare-fun m!1073073 () Bool)

(assert (=> b!1164653 m!1073073))

(declare-fun m!1073075 () Bool)

(assert (=> b!1164653 m!1073075))

(declare-fun m!1073077 () Bool)

(assert (=> b!1164653 m!1073077))

(declare-fun m!1073079 () Bool)

(assert (=> b!1164653 m!1073079))

(declare-fun m!1073081 () Bool)

(assert (=> b!1164649 m!1073081))

(declare-fun m!1073083 () Bool)

(assert (=> mapNonEmpty!45614 m!1073083))

(declare-fun m!1073085 () Bool)

(assert (=> b!1164655 m!1073085))

(declare-fun m!1073087 () Bool)

(assert (=> b!1164647 m!1073087))

(declare-fun m!1073089 () Bool)

(assert (=> b!1164647 m!1073089))

(declare-fun m!1073091 () Bool)

(assert (=> start!99094 m!1073091))

(declare-fun m!1073093 () Bool)

(assert (=> start!99094 m!1073093))

(declare-fun m!1073095 () Bool)

(assert (=> b!1164654 m!1073095))

(check-sat (not b_next!24663) (not b!1164659) (not b!1164656) (not b!1164647) (not mapNonEmpty!45614) tp_is_empty!29193 (not b!1164653) (not start!99094) (not b!1164649) (not b!1164655) (not b!1164646) b_and!40191 (not b_lambda!19787) (not b!1164648))
(check-sat b_and!40191 (not b_next!24663))
