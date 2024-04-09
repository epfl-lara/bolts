; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99878 () Bool)

(assert start!99878)

(declare-fun b_free!25421 () Bool)

(declare-fun b_next!25421 () Bool)

(assert (=> start!99878 (= b_free!25421 (not b_next!25421))))

(declare-fun tp!88977 () Bool)

(declare-fun b_and!41723 () Bool)

(assert (=> start!99878 (= tp!88977 b_and!41723)))

(declare-datatypes ((array!76670 0))(
  ( (array!76671 (arr!36981 (Array (_ BitVec 32) (_ BitVec 64))) (size!37518 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76670)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!675111 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1187273 () Bool)

(declare-fun arrayContainsKey!0 (array!76670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187273 (= e!675111 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187274 () Bool)

(declare-datatypes ((Unit!39298 0))(
  ( (Unit!39299) )
))
(declare-fun e!675120 () Unit!39298)

(declare-fun Unit!39300 () Unit!39298)

(assert (=> b!1187274 (= e!675120 Unit!39300)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!539712 () Unit!39298)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76670 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39298)

(assert (=> b!1187274 (= lt!539712 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1187274 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539703 () Unit!39298)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76670 (_ BitVec 32) (_ BitVec 32)) Unit!39298)

(assert (=> b!1187274 (= lt!539703 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26184 0))(
  ( (Nil!26181) (Cons!26180 (h!27389 (_ BitVec 64)) (t!38604 List!26184)) )
))
(declare-fun arrayNoDuplicates!0 (array!76670 (_ BitVec 32) List!26184) Bool)

(assert (=> b!1187274 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26181)))

(declare-fun lt!539715 () Unit!39298)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76670 (_ BitVec 64) (_ BitVec 32) List!26184) Unit!39298)

(assert (=> b!1187274 (= lt!539715 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26181))))

(assert (=> b!1187274 false))

(declare-fun b!1187275 () Bool)

(declare-fun e!675112 () Bool)

(declare-fun e!675117 () Bool)

(assert (=> b!1187275 (= e!675112 e!675117)))

(declare-fun res!789421 () Bool)

(assert (=> b!1187275 (=> (not res!789421) (not e!675117))))

(declare-fun lt!539702 () array!76670)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76670 (_ BitVec 32)) Bool)

(assert (=> b!1187275 (= res!789421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539702 mask!1564))))

(assert (=> b!1187275 (= lt!539702 (array!76671 (store (arr!36981 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37518 _keys!1208)))))

(declare-fun mapNonEmpty!46754 () Bool)

(declare-fun mapRes!46754 () Bool)

(declare-fun tp!88978 () Bool)

(declare-fun e!675113 () Bool)

(assert (=> mapNonEmpty!46754 (= mapRes!46754 (and tp!88978 e!675113))))

(declare-datatypes ((V!45061 0))(
  ( (V!45062 (val!15032 Int)) )
))
(declare-datatypes ((ValueCell!14266 0))(
  ( (ValueCellFull!14266 (v!17671 V!45061)) (EmptyCell!14266) )
))
(declare-fun mapRest!46754 () (Array (_ BitVec 32) ValueCell!14266))

(declare-fun mapValue!46754 () ValueCell!14266)

(declare-datatypes ((array!76672 0))(
  ( (array!76673 (arr!36982 (Array (_ BitVec 32) ValueCell!14266)) (size!37519 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76672)

(declare-fun mapKey!46754 () (_ BitVec 32))

(assert (=> mapNonEmpty!46754 (= (arr!36982 _values!996) (store mapRest!46754 mapKey!46754 mapValue!46754))))

(declare-fun b!1187276 () Bool)

(declare-fun res!789425 () Bool)

(assert (=> b!1187276 (=> (not res!789425) (not e!675112))))

(assert (=> b!1187276 (= res!789425 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37518 _keys!1208))))))

(declare-fun b!1187277 () Bool)

(declare-fun res!789429 () Bool)

(assert (=> b!1187277 (=> (not res!789429) (not e!675112))))

(assert (=> b!1187277 (= res!789429 (= (select (arr!36981 _keys!1208) i!673) k!934))))

(declare-fun b!1187278 () Bool)

(declare-fun res!789427 () Bool)

(assert (=> b!1187278 (=> (not res!789427) (not e!675112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187278 (= res!789427 (validMask!0 mask!1564))))

(declare-fun b!1187279 () Bool)

(declare-fun res!789431 () Bool)

(assert (=> b!1187279 (=> (not res!789431) (not e!675112))))

(assert (=> b!1187279 (= res!789431 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26181))))

(declare-fun res!789432 () Bool)

(assert (=> start!99878 (=> (not res!789432) (not e!675112))))

(assert (=> start!99878 (= res!789432 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37518 _keys!1208))))))

(assert (=> start!99878 e!675112))

(declare-fun tp_is_empty!29951 () Bool)

(assert (=> start!99878 tp_is_empty!29951))

(declare-fun array_inv!28102 (array!76670) Bool)

(assert (=> start!99878 (array_inv!28102 _keys!1208)))

(assert (=> start!99878 true))

(assert (=> start!99878 tp!88977))

(declare-fun e!675114 () Bool)

(declare-fun array_inv!28103 (array!76672) Bool)

(assert (=> start!99878 (and (array_inv!28103 _values!996) e!675114)))

(declare-fun b!1187280 () Bool)

(declare-fun e!675116 () Bool)

(assert (=> b!1187280 (= e!675116 true)))

(declare-datatypes ((tuple2!19426 0))(
  ( (tuple2!19427 (_1!9723 (_ BitVec 64)) (_2!9723 V!45061)) )
))
(declare-datatypes ((List!26185 0))(
  ( (Nil!26182) (Cons!26181 (h!27390 tuple2!19426) (t!38605 List!26185)) )
))
(declare-datatypes ((ListLongMap!17407 0))(
  ( (ListLongMap!17408 (toList!8719 List!26185)) )
))
(declare-fun lt!539701 () ListLongMap!17407)

(declare-fun lt!539704 () ListLongMap!17407)

(declare-fun -!1704 (ListLongMap!17407 (_ BitVec 64)) ListLongMap!17407)

(assert (=> b!1187280 (= (-!1704 lt!539701 k!934) lt!539704)))

(declare-fun lt!539699 () V!45061)

(declare-fun lt!539709 () ListLongMap!17407)

(declare-fun lt!539710 () Unit!39298)

(declare-fun addRemoveCommutativeForDiffKeys!211 (ListLongMap!17407 (_ BitVec 64) V!45061 (_ BitVec 64)) Unit!39298)

(assert (=> b!1187280 (= lt!539710 (addRemoveCommutativeForDiffKeys!211 lt!539709 (select (arr!36981 _keys!1208) from!1455) lt!539699 k!934))))

(declare-fun lt!539697 () ListLongMap!17407)

(declare-fun lt!539707 () ListLongMap!17407)

(declare-fun lt!539706 () ListLongMap!17407)

(assert (=> b!1187280 (and (= lt!539707 lt!539701) (= lt!539706 lt!539697))))

(declare-fun lt!539711 () tuple2!19426)

(declare-fun +!3921 (ListLongMap!17407 tuple2!19426) ListLongMap!17407)

(assert (=> b!1187280 (= lt!539701 (+!3921 lt!539709 lt!539711))))

(assert (=> b!1187280 (not (= (select (arr!36981 _keys!1208) from!1455) k!934))))

(declare-fun lt!539708 () Unit!39298)

(assert (=> b!1187280 (= lt!539708 e!675120)))

(declare-fun c!117203 () Bool)

(assert (=> b!1187280 (= c!117203 (= (select (arr!36981 _keys!1208) from!1455) k!934))))

(declare-fun e!675121 () Bool)

(assert (=> b!1187280 e!675121))

(declare-fun res!789428 () Bool)

(assert (=> b!1187280 (=> (not res!789428) (not e!675121))))

(declare-fun lt!539698 () ListLongMap!17407)

(assert (=> b!1187280 (= res!789428 (= lt!539698 lt!539704))))

(assert (=> b!1187280 (= lt!539704 (+!3921 lt!539706 lt!539711))))

(assert (=> b!1187280 (= lt!539711 (tuple2!19427 (select (arr!36981 _keys!1208) from!1455) lt!539699))))

(declare-fun lt!539714 () V!45061)

(declare-fun get!18983 (ValueCell!14266 V!45061) V!45061)

(assert (=> b!1187280 (= lt!539699 (get!18983 (select (arr!36982 _values!996) from!1455) lt!539714))))

(declare-fun b!1187281 () Bool)

(declare-fun e!675115 () Bool)

(declare-fun e!675119 () Bool)

(assert (=> b!1187281 (= e!675115 e!675119)))

(declare-fun res!789422 () Bool)

(assert (=> b!1187281 (=> res!789422 e!675119)))

(assert (=> b!1187281 (= res!789422 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45061)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45061)

(declare-fun lt!539700 () array!76672)

(declare-fun getCurrentListMapNoExtraKeys!5134 (array!76670 array!76672 (_ BitVec 32) (_ BitVec 32) V!45061 V!45061 (_ BitVec 32) Int) ListLongMap!17407)

(assert (=> b!1187281 (= lt!539698 (getCurrentListMapNoExtraKeys!5134 lt!539702 lt!539700 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1187281 (= lt!539700 (array!76673 (store (arr!36982 _values!996) i!673 (ValueCellFull!14266 lt!539714)) (size!37519 _values!996)))))

(declare-fun dynLambda!3091 (Int (_ BitVec 64)) V!45061)

(assert (=> b!1187281 (= lt!539714 (dynLambda!3091 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1187281 (= lt!539707 (getCurrentListMapNoExtraKeys!5134 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187282 () Bool)

(assert (=> b!1187282 (= e!675119 e!675116)))

(declare-fun res!789433 () Bool)

(assert (=> b!1187282 (=> res!789433 e!675116)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187282 (= res!789433 (not (validKeyInArray!0 (select (arr!36981 _keys!1208) from!1455))))))

(assert (=> b!1187282 (= lt!539697 lt!539706)))

(assert (=> b!1187282 (= lt!539706 (-!1704 lt!539709 k!934))))

(assert (=> b!1187282 (= lt!539697 (getCurrentListMapNoExtraKeys!5134 lt!539702 lt!539700 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187282 (= lt!539709 (getCurrentListMapNoExtraKeys!5134 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!539705 () Unit!39298)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!913 (array!76670 array!76672 (_ BitVec 32) (_ BitVec 32) V!45061 V!45061 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39298)

(assert (=> b!1187282 (= lt!539705 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!913 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1187283 () Bool)

(declare-fun e!675110 () Bool)

(assert (=> b!1187283 (= e!675110 tp_is_empty!29951)))

(declare-fun b!1187284 () Bool)

(assert (=> b!1187284 (= e!675117 (not e!675115))))

(declare-fun res!789430 () Bool)

(assert (=> b!1187284 (=> res!789430 e!675115)))

(assert (=> b!1187284 (= res!789430 (bvsgt from!1455 i!673))))

(assert (=> b!1187284 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!539713 () Unit!39298)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76670 (_ BitVec 64) (_ BitVec 32)) Unit!39298)

(assert (=> b!1187284 (= lt!539713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187285 () Bool)

(assert (=> b!1187285 (= e!675121 e!675111)))

(declare-fun res!789423 () Bool)

(assert (=> b!1187285 (=> res!789423 e!675111)))

(assert (=> b!1187285 (= res!789423 (not (= (select (arr!36981 _keys!1208) from!1455) k!934)))))

(declare-fun b!1187286 () Bool)

(assert (=> b!1187286 (= e!675114 (and e!675110 mapRes!46754))))

(declare-fun condMapEmpty!46754 () Bool)

(declare-fun mapDefault!46754 () ValueCell!14266)

