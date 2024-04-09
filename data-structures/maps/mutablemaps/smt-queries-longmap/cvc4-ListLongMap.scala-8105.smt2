; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99536 () Bool)

(assert start!99536)

(declare-fun b_free!25079 () Bool)

(declare-fun b_next!25079 () Bool)

(assert (=> start!99536 (= b_free!25079 (not b_next!25079))))

(declare-fun tp!87951 () Bool)

(declare-fun b_and!41039 () Bool)

(assert (=> start!99536 (= tp!87951 b_and!41039)))

(declare-fun mapNonEmpty!46241 () Bool)

(declare-fun mapRes!46241 () Bool)

(declare-fun tp!87952 () Bool)

(declare-fun e!668730 () Bool)

(assert (=> mapNonEmpty!46241 (= mapRes!46241 (and tp!87952 e!668730))))

(declare-datatypes ((V!44605 0))(
  ( (V!44606 (val!14861 Int)) )
))
(declare-datatypes ((ValueCell!14095 0))(
  ( (ValueCellFull!14095 (v!17500 V!44605)) (EmptyCell!14095) )
))
(declare-fun mapValue!46241 () ValueCell!14095)

(declare-fun mapRest!46241 () (Array (_ BitVec 32) ValueCell!14095))

(declare-datatypes ((array!75994 0))(
  ( (array!75995 (arr!36643 (Array (_ BitVec 32) ValueCell!14095)) (size!37180 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75994)

(declare-fun mapKey!46241 () (_ BitVec 32))

(assert (=> mapNonEmpty!46241 (= (arr!36643 _values!996) (store mapRest!46241 mapKey!46241 mapValue!46241))))

(declare-datatypes ((array!75996 0))(
  ( (array!75997 (arr!36644 (Array (_ BitVec 32) (_ BitVec 64))) (size!37181 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75996)

(declare-fun e!668719 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1176346 () Bool)

(declare-fun arrayContainsKey!0 (array!75996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176346 (= e!668719 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176347 () Bool)

(declare-fun res!781413 () Bool)

(declare-fun e!668731 () Bool)

(assert (=> b!1176347 (=> (not res!781413) (not e!668731))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176347 (= res!781413 (validMask!0 mask!1564))))

(declare-fun b!1176348 () Bool)

(declare-fun e!668729 () Bool)

(assert (=> b!1176348 (= e!668731 e!668729)))

(declare-fun res!781411 () Bool)

(assert (=> b!1176348 (=> (not res!781411) (not e!668729))))

(declare-fun lt!530903 () array!75996)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75996 (_ BitVec 32)) Bool)

(assert (=> b!1176348 (= res!781411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530903 mask!1564))))

(assert (=> b!1176348 (= lt!530903 (array!75997 (store (arr!36644 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37181 _keys!1208)))))

(declare-fun mapIsEmpty!46241 () Bool)

(assert (=> mapIsEmpty!46241 mapRes!46241))

(declare-fun b!1176349 () Bool)

(declare-datatypes ((Unit!38761 0))(
  ( (Unit!38762) )
))
(declare-fun e!668725 () Unit!38761)

(declare-fun Unit!38763 () Unit!38761)

(assert (=> b!1176349 (= e!668725 Unit!38763)))

(declare-fun lt!530890 () Unit!38761)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75996 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38761)

(assert (=> b!1176349 (= lt!530890 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176349 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530898 () Unit!38761)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75996 (_ BitVec 32) (_ BitVec 32)) Unit!38761)

(assert (=> b!1176349 (= lt!530898 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25887 0))(
  ( (Nil!25884) (Cons!25883 (h!27092 (_ BitVec 64)) (t!37965 List!25887)) )
))
(declare-fun arrayNoDuplicates!0 (array!75996 (_ BitVec 32) List!25887) Bool)

(assert (=> b!1176349 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25884)))

(declare-fun lt!530902 () Unit!38761)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75996 (_ BitVec 64) (_ BitVec 32) List!25887) Unit!38761)

(assert (=> b!1176349 (= lt!530902 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25884))))

(assert (=> b!1176349 false))

(declare-fun b!1176350 () Bool)

(declare-fun e!668721 () Bool)

(assert (=> b!1176350 (= e!668721 e!668719)))

(declare-fun res!781409 () Bool)

(assert (=> b!1176350 (=> res!781409 e!668719)))

(assert (=> b!1176350 (= res!781409 (not (= (select (arr!36644 _keys!1208) from!1455) k!934)))))

(declare-fun b!1176351 () Bool)

(declare-fun e!668726 () Bool)

(declare-fun e!668724 () Bool)

(assert (=> b!1176351 (= e!668726 e!668724)))

(declare-fun res!781407 () Bool)

(assert (=> b!1176351 (=> res!781407 e!668724)))

(assert (=> b!1176351 (= res!781407 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44605)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19120 0))(
  ( (tuple2!19121 (_1!9570 (_ BitVec 64)) (_2!9570 V!44605)) )
))
(declare-datatypes ((List!25888 0))(
  ( (Nil!25885) (Cons!25884 (h!27093 tuple2!19120) (t!37966 List!25888)) )
))
(declare-datatypes ((ListLongMap!17101 0))(
  ( (ListLongMap!17102 (toList!8566 List!25888)) )
))
(declare-fun lt!530891 () ListLongMap!17101)

(declare-fun lt!530900 () array!75994)

(declare-fun minValue!944 () V!44605)

(declare-fun getCurrentListMapNoExtraKeys!4997 (array!75996 array!75994 (_ BitVec 32) (_ BitVec 32) V!44605 V!44605 (_ BitVec 32) Int) ListLongMap!17101)

(assert (=> b!1176351 (= lt!530891 (getCurrentListMapNoExtraKeys!4997 lt!530903 lt!530900 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530892 () V!44605)

(assert (=> b!1176351 (= lt!530900 (array!75995 (store (arr!36643 _values!996) i!673 (ValueCellFull!14095 lt!530892)) (size!37180 _values!996)))))

(declare-fun dynLambda!2974 (Int (_ BitVec 64)) V!44605)

(assert (=> b!1176351 (= lt!530892 (dynLambda!2974 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530904 () ListLongMap!17101)

(assert (=> b!1176351 (= lt!530904 (getCurrentListMapNoExtraKeys!4997 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176352 () Bool)

(declare-fun res!781401 () Bool)

(assert (=> b!1176352 (=> (not res!781401) (not e!668731))))

(assert (=> b!1176352 (= res!781401 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37181 _keys!1208))))))

(declare-fun b!1176353 () Bool)

(declare-fun e!668728 () Bool)

(declare-fun tp_is_empty!29609 () Bool)

(assert (=> b!1176353 (= e!668728 tp_is_empty!29609)))

(declare-fun b!1176354 () Bool)

(declare-fun res!781408 () Bool)

(assert (=> b!1176354 (=> (not res!781408) (not e!668731))))

(assert (=> b!1176354 (= res!781408 (= (select (arr!36644 _keys!1208) i!673) k!934))))

(declare-fun b!1176355 () Bool)

(declare-fun res!781404 () Bool)

(assert (=> b!1176355 (=> (not res!781404) (not e!668731))))

(assert (=> b!1176355 (= res!781404 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25884))))

(declare-fun res!781406 () Bool)

(assert (=> start!99536 (=> (not res!781406) (not e!668731))))

(assert (=> start!99536 (= res!781406 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37181 _keys!1208))))))

(assert (=> start!99536 e!668731))

(assert (=> start!99536 tp_is_empty!29609))

(declare-fun array_inv!27870 (array!75996) Bool)

(assert (=> start!99536 (array_inv!27870 _keys!1208)))

(assert (=> start!99536 true))

(assert (=> start!99536 tp!87951))

(declare-fun e!668727 () Bool)

(declare-fun array_inv!27871 (array!75994) Bool)

(assert (=> start!99536 (and (array_inv!27871 _values!996) e!668727)))

(declare-fun b!1176356 () Bool)

(declare-fun e!668722 () Bool)

(assert (=> b!1176356 (= e!668722 true)))

(declare-fun e!668723 () Bool)

(assert (=> b!1176356 e!668723))

(declare-fun res!781402 () Bool)

(assert (=> b!1176356 (=> (not res!781402) (not e!668723))))

(assert (=> b!1176356 (= res!781402 (not (= (select (arr!36644 _keys!1208) from!1455) k!934)))))

(declare-fun lt!530893 () Unit!38761)

(assert (=> b!1176356 (= lt!530893 e!668725)))

(declare-fun c!116690 () Bool)

(assert (=> b!1176356 (= c!116690 (= (select (arr!36644 _keys!1208) from!1455) k!934))))

(assert (=> b!1176356 e!668721))

(declare-fun res!781399 () Bool)

(assert (=> b!1176356 (=> (not res!781399) (not e!668721))))

(declare-fun lt!530899 () ListLongMap!17101)

(declare-fun lt!530896 () tuple2!19120)

(declare-fun +!3789 (ListLongMap!17101 tuple2!19120) ListLongMap!17101)

(assert (=> b!1176356 (= res!781399 (= lt!530891 (+!3789 lt!530899 lt!530896)))))

(declare-fun get!18748 (ValueCell!14095 V!44605) V!44605)

(assert (=> b!1176356 (= lt!530896 (tuple2!19121 (select (arr!36644 _keys!1208) from!1455) (get!18748 (select (arr!36643 _values!996) from!1455) lt!530892)))))

(declare-fun b!1176357 () Bool)

(declare-fun res!781403 () Bool)

(assert (=> b!1176357 (=> (not res!781403) (not e!668731))))

(assert (=> b!1176357 (= res!781403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176358 () Bool)

(assert (=> b!1176358 (= e!668729 (not e!668726))))

(declare-fun res!781412 () Bool)

(assert (=> b!1176358 (=> res!781412 e!668726)))

(assert (=> b!1176358 (= res!781412 (bvsgt from!1455 i!673))))

(assert (=> b!1176358 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!530897 () Unit!38761)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75996 (_ BitVec 64) (_ BitVec 32)) Unit!38761)

(assert (=> b!1176358 (= lt!530897 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176359 () Bool)

(assert (=> b!1176359 (= e!668730 tp_is_empty!29609)))

(declare-fun b!1176360 () Bool)

(declare-fun res!781400 () Bool)

(assert (=> b!1176360 (=> (not res!781400) (not e!668729))))

(assert (=> b!1176360 (= res!781400 (arrayNoDuplicates!0 lt!530903 #b00000000000000000000000000000000 Nil!25884))))

(declare-fun b!1176361 () Bool)

(declare-fun res!781414 () Bool)

(assert (=> b!1176361 (=> (not res!781414) (not e!668731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176361 (= res!781414 (validKeyInArray!0 k!934))))

(declare-fun lt!530901 () ListLongMap!17101)

(declare-fun b!1176362 () Bool)

(assert (=> b!1176362 (= e!668723 (= lt!530904 (+!3789 lt!530901 lt!530896)))))

(declare-fun b!1176363 () Bool)

(declare-fun res!781405 () Bool)

(assert (=> b!1176363 (=> (not res!781405) (not e!668731))))

(assert (=> b!1176363 (= res!781405 (and (= (size!37180 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37181 _keys!1208) (size!37180 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1176364 () Bool)

(declare-fun Unit!38764 () Unit!38761)

(assert (=> b!1176364 (= e!668725 Unit!38764)))

(declare-fun b!1176365 () Bool)

(assert (=> b!1176365 (= e!668727 (and e!668728 mapRes!46241))))

(declare-fun condMapEmpty!46241 () Bool)

(declare-fun mapDefault!46241 () ValueCell!14095)

