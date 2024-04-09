; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99628 () Bool)

(assert start!99628)

(declare-fun b_free!25171 () Bool)

(declare-fun b_next!25171 () Bool)

(assert (=> start!99628 (= b_free!25171 (not b_next!25171))))

(declare-fun tp!88227 () Bool)

(declare-fun b_and!41223 () Bool)

(assert (=> start!99628 (= tp!88227 b_and!41223)))

(declare-fun b!1179336 () Bool)

(declare-datatypes ((Unit!38903 0))(
  ( (Unit!38904) )
))
(declare-fun e!670519 () Unit!38903)

(declare-fun Unit!38905 () Unit!38903)

(assert (=> b!1179336 (= e!670519 Unit!38905)))

(declare-datatypes ((array!76174 0))(
  ( (array!76175 (arr!36733 (Array (_ BitVec 32) (_ BitVec 64))) (size!37270 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76174)

(declare-fun lt!532971 () Unit!38903)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76174 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38903)

(assert (=> b!1179336 (= lt!532971 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179336 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532965 () Unit!38903)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76174 (_ BitVec 32) (_ BitVec 32)) Unit!38903)

(assert (=> b!1179336 (= lt!532965 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25970 0))(
  ( (Nil!25967) (Cons!25966 (h!27175 (_ BitVec 64)) (t!38140 List!25970)) )
))
(declare-fun arrayNoDuplicates!0 (array!76174 (_ BitVec 32) List!25970) Bool)

(assert (=> b!1179336 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25967)))

(declare-fun lt!532972 () Unit!38903)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76174 (_ BitVec 64) (_ BitVec 32) List!25970) Unit!38903)

(assert (=> b!1179336 (= lt!532972 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25967))))

(assert (=> b!1179336 false))

(declare-fun b!1179337 () Bool)

(declare-fun e!670518 () Bool)

(declare-fun tp_is_empty!29701 () Bool)

(assert (=> b!1179337 (= e!670518 tp_is_empty!29701)))

(declare-fun mapIsEmpty!46379 () Bool)

(declare-fun mapRes!46379 () Bool)

(assert (=> mapIsEmpty!46379 mapRes!46379))

(declare-fun b!1179339 () Bool)

(declare-fun e!670525 () Bool)

(declare-fun e!670517 () Bool)

(assert (=> b!1179339 (= e!670525 e!670517)))

(declare-fun res!783609 () Bool)

(assert (=> b!1179339 (=> res!783609 e!670517)))

(assert (=> b!1179339 (= res!783609 (not (= (select (arr!36733 _keys!1208) from!1455) k!934)))))

(declare-fun b!1179340 () Bool)

(declare-fun res!783608 () Bool)

(declare-fun e!670516 () Bool)

(assert (=> b!1179340 (=> (not res!783608) (not e!670516))))

(assert (=> b!1179340 (= res!783608 (= (select (arr!36733 _keys!1208) i!673) k!934))))

(declare-fun b!1179341 () Bool)

(declare-fun res!783619 () Bool)

(assert (=> b!1179341 (=> (not res!783619) (not e!670516))))

(assert (=> b!1179341 (= res!783619 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37270 _keys!1208))))))

(declare-fun b!1179342 () Bool)

(declare-fun res!783611 () Bool)

(assert (=> b!1179342 (=> (not res!783611) (not e!670516))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44729 0))(
  ( (V!44730 (val!14907 Int)) )
))
(declare-datatypes ((ValueCell!14141 0))(
  ( (ValueCellFull!14141 (v!17546 V!44729)) (EmptyCell!14141) )
))
(declare-datatypes ((array!76176 0))(
  ( (array!76177 (arr!36734 (Array (_ BitVec 32) ValueCell!14141)) (size!37271 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76176)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1179342 (= res!783611 (and (= (size!37271 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37270 _keys!1208) (size!37271 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!19206 0))(
  ( (tuple2!19207 (_1!9613 (_ BitVec 64)) (_2!9613 V!44729)) )
))
(declare-datatypes ((List!25971 0))(
  ( (Nil!25968) (Cons!25967 (h!27176 tuple2!19206) (t!38141 List!25971)) )
))
(declare-datatypes ((ListLongMap!17187 0))(
  ( (ListLongMap!17188 (toList!8609 List!25971)) )
))
(declare-fun lt!532962 () ListLongMap!17187)

(declare-fun e!670515 () Bool)

(declare-fun b!1179343 () Bool)

(declare-fun lt!532970 () ListLongMap!17187)

(declare-fun lt!532974 () tuple2!19206)

(declare-fun +!3829 (ListLongMap!17187 tuple2!19206) ListLongMap!17187)

(assert (=> b!1179343 (= e!670515 (= lt!532962 (+!3829 lt!532970 lt!532974)))))

(declare-fun b!1179344 () Bool)

(declare-fun e!670522 () Bool)

(declare-fun e!670521 () Bool)

(assert (=> b!1179344 (= e!670522 e!670521)))

(declare-fun res!783613 () Bool)

(assert (=> b!1179344 (=> res!783613 e!670521)))

(assert (=> b!1179344 (= res!783613 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44729)

(declare-fun lt!532969 () array!76176)

(declare-fun lt!532964 () array!76174)

(declare-fun minValue!944 () V!44729)

(declare-fun lt!532961 () ListLongMap!17187)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5037 (array!76174 array!76176 (_ BitVec 32) (_ BitVec 32) V!44729 V!44729 (_ BitVec 32) Int) ListLongMap!17187)

(assert (=> b!1179344 (= lt!532961 (getCurrentListMapNoExtraKeys!5037 lt!532964 lt!532969 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!532973 () V!44729)

(assert (=> b!1179344 (= lt!532969 (array!76177 (store (arr!36734 _values!996) i!673 (ValueCellFull!14141 lt!532973)) (size!37271 _values!996)))))

(declare-fun dynLambda!3010 (Int (_ BitVec 64)) V!44729)

(assert (=> b!1179344 (= lt!532973 (dynLambda!3010 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1179344 (= lt!532962 (getCurrentListMapNoExtraKeys!5037 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179345 () Bool)

(declare-fun Unit!38906 () Unit!38903)

(assert (=> b!1179345 (= e!670519 Unit!38906)))

(declare-fun b!1179346 () Bool)

(declare-fun e!670513 () Bool)

(assert (=> b!1179346 (= e!670513 (not e!670522))))

(declare-fun res!783622 () Bool)

(assert (=> b!1179346 (=> res!783622 e!670522)))

(assert (=> b!1179346 (= res!783622 (bvsgt from!1455 i!673))))

(assert (=> b!1179346 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532967 () Unit!38903)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76174 (_ BitVec 64) (_ BitVec 32)) Unit!38903)

(assert (=> b!1179346 (= lt!532967 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!46379 () Bool)

(declare-fun tp!88228 () Bool)

(declare-fun e!670520 () Bool)

(assert (=> mapNonEmpty!46379 (= mapRes!46379 (and tp!88228 e!670520))))

(declare-fun mapValue!46379 () ValueCell!14141)

(declare-fun mapRest!46379 () (Array (_ BitVec 32) ValueCell!14141))

(declare-fun mapKey!46379 () (_ BitVec 32))

(assert (=> mapNonEmpty!46379 (= (arr!36734 _values!996) (store mapRest!46379 mapKey!46379 mapValue!46379))))

(declare-fun b!1179347 () Bool)

(declare-fun res!783607 () Bool)

(assert (=> b!1179347 (=> (not res!783607) (not e!670516))))

(assert (=> b!1179347 (= res!783607 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25967))))

(declare-fun b!1179348 () Bool)

(assert (=> b!1179348 (= e!670520 tp_is_empty!29701)))

(declare-fun b!1179349 () Bool)

(declare-fun e!670514 () Bool)

(assert (=> b!1179349 (= e!670521 e!670514)))

(declare-fun res!783612 () Bool)

(assert (=> b!1179349 (=> res!783612 e!670514)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179349 (= res!783612 (not (validKeyInArray!0 (select (arr!36733 _keys!1208) from!1455))))))

(declare-fun lt!532960 () ListLongMap!17187)

(declare-fun lt!532968 () ListLongMap!17187)

(assert (=> b!1179349 (= lt!532960 lt!532968)))

(declare-fun -!1603 (ListLongMap!17187 (_ BitVec 64)) ListLongMap!17187)

(assert (=> b!1179349 (= lt!532968 (-!1603 lt!532970 k!934))))

(assert (=> b!1179349 (= lt!532960 (getCurrentListMapNoExtraKeys!5037 lt!532964 lt!532969 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179349 (= lt!532970 (getCurrentListMapNoExtraKeys!5037 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532963 () Unit!38903)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!827 (array!76174 array!76176 (_ BitVec 32) (_ BitVec 32) V!44729 V!44729 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38903)

(assert (=> b!1179349 (= lt!532963 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!827 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179350 () Bool)

(declare-fun e!670524 () Bool)

(assert (=> b!1179350 (= e!670524 (and e!670518 mapRes!46379))))

(declare-fun condMapEmpty!46379 () Bool)

(declare-fun mapDefault!46379 () ValueCell!14141)

