; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99478 () Bool)

(assert start!99478)

(declare-fun b_free!25021 () Bool)

(declare-fun b_next!25021 () Bool)

(assert (=> start!99478 (= b_free!25021 (not b_next!25021))))

(declare-fun tp!87777 () Bool)

(declare-fun b_and!40923 () Bool)

(assert (=> start!99478 (= tp!87777 b_and!40923)))

(declare-fun b!1174532 () Bool)

(declare-fun res!780077 () Bool)

(declare-fun e!667666 () Bool)

(assert (=> b!1174532 (=> (not res!780077) (not e!667666))))

(declare-datatypes ((array!75878 0))(
  ( (array!75879 (arr!36585 (Array (_ BitVec 32) (_ BitVec 64))) (size!37122 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75878)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44529 0))(
  ( (V!44530 (val!14832 Int)) )
))
(declare-datatypes ((ValueCell!14066 0))(
  ( (ValueCellFull!14066 (v!17471 V!44529)) (EmptyCell!14066) )
))
(declare-datatypes ((array!75880 0))(
  ( (array!75881 (arr!36586 (Array (_ BitVec 32) ValueCell!14066)) (size!37123 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75880)

(assert (=> b!1174532 (= res!780077 (and (= (size!37123 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37122 _keys!1208) (size!37123 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174533 () Bool)

(declare-fun res!780079 () Bool)

(declare-fun e!667660 () Bool)

(assert (=> b!1174533 (=> (not res!780079) (not e!667660))))

(declare-fun lt!529657 () array!75878)

(declare-datatypes ((List!25834 0))(
  ( (Nil!25831) (Cons!25830 (h!27039 (_ BitVec 64)) (t!37854 List!25834)) )
))
(declare-fun arrayNoDuplicates!0 (array!75878 (_ BitVec 32) List!25834) Bool)

(assert (=> b!1174533 (= res!780079 (arrayNoDuplicates!0 lt!529657 #b00000000000000000000000000000000 Nil!25831))))

(declare-fun b!1174534 () Bool)

(declare-fun e!667669 () Bool)

(declare-fun e!667667 () Bool)

(assert (=> b!1174534 (= e!667669 e!667667)))

(declare-fun res!780081 () Bool)

(assert (=> b!1174534 (=> res!780081 e!667667)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174534 (= res!780081 (not (validKeyInArray!0 (select (arr!36585 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19064 0))(
  ( (tuple2!19065 (_1!9542 (_ BitVec 64)) (_2!9542 V!44529)) )
))
(declare-datatypes ((List!25835 0))(
  ( (Nil!25832) (Cons!25831 (h!27040 tuple2!19064) (t!37855 List!25835)) )
))
(declare-datatypes ((ListLongMap!17045 0))(
  ( (ListLongMap!17046 (toList!8538 List!25835)) )
))
(declare-fun lt!529663 () ListLongMap!17045)

(declare-fun lt!529665 () ListLongMap!17045)

(assert (=> b!1174534 (= lt!529663 lt!529665)))

(declare-fun lt!529660 () ListLongMap!17045)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1548 (ListLongMap!17045 (_ BitVec 64)) ListLongMap!17045)

(assert (=> b!1174534 (= lt!529665 (-!1548 lt!529660 k!934))))

(declare-fun minValue!944 () V!44529)

(declare-fun zeroValue!944 () V!44529)

(declare-fun lt!529659 () array!75880)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4969 (array!75878 array!75880 (_ BitVec 32) (_ BitVec 32) V!44529 V!44529 (_ BitVec 32) Int) ListLongMap!17045)

(assert (=> b!1174534 (= lt!529663 (getCurrentListMapNoExtraKeys!4969 lt!529657 lt!529659 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174534 (= lt!529660 (getCurrentListMapNoExtraKeys!4969 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38663 0))(
  ( (Unit!38664) )
))
(declare-fun lt!529658 () Unit!38663)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!772 (array!75878 array!75880 (_ BitVec 32) (_ BitVec 32) V!44529 V!44529 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38663)

(assert (=> b!1174534 (= lt!529658 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!772 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174535 () Bool)

(declare-fun e!667664 () Unit!38663)

(declare-fun Unit!38665 () Unit!38663)

(assert (=> b!1174535 (= e!667664 Unit!38665)))

(declare-fun b!1174536 () Bool)

(declare-fun res!780087 () Bool)

(assert (=> b!1174536 (=> (not res!780087) (not e!667666))))

(assert (=> b!1174536 (= res!780087 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37122 _keys!1208))))))

(declare-fun mapNonEmpty!46154 () Bool)

(declare-fun mapRes!46154 () Bool)

(declare-fun tp!87778 () Bool)

(declare-fun e!667661 () Bool)

(assert (=> mapNonEmpty!46154 (= mapRes!46154 (and tp!87778 e!667661))))

(declare-fun mapRest!46154 () (Array (_ BitVec 32) ValueCell!14066))

(declare-fun mapKey!46154 () (_ BitVec 32))

(declare-fun mapValue!46154 () ValueCell!14066)

(assert (=> mapNonEmpty!46154 (= (arr!36586 _values!996) (store mapRest!46154 mapKey!46154 mapValue!46154))))

(declare-fun b!1174537 () Bool)

(declare-fun e!667659 () Bool)

(declare-fun tp_is_empty!29551 () Bool)

(assert (=> b!1174537 (= e!667659 tp_is_empty!29551)))

(declare-fun b!1174538 () Bool)

(declare-fun e!667668 () Bool)

(assert (=> b!1174538 (= e!667660 (not e!667668))))

(declare-fun res!780083 () Bool)

(assert (=> b!1174538 (=> res!780083 e!667668)))

(assert (=> b!1174538 (= res!780083 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174538 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!529664 () Unit!38663)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75878 (_ BitVec 64) (_ BitVec 32)) Unit!38663)

(assert (=> b!1174538 (= lt!529664 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174539 () Bool)

(declare-fun res!780091 () Bool)

(assert (=> b!1174539 (=> (not res!780091) (not e!667666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174539 (= res!780091 (validMask!0 mask!1564))))

(declare-fun b!1174540 () Bool)

(assert (=> b!1174540 (= e!667666 e!667660)))

(declare-fun res!780080 () Bool)

(assert (=> b!1174540 (=> (not res!780080) (not e!667660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75878 (_ BitVec 32)) Bool)

(assert (=> b!1174540 (= res!780080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529657 mask!1564))))

(assert (=> b!1174540 (= lt!529657 (array!75879 (store (arr!36585 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37122 _keys!1208)))))

(declare-fun b!1174541 () Bool)

(declare-fun res!780086 () Bool)

(assert (=> b!1174541 (=> (not res!780086) (not e!667666))))

(assert (=> b!1174541 (= res!780086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun e!667658 () Bool)

(declare-fun b!1174542 () Bool)

(assert (=> b!1174542 (= e!667658 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46154 () Bool)

(assert (=> mapIsEmpty!46154 mapRes!46154))

(declare-fun b!1174543 () Bool)

(declare-fun e!667663 () Bool)

(assert (=> b!1174543 (= e!667663 e!667658)))

(declare-fun res!780084 () Bool)

(assert (=> b!1174543 (=> res!780084 e!667658)))

(assert (=> b!1174543 (= res!780084 (not (= (select (arr!36585 _keys!1208) from!1455) k!934)))))

(declare-fun b!1174544 () Bool)

(declare-fun res!780078 () Bool)

(assert (=> b!1174544 (=> (not res!780078) (not e!667666))))

(assert (=> b!1174544 (= res!780078 (validKeyInArray!0 k!934))))

(declare-fun res!780088 () Bool)

(assert (=> start!99478 (=> (not res!780088) (not e!667666))))

(assert (=> start!99478 (= res!780088 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37122 _keys!1208))))))

(assert (=> start!99478 e!667666))

(assert (=> start!99478 tp_is_empty!29551))

(declare-fun array_inv!27832 (array!75878) Bool)

(assert (=> start!99478 (array_inv!27832 _keys!1208)))

(assert (=> start!99478 true))

(assert (=> start!99478 tp!87777))

(declare-fun e!667665 () Bool)

(declare-fun array_inv!27833 (array!75880) Bool)

(assert (=> start!99478 (and (array_inv!27833 _values!996) e!667665)))

(declare-fun b!1174531 () Bool)

(assert (=> b!1174531 (= e!667668 e!667669)))

(declare-fun res!780085 () Bool)

(assert (=> b!1174531 (=> res!780085 e!667669)))

(assert (=> b!1174531 (= res!780085 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!529662 () ListLongMap!17045)

(assert (=> b!1174531 (= lt!529662 (getCurrentListMapNoExtraKeys!4969 lt!529657 lt!529659 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!529661 () V!44529)

(assert (=> b!1174531 (= lt!529659 (array!75881 (store (arr!36586 _values!996) i!673 (ValueCellFull!14066 lt!529661)) (size!37123 _values!996)))))

(declare-fun dynLambda!2951 (Int (_ BitVec 64)) V!44529)

(assert (=> b!1174531 (= lt!529661 (dynLambda!2951 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529668 () ListLongMap!17045)

(assert (=> b!1174531 (= lt!529668 (getCurrentListMapNoExtraKeys!4969 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174545 () Bool)

(declare-fun Unit!38666 () Unit!38663)

(assert (=> b!1174545 (= e!667664 Unit!38666)))

(declare-fun lt!529666 () Unit!38663)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75878 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38663)

(assert (=> b!1174545 (= lt!529666 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174545 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529655 () Unit!38663)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75878 (_ BitVec 32) (_ BitVec 32)) Unit!38663)

(assert (=> b!1174545 (= lt!529655 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174545 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25831)))

(declare-fun lt!529667 () Unit!38663)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75878 (_ BitVec 64) (_ BitVec 32) List!25834) Unit!38663)

(assert (=> b!1174545 (= lt!529667 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25831))))

(assert (=> b!1174545 false))

(declare-fun b!1174546 () Bool)

(assert (=> b!1174546 (= e!667661 tp_is_empty!29551)))

(declare-fun b!1174547 () Bool)

(assert (=> b!1174547 (= e!667665 (and e!667659 mapRes!46154))))

(declare-fun condMapEmpty!46154 () Bool)

(declare-fun mapDefault!46154 () ValueCell!14066)

