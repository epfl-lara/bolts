; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73234 () Bool)

(assert start!73234)

(declare-fun b_free!14121 () Bool)

(declare-fun b_next!14121 () Bool)

(assert (=> start!73234 (= b_free!14121 (not b_next!14121))))

(declare-fun tp!49867 () Bool)

(declare-fun b_and!23419 () Bool)

(assert (=> start!73234 (= tp!49867 b_and!23419)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!38215 () Bool)

(declare-datatypes ((V!26723 0))(
  ( (V!26724 (val!8176 Int)) )
))
(declare-datatypes ((tuple2!10756 0))(
  ( (tuple2!10757 (_1!5388 (_ BitVec 64)) (_2!5388 V!26723)) )
))
(declare-datatypes ((List!16634 0))(
  ( (Nil!16631) (Cons!16630 (h!17761 tuple2!10756) (t!23209 List!16634)) )
))
(declare-datatypes ((ListLongMap!9539 0))(
  ( (ListLongMap!9540 (toList!4785 List!16634)) )
))
(declare-fun call!38219 () ListLongMap!9539)

(declare-datatypes ((array!48698 0))(
  ( (array!48699 (arr!23376 (Array (_ BitVec 32) (_ BitVec 64))) (size!23817 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48698)

(declare-datatypes ((ValueCell!7689 0))(
  ( (ValueCellFull!7689 (v!10597 V!26723)) (EmptyCell!7689) )
))
(declare-datatypes ((array!48700 0))(
  ( (array!48701 (arr!23377 (Array (_ BitVec 32) ValueCell!7689)) (size!23818 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48700)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26723)

(declare-fun zeroValue!654 () V!26723)

(declare-fun getCurrentListMapNoExtraKeys!2768 (array!48698 array!48700 (_ BitVec 32) (_ BitVec 32) V!26723 V!26723 (_ BitVec 32) Int) ListLongMap!9539)

(assert (=> bm!38215 (= call!38219 (getCurrentListMapNoExtraKeys!2768 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852848 () Bool)

(declare-fun res!579352 () Bool)

(declare-fun e!475664 () Bool)

(assert (=> b!852848 (=> (not res!579352) (not e!475664))))

(assert (=> b!852848 (= res!579352 (and (= (size!23818 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23817 _keys!868) (size!23818 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852849 () Bool)

(declare-fun res!579357 () Bool)

(assert (=> b!852849 (=> (not res!579357) (not e!475664))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852849 (= res!579357 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!25985 () Bool)

(declare-fun mapRes!25985 () Bool)

(declare-fun tp!49868 () Bool)

(declare-fun e!475663 () Bool)

(assert (=> mapNonEmpty!25985 (= mapRes!25985 (and tp!49868 e!475663))))

(declare-fun mapKey!25985 () (_ BitVec 32))

(declare-fun mapValue!25985 () ValueCell!7689)

(declare-fun mapRest!25985 () (Array (_ BitVec 32) ValueCell!7689))

(assert (=> mapNonEmpty!25985 (= (arr!23377 _values!688) (store mapRest!25985 mapKey!25985 mapValue!25985))))

(declare-fun b!852850 () Bool)

(declare-fun e!475661 () Bool)

(declare-fun call!38218 () ListLongMap!9539)

(assert (=> b!852850 (= e!475661 (= call!38218 call!38219))))

(declare-fun bm!38216 () Bool)

(declare-fun lt!384399 () array!48700)

(assert (=> bm!38216 (= call!38218 (getCurrentListMapNoExtraKeys!2768 _keys!868 lt!384399 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!579354 () Bool)

(assert (=> start!73234 (=> (not res!579354) (not e!475664))))

(assert (=> start!73234 (= res!579354 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23817 _keys!868))))))

(assert (=> start!73234 e!475664))

(declare-fun tp_is_empty!16257 () Bool)

(assert (=> start!73234 tp_is_empty!16257))

(assert (=> start!73234 true))

(assert (=> start!73234 tp!49867))

(declare-fun array_inv!18520 (array!48698) Bool)

(assert (=> start!73234 (array_inv!18520 _keys!868)))

(declare-fun e!475667 () Bool)

(declare-fun array_inv!18521 (array!48700) Bool)

(assert (=> start!73234 (and (array_inv!18521 _values!688) e!475667)))

(declare-fun mapIsEmpty!25985 () Bool)

(assert (=> mapIsEmpty!25985 mapRes!25985))

(declare-fun b!852851 () Bool)

(declare-fun res!579353 () Bool)

(assert (=> b!852851 (=> (not res!579353) (not e!475664))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852851 (= res!579353 (and (= (select (arr!23376 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!852852 () Bool)

(declare-fun res!579356 () Bool)

(assert (=> b!852852 (=> (not res!579356) (not e!475664))))

(assert (=> b!852852 (= res!579356 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23817 _keys!868))))))

(declare-fun b!852853 () Bool)

(declare-fun e!475668 () Bool)

(assert (=> b!852853 (= e!475668 tp_is_empty!16257)))

(declare-fun b!852854 () Bool)

(declare-fun res!579360 () Bool)

(assert (=> b!852854 (=> (not res!579360) (not e!475664))))

(declare-datatypes ((List!16635 0))(
  ( (Nil!16632) (Cons!16631 (h!17762 (_ BitVec 64)) (t!23210 List!16635)) )
))
(declare-fun arrayNoDuplicates!0 (array!48698 (_ BitVec 32) List!16635) Bool)

(assert (=> b!852854 (= res!579360 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16632))))

(declare-fun b!852855 () Bool)

(declare-fun e!475665 () Bool)

(assert (=> b!852855 (= e!475665 true)))

(declare-fun lt!384400 () V!26723)

(declare-fun lt!384402 () tuple2!10756)

(declare-fun lt!384407 () ListLongMap!9539)

(declare-fun +!2125 (ListLongMap!9539 tuple2!10756) ListLongMap!9539)

(assert (=> b!852855 (= (+!2125 lt!384407 lt!384402) (+!2125 (+!2125 lt!384407 (tuple2!10757 k0!854 lt!384400)) lt!384402))))

(declare-fun lt!384405 () V!26723)

(assert (=> b!852855 (= lt!384402 (tuple2!10757 k0!854 lt!384405))))

(declare-datatypes ((Unit!29096 0))(
  ( (Unit!29097) )
))
(declare-fun lt!384403 () Unit!29096)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!305 (ListLongMap!9539 (_ BitVec 64) V!26723 V!26723) Unit!29096)

(assert (=> b!852855 (= lt!384403 (addSameAsAddTwiceSameKeyDiffValues!305 lt!384407 k0!854 lt!384400 lt!384405))))

(declare-fun lt!384408 () V!26723)

(declare-fun get!12343 (ValueCell!7689 V!26723) V!26723)

(assert (=> b!852855 (= lt!384400 (get!12343 (select (arr!23377 _values!688) from!1053) lt!384408))))

(declare-fun lt!384406 () ListLongMap!9539)

(assert (=> b!852855 (= lt!384406 (+!2125 lt!384407 (tuple2!10757 (select (arr!23376 _keys!868) from!1053) lt!384405)))))

(declare-fun v!557 () V!26723)

(assert (=> b!852855 (= lt!384405 (get!12343 (select (store (arr!23377 _values!688) i!612 (ValueCellFull!7689 v!557)) from!1053) lt!384408))))

(declare-fun dynLambda!1053 (Int (_ BitVec 64)) V!26723)

(assert (=> b!852855 (= lt!384408 (dynLambda!1053 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!852855 (= lt!384407 (getCurrentListMapNoExtraKeys!2768 _keys!868 lt!384399 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852856 () Bool)

(declare-fun res!579358 () Bool)

(assert (=> b!852856 (=> (not res!579358) (not e!475664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852856 (= res!579358 (validMask!0 mask!1196))))

(declare-fun b!852857 () Bool)

(assert (=> b!852857 (= e!475667 (and e!475668 mapRes!25985))))

(declare-fun condMapEmpty!25985 () Bool)

(declare-fun mapDefault!25985 () ValueCell!7689)

(assert (=> b!852857 (= condMapEmpty!25985 (= (arr!23377 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7689)) mapDefault!25985)))))

(declare-fun b!852858 () Bool)

(assert (=> b!852858 (= e!475663 tp_is_empty!16257)))

(declare-fun b!852859 () Bool)

(declare-fun e!475666 () Bool)

(assert (=> b!852859 (= e!475666 (not e!475665))))

(declare-fun res!579355 () Bool)

(assert (=> b!852859 (=> res!579355 e!475665)))

(assert (=> b!852859 (= res!579355 (not (validKeyInArray!0 (select (arr!23376 _keys!868) from!1053))))))

(assert (=> b!852859 e!475661))

(declare-fun c!91770 () Bool)

(assert (=> b!852859 (= c!91770 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384401 () Unit!29096)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!388 (array!48698 array!48700 (_ BitVec 32) (_ BitVec 32) V!26723 V!26723 (_ BitVec 32) (_ BitVec 64) V!26723 (_ BitVec 32) Int) Unit!29096)

(assert (=> b!852859 (= lt!384401 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!388 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852860 () Bool)

(assert (=> b!852860 (= e!475664 e!475666)))

(declare-fun res!579351 () Bool)

(assert (=> b!852860 (=> (not res!579351) (not e!475666))))

(assert (=> b!852860 (= res!579351 (= from!1053 i!612))))

(assert (=> b!852860 (= lt!384406 (getCurrentListMapNoExtraKeys!2768 _keys!868 lt!384399 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852860 (= lt!384399 (array!48701 (store (arr!23377 _values!688) i!612 (ValueCellFull!7689 v!557)) (size!23818 _values!688)))))

(declare-fun lt!384404 () ListLongMap!9539)

(assert (=> b!852860 (= lt!384404 (getCurrentListMapNoExtraKeys!2768 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852861 () Bool)

(declare-fun res!579359 () Bool)

(assert (=> b!852861 (=> (not res!579359) (not e!475664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48698 (_ BitVec 32)) Bool)

(assert (=> b!852861 (= res!579359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852862 () Bool)

(assert (=> b!852862 (= e!475661 (= call!38218 (+!2125 call!38219 (tuple2!10757 k0!854 v!557))))))

(assert (= (and start!73234 res!579354) b!852856))

(assert (= (and b!852856 res!579358) b!852848))

(assert (= (and b!852848 res!579352) b!852861))

(assert (= (and b!852861 res!579359) b!852854))

(assert (= (and b!852854 res!579360) b!852852))

(assert (= (and b!852852 res!579356) b!852849))

(assert (= (and b!852849 res!579357) b!852851))

(assert (= (and b!852851 res!579353) b!852860))

(assert (= (and b!852860 res!579351) b!852859))

(assert (= (and b!852859 c!91770) b!852862))

(assert (= (and b!852859 (not c!91770)) b!852850))

(assert (= (or b!852862 b!852850) bm!38216))

(assert (= (or b!852862 b!852850) bm!38215))

(assert (= (and b!852859 (not res!579355)) b!852855))

(assert (= (and b!852857 condMapEmpty!25985) mapIsEmpty!25985))

(assert (= (and b!852857 (not condMapEmpty!25985)) mapNonEmpty!25985))

(get-info :version)

(assert (= (and mapNonEmpty!25985 ((_ is ValueCellFull!7689) mapValue!25985)) b!852858))

(assert (= (and b!852857 ((_ is ValueCellFull!7689) mapDefault!25985)) b!852853))

(assert (= start!73234 b!852857))

(declare-fun b_lambda!11683 () Bool)

(assert (=> (not b_lambda!11683) (not b!852855)))

(declare-fun t!23208 () Bool)

(declare-fun tb!4431 () Bool)

(assert (=> (and start!73234 (= defaultEntry!696 defaultEntry!696) t!23208) tb!4431))

(declare-fun result!8465 () Bool)

(assert (=> tb!4431 (= result!8465 tp_is_empty!16257)))

(assert (=> b!852855 t!23208))

(declare-fun b_and!23421 () Bool)

(assert (= b_and!23419 (and (=> t!23208 result!8465) b_and!23421)))

(declare-fun m!794101 () Bool)

(assert (=> b!852849 m!794101))

(declare-fun m!794103 () Bool)

(assert (=> b!852862 m!794103))

(declare-fun m!794105 () Bool)

(assert (=> b!852855 m!794105))

(declare-fun m!794107 () Bool)

(assert (=> b!852855 m!794107))

(declare-fun m!794109 () Bool)

(assert (=> b!852855 m!794109))

(declare-fun m!794111 () Bool)

(assert (=> b!852855 m!794111))

(declare-fun m!794113 () Bool)

(assert (=> b!852855 m!794113))

(declare-fun m!794115 () Bool)

(assert (=> b!852855 m!794115))

(declare-fun m!794117 () Bool)

(assert (=> b!852855 m!794117))

(declare-fun m!794119 () Bool)

(assert (=> b!852855 m!794119))

(assert (=> b!852855 m!794105))

(declare-fun m!794121 () Bool)

(assert (=> b!852855 m!794121))

(assert (=> b!852855 m!794113))

(declare-fun m!794123 () Bool)

(assert (=> b!852855 m!794123))

(declare-fun m!794125 () Bool)

(assert (=> b!852855 m!794125))

(assert (=> b!852855 m!794117))

(declare-fun m!794127 () Bool)

(assert (=> b!852855 m!794127))

(declare-fun m!794129 () Bool)

(assert (=> b!852855 m!794129))

(declare-fun m!794131 () Bool)

(assert (=> mapNonEmpty!25985 m!794131))

(declare-fun m!794133 () Bool)

(assert (=> b!852856 m!794133))

(declare-fun m!794135 () Bool)

(assert (=> b!852851 m!794135))

(declare-fun m!794137 () Bool)

(assert (=> start!73234 m!794137))

(declare-fun m!794139 () Bool)

(assert (=> start!73234 m!794139))

(assert (=> bm!38216 m!794109))

(declare-fun m!794141 () Bool)

(assert (=> bm!38215 m!794141))

(assert (=> b!852859 m!794127))

(assert (=> b!852859 m!794127))

(declare-fun m!794143 () Bool)

(assert (=> b!852859 m!794143))

(declare-fun m!794145 () Bool)

(assert (=> b!852859 m!794145))

(declare-fun m!794147 () Bool)

(assert (=> b!852854 m!794147))

(declare-fun m!794149 () Bool)

(assert (=> b!852860 m!794149))

(assert (=> b!852860 m!794123))

(declare-fun m!794151 () Bool)

(assert (=> b!852860 m!794151))

(declare-fun m!794153 () Bool)

(assert (=> b!852861 m!794153))

(check-sat tp_is_empty!16257 (not mapNonEmpty!25985) (not b!852855) (not bm!38216) (not b!852854) (not b!852862) (not b!852856) (not b!852861) (not start!73234) (not b!852860) (not b_next!14121) b_and!23421 (not b!852859) (not b!852849) (not b_lambda!11683) (not bm!38215))
(check-sat b_and!23421 (not b_next!14121))
