; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73114 () Bool)

(assert start!73114)

(declare-fun b_free!14001 () Bool)

(declare-fun b_next!14001 () Bool)

(assert (=> start!73114 (= b_free!14001 (not b_next!14001))))

(declare-fun tp!49507 () Bool)

(declare-fun b_and!23179 () Bool)

(assert (=> start!73114 (= tp!49507 b_and!23179)))

(declare-fun b!850028 () Bool)

(declare-fun res!577559 () Bool)

(declare-fun e!474222 () Bool)

(assert (=> b!850028 (=> (not res!577559) (not e!474222))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48466 0))(
  ( (array!48467 (arr!23260 (Array (_ BitVec 32) (_ BitVec 64))) (size!23701 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48466)

(assert (=> b!850028 (= res!577559 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23701 _keys!868))))))

(declare-fun b!850029 () Bool)

(declare-fun res!577555 () Bool)

(assert (=> b!850029 (=> (not res!577555) (not e!474222))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!850029 (= res!577555 (and (= (select (arr!23260 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!850030 () Bool)

(declare-fun e!474224 () Bool)

(declare-fun e!474227 () Bool)

(declare-fun mapRes!25805 () Bool)

(assert (=> b!850030 (= e!474224 (and e!474227 mapRes!25805))))

(declare-fun condMapEmpty!25805 () Bool)

(declare-datatypes ((V!26563 0))(
  ( (V!26564 (val!8116 Int)) )
))
(declare-datatypes ((ValueCell!7629 0))(
  ( (ValueCellFull!7629 (v!10537 V!26563)) (EmptyCell!7629) )
))
(declare-datatypes ((array!48468 0))(
  ( (array!48469 (arr!23261 (Array (_ BitVec 32) ValueCell!7629)) (size!23702 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48468)

(declare-fun mapDefault!25805 () ValueCell!7629)

(assert (=> b!850030 (= condMapEmpty!25805 (= (arr!23261 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7629)) mapDefault!25805)))))

(declare-fun b!850031 () Bool)

(declare-fun res!577551 () Bool)

(assert (=> b!850031 (=> (not res!577551) (not e!474222))))

(declare-datatypes ((List!16545 0))(
  ( (Nil!16542) (Cons!16541 (h!17672 (_ BitVec 64)) (t!23000 List!16545)) )
))
(declare-fun arrayNoDuplicates!0 (array!48466 (_ BitVec 32) List!16545) Bool)

(assert (=> b!850031 (= res!577551 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16542))))

(declare-fun b!850032 () Bool)

(declare-fun e!474223 () Bool)

(assert (=> b!850032 (= e!474223 true)))

(declare-fun lt!382603 () V!26563)

(declare-datatypes ((tuple2!10648 0))(
  ( (tuple2!10649 (_1!5334 (_ BitVec 64)) (_2!5334 V!26563)) )
))
(declare-datatypes ((List!16546 0))(
  ( (Nil!16543) (Cons!16542 (h!17673 tuple2!10648) (t!23001 List!16546)) )
))
(declare-datatypes ((ListLongMap!9431 0))(
  ( (ListLongMap!9432 (toList!4731 List!16546)) )
))
(declare-fun lt!382605 () ListLongMap!9431)

(declare-fun lt!382607 () tuple2!10648)

(declare-fun +!2076 (ListLongMap!9431 tuple2!10648) ListLongMap!9431)

(assert (=> b!850032 (= (+!2076 lt!382605 lt!382607) (+!2076 (+!2076 lt!382605 (tuple2!10649 k0!854 lt!382603)) lt!382607))))

(declare-fun lt!382606 () V!26563)

(assert (=> b!850032 (= lt!382607 (tuple2!10649 k0!854 lt!382606))))

(declare-datatypes ((Unit!29000 0))(
  ( (Unit!29001) )
))
(declare-fun lt!382601 () Unit!29000)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!263 (ListLongMap!9431 (_ BitVec 64) V!26563 V!26563) Unit!29000)

(assert (=> b!850032 (= lt!382601 (addSameAsAddTwiceSameKeyDiffValues!263 lt!382605 k0!854 lt!382603 lt!382606))))

(declare-fun lt!382602 () V!26563)

(declare-fun get!12261 (ValueCell!7629 V!26563) V!26563)

(assert (=> b!850032 (= lt!382603 (get!12261 (select (arr!23261 _values!688) from!1053) lt!382602))))

(declare-fun lt!382600 () ListLongMap!9431)

(assert (=> b!850032 (= lt!382600 (+!2076 lt!382605 (tuple2!10649 (select (arr!23260 _keys!868) from!1053) lt!382606)))))

(declare-fun v!557 () V!26563)

(assert (=> b!850032 (= lt!382606 (get!12261 (select (store (arr!23261 _values!688) i!612 (ValueCellFull!7629 v!557)) from!1053) lt!382602))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1011 (Int (_ BitVec 64)) V!26563)

(assert (=> b!850032 (= lt!382602 (dynLambda!1011 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!382608 () array!48468)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26563)

(declare-fun zeroValue!654 () V!26563)

(declare-fun getCurrentListMapNoExtraKeys!2718 (array!48466 array!48468 (_ BitVec 32) (_ BitVec 32) V!26563 V!26563 (_ BitVec 32) Int) ListLongMap!9431)

(assert (=> b!850032 (= lt!382605 (getCurrentListMapNoExtraKeys!2718 _keys!868 lt!382608 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850033 () Bool)

(declare-fun res!577557 () Bool)

(assert (=> b!850033 (=> (not res!577557) (not e!474222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850033 (= res!577557 (validMask!0 mask!1196))))

(declare-fun call!37858 () ListLongMap!9431)

(declare-fun bm!37855 () Bool)

(assert (=> bm!37855 (= call!37858 (getCurrentListMapNoExtraKeys!2718 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850034 () Bool)

(declare-fun e!474221 () Bool)

(declare-fun call!37859 () ListLongMap!9431)

(assert (=> b!850034 (= e!474221 (= call!37859 call!37858))))

(declare-fun res!577553 () Bool)

(assert (=> start!73114 (=> (not res!577553) (not e!474222))))

(assert (=> start!73114 (= res!577553 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23701 _keys!868))))))

(assert (=> start!73114 e!474222))

(declare-fun tp_is_empty!16137 () Bool)

(assert (=> start!73114 tp_is_empty!16137))

(assert (=> start!73114 true))

(assert (=> start!73114 tp!49507))

(declare-fun array_inv!18446 (array!48466) Bool)

(assert (=> start!73114 (array_inv!18446 _keys!868)))

(declare-fun array_inv!18447 (array!48468) Bool)

(assert (=> start!73114 (and (array_inv!18447 _values!688) e!474224)))

(declare-fun mapIsEmpty!25805 () Bool)

(assert (=> mapIsEmpty!25805 mapRes!25805))

(declare-fun b!850035 () Bool)

(declare-fun e!474226 () Bool)

(assert (=> b!850035 (= e!474226 (not e!474223))))

(declare-fun res!577554 () Bool)

(assert (=> b!850035 (=> res!577554 e!474223)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850035 (= res!577554 (not (validKeyInArray!0 (select (arr!23260 _keys!868) from!1053))))))

(assert (=> b!850035 e!474221))

(declare-fun c!91590 () Bool)

(assert (=> b!850035 (= c!91590 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382604 () Unit!29000)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!347 (array!48466 array!48468 (_ BitVec 32) (_ BitVec 32) V!26563 V!26563 (_ BitVec 32) (_ BitVec 64) V!26563 (_ BitVec 32) Int) Unit!29000)

(assert (=> b!850035 (= lt!382604 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!347 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37856 () Bool)

(assert (=> bm!37856 (= call!37859 (getCurrentListMapNoExtraKeys!2718 _keys!868 lt!382608 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850036 () Bool)

(assert (=> b!850036 (= e!474221 (= call!37859 (+!2076 call!37858 (tuple2!10649 k0!854 v!557))))))

(declare-fun b!850037 () Bool)

(assert (=> b!850037 (= e!474227 tp_is_empty!16137)))

(declare-fun b!850038 () Bool)

(declare-fun res!577560 () Bool)

(assert (=> b!850038 (=> (not res!577560) (not e!474222))))

(assert (=> b!850038 (= res!577560 (validKeyInArray!0 k0!854))))

(declare-fun b!850039 () Bool)

(declare-fun res!577552 () Bool)

(assert (=> b!850039 (=> (not res!577552) (not e!474222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48466 (_ BitVec 32)) Bool)

(assert (=> b!850039 (= res!577552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850040 () Bool)

(declare-fun e!474228 () Bool)

(assert (=> b!850040 (= e!474228 tp_is_empty!16137)))

(declare-fun b!850041 () Bool)

(declare-fun res!577558 () Bool)

(assert (=> b!850041 (=> (not res!577558) (not e!474222))))

(assert (=> b!850041 (= res!577558 (and (= (size!23702 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23701 _keys!868) (size!23702 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850042 () Bool)

(assert (=> b!850042 (= e!474222 e!474226)))

(declare-fun res!577556 () Bool)

(assert (=> b!850042 (=> (not res!577556) (not e!474226))))

(assert (=> b!850042 (= res!577556 (= from!1053 i!612))))

(assert (=> b!850042 (= lt!382600 (getCurrentListMapNoExtraKeys!2718 _keys!868 lt!382608 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!850042 (= lt!382608 (array!48469 (store (arr!23261 _values!688) i!612 (ValueCellFull!7629 v!557)) (size!23702 _values!688)))))

(declare-fun lt!382599 () ListLongMap!9431)

(assert (=> b!850042 (= lt!382599 (getCurrentListMapNoExtraKeys!2718 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!25805 () Bool)

(declare-fun tp!49508 () Bool)

(assert (=> mapNonEmpty!25805 (= mapRes!25805 (and tp!49508 e!474228))))

(declare-fun mapValue!25805 () ValueCell!7629)

(declare-fun mapKey!25805 () (_ BitVec 32))

(declare-fun mapRest!25805 () (Array (_ BitVec 32) ValueCell!7629))

(assert (=> mapNonEmpty!25805 (= (arr!23261 _values!688) (store mapRest!25805 mapKey!25805 mapValue!25805))))

(assert (= (and start!73114 res!577553) b!850033))

(assert (= (and b!850033 res!577557) b!850041))

(assert (= (and b!850041 res!577558) b!850039))

(assert (= (and b!850039 res!577552) b!850031))

(assert (= (and b!850031 res!577551) b!850028))

(assert (= (and b!850028 res!577559) b!850038))

(assert (= (and b!850038 res!577560) b!850029))

(assert (= (and b!850029 res!577555) b!850042))

(assert (= (and b!850042 res!577556) b!850035))

(assert (= (and b!850035 c!91590) b!850036))

(assert (= (and b!850035 (not c!91590)) b!850034))

(assert (= (or b!850036 b!850034) bm!37856))

(assert (= (or b!850036 b!850034) bm!37855))

(assert (= (and b!850035 (not res!577554)) b!850032))

(assert (= (and b!850030 condMapEmpty!25805) mapIsEmpty!25805))

(assert (= (and b!850030 (not condMapEmpty!25805)) mapNonEmpty!25805))

(get-info :version)

(assert (= (and mapNonEmpty!25805 ((_ is ValueCellFull!7629) mapValue!25805)) b!850040))

(assert (= (and b!850030 ((_ is ValueCellFull!7629) mapDefault!25805)) b!850037))

(assert (= start!73114 b!850030))

(declare-fun b_lambda!11563 () Bool)

(assert (=> (not b_lambda!11563) (not b!850032)))

(declare-fun t!22999 () Bool)

(declare-fun tb!4311 () Bool)

(assert (=> (and start!73114 (= defaultEntry!696 defaultEntry!696) t!22999) tb!4311))

(declare-fun result!8225 () Bool)

(assert (=> tb!4311 (= result!8225 tp_is_empty!16137)))

(assert (=> b!850032 t!22999))

(declare-fun b_and!23181 () Bool)

(assert (= b_and!23179 (and (=> t!22999 result!8225) b_and!23181)))

(declare-fun m!790859 () Bool)

(assert (=> b!850032 m!790859))

(declare-fun m!790861 () Bool)

(assert (=> b!850032 m!790861))

(declare-fun m!790863 () Bool)

(assert (=> b!850032 m!790863))

(declare-fun m!790865 () Bool)

(assert (=> b!850032 m!790865))

(assert (=> b!850032 m!790865))

(declare-fun m!790867 () Bool)

(assert (=> b!850032 m!790867))

(declare-fun m!790869 () Bool)

(assert (=> b!850032 m!790869))

(assert (=> b!850032 m!790863))

(declare-fun m!790871 () Bool)

(assert (=> b!850032 m!790871))

(declare-fun m!790873 () Bool)

(assert (=> b!850032 m!790873))

(declare-fun m!790875 () Bool)

(assert (=> b!850032 m!790875))

(declare-fun m!790877 () Bool)

(assert (=> b!850032 m!790877))

(declare-fun m!790879 () Bool)

(assert (=> b!850032 m!790879))

(declare-fun m!790881 () Bool)

(assert (=> b!850032 m!790881))

(declare-fun m!790883 () Bool)

(assert (=> b!850032 m!790883))

(assert (=> b!850032 m!790881))

(declare-fun m!790885 () Bool)

(assert (=> b!850039 m!790885))

(declare-fun m!790887 () Bool)

(assert (=> mapNonEmpty!25805 m!790887))

(declare-fun m!790889 () Bool)

(assert (=> b!850036 m!790889))

(assert (=> b!850035 m!790873))

(assert (=> b!850035 m!790873))

(declare-fun m!790891 () Bool)

(assert (=> b!850035 m!790891))

(declare-fun m!790893 () Bool)

(assert (=> b!850035 m!790893))

(declare-fun m!790895 () Bool)

(assert (=> b!850033 m!790895))

(declare-fun m!790897 () Bool)

(assert (=> start!73114 m!790897))

(declare-fun m!790899 () Bool)

(assert (=> start!73114 m!790899))

(declare-fun m!790901 () Bool)

(assert (=> b!850042 m!790901))

(assert (=> b!850042 m!790869))

(declare-fun m!790903 () Bool)

(assert (=> b!850042 m!790903))

(declare-fun m!790905 () Bool)

(assert (=> b!850038 m!790905))

(declare-fun m!790907 () Bool)

(assert (=> b!850029 m!790907))

(declare-fun m!790909 () Bool)

(assert (=> bm!37855 m!790909))

(declare-fun m!790911 () Bool)

(assert (=> b!850031 m!790911))

(assert (=> bm!37856 m!790877))

(check-sat (not b_lambda!11563) b_and!23181 (not bm!37855) (not start!73114) (not b_next!14001) (not b!850042) (not b!850038) (not mapNonEmpty!25805) (not b!850035) (not b!850032) (not b!850033) (not bm!37856) (not b!850031) (not b!850039) tp_is_empty!16137 (not b!850036))
(check-sat b_and!23181 (not b_next!14001))
