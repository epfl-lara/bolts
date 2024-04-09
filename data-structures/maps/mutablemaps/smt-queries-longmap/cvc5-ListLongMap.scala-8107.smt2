; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99544 () Bool)

(assert start!99544)

(declare-fun b_free!25087 () Bool)

(declare-fun b_next!25087 () Bool)

(assert (=> start!99544 (= b_free!25087 (not b_next!25087))))

(declare-fun tp!87975 () Bool)

(declare-fun b_and!41055 () Bool)

(assert (=> start!99544 (= tp!87975 b_and!41055)))

(declare-fun b!1176606 () Bool)

(declare-fun res!781606 () Bool)

(declare-fun e!668882 () Bool)

(assert (=> b!1176606 (=> (not res!781606) (not e!668882))))

(declare-datatypes ((array!76010 0))(
  ( (array!76011 (arr!36651 (Array (_ BitVec 32) (_ BitVec 64))) (size!37188 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76010)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76010 (_ BitVec 32)) Bool)

(assert (=> b!1176606 (= res!781606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176607 () Bool)

(declare-fun res!781594 () Bool)

(assert (=> b!1176607 (=> (not res!781594) (not e!668882))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176607 (= res!781594 (validKeyInArray!0 k!934))))

(declare-fun b!1176608 () Bool)

(declare-fun e!668881 () Bool)

(assert (=> b!1176608 (= e!668881 true)))

(declare-fun e!668876 () Bool)

(assert (=> b!1176608 e!668876))

(declare-fun res!781600 () Bool)

(assert (=> b!1176608 (=> (not res!781600) (not e!668876))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1176608 (= res!781600 (not (= (select (arr!36651 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38776 0))(
  ( (Unit!38777) )
))
(declare-fun lt!531081 () Unit!38776)

(declare-fun e!668887 () Unit!38776)

(assert (=> b!1176608 (= lt!531081 e!668887)))

(declare-fun c!116702 () Bool)

(assert (=> b!1176608 (= c!116702 (= (select (arr!36651 _keys!1208) from!1455) k!934))))

(declare-fun e!668878 () Bool)

(assert (=> b!1176608 e!668878))

(declare-fun res!781603 () Bool)

(assert (=> b!1176608 (=> (not res!781603) (not e!668878))))

(declare-datatypes ((V!44617 0))(
  ( (V!44618 (val!14865 Int)) )
))
(declare-datatypes ((tuple2!19128 0))(
  ( (tuple2!19129 (_1!9574 (_ BitVec 64)) (_2!9574 V!44617)) )
))
(declare-datatypes ((List!25895 0))(
  ( (Nil!25892) (Cons!25891 (h!27100 tuple2!19128) (t!37981 List!25895)) )
))
(declare-datatypes ((ListLongMap!17109 0))(
  ( (ListLongMap!17110 (toList!8570 List!25895)) )
))
(declare-fun lt!531071 () ListLongMap!17109)

(declare-fun lt!531077 () tuple2!19128)

(declare-fun lt!531079 () ListLongMap!17109)

(declare-fun +!3793 (ListLongMap!17109 tuple2!19128) ListLongMap!17109)

(assert (=> b!1176608 (= res!781603 (= lt!531079 (+!3793 lt!531071 lt!531077)))))

(declare-datatypes ((ValueCell!14099 0))(
  ( (ValueCellFull!14099 (v!17504 V!44617)) (EmptyCell!14099) )
))
(declare-datatypes ((array!76012 0))(
  ( (array!76013 (arr!36652 (Array (_ BitVec 32) ValueCell!14099)) (size!37189 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76012)

(declare-fun lt!531073 () V!44617)

(declare-fun get!18755 (ValueCell!14099 V!44617) V!44617)

(assert (=> b!1176608 (= lt!531077 (tuple2!19129 (select (arr!36651 _keys!1208) from!1455) (get!18755 (select (arr!36652 _values!996) from!1455) lt!531073)))))

(declare-fun b!1176609 () Bool)

(declare-fun res!781592 () Bool)

(assert (=> b!1176609 (=> (not res!781592) (not e!668882))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1176609 (= res!781592 (and (= (size!37189 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37188 _keys!1208) (size!37189 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1176610 () Bool)

(declare-fun res!781598 () Bool)

(assert (=> b!1176610 (=> (not res!781598) (not e!668882))))

(declare-datatypes ((List!25896 0))(
  ( (Nil!25893) (Cons!25892 (h!27101 (_ BitVec 64)) (t!37982 List!25896)) )
))
(declare-fun arrayNoDuplicates!0 (array!76010 (_ BitVec 32) List!25896) Bool)

(assert (=> b!1176610 (= res!781598 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25893))))

(declare-fun b!1176611 () Bool)

(declare-fun Unit!38778 () Unit!38776)

(assert (=> b!1176611 (= e!668887 Unit!38778)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!531070 () Unit!38776)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76010 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38776)

(assert (=> b!1176611 (= lt!531070 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176611 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531072 () Unit!38776)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76010 (_ BitVec 32) (_ BitVec 32)) Unit!38776)

(assert (=> b!1176611 (= lt!531072 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1176611 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25893)))

(declare-fun lt!531078 () Unit!38776)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76010 (_ BitVec 64) (_ BitVec 32) List!25896) Unit!38776)

(assert (=> b!1176611 (= lt!531078 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25893))))

(assert (=> b!1176611 false))

(declare-fun b!1176612 () Bool)

(declare-fun res!781597 () Bool)

(assert (=> b!1176612 (=> (not res!781597) (not e!668882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176612 (= res!781597 (validMask!0 mask!1564))))

(declare-fun b!1176613 () Bool)

(declare-fun e!668883 () Bool)

(declare-fun e!668877 () Bool)

(assert (=> b!1176613 (= e!668883 e!668877)))

(declare-fun res!781599 () Bool)

(assert (=> b!1176613 (=> res!781599 e!668877)))

(assert (=> b!1176613 (= res!781599 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44617)

(declare-fun lt!531082 () array!76012)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531080 () array!76010)

(declare-fun minValue!944 () V!44617)

(declare-fun getCurrentListMapNoExtraKeys!5001 (array!76010 array!76012 (_ BitVec 32) (_ BitVec 32) V!44617 V!44617 (_ BitVec 32) Int) ListLongMap!17109)

(assert (=> b!1176613 (= lt!531079 (getCurrentListMapNoExtraKeys!5001 lt!531080 lt!531082 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1176613 (= lt!531082 (array!76013 (store (arr!36652 _values!996) i!673 (ValueCellFull!14099 lt!531073)) (size!37189 _values!996)))))

(declare-fun dynLambda!2977 (Int (_ BitVec 64)) V!44617)

(assert (=> b!1176613 (= lt!531073 (dynLambda!2977 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531076 () ListLongMap!17109)

(assert (=> b!1176613 (= lt!531076 (getCurrentListMapNoExtraKeys!5001 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531084 () ListLongMap!17109)

(declare-fun b!1176614 () Bool)

(assert (=> b!1176614 (= e!668876 (= lt!531076 (+!3793 lt!531084 lt!531077)))))

(declare-fun e!668880 () Bool)

(declare-fun b!1176615 () Bool)

(assert (=> b!1176615 (= e!668880 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176616 () Bool)

(declare-fun e!668875 () Bool)

(declare-fun e!668884 () Bool)

(declare-fun mapRes!46253 () Bool)

(assert (=> b!1176616 (= e!668875 (and e!668884 mapRes!46253))))

(declare-fun condMapEmpty!46253 () Bool)

(declare-fun mapDefault!46253 () ValueCell!14099)

