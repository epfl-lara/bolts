; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101784 () Bool)

(assert start!101784)

(declare-fun b_free!26437 () Bool)

(declare-fun b_next!26437 () Bool)

(assert (=> start!101784 (= b_free!26437 (not b_next!26437))))

(declare-fun tp!92357 () Bool)

(declare-fun b_and!44145 () Bool)

(assert (=> start!101784 (= tp!92357 b_and!44145)))

(declare-fun b!1224933 () Bool)

(declare-fun res!814098 () Bool)

(declare-fun e!695754 () Bool)

(assert (=> b!1224933 (=> (not res!814098) (not e!695754))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224933 (= res!814098 (validMask!0 mask!1564))))

(declare-fun b!1224935 () Bool)

(declare-fun res!814084 () Bool)

(declare-fun e!695756 () Bool)

(assert (=> b!1224935 (=> (not res!814084) (not e!695756))))

(declare-datatypes ((array!79040 0))(
  ( (array!79041 (arr!38143 (Array (_ BitVec 32) (_ BitVec 64))) (size!38680 (_ BitVec 32))) )
))
(declare-fun lt!557955 () array!79040)

(declare-datatypes ((List!27101 0))(
  ( (Nil!27098) (Cons!27097 (h!28306 (_ BitVec 64)) (t!40525 List!27101)) )
))
(declare-fun arrayNoDuplicates!0 (array!79040 (_ BitVec 32) List!27101) Bool)

(assert (=> b!1224935 (= res!814084 (arrayNoDuplicates!0 lt!557955 #b00000000000000000000000000000000 Nil!27098))))

(declare-fun b!1224936 () Bool)

(declare-fun res!814094 () Bool)

(assert (=> b!1224936 (=> (not res!814094) (not e!695754))))

(declare-fun _keys!1208 () array!79040)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79040 (_ BitVec 32)) Bool)

(assert (=> b!1224936 (= res!814094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224937 () Bool)

(declare-fun res!814096 () Bool)

(assert (=> b!1224937 (=> (not res!814096) (not e!695754))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1224937 (= res!814096 (= (select (arr!38143 _keys!1208) i!673) k!934))))

(declare-fun b!1224938 () Bool)

(declare-fun e!695752 () Bool)

(assert (=> b!1224938 (= e!695752 true)))

(declare-datatypes ((V!46649 0))(
  ( (V!46650 (val!15627 Int)) )
))
(declare-datatypes ((tuple2!20290 0))(
  ( (tuple2!20291 (_1!10155 (_ BitVec 64)) (_2!10155 V!46649)) )
))
(declare-datatypes ((List!27102 0))(
  ( (Nil!27099) (Cons!27098 (h!28307 tuple2!20290) (t!40526 List!27102)) )
))
(declare-datatypes ((ListLongMap!18271 0))(
  ( (ListLongMap!18272 (toList!9151 List!27102)) )
))
(declare-fun lt!557958 () ListLongMap!18271)

(declare-fun lt!557957 () ListLongMap!18271)

(declare-fun -!1987 (ListLongMap!18271 (_ BitVec 64)) ListLongMap!18271)

(assert (=> b!1224938 (= (-!1987 lt!557958 k!934) lt!557957)))

(declare-fun lt!557945 () V!46649)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!557941 () ListLongMap!18271)

(declare-datatypes ((Unit!40530 0))(
  ( (Unit!40531) )
))
(declare-fun lt!557951 () Unit!40530)

(declare-fun addRemoveCommutativeForDiffKeys!227 (ListLongMap!18271 (_ BitVec 64) V!46649 (_ BitVec 64)) Unit!40530)

(assert (=> b!1224938 (= lt!557951 (addRemoveCommutativeForDiffKeys!227 lt!557941 (select (arr!38143 _keys!1208) from!1455) lt!557945 k!934))))

(declare-fun lt!557952 () ListLongMap!18271)

(declare-fun lt!557949 () ListLongMap!18271)

(declare-fun lt!557959 () ListLongMap!18271)

(assert (=> b!1224938 (and (= lt!557952 lt!557958) (= lt!557949 lt!557959))))

(declare-fun lt!557947 () tuple2!20290)

(declare-fun +!4112 (ListLongMap!18271 tuple2!20290) ListLongMap!18271)

(assert (=> b!1224938 (= lt!557958 (+!4112 lt!557941 lt!557947))))

(assert (=> b!1224938 (not (= (select (arr!38143 _keys!1208) from!1455) k!934))))

(declare-fun lt!557943 () Unit!40530)

(declare-fun e!695749 () Unit!40530)

(assert (=> b!1224938 (= lt!557943 e!695749)))

(declare-fun c!120420 () Bool)

(assert (=> b!1224938 (= c!120420 (= (select (arr!38143 _keys!1208) from!1455) k!934))))

(declare-fun e!695758 () Bool)

(assert (=> b!1224938 e!695758))

(declare-fun res!814086 () Bool)

(assert (=> b!1224938 (=> (not res!814086) (not e!695758))))

(declare-fun lt!557942 () ListLongMap!18271)

(assert (=> b!1224938 (= res!814086 (= lt!557942 lt!557957))))

(assert (=> b!1224938 (= lt!557957 (+!4112 lt!557949 lt!557947))))

(assert (=> b!1224938 (= lt!557947 (tuple2!20291 (select (arr!38143 _keys!1208) from!1455) lt!557945))))

(declare-datatypes ((ValueCell!14861 0))(
  ( (ValueCellFull!14861 (v!18290 V!46649)) (EmptyCell!14861) )
))
(declare-datatypes ((array!79042 0))(
  ( (array!79043 (arr!38144 (Array (_ BitVec 32) ValueCell!14861)) (size!38681 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79042)

(declare-fun lt!557954 () V!46649)

(declare-fun get!19530 (ValueCell!14861 V!46649) V!46649)

(assert (=> b!1224938 (= lt!557945 (get!19530 (select (arr!38144 _values!996) from!1455) lt!557954))))

(declare-fun b!1224939 () Bool)

(declare-fun res!814092 () Bool)

(assert (=> b!1224939 (=> (not res!814092) (not e!695754))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1224939 (= res!814092 (and (= (size!38681 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38680 _keys!1208) (size!38681 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224940 () Bool)

(declare-fun e!695759 () Bool)

(assert (=> b!1224940 (= e!695758 e!695759)))

(declare-fun res!814090 () Bool)

(assert (=> b!1224940 (=> res!814090 e!695759)))

(assert (=> b!1224940 (= res!814090 (not (= (select (arr!38143 _keys!1208) from!1455) k!934)))))

(declare-fun b!1224941 () Bool)

(declare-fun res!814091 () Bool)

(assert (=> b!1224941 (=> (not res!814091) (not e!695754))))

(assert (=> b!1224941 (= res!814091 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27098))))

(declare-fun res!814093 () Bool)

(assert (=> start!101784 (=> (not res!814093) (not e!695754))))

(assert (=> start!101784 (= res!814093 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38680 _keys!1208))))))

(assert (=> start!101784 e!695754))

(declare-fun tp_is_empty!31141 () Bool)

(assert (=> start!101784 tp_is_empty!31141))

(declare-fun array_inv!28932 (array!79040) Bool)

(assert (=> start!101784 (array_inv!28932 _keys!1208)))

(assert (=> start!101784 true))

(assert (=> start!101784 tp!92357))

(declare-fun e!695755 () Bool)

(declare-fun array_inv!28933 (array!79042) Bool)

(assert (=> start!101784 (and (array_inv!28933 _values!996) e!695755)))

(declare-fun b!1224934 () Bool)

(declare-fun e!695757 () Bool)

(assert (=> b!1224934 (= e!695757 tp_is_empty!31141)))

(declare-fun mapNonEmpty!48610 () Bool)

(declare-fun mapRes!48610 () Bool)

(declare-fun tp!92358 () Bool)

(declare-fun e!695751 () Bool)

(assert (=> mapNonEmpty!48610 (= mapRes!48610 (and tp!92358 e!695751))))

(declare-fun mapKey!48610 () (_ BitVec 32))

(declare-fun mapRest!48610 () (Array (_ BitVec 32) ValueCell!14861))

(declare-fun mapValue!48610 () ValueCell!14861)

(assert (=> mapNonEmpty!48610 (= (arr!38144 _values!996) (store mapRest!48610 mapKey!48610 mapValue!48610))))

(declare-fun b!1224942 () Bool)

(declare-fun res!814095 () Bool)

(assert (=> b!1224942 (=> (not res!814095) (not e!695754))))

(assert (=> b!1224942 (= res!814095 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38680 _keys!1208))))))

(declare-fun b!1224943 () Bool)

(assert (=> b!1224943 (= e!695754 e!695756)))

(declare-fun res!814097 () Bool)

(assert (=> b!1224943 (=> (not res!814097) (not e!695756))))

(assert (=> b!1224943 (= res!814097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557955 mask!1564))))

(assert (=> b!1224943 (= lt!557955 (array!79041 (store (arr!38143 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38680 _keys!1208)))))

(declare-fun b!1224944 () Bool)

(declare-fun e!695753 () Bool)

(declare-fun e!695750 () Bool)

(assert (=> b!1224944 (= e!695753 e!695750)))

(declare-fun res!814088 () Bool)

(assert (=> b!1224944 (=> res!814088 e!695750)))

(assert (=> b!1224944 (= res!814088 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46649)

(declare-fun lt!557946 () array!79042)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46649)

(declare-fun getCurrentListMapNoExtraKeys!5548 (array!79040 array!79042 (_ BitVec 32) (_ BitVec 32) V!46649 V!46649 (_ BitVec 32) Int) ListLongMap!18271)

(assert (=> b!1224944 (= lt!557942 (getCurrentListMapNoExtraKeys!5548 lt!557955 lt!557946 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1224944 (= lt!557946 (array!79043 (store (arr!38144 _values!996) i!673 (ValueCellFull!14861 lt!557954)) (size!38681 _values!996)))))

(declare-fun dynLambda!3442 (Int (_ BitVec 64)) V!46649)

(assert (=> b!1224944 (= lt!557954 (dynLambda!3442 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1224944 (= lt!557952 (getCurrentListMapNoExtraKeys!5548 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224945 () Bool)

(assert (=> b!1224945 (= e!695750 e!695752)))

(declare-fun res!814087 () Bool)

(assert (=> b!1224945 (=> res!814087 e!695752)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224945 (= res!814087 (not (validKeyInArray!0 (select (arr!38143 _keys!1208) from!1455))))))

(assert (=> b!1224945 (= lt!557959 lt!557949)))

(assert (=> b!1224945 (= lt!557949 (-!1987 lt!557941 k!934))))

(assert (=> b!1224945 (= lt!557959 (getCurrentListMapNoExtraKeys!5548 lt!557955 lt!557946 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224945 (= lt!557941 (getCurrentListMapNoExtraKeys!5548 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557956 () Unit!40530)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1189 (array!79040 array!79042 (_ BitVec 32) (_ BitVec 32) V!46649 V!46649 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40530)

(assert (=> b!1224945 (= lt!557956 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1189 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224946 () Bool)

(declare-fun res!814085 () Bool)

(assert (=> b!1224946 (=> (not res!814085) (not e!695754))))

(assert (=> b!1224946 (= res!814085 (validKeyInArray!0 k!934))))

(declare-fun b!1224947 () Bool)

(declare-fun Unit!40532 () Unit!40530)

(assert (=> b!1224947 (= e!695749 Unit!40532)))

(declare-fun lt!557944 () Unit!40530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79040 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40530)

(assert (=> b!1224947 (= lt!557944 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!79040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224947 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557948 () Unit!40530)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79040 (_ BitVec 32) (_ BitVec 32)) Unit!40530)

(assert (=> b!1224947 (= lt!557948 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224947 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27098)))

(declare-fun lt!557953 () Unit!40530)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79040 (_ BitVec 64) (_ BitVec 32) List!27101) Unit!40530)

(assert (=> b!1224947 (= lt!557953 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27098))))

(assert (=> b!1224947 false))

(declare-fun b!1224948 () Bool)

(declare-fun Unit!40533 () Unit!40530)

(assert (=> b!1224948 (= e!695749 Unit!40533)))

(declare-fun b!1224949 () Bool)

(assert (=> b!1224949 (= e!695755 (and e!695757 mapRes!48610))))

(declare-fun condMapEmpty!48610 () Bool)

(declare-fun mapDefault!48610 () ValueCell!14861)

