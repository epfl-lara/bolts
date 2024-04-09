; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98414 () Bool)

(assert start!98414)

(declare-fun b_free!23983 () Bool)

(declare-fun b_next!23983 () Bool)

(assert (=> start!98414 (= b_free!23983 (not b_next!23983))))

(declare-fun tp!84660 () Bool)

(declare-fun b_and!38829 () Bool)

(assert (=> start!98414 (= tp!84660 b_and!38829)))

(declare-fun b!1134348 () Bool)

(declare-datatypes ((Unit!37109 0))(
  ( (Unit!37110) )
))
(declare-fun e!645609 () Unit!37109)

(declare-fun lt!504159 () Unit!37109)

(assert (=> b!1134348 (= e!645609 lt!504159)))

(declare-fun lt!504148 () Unit!37109)

(declare-fun call!49343 () Unit!37109)

(assert (=> b!1134348 (= lt!504148 call!49343)))

(declare-datatypes ((V!43145 0))(
  ( (V!43146 (val!14313 Int)) )
))
(declare-datatypes ((tuple2!18148 0))(
  ( (tuple2!18149 (_1!9084 (_ BitVec 64)) (_2!9084 V!43145)) )
))
(declare-datatypes ((List!24960 0))(
  ( (Nil!24957) (Cons!24956 (h!26165 tuple2!18148) (t!35942 List!24960)) )
))
(declare-datatypes ((ListLongMap!16129 0))(
  ( (ListLongMap!16130 (toList!8080 List!24960)) )
))
(declare-fun lt!504144 () ListLongMap!16129)

(declare-fun call!49340 () ListLongMap!16129)

(assert (=> b!1134348 (= lt!504144 call!49340)))

(declare-fun call!49342 () Bool)

(assert (=> b!1134348 call!49342))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!43145)

(declare-fun addStillContains!738 (ListLongMap!16129 (_ BitVec 64) V!43145 (_ BitVec 64)) Unit!37109)

(assert (=> b!1134348 (= lt!504159 (addStillContains!738 lt!504144 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6573 (ListLongMap!16129 (_ BitVec 64)) Bool)

(declare-fun +!3439 (ListLongMap!16129 tuple2!18148) ListLongMap!16129)

(assert (=> b!1134348 (contains!6573 (+!3439 lt!504144 (tuple2!18149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1134349 () Bool)

(declare-fun res!757373 () Bool)

(declare-fun e!645607 () Bool)

(assert (=> b!1134349 (=> (not res!757373) (not e!645607))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73848 0))(
  ( (array!73849 (arr!35571 (Array (_ BitVec 32) (_ BitVec 64))) (size!36108 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73848)

(assert (=> b!1134349 (= res!757373 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36108 _keys!1208))))))

(declare-fun b!1134350 () Bool)

(declare-fun e!645610 () Bool)

(declare-fun e!645606 () Bool)

(assert (=> b!1134350 (= e!645610 (not e!645606))))

(declare-fun res!757384 () Bool)

(assert (=> b!1134350 (=> res!757384 e!645606)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1134350 (= res!757384 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134350 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!504149 () Unit!37109)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73848 (_ BitVec 64) (_ BitVec 32)) Unit!37109)

(assert (=> b!1134350 (= lt!504149 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!757374 () Bool)

(assert (=> start!98414 (=> (not res!757374) (not e!645607))))

(assert (=> start!98414 (= res!757374 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36108 _keys!1208))))))

(assert (=> start!98414 e!645607))

(declare-fun tp_is_empty!28513 () Bool)

(assert (=> start!98414 tp_is_empty!28513))

(declare-fun array_inv!27148 (array!73848) Bool)

(assert (=> start!98414 (array_inv!27148 _keys!1208)))

(assert (=> start!98414 true))

(assert (=> start!98414 tp!84660))

(declare-datatypes ((ValueCell!13547 0))(
  ( (ValueCellFull!13547 (v!16951 V!43145)) (EmptyCell!13547) )
))
(declare-datatypes ((array!73850 0))(
  ( (array!73851 (arr!35572 (Array (_ BitVec 32) ValueCell!13547)) (size!36109 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73850)

(declare-fun e!645613 () Bool)

(declare-fun array_inv!27149 (array!73850) Bool)

(assert (=> start!98414 (and (array_inv!27149 _values!996) e!645613)))

(declare-fun b!1134351 () Bool)

(declare-fun e!645615 () Bool)

(assert (=> b!1134351 (= e!645615 tp_is_empty!28513)))

(declare-fun b!1134352 () Bool)

(declare-fun e!645621 () Bool)

(assert (=> b!1134352 (= e!645606 e!645621)))

(declare-fun res!757375 () Bool)

(assert (=> b!1134352 (=> res!757375 e!645621)))

(assert (=> b!1134352 (= res!757375 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43145)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!504152 () array!73848)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!504154 () array!73850)

(declare-fun lt!504155 () ListLongMap!16129)

(declare-fun getCurrentListMapNoExtraKeys!4529 (array!73848 array!73850 (_ BitVec 32) (_ BitVec 32) V!43145 V!43145 (_ BitVec 32) Int) ListLongMap!16129)

(assert (=> b!1134352 (= lt!504155 (getCurrentListMapNoExtraKeys!4529 lt!504152 lt!504154 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2597 (Int (_ BitVec 64)) V!43145)

(assert (=> b!1134352 (= lt!504154 (array!73851 (store (arr!35572 _values!996) i!673 (ValueCellFull!13547 (dynLambda!2597 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36109 _values!996)))))

(declare-fun lt!504158 () ListLongMap!16129)

(assert (=> b!1134352 (= lt!504158 (getCurrentListMapNoExtraKeys!4529 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1134353 () Bool)

(declare-fun e!645618 () Bool)

(declare-fun e!645616 () Bool)

(assert (=> b!1134353 (= e!645618 e!645616)))

(declare-fun res!757386 () Bool)

(assert (=> b!1134353 (=> res!757386 e!645616)))

(declare-fun lt!504157 () ListLongMap!16129)

(assert (=> b!1134353 (= res!757386 (not (contains!6573 lt!504157 k!934)))))

(assert (=> b!1134353 (= lt!504157 (getCurrentListMapNoExtraKeys!4529 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49334 () Bool)

(declare-fun call!49344 () ListLongMap!16129)

(assert (=> bm!49334 (= call!49344 call!49340)))

(declare-fun e!645611 () Bool)

(declare-fun lt!504151 () Bool)

(declare-fun b!1134354 () Bool)

(assert (=> b!1134354 (= e!645611 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504151) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1134355 () Bool)

(declare-fun res!757385 () Bool)

(assert (=> b!1134355 (=> (not res!757385) (not e!645607))))

(declare-datatypes ((List!24961 0))(
  ( (Nil!24958) (Cons!24957 (h!26166 (_ BitVec 64)) (t!35943 List!24961)) )
))
(declare-fun arrayNoDuplicates!0 (array!73848 (_ BitVec 32) List!24961) Bool)

(assert (=> b!1134355 (= res!757385 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24958))))

(declare-fun bm!49335 () Bool)

(declare-fun c!110726 () Bool)

(assert (=> bm!49335 (= call!49342 (contains!6573 (ite c!110726 lt!504144 call!49344) k!934))))

(declare-fun b!1134356 () Bool)

(declare-fun res!757371 () Bool)

(assert (=> b!1134356 (=> (not res!757371) (not e!645607))))

(assert (=> b!1134356 (= res!757371 (= (select (arr!35571 _keys!1208) i!673) k!934))))

(declare-fun b!1134357 () Bool)

(declare-fun res!757372 () Bool)

(declare-fun e!645608 () Bool)

(assert (=> b!1134357 (=> res!757372 e!645608)))

(declare-fun noDuplicate!1608 (List!24961) Bool)

(assert (=> b!1134357 (= res!757372 (not (noDuplicate!1608 Nil!24958)))))

(declare-fun bm!49336 () Bool)

(declare-fun call!49341 () Bool)

(assert (=> bm!49336 (= call!49341 call!49342)))

(declare-fun e!645619 () Bool)

(declare-fun b!1134358 () Bool)

(assert (=> b!1134358 (= e!645619 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49337 () Bool)

(declare-fun call!49337 () Unit!37109)

(assert (=> bm!49337 (= call!49337 call!49343)))

(declare-fun bm!49338 () Bool)

(declare-fun c!110725 () Bool)

(assert (=> bm!49338 (= call!49343 (addStillContains!738 lt!504157 (ite (or c!110726 c!110725) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110726 c!110725) zeroValue!944 minValue!944) k!934))))

(declare-fun call!49339 () ListLongMap!16129)

(declare-fun e!645614 () Bool)

(declare-fun b!1134359 () Bool)

(declare-fun call!49338 () ListLongMap!16129)

(declare-fun -!1197 (ListLongMap!16129 (_ BitVec 64)) ListLongMap!16129)

(assert (=> b!1134359 (= e!645614 (= call!49338 (-!1197 call!49339 k!934)))))

(declare-fun mapNonEmpty!44594 () Bool)

(declare-fun mapRes!44594 () Bool)

(declare-fun tp!84661 () Bool)

(assert (=> mapNonEmpty!44594 (= mapRes!44594 (and tp!84661 e!645615))))

(declare-fun mapValue!44594 () ValueCell!13547)

(declare-fun mapKey!44594 () (_ BitVec 32))

(declare-fun mapRest!44594 () (Array (_ BitVec 32) ValueCell!13547))

(assert (=> mapNonEmpty!44594 (= (arr!35572 _values!996) (store mapRest!44594 mapKey!44594 mapValue!44594))))

(declare-fun b!1134360 () Bool)

(declare-fun res!757376 () Bool)

(assert (=> b!1134360 (=> (not res!757376) (not e!645607))))

(assert (=> b!1134360 (= res!757376 (and (= (size!36109 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36108 _keys!1208) (size!36109 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1134361 () Bool)

(assert (=> b!1134361 (= e!645608 true)))

(declare-fun lt!504146 () Bool)

(declare-fun contains!6574 (List!24961 (_ BitVec 64)) Bool)

(assert (=> b!1134361 (= lt!504146 (contains!6574 Nil!24958 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134362 () Bool)

(declare-fun res!757380 () Bool)

(assert (=> b!1134362 (=> (not res!757380) (not e!645607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73848 (_ BitVec 32)) Bool)

(assert (=> b!1134362 (= res!757380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1134363 () Bool)

(declare-fun e!645605 () Unit!37109)

(assert (=> b!1134363 (= e!645609 e!645605)))

(assert (=> b!1134363 (= c!110725 (and (not lt!504151) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1134364 () Bool)

(declare-fun res!757383 () Bool)

(assert (=> b!1134364 (=> (not res!757383) (not e!645610))))

(assert (=> b!1134364 (= res!757383 (arrayNoDuplicates!0 lt!504152 #b00000000000000000000000000000000 Nil!24958))))

(declare-fun b!1134365 () Bool)

(declare-fun res!757387 () Bool)

(assert (=> b!1134365 (=> res!757387 e!645608)))

(assert (=> b!1134365 (= res!757387 (contains!6574 Nil!24958 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134366 () Bool)

(declare-fun res!757382 () Bool)

(assert (=> b!1134366 (=> (not res!757382) (not e!645607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134366 (= res!757382 (validKeyInArray!0 k!934))))

(declare-fun b!1134367 () Bool)

(assert (=> b!1134367 (= e!645611 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!44594 () Bool)

(assert (=> mapIsEmpty!44594 mapRes!44594))

(declare-fun b!1134368 () Bool)

(declare-fun e!645617 () Unit!37109)

(declare-fun lt!504147 () Unit!37109)

(assert (=> b!1134368 (= e!645617 lt!504147)))

(assert (=> b!1134368 (= lt!504147 call!49337)))

(assert (=> b!1134368 call!49341))

(declare-fun bm!49339 () Bool)

(assert (=> bm!49339 (= call!49339 (getCurrentListMapNoExtraKeys!4529 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49340 () Bool)

(assert (=> bm!49340 (= call!49340 (+!3439 lt!504157 (ite (or c!110726 c!110725) (tuple2!18149 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1134369 () Bool)

(assert (=> b!1134369 (= e!645616 e!645608)))

(declare-fun res!757388 () Bool)

(assert (=> b!1134369 (=> res!757388 e!645608)))

(assert (=> b!1134369 (= res!757388 (or (bvsge (size!36108 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36108 _keys!1208)) (bvsge from!1455 (size!36108 _keys!1208))))))

(assert (=> b!1134369 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24958)))

(declare-fun lt!504145 () Unit!37109)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73848 (_ BitVec 32) (_ BitVec 32)) Unit!37109)

(assert (=> b!1134369 (= lt!504145 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1134369 e!645619))

(declare-fun res!757377 () Bool)

(assert (=> b!1134369 (=> (not res!757377) (not e!645619))))

(assert (=> b!1134369 (= res!757377 e!645611)))

(declare-fun c!110724 () Bool)

(assert (=> b!1134369 (= c!110724 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504143 () Unit!37109)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!347 (array!73848 array!73850 (_ BitVec 32) (_ BitVec 32) V!43145 V!43145 (_ BitVec 64) (_ BitVec 32) Int) Unit!37109)

(assert (=> b!1134369 (= lt!504143 (lemmaListMapContainsThenArrayContainsFrom!347 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504156 () Unit!37109)

(assert (=> b!1134369 (= lt!504156 e!645609)))

(assert (=> b!1134369 (= c!110726 (and (not lt!504151) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1134369 (= lt!504151 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1134370 () Bool)

(assert (=> b!1134370 call!49341))

(declare-fun lt!504153 () Unit!37109)

(assert (=> b!1134370 (= lt!504153 call!49337)))

(assert (=> b!1134370 (= e!645605 lt!504153)))

(declare-fun b!1134371 () Bool)

(declare-fun Unit!37111 () Unit!37109)

(assert (=> b!1134371 (= e!645617 Unit!37111)))

(declare-fun b!1134372 () Bool)

(declare-fun res!757378 () Bool)

(assert (=> b!1134372 (=> (not res!757378) (not e!645607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1134372 (= res!757378 (validMask!0 mask!1564))))

(declare-fun b!1134373 () Bool)

(declare-fun e!645620 () Bool)

(assert (=> b!1134373 (= e!645620 tp_is_empty!28513)))

(declare-fun b!1134374 () Bool)

(assert (=> b!1134374 (= e!645614 (= call!49338 call!49339))))

(declare-fun bm!49341 () Bool)

(assert (=> bm!49341 (= call!49338 (getCurrentListMapNoExtraKeys!4529 lt!504152 lt!504154 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134375 () Bool)

(assert (=> b!1134375 (= e!645613 (and e!645620 mapRes!44594))))

(declare-fun condMapEmpty!44594 () Bool)

(declare-fun mapDefault!44594 () ValueCell!13547)

