; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99514 () Bool)

(assert start!99514)

(declare-fun b_free!25057 () Bool)

(declare-fun b_next!25057 () Bool)

(assert (=> start!99514 (= b_free!25057 (not b_next!25057))))

(declare-fun tp!87886 () Bool)

(declare-fun b_and!40995 () Bool)

(assert (=> start!99514 (= tp!87886 b_and!40995)))

(declare-fun res!780895 () Bool)

(declare-fun e!668308 () Bool)

(assert (=> start!99514 (=> (not res!780895) (not e!668308))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75950 0))(
  ( (array!75951 (arr!36621 (Array (_ BitVec 32) (_ BitVec 64))) (size!37158 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75950)

(assert (=> start!99514 (= res!780895 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37158 _keys!1208))))))

(assert (=> start!99514 e!668308))

(declare-fun tp_is_empty!29587 () Bool)

(assert (=> start!99514 tp_is_empty!29587))

(declare-fun array_inv!27856 (array!75950) Bool)

(assert (=> start!99514 (array_inv!27856 _keys!1208)))

(assert (=> start!99514 true))

(assert (=> start!99514 tp!87886))

(declare-datatypes ((V!44577 0))(
  ( (V!44578 (val!14850 Int)) )
))
(declare-datatypes ((ValueCell!14084 0))(
  ( (ValueCellFull!14084 (v!17489 V!44577)) (EmptyCell!14084) )
))
(declare-datatypes ((array!75952 0))(
  ( (array!75953 (arr!36622 (Array (_ BitVec 32) ValueCell!14084)) (size!37159 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75952)

(declare-fun e!668316 () Bool)

(declare-fun array_inv!27857 (array!75952) Bool)

(assert (=> start!99514 (and (array_inv!27857 _values!996) e!668316)))

(declare-fun b!1175647 () Bool)

(declare-fun res!780897 () Bool)

(assert (=> b!1175647 (=> (not res!780897) (not e!668308))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1175647 (= res!780897 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37158 _keys!1208))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1175648 () Bool)

(declare-fun e!668312 () Bool)

(declare-fun arrayContainsKey!0 (array!75950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175648 (= e!668312 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175649 () Bool)

(declare-fun e!668317 () Bool)

(assert (=> b!1175649 (= e!668317 tp_is_empty!29587)))

(declare-fun mapNonEmpty!46208 () Bool)

(declare-fun mapRes!46208 () Bool)

(declare-fun tp!87885 () Bool)

(declare-fun e!668310 () Bool)

(assert (=> mapNonEmpty!46208 (= mapRes!46208 (and tp!87885 e!668310))))

(declare-fun mapRest!46208 () (Array (_ BitVec 32) ValueCell!14084))

(declare-fun mapKey!46208 () (_ BitVec 32))

(declare-fun mapValue!46208 () ValueCell!14084)

(assert (=> mapNonEmpty!46208 (= (arr!36622 _values!996) (store mapRest!46208 mapKey!46208 mapValue!46208))))

(declare-fun mapIsEmpty!46208 () Bool)

(assert (=> mapIsEmpty!46208 mapRes!46208))

(declare-fun b!1175650 () Bool)

(declare-fun res!780887 () Bool)

(assert (=> b!1175650 (=> (not res!780887) (not e!668308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175650 (= res!780887 (validKeyInArray!0 k!934))))

(declare-fun b!1175651 () Bool)

(declare-fun res!780893 () Bool)

(declare-fun e!668313 () Bool)

(assert (=> b!1175651 (=> (not res!780893) (not e!668313))))

(declare-fun lt!530414 () array!75950)

(declare-datatypes ((List!25866 0))(
  ( (Nil!25863) (Cons!25862 (h!27071 (_ BitVec 64)) (t!37922 List!25866)) )
))
(declare-fun arrayNoDuplicates!0 (array!75950 (_ BitVec 32) List!25866) Bool)

(assert (=> b!1175651 (= res!780893 (arrayNoDuplicates!0 lt!530414 #b00000000000000000000000000000000 Nil!25863))))

(declare-fun b!1175652 () Bool)

(declare-fun res!780890 () Bool)

(assert (=> b!1175652 (=> (not res!780890) (not e!668308))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175652 (= res!780890 (validMask!0 mask!1564))))

(declare-fun b!1175653 () Bool)

(declare-fun res!780889 () Bool)

(assert (=> b!1175653 (=> (not res!780889) (not e!668308))))

(assert (=> b!1175653 (= res!780889 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25863))))

(declare-fun b!1175654 () Bool)

(declare-fun e!668309 () Bool)

(declare-fun e!668306 () Bool)

(assert (=> b!1175654 (= e!668309 e!668306)))

(declare-fun res!780898 () Bool)

(assert (=> b!1175654 (=> res!780898 e!668306)))

(assert (=> b!1175654 (= res!780898 (not (validKeyInArray!0 (select (arr!36621 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19098 0))(
  ( (tuple2!19099 (_1!9559 (_ BitVec 64)) (_2!9559 V!44577)) )
))
(declare-datatypes ((List!25867 0))(
  ( (Nil!25864) (Cons!25863 (h!27072 tuple2!19098) (t!37923 List!25867)) )
))
(declare-datatypes ((ListLongMap!17079 0))(
  ( (ListLongMap!17080 (toList!8555 List!25867)) )
))
(declare-fun lt!530416 () ListLongMap!17079)

(declare-fun lt!530417 () ListLongMap!17079)

(assert (=> b!1175654 (= lt!530416 lt!530417)))

(declare-fun lt!530421 () ListLongMap!17079)

(declare-fun -!1562 (ListLongMap!17079 (_ BitVec 64)) ListLongMap!17079)

(assert (=> b!1175654 (= lt!530417 (-!1562 lt!530421 k!934))))

(declare-fun zeroValue!944 () V!44577)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44577)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!530422 () array!75952)

(declare-fun getCurrentListMapNoExtraKeys!4986 (array!75950 array!75952 (_ BitVec 32) (_ BitVec 32) V!44577 V!44577 (_ BitVec 32) Int) ListLongMap!17079)

(assert (=> b!1175654 (= lt!530416 (getCurrentListMapNoExtraKeys!4986 lt!530414 lt!530422 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175654 (= lt!530421 (getCurrentListMapNoExtraKeys!4986 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38727 0))(
  ( (Unit!38728) )
))
(declare-fun lt!530424 () Unit!38727)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!786 (array!75950 array!75952 (_ BitVec 32) (_ BitVec 32) V!44577 V!44577 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38727)

(assert (=> b!1175654 (= lt!530424 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!786 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175655 () Bool)

(declare-fun res!780894 () Bool)

(assert (=> b!1175655 (=> (not res!780894) (not e!668308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75950 (_ BitVec 32)) Bool)

(assert (=> b!1175655 (= res!780894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175656 () Bool)

(declare-fun e!668315 () Bool)

(assert (=> b!1175656 (= e!668315 e!668312)))

(declare-fun res!780891 () Bool)

(assert (=> b!1175656 (=> res!780891 e!668312)))

(assert (=> b!1175656 (= res!780891 (not (= (select (arr!36621 _keys!1208) from!1455) k!934)))))

(declare-fun b!1175657 () Bool)

(assert (=> b!1175657 (= e!668308 e!668313)))

(declare-fun res!780896 () Bool)

(assert (=> b!1175657 (=> (not res!780896) (not e!668313))))

(assert (=> b!1175657 (= res!780896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530414 mask!1564))))

(assert (=> b!1175657 (= lt!530414 (array!75951 (store (arr!36621 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37158 _keys!1208)))))

(declare-fun b!1175658 () Bool)

(declare-fun res!780900 () Bool)

(assert (=> b!1175658 (=> (not res!780900) (not e!668308))))

(assert (=> b!1175658 (= res!780900 (and (= (size!37159 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37158 _keys!1208) (size!37159 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175659 () Bool)

(declare-fun e!668311 () Unit!38727)

(declare-fun Unit!38729 () Unit!38727)

(assert (=> b!1175659 (= e!668311 Unit!38729)))

(declare-fun b!1175660 () Bool)

(declare-fun e!668314 () Bool)

(assert (=> b!1175660 (= e!668313 (not e!668314))))

(declare-fun res!780888 () Bool)

(assert (=> b!1175660 (=> res!780888 e!668314)))

(assert (=> b!1175660 (= res!780888 (bvsgt from!1455 i!673))))

(assert (=> b!1175660 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!530412 () Unit!38727)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75950 (_ BitVec 64) (_ BitVec 32)) Unit!38727)

(assert (=> b!1175660 (= lt!530412 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175661 () Bool)

(declare-fun res!780901 () Bool)

(assert (=> b!1175661 (=> (not res!780901) (not e!668308))))

(assert (=> b!1175661 (= res!780901 (= (select (arr!36621 _keys!1208) i!673) k!934))))

(declare-fun b!1175662 () Bool)

(assert (=> b!1175662 (= e!668310 tp_is_empty!29587)))

(declare-fun b!1175663 () Bool)

(assert (=> b!1175663 (= e!668316 (and e!668317 mapRes!46208))))

(declare-fun condMapEmpty!46208 () Bool)

(declare-fun mapDefault!46208 () ValueCell!14084)

