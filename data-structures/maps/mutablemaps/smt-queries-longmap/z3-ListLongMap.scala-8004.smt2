; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98902 () Bool)

(assert start!98902)

(declare-fun b_free!24471 () Bool)

(declare-fun b_next!24471 () Bool)

(assert (=> start!98902 (= b_free!24471 (not b_next!24471))))

(declare-fun tp!86125 () Bool)

(declare-fun b_and!39805 () Bool)

(assert (=> start!98902 (= tp!86125 b_and!39805)))

(declare-fun b!1156614 () Bool)

(declare-datatypes ((Unit!37987 0))(
  ( (Unit!37988) )
))
(declare-fun e!657801 () Unit!37987)

(declare-fun Unit!37989 () Unit!37987)

(assert (=> b!1156614 (= e!657801 Unit!37989)))

(declare-fun lt!519234 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1156614 (= lt!519234 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115047 () Bool)

(assert (=> b!1156614 (= c!115047 (and (not lt!519234) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519236 () Unit!37987)

(declare-fun e!657809 () Unit!37987)

(assert (=> b!1156614 (= lt!519236 e!657809)))

(declare-datatypes ((V!43795 0))(
  ( (V!43796 (val!14557 Int)) )
))
(declare-fun zeroValue!944 () V!43795)

(declare-datatypes ((array!74794 0))(
  ( (array!74795 (arr!36044 (Array (_ BitVec 32) (_ BitVec 64))) (size!36581 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74794)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13791 0))(
  ( (ValueCellFull!13791 (v!17195 V!43795)) (EmptyCell!13791) )
))
(declare-datatypes ((array!74796 0))(
  ( (array!74797 (arr!36045 (Array (_ BitVec 32) ValueCell!13791)) (size!36582 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74796)

(declare-fun minValue!944 () V!43795)

(declare-fun lt!519225 () Unit!37987)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!504 (array!74794 array!74796 (_ BitVec 32) (_ BitVec 32) V!43795 V!43795 (_ BitVec 64) (_ BitVec 32) Int) Unit!37987)

(assert (=> b!1156614 (= lt!519225 (lemmaListMapContainsThenArrayContainsFrom!504 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115050 () Bool)

(assert (=> b!1156614 (= c!115050 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768318 () Bool)

(declare-fun e!657806 () Bool)

(assert (=> b!1156614 (= res!768318 e!657806)))

(declare-fun e!657797 () Bool)

(assert (=> b!1156614 (=> (not res!768318) (not e!657797))))

(assert (=> b!1156614 e!657797))

(declare-fun lt!519239 () Unit!37987)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74794 (_ BitVec 32) (_ BitVec 32)) Unit!37987)

(assert (=> b!1156614 (= lt!519239 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25367 0))(
  ( (Nil!25364) (Cons!25363 (h!26572 (_ BitVec 64)) (t!36837 List!25367)) )
))
(declare-fun arrayNoDuplicates!0 (array!74794 (_ BitVec 32) List!25367) Bool)

(assert (=> b!1156614 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25364)))

(declare-fun lt!519241 () Unit!37987)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74794 (_ BitVec 64) (_ BitVec 32) List!25367) Unit!37987)

(assert (=> b!1156614 (= lt!519241 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25364))))

(assert (=> b!1156614 false))

(declare-fun b!1156615 () Bool)

(declare-datatypes ((tuple2!18586 0))(
  ( (tuple2!18587 (_1!9303 (_ BitVec 64)) (_2!9303 V!43795)) )
))
(declare-datatypes ((List!25368 0))(
  ( (Nil!25365) (Cons!25364 (h!26573 tuple2!18586) (t!36838 List!25368)) )
))
(declare-datatypes ((ListLongMap!16567 0))(
  ( (ListLongMap!16568 (toList!8299 List!25368)) )
))
(declare-fun lt!519233 () ListLongMap!16567)

(declare-fun contains!6786 (ListLongMap!16567 (_ BitVec 64)) Bool)

(declare-fun +!3630 (ListLongMap!16567 tuple2!18586) ListLongMap!16567)

(assert (=> b!1156615 (contains!6786 (+!3630 lt!519233 (tuple2!18587 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!519230 () Unit!37987)

(declare-fun call!55194 () Unit!37987)

(assert (=> b!1156615 (= lt!519230 call!55194)))

(declare-fun call!55193 () Bool)

(assert (=> b!1156615 call!55193))

(declare-fun call!55198 () ListLongMap!16567)

(assert (=> b!1156615 (= lt!519233 call!55198)))

(declare-fun lt!519227 () Unit!37987)

(declare-fun lt!519228 () ListLongMap!16567)

(declare-fun addStillContains!926 (ListLongMap!16567 (_ BitVec 64) V!43795 (_ BitVec 64)) Unit!37987)

(assert (=> b!1156615 (= lt!519227 (addStillContains!926 lt!519228 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1156615 (= e!657809 lt!519230)))

(declare-fun c!115049 () Bool)

(declare-fun bm!55190 () Bool)

(assert (=> bm!55190 (= call!55194 (addStillContains!926 (ite c!115047 lt!519233 lt!519228) (ite c!115047 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115049 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115047 minValue!944 (ite c!115049 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1156616 () Bool)

(declare-fun call!55197 () ListLongMap!16567)

(declare-fun call!55195 () ListLongMap!16567)

(declare-fun e!657803 () Bool)

(declare-fun -!1376 (ListLongMap!16567 (_ BitVec 64)) ListLongMap!16567)

(assert (=> b!1156616 (= e!657803 (= call!55195 (-!1376 call!55197 k0!934)))))

(declare-fun b!1156617 () Bool)

(declare-fun e!657807 () Bool)

(declare-fun e!657802 () Bool)

(assert (=> b!1156617 (= e!657807 e!657802)))

(declare-fun res!768314 () Bool)

(assert (=> b!1156617 (=> res!768314 e!657802)))

(assert (=> b!1156617 (= res!768314 (not (= (select (arr!36044 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1156617 e!657803))

(declare-fun c!115045 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156617 (= c!115045 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519224 () Unit!37987)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!603 (array!74794 array!74796 (_ BitVec 32) (_ BitVec 32) V!43795 V!43795 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37987)

(assert (=> b!1156617 (= lt!519224 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!603 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55191 () Bool)

(declare-fun call!55199 () ListLongMap!16567)

(assert (=> bm!55191 (= call!55199 call!55198)))

(declare-fun lt!519238 () ListLongMap!16567)

(declare-fun lt!519232 () array!74796)

(declare-fun lt!519237 () array!74794)

(declare-fun e!657798 () Bool)

(declare-fun b!1156618 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4737 (array!74794 array!74796 (_ BitVec 32) (_ BitVec 32) V!43795 V!43795 (_ BitVec 32) Int) ListLongMap!16567)

(assert (=> b!1156618 (= e!657798 (= lt!519238 (getCurrentListMapNoExtraKeys!4737 lt!519237 lt!519232 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1156620 () Bool)

(declare-fun e!657810 () Bool)

(declare-fun e!657805 () Bool)

(assert (=> b!1156620 (= e!657810 e!657805)))

(declare-fun res!768316 () Bool)

(assert (=> b!1156620 (=> (not res!768316) (not e!657805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74794 (_ BitVec 32)) Bool)

(assert (=> b!1156620 (= res!768316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519237 mask!1564))))

(assert (=> b!1156620 (= lt!519237 (array!74795 (store (arr!36044 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36581 _keys!1208)))))

(declare-fun b!1156621 () Bool)

(declare-fun call!55196 () Bool)

(assert (=> b!1156621 call!55196))

(declare-fun lt!519242 () Unit!37987)

(declare-fun call!55200 () Unit!37987)

(assert (=> b!1156621 (= lt!519242 call!55200)))

(declare-fun e!657800 () Unit!37987)

(assert (=> b!1156621 (= e!657800 lt!519242)))

(declare-fun b!1156622 () Bool)

(declare-fun res!768321 () Bool)

(assert (=> b!1156622 (=> (not res!768321) (not e!657810))))

(assert (=> b!1156622 (= res!768321 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25364))))

(declare-fun b!1156623 () Bool)

(declare-fun e!657811 () Unit!37987)

(assert (=> b!1156623 (= e!657811 e!657800)))

(declare-fun c!115046 () Bool)

(assert (=> b!1156623 (= c!115046 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519234))))

(declare-fun bm!55192 () Bool)

(assert (=> bm!55192 (= call!55197 (getCurrentListMapNoExtraKeys!4737 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156624 () Bool)

(declare-fun e!657808 () Bool)

(declare-fun tp_is_empty!29001 () Bool)

(assert (=> b!1156624 (= e!657808 tp_is_empty!29001)))

(declare-fun bm!55193 () Bool)

(assert (=> bm!55193 (= call!55193 (contains!6786 (ite c!115047 lt!519233 call!55199) k0!934))))

(declare-fun b!1156625 () Bool)

(assert (=> b!1156625 (= e!657802 true)))

(assert (=> b!1156625 e!657798))

(declare-fun res!768315 () Bool)

(assert (=> b!1156625 (=> (not res!768315) (not e!657798))))

(assert (=> b!1156625 (= res!768315 (= lt!519238 lt!519228))))

(declare-fun lt!519226 () ListLongMap!16567)

(assert (=> b!1156625 (= lt!519238 (-!1376 lt!519226 k0!934))))

(declare-fun lt!519231 () V!43795)

(assert (=> b!1156625 (= (-!1376 (+!3630 lt!519228 (tuple2!18587 (select (arr!36044 _keys!1208) from!1455) lt!519231)) (select (arr!36044 _keys!1208) from!1455)) lt!519228)))

(declare-fun lt!519235 () Unit!37987)

(declare-fun addThenRemoveForNewKeyIsSame!218 (ListLongMap!16567 (_ BitVec 64) V!43795) Unit!37987)

(assert (=> b!1156625 (= lt!519235 (addThenRemoveForNewKeyIsSame!218 lt!519228 (select (arr!36044 _keys!1208) from!1455) lt!519231))))

(declare-fun lt!519229 () V!43795)

(declare-fun get!18396 (ValueCell!13791 V!43795) V!43795)

(assert (=> b!1156625 (= lt!519231 (get!18396 (select (arr!36045 _values!996) from!1455) lt!519229))))

(declare-fun lt!519243 () Unit!37987)

(assert (=> b!1156625 (= lt!519243 e!657801)))

(declare-fun c!115048 () Bool)

(assert (=> b!1156625 (= c!115048 (contains!6786 lt!519228 k0!934))))

(assert (=> b!1156625 (= lt!519228 (getCurrentListMapNoExtraKeys!4737 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156626 () Bool)

(declare-fun res!768323 () Bool)

(assert (=> b!1156626 (=> (not res!768323) (not e!657810))))

(assert (=> b!1156626 (= res!768323 (and (= (size!36582 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36581 _keys!1208) (size!36582 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1156627 () Bool)

(assert (=> b!1156627 (= e!657803 (= call!55195 call!55197))))

(declare-fun bm!55194 () Bool)

(assert (=> bm!55194 (= call!55198 (+!3630 lt!519228 (ite (or c!115047 c!115049) (tuple2!18587 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18587 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1156628 () Bool)

(declare-fun arrayContainsKey!0 (array!74794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156628 (= e!657806 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1156629 () Bool)

(declare-fun res!768309 () Bool)

(assert (=> b!1156629 (=> (not res!768309) (not e!657805))))

(assert (=> b!1156629 (= res!768309 (arrayNoDuplicates!0 lt!519237 #b00000000000000000000000000000000 Nil!25364))))

(declare-fun b!1156630 () Bool)

(declare-fun res!768319 () Bool)

(assert (=> b!1156630 (=> (not res!768319) (not e!657810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1156630 (= res!768319 (validKeyInArray!0 k0!934))))

(declare-fun b!1156631 () Bool)

(assert (=> b!1156631 (= e!657797 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!55195 () Bool)

(assert (=> bm!55195 (= call!55196 call!55193)))

(declare-fun b!1156632 () Bool)

(assert (=> b!1156632 (= c!115049 (and (not lt!519234) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1156632 (= e!657809 e!657811)))

(declare-fun mapIsEmpty!45326 () Bool)

(declare-fun mapRes!45326 () Bool)

(assert (=> mapIsEmpty!45326 mapRes!45326))

(declare-fun b!1156633 () Bool)

(declare-fun Unit!37990 () Unit!37987)

(assert (=> b!1156633 (= e!657801 Unit!37990)))

(declare-fun bm!55196 () Bool)

(assert (=> bm!55196 (= call!55200 call!55194)))

(declare-fun bm!55197 () Bool)

(assert (=> bm!55197 (= call!55195 (getCurrentListMapNoExtraKeys!4737 lt!519237 lt!519232 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156634 () Bool)

(declare-fun Unit!37991 () Unit!37987)

(assert (=> b!1156634 (= e!657800 Unit!37991)))

(declare-fun b!1156635 () Bool)

(declare-fun e!657812 () Bool)

(assert (=> b!1156635 (= e!657812 (and e!657808 mapRes!45326))))

(declare-fun condMapEmpty!45326 () Bool)

(declare-fun mapDefault!45326 () ValueCell!13791)

(assert (=> b!1156635 (= condMapEmpty!45326 (= (arr!36045 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13791)) mapDefault!45326)))))

(declare-fun b!1156636 () Bool)

(assert (=> b!1156636 (= e!657806 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!519234) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1156637 () Bool)

(declare-fun e!657804 () Bool)

(assert (=> b!1156637 (= e!657805 (not e!657804))))

(declare-fun res!768322 () Bool)

(assert (=> b!1156637 (=> res!768322 e!657804)))

(assert (=> b!1156637 (= res!768322 (bvsgt from!1455 i!673))))

(assert (=> b!1156637 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!519240 () Unit!37987)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74794 (_ BitVec 64) (_ BitVec 32)) Unit!37987)

(assert (=> b!1156637 (= lt!519240 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!45326 () Bool)

(declare-fun tp!86124 () Bool)

(declare-fun e!657813 () Bool)

(assert (=> mapNonEmpty!45326 (= mapRes!45326 (and tp!86124 e!657813))))

(declare-fun mapValue!45326 () ValueCell!13791)

(declare-fun mapKey!45326 () (_ BitVec 32))

(declare-fun mapRest!45326 () (Array (_ BitVec 32) ValueCell!13791))

(assert (=> mapNonEmpty!45326 (= (arr!36045 _values!996) (store mapRest!45326 mapKey!45326 mapValue!45326))))

(declare-fun b!1156638 () Bool)

(assert (=> b!1156638 (= e!657813 tp_is_empty!29001)))

(declare-fun b!1156639 () Bool)

(declare-fun lt!519222 () Unit!37987)

(assert (=> b!1156639 (= e!657811 lt!519222)))

(assert (=> b!1156639 (= lt!519222 call!55200)))

(assert (=> b!1156639 call!55196))

(declare-fun b!1156640 () Bool)

(declare-fun res!768320 () Bool)

(assert (=> b!1156640 (=> (not res!768320) (not e!657810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1156640 (= res!768320 (validMask!0 mask!1564))))

(declare-fun b!1156641 () Bool)

(declare-fun res!768312 () Bool)

(assert (=> b!1156641 (=> (not res!768312) (not e!657810))))

(assert (=> b!1156641 (= res!768312 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36581 _keys!1208))))))

(declare-fun res!768311 () Bool)

(assert (=> start!98902 (=> (not res!768311) (not e!657810))))

(assert (=> start!98902 (= res!768311 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36581 _keys!1208))))))

(assert (=> start!98902 e!657810))

(assert (=> start!98902 tp_is_empty!29001))

(declare-fun array_inv!27456 (array!74794) Bool)

(assert (=> start!98902 (array_inv!27456 _keys!1208)))

(assert (=> start!98902 true))

(assert (=> start!98902 tp!86125))

(declare-fun array_inv!27457 (array!74796) Bool)

(assert (=> start!98902 (and (array_inv!27457 _values!996) e!657812)))

(declare-fun b!1156619 () Bool)

(assert (=> b!1156619 (= e!657804 e!657807)))

(declare-fun res!768317 () Bool)

(assert (=> b!1156619 (=> res!768317 e!657807)))

(assert (=> b!1156619 (= res!768317 (not (= from!1455 i!673)))))

(declare-fun lt!519223 () ListLongMap!16567)

(assert (=> b!1156619 (= lt!519223 (getCurrentListMapNoExtraKeys!4737 lt!519237 lt!519232 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1156619 (= lt!519232 (array!74797 (store (arr!36045 _values!996) i!673 (ValueCellFull!13791 lt!519229)) (size!36582 _values!996)))))

(declare-fun dynLambda!2749 (Int (_ BitVec 64)) V!43795)

(assert (=> b!1156619 (= lt!519229 (dynLambda!2749 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1156619 (= lt!519226 (getCurrentListMapNoExtraKeys!4737 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1156642 () Bool)

(declare-fun res!768310 () Bool)

(assert (=> b!1156642 (=> (not res!768310) (not e!657810))))

(assert (=> b!1156642 (= res!768310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1156643 () Bool)

(declare-fun res!768313 () Bool)

(assert (=> b!1156643 (=> (not res!768313) (not e!657810))))

(assert (=> b!1156643 (= res!768313 (= (select (arr!36044 _keys!1208) i!673) k0!934))))

(assert (= (and start!98902 res!768311) b!1156640))

(assert (= (and b!1156640 res!768320) b!1156626))

(assert (= (and b!1156626 res!768323) b!1156642))

(assert (= (and b!1156642 res!768310) b!1156622))

(assert (= (and b!1156622 res!768321) b!1156641))

(assert (= (and b!1156641 res!768312) b!1156630))

(assert (= (and b!1156630 res!768319) b!1156643))

(assert (= (and b!1156643 res!768313) b!1156620))

(assert (= (and b!1156620 res!768316) b!1156629))

(assert (= (and b!1156629 res!768309) b!1156637))

(assert (= (and b!1156637 (not res!768322)) b!1156619))

(assert (= (and b!1156619 (not res!768317)) b!1156617))

(assert (= (and b!1156617 c!115045) b!1156616))

(assert (= (and b!1156617 (not c!115045)) b!1156627))

(assert (= (or b!1156616 b!1156627) bm!55197))

(assert (= (or b!1156616 b!1156627) bm!55192))

(assert (= (and b!1156617 (not res!768314)) b!1156625))

(assert (= (and b!1156625 c!115048) b!1156614))

(assert (= (and b!1156625 (not c!115048)) b!1156633))

(assert (= (and b!1156614 c!115047) b!1156615))

(assert (= (and b!1156614 (not c!115047)) b!1156632))

(assert (= (and b!1156632 c!115049) b!1156639))

(assert (= (and b!1156632 (not c!115049)) b!1156623))

(assert (= (and b!1156623 c!115046) b!1156621))

(assert (= (and b!1156623 (not c!115046)) b!1156634))

(assert (= (or b!1156639 b!1156621) bm!55196))

(assert (= (or b!1156639 b!1156621) bm!55191))

(assert (= (or b!1156639 b!1156621) bm!55195))

(assert (= (or b!1156615 bm!55195) bm!55193))

(assert (= (or b!1156615 bm!55196) bm!55190))

(assert (= (or b!1156615 bm!55191) bm!55194))

(assert (= (and b!1156614 c!115050) b!1156628))

(assert (= (and b!1156614 (not c!115050)) b!1156636))

(assert (= (and b!1156614 res!768318) b!1156631))

(assert (= (and b!1156625 res!768315) b!1156618))

(assert (= (and b!1156635 condMapEmpty!45326) mapIsEmpty!45326))

(assert (= (and b!1156635 (not condMapEmpty!45326)) mapNonEmpty!45326))

(get-info :version)

(assert (= (and mapNonEmpty!45326 ((_ is ValueCellFull!13791) mapValue!45326)) b!1156638))

(assert (= (and b!1156635 ((_ is ValueCellFull!13791) mapDefault!45326)) b!1156624))

(assert (= start!98902 b!1156635))

(declare-fun b_lambda!19595 () Bool)

(assert (=> (not b_lambda!19595) (not b!1156619)))

(declare-fun t!36836 () Bool)

(declare-fun tb!9291 () Bool)

(assert (=> (and start!98902 (= defaultEntry!1004 defaultEntry!1004) t!36836) tb!9291))

(declare-fun result!19139 () Bool)

(assert (=> tb!9291 (= result!19139 tp_is_empty!29001)))

(assert (=> b!1156619 t!36836))

(declare-fun b_and!39807 () Bool)

(assert (= b_and!39805 (and (=> t!36836 result!19139) b_and!39807)))

(declare-fun m!1066103 () Bool)

(assert (=> b!1156614 m!1066103))

(declare-fun m!1066105 () Bool)

(assert (=> b!1156614 m!1066105))

(declare-fun m!1066107 () Bool)

(assert (=> b!1156614 m!1066107))

(declare-fun m!1066109 () Bool)

(assert (=> b!1156614 m!1066109))

(declare-fun m!1066111 () Bool)

(assert (=> b!1156622 m!1066111))

(declare-fun m!1066113 () Bool)

(assert (=> b!1156618 m!1066113))

(declare-fun m!1066115 () Bool)

(assert (=> mapNonEmpty!45326 m!1066115))

(declare-fun m!1066117 () Bool)

(assert (=> bm!55192 m!1066117))

(declare-fun m!1066119 () Bool)

(assert (=> b!1156616 m!1066119))

(declare-fun m!1066121 () Bool)

(assert (=> b!1156637 m!1066121))

(declare-fun m!1066123 () Bool)

(assert (=> b!1156637 m!1066123))

(declare-fun m!1066125 () Bool)

(assert (=> bm!55193 m!1066125))

(declare-fun m!1066127 () Bool)

(assert (=> b!1156628 m!1066127))

(declare-fun m!1066129 () Bool)

(assert (=> b!1156643 m!1066129))

(declare-fun m!1066131 () Bool)

(assert (=> b!1156642 m!1066131))

(declare-fun m!1066133 () Bool)

(assert (=> b!1156620 m!1066133))

(declare-fun m!1066135 () Bool)

(assert (=> b!1156620 m!1066135))

(assert (=> b!1156631 m!1066127))

(declare-fun m!1066137 () Bool)

(assert (=> b!1156619 m!1066137))

(declare-fun m!1066139 () Bool)

(assert (=> b!1156619 m!1066139))

(declare-fun m!1066141 () Bool)

(assert (=> b!1156619 m!1066141))

(declare-fun m!1066143 () Bool)

(assert (=> b!1156619 m!1066143))

(declare-fun m!1066145 () Bool)

(assert (=> b!1156617 m!1066145))

(declare-fun m!1066147 () Bool)

(assert (=> b!1156617 m!1066147))

(declare-fun m!1066149 () Bool)

(assert (=> b!1156629 m!1066149))

(declare-fun m!1066151 () Bool)

(assert (=> b!1156630 m!1066151))

(assert (=> b!1156625 m!1066117))

(declare-fun m!1066153 () Bool)

(assert (=> b!1156625 m!1066153))

(declare-fun m!1066155 () Bool)

(assert (=> b!1156625 m!1066155))

(declare-fun m!1066157 () Bool)

(assert (=> b!1156625 m!1066157))

(assert (=> b!1156625 m!1066145))

(declare-fun m!1066159 () Bool)

(assert (=> b!1156625 m!1066159))

(assert (=> b!1156625 m!1066153))

(declare-fun m!1066161 () Bool)

(assert (=> b!1156625 m!1066161))

(assert (=> b!1156625 m!1066157))

(assert (=> b!1156625 m!1066145))

(declare-fun m!1066163 () Bool)

(assert (=> b!1156625 m!1066163))

(declare-fun m!1066165 () Bool)

(assert (=> b!1156625 m!1066165))

(assert (=> b!1156625 m!1066145))

(assert (=> bm!55197 m!1066113))

(declare-fun m!1066167 () Bool)

(assert (=> b!1156615 m!1066167))

(assert (=> b!1156615 m!1066167))

(declare-fun m!1066169 () Bool)

(assert (=> b!1156615 m!1066169))

(declare-fun m!1066171 () Bool)

(assert (=> b!1156615 m!1066171))

(declare-fun m!1066173 () Bool)

(assert (=> bm!55194 m!1066173))

(declare-fun m!1066175 () Bool)

(assert (=> b!1156640 m!1066175))

(declare-fun m!1066177 () Bool)

(assert (=> start!98902 m!1066177))

(declare-fun m!1066179 () Bool)

(assert (=> start!98902 m!1066179))

(declare-fun m!1066181 () Bool)

(assert (=> bm!55190 m!1066181))

(check-sat (not b!1156622) (not b_next!24471) (not b!1156618) (not b!1156625) (not b!1156629) (not b!1156616) (not mapNonEmpty!45326) (not bm!55194) (not bm!55197) (not b_lambda!19595) (not b!1156631) b_and!39807 (not bm!55193) (not bm!55192) (not start!98902) (not b!1156615) (not b!1156630) (not b!1156620) tp_is_empty!29001 (not b!1156642) (not b!1156614) (not b!1156619) (not b!1156628) (not b!1156640) (not bm!55190) (not b!1156617) (not b!1156637))
(check-sat b_and!39807 (not b_next!24471))
