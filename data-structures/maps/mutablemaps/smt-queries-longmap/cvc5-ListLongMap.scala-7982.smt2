; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98768 () Bool)

(assert start!98768)

(declare-fun b_free!24337 () Bool)

(declare-fun b_next!24337 () Bool)

(assert (=> start!98768 (= b_free!24337 (not b_next!24337))))

(declare-fun tp!85723 () Bool)

(declare-fun b_and!39537 () Bool)

(assert (=> start!98768 (= tp!85723 b_and!39537)))

(declare-fun b!1150450 () Bool)

(declare-fun res!765297 () Bool)

(declare-fun e!654383 () Bool)

(assert (=> b!1150450 (=> (not res!765297) (not e!654383))))

(declare-datatypes ((array!74538 0))(
  ( (array!74539 (arr!35916 (Array (_ BitVec 32) (_ BitVec 64))) (size!36453 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74538)

(declare-datatypes ((List!25261 0))(
  ( (Nil!25258) (Cons!25257 (h!26466 (_ BitVec 64)) (t!36597 List!25261)) )
))
(declare-fun arrayNoDuplicates!0 (array!74538 (_ BitVec 32) List!25261) Bool)

(assert (=> b!1150450 (= res!765297 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25258))))

(declare-fun b!1150451 () Bool)

(declare-datatypes ((V!43617 0))(
  ( (V!43618 (val!14490 Int)) )
))
(declare-datatypes ((tuple2!18470 0))(
  ( (tuple2!18471 (_1!9245 (_ BitVec 64)) (_2!9245 V!43617)) )
))
(declare-datatypes ((List!25262 0))(
  ( (Nil!25259) (Cons!25258 (h!26467 tuple2!18470) (t!36598 List!25262)) )
))
(declare-datatypes ((ListLongMap!16451 0))(
  ( (ListLongMap!16452 (toList!8241 List!25262)) )
))
(declare-fun call!53588 () ListLongMap!16451)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6736 (ListLongMap!16451 (_ BitVec 64)) Bool)

(assert (=> b!1150451 (contains!6736 call!53588 k!934)))

(declare-datatypes ((Unit!37751 0))(
  ( (Unit!37752) )
))
(declare-fun lt!514808 () Unit!37751)

(declare-fun call!53591 () Unit!37751)

(assert (=> b!1150451 (= lt!514808 call!53591)))

(declare-fun call!53587 () Bool)

(assert (=> b!1150451 call!53587))

(declare-fun lt!514812 () ListLongMap!16451)

(declare-fun lt!514804 () ListLongMap!16451)

(declare-fun zeroValue!944 () V!43617)

(declare-fun +!3578 (ListLongMap!16451 tuple2!18470) ListLongMap!16451)

(assert (=> b!1150451 (= lt!514812 (+!3578 lt!514804 (tuple2!18471 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514818 () Unit!37751)

(declare-fun addStillContains!878 (ListLongMap!16451 (_ BitVec 64) V!43617 (_ BitVec 64)) Unit!37751)

(assert (=> b!1150451 (= lt!514818 (addStillContains!878 lt!514804 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!654392 () Unit!37751)

(assert (=> b!1150451 (= e!654392 lt!514808)))

(declare-fun b!1150452 () Bool)

(declare-fun e!654385 () Unit!37751)

(declare-fun Unit!37753 () Unit!37751)

(assert (=> b!1150452 (= e!654385 Unit!37753)))

(declare-fun b!1150453 () Bool)

(declare-fun e!654388 () Unit!37751)

(declare-fun Unit!37754 () Unit!37751)

(assert (=> b!1150453 (= e!654388 Unit!37754)))

(declare-fun lt!514821 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1150453 (= lt!514821 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113841 () Bool)

(assert (=> b!1150453 (= c!113841 (and (not lt!514821) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514819 () Unit!37751)

(assert (=> b!1150453 (= lt!514819 e!654392)))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13724 0))(
  ( (ValueCellFull!13724 (v!17128 V!43617)) (EmptyCell!13724) )
))
(declare-datatypes ((array!74540 0))(
  ( (array!74541 (arr!35917 (Array (_ BitVec 32) ValueCell!13724)) (size!36454 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74540)

(declare-fun minValue!944 () V!43617)

(declare-fun lt!514810 () Unit!37751)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!462 (array!74538 array!74540 (_ BitVec 32) (_ BitVec 32) V!43617 V!43617 (_ BitVec 64) (_ BitVec 32) Int) Unit!37751)

(assert (=> b!1150453 (= lt!514810 (lemmaListMapContainsThenArrayContainsFrom!462 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113844 () Bool)

(assert (=> b!1150453 (= c!113844 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765298 () Bool)

(declare-fun e!654382 () Bool)

(assert (=> b!1150453 (= res!765298 e!654382)))

(declare-fun e!654390 () Bool)

(assert (=> b!1150453 (=> (not res!765298) (not e!654390))))

(assert (=> b!1150453 e!654390))

(declare-fun lt!514805 () Unit!37751)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74538 (_ BitVec 32) (_ BitVec 32)) Unit!37751)

(assert (=> b!1150453 (= lt!514805 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1150453 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25258)))

(declare-fun lt!514803 () Unit!37751)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74538 (_ BitVec 64) (_ BitVec 32) List!25261) Unit!37751)

(assert (=> b!1150453 (= lt!514803 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25258))))

(assert (=> b!1150453 false))

(declare-fun bm!53582 () Bool)

(declare-fun call!53585 () ListLongMap!16451)

(declare-fun getCurrentListMapNoExtraKeys!4682 (array!74538 array!74540 (_ BitVec 32) (_ BitVec 32) V!43617 V!43617 (_ BitVec 32) Int) ListLongMap!16451)

(assert (=> bm!53582 (= call!53585 (getCurrentListMapNoExtraKeys!4682 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150454 () Bool)

(declare-fun e!654380 () Bool)

(declare-fun e!654381 () Bool)

(assert (=> b!1150454 (= e!654380 e!654381)))

(declare-fun res!765304 () Bool)

(assert (=> b!1150454 (=> res!765304 e!654381)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150454 (= res!765304 (not (= from!1455 i!673)))))

(declare-fun lt!514801 () array!74538)

(declare-fun lt!514807 () ListLongMap!16451)

(declare-fun lt!514820 () array!74540)

(assert (=> b!1150454 (= lt!514807 (getCurrentListMapNoExtraKeys!4682 lt!514801 lt!514820 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514813 () V!43617)

(assert (=> b!1150454 (= lt!514820 (array!74541 (store (arr!35917 _values!996) i!673 (ValueCellFull!13724 lt!514813)) (size!36454 _values!996)))))

(declare-fun dynLambda!2711 (Int (_ BitVec 64)) V!43617)

(assert (=> b!1150454 (= lt!514813 (dynLambda!2711 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514806 () ListLongMap!16451)

(assert (=> b!1150454 (= lt!514806 (getCurrentListMapNoExtraKeys!4682 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1150456 () Bool)

(declare-fun e!654396 () Unit!37751)

(assert (=> b!1150456 (= e!654396 e!654385)))

(declare-fun c!113842 () Bool)

(assert (=> b!1150456 (= c!113842 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514821))))

(declare-fun b!1150457 () Bool)

(declare-fun e!654384 () Bool)

(assert (=> b!1150457 (= e!654383 e!654384)))

(declare-fun res!765299 () Bool)

(assert (=> b!1150457 (=> (not res!765299) (not e!654384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74538 (_ BitVec 32)) Bool)

(assert (=> b!1150457 (= res!765299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514801 mask!1564))))

(assert (=> b!1150457 (= lt!514801 (array!74539 (store (arr!35916 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36453 _keys!1208)))))

(declare-fun call!53589 () ListLongMap!16451)

(declare-fun e!654394 () Bool)

(declare-fun b!1150458 () Bool)

(declare-fun -!1327 (ListLongMap!16451 (_ BitVec 64)) ListLongMap!16451)

(assert (=> b!1150458 (= e!654394 (= call!53589 (-!1327 call!53585 k!934)))))

(declare-fun b!1150459 () Bool)

(declare-fun call!53590 () Bool)

(assert (=> b!1150459 call!53590))

(declare-fun lt!514800 () Unit!37751)

(declare-fun call!53592 () Unit!37751)

(assert (=> b!1150459 (= lt!514800 call!53592)))

(assert (=> b!1150459 (= e!654385 lt!514800)))

(declare-fun b!1150460 () Bool)

(declare-fun res!765303 () Bool)

(assert (=> b!1150460 (=> (not res!765303) (not e!654383))))

(assert (=> b!1150460 (= res!765303 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36453 _keys!1208))))))

(declare-fun bm!53583 () Bool)

(assert (=> bm!53583 (= call!53590 call!53587)))

(declare-fun b!1150461 () Bool)

(declare-fun res!765305 () Bool)

(assert (=> b!1150461 (=> (not res!765305) (not e!654383))))

(assert (=> b!1150461 (= res!765305 (= (select (arr!35916 _keys!1208) i!673) k!934))))

(declare-fun b!1150462 () Bool)

(assert (=> b!1150462 (= e!654382 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514821) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1150463 () Bool)

(declare-fun Unit!37755 () Unit!37751)

(assert (=> b!1150463 (= e!654388 Unit!37755)))

(declare-fun b!1150464 () Bool)

(assert (=> b!1150464 (= e!654384 (not e!654380))))

(declare-fun res!765302 () Bool)

(assert (=> b!1150464 (=> res!765302 e!654380)))

(assert (=> b!1150464 (= res!765302 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150464 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!514814 () Unit!37751)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74538 (_ BitVec 64) (_ BitVec 32)) Unit!37751)

(assert (=> b!1150464 (= lt!514814 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!53584 () Bool)

(assert (=> bm!53584 (= call!53589 (getCurrentListMapNoExtraKeys!4682 lt!514801 lt!514820 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!654389 () Bool)

(declare-fun lt!514817 () ListLongMap!16451)

(declare-fun b!1150465 () Bool)

(assert (=> b!1150465 (= e!654389 (= lt!514817 (getCurrentListMapNoExtraKeys!4682 lt!514801 lt!514820 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!53585 () Bool)

(declare-fun call!53586 () ListLongMap!16451)

(assert (=> bm!53585 (= call!53586 call!53588)))

(declare-fun b!1150466 () Bool)

(declare-fun e!654395 () Bool)

(declare-fun tp_is_empty!28867 () Bool)

(assert (=> b!1150466 (= e!654395 tp_is_empty!28867)))

(declare-fun bm!53586 () Bool)

(assert (=> bm!53586 (= call!53587 (contains!6736 (ite c!113841 lt!514812 call!53586) k!934))))

(declare-fun b!1150467 () Bool)

(declare-fun res!765294 () Bool)

(assert (=> b!1150467 (=> (not res!765294) (not e!654383))))

(assert (=> b!1150467 (= res!765294 (and (= (size!36454 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36453 _keys!1208) (size!36454 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1150468 () Bool)

(assert (=> b!1150468 (= e!654382 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!45125 () Bool)

(declare-fun mapRes!45125 () Bool)

(declare-fun tp!85722 () Bool)

(declare-fun e!654387 () Bool)

(assert (=> mapNonEmpty!45125 (= mapRes!45125 (and tp!85722 e!654387))))

(declare-fun mapKey!45125 () (_ BitVec 32))

(declare-fun mapRest!45125 () (Array (_ BitVec 32) ValueCell!13724))

(declare-fun mapValue!45125 () ValueCell!13724)

(assert (=> mapNonEmpty!45125 (= (arr!35917 _values!996) (store mapRest!45125 mapKey!45125 mapValue!45125))))

(declare-fun b!1150469 () Bool)

(declare-fun res!765296 () Bool)

(assert (=> b!1150469 (=> (not res!765296) (not e!654384))))

(assert (=> b!1150469 (= res!765296 (arrayNoDuplicates!0 lt!514801 #b00000000000000000000000000000000 Nil!25258))))

(declare-fun mapIsEmpty!45125 () Bool)

(assert (=> mapIsEmpty!45125 mapRes!45125))

(declare-fun b!1150470 () Bool)

(declare-fun e!654391 () Bool)

(assert (=> b!1150470 (= e!654381 e!654391)))

(declare-fun res!765306 () Bool)

(assert (=> b!1150470 (=> res!765306 e!654391)))

(assert (=> b!1150470 (= res!765306 (not (= (select (arr!35916 _keys!1208) from!1455) k!934)))))

(assert (=> b!1150470 e!654394))

(declare-fun c!113843 () Bool)

(assert (=> b!1150470 (= c!113843 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514816 () Unit!37751)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!566 (array!74538 array!74540 (_ BitVec 32) (_ BitVec 32) V!43617 V!43617 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37751)

(assert (=> b!1150470 (= lt!514816 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!566 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150471 () Bool)

(declare-fun res!765301 () Bool)

(assert (=> b!1150471 (=> (not res!765301) (not e!654383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150471 (= res!765301 (validKeyInArray!0 k!934))))

(declare-fun bm!53587 () Bool)

(assert (=> bm!53587 (= call!53592 call!53591)))

(declare-fun res!765307 () Bool)

(assert (=> start!98768 (=> (not res!765307) (not e!654383))))

(assert (=> start!98768 (= res!765307 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36453 _keys!1208))))))

(assert (=> start!98768 e!654383))

(assert (=> start!98768 tp_is_empty!28867))

(declare-fun array_inv!27388 (array!74538) Bool)

(assert (=> start!98768 (array_inv!27388 _keys!1208)))

(assert (=> start!98768 true))

(assert (=> start!98768 tp!85723))

(declare-fun e!654393 () Bool)

(declare-fun array_inv!27389 (array!74540) Bool)

(assert (=> start!98768 (and (array_inv!27389 _values!996) e!654393)))

(declare-fun b!1150455 () Bool)

(declare-fun res!765300 () Bool)

(assert (=> b!1150455 (=> (not res!765300) (not e!654383))))

(assert (=> b!1150455 (= res!765300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1150472 () Bool)

(assert (=> b!1150472 (= e!654391 true)))

(assert (=> b!1150472 e!654389))

(declare-fun res!765295 () Bool)

(assert (=> b!1150472 (=> (not res!765295) (not e!654389))))

(assert (=> b!1150472 (= res!765295 (= lt!514817 lt!514804))))

(assert (=> b!1150472 (= lt!514817 (-!1327 lt!514806 k!934))))

(declare-fun lt!514809 () V!43617)

(assert (=> b!1150472 (= (-!1327 (+!3578 lt!514804 (tuple2!18471 (select (arr!35916 _keys!1208) from!1455) lt!514809)) (select (arr!35916 _keys!1208) from!1455)) lt!514804)))

(declare-fun lt!514811 () Unit!37751)

(declare-fun addThenRemoveForNewKeyIsSame!176 (ListLongMap!16451 (_ BitVec 64) V!43617) Unit!37751)

(assert (=> b!1150472 (= lt!514811 (addThenRemoveForNewKeyIsSame!176 lt!514804 (select (arr!35916 _keys!1208) from!1455) lt!514809))))

(declare-fun get!18310 (ValueCell!13724 V!43617) V!43617)

(assert (=> b!1150472 (= lt!514809 (get!18310 (select (arr!35917 _values!996) from!1455) lt!514813))))

(declare-fun lt!514815 () Unit!37751)

(assert (=> b!1150472 (= lt!514815 e!654388)))

(declare-fun c!113840 () Bool)

(assert (=> b!1150472 (= c!113840 (contains!6736 lt!514804 k!934))))

(assert (=> b!1150472 (= lt!514804 (getCurrentListMapNoExtraKeys!4682 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113839 () Bool)

(declare-fun bm!53588 () Bool)

(assert (=> bm!53588 (= call!53591 (addStillContains!878 (ite c!113841 lt!514812 lt!514804) (ite c!113841 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113839 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113841 minValue!944 (ite c!113839 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1150473 () Bool)

(declare-fun lt!514802 () Unit!37751)

(assert (=> b!1150473 (= e!654396 lt!514802)))

(assert (=> b!1150473 (= lt!514802 call!53592)))

(assert (=> b!1150473 call!53590))

(declare-fun bm!53589 () Bool)

(assert (=> bm!53589 (= call!53588 (+!3578 (ite c!113841 lt!514812 lt!514804) (ite c!113841 (tuple2!18471 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113839 (tuple2!18471 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18471 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1150474 () Bool)

(assert (=> b!1150474 (= e!654393 (and e!654395 mapRes!45125))))

(declare-fun condMapEmpty!45125 () Bool)

(declare-fun mapDefault!45125 () ValueCell!13724)

