; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98526 () Bool)

(assert start!98526)

(declare-fun b_free!24095 () Bool)

(declare-fun b_next!24095 () Bool)

(assert (=> start!98526 (= b_free!24095 (not b_next!24095))))

(declare-fun tp!84996 () Bool)

(declare-fun b_and!39053 () Bool)

(assert (=> start!98526 (= tp!84996 b_and!39053)))

(declare-fun b!1139472 () Bool)

(declare-datatypes ((Unit!37294 0))(
  ( (Unit!37295) )
))
(declare-fun e!648378 () Unit!37294)

(declare-fun e!648377 () Unit!37294)

(assert (=> b!1139472 (= e!648378 e!648377)))

(declare-fun c!111661 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!507130 () Bool)

(assert (=> b!1139472 (= c!111661 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507130))))

(declare-fun b!1139473 () Bool)

(declare-fun res!760013 () Bool)

(declare-fun e!648376 () Bool)

(assert (=> b!1139473 (=> (not res!760013) (not e!648376))))

(declare-datatypes ((array!74068 0))(
  ( (array!74069 (arr!35681 (Array (_ BitVec 32) (_ BitVec 64))) (size!36218 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74068)

(declare-datatypes ((List!25055 0))(
  ( (Nil!25052) (Cons!25051 (h!26260 (_ BitVec 64)) (t!36149 List!25055)) )
))
(declare-fun arrayNoDuplicates!0 (array!74068 (_ BitVec 32) List!25055) Bool)

(assert (=> b!1139473 (= res!760013 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25052))))

(declare-datatypes ((V!43293 0))(
  ( (V!43294 (val!14369 Int)) )
))
(declare-fun zeroValue!944 () V!43293)

(declare-fun lt!507140 () array!74068)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!50678 () Bool)

(declare-datatypes ((tuple2!18252 0))(
  ( (tuple2!18253 (_1!9136 (_ BitVec 64)) (_2!9136 V!43293)) )
))
(declare-datatypes ((List!25056 0))(
  ( (Nil!25053) (Cons!25052 (h!26261 tuple2!18252) (t!36150 List!25056)) )
))
(declare-datatypes ((ListLongMap!16233 0))(
  ( (ListLongMap!16234 (toList!8132 List!25056)) )
))
(declare-fun call!50685 () ListLongMap!16233)

(declare-fun minValue!944 () V!43293)

(declare-datatypes ((ValueCell!13603 0))(
  ( (ValueCellFull!13603 (v!17007 V!43293)) (EmptyCell!13603) )
))
(declare-datatypes ((array!74070 0))(
  ( (array!74071 (arr!35682 (Array (_ BitVec 32) ValueCell!13603)) (size!36219 (_ BitVec 32))) )
))
(declare-fun lt!507144 () array!74070)

(declare-fun getCurrentListMapNoExtraKeys!4579 (array!74068 array!74070 (_ BitVec 32) (_ BitVec 32) V!43293 V!43293 (_ BitVec 32) Int) ListLongMap!16233)

(assert (=> bm!50678 (= call!50685 (getCurrentListMapNoExtraKeys!4579 lt!507140 lt!507144 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139474 () Bool)

(declare-fun e!648369 () Bool)

(declare-fun e!648367 () Bool)

(assert (=> b!1139474 (= e!648369 e!648367)))

(declare-fun res!760006 () Bool)

(assert (=> b!1139474 (=> res!760006 e!648367)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1139474 (= res!760006 (not (= (select (arr!35681 _keys!1208) from!1455) k!934)))))

(declare-fun e!648374 () Bool)

(assert (=> b!1139474 e!648374))

(declare-fun c!111665 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139474 (= c!111665 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!507137 () Unit!37294)

(declare-fun _values!996 () array!74070)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!491 (array!74068 array!74070 (_ BitVec 32) (_ BitVec 32) V!43293 V!43293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37294)

(assert (=> b!1139474 (= lt!507137 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!491 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139475 () Bool)

(declare-fun lt!507131 () ListLongMap!16233)

(declare-fun contains!6641 (ListLongMap!16233 (_ BitVec 64)) Bool)

(declare-fun +!3481 (ListLongMap!16233 tuple2!18252) ListLongMap!16233)

(assert (=> b!1139475 (contains!6641 (+!3481 lt!507131 (tuple2!18253 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!507134 () Unit!37294)

(declare-fun call!50686 () Unit!37294)

(assert (=> b!1139475 (= lt!507134 call!50686)))

(declare-fun call!50687 () Bool)

(assert (=> b!1139475 call!50687))

(declare-fun call!50688 () ListLongMap!16233)

(assert (=> b!1139475 (= lt!507131 call!50688)))

(declare-fun lt!507142 () Unit!37294)

(declare-fun lt!507136 () ListLongMap!16233)

(declare-fun addStillContains!782 (ListLongMap!16233 (_ BitVec 64) V!43293 (_ BitVec 64)) Unit!37294)

(assert (=> b!1139475 (= lt!507142 (addStillContains!782 lt!507136 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!648375 () Unit!37294)

(assert (=> b!1139475 (= e!648375 lt!507134)))

(declare-fun b!1139476 () Bool)

(declare-fun e!648364 () Unit!37294)

(declare-fun Unit!37296 () Unit!37294)

(assert (=> b!1139476 (= e!648364 Unit!37296)))

(assert (=> b!1139476 (= lt!507130 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111663 () Bool)

(assert (=> b!1139476 (= c!111663 (and (not lt!507130) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!507133 () Unit!37294)

(assert (=> b!1139476 (= lt!507133 e!648375)))

(declare-fun lt!507150 () Unit!37294)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!384 (array!74068 array!74070 (_ BitVec 32) (_ BitVec 32) V!43293 V!43293 (_ BitVec 64) (_ BitVec 32) Int) Unit!37294)

(assert (=> b!1139476 (= lt!507150 (lemmaListMapContainsThenArrayContainsFrom!384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111662 () Bool)

(assert (=> b!1139476 (= c!111662 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760012 () Bool)

(declare-fun e!648366 () Bool)

(assert (=> b!1139476 (= res!760012 e!648366)))

(declare-fun e!648368 () Bool)

(assert (=> b!1139476 (=> (not res!760012) (not e!648368))))

(assert (=> b!1139476 e!648368))

(declare-fun lt!507146 () Unit!37294)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74068 (_ BitVec 32) (_ BitVec 32)) Unit!37294)

(assert (=> b!1139476 (= lt!507146 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1139476 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25052)))

(declare-fun lt!507143 () Unit!37294)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74068 (_ BitVec 64) (_ BitVec 32) List!25055) Unit!37294)

(assert (=> b!1139476 (= lt!507143 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25052))))

(assert (=> b!1139476 false))

(declare-fun b!1139477 () Bool)

(assert (=> b!1139477 (= e!648366 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507130) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun c!111666 () Bool)

(declare-fun bm!50679 () Bool)

(assert (=> bm!50679 (= call!50686 (addStillContains!782 (ite c!111663 lt!507131 lt!507136) (ite c!111663 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111666 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111663 minValue!944 (ite c!111666 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!50680 () Bool)

(assert (=> bm!50680 (= call!50688 (+!3481 lt!507136 (ite (or c!111663 c!111666) (tuple2!18253 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18253 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1139478 () Bool)

(declare-fun e!648373 () Bool)

(assert (=> b!1139478 (= e!648376 e!648373)))

(declare-fun res!760016 () Bool)

(assert (=> b!1139478 (=> (not res!760016) (not e!648373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74068 (_ BitVec 32)) Bool)

(assert (=> b!1139478 (= res!760016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507140 mask!1564))))

(assert (=> b!1139478 (= lt!507140 (array!74069 (store (arr!35681 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36218 _keys!1208)))))

(declare-fun b!1139479 () Bool)

(assert (=> b!1139479 (= c!111666 (and (not lt!507130) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1139479 (= e!648375 e!648378)))

(declare-fun b!1139480 () Bool)

(declare-fun res!760007 () Bool)

(assert (=> b!1139480 (=> (not res!760007) (not e!648376))))

(assert (=> b!1139480 (= res!760007 (and (= (size!36219 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36218 _keys!1208) (size!36219 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!760014 () Bool)

(assert (=> start!98526 (=> (not res!760014) (not e!648376))))

(assert (=> start!98526 (= res!760014 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36218 _keys!1208))))))

(assert (=> start!98526 e!648376))

(declare-fun tp_is_empty!28625 () Bool)

(assert (=> start!98526 tp_is_empty!28625))

(declare-fun array_inv!27230 (array!74068) Bool)

(assert (=> start!98526 (array_inv!27230 _keys!1208)))

(assert (=> start!98526 true))

(assert (=> start!98526 tp!84996))

(declare-fun e!648370 () Bool)

(declare-fun array_inv!27231 (array!74070) Bool)

(assert (=> start!98526 (and (array_inv!27231 _values!996) e!648370)))

(declare-fun bm!50681 () Bool)

(declare-fun call!50683 () Bool)

(assert (=> bm!50681 (= call!50683 call!50687)))

(declare-fun b!1139481 () Bool)

(declare-fun res!760011 () Bool)

(assert (=> b!1139481 (=> (not res!760011) (not e!648376))))

(assert (=> b!1139481 (= res!760011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1139482 () Bool)

(declare-fun e!648371 () Bool)

(declare-fun mapRes!44762 () Bool)

(assert (=> b!1139482 (= e!648370 (and e!648371 mapRes!44762))))

(declare-fun condMapEmpty!44762 () Bool)

(declare-fun mapDefault!44762 () ValueCell!13603)

