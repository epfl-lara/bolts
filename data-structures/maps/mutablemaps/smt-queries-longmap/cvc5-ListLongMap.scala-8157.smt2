; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99844 () Bool)

(assert start!99844)

(declare-fun b_free!25387 () Bool)

(declare-fun b_next!25387 () Bool)

(assert (=> start!99844 (= b_free!25387 (not b_next!25387))))

(declare-fun tp!88875 () Bool)

(declare-fun b_and!41655 () Bool)

(assert (=> start!99844 (= tp!88875 b_and!41655)))

(declare-fun e!674507 () Bool)

(declare-datatypes ((array!76602 0))(
  ( (array!76603 (arr!36947 (Array (_ BitVec 32) (_ BitVec 64))) (size!37484 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76602)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1186219 () Bool)

(declare-fun arrayContainsKey!0 (array!76602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186219 (= e!674507 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1186220 () Bool)

(declare-fun e!674509 () Bool)

(declare-fun e!674500 () Bool)

(assert (=> b!1186220 (= e!674509 (not e!674500))))

(declare-fun res!788662 () Bool)

(assert (=> b!1186220 (=> res!788662 e!674500)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1186220 (= res!788662 (bvsgt from!1455 i!673))))

(assert (=> b!1186220 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39240 0))(
  ( (Unit!39241) )
))
(declare-fun lt!538731 () Unit!39240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76602 (_ BitVec 64) (_ BitVec 32)) Unit!39240)

(assert (=> b!1186220 (= lt!538731 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!46703 () Bool)

(declare-fun mapRes!46703 () Bool)

(declare-fun tp!88876 () Bool)

(declare-fun e!674506 () Bool)

(assert (=> mapNonEmpty!46703 (= mapRes!46703 (and tp!88876 e!674506))))

(declare-datatypes ((V!45017 0))(
  ( (V!45018 (val!15015 Int)) )
))
(declare-datatypes ((ValueCell!14249 0))(
  ( (ValueCellFull!14249 (v!17654 V!45017)) (EmptyCell!14249) )
))
(declare-fun mapValue!46703 () ValueCell!14249)

(declare-fun mapRest!46703 () (Array (_ BitVec 32) ValueCell!14249))

(declare-fun mapKey!46703 () (_ BitVec 32))

(declare-datatypes ((array!76604 0))(
  ( (array!76605 (arr!36948 (Array (_ BitVec 32) ValueCell!14249)) (size!37485 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76604)

(assert (=> mapNonEmpty!46703 (= (arr!36948 _values!996) (store mapRest!46703 mapKey!46703 mapValue!46703))))

(declare-fun b!1186221 () Bool)

(declare-fun e!674501 () Bool)

(assert (=> b!1186221 (= e!674500 e!674501)))

(declare-fun res!788660 () Bool)

(assert (=> b!1186221 (=> res!788660 e!674501)))

(assert (=> b!1186221 (= res!788660 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45017)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19394 0))(
  ( (tuple2!19395 (_1!9707 (_ BitVec 64)) (_2!9707 V!45017)) )
))
(declare-datatypes ((List!26155 0))(
  ( (Nil!26152) (Cons!26151 (h!27360 tuple2!19394) (t!38541 List!26155)) )
))
(declare-datatypes ((ListLongMap!17375 0))(
  ( (ListLongMap!17376 (toList!8703 List!26155)) )
))
(declare-fun lt!538737 () ListLongMap!17375)

(declare-fun lt!538733 () array!76604)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45017)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!538746 () array!76602)

(declare-fun getCurrentListMapNoExtraKeys!5121 (array!76602 array!76604 (_ BitVec 32) (_ BitVec 32) V!45017 V!45017 (_ BitVec 32) Int) ListLongMap!17375)

(assert (=> b!1186221 (= lt!538737 (getCurrentListMapNoExtraKeys!5121 lt!538746 lt!538733 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!538728 () V!45017)

(assert (=> b!1186221 (= lt!538733 (array!76605 (store (arr!36948 _values!996) i!673 (ValueCellFull!14249 lt!538728)) (size!37485 _values!996)))))

(declare-fun dynLambda!3080 (Int (_ BitVec 64)) V!45017)

(assert (=> b!1186221 (= lt!538728 (dynLambda!3080 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!538739 () ListLongMap!17375)

(assert (=> b!1186221 (= lt!538739 (getCurrentListMapNoExtraKeys!5121 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46703 () Bool)

(assert (=> mapIsEmpty!46703 mapRes!46703))

(declare-fun b!1186222 () Bool)

(declare-fun res!788666 () Bool)

(declare-fun e!674502 () Bool)

(assert (=> b!1186222 (=> (not res!788666) (not e!674502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76602 (_ BitVec 32)) Bool)

(assert (=> b!1186222 (= res!788666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186223 () Bool)

(declare-fun e!674504 () Bool)

(declare-fun tp_is_empty!29917 () Bool)

(assert (=> b!1186223 (= e!674504 tp_is_empty!29917)))

(declare-fun b!1186224 () Bool)

(declare-fun res!788664 () Bool)

(assert (=> b!1186224 (=> (not res!788664) (not e!674502))))

(assert (=> b!1186224 (= res!788664 (and (= (size!37485 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37484 _keys!1208) (size!37485 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1186225 () Bool)

(declare-fun res!788654 () Bool)

(assert (=> b!1186225 (=> (not res!788654) (not e!674502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186225 (= res!788654 (validMask!0 mask!1564))))

(declare-fun b!1186226 () Bool)

(declare-fun res!788657 () Bool)

(assert (=> b!1186226 (=> (not res!788657) (not e!674502))))

(assert (=> b!1186226 (= res!788657 (= (select (arr!36947 _keys!1208) i!673) k!934))))

(declare-fun b!1186227 () Bool)

(declare-fun e!674508 () Unit!39240)

(declare-fun Unit!39242 () Unit!39240)

(assert (=> b!1186227 (= e!674508 Unit!39242)))

(declare-fun b!1186228 () Bool)

(declare-fun res!788665 () Bool)

(assert (=> b!1186228 (=> (not res!788665) (not e!674502))))

(declare-datatypes ((List!26156 0))(
  ( (Nil!26153) (Cons!26152 (h!27361 (_ BitVec 64)) (t!38542 List!26156)) )
))
(declare-fun arrayNoDuplicates!0 (array!76602 (_ BitVec 32) List!26156) Bool)

(assert (=> b!1186228 (= res!788665 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26153))))

(declare-fun b!1186229 () Bool)

(declare-fun res!788659 () Bool)

(assert (=> b!1186229 (=> (not res!788659) (not e!674502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186229 (= res!788659 (validKeyInArray!0 k!934))))

(declare-fun b!1186230 () Bool)

(declare-fun res!788656 () Bool)

(assert (=> b!1186230 (=> (not res!788656) (not e!674509))))

(assert (=> b!1186230 (= res!788656 (arrayNoDuplicates!0 lt!538746 #b00000000000000000000000000000000 Nil!26153))))

(declare-fun b!1186231 () Bool)

(declare-fun Unit!39243 () Unit!39240)

(assert (=> b!1186231 (= e!674508 Unit!39243)))

(declare-fun lt!538736 () Unit!39240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76602 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39240)

(assert (=> b!1186231 (= lt!538736 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1186231 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538730 () Unit!39240)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76602 (_ BitVec 32) (_ BitVec 32)) Unit!39240)

(assert (=> b!1186231 (= lt!538730 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1186231 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26153)))

(declare-fun lt!538729 () Unit!39240)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76602 (_ BitVec 64) (_ BitVec 32) List!26156) Unit!39240)

(assert (=> b!1186231 (= lt!538729 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26153))))

(assert (=> b!1186231 false))

(declare-fun b!1186232 () Bool)

(declare-fun e!674499 () Bool)

(assert (=> b!1186232 (= e!674499 true)))

(declare-fun lt!538735 () ListLongMap!17375)

(declare-fun lt!538741 () ListLongMap!17375)

(declare-fun -!1688 (ListLongMap!17375 (_ BitVec 64)) ListLongMap!17375)

(assert (=> b!1186232 (= (-!1688 lt!538735 k!934) lt!538741)))

(declare-fun lt!538744 () V!45017)

(declare-fun lt!538742 () ListLongMap!17375)

(declare-fun lt!538738 () Unit!39240)

(declare-fun addRemoveCommutativeForDiffKeys!197 (ListLongMap!17375 (_ BitVec 64) V!45017 (_ BitVec 64)) Unit!39240)

(assert (=> b!1186232 (= lt!538738 (addRemoveCommutativeForDiffKeys!197 lt!538742 (select (arr!36947 _keys!1208) from!1455) lt!538744 k!934))))

(declare-fun lt!538732 () ListLongMap!17375)

(declare-fun lt!538734 () ListLongMap!17375)

(assert (=> b!1186232 (and (= lt!538739 lt!538735) (= lt!538732 lt!538734))))

(declare-fun lt!538740 () tuple2!19394)

(declare-fun +!3907 (ListLongMap!17375 tuple2!19394) ListLongMap!17375)

(assert (=> b!1186232 (= lt!538735 (+!3907 lt!538742 lt!538740))))

(assert (=> b!1186232 (not (= (select (arr!36947 _keys!1208) from!1455) k!934))))

(declare-fun lt!538745 () Unit!39240)

(assert (=> b!1186232 (= lt!538745 e!674508)))

(declare-fun c!117152 () Bool)

(assert (=> b!1186232 (= c!117152 (= (select (arr!36947 _keys!1208) from!1455) k!934))))

(declare-fun e!674503 () Bool)

(assert (=> b!1186232 e!674503))

(declare-fun res!788658 () Bool)

(assert (=> b!1186232 (=> (not res!788658) (not e!674503))))

(assert (=> b!1186232 (= res!788658 (= lt!538737 lt!538741))))

(assert (=> b!1186232 (= lt!538741 (+!3907 lt!538732 lt!538740))))

(assert (=> b!1186232 (= lt!538740 (tuple2!19395 (select (arr!36947 _keys!1208) from!1455) lt!538744))))

(declare-fun get!18959 (ValueCell!14249 V!45017) V!45017)

(assert (=> b!1186232 (= lt!538744 (get!18959 (select (arr!36948 _values!996) from!1455) lt!538728))))

(declare-fun b!1186233 () Bool)

(assert (=> b!1186233 (= e!674502 e!674509)))

(declare-fun res!788661 () Bool)

(assert (=> b!1186233 (=> (not res!788661) (not e!674509))))

(assert (=> b!1186233 (= res!788661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538746 mask!1564))))

(assert (=> b!1186233 (= lt!538746 (array!76603 (store (arr!36947 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37484 _keys!1208)))))

(declare-fun res!788667 () Bool)

(assert (=> start!99844 (=> (not res!788667) (not e!674502))))

(assert (=> start!99844 (= res!788667 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37484 _keys!1208))))))

(assert (=> start!99844 e!674502))

(assert (=> start!99844 tp_is_empty!29917))

(declare-fun array_inv!28074 (array!76602) Bool)

(assert (=> start!99844 (array_inv!28074 _keys!1208)))

(assert (=> start!99844 true))

(assert (=> start!99844 tp!88875))

(declare-fun e!674505 () Bool)

(declare-fun array_inv!28075 (array!76604) Bool)

(assert (=> start!99844 (and (array_inv!28075 _values!996) e!674505)))

(declare-fun b!1186234 () Bool)

(assert (=> b!1186234 (= e!674503 e!674507)))

(declare-fun res!788655 () Bool)

(assert (=> b!1186234 (=> res!788655 e!674507)))

(assert (=> b!1186234 (= res!788655 (not (= (select (arr!36947 _keys!1208) from!1455) k!934)))))

(declare-fun b!1186235 () Bool)

(declare-fun res!788663 () Bool)

(assert (=> b!1186235 (=> (not res!788663) (not e!674502))))

(assert (=> b!1186235 (= res!788663 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37484 _keys!1208))))))

(declare-fun b!1186236 () Bool)

(assert (=> b!1186236 (= e!674505 (and e!674504 mapRes!46703))))

(declare-fun condMapEmpty!46703 () Bool)

(declare-fun mapDefault!46703 () ValueCell!14249)

