; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101314 () Bool)

(assert start!101314)

(declare-fun b_free!26201 () Bool)

(declare-fun b_next!26201 () Bool)

(assert (=> start!101314 (= b_free!26201 (not b_next!26201))))

(declare-fun tp!91625 () Bool)

(declare-fun b_and!43529 () Bool)

(assert (=> start!101314 (= tp!91625 b_and!43529)))

(declare-fun mapIsEmpty!48232 () Bool)

(declare-fun mapRes!48232 () Bool)

(assert (=> mapIsEmpty!48232 mapRes!48232))

(declare-fun b!1216654 () Bool)

(declare-fun e!690778 () Bool)

(declare-fun e!690773 () Bool)

(assert (=> b!1216654 (= e!690778 e!690773)))

(declare-fun res!808028 () Bool)

(assert (=> b!1216654 (=> res!808028 e!690773)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216654 (= res!808028 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46333 0))(
  ( (V!46334 (val!15509 Int)) )
))
(declare-fun zeroValue!944 () V!46333)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20076 0))(
  ( (tuple2!20077 (_1!10048 (_ BitVec 64)) (_2!10048 V!46333)) )
))
(declare-datatypes ((List!26898 0))(
  ( (Nil!26895) (Cons!26894 (h!28103 tuple2!20076) (t!40086 List!26898)) )
))
(declare-datatypes ((ListLongMap!18057 0))(
  ( (ListLongMap!18058 (toList!9044 List!26898)) )
))
(declare-fun lt!552950 () ListLongMap!18057)

(declare-fun minValue!944 () V!46333)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14743 0))(
  ( (ValueCellFull!14743 (v!18163 V!46333)) (EmptyCell!14743) )
))
(declare-datatypes ((array!78556 0))(
  ( (array!78557 (arr!37909 (Array (_ BitVec 32) ValueCell!14743)) (size!38446 (_ BitVec 32))) )
))
(declare-fun lt!552948 () array!78556)

(declare-datatypes ((array!78558 0))(
  ( (array!78559 (arr!37910 (Array (_ BitVec 32) (_ BitVec 64))) (size!38447 (_ BitVec 32))) )
))
(declare-fun lt!552953 () array!78558)

(declare-fun getCurrentListMapNoExtraKeys!5449 (array!78558 array!78556 (_ BitVec 32) (_ BitVec 32) V!46333 V!46333 (_ BitVec 32) Int) ListLongMap!18057)

(assert (=> b!1216654 (= lt!552950 (getCurrentListMapNoExtraKeys!5449 lt!552953 lt!552948 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78556)

(declare-fun dynLambda!3357 (Int (_ BitVec 64)) V!46333)

(assert (=> b!1216654 (= lt!552948 (array!78557 (store (arr!37909 _values!996) i!673 (ValueCellFull!14743 (dynLambda!3357 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38446 _values!996)))))

(declare-fun _keys!1208 () array!78558)

(declare-fun lt!552952 () ListLongMap!18057)

(assert (=> b!1216654 (= lt!552952 (getCurrentListMapNoExtraKeys!5449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1216655 () Bool)

(declare-fun res!808027 () Bool)

(declare-fun e!690775 () Bool)

(assert (=> b!1216655 (=> (not res!808027) (not e!690775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216655 (= res!808027 (validMask!0 mask!1564))))

(declare-fun b!1216656 () Bool)

(declare-fun res!808032 () Bool)

(assert (=> b!1216656 (=> (not res!808032) (not e!690775))))

(assert (=> b!1216656 (= res!808032 (and (= (size!38446 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38447 _keys!1208) (size!38446 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216657 () Bool)

(declare-fun e!690772 () Bool)

(declare-fun tp_is_empty!30905 () Bool)

(assert (=> b!1216657 (= e!690772 tp_is_empty!30905)))

(declare-fun b!1216658 () Bool)

(declare-fun e!690776 () Bool)

(assert (=> b!1216658 (= e!690775 e!690776)))

(declare-fun res!808022 () Bool)

(assert (=> b!1216658 (=> (not res!808022) (not e!690776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78558 (_ BitVec 32)) Bool)

(assert (=> b!1216658 (= res!808022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552953 mask!1564))))

(assert (=> b!1216658 (= lt!552953 (array!78559 (store (arr!37910 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38447 _keys!1208)))))

(declare-fun b!1216659 () Bool)

(declare-fun e!690774 () Bool)

(assert (=> b!1216659 (= e!690774 tp_is_empty!30905)))

(declare-fun b!1216660 () Bool)

(assert (=> b!1216660 (= e!690776 (not e!690778))))

(declare-fun res!808029 () Bool)

(assert (=> b!1216660 (=> res!808029 e!690778)))

(assert (=> b!1216660 (= res!808029 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1216660 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40272 0))(
  ( (Unit!40273) )
))
(declare-fun lt!552951 () Unit!40272)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78558 (_ BitVec 64) (_ BitVec 32)) Unit!40272)

(assert (=> b!1216660 (= lt!552951 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!48232 () Bool)

(declare-fun tp!91626 () Bool)

(assert (=> mapNonEmpty!48232 (= mapRes!48232 (and tp!91626 e!690774))))

(declare-fun mapRest!48232 () (Array (_ BitVec 32) ValueCell!14743))

(declare-fun mapKey!48232 () (_ BitVec 32))

(declare-fun mapValue!48232 () ValueCell!14743)

(assert (=> mapNonEmpty!48232 (= (arr!37909 _values!996) (store mapRest!48232 mapKey!48232 mapValue!48232))))

(declare-fun b!1216661 () Bool)

(declare-fun res!808024 () Bool)

(assert (=> b!1216661 (=> (not res!808024) (not e!690776))))

(declare-datatypes ((List!26899 0))(
  ( (Nil!26896) (Cons!26895 (h!28104 (_ BitVec 64)) (t!40087 List!26899)) )
))
(declare-fun arrayNoDuplicates!0 (array!78558 (_ BitVec 32) List!26899) Bool)

(assert (=> b!1216661 (= res!808024 (arrayNoDuplicates!0 lt!552953 #b00000000000000000000000000000000 Nil!26896))))

(declare-fun b!1216662 () Bool)

(declare-fun e!690777 () Bool)

(assert (=> b!1216662 (= e!690777 (bvslt i!673 (size!38446 _values!996)))))

(declare-fun b!1216663 () Bool)

(declare-fun res!808033 () Bool)

(assert (=> b!1216663 (=> (not res!808033) (not e!690775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216663 (= res!808033 (validKeyInArray!0 k!934))))

(declare-fun res!808023 () Bool)

(assert (=> start!101314 (=> (not res!808023) (not e!690775))))

(assert (=> start!101314 (= res!808023 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38447 _keys!1208))))))

(assert (=> start!101314 e!690775))

(assert (=> start!101314 tp_is_empty!30905))

(declare-fun array_inv!28764 (array!78558) Bool)

(assert (=> start!101314 (array_inv!28764 _keys!1208)))

(assert (=> start!101314 true))

(assert (=> start!101314 tp!91625))

(declare-fun e!690780 () Bool)

(declare-fun array_inv!28765 (array!78556) Bool)

(assert (=> start!101314 (and (array_inv!28765 _values!996) e!690780)))

(declare-fun b!1216664 () Bool)

(declare-fun res!808026 () Bool)

(assert (=> b!1216664 (=> (not res!808026) (not e!690775))))

(assert (=> b!1216664 (= res!808026 (= (select (arr!37910 _keys!1208) i!673) k!934))))

(declare-fun b!1216665 () Bool)

(declare-fun res!808030 () Bool)

(assert (=> b!1216665 (=> (not res!808030) (not e!690775))))

(assert (=> b!1216665 (= res!808030 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38447 _keys!1208))))))

(declare-fun b!1216666 () Bool)

(assert (=> b!1216666 (= e!690773 e!690777)))

(declare-fun res!808021 () Bool)

(assert (=> b!1216666 (=> res!808021 e!690777)))

(assert (=> b!1216666 (= res!808021 (not (validKeyInArray!0 (select (arr!37910 _keys!1208) from!1455))))))

(declare-fun -!1907 (ListLongMap!18057 (_ BitVec 64)) ListLongMap!18057)

(assert (=> b!1216666 (= (getCurrentListMapNoExtraKeys!5449 lt!552953 lt!552948 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1907 (getCurrentListMapNoExtraKeys!5449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!552949 () Unit!40272)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1109 (array!78558 array!78556 (_ BitVec 32) (_ BitVec 32) V!46333 V!46333 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40272)

(assert (=> b!1216666 (= lt!552949 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1109 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216667 () Bool)

(declare-fun res!808025 () Bool)

(assert (=> b!1216667 (=> (not res!808025) (not e!690775))))

(assert (=> b!1216667 (= res!808025 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26896))))

(declare-fun b!1216668 () Bool)

(assert (=> b!1216668 (= e!690780 (and e!690772 mapRes!48232))))

(declare-fun condMapEmpty!48232 () Bool)

(declare-fun mapDefault!48232 () ValueCell!14743)

