; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101788 () Bool)

(assert start!101788)

(declare-fun b_free!26441 () Bool)

(declare-fun b_next!26441 () Bool)

(assert (=> start!101788 (= b_free!26441 (not b_next!26441))))

(declare-fun tp!92370 () Bool)

(declare-fun b_and!44153 () Bool)

(assert (=> start!101788 (= tp!92370 b_and!44153)))

(declare-fun b!1225057 () Bool)

(declare-fun e!695829 () Bool)

(declare-fun tp_is_empty!31145 () Bool)

(assert (=> b!1225057 (= e!695829 tp_is_empty!31145)))

(declare-fun mapNonEmpty!48616 () Bool)

(declare-fun mapRes!48616 () Bool)

(declare-fun tp!92369 () Bool)

(assert (=> mapNonEmpty!48616 (= mapRes!48616 (and tp!92369 e!695829))))

(declare-datatypes ((V!46653 0))(
  ( (V!46654 (val!15629 Int)) )
))
(declare-datatypes ((ValueCell!14863 0))(
  ( (ValueCellFull!14863 (v!18292 V!46653)) (EmptyCell!14863) )
))
(declare-fun mapValue!48616 () ValueCell!14863)

(declare-fun mapRest!48616 () (Array (_ BitVec 32) ValueCell!14863))

(declare-datatypes ((array!79048 0))(
  ( (array!79049 (arr!38147 (Array (_ BitVec 32) ValueCell!14863)) (size!38684 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79048)

(declare-fun mapKey!48616 () (_ BitVec 32))

(assert (=> mapNonEmpty!48616 (= (arr!38147 _values!996) (store mapRest!48616 mapKey!48616 mapValue!48616))))

(declare-fun b!1225058 () Bool)

(declare-fun e!695821 () Bool)

(declare-fun e!695831 () Bool)

(assert (=> b!1225058 (= e!695821 e!695831)))

(declare-fun res!814179 () Bool)

(assert (=> b!1225058 (=> res!814179 e!695831)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225058 (= res!814179 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46653)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!558059 () array!79048)

(declare-datatypes ((array!79050 0))(
  ( (array!79051 (arr!38148 (Array (_ BitVec 32) (_ BitVec 64))) (size!38685 (_ BitVec 32))) )
))
(declare-fun lt!558072 () array!79050)

(declare-fun minValue!944 () V!46653)

(declare-datatypes ((tuple2!20294 0))(
  ( (tuple2!20295 (_1!10157 (_ BitVec 64)) (_2!10157 V!46653)) )
))
(declare-datatypes ((List!27105 0))(
  ( (Nil!27102) (Cons!27101 (h!28310 tuple2!20294) (t!40533 List!27105)) )
))
(declare-datatypes ((ListLongMap!18275 0))(
  ( (ListLongMap!18276 (toList!9153 List!27105)) )
))
(declare-fun lt!558066 () ListLongMap!18275)

(declare-fun getCurrentListMapNoExtraKeys!5550 (array!79050 array!79048 (_ BitVec 32) (_ BitVec 32) V!46653 V!46653 (_ BitVec 32) Int) ListLongMap!18275)

(assert (=> b!1225058 (= lt!558066 (getCurrentListMapNoExtraKeys!5550 lt!558072 lt!558059 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!558073 () V!46653)

(assert (=> b!1225058 (= lt!558059 (array!79049 (store (arr!38147 _values!996) i!673 (ValueCellFull!14863 lt!558073)) (size!38684 _values!996)))))

(declare-fun dynLambda!3444 (Int (_ BitVec 64)) V!46653)

(assert (=> b!1225058 (= lt!558073 (dynLambda!3444 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!79050)

(declare-fun lt!558068 () ListLongMap!18275)

(assert (=> b!1225058 (= lt!558068 (getCurrentListMapNoExtraKeys!5550 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225059 () Bool)

(declare-fun e!695825 () Bool)

(assert (=> b!1225059 (= e!695825 (not e!695821))))

(declare-fun res!814187 () Bool)

(assert (=> b!1225059 (=> res!814187 e!695821)))

(assert (=> b!1225059 (= res!814187 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225059 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40538 0))(
  ( (Unit!40539) )
))
(declare-fun lt!558069 () Unit!40538)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79050 (_ BitVec 64) (_ BitVec 32)) Unit!40538)

(assert (=> b!1225059 (= lt!558069 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!48616 () Bool)

(assert (=> mapIsEmpty!48616 mapRes!48616))

(declare-fun b!1225060 () Bool)

(declare-fun res!814185 () Bool)

(declare-fun e!695824 () Bool)

(assert (=> b!1225060 (=> (not res!814185) (not e!695824))))

(assert (=> b!1225060 (= res!814185 (= (select (arr!38148 _keys!1208) i!673) k!934))))

(declare-fun b!1225061 () Bool)

(declare-fun res!814183 () Bool)

(assert (=> b!1225061 (=> (not res!814183) (not e!695825))))

(declare-datatypes ((List!27106 0))(
  ( (Nil!27103) (Cons!27102 (h!28311 (_ BitVec 64)) (t!40534 List!27106)) )
))
(declare-fun arrayNoDuplicates!0 (array!79050 (_ BitVec 32) List!27106) Bool)

(assert (=> b!1225061 (= res!814183 (arrayNoDuplicates!0 lt!558072 #b00000000000000000000000000000000 Nil!27103))))

(declare-fun b!1225062 () Bool)

(declare-fun e!695828 () Bool)

(assert (=> b!1225062 (= e!695831 e!695828)))

(declare-fun res!814188 () Bool)

(assert (=> b!1225062 (=> res!814188 e!695828)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225062 (= res!814188 (not (validKeyInArray!0 (select (arr!38148 _keys!1208) from!1455))))))

(declare-fun lt!558063 () ListLongMap!18275)

(declare-fun lt!558058 () ListLongMap!18275)

(assert (=> b!1225062 (= lt!558063 lt!558058)))

(declare-fun lt!558065 () ListLongMap!18275)

(declare-fun -!1989 (ListLongMap!18275 (_ BitVec 64)) ListLongMap!18275)

(assert (=> b!1225062 (= lt!558058 (-!1989 lt!558065 k!934))))

(assert (=> b!1225062 (= lt!558063 (getCurrentListMapNoExtraKeys!5550 lt!558072 lt!558059 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1225062 (= lt!558065 (getCurrentListMapNoExtraKeys!5550 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!558055 () Unit!40538)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1191 (array!79050 array!79048 (_ BitVec 32) (_ BitVec 32) V!46653 V!46653 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40538)

(assert (=> b!1225062 (= lt!558055 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1191 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225063 () Bool)

(assert (=> b!1225063 (= e!695828 true)))

(declare-fun lt!558057 () ListLongMap!18275)

(declare-fun lt!558064 () ListLongMap!18275)

(assert (=> b!1225063 (= (-!1989 lt!558057 k!934) lt!558064)))

(declare-fun lt!558071 () Unit!40538)

(declare-fun lt!558061 () V!46653)

(declare-fun addRemoveCommutativeForDiffKeys!229 (ListLongMap!18275 (_ BitVec 64) V!46653 (_ BitVec 64)) Unit!40538)

(assert (=> b!1225063 (= lt!558071 (addRemoveCommutativeForDiffKeys!229 lt!558065 (select (arr!38148 _keys!1208) from!1455) lt!558061 k!934))))

(assert (=> b!1225063 (and (= lt!558068 lt!558057) (= lt!558058 lt!558063))))

(declare-fun lt!558070 () tuple2!20294)

(declare-fun +!4114 (ListLongMap!18275 tuple2!20294) ListLongMap!18275)

(assert (=> b!1225063 (= lt!558057 (+!4114 lt!558065 lt!558070))))

(assert (=> b!1225063 (not (= (select (arr!38148 _keys!1208) from!1455) k!934))))

(declare-fun lt!558067 () Unit!40538)

(declare-fun e!695822 () Unit!40538)

(assert (=> b!1225063 (= lt!558067 e!695822)))

(declare-fun c!120426 () Bool)

(assert (=> b!1225063 (= c!120426 (= (select (arr!38148 _keys!1208) from!1455) k!934))))

(declare-fun e!695826 () Bool)

(assert (=> b!1225063 e!695826))

(declare-fun res!814180 () Bool)

(assert (=> b!1225063 (=> (not res!814180) (not e!695826))))

(assert (=> b!1225063 (= res!814180 (= lt!558066 lt!558064))))

(assert (=> b!1225063 (= lt!558064 (+!4114 lt!558058 lt!558070))))

(assert (=> b!1225063 (= lt!558070 (tuple2!20295 (select (arr!38148 _keys!1208) from!1455) lt!558061))))

(declare-fun get!19532 (ValueCell!14863 V!46653) V!46653)

(assert (=> b!1225063 (= lt!558061 (get!19532 (select (arr!38147 _values!996) from!1455) lt!558073))))

(declare-fun b!1225064 () Bool)

(declare-fun res!814178 () Bool)

(assert (=> b!1225064 (=> (not res!814178) (not e!695824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225064 (= res!814178 (validMask!0 mask!1564))))

(declare-fun b!1225065 () Bool)

(declare-fun Unit!40540 () Unit!40538)

(assert (=> b!1225065 (= e!695822 Unit!40540)))

(declare-fun b!1225066 () Bool)

(declare-fun res!814184 () Bool)

(assert (=> b!1225066 (=> (not res!814184) (not e!695824))))

(assert (=> b!1225066 (= res!814184 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38685 _keys!1208))))))

(declare-fun b!1225067 () Bool)

(declare-fun e!695823 () Bool)

(assert (=> b!1225067 (= e!695823 tp_is_empty!31145)))

(declare-fun b!1225068 () Bool)

(declare-fun e!695830 () Bool)

(assert (=> b!1225068 (= e!695826 e!695830)))

(declare-fun res!814177 () Bool)

(assert (=> b!1225068 (=> res!814177 e!695830)))

(assert (=> b!1225068 (= res!814177 (not (= (select (arr!38148 _keys!1208) from!1455) k!934)))))

(declare-fun b!1225069 () Bool)

(assert (=> b!1225069 (= e!695824 e!695825)))

(declare-fun res!814181 () Bool)

(assert (=> b!1225069 (=> (not res!814181) (not e!695825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79050 (_ BitVec 32)) Bool)

(assert (=> b!1225069 (= res!814181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558072 mask!1564))))

(assert (=> b!1225069 (= lt!558072 (array!79051 (store (arr!38148 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38685 _keys!1208)))))

(declare-fun b!1225070 () Bool)

(declare-fun res!814175 () Bool)

(assert (=> b!1225070 (=> (not res!814175) (not e!695824))))

(assert (=> b!1225070 (= res!814175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225071 () Bool)

(declare-fun res!814186 () Bool)

(assert (=> b!1225071 (=> (not res!814186) (not e!695824))))

(assert (=> b!1225071 (= res!814186 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27103))))

(declare-fun b!1225072 () Bool)

(declare-fun Unit!40541 () Unit!40538)

(assert (=> b!1225072 (= e!695822 Unit!40541)))

(declare-fun lt!558060 () Unit!40538)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79050 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40538)

(assert (=> b!1225072 (= lt!558060 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1225072 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!558056 () Unit!40538)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79050 (_ BitVec 32) (_ BitVec 32)) Unit!40538)

(assert (=> b!1225072 (= lt!558056 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1225072 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27103)))

(declare-fun lt!558062 () Unit!40538)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79050 (_ BitVec 64) (_ BitVec 32) List!27106) Unit!40538)

(assert (=> b!1225072 (= lt!558062 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27103))))

(assert (=> b!1225072 false))

(declare-fun b!1225073 () Bool)

(declare-fun res!814176 () Bool)

(assert (=> b!1225073 (=> (not res!814176) (not e!695824))))

(assert (=> b!1225073 (= res!814176 (and (= (size!38684 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38685 _keys!1208) (size!38684 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225074 () Bool)

(assert (=> b!1225074 (= e!695830 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225075 () Bool)

(declare-fun res!814174 () Bool)

(assert (=> b!1225075 (=> (not res!814174) (not e!695824))))

(assert (=> b!1225075 (= res!814174 (validKeyInArray!0 k!934))))

(declare-fun b!1225076 () Bool)

(declare-fun e!695827 () Bool)

(assert (=> b!1225076 (= e!695827 (and e!695823 mapRes!48616))))

(declare-fun condMapEmpty!48616 () Bool)

(declare-fun mapDefault!48616 () ValueCell!14863)

