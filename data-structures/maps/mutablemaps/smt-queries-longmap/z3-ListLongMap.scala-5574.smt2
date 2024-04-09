; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73258 () Bool)

(assert start!73258)

(declare-fun b_free!14145 () Bool)

(declare-fun b_next!14145 () Bool)

(assert (=> start!73258 (= b_free!14145 (not b_next!14145))))

(declare-fun tp!49939 () Bool)

(declare-fun b_and!23467 () Bool)

(assert (=> start!73258 (= tp!49939 b_and!23467)))

(declare-fun mapNonEmpty!26021 () Bool)

(declare-fun mapRes!26021 () Bool)

(declare-fun tp!49940 () Bool)

(declare-fun e!475956 () Bool)

(assert (=> mapNonEmpty!26021 (= mapRes!26021 (and tp!49940 e!475956))))

(declare-fun mapKey!26021 () (_ BitVec 32))

(declare-datatypes ((V!26755 0))(
  ( (V!26756 (val!8188 Int)) )
))
(declare-datatypes ((ValueCell!7701 0))(
  ( (ValueCellFull!7701 (v!10609 V!26755)) (EmptyCell!7701) )
))
(declare-fun mapRest!26021 () (Array (_ BitVec 32) ValueCell!7701))

(declare-datatypes ((array!48746 0))(
  ( (array!48747 (arr!23400 (Array (_ BitVec 32) ValueCell!7701)) (size!23841 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48746)

(declare-fun mapValue!26021 () ValueCell!7701)

(assert (=> mapNonEmpty!26021 (= (arr!23400 _values!688) (store mapRest!26021 mapKey!26021 mapValue!26021))))

(declare-fun b!853412 () Bool)

(declare-fun e!475951 () Bool)

(assert (=> b!853412 (= e!475951 true)))

(declare-datatypes ((tuple2!10776 0))(
  ( (tuple2!10777 (_1!5398 (_ BitVec 64)) (_2!5398 V!26755)) )
))
(declare-fun lt!384760 () tuple2!10776)

(declare-fun lt!384762 () V!26755)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((List!16653 0))(
  ( (Nil!16650) (Cons!16649 (h!17780 tuple2!10776) (t!23252 List!16653)) )
))
(declare-datatypes ((ListLongMap!9559 0))(
  ( (ListLongMap!9560 (toList!4795 List!16653)) )
))
(declare-fun lt!384767 () ListLongMap!9559)

(declare-fun +!2134 (ListLongMap!9559 tuple2!10776) ListLongMap!9559)

(assert (=> b!853412 (= (+!2134 lt!384767 lt!384760) (+!2134 (+!2134 lt!384767 (tuple2!10777 k0!854 lt!384762)) lt!384760))))

(declare-fun lt!384763 () V!26755)

(assert (=> b!853412 (= lt!384760 (tuple2!10777 k0!854 lt!384763))))

(declare-datatypes ((Unit!29114 0))(
  ( (Unit!29115) )
))
(declare-fun lt!384759 () Unit!29114)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!314 (ListLongMap!9559 (_ BitVec 64) V!26755 V!26755) Unit!29114)

(assert (=> b!853412 (= lt!384759 (addSameAsAddTwiceSameKeyDiffValues!314 lt!384767 k0!854 lt!384762 lt!384763))))

(declare-fun lt!384761 () V!26755)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12360 (ValueCell!7701 V!26755) V!26755)

(assert (=> b!853412 (= lt!384762 (get!12360 (select (arr!23400 _values!688) from!1053) lt!384761))))

(declare-fun lt!384766 () ListLongMap!9559)

(declare-datatypes ((array!48748 0))(
  ( (array!48749 (arr!23401 (Array (_ BitVec 32) (_ BitVec 64))) (size!23842 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48748)

(assert (=> b!853412 (= lt!384766 (+!2134 lt!384767 (tuple2!10777 (select (arr!23401 _keys!868) from!1053) lt!384763)))))

(declare-fun v!557 () V!26755)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853412 (= lt!384763 (get!12360 (select (store (arr!23400 _values!688) i!612 (ValueCellFull!7701 v!557)) from!1053) lt!384761))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1062 (Int (_ BitVec 64)) V!26755)

(assert (=> b!853412 (= lt!384761 (dynLambda!1062 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384768 () array!48746)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26755)

(declare-fun zeroValue!654 () V!26755)

(declare-fun getCurrentListMapNoExtraKeys!2778 (array!48748 array!48746 (_ BitVec 32) (_ BitVec 32) V!26755 V!26755 (_ BitVec 32) Int) ListLongMap!9559)

(assert (=> b!853412 (= lt!384767 (getCurrentListMapNoExtraKeys!2778 _keys!868 lt!384768 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38291 () ListLongMap!9559)

(declare-fun bm!38287 () Bool)

(assert (=> bm!38287 (= call!38291 (getCurrentListMapNoExtraKeys!2778 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853413 () Bool)

(declare-fun res!579711 () Bool)

(declare-fun e!475955 () Bool)

(assert (=> b!853413 (=> (not res!579711) (not e!475955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48748 (_ BitVec 32)) Bool)

(assert (=> b!853413 (= res!579711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun call!38290 () ListLongMap!9559)

(declare-fun bm!38288 () Bool)

(assert (=> bm!38288 (= call!38290 (getCurrentListMapNoExtraKeys!2778 _keys!868 lt!384768 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853414 () Bool)

(declare-fun res!579716 () Bool)

(assert (=> b!853414 (=> (not res!579716) (not e!475955))))

(assert (=> b!853414 (= res!579716 (and (= (size!23841 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23842 _keys!868) (size!23841 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!579717 () Bool)

(assert (=> start!73258 (=> (not res!579717) (not e!475955))))

(assert (=> start!73258 (= res!579717 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23842 _keys!868))))))

(assert (=> start!73258 e!475955))

(declare-fun tp_is_empty!16281 () Bool)

(assert (=> start!73258 tp_is_empty!16281))

(assert (=> start!73258 true))

(assert (=> start!73258 tp!49939))

(declare-fun array_inv!18534 (array!48748) Bool)

(assert (=> start!73258 (array_inv!18534 _keys!868)))

(declare-fun e!475954 () Bool)

(declare-fun array_inv!18535 (array!48746) Bool)

(assert (=> start!73258 (and (array_inv!18535 _values!688) e!475954)))

(declare-fun b!853415 () Bool)

(declare-fun res!579718 () Bool)

(assert (=> b!853415 (=> (not res!579718) (not e!475955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853415 (= res!579718 (validMask!0 mask!1196))))

(declare-fun b!853416 () Bool)

(assert (=> b!853416 (= e!475956 tp_is_empty!16281)))

(declare-fun b!853417 () Bool)

(declare-fun res!579712 () Bool)

(assert (=> b!853417 (=> (not res!579712) (not e!475955))))

(declare-datatypes ((List!16654 0))(
  ( (Nil!16651) (Cons!16650 (h!17781 (_ BitVec 64)) (t!23253 List!16654)) )
))
(declare-fun arrayNoDuplicates!0 (array!48748 (_ BitVec 32) List!16654) Bool)

(assert (=> b!853417 (= res!579712 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16651))))

(declare-fun e!475952 () Bool)

(declare-fun b!853418 () Bool)

(assert (=> b!853418 (= e!475952 (= call!38290 (+!2134 call!38291 (tuple2!10777 k0!854 v!557))))))

(declare-fun mapIsEmpty!26021 () Bool)

(assert (=> mapIsEmpty!26021 mapRes!26021))

(declare-fun b!853419 () Bool)

(declare-fun e!475953 () Bool)

(assert (=> b!853419 (= e!475954 (and e!475953 mapRes!26021))))

(declare-fun condMapEmpty!26021 () Bool)

(declare-fun mapDefault!26021 () ValueCell!7701)

(assert (=> b!853419 (= condMapEmpty!26021 (= (arr!23400 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7701)) mapDefault!26021)))))

(declare-fun b!853420 () Bool)

(declare-fun res!579720 () Bool)

(assert (=> b!853420 (=> (not res!579720) (not e!475955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853420 (= res!579720 (validKeyInArray!0 k0!854))))

(declare-fun b!853421 () Bool)

(declare-fun e!475949 () Bool)

(assert (=> b!853421 (= e!475949 (not e!475951))))

(declare-fun res!579715 () Bool)

(assert (=> b!853421 (=> res!579715 e!475951)))

(assert (=> b!853421 (= res!579715 (not (validKeyInArray!0 (select (arr!23401 _keys!868) from!1053))))))

(assert (=> b!853421 e!475952))

(declare-fun c!91806 () Bool)

(assert (=> b!853421 (= c!91806 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384764 () Unit!29114)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!397 (array!48748 array!48746 (_ BitVec 32) (_ BitVec 32) V!26755 V!26755 (_ BitVec 32) (_ BitVec 64) V!26755 (_ BitVec 32) Int) Unit!29114)

(assert (=> b!853421 (= lt!384764 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!397 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853422 () Bool)

(declare-fun res!579713 () Bool)

(assert (=> b!853422 (=> (not res!579713) (not e!475955))))

(assert (=> b!853422 (= res!579713 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23842 _keys!868))))))

(declare-fun b!853423 () Bool)

(declare-fun res!579714 () Bool)

(assert (=> b!853423 (=> (not res!579714) (not e!475955))))

(assert (=> b!853423 (= res!579714 (and (= (select (arr!23401 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!853424 () Bool)

(assert (=> b!853424 (= e!475955 e!475949)))

(declare-fun res!579719 () Bool)

(assert (=> b!853424 (=> (not res!579719) (not e!475949))))

(assert (=> b!853424 (= res!579719 (= from!1053 i!612))))

(assert (=> b!853424 (= lt!384766 (getCurrentListMapNoExtraKeys!2778 _keys!868 lt!384768 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853424 (= lt!384768 (array!48747 (store (arr!23400 _values!688) i!612 (ValueCellFull!7701 v!557)) (size!23841 _values!688)))))

(declare-fun lt!384765 () ListLongMap!9559)

(assert (=> b!853424 (= lt!384765 (getCurrentListMapNoExtraKeys!2778 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853425 () Bool)

(assert (=> b!853425 (= e!475952 (= call!38290 call!38291))))

(declare-fun b!853426 () Bool)

(assert (=> b!853426 (= e!475953 tp_is_empty!16281)))

(assert (= (and start!73258 res!579717) b!853415))

(assert (= (and b!853415 res!579718) b!853414))

(assert (= (and b!853414 res!579716) b!853413))

(assert (= (and b!853413 res!579711) b!853417))

(assert (= (and b!853417 res!579712) b!853422))

(assert (= (and b!853422 res!579713) b!853420))

(assert (= (and b!853420 res!579720) b!853423))

(assert (= (and b!853423 res!579714) b!853424))

(assert (= (and b!853424 res!579719) b!853421))

(assert (= (and b!853421 c!91806) b!853418))

(assert (= (and b!853421 (not c!91806)) b!853425))

(assert (= (or b!853418 b!853425) bm!38288))

(assert (= (or b!853418 b!853425) bm!38287))

(assert (= (and b!853421 (not res!579715)) b!853412))

(assert (= (and b!853419 condMapEmpty!26021) mapIsEmpty!26021))

(assert (= (and b!853419 (not condMapEmpty!26021)) mapNonEmpty!26021))

(get-info :version)

(assert (= (and mapNonEmpty!26021 ((_ is ValueCellFull!7701) mapValue!26021)) b!853416))

(assert (= (and b!853419 ((_ is ValueCellFull!7701) mapDefault!26021)) b!853426))

(assert (= start!73258 b!853419))

(declare-fun b_lambda!11707 () Bool)

(assert (=> (not b_lambda!11707) (not b!853412)))

(declare-fun t!23251 () Bool)

(declare-fun tb!4455 () Bool)

(assert (=> (and start!73258 (= defaultEntry!696 defaultEntry!696) t!23251) tb!4455))

(declare-fun result!8513 () Bool)

(assert (=> tb!4455 (= result!8513 tp_is_empty!16281)))

(assert (=> b!853412 t!23251))

(declare-fun b_and!23469 () Bool)

(assert (= b_and!23467 (and (=> t!23251 result!8513) b_and!23469)))

(declare-fun m!794749 () Bool)

(assert (=> mapNonEmpty!26021 m!794749))

(declare-fun m!794751 () Bool)

(assert (=> b!853415 m!794751))

(declare-fun m!794753 () Bool)

(assert (=> bm!38288 m!794753))

(declare-fun m!794755 () Bool)

(assert (=> b!853418 m!794755))

(declare-fun m!794757 () Bool)

(assert (=> b!853424 m!794757))

(declare-fun m!794759 () Bool)

(assert (=> b!853424 m!794759))

(declare-fun m!794761 () Bool)

(assert (=> b!853424 m!794761))

(declare-fun m!794763 () Bool)

(assert (=> bm!38287 m!794763))

(declare-fun m!794765 () Bool)

(assert (=> start!73258 m!794765))

(declare-fun m!794767 () Bool)

(assert (=> start!73258 m!794767))

(declare-fun m!794769 () Bool)

(assert (=> b!853420 m!794769))

(declare-fun m!794771 () Bool)

(assert (=> b!853417 m!794771))

(declare-fun m!794773 () Bool)

(assert (=> b!853421 m!794773))

(assert (=> b!853421 m!794773))

(declare-fun m!794775 () Bool)

(assert (=> b!853421 m!794775))

(declare-fun m!794777 () Bool)

(assert (=> b!853421 m!794777))

(declare-fun m!794779 () Bool)

(assert (=> b!853423 m!794779))

(declare-fun m!794781 () Bool)

(assert (=> b!853412 m!794781))

(declare-fun m!794783 () Bool)

(assert (=> b!853412 m!794783))

(declare-fun m!794785 () Bool)

(assert (=> b!853412 m!794785))

(declare-fun m!794787 () Bool)

(assert (=> b!853412 m!794787))

(declare-fun m!794789 () Bool)

(assert (=> b!853412 m!794789))

(assert (=> b!853412 m!794785))

(declare-fun m!794791 () Bool)

(assert (=> b!853412 m!794791))

(declare-fun m!794793 () Bool)

(assert (=> b!853412 m!794793))

(assert (=> b!853412 m!794773))

(declare-fun m!794795 () Bool)

(assert (=> b!853412 m!794795))

(assert (=> b!853412 m!794793))

(declare-fun m!794797 () Bool)

(assert (=> b!853412 m!794797))

(assert (=> b!853412 m!794789))

(declare-fun m!794799 () Bool)

(assert (=> b!853412 m!794799))

(assert (=> b!853412 m!794753))

(assert (=> b!853412 m!794759))

(declare-fun m!794801 () Bool)

(assert (=> b!853413 m!794801))

(check-sat (not b!853420) b_and!23469 tp_is_empty!16281 (not b!853417) (not b!853424) (not b!853415) (not bm!38288) (not bm!38287) (not b!853421) (not b!853412) (not mapNonEmpty!26021) (not b_lambda!11707) (not b_next!14145) (not start!73258) (not b!853418) (not b!853413))
(check-sat b_and!23469 (not b_next!14145))
