; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99548 () Bool)

(assert start!99548)

(declare-fun b_free!25091 () Bool)

(declare-fun b_next!25091 () Bool)

(assert (=> start!99548 (= b_free!25091 (not b_next!25091))))

(declare-fun tp!87988 () Bool)

(declare-fun b_and!41063 () Bool)

(assert (=> start!99548 (= tp!87988 b_and!41063)))

(declare-fun mapNonEmpty!46259 () Bool)

(declare-fun mapRes!46259 () Bool)

(declare-fun tp!87987 () Bool)

(declare-fun e!668957 () Bool)

(assert (=> mapNonEmpty!46259 (= mapRes!46259 (and tp!87987 e!668957))))

(declare-datatypes ((V!44621 0))(
  ( (V!44622 (val!14867 Int)) )
))
(declare-datatypes ((ValueCell!14101 0))(
  ( (ValueCellFull!14101 (v!17506 V!44621)) (EmptyCell!14101) )
))
(declare-fun mapRest!46259 () (Array (_ BitVec 32) ValueCell!14101))

(declare-fun mapValue!46259 () ValueCell!14101)

(declare-datatypes ((array!76018 0))(
  ( (array!76019 (arr!36655 (Array (_ BitVec 32) ValueCell!14101)) (size!37192 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76018)

(declare-fun mapKey!46259 () (_ BitVec 32))

(assert (=> mapNonEmpty!46259 (= (arr!36655 _values!996) (store mapRest!46259 mapKey!46259 mapValue!46259))))

(declare-fun e!668962 () Bool)

(declare-datatypes ((tuple2!19132 0))(
  ( (tuple2!19133 (_1!9576 (_ BitVec 64)) (_2!9576 V!44621)) )
))
(declare-datatypes ((List!25899 0))(
  ( (Nil!25896) (Cons!25895 (h!27104 tuple2!19132) (t!37989 List!25899)) )
))
(declare-datatypes ((ListLongMap!17113 0))(
  ( (ListLongMap!17114 (toList!8572 List!25899)) )
))
(declare-fun lt!531171 () ListLongMap!17113)

(declare-fun lt!531168 () ListLongMap!17113)

(declare-fun lt!531165 () tuple2!19132)

(declare-fun b!1176736 () Bool)

(declare-fun +!3795 (ListLongMap!17113 tuple2!19132) ListLongMap!17113)

(assert (=> b!1176736 (= e!668962 (= lt!531168 (+!3795 lt!531171 lt!531165)))))

(declare-fun b!1176737 () Bool)

(declare-fun e!668959 () Bool)

(declare-fun tp_is_empty!29621 () Bool)

(assert (=> b!1176737 (= e!668959 tp_is_empty!29621)))

(declare-fun b!1176738 () Bool)

(declare-fun e!668961 () Bool)

(declare-fun e!668953 () Bool)

(assert (=> b!1176738 (= e!668961 (not e!668953))))

(declare-fun res!781694 () Bool)

(assert (=> b!1176738 (=> res!781694 e!668953)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176738 (= res!781694 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76020 0))(
  ( (array!76021 (arr!36656 (Array (_ BitVec 32) (_ BitVec 64))) (size!37193 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76020)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176738 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38783 0))(
  ( (Unit!38784) )
))
(declare-fun lt!531173 () Unit!38783)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76020 (_ BitVec 64) (_ BitVec 32)) Unit!38783)

(assert (=> b!1176738 (= lt!531173 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176739 () Bool)

(declare-fun e!668965 () Bool)

(assert (=> b!1176739 (= e!668965 true)))

(assert (=> b!1176739 e!668962))

(declare-fun res!781690 () Bool)

(assert (=> b!1176739 (=> (not res!781690) (not e!668962))))

(assert (=> b!1176739 (= res!781690 (not (= (select (arr!36656 _keys!1208) from!1455) k!934)))))

(declare-fun lt!531160 () Unit!38783)

(declare-fun e!668955 () Unit!38783)

(assert (=> b!1176739 (= lt!531160 e!668955)))

(declare-fun c!116708 () Bool)

(assert (=> b!1176739 (= c!116708 (= (select (arr!36656 _keys!1208) from!1455) k!934))))

(declare-fun e!668960 () Bool)

(assert (=> b!1176739 e!668960))

(declare-fun res!781691 () Bool)

(assert (=> b!1176739 (=> (not res!781691) (not e!668960))))

(declare-fun lt!531172 () ListLongMap!17113)

(declare-fun lt!531170 () ListLongMap!17113)

(assert (=> b!1176739 (= res!781691 (= lt!531172 (+!3795 lt!531170 lt!531165)))))

(declare-fun lt!531166 () V!44621)

(declare-fun get!18757 (ValueCell!14101 V!44621) V!44621)

(assert (=> b!1176739 (= lt!531165 (tuple2!19133 (select (arr!36656 _keys!1208) from!1455) (get!18757 (select (arr!36655 _values!996) from!1455) lt!531166)))))

(declare-fun b!1176740 () Bool)

(declare-fun e!668963 () Bool)

(assert (=> b!1176740 (= e!668953 e!668963)))

(declare-fun res!781689 () Bool)

(assert (=> b!1176740 (=> res!781689 e!668963)))

(assert (=> b!1176740 (= res!781689 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44621)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!531169 () array!76020)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531161 () array!76018)

(declare-fun minValue!944 () V!44621)

(declare-fun getCurrentListMapNoExtraKeys!5003 (array!76020 array!76018 (_ BitVec 32) (_ BitVec 32) V!44621 V!44621 (_ BitVec 32) Int) ListLongMap!17113)

(assert (=> b!1176740 (= lt!531172 (getCurrentListMapNoExtraKeys!5003 lt!531169 lt!531161 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1176740 (= lt!531161 (array!76019 (store (arr!36655 _values!996) i!673 (ValueCellFull!14101 lt!531166)) (size!37192 _values!996)))))

(declare-fun dynLambda!2979 (Int (_ BitVec 64)) V!44621)

(assert (=> b!1176740 (= lt!531166 (dynLambda!2979 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1176740 (= lt!531168 (getCurrentListMapNoExtraKeys!5003 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176741 () Bool)

(assert (=> b!1176741 (= e!668957 tp_is_empty!29621)))

(declare-fun b!1176742 () Bool)

(declare-fun res!781700 () Bool)

(declare-fun e!668954 () Bool)

(assert (=> b!1176742 (=> (not res!781700) (not e!668954))))

(assert (=> b!1176742 (= res!781700 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37193 _keys!1208))))))

(declare-fun res!781687 () Bool)

(assert (=> start!99548 (=> (not res!781687) (not e!668954))))

(assert (=> start!99548 (= res!781687 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37193 _keys!1208))))))

(assert (=> start!99548 e!668954))

(assert (=> start!99548 tp_is_empty!29621))

(declare-fun array_inv!27880 (array!76020) Bool)

(assert (=> start!99548 (array_inv!27880 _keys!1208)))

(assert (=> start!99548 true))

(assert (=> start!99548 tp!87988))

(declare-fun e!668964 () Bool)

(declare-fun array_inv!27881 (array!76018) Bool)

(assert (=> start!99548 (and (array_inv!27881 _values!996) e!668964)))

(declare-fun b!1176743 () Bool)

(declare-fun e!668956 () Bool)

(assert (=> b!1176743 (= e!668960 e!668956)))

(declare-fun res!781699 () Bool)

(assert (=> b!1176743 (=> res!781699 e!668956)))

(assert (=> b!1176743 (= res!781699 (not (= (select (arr!36656 _keys!1208) from!1455) k!934)))))

(declare-fun b!1176744 () Bool)

(assert (=> b!1176744 (= e!668963 e!668965)))

(declare-fun res!781693 () Bool)

(assert (=> b!1176744 (=> res!781693 e!668965)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176744 (= res!781693 (not (validKeyInArray!0 (select (arr!36656 _keys!1208) from!1455))))))

(declare-fun lt!531162 () ListLongMap!17113)

(assert (=> b!1176744 (= lt!531162 lt!531170)))

(declare-fun -!1575 (ListLongMap!17113 (_ BitVec 64)) ListLongMap!17113)

(assert (=> b!1176744 (= lt!531170 (-!1575 lt!531171 k!934))))

(assert (=> b!1176744 (= lt!531162 (getCurrentListMapNoExtraKeys!5003 lt!531169 lt!531161 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176744 (= lt!531171 (getCurrentListMapNoExtraKeys!5003 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531163 () Unit!38783)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!799 (array!76020 array!76018 (_ BitVec 32) (_ BitVec 32) V!44621 V!44621 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38783)

(assert (=> b!1176744 (= lt!531163 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!799 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176745 () Bool)

(declare-fun res!781695 () Bool)

(assert (=> b!1176745 (=> (not res!781695) (not e!668954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176745 (= res!781695 (validMask!0 mask!1564))))

(declare-fun b!1176746 () Bool)

(declare-fun res!781702 () Bool)

(assert (=> b!1176746 (=> (not res!781702) (not e!668954))))

(assert (=> b!1176746 (= res!781702 (= (select (arr!36656 _keys!1208) i!673) k!934))))

(declare-fun b!1176747 () Bool)

(declare-fun Unit!38785 () Unit!38783)

(assert (=> b!1176747 (= e!668955 Unit!38785)))

(declare-fun lt!531164 () Unit!38783)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76020 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38783)

(assert (=> b!1176747 (= lt!531164 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176747 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531167 () Unit!38783)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76020 (_ BitVec 32) (_ BitVec 32)) Unit!38783)

(assert (=> b!1176747 (= lt!531167 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25900 0))(
  ( (Nil!25897) (Cons!25896 (h!27105 (_ BitVec 64)) (t!37990 List!25900)) )
))
(declare-fun arrayNoDuplicates!0 (array!76020 (_ BitVec 32) List!25900) Bool)

(assert (=> b!1176747 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25897)))

(declare-fun lt!531174 () Unit!38783)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76020 (_ BitVec 64) (_ BitVec 32) List!25900) Unit!38783)

(assert (=> b!1176747 (= lt!531174 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25897))))

(assert (=> b!1176747 false))

(declare-fun b!1176748 () Bool)

(declare-fun res!781692 () Bool)

(assert (=> b!1176748 (=> (not res!781692) (not e!668954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76020 (_ BitVec 32)) Bool)

(assert (=> b!1176748 (= res!781692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176749 () Bool)

(declare-fun res!781701 () Bool)

(assert (=> b!1176749 (=> (not res!781701) (not e!668954))))

(assert (=> b!1176749 (= res!781701 (validKeyInArray!0 k!934))))

(declare-fun b!1176750 () Bool)

(assert (=> b!1176750 (= e!668954 e!668961)))

(declare-fun res!781697 () Bool)

(assert (=> b!1176750 (=> (not res!781697) (not e!668961))))

(assert (=> b!1176750 (= res!781697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531169 mask!1564))))

(assert (=> b!1176750 (= lt!531169 (array!76021 (store (arr!36656 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37193 _keys!1208)))))

(declare-fun b!1176751 () Bool)

(assert (=> b!1176751 (= e!668964 (and e!668959 mapRes!46259))))

(declare-fun condMapEmpty!46259 () Bool)

(declare-fun mapDefault!46259 () ValueCell!14101)

