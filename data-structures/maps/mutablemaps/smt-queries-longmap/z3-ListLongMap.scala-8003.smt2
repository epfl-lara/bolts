; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98896 () Bool)

(assert start!98896)

(declare-fun b_free!24465 () Bool)

(declare-fun b_next!24465 () Bool)

(assert (=> start!98896 (= b_free!24465 (not b_next!24465))))

(declare-fun tp!86106 () Bool)

(declare-fun b_and!39793 () Bool)

(assert (=> start!98896 (= tp!86106 b_and!39793)))

(declare-fun b!1156338 () Bool)

(declare-datatypes ((Unit!37980 0))(
  ( (Unit!37981) )
))
(declare-fun e!657654 () Unit!37980)

(declare-fun Unit!37982 () Unit!37980)

(assert (=> b!1156338 (= e!657654 Unit!37982)))

(declare-fun b!1156339 () Bool)

(declare-fun e!657644 () Bool)

(declare-fun e!657651 () Bool)

(assert (=> b!1156339 (= e!657644 e!657651)))

(declare-fun res!768184 () Bool)

(assert (=> b!1156339 (=> (not res!768184) (not e!657651))))

(declare-datatypes ((array!74784 0))(
  ( (array!74785 (arr!36039 (Array (_ BitVec 32) (_ BitVec 64))) (size!36576 (_ BitVec 32))) )
))
(declare-fun lt!519027 () array!74784)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74784 (_ BitVec 32)) Bool)

(assert (=> b!1156339 (= res!768184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519027 mask!1564))))

(declare-fun _keys!1208 () array!74784)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156339 (= lt!519027 (array!74785 (store (arr!36039 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36576 _keys!1208)))))

(declare-fun bm!55118 () Bool)

(declare-fun call!55122 () Bool)

(declare-fun call!55125 () Bool)

(assert (=> bm!55118 (= call!55122 call!55125)))

(declare-fun b!1156340 () Bool)

(declare-fun e!657660 () Unit!37980)

(declare-fun Unit!37983 () Unit!37980)

(assert (=> b!1156340 (= e!657660 Unit!37983)))

(declare-fun b!1156341 () Bool)

(declare-fun Unit!37984 () Unit!37980)

(assert (=> b!1156341 (= e!657660 Unit!37984)))

(declare-fun lt!519030 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1156341 (= lt!519030 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114994 () Bool)

(assert (=> b!1156341 (= c!114994 (and (not lt!519030) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519032 () Unit!37980)

(declare-fun e!657652 () Unit!37980)

(assert (=> b!1156341 (= lt!519032 e!657652)))

(declare-datatypes ((V!43787 0))(
  ( (V!43788 (val!14554 Int)) )
))
(declare-fun zeroValue!944 () V!43787)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13788 0))(
  ( (ValueCellFull!13788 (v!17192 V!43787)) (EmptyCell!13788) )
))
(declare-datatypes ((array!74786 0))(
  ( (array!74787 (arr!36040 (Array (_ BitVec 32) ValueCell!13788)) (size!36577 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74786)

(declare-fun minValue!944 () V!43787)

(declare-fun lt!519028 () Unit!37980)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!503 (array!74784 array!74786 (_ BitVec 32) (_ BitVec 32) V!43787 V!43787 (_ BitVec 64) (_ BitVec 32) Int) Unit!37980)

(assert (=> b!1156341 (= lt!519028 (lemmaListMapContainsThenArrayContainsFrom!503 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114995 () Bool)

(assert (=> b!1156341 (= c!114995 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768185 () Bool)

(declare-fun e!657656 () Bool)

(assert (=> b!1156341 (= res!768185 e!657656)))

(declare-fun e!657649 () Bool)

(assert (=> b!1156341 (=> (not res!768185) (not e!657649))))

(assert (=> b!1156341 e!657649))

(declare-fun lt!519034 () Unit!37980)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74784 (_ BitVec 32) (_ BitVec 32)) Unit!37980)

(assert (=> b!1156341 (= lt!519034 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25364 0))(
  ( (Nil!25361) (Cons!25360 (h!26569 (_ BitVec 64)) (t!36828 List!25364)) )
))
(declare-fun arrayNoDuplicates!0 (array!74784 (_ BitVec 32) List!25364) Bool)

(assert (=> b!1156341 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25361)))

(declare-fun lt!519040 () Unit!37980)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74784 (_ BitVec 64) (_ BitVec 32) List!25364) Unit!37980)

(assert (=> b!1156341 (= lt!519040 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25361))))

(assert (=> b!1156341 false))

(declare-fun b!1156342 () Bool)

(declare-fun arrayContainsKey!0 (array!74784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156342 (= e!657656 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1156343 () Bool)

(assert (=> b!1156343 call!55122))

(declare-fun lt!519036 () Unit!37980)

(declare-fun call!55128 () Unit!37980)

(assert (=> b!1156343 (= lt!519036 call!55128)))

(assert (=> b!1156343 (= e!657654 lt!519036)))

(declare-fun b!1156345 () Bool)

(declare-fun res!768177 () Bool)

(assert (=> b!1156345 (=> (not res!768177) (not e!657644))))

(assert (=> b!1156345 (= res!768177 (= (select (arr!36039 _keys!1208) i!673) k0!934))))

(declare-fun b!1156346 () Bool)

(declare-fun res!768175 () Bool)

(assert (=> b!1156346 (=> (not res!768175) (not e!657644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1156346 (= res!768175 (validKeyInArray!0 k0!934))))

(declare-fun b!1156347 () Bool)

(declare-fun res!768187 () Bool)

(assert (=> b!1156347 (=> (not res!768187) (not e!657644))))

(assert (=> b!1156347 (= res!768187 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36576 _keys!1208))))))

(declare-fun b!1156348 () Bool)

(declare-fun res!768178 () Bool)

(assert (=> b!1156348 (=> (not res!768178) (not e!657644))))

(assert (=> b!1156348 (= res!768178 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25361))))

(declare-fun mapNonEmpty!45317 () Bool)

(declare-fun mapRes!45317 () Bool)

(declare-fun tp!86107 () Bool)

(declare-fun e!657653 () Bool)

(assert (=> mapNonEmpty!45317 (= mapRes!45317 (and tp!86107 e!657653))))

(declare-fun mapKey!45317 () (_ BitVec 32))

(declare-fun mapValue!45317 () ValueCell!13788)

(declare-fun mapRest!45317 () (Array (_ BitVec 32) ValueCell!13788))

(assert (=> mapNonEmpty!45317 (= (arr!36040 _values!996) (store mapRest!45317 mapKey!45317 mapValue!45317))))

(declare-fun mapIsEmpty!45317 () Bool)

(assert (=> mapIsEmpty!45317 mapRes!45317))

(declare-fun b!1156349 () Bool)

(declare-fun e!657646 () Bool)

(declare-fun e!657647 () Bool)

(assert (=> b!1156349 (= e!657646 (and e!657647 mapRes!45317))))

(declare-fun condMapEmpty!45317 () Bool)

(declare-fun mapDefault!45317 () ValueCell!13788)

(assert (=> b!1156349 (= condMapEmpty!45317 (= (arr!36040 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13788)) mapDefault!45317)))))

(declare-fun bm!55119 () Bool)

(declare-fun call!55121 () Unit!37980)

(assert (=> bm!55119 (= call!55128 call!55121)))

(declare-fun bm!55120 () Bool)

(declare-datatypes ((tuple2!18582 0))(
  ( (tuple2!18583 (_1!9301 (_ BitVec 64)) (_2!9301 V!43787)) )
))
(declare-datatypes ((List!25365 0))(
  ( (Nil!25362) (Cons!25361 (h!26570 tuple2!18582) (t!36829 List!25365)) )
))
(declare-datatypes ((ListLongMap!16563 0))(
  ( (ListLongMap!16564 (toList!8297 List!25365)) )
))
(declare-fun lt!519042 () ListLongMap!16563)

(declare-fun c!114991 () Bool)

(declare-fun lt!519025 () ListLongMap!16563)

(declare-fun addStillContains!925 (ListLongMap!16563 (_ BitVec 64) V!43787 (_ BitVec 64)) Unit!37980)

(assert (=> bm!55120 (= call!55121 (addStillContains!925 (ite c!114994 lt!519025 lt!519042) (ite c!114994 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114991 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114994 minValue!944 (ite c!114991 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1156350 () Bool)

(declare-fun res!768182 () Bool)

(assert (=> b!1156350 (=> (not res!768182) (not e!657644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1156350 (= res!768182 (validMask!0 mask!1564))))

(declare-fun b!1156351 () Bool)

(assert (=> b!1156351 (= e!657649 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!55123 () ListLongMap!16563)

(declare-fun b!1156352 () Bool)

(declare-fun e!657650 () Bool)

(declare-fun call!55124 () ListLongMap!16563)

(declare-fun -!1374 (ListLongMap!16563 (_ BitVec 64)) ListLongMap!16563)

(assert (=> b!1156352 (= e!657650 (= call!55124 (-!1374 call!55123 k0!934)))))

(declare-fun b!1156353 () Bool)

(assert (=> b!1156353 (= e!657650 (= call!55124 call!55123))))

(declare-fun b!1156354 () Bool)

(declare-fun lt!519037 () array!74786)

(declare-fun lt!519043 () ListLongMap!16563)

(declare-fun e!657655 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4735 (array!74784 array!74786 (_ BitVec 32) (_ BitVec 32) V!43787 V!43787 (_ BitVec 32) Int) ListLongMap!16563)

(assert (=> b!1156354 (= e!657655 (= lt!519043 (getCurrentListMapNoExtraKeys!4735 lt!519027 lt!519037 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1156355 () Bool)

(declare-fun res!768181 () Bool)

(assert (=> b!1156355 (=> (not res!768181) (not e!657644))))

(assert (=> b!1156355 (= res!768181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1156356 () Bool)

(assert (=> b!1156356 (= c!114991 (and (not lt!519030) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!657659 () Unit!37980)

(assert (=> b!1156356 (= e!657652 e!657659)))

(declare-fun b!1156357 () Bool)

(assert (=> b!1156357 (= e!657656 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!519030) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1156358 () Bool)

(assert (=> b!1156358 (= e!657659 e!657654)))

(declare-fun c!114993 () Bool)

(assert (=> b!1156358 (= c!114993 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519030))))

(declare-fun b!1156359 () Bool)

(declare-fun e!657657 () Bool)

(assert (=> b!1156359 (= e!657651 (not e!657657))))

(declare-fun res!768186 () Bool)

(assert (=> b!1156359 (=> res!768186 e!657657)))

(assert (=> b!1156359 (= res!768186 (bvsgt from!1455 i!673))))

(assert (=> b!1156359 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!519026 () Unit!37980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74784 (_ BitVec 64) (_ BitVec 32)) Unit!37980)

(assert (=> b!1156359 (= lt!519026 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!55121 () Bool)

(assert (=> bm!55121 (= call!55124 (getCurrentListMapNoExtraKeys!4735 lt!519027 lt!519037 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156360 () Bool)

(declare-fun call!55127 () ListLongMap!16563)

(declare-fun contains!6784 (ListLongMap!16563 (_ BitVec 64)) Bool)

(assert (=> b!1156360 (contains!6784 call!55127 k0!934)))

(declare-fun lt!519038 () Unit!37980)

(assert (=> b!1156360 (= lt!519038 call!55121)))

(assert (=> b!1156360 call!55125))

(declare-fun +!3628 (ListLongMap!16563 tuple2!18582) ListLongMap!16563)

(assert (=> b!1156360 (= lt!519025 (+!3628 lt!519042 (tuple2!18583 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!519031 () Unit!37980)

(assert (=> b!1156360 (= lt!519031 (addStillContains!925 lt!519042 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1156360 (= e!657652 lt!519038)))

(declare-fun b!1156361 () Bool)

(declare-fun tp_is_empty!28995 () Bool)

(assert (=> b!1156361 (= e!657653 tp_is_empty!28995)))

(declare-fun bm!55122 () Bool)

(declare-fun call!55126 () ListLongMap!16563)

(assert (=> bm!55122 (= call!55126 call!55127)))

(declare-fun bm!55123 () Bool)

(assert (=> bm!55123 (= call!55127 (+!3628 (ite c!114994 lt!519025 lt!519042) (ite c!114994 (tuple2!18583 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114991 (tuple2!18583 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18583 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun res!768176 () Bool)

(assert (=> start!98896 (=> (not res!768176) (not e!657644))))

(assert (=> start!98896 (= res!768176 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36576 _keys!1208))))))

(assert (=> start!98896 e!657644))

(assert (=> start!98896 tp_is_empty!28995))

(declare-fun array_inv!27454 (array!74784) Bool)

(assert (=> start!98896 (array_inv!27454 _keys!1208)))

(assert (=> start!98896 true))

(assert (=> start!98896 tp!86106))

(declare-fun array_inv!27455 (array!74786) Bool)

(assert (=> start!98896 (and (array_inv!27455 _values!996) e!657646)))

(declare-fun b!1156344 () Bool)

(declare-fun e!657645 () Bool)

(assert (=> b!1156344 (= e!657645 true)))

(assert (=> b!1156344 e!657655))

(declare-fun res!768174 () Bool)

(assert (=> b!1156344 (=> (not res!768174) (not e!657655))))

(assert (=> b!1156344 (= res!768174 (= lt!519043 lt!519042))))

(declare-fun lt!519039 () ListLongMap!16563)

(assert (=> b!1156344 (= lt!519043 (-!1374 lt!519039 k0!934))))

(declare-fun lt!519035 () V!43787)

(assert (=> b!1156344 (= (-!1374 (+!3628 lt!519042 (tuple2!18583 (select (arr!36039 _keys!1208) from!1455) lt!519035)) (select (arr!36039 _keys!1208) from!1455)) lt!519042)))

(declare-fun lt!519041 () Unit!37980)

(declare-fun addThenRemoveForNewKeyIsSame!216 (ListLongMap!16563 (_ BitVec 64) V!43787) Unit!37980)

(assert (=> b!1156344 (= lt!519041 (addThenRemoveForNewKeyIsSame!216 lt!519042 (select (arr!36039 _keys!1208) from!1455) lt!519035))))

(declare-fun lt!519029 () V!43787)

(declare-fun get!18392 (ValueCell!13788 V!43787) V!43787)

(assert (=> b!1156344 (= lt!519035 (get!18392 (select (arr!36040 _values!996) from!1455) lt!519029))))

(declare-fun lt!519024 () Unit!37980)

(assert (=> b!1156344 (= lt!519024 e!657660)))

(declare-fun c!114992 () Bool)

(assert (=> b!1156344 (= c!114992 (contains!6784 lt!519042 k0!934))))

(assert (=> b!1156344 (= lt!519042 (getCurrentListMapNoExtraKeys!4735 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55124 () Bool)

(assert (=> bm!55124 (= call!55123 (getCurrentListMapNoExtraKeys!4735 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156362 () Bool)

(declare-fun res!768179 () Bool)

(assert (=> b!1156362 (=> (not res!768179) (not e!657644))))

(assert (=> b!1156362 (= res!768179 (and (= (size!36577 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36576 _keys!1208) (size!36577 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1156363 () Bool)

(declare-fun res!768188 () Bool)

(assert (=> b!1156363 (=> (not res!768188) (not e!657651))))

(assert (=> b!1156363 (= res!768188 (arrayNoDuplicates!0 lt!519027 #b00000000000000000000000000000000 Nil!25361))))

(declare-fun b!1156364 () Bool)

(declare-fun e!657648 () Bool)

(assert (=> b!1156364 (= e!657657 e!657648)))

(declare-fun res!768183 () Bool)

(assert (=> b!1156364 (=> res!768183 e!657648)))

(assert (=> b!1156364 (= res!768183 (not (= from!1455 i!673)))))

(declare-fun lt!519045 () ListLongMap!16563)

(assert (=> b!1156364 (= lt!519045 (getCurrentListMapNoExtraKeys!4735 lt!519027 lt!519037 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1156364 (= lt!519037 (array!74787 (store (arr!36040 _values!996) i!673 (ValueCellFull!13788 lt!519029)) (size!36577 _values!996)))))

(declare-fun dynLambda!2747 (Int (_ BitVec 64)) V!43787)

(assert (=> b!1156364 (= lt!519029 (dynLambda!2747 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1156364 (= lt!519039 (getCurrentListMapNoExtraKeys!4735 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1156365 () Bool)

(assert (=> b!1156365 (= e!657648 e!657645)))

(declare-fun res!768180 () Bool)

(assert (=> b!1156365 (=> res!768180 e!657645)))

(assert (=> b!1156365 (= res!768180 (not (= (select (arr!36039 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1156365 e!657650))

(declare-fun c!114996 () Bool)

(assert (=> b!1156365 (= c!114996 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519033 () Unit!37980)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!602 (array!74784 array!74786 (_ BitVec 32) (_ BitVec 32) V!43787 V!43787 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37980)

(assert (=> b!1156365 (= lt!519033 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!602 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55125 () Bool)

(assert (=> bm!55125 (= call!55125 (contains!6784 (ite c!114994 lt!519025 call!55126) k0!934))))

(declare-fun b!1156366 () Bool)

(declare-fun lt!519044 () Unit!37980)

(assert (=> b!1156366 (= e!657659 lt!519044)))

(assert (=> b!1156366 (= lt!519044 call!55128)))

(assert (=> b!1156366 call!55122))

(declare-fun b!1156367 () Bool)

(assert (=> b!1156367 (= e!657647 tp_is_empty!28995)))

(assert (= (and start!98896 res!768176) b!1156350))

(assert (= (and b!1156350 res!768182) b!1156362))

(assert (= (and b!1156362 res!768179) b!1156355))

(assert (= (and b!1156355 res!768181) b!1156348))

(assert (= (and b!1156348 res!768178) b!1156347))

(assert (= (and b!1156347 res!768187) b!1156346))

(assert (= (and b!1156346 res!768175) b!1156345))

(assert (= (and b!1156345 res!768177) b!1156339))

(assert (= (and b!1156339 res!768184) b!1156363))

(assert (= (and b!1156363 res!768188) b!1156359))

(assert (= (and b!1156359 (not res!768186)) b!1156364))

(assert (= (and b!1156364 (not res!768183)) b!1156365))

(assert (= (and b!1156365 c!114996) b!1156352))

(assert (= (and b!1156365 (not c!114996)) b!1156353))

(assert (= (or b!1156352 b!1156353) bm!55121))

(assert (= (or b!1156352 b!1156353) bm!55124))

(assert (= (and b!1156365 (not res!768180)) b!1156344))

(assert (= (and b!1156344 c!114992) b!1156341))

(assert (= (and b!1156344 (not c!114992)) b!1156340))

(assert (= (and b!1156341 c!114994) b!1156360))

(assert (= (and b!1156341 (not c!114994)) b!1156356))

(assert (= (and b!1156356 c!114991) b!1156366))

(assert (= (and b!1156356 (not c!114991)) b!1156358))

(assert (= (and b!1156358 c!114993) b!1156343))

(assert (= (and b!1156358 (not c!114993)) b!1156338))

(assert (= (or b!1156366 b!1156343) bm!55119))

(assert (= (or b!1156366 b!1156343) bm!55122))

(assert (= (or b!1156366 b!1156343) bm!55118))

(assert (= (or b!1156360 bm!55118) bm!55125))

(assert (= (or b!1156360 bm!55119) bm!55120))

(assert (= (or b!1156360 bm!55122) bm!55123))

(assert (= (and b!1156341 c!114995) b!1156342))

(assert (= (and b!1156341 (not c!114995)) b!1156357))

(assert (= (and b!1156341 res!768185) b!1156351))

(assert (= (and b!1156344 res!768174) b!1156354))

(assert (= (and b!1156349 condMapEmpty!45317) mapIsEmpty!45317))

(assert (= (and b!1156349 (not condMapEmpty!45317)) mapNonEmpty!45317))

(get-info :version)

(assert (= (and mapNonEmpty!45317 ((_ is ValueCellFull!13788) mapValue!45317)) b!1156361))

(assert (= (and b!1156349 ((_ is ValueCellFull!13788) mapDefault!45317)) b!1156367))

(assert (= start!98896 b!1156349))

(declare-fun b_lambda!19589 () Bool)

(assert (=> (not b_lambda!19589) (not b!1156364)))

(declare-fun t!36827 () Bool)

(declare-fun tb!9285 () Bool)

(assert (=> (and start!98896 (= defaultEntry!1004 defaultEntry!1004) t!36827) tb!9285))

(declare-fun result!19127 () Bool)

(assert (=> tb!9285 (= result!19127 tp_is_empty!28995)))

(assert (=> b!1156364 t!36827))

(declare-fun b_and!39795 () Bool)

(assert (= b_and!39793 (and (=> t!36827 result!19127) b_and!39795)))

(declare-fun m!1065863 () Bool)

(assert (=> b!1156365 m!1065863))

(declare-fun m!1065865 () Bool)

(assert (=> b!1156365 m!1065865))

(declare-fun m!1065867 () Bool)

(assert (=> bm!55125 m!1065867))

(declare-fun m!1065869 () Bool)

(assert (=> b!1156352 m!1065869))

(declare-fun m!1065871 () Bool)

(assert (=> b!1156355 m!1065871))

(declare-fun m!1065873 () Bool)

(assert (=> bm!55120 m!1065873))

(declare-fun m!1065875 () Bool)

(assert (=> b!1156360 m!1065875))

(declare-fun m!1065877 () Bool)

(assert (=> b!1156360 m!1065877))

(declare-fun m!1065879 () Bool)

(assert (=> b!1156360 m!1065879))

(declare-fun m!1065881 () Bool)

(assert (=> b!1156339 m!1065881))

(declare-fun m!1065883 () Bool)

(assert (=> b!1156339 m!1065883))

(declare-fun m!1065885 () Bool)

(assert (=> b!1156344 m!1065885))

(declare-fun m!1065887 () Bool)

(assert (=> b!1156344 m!1065887))

(declare-fun m!1065889 () Bool)

(assert (=> b!1156344 m!1065889))

(declare-fun m!1065891 () Bool)

(assert (=> b!1156344 m!1065891))

(declare-fun m!1065893 () Bool)

(assert (=> b!1156344 m!1065893))

(declare-fun m!1065895 () Bool)

(assert (=> b!1156344 m!1065895))

(assert (=> b!1156344 m!1065863))

(declare-fun m!1065897 () Bool)

(assert (=> b!1156344 m!1065897))

(assert (=> b!1156344 m!1065863))

(declare-fun m!1065899 () Bool)

(assert (=> b!1156344 m!1065899))

(assert (=> b!1156344 m!1065863))

(assert (=> b!1156344 m!1065889))

(assert (=> b!1156344 m!1065895))

(declare-fun m!1065901 () Bool)

(assert (=> b!1156341 m!1065901))

(declare-fun m!1065903 () Bool)

(assert (=> b!1156341 m!1065903))

(declare-fun m!1065905 () Bool)

(assert (=> b!1156341 m!1065905))

(declare-fun m!1065907 () Bool)

(assert (=> b!1156341 m!1065907))

(declare-fun m!1065909 () Bool)

(assert (=> start!98896 m!1065909))

(declare-fun m!1065911 () Bool)

(assert (=> start!98896 m!1065911))

(declare-fun m!1065913 () Bool)

(assert (=> b!1156364 m!1065913))

(declare-fun m!1065915 () Bool)

(assert (=> b!1156364 m!1065915))

(declare-fun m!1065917 () Bool)

(assert (=> b!1156364 m!1065917))

(declare-fun m!1065919 () Bool)

(assert (=> b!1156364 m!1065919))

(declare-fun m!1065921 () Bool)

(assert (=> b!1156342 m!1065921))

(declare-fun m!1065923 () Bool)

(assert (=> b!1156348 m!1065923))

(assert (=> b!1156351 m!1065921))

(declare-fun m!1065925 () Bool)

(assert (=> bm!55123 m!1065925))

(declare-fun m!1065927 () Bool)

(assert (=> b!1156359 m!1065927))

(declare-fun m!1065929 () Bool)

(assert (=> b!1156359 m!1065929))

(assert (=> bm!55124 m!1065885))

(declare-fun m!1065931 () Bool)

(assert (=> b!1156350 m!1065931))

(declare-fun m!1065933 () Bool)

(assert (=> b!1156363 m!1065933))

(declare-fun m!1065935 () Bool)

(assert (=> b!1156345 m!1065935))

(declare-fun m!1065937 () Bool)

(assert (=> bm!55121 m!1065937))

(assert (=> b!1156354 m!1065937))

(declare-fun m!1065939 () Bool)

(assert (=> b!1156346 m!1065939))

(declare-fun m!1065941 () Bool)

(assert (=> mapNonEmpty!45317 m!1065941))

(check-sat (not b!1156354) (not b!1156344) tp_is_empty!28995 (not b_next!24465) (not b!1156360) (not b!1156346) (not bm!55121) (not bm!55124) b_and!39795 (not bm!55125) (not start!98896) (not b!1156348) (not b!1156352) (not bm!55120) (not b_lambda!19589) (not b!1156363) (not b!1156355) (not b!1156350) (not mapNonEmpty!45317) (not b!1156342) (not bm!55123) (not b!1156364) (not b!1156359) (not b!1156351) (not b!1156341) (not b!1156339) (not b!1156365))
(check-sat b_and!39795 (not b_next!24465))
