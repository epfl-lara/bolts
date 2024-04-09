; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98606 () Bool)

(assert start!98606)

(declare-fun b_free!24175 () Bool)

(declare-fun b_next!24175 () Bool)

(assert (=> start!98606 (= b_free!24175 (not b_next!24175))))

(declare-fun tp!85237 () Bool)

(declare-fun b_and!39213 () Bool)

(assert (=> start!98606 (= tp!85237 b_and!39213)))

(declare-fun b!1143032 () Bool)

(declare-fun e!650283 () Bool)

(declare-fun e!650285 () Bool)

(assert (=> b!1143032 (= e!650283 (not e!650285))))

(declare-fun res!761691 () Bool)

(assert (=> b!1143032 (=> res!761691 e!650285)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143032 (= res!761691 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74220 0))(
  ( (array!74221 (arr!35757 (Array (_ BitVec 32) (_ BitVec 64))) (size!36294 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74220)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143032 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37433 0))(
  ( (Unit!37434) )
))
(declare-fun lt!509667 () Unit!37433)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74220 (_ BitVec 64) (_ BitVec 32)) Unit!37433)

(assert (=> b!1143032 (= lt!509667 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1143033 () Bool)

(declare-fun res!761686 () Bool)

(declare-fun e!650294 () Bool)

(assert (=> b!1143033 (=> (not res!761686) (not e!650294))))

(assert (=> b!1143033 (= res!761686 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36294 _keys!1208))))))

(declare-datatypes ((V!43401 0))(
  ( (V!43402 (val!14409 Int)) )
))
(declare-fun zeroValue!944 () V!43401)

(declare-datatypes ((tuple2!18324 0))(
  ( (tuple2!18325 (_1!9172 (_ BitVec 64)) (_2!9172 V!43401)) )
))
(declare-datatypes ((List!25123 0))(
  ( (Nil!25120) (Cons!25119 (h!26328 tuple2!18324) (t!36297 List!25123)) )
))
(declare-datatypes ((ListLongMap!16305 0))(
  ( (ListLongMap!16306 (toList!8168 List!25123)) )
))
(declare-fun lt!509659 () ListLongMap!16305)

(declare-fun c!112384 () Bool)

(declare-fun lt!509653 () ListLongMap!16305)

(declare-fun c!112383 () Bool)

(declare-fun minValue!944 () V!43401)

(declare-fun call!51643 () ListLongMap!16305)

(declare-fun bm!51638 () Bool)

(declare-fun +!3512 (ListLongMap!16305 tuple2!18324) ListLongMap!16305)

(assert (=> bm!51638 (= call!51643 (+!3512 (ite c!112383 lt!509659 lt!509653) (ite c!112383 (tuple2!18325 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112384 (tuple2!18325 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18325 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun res!761688 () Bool)

(assert (=> start!98606 (=> (not res!761688) (not e!650294))))

(assert (=> start!98606 (= res!761688 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36294 _keys!1208))))))

(assert (=> start!98606 e!650294))

(declare-fun tp_is_empty!28705 () Bool)

(assert (=> start!98606 tp_is_empty!28705))

(declare-fun array_inv!27276 (array!74220) Bool)

(assert (=> start!98606 (array_inv!27276 _keys!1208)))

(assert (=> start!98606 true))

(assert (=> start!98606 tp!85237))

(declare-datatypes ((ValueCell!13643 0))(
  ( (ValueCellFull!13643 (v!17047 V!43401)) (EmptyCell!13643) )
))
(declare-datatypes ((array!74222 0))(
  ( (array!74223 (arr!35758 (Array (_ BitVec 32) ValueCell!13643)) (size!36295 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74222)

(declare-fun e!650297 () Bool)

(declare-fun array_inv!27277 (array!74222) Bool)

(assert (=> start!98606 (and (array_inv!27277 _values!996) e!650297)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!51639 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!51644 () ListLongMap!16305)

(declare-fun getCurrentListMapNoExtraKeys!4611 (array!74220 array!74222 (_ BitVec 32) (_ BitVec 32) V!43401 V!43401 (_ BitVec 32) Int) ListLongMap!16305)

(assert (=> bm!51639 (= call!51644 (getCurrentListMapNoExtraKeys!4611 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!650296 () Bool)

(declare-fun call!51647 () ListLongMap!16305)

(declare-fun b!1143034 () Bool)

(declare-fun -!1262 (ListLongMap!16305 (_ BitVec 64)) ListLongMap!16305)

(assert (=> b!1143034 (= e!650296 (= call!51647 (-!1262 call!51644 k!934)))))

(declare-fun b!1143035 () Bool)

(declare-fun e!650287 () Unit!37433)

(declare-fun e!650298 () Unit!37433)

(assert (=> b!1143035 (= e!650287 e!650298)))

(declare-fun c!112385 () Bool)

(declare-fun lt!509654 () Bool)

(assert (=> b!1143035 (= c!112385 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509654))))

(declare-fun bm!51640 () Bool)

(declare-fun call!51648 () Bool)

(declare-fun call!51641 () Bool)

(assert (=> bm!51640 (= call!51648 call!51641)))

(declare-fun b!1143036 () Bool)

(declare-fun res!761695 () Bool)

(assert (=> b!1143036 (=> (not res!761695) (not e!650283))))

(declare-fun lt!509661 () array!74220)

(declare-datatypes ((List!25124 0))(
  ( (Nil!25121) (Cons!25120 (h!26329 (_ BitVec 64)) (t!36298 List!25124)) )
))
(declare-fun arrayNoDuplicates!0 (array!74220 (_ BitVec 32) List!25124) Bool)

(assert (=> b!1143036 (= res!761695 (arrayNoDuplicates!0 lt!509661 #b00000000000000000000000000000000 Nil!25121))))

(declare-fun call!51645 () ListLongMap!16305)

(declare-fun bm!51641 () Bool)

(declare-fun contains!6671 (ListLongMap!16305 (_ BitVec 64)) Bool)

(assert (=> bm!51641 (= call!51641 (contains!6671 (ite c!112383 lt!509659 call!51645) k!934))))

(declare-fun bm!51642 () Bool)

(declare-fun call!51646 () Unit!37433)

(declare-fun call!51642 () Unit!37433)

(assert (=> bm!51642 (= call!51646 call!51642)))

(declare-fun b!1143037 () Bool)

(declare-fun Unit!37435 () Unit!37433)

(assert (=> b!1143037 (= e!650298 Unit!37435)))

(declare-fun b!1143038 () Bool)

(declare-fun res!761683 () Bool)

(assert (=> b!1143038 (=> (not res!761683) (not e!650294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1143038 (= res!761683 (validKeyInArray!0 k!934))))

(declare-fun b!1143039 () Bool)

(declare-fun e!650284 () Bool)

(assert (=> b!1143039 (= e!650284 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143040 () Bool)

(declare-fun lt!509665 () Unit!37433)

(assert (=> b!1143040 (= e!650287 lt!509665)))

(assert (=> b!1143040 (= lt!509665 call!51646)))

(assert (=> b!1143040 call!51648))

(declare-fun e!650288 () Bool)

(declare-fun b!1143041 () Bool)

(assert (=> b!1143041 (= e!650288 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509654) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1143042 () Bool)

(declare-fun res!761693 () Bool)

(assert (=> b!1143042 (=> (not res!761693) (not e!650294))))

(assert (=> b!1143042 (= res!761693 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25121))))

(declare-fun b!1143043 () Bool)

(declare-fun e!650292 () Unit!37433)

(declare-fun Unit!37436 () Unit!37433)

(assert (=> b!1143043 (= e!650292 Unit!37436)))

(assert (=> b!1143043 (= lt!509654 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1143043 (= c!112383 (and (not lt!509654) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509666 () Unit!37433)

(declare-fun e!650291 () Unit!37433)

(assert (=> b!1143043 (= lt!509666 e!650291)))

(declare-fun lt!509660 () Unit!37433)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!405 (array!74220 array!74222 (_ BitVec 32) (_ BitVec 32) V!43401 V!43401 (_ BitVec 64) (_ BitVec 32) Int) Unit!37433)

(assert (=> b!1143043 (= lt!509660 (lemmaListMapContainsThenArrayContainsFrom!405 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112382 () Bool)

(assert (=> b!1143043 (= c!112382 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761685 () Bool)

(assert (=> b!1143043 (= res!761685 e!650288)))

(assert (=> b!1143043 (=> (not res!761685) (not e!650284))))

(assert (=> b!1143043 e!650284))

(declare-fun lt!509655 () Unit!37433)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74220 (_ BitVec 32) (_ BitVec 32)) Unit!37433)

(assert (=> b!1143043 (= lt!509655 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1143043 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25121)))

(declare-fun lt!509657 () Unit!37433)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74220 (_ BitVec 64) (_ BitVec 32) List!25124) Unit!37433)

(assert (=> b!1143043 (= lt!509657 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25121))))

(assert (=> b!1143043 false))

(declare-fun b!1143044 () Bool)

(declare-fun e!650293 () Bool)

(assert (=> b!1143044 (= e!650293 tp_is_empty!28705)))

(declare-fun bm!51643 () Bool)

(assert (=> bm!51643 (= call!51645 call!51643)))

(declare-fun bm!51644 () Bool)

(declare-fun addStillContains!810 (ListLongMap!16305 (_ BitVec 64) V!43401 (_ BitVec 64)) Unit!37433)

(assert (=> bm!51644 (= call!51642 (addStillContains!810 (ite c!112383 lt!509659 lt!509653) (ite c!112383 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112384 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112383 minValue!944 (ite c!112384 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1143045 () Bool)

(assert (=> b!1143045 call!51648))

(declare-fun lt!509651 () Unit!37433)

(assert (=> b!1143045 (= lt!509651 call!51646)))

(assert (=> b!1143045 (= e!650298 lt!509651)))

(declare-fun b!1143046 () Bool)

(declare-fun res!761692 () Bool)

(assert (=> b!1143046 (=> (not res!761692) (not e!650294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74220 (_ BitVec 32)) Bool)

(assert (=> b!1143046 (= res!761692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1143047 () Bool)

(assert (=> b!1143047 (= e!650296 (= call!51647 call!51644))))

(declare-fun lt!509658 () array!74222)

(declare-fun bm!51645 () Bool)

(assert (=> bm!51645 (= call!51647 (getCurrentListMapNoExtraKeys!4611 lt!509661 lt!509658 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143048 () Bool)

(declare-fun e!650286 () Bool)

(assert (=> b!1143048 (= e!650286 tp_is_empty!28705)))

(declare-fun b!1143049 () Bool)

(assert (=> b!1143049 (= e!650288 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143050 () Bool)

(declare-fun e!650295 () Bool)

(declare-fun e!650289 () Bool)

(assert (=> b!1143050 (= e!650295 e!650289)))

(declare-fun res!761684 () Bool)

(assert (=> b!1143050 (=> res!761684 e!650289)))

(assert (=> b!1143050 (= res!761684 (not (= (select (arr!35757 _keys!1208) from!1455) k!934)))))

(assert (=> b!1143050 e!650296))

(declare-fun c!112381 () Bool)

(assert (=> b!1143050 (= c!112381 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509652 () Unit!37433)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!517 (array!74220 array!74222 (_ BitVec 32) (_ BitVec 32) V!43401 V!43401 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37433)

(assert (=> b!1143050 (= lt!509652 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!517 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143051 () Bool)

(assert (=> b!1143051 (contains!6671 call!51643 k!934)))

(declare-fun lt!509663 () Unit!37433)

(assert (=> b!1143051 (= lt!509663 call!51642)))

(assert (=> b!1143051 call!51641))

(assert (=> b!1143051 (= lt!509659 (+!3512 lt!509653 (tuple2!18325 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!509670 () Unit!37433)

(assert (=> b!1143051 (= lt!509670 (addStillContains!810 lt!509653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1143051 (= e!650291 lt!509663)))

(declare-fun b!1143052 () Bool)

(assert (=> b!1143052 (= e!650289 true)))

(declare-fun lt!509669 () V!43401)

(assert (=> b!1143052 (= (-!1262 (+!3512 lt!509653 (tuple2!18325 (select (arr!35757 _keys!1208) from!1455) lt!509669)) (select (arr!35757 _keys!1208) from!1455)) lt!509653)))

(declare-fun lt!509664 () Unit!37433)

(declare-fun addThenRemoveForNewKeyIsSame!117 (ListLongMap!16305 (_ BitVec 64) V!43401) Unit!37433)

(assert (=> b!1143052 (= lt!509664 (addThenRemoveForNewKeyIsSame!117 lt!509653 (select (arr!35757 _keys!1208) from!1455) lt!509669))))

(declare-fun lt!509662 () V!43401)

(declare-fun get!18197 (ValueCell!13643 V!43401) V!43401)

(assert (=> b!1143052 (= lt!509669 (get!18197 (select (arr!35758 _values!996) from!1455) lt!509662))))

(declare-fun lt!509650 () Unit!37433)

(assert (=> b!1143052 (= lt!509650 e!650292)))

(declare-fun c!112386 () Bool)

(assert (=> b!1143052 (= c!112386 (contains!6671 lt!509653 k!934))))

(assert (=> b!1143052 (= lt!509653 (getCurrentListMapNoExtraKeys!4611 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143053 () Bool)

(declare-fun res!761689 () Bool)

(assert (=> b!1143053 (=> (not res!761689) (not e!650294))))

(assert (=> b!1143053 (= res!761689 (= (select (arr!35757 _keys!1208) i!673) k!934))))

(declare-fun b!1143054 () Bool)

(assert (=> b!1143054 (= e!650294 e!650283)))

(declare-fun res!761694 () Bool)

(assert (=> b!1143054 (=> (not res!761694) (not e!650283))))

(assert (=> b!1143054 (= res!761694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509661 mask!1564))))

(assert (=> b!1143054 (= lt!509661 (array!74221 (store (arr!35757 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36294 _keys!1208)))))

(declare-fun b!1143055 () Bool)

(declare-fun res!761690 () Bool)

(assert (=> b!1143055 (=> (not res!761690) (not e!650294))))

(assert (=> b!1143055 (= res!761690 (and (= (size!36295 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36294 _keys!1208) (size!36295 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44882 () Bool)

(declare-fun mapRes!44882 () Bool)

(declare-fun tp!85236 () Bool)

(assert (=> mapNonEmpty!44882 (= mapRes!44882 (and tp!85236 e!650286))))

(declare-fun mapKey!44882 () (_ BitVec 32))

(declare-fun mapValue!44882 () ValueCell!13643)

(declare-fun mapRest!44882 () (Array (_ BitVec 32) ValueCell!13643))

(assert (=> mapNonEmpty!44882 (= (arr!35758 _values!996) (store mapRest!44882 mapKey!44882 mapValue!44882))))

(declare-fun b!1143056 () Bool)

(assert (=> b!1143056 (= e!650297 (and e!650293 mapRes!44882))))

(declare-fun condMapEmpty!44882 () Bool)

(declare-fun mapDefault!44882 () ValueCell!13643)

