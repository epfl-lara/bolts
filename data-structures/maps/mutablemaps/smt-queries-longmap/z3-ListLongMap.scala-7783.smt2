; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97480 () Bool)

(assert start!97480)

(declare-fun b_free!23415 () Bool)

(declare-fun b_next!23415 () Bool)

(assert (=> start!97480 (= b_free!23415 (not b_next!23415))))

(declare-fun tp!82544 () Bool)

(declare-fun b_and!37687 () Bool)

(assert (=> start!97480 (= tp!82544 b_and!37687)))

(declare-fun b!1111743 () Bool)

(declare-fun e!633959 () Bool)

(declare-fun tp_is_empty!27675 () Bool)

(assert (=> b!1111743 (= e!633959 tp_is_empty!27675)))

(declare-fun b!1111744 () Bool)

(declare-fun res!741976 () Bool)

(declare-fun e!633958 () Bool)

(assert (=> b!1111744 (=> (not res!741976) (not e!633958))))

(declare-datatypes ((array!72210 0))(
  ( (array!72211 (arr!34754 (Array (_ BitVec 32) (_ BitVec 64))) (size!35291 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72210)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72210 (_ BitVec 32)) Bool)

(assert (=> b!1111744 (= res!741976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111745 () Bool)

(declare-fun res!741979 () Bool)

(declare-fun e!633952 () Bool)

(assert (=> b!1111745 (=> (not res!741979) (not e!633952))))

(declare-fun lt!496381 () array!72210)

(declare-datatypes ((List!24380 0))(
  ( (Nil!24377) (Cons!24376 (h!25585 (_ BitVec 64)) (t!34848 List!24380)) )
))
(declare-fun arrayNoDuplicates!0 (array!72210 (_ BitVec 32) List!24380) Bool)

(assert (=> b!1111745 (= res!741979 (arrayNoDuplicates!0 lt!496381 #b00000000000000000000000000000000 Nil!24377))))

(declare-fun b!1111746 () Bool)

(declare-fun e!633955 () Bool)

(assert (=> b!1111746 (= e!633955 true)))

(declare-fun e!633957 () Bool)

(assert (=> b!1111746 e!633957))

(declare-fun c!109274 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1111746 (= c!109274 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42027 0))(
  ( (V!42028 (val!13894 Int)) )
))
(declare-fun zeroValue!944 () V!42027)

(declare-datatypes ((Unit!36397 0))(
  ( (Unit!36398) )
))
(declare-fun lt!496382 () Unit!36397)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13128 0))(
  ( (ValueCellFull!13128 (v!16528 V!42027)) (EmptyCell!13128) )
))
(declare-datatypes ((array!72212 0))(
  ( (array!72213 (arr!34755 (Array (_ BitVec 32) ValueCell!13128)) (size!35292 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72212)

(declare-fun minValue!944 () V!42027)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!304 (array!72210 array!72212 (_ BitVec 32) (_ BitVec 32) V!42027 V!42027 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36397)

(assert (=> b!1111746 (= lt!496382 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!304 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((tuple2!17644 0))(
  ( (tuple2!17645 (_1!8832 (_ BitVec 64)) (_2!8832 V!42027)) )
))
(declare-datatypes ((List!24381 0))(
  ( (Nil!24378) (Cons!24377 (h!25586 tuple2!17644) (t!34849 List!24381)) )
))
(declare-datatypes ((ListLongMap!15625 0))(
  ( (ListLongMap!15626 (toList!7828 List!24381)) )
))
(declare-fun call!46942 () ListLongMap!15625)

(declare-fun b!1111747 () Bool)

(declare-fun call!46943 () ListLongMap!15625)

(declare-fun -!1048 (ListLongMap!15625 (_ BitVec 64)) ListLongMap!15625)

(assert (=> b!1111747 (= e!633957 (= call!46943 (-!1048 call!46942 k0!934)))))

(declare-fun b!1111748 () Bool)

(declare-fun res!741980 () Bool)

(assert (=> b!1111748 (=> (not res!741980) (not e!633958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111748 (= res!741980 (validKeyInArray!0 k0!934))))

(declare-fun b!1111749 () Bool)

(declare-fun res!741975 () Bool)

(assert (=> b!1111749 (=> (not res!741975) (not e!633958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111749 (= res!741975 (validMask!0 mask!1564))))

(declare-fun bm!46939 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4289 (array!72210 array!72212 (_ BitVec 32) (_ BitVec 32) V!42027 V!42027 (_ BitVec 32) Int) ListLongMap!15625)

(declare-fun dynLambda!2411 (Int (_ BitVec 64)) V!42027)

(assert (=> bm!46939 (= call!46943 (getCurrentListMapNoExtraKeys!4289 lt!496381 (array!72213 (store (arr!34755 _values!996) i!673 (ValueCellFull!13128 (dynLambda!2411 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35292 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111751 () Bool)

(assert (=> b!1111751 (= e!633958 e!633952)))

(declare-fun res!741971 () Bool)

(assert (=> b!1111751 (=> (not res!741971) (not e!633952))))

(assert (=> b!1111751 (= res!741971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496381 mask!1564))))

(assert (=> b!1111751 (= lt!496381 (array!72211 (store (arr!34754 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35291 _keys!1208)))))

(declare-fun b!1111752 () Bool)

(declare-fun res!741973 () Bool)

(assert (=> b!1111752 (=> (not res!741973) (not e!633958))))

(assert (=> b!1111752 (= res!741973 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35291 _keys!1208))))))

(declare-fun b!1111753 () Bool)

(declare-fun res!741977 () Bool)

(assert (=> b!1111753 (=> (not res!741977) (not e!633958))))

(assert (=> b!1111753 (= res!741977 (and (= (size!35292 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35291 _keys!1208) (size!35292 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111754 () Bool)

(declare-fun e!633954 () Bool)

(declare-fun e!633953 () Bool)

(declare-fun mapRes!43330 () Bool)

(assert (=> b!1111754 (= e!633954 (and e!633953 mapRes!43330))))

(declare-fun condMapEmpty!43330 () Bool)

(declare-fun mapDefault!43330 () ValueCell!13128)

(assert (=> b!1111754 (= condMapEmpty!43330 (= (arr!34755 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13128)) mapDefault!43330)))))

(declare-fun b!1111750 () Bool)

(declare-fun res!741981 () Bool)

(assert (=> b!1111750 (=> (not res!741981) (not e!633958))))

(assert (=> b!1111750 (= res!741981 (= (select (arr!34754 _keys!1208) i!673) k0!934))))

(declare-fun res!741974 () Bool)

(assert (=> start!97480 (=> (not res!741974) (not e!633958))))

(assert (=> start!97480 (= res!741974 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35291 _keys!1208))))))

(assert (=> start!97480 e!633958))

(assert (=> start!97480 tp_is_empty!27675))

(declare-fun array_inv!26598 (array!72210) Bool)

(assert (=> start!97480 (array_inv!26598 _keys!1208)))

(assert (=> start!97480 true))

(assert (=> start!97480 tp!82544))

(declare-fun array_inv!26599 (array!72212) Bool)

(assert (=> start!97480 (and (array_inv!26599 _values!996) e!633954)))

(declare-fun b!1111755 () Bool)

(assert (=> b!1111755 (= e!633953 tp_is_empty!27675)))

(declare-fun b!1111756 () Bool)

(declare-fun res!741978 () Bool)

(assert (=> b!1111756 (=> (not res!741978) (not e!633958))))

(assert (=> b!1111756 (= res!741978 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24377))))

(declare-fun mapNonEmpty!43330 () Bool)

(declare-fun tp!82545 () Bool)

(assert (=> mapNonEmpty!43330 (= mapRes!43330 (and tp!82545 e!633959))))

(declare-fun mapKey!43330 () (_ BitVec 32))

(declare-fun mapValue!43330 () ValueCell!13128)

(declare-fun mapRest!43330 () (Array (_ BitVec 32) ValueCell!13128))

(assert (=> mapNonEmpty!43330 (= (arr!34755 _values!996) (store mapRest!43330 mapKey!43330 mapValue!43330))))

(declare-fun bm!46940 () Bool)

(assert (=> bm!46940 (= call!46942 (getCurrentListMapNoExtraKeys!4289 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43330 () Bool)

(assert (=> mapIsEmpty!43330 mapRes!43330))

(declare-fun b!1111757 () Bool)

(assert (=> b!1111757 (= e!633957 (= call!46943 call!46942))))

(declare-fun b!1111758 () Bool)

(assert (=> b!1111758 (= e!633952 (not e!633955))))

(declare-fun res!741972 () Bool)

(assert (=> b!1111758 (=> res!741972 e!633955)))

(assert (=> b!1111758 (= res!741972 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35291 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111758 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496383 () Unit!36397)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72210 (_ BitVec 64) (_ BitVec 32)) Unit!36397)

(assert (=> b!1111758 (= lt!496383 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97480 res!741974) b!1111749))

(assert (= (and b!1111749 res!741975) b!1111753))

(assert (= (and b!1111753 res!741977) b!1111744))

(assert (= (and b!1111744 res!741976) b!1111756))

(assert (= (and b!1111756 res!741978) b!1111752))

(assert (= (and b!1111752 res!741973) b!1111748))

(assert (= (and b!1111748 res!741980) b!1111750))

(assert (= (and b!1111750 res!741981) b!1111751))

(assert (= (and b!1111751 res!741971) b!1111745))

(assert (= (and b!1111745 res!741979) b!1111758))

(assert (= (and b!1111758 (not res!741972)) b!1111746))

(assert (= (and b!1111746 c!109274) b!1111747))

(assert (= (and b!1111746 (not c!109274)) b!1111757))

(assert (= (or b!1111747 b!1111757) bm!46939))

(assert (= (or b!1111747 b!1111757) bm!46940))

(assert (= (and b!1111754 condMapEmpty!43330) mapIsEmpty!43330))

(assert (= (and b!1111754 (not condMapEmpty!43330)) mapNonEmpty!43330))

(get-info :version)

(assert (= (and mapNonEmpty!43330 ((_ is ValueCellFull!13128) mapValue!43330)) b!1111743))

(assert (= (and b!1111754 ((_ is ValueCellFull!13128) mapDefault!43330)) b!1111755))

(assert (= start!97480 b!1111754))

(declare-fun b_lambda!18471 () Bool)

(assert (=> (not b_lambda!18471) (not bm!46939)))

(declare-fun t!34847 () Bool)

(declare-fun tb!8289 () Bool)

(assert (=> (and start!97480 (= defaultEntry!1004 defaultEntry!1004) t!34847) tb!8289))

(declare-fun result!17131 () Bool)

(assert (=> tb!8289 (= result!17131 tp_is_empty!27675)))

(assert (=> bm!46939 t!34847))

(declare-fun b_and!37689 () Bool)

(assert (= b_and!37687 (and (=> t!34847 result!17131) b_and!37689)))

(declare-fun m!1029573 () Bool)

(assert (=> mapNonEmpty!43330 m!1029573))

(declare-fun m!1029575 () Bool)

(assert (=> b!1111749 m!1029575))

(declare-fun m!1029577 () Bool)

(assert (=> b!1111747 m!1029577))

(declare-fun m!1029579 () Bool)

(assert (=> b!1111750 m!1029579))

(declare-fun m!1029581 () Bool)

(assert (=> bm!46939 m!1029581))

(declare-fun m!1029583 () Bool)

(assert (=> bm!46939 m!1029583))

(declare-fun m!1029585 () Bool)

(assert (=> bm!46939 m!1029585))

(declare-fun m!1029587 () Bool)

(assert (=> bm!46940 m!1029587))

(declare-fun m!1029589 () Bool)

(assert (=> b!1111756 m!1029589))

(declare-fun m!1029591 () Bool)

(assert (=> start!97480 m!1029591))

(declare-fun m!1029593 () Bool)

(assert (=> start!97480 m!1029593))

(declare-fun m!1029595 () Bool)

(assert (=> b!1111746 m!1029595))

(declare-fun m!1029597 () Bool)

(assert (=> b!1111751 m!1029597))

(declare-fun m!1029599 () Bool)

(assert (=> b!1111751 m!1029599))

(declare-fun m!1029601 () Bool)

(assert (=> b!1111744 m!1029601))

(declare-fun m!1029603 () Bool)

(assert (=> b!1111748 m!1029603))

(declare-fun m!1029605 () Bool)

(assert (=> b!1111745 m!1029605))

(declare-fun m!1029607 () Bool)

(assert (=> b!1111758 m!1029607))

(declare-fun m!1029609 () Bool)

(assert (=> b!1111758 m!1029609))

(check-sat (not b!1111744) (not b!1111758) (not bm!46940) (not b!1111749) (not b!1111746) (not b_lambda!18471) (not start!97480) (not bm!46939) (not mapNonEmpty!43330) (not b!1111745) tp_is_empty!27675 (not b!1111748) (not b!1111751) b_and!37689 (not b_next!23415) (not b!1111747) (not b!1111756))
(check-sat b_and!37689 (not b_next!23415))
