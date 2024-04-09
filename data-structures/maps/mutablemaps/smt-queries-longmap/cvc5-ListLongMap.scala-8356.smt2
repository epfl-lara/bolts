; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101754 () Bool)

(assert start!101754)

(declare-fun b_free!26407 () Bool)

(declare-fun b_next!26407 () Bool)

(assert (=> start!101754 (= b_free!26407 (not b_next!26407))))

(declare-fun tp!92268 () Bool)

(declare-fun b_and!44085 () Bool)

(assert (=> start!101754 (= tp!92268 b_and!44085)))

(declare-fun b!1223953 () Bool)

(declare-datatypes ((Unit!40475 0))(
  ( (Unit!40476) )
))
(declare-fun e!695186 () Unit!40475)

(declare-fun Unit!40477 () Unit!40475)

(assert (=> b!1223953 (= e!695186 Unit!40477)))

(declare-datatypes ((array!78980 0))(
  ( (array!78981 (arr!38113 (Array (_ BitVec 32) (_ BitVec 64))) (size!38650 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78980)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!557198 () Unit!40475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78980 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40475)

(assert (=> b!1223953 (= lt!557198 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223953 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557189 () Unit!40475)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78980 (_ BitVec 32) (_ BitVec 32)) Unit!40475)

(assert (=> b!1223953 (= lt!557189 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27074 0))(
  ( (Nil!27071) (Cons!27070 (h!28279 (_ BitVec 64)) (t!40468 List!27074)) )
))
(declare-fun arrayNoDuplicates!0 (array!78980 (_ BitVec 32) List!27074) Bool)

(assert (=> b!1223953 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27071)))

(declare-fun lt!557194 () Unit!40475)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78980 (_ BitVec 64) (_ BitVec 32) List!27074) Unit!40475)

(assert (=> b!1223953 (= lt!557194 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27071))))

(assert (=> b!1223953 false))

(declare-fun mapNonEmpty!48565 () Bool)

(declare-fun mapRes!48565 () Bool)

(declare-fun tp!92267 () Bool)

(declare-fun e!695195 () Bool)

(assert (=> mapNonEmpty!48565 (= mapRes!48565 (and tp!92267 e!695195))))

(declare-datatypes ((V!46609 0))(
  ( (V!46610 (val!15612 Int)) )
))
(declare-datatypes ((ValueCell!14846 0))(
  ( (ValueCellFull!14846 (v!18275 V!46609)) (EmptyCell!14846) )
))
(declare-fun mapValue!48565 () ValueCell!14846)

(declare-fun mapKey!48565 () (_ BitVec 32))

(declare-fun mapRest!48565 () (Array (_ BitVec 32) ValueCell!14846))

(declare-datatypes ((array!78982 0))(
  ( (array!78983 (arr!38114 (Array (_ BitVec 32) ValueCell!14846)) (size!38651 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78982)

(assert (=> mapNonEmpty!48565 (= (arr!38114 _values!996) (store mapRest!48565 mapKey!48565 mapValue!48565))))

(declare-fun b!1223954 () Bool)

(declare-fun res!813365 () Bool)

(declare-fun e!695189 () Bool)

(assert (=> b!1223954 (=> (not res!813365) (not e!695189))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1223954 (= res!813365 (and (= (size!38651 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38650 _keys!1208) (size!38651 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!48565 () Bool)

(assert (=> mapIsEmpty!48565 mapRes!48565))

(declare-fun b!1223955 () Bool)

(declare-fun res!813370 () Bool)

(declare-fun e!695187 () Bool)

(assert (=> b!1223955 (=> (not res!813370) (not e!695187))))

(declare-fun lt!557200 () array!78980)

(assert (=> b!1223955 (= res!813370 (arrayNoDuplicates!0 lt!557200 #b00000000000000000000000000000000 Nil!27071))))

(declare-fun b!1223956 () Bool)

(declare-fun e!695192 () Bool)

(declare-fun e!695193 () Bool)

(assert (=> b!1223956 (= e!695192 e!695193)))

(declare-fun res!813373 () Bool)

(assert (=> b!1223956 (=> res!813373 e!695193)))

(assert (=> b!1223956 (= res!813373 (not (= (select (arr!38113 _keys!1208) from!1455) k!934)))))

(declare-fun b!1223958 () Bool)

(declare-fun e!695184 () Bool)

(declare-fun tp_is_empty!31111 () Bool)

(assert (=> b!1223958 (= e!695184 tp_is_empty!31111)))

(declare-fun b!1223959 () Bool)

(declare-fun e!695191 () Bool)

(declare-datatypes ((tuple2!20262 0))(
  ( (tuple2!20263 (_1!10141 (_ BitVec 64)) (_2!10141 V!46609)) )
))
(declare-datatypes ((List!27075 0))(
  ( (Nil!27072) (Cons!27071 (h!28280 tuple2!20262) (t!40469 List!27075)) )
))
(declare-datatypes ((ListLongMap!18243 0))(
  ( (ListLongMap!18244 (toList!9137 List!27075)) )
))
(declare-fun lt!557197 () ListLongMap!18243)

(declare-fun lt!557192 () ListLongMap!18243)

(assert (=> b!1223959 (= e!695191 (= lt!557197 lt!557192))))

(declare-fun b!1223960 () Bool)

(declare-fun res!813363 () Bool)

(assert (=> b!1223960 (=> (not res!813363) (not e!695189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223960 (= res!813363 (validKeyInArray!0 k!934))))

(declare-fun b!1223961 () Bool)

(declare-fun res!813364 () Bool)

(assert (=> b!1223961 (=> (not res!813364) (not e!695189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78980 (_ BitVec 32)) Bool)

(assert (=> b!1223961 (= res!813364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1223962 () Bool)

(declare-fun e!695196 () Bool)

(assert (=> b!1223962 (= e!695187 (not e!695196))))

(declare-fun res!813369 () Bool)

(assert (=> b!1223962 (=> res!813369 e!695196)))

(assert (=> b!1223962 (= res!813369 (bvsgt from!1455 i!673))))

(assert (=> b!1223962 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!557187 () Unit!40475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78980 (_ BitVec 64) (_ BitVec 32)) Unit!40475)

(assert (=> b!1223962 (= lt!557187 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223963 () Bool)

(declare-fun e!695194 () Bool)

(declare-fun e!695188 () Bool)

(assert (=> b!1223963 (= e!695194 e!695188)))

(declare-fun res!813371 () Bool)

(assert (=> b!1223963 (=> res!813371 e!695188)))

(assert (=> b!1223963 (= res!813371 (not (validKeyInArray!0 (select (arr!38113 _keys!1208) from!1455))))))

(assert (=> b!1223963 (= lt!557192 lt!557197)))

(declare-fun lt!557199 () ListLongMap!18243)

(declare-fun -!1976 (ListLongMap!18243 (_ BitVec 64)) ListLongMap!18243)

(assert (=> b!1223963 (= lt!557197 (-!1976 lt!557199 k!934))))

(declare-fun lt!557193 () array!78982)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46609)

(declare-fun zeroValue!944 () V!46609)

(declare-fun getCurrentListMapNoExtraKeys!5534 (array!78980 array!78982 (_ BitVec 32) (_ BitVec 32) V!46609 V!46609 (_ BitVec 32) Int) ListLongMap!18243)

(assert (=> b!1223963 (= lt!557192 (getCurrentListMapNoExtraKeys!5534 lt!557200 lt!557193 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1223963 (= lt!557199 (getCurrentListMapNoExtraKeys!5534 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557190 () Unit!40475)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1178 (array!78980 array!78982 (_ BitVec 32) (_ BitVec 32) V!46609 V!46609 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40475)

(assert (=> b!1223963 (= lt!557190 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1178 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223964 () Bool)

(declare-fun Unit!40478 () Unit!40475)

(assert (=> b!1223964 (= e!695186 Unit!40478)))

(declare-fun b!1223965 () Bool)

(assert (=> b!1223965 (= e!695195 tp_is_empty!31111)))

(declare-fun b!1223966 () Bool)

(assert (=> b!1223966 (= e!695193 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223967 () Bool)

(assert (=> b!1223967 (= e!695196 e!695194)))

(declare-fun res!813366 () Bool)

(assert (=> b!1223967 (=> res!813366 e!695194)))

(assert (=> b!1223967 (= res!813366 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!557186 () ListLongMap!18243)

(assert (=> b!1223967 (= lt!557186 (getCurrentListMapNoExtraKeys!5534 lt!557200 lt!557193 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557188 () V!46609)

(assert (=> b!1223967 (= lt!557193 (array!78983 (store (arr!38114 _values!996) i!673 (ValueCellFull!14846 lt!557188)) (size!38651 _values!996)))))

(declare-fun dynLambda!3430 (Int (_ BitVec 64)) V!46609)

(assert (=> b!1223967 (= lt!557188 (dynLambda!3430 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557191 () ListLongMap!18243)

(assert (=> b!1223967 (= lt!557191 (getCurrentListMapNoExtraKeys!5534 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223968 () Bool)

(declare-fun res!813359 () Bool)

(assert (=> b!1223968 (=> (not res!813359) (not e!695189))))

(assert (=> b!1223968 (= res!813359 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27071))))

(declare-fun b!1223969 () Bool)

(assert (=> b!1223969 (= e!695188 (bvslt from!1455 (size!38650 _keys!1208)))))

(assert (=> b!1223969 e!695191))

(declare-fun res!813372 () Bool)

(assert (=> b!1223969 (=> (not res!813372) (not e!695191))))

(assert (=> b!1223969 (= res!813372 (not (= (select (arr!38113 _keys!1208) from!1455) k!934)))))

(declare-fun lt!557196 () Unit!40475)

(assert (=> b!1223969 (= lt!557196 e!695186)))

(declare-fun c!120375 () Bool)

(assert (=> b!1223969 (= c!120375 (= (select (arr!38113 _keys!1208) from!1455) k!934))))

(assert (=> b!1223969 e!695192))

(declare-fun res!813360 () Bool)

(assert (=> b!1223969 (=> (not res!813360) (not e!695192))))

(declare-fun lt!557195 () tuple2!20262)

(declare-fun +!4100 (ListLongMap!18243 tuple2!20262) ListLongMap!18243)

(assert (=> b!1223969 (= res!813360 (= lt!557186 (+!4100 lt!557197 lt!557195)))))

(declare-fun get!19508 (ValueCell!14846 V!46609) V!46609)

(assert (=> b!1223969 (= lt!557195 (tuple2!20263 (select (arr!38113 _keys!1208) from!1455) (get!19508 (select (arr!38114 _values!996) from!1455) lt!557188)))))

(declare-fun b!1223970 () Bool)

(declare-fun res!813375 () Bool)

(assert (=> b!1223970 (=> (not res!813375) (not e!695191))))

(assert (=> b!1223970 (= res!813375 (= lt!557191 (+!4100 lt!557199 lt!557195)))))

(declare-fun b!1223957 () Bool)

(declare-fun e!695185 () Bool)

(assert (=> b!1223957 (= e!695185 (and e!695184 mapRes!48565))))

(declare-fun condMapEmpty!48565 () Bool)

(declare-fun mapDefault!48565 () ValueCell!14846)

