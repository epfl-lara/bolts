; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97384 () Bool)

(assert start!97384)

(declare-fun b_free!23319 () Bool)

(declare-fun b_next!23319 () Bool)

(assert (=> start!97384 (= b_free!23319 (not b_next!23319))))

(declare-fun tp!82257 () Bool)

(declare-fun b_and!37493 () Bool)

(assert (=> start!97384 (= tp!82257 b_and!37493)))

(declare-fun res!740391 () Bool)

(declare-fun e!632798 () Bool)

(assert (=> start!97384 (=> (not res!740391) (not e!632798))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72026 0))(
  ( (array!72027 (arr!34662 (Array (_ BitVec 32) (_ BitVec 64))) (size!35199 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72026)

(assert (=> start!97384 (= res!740391 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35199 _keys!1208))))))

(assert (=> start!97384 e!632798))

(declare-fun tp_is_empty!27579 () Bool)

(assert (=> start!97384 tp_is_empty!27579))

(declare-fun array_inv!26542 (array!72026) Bool)

(assert (=> start!97384 (array_inv!26542 _keys!1208)))

(assert (=> start!97384 true))

(assert (=> start!97384 tp!82257))

(declare-datatypes ((V!41899 0))(
  ( (V!41900 (val!13846 Int)) )
))
(declare-datatypes ((ValueCell!13080 0))(
  ( (ValueCellFull!13080 (v!16480 V!41899)) (EmptyCell!13080) )
))
(declare-datatypes ((array!72028 0))(
  ( (array!72029 (arr!34663 (Array (_ BitVec 32) ValueCell!13080)) (size!35200 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72028)

(declare-fun e!632794 () Bool)

(declare-fun array_inv!26543 (array!72028) Bool)

(assert (=> start!97384 (and (array_inv!26543 _values!996) e!632794)))

(declare-fun b!1109331 () Bool)

(declare-fun res!740388 () Bool)

(assert (=> b!1109331 (=> (not res!740388) (not e!632798))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1109331 (= res!740388 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35199 _keys!1208))))))

(declare-fun b!1109332 () Bool)

(declare-fun res!740389 () Bool)

(assert (=> b!1109332 (=> (not res!740389) (not e!632798))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1109332 (= res!740389 (and (= (size!35200 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35199 _keys!1208) (size!35200 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109333 () Bool)

(declare-fun e!632799 () Bool)

(assert (=> b!1109333 (= e!632798 e!632799)))

(declare-fun res!740394 () Bool)

(assert (=> b!1109333 (=> (not res!740394) (not e!632799))))

(declare-fun lt!495949 () array!72026)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72026 (_ BitVec 32)) Bool)

(assert (=> b!1109333 (= res!740394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495949 mask!1564))))

(assert (=> b!1109333 (= lt!495949 (array!72027 (store (arr!34662 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35199 _keys!1208)))))

(declare-fun b!1109334 () Bool)

(declare-fun res!740392 () Bool)

(assert (=> b!1109334 (=> (not res!740392) (not e!632799))))

(declare-datatypes ((List!24309 0))(
  ( (Nil!24306) (Cons!24305 (h!25514 (_ BitVec 64)) (t!34681 List!24309)) )
))
(declare-fun arrayNoDuplicates!0 (array!72026 (_ BitVec 32) List!24309) Bool)

(assert (=> b!1109334 (= res!740392 (arrayNoDuplicates!0 lt!495949 #b00000000000000000000000000000000 Nil!24306))))

(declare-fun mapNonEmpty!43186 () Bool)

(declare-fun mapRes!43186 () Bool)

(declare-fun tp!82256 () Bool)

(declare-fun e!632800 () Bool)

(assert (=> mapNonEmpty!43186 (= mapRes!43186 (and tp!82256 e!632800))))

(declare-fun mapRest!43186 () (Array (_ BitVec 32) ValueCell!13080))

(declare-fun mapValue!43186 () ValueCell!13080)

(declare-fun mapKey!43186 () (_ BitVec 32))

(assert (=> mapNonEmpty!43186 (= (arr!34663 _values!996) (store mapRest!43186 mapKey!43186 mapValue!43186))))

(declare-fun zeroValue!944 () V!41899)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46651 () Bool)

(declare-fun minValue!944 () V!41899)

(declare-datatypes ((tuple2!17572 0))(
  ( (tuple2!17573 (_1!8796 (_ BitVec 64)) (_2!8796 V!41899)) )
))
(declare-datatypes ((List!24310 0))(
  ( (Nil!24307) (Cons!24306 (h!25515 tuple2!17572) (t!34682 List!24310)) )
))
(declare-datatypes ((ListLongMap!15553 0))(
  ( (ListLongMap!15554 (toList!7792 List!24310)) )
))
(declare-fun call!46654 () ListLongMap!15553)

(declare-fun getCurrentListMapNoExtraKeys!4257 (array!72026 array!72028 (_ BitVec 32) (_ BitVec 32) V!41899 V!41899 (_ BitVec 32) Int) ListLongMap!15553)

(assert (=> bm!46651 (= call!46654 (getCurrentListMapNoExtraKeys!4257 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!46655 () ListLongMap!15553)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1109335 () Bool)

(declare-fun e!632796 () Bool)

(declare-fun -!1021 (ListLongMap!15553 (_ BitVec 64)) ListLongMap!15553)

(assert (=> b!1109335 (= e!632796 (= call!46655 (-!1021 call!46654 k0!934)))))

(declare-fun b!1109336 () Bool)

(declare-fun res!740395 () Bool)

(assert (=> b!1109336 (=> (not res!740395) (not e!632798))))

(assert (=> b!1109336 (= res!740395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109337 () Bool)

(assert (=> b!1109337 (= e!632800 tp_is_empty!27579)))

(declare-fun b!1109338 () Bool)

(declare-fun res!740390 () Bool)

(assert (=> b!1109338 (=> (not res!740390) (not e!632798))))

(assert (=> b!1109338 (= res!740390 (= (select (arr!34662 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43186 () Bool)

(assert (=> mapIsEmpty!43186 mapRes!43186))

(declare-fun b!1109339 () Bool)

(declare-fun e!632795 () Bool)

(assert (=> b!1109339 (= e!632799 (not e!632795))))

(declare-fun res!740396 () Bool)

(assert (=> b!1109339 (=> res!740396 e!632795)))

(assert (=> b!1109339 (= res!740396 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35199 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109339 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36331 0))(
  ( (Unit!36332) )
))
(declare-fun lt!495951 () Unit!36331)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72026 (_ BitVec 64) (_ BitVec 32)) Unit!36331)

(assert (=> b!1109339 (= lt!495951 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1109340 () Bool)

(declare-fun res!740387 () Bool)

(assert (=> b!1109340 (=> (not res!740387) (not e!632798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109340 (= res!740387 (validKeyInArray!0 k0!934))))

(declare-fun bm!46652 () Bool)

(declare-fun dynLambda!2381 (Int (_ BitVec 64)) V!41899)

(assert (=> bm!46652 (= call!46655 (getCurrentListMapNoExtraKeys!4257 lt!495949 (array!72029 (store (arr!34663 _values!996) i!673 (ValueCellFull!13080 (dynLambda!2381 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35200 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109341 () Bool)

(declare-fun res!740397 () Bool)

(assert (=> b!1109341 (=> (not res!740397) (not e!632798))))

(assert (=> b!1109341 (= res!740397 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24306))))

(declare-fun b!1109342 () Bool)

(assert (=> b!1109342 (= e!632795 true)))

(assert (=> b!1109342 e!632796))

(declare-fun c!109124 () Bool)

(assert (=> b!1109342 (= c!109124 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495950 () Unit!36331)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!273 (array!72026 array!72028 (_ BitVec 32) (_ BitVec 32) V!41899 V!41899 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36331)

(assert (=> b!1109342 (= lt!495950 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!273 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109343 () Bool)

(assert (=> b!1109343 (= e!632796 (= call!46655 call!46654))))

(declare-fun b!1109344 () Bool)

(declare-fun e!632797 () Bool)

(assert (=> b!1109344 (= e!632797 tp_is_empty!27579)))

(declare-fun b!1109345 () Bool)

(declare-fun res!740393 () Bool)

(assert (=> b!1109345 (=> (not res!740393) (not e!632798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109345 (= res!740393 (validMask!0 mask!1564))))

(declare-fun b!1109346 () Bool)

(assert (=> b!1109346 (= e!632794 (and e!632797 mapRes!43186))))

(declare-fun condMapEmpty!43186 () Bool)

(declare-fun mapDefault!43186 () ValueCell!13080)

(assert (=> b!1109346 (= condMapEmpty!43186 (= (arr!34663 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13080)) mapDefault!43186)))))

(assert (= (and start!97384 res!740391) b!1109345))

(assert (= (and b!1109345 res!740393) b!1109332))

(assert (= (and b!1109332 res!740389) b!1109336))

(assert (= (and b!1109336 res!740395) b!1109341))

(assert (= (and b!1109341 res!740397) b!1109331))

(assert (= (and b!1109331 res!740388) b!1109340))

(assert (= (and b!1109340 res!740387) b!1109338))

(assert (= (and b!1109338 res!740390) b!1109333))

(assert (= (and b!1109333 res!740394) b!1109334))

(assert (= (and b!1109334 res!740392) b!1109339))

(assert (= (and b!1109339 (not res!740396)) b!1109342))

(assert (= (and b!1109342 c!109124) b!1109335))

(assert (= (and b!1109342 (not c!109124)) b!1109343))

(assert (= (or b!1109335 b!1109343) bm!46652))

(assert (= (or b!1109335 b!1109343) bm!46651))

(assert (= (and b!1109346 condMapEmpty!43186) mapIsEmpty!43186))

(assert (= (and b!1109346 (not condMapEmpty!43186)) mapNonEmpty!43186))

(get-info :version)

(assert (= (and mapNonEmpty!43186 ((_ is ValueCellFull!13080) mapValue!43186)) b!1109337))

(assert (= (and b!1109346 ((_ is ValueCellFull!13080) mapDefault!43186)) b!1109344))

(assert (= start!97384 b!1109346))

(declare-fun b_lambda!18373 () Bool)

(assert (=> (not b_lambda!18373) (not bm!46652)))

(declare-fun t!34680 () Bool)

(declare-fun tb!8193 () Bool)

(assert (=> (and start!97384 (= defaultEntry!1004 defaultEntry!1004) t!34680) tb!8193))

(declare-fun result!16939 () Bool)

(assert (=> tb!8193 (= result!16939 tp_is_empty!27579)))

(assert (=> bm!46652 t!34680))

(declare-fun b_and!37495 () Bool)

(assert (= b_and!37493 (and (=> t!34680 result!16939) b_and!37495)))

(declare-fun m!1027749 () Bool)

(assert (=> b!1109339 m!1027749))

(declare-fun m!1027751 () Bool)

(assert (=> b!1109339 m!1027751))

(declare-fun m!1027753 () Bool)

(assert (=> b!1109342 m!1027753))

(declare-fun m!1027755 () Bool)

(assert (=> bm!46652 m!1027755))

(declare-fun m!1027757 () Bool)

(assert (=> bm!46652 m!1027757))

(declare-fun m!1027759 () Bool)

(assert (=> bm!46652 m!1027759))

(declare-fun m!1027761 () Bool)

(assert (=> b!1109338 m!1027761))

(declare-fun m!1027763 () Bool)

(assert (=> b!1109334 m!1027763))

(declare-fun m!1027765 () Bool)

(assert (=> b!1109335 m!1027765))

(declare-fun m!1027767 () Bool)

(assert (=> b!1109336 m!1027767))

(declare-fun m!1027769 () Bool)

(assert (=> mapNonEmpty!43186 m!1027769))

(declare-fun m!1027771 () Bool)

(assert (=> b!1109340 m!1027771))

(declare-fun m!1027773 () Bool)

(assert (=> b!1109341 m!1027773))

(declare-fun m!1027775 () Bool)

(assert (=> start!97384 m!1027775))

(declare-fun m!1027777 () Bool)

(assert (=> start!97384 m!1027777))

(declare-fun m!1027779 () Bool)

(assert (=> bm!46651 m!1027779))

(declare-fun m!1027781 () Bool)

(assert (=> b!1109345 m!1027781))

(declare-fun m!1027783 () Bool)

(assert (=> b!1109333 m!1027783))

(declare-fun m!1027785 () Bool)

(assert (=> b!1109333 m!1027785))

(check-sat (not mapNonEmpty!43186) (not bm!46651) (not b!1109340) (not b_lambda!18373) (not start!97384) (not b!1109334) (not b!1109335) (not b_next!23319) tp_is_empty!27579 (not b!1109333) (not b!1109339) (not b!1109341) (not bm!46652) (not b!1109345) (not b!1109342) (not b!1109336) b_and!37495)
(check-sat b_and!37495 (not b_next!23319))
