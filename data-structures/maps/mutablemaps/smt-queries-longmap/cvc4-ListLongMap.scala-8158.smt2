; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99854 () Bool)

(assert start!99854)

(declare-fun b_free!25397 () Bool)

(declare-fun b_next!25397 () Bool)

(assert (=> start!99854 (= b_free!25397 (not b_next!25397))))

(declare-fun tp!88906 () Bool)

(declare-fun b_and!41675 () Bool)

(assert (=> start!99854 (= tp!88906 b_and!41675)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1186529 () Bool)

(declare-fun e!674687 () Bool)

(declare-datatypes ((array!76622 0))(
  ( (array!76623 (arr!36957 (Array (_ BitVec 32) (_ BitVec 64))) (size!37494 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76622)

(declare-fun arrayContainsKey!0 (array!76622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186529 (= e!674687 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1186530 () Bool)

(declare-fun e!674679 () Bool)

(declare-fun e!674683 () Bool)

(assert (=> b!1186530 (= e!674679 e!674683)))

(declare-fun res!788886 () Bool)

(assert (=> b!1186530 (=> res!788886 e!674683)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186530 (= res!788886 (not (validKeyInArray!0 (select (arr!36957 _keys!1208) from!1455))))))

(declare-datatypes ((V!45029 0))(
  ( (V!45030 (val!15020 Int)) )
))
(declare-datatypes ((tuple2!19404 0))(
  ( (tuple2!19405 (_1!9712 (_ BitVec 64)) (_2!9712 V!45029)) )
))
(declare-datatypes ((List!26164 0))(
  ( (Nil!26161) (Cons!26160 (h!27369 tuple2!19404) (t!38560 List!26164)) )
))
(declare-datatypes ((ListLongMap!17385 0))(
  ( (ListLongMap!17386 (toList!8708 List!26164)) )
))
(declare-fun lt!539017 () ListLongMap!17385)

(declare-fun lt!539019 () ListLongMap!17385)

(assert (=> b!1186530 (= lt!539017 lt!539019)))

(declare-fun lt!539029 () ListLongMap!17385)

(declare-fun -!1693 (ListLongMap!17385 (_ BitVec 64)) ListLongMap!17385)

(assert (=> b!1186530 (= lt!539019 (-!1693 lt!539029 k!934))))

(declare-fun zeroValue!944 () V!45029)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14254 0))(
  ( (ValueCellFull!14254 (v!17659 V!45029)) (EmptyCell!14254) )
))
(declare-datatypes ((array!76624 0))(
  ( (array!76625 (arr!36958 (Array (_ BitVec 32) ValueCell!14254)) (size!37495 (_ BitVec 32))) )
))
(declare-fun lt!539022 () array!76624)

(declare-fun minValue!944 () V!45029)

(declare-fun lt!539014 () array!76622)

(declare-fun getCurrentListMapNoExtraKeys!5125 (array!76622 array!76624 (_ BitVec 32) (_ BitVec 32) V!45029 V!45029 (_ BitVec 32) Int) ListLongMap!17385)

(assert (=> b!1186530 (= lt!539017 (getCurrentListMapNoExtraKeys!5125 lt!539014 lt!539022 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76624)

(assert (=> b!1186530 (= lt!539029 (getCurrentListMapNoExtraKeys!5125 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39257 0))(
  ( (Unit!39258) )
))
(declare-fun lt!539020 () Unit!39257)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!904 (array!76622 array!76624 (_ BitVec 32) (_ BitVec 32) V!45029 V!45029 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39257)

(assert (=> b!1186530 (= lt!539020 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!904 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186531 () Bool)

(declare-fun res!788884 () Bool)

(declare-fun e!674685 () Bool)

(assert (=> b!1186531 (=> (not res!788884) (not e!674685))))

(declare-datatypes ((List!26165 0))(
  ( (Nil!26162) (Cons!26161 (h!27370 (_ BitVec 64)) (t!38561 List!26165)) )
))
(declare-fun arrayNoDuplicates!0 (array!76622 (_ BitVec 32) List!26165) Bool)

(assert (=> b!1186531 (= res!788884 (arrayNoDuplicates!0 lt!539014 #b00000000000000000000000000000000 Nil!26162))))

(declare-fun mapNonEmpty!46718 () Bool)

(declare-fun mapRes!46718 () Bool)

(declare-fun tp!88905 () Bool)

(declare-fun e!674689 () Bool)

(assert (=> mapNonEmpty!46718 (= mapRes!46718 (and tp!88905 e!674689))))

(declare-fun mapValue!46718 () ValueCell!14254)

(declare-fun mapKey!46718 () (_ BitVec 32))

(declare-fun mapRest!46718 () (Array (_ BitVec 32) ValueCell!14254))

(assert (=> mapNonEmpty!46718 (= (arr!36958 _values!996) (store mapRest!46718 mapKey!46718 mapValue!46718))))

(declare-fun res!788881 () Bool)

(declare-fun e!674688 () Bool)

(assert (=> start!99854 (=> (not res!788881) (not e!674688))))

(assert (=> start!99854 (= res!788881 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37494 _keys!1208))))))

(assert (=> start!99854 e!674688))

(declare-fun tp_is_empty!29927 () Bool)

(assert (=> start!99854 tp_is_empty!29927))

(declare-fun array_inv!28084 (array!76622) Bool)

(assert (=> start!99854 (array_inv!28084 _keys!1208)))

(assert (=> start!99854 true))

(assert (=> start!99854 tp!88906))

(declare-fun e!674678 () Bool)

(declare-fun array_inv!28085 (array!76624) Bool)

(assert (=> start!99854 (and (array_inv!28085 _values!996) e!674678)))

(declare-fun b!1186532 () Bool)

(declare-fun res!788879 () Bool)

(assert (=> b!1186532 (=> (not res!788879) (not e!674688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186532 (= res!788879 (validMask!0 mask!1564))))

(declare-fun b!1186533 () Bool)

(declare-fun res!788888 () Bool)

(assert (=> b!1186533 (=> (not res!788888) (not e!674688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76622 (_ BitVec 32)) Bool)

(assert (=> b!1186533 (= res!788888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186534 () Bool)

(declare-fun e!674684 () Bool)

(assert (=> b!1186534 (= e!674685 (not e!674684))))

(declare-fun res!788890 () Bool)

(assert (=> b!1186534 (=> res!788890 e!674684)))

(assert (=> b!1186534 (= res!788890 (bvsgt from!1455 i!673))))

(assert (=> b!1186534 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!539030 () Unit!39257)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76622 (_ BitVec 64) (_ BitVec 32)) Unit!39257)

(assert (=> b!1186534 (= lt!539030 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1186535 () Bool)

(declare-fun res!788885 () Bool)

(assert (=> b!1186535 (=> (not res!788885) (not e!674688))))

(assert (=> b!1186535 (= res!788885 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37494 _keys!1208))))))

(declare-fun b!1186536 () Bool)

(assert (=> b!1186536 (= e!674688 e!674685)))

(declare-fun res!788880 () Bool)

(assert (=> b!1186536 (=> (not res!788880) (not e!674685))))

(assert (=> b!1186536 (= res!788880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539014 mask!1564))))

(assert (=> b!1186536 (= lt!539014 (array!76623 (store (arr!36957 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37494 _keys!1208)))))

(declare-fun b!1186537 () Bool)

(declare-fun res!788883 () Bool)

(assert (=> b!1186537 (=> (not res!788883) (not e!674688))))

(assert (=> b!1186537 (= res!788883 (= (select (arr!36957 _keys!1208) i!673) k!934))))

(declare-fun b!1186538 () Bool)

(declare-fun e!674682 () Bool)

(assert (=> b!1186538 (= e!674682 tp_is_empty!29927)))

(declare-fun mapIsEmpty!46718 () Bool)

(assert (=> mapIsEmpty!46718 mapRes!46718))

(declare-fun b!1186539 () Bool)

(declare-fun res!788882 () Bool)

(assert (=> b!1186539 (=> (not res!788882) (not e!674688))))

(assert (=> b!1186539 (= res!788882 (and (= (size!37495 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37494 _keys!1208) (size!37495 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1186540 () Bool)

(declare-fun e!674680 () Unit!39257)

(declare-fun Unit!39259 () Unit!39257)

(assert (=> b!1186540 (= e!674680 Unit!39259)))

(declare-fun lt!539025 () Unit!39257)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76622 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39257)

(assert (=> b!1186540 (= lt!539025 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1186540 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539015 () Unit!39257)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76622 (_ BitVec 32) (_ BitVec 32)) Unit!39257)

(assert (=> b!1186540 (= lt!539015 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1186540 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26162)))

(declare-fun lt!539027 () Unit!39257)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76622 (_ BitVec 64) (_ BitVec 32) List!26165) Unit!39257)

(assert (=> b!1186540 (= lt!539027 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26162))))

(assert (=> b!1186540 false))

(declare-fun b!1186541 () Bool)

(declare-fun e!674686 () Bool)

(assert (=> b!1186541 (= e!674686 e!674687)))

(declare-fun res!788889 () Bool)

(assert (=> b!1186541 (=> res!788889 e!674687)))

(assert (=> b!1186541 (= res!788889 (not (= (select (arr!36957 _keys!1208) from!1455) k!934)))))

(declare-fun b!1186542 () Bool)

(declare-fun res!788887 () Bool)

(assert (=> b!1186542 (=> (not res!788887) (not e!674688))))

(assert (=> b!1186542 (= res!788887 (validKeyInArray!0 k!934))))

(declare-fun b!1186543 () Bool)

(assert (=> b!1186543 (= e!674689 tp_is_empty!29927)))

(declare-fun b!1186544 () Bool)

(assert (=> b!1186544 (= e!674683 true)))

(declare-fun lt!539016 () ListLongMap!17385)

(declare-fun lt!539021 () ListLongMap!17385)

(assert (=> b!1186544 (= (-!1693 lt!539016 k!934) lt!539021)))

(declare-fun lt!539023 () V!45029)

(declare-fun lt!539031 () Unit!39257)

(declare-fun addRemoveCommutativeForDiffKeys!202 (ListLongMap!17385 (_ BitVec 64) V!45029 (_ BitVec 64)) Unit!39257)

(assert (=> b!1186544 (= lt!539031 (addRemoveCommutativeForDiffKeys!202 lt!539029 (select (arr!36957 _keys!1208) from!1455) lt!539023 k!934))))

(declare-fun lt!539013 () ListLongMap!17385)

(assert (=> b!1186544 (and (= lt!539013 lt!539016) (= lt!539019 lt!539017))))

(declare-fun lt!539018 () tuple2!19404)

(declare-fun +!3912 (ListLongMap!17385 tuple2!19404) ListLongMap!17385)

(assert (=> b!1186544 (= lt!539016 (+!3912 lt!539029 lt!539018))))

(assert (=> b!1186544 (not (= (select (arr!36957 _keys!1208) from!1455) k!934))))

(declare-fun lt!539028 () Unit!39257)

(assert (=> b!1186544 (= lt!539028 e!674680)))

(declare-fun c!117167 () Bool)

(assert (=> b!1186544 (= c!117167 (= (select (arr!36957 _keys!1208) from!1455) k!934))))

(assert (=> b!1186544 e!674686))

(declare-fun res!788892 () Bool)

(assert (=> b!1186544 (=> (not res!788892) (not e!674686))))

(declare-fun lt!539024 () ListLongMap!17385)

(assert (=> b!1186544 (= res!788892 (= lt!539024 lt!539021))))

(assert (=> b!1186544 (= lt!539021 (+!3912 lt!539019 lt!539018))))

(assert (=> b!1186544 (= lt!539018 (tuple2!19405 (select (arr!36957 _keys!1208) from!1455) lt!539023))))

(declare-fun lt!539026 () V!45029)

(declare-fun get!18966 (ValueCell!14254 V!45029) V!45029)

(assert (=> b!1186544 (= lt!539023 (get!18966 (select (arr!36958 _values!996) from!1455) lt!539026))))

(declare-fun b!1186545 () Bool)

(declare-fun res!788891 () Bool)

(assert (=> b!1186545 (=> (not res!788891) (not e!674688))))

(assert (=> b!1186545 (= res!788891 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26162))))

(declare-fun b!1186546 () Bool)

(assert (=> b!1186546 (= e!674678 (and e!674682 mapRes!46718))))

(declare-fun condMapEmpty!46718 () Bool)

(declare-fun mapDefault!46718 () ValueCell!14254)

