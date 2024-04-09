; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73228 () Bool)

(assert start!73228)

(declare-fun b_free!14115 () Bool)

(declare-fun b_next!14115 () Bool)

(assert (=> start!73228 (= b_free!14115 (not b_next!14115))))

(declare-fun tp!49850 () Bool)

(declare-fun b_and!23407 () Bool)

(assert (=> start!73228 (= tp!49850 b_and!23407)))

(declare-fun res!579261 () Bool)

(declare-fun e!475591 () Bool)

(assert (=> start!73228 (=> (not res!579261) (not e!475591))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48686 0))(
  ( (array!48687 (arr!23370 (Array (_ BitVec 32) (_ BitVec 64))) (size!23811 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48686)

(assert (=> start!73228 (= res!579261 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23811 _keys!868))))))

(assert (=> start!73228 e!475591))

(declare-fun tp_is_empty!16251 () Bool)

(assert (=> start!73228 tp_is_empty!16251))

(assert (=> start!73228 true))

(assert (=> start!73228 tp!49850))

(declare-fun array_inv!18518 (array!48686) Bool)

(assert (=> start!73228 (array_inv!18518 _keys!868)))

(declare-datatypes ((V!26715 0))(
  ( (V!26716 (val!8173 Int)) )
))
(declare-datatypes ((ValueCell!7686 0))(
  ( (ValueCellFull!7686 (v!10594 V!26715)) (EmptyCell!7686) )
))
(declare-datatypes ((array!48688 0))(
  ( (array!48689 (arr!23371 (Array (_ BitVec 32) ValueCell!7686)) (size!23812 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48688)

(declare-fun e!475590 () Bool)

(declare-fun array_inv!18519 (array!48688) Bool)

(assert (=> start!73228 (and (array_inv!18519 _values!688) e!475590)))

(declare-fun b!852707 () Bool)

(declare-fun res!579263 () Bool)

(assert (=> b!852707 (=> (not res!579263) (not e!475591))))

(declare-datatypes ((List!16630 0))(
  ( (Nil!16627) (Cons!16626 (h!17757 (_ BitVec 64)) (t!23199 List!16630)) )
))
(declare-fun arrayNoDuplicates!0 (array!48686 (_ BitVec 32) List!16630) Bool)

(assert (=> b!852707 (= res!579263 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16627))))

(declare-fun b!852708 () Bool)

(declare-fun res!579269 () Bool)

(assert (=> b!852708 (=> (not res!579269) (not e!475591))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852708 (= res!579269 (validMask!0 mask!1196))))

(declare-fun b!852709 () Bool)

(declare-fun e!475592 () Bool)

(assert (=> b!852709 (= e!475592 true)))

(declare-fun lt!384312 () V!26715)

(declare-datatypes ((tuple2!10750 0))(
  ( (tuple2!10751 (_1!5385 (_ BitVec 64)) (_2!5385 V!26715)) )
))
(declare-datatypes ((List!16631 0))(
  ( (Nil!16628) (Cons!16627 (h!17758 tuple2!10750) (t!23200 List!16631)) )
))
(declare-datatypes ((ListLongMap!9533 0))(
  ( (ListLongMap!9534 (toList!4782 List!16631)) )
))
(declare-fun lt!384310 () ListLongMap!9533)

(declare-fun lt!384311 () tuple2!10750)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2122 (ListLongMap!9533 tuple2!10750) ListLongMap!9533)

(assert (=> b!852709 (= (+!2122 lt!384310 lt!384311) (+!2122 (+!2122 lt!384310 (tuple2!10751 k0!854 lt!384312)) lt!384311))))

(declare-fun lt!384314 () V!26715)

(assert (=> b!852709 (= lt!384311 (tuple2!10751 k0!854 lt!384314))))

(declare-datatypes ((Unit!29090 0))(
  ( (Unit!29091) )
))
(declare-fun lt!384316 () Unit!29090)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!302 (ListLongMap!9533 (_ BitVec 64) V!26715 V!26715) Unit!29090)

(assert (=> b!852709 (= lt!384316 (addSameAsAddTwiceSameKeyDiffValues!302 lt!384310 k0!854 lt!384312 lt!384314))))

(declare-fun lt!384318 () V!26715)

(declare-fun get!12338 (ValueCell!7686 V!26715) V!26715)

(assert (=> b!852709 (= lt!384312 (get!12338 (select (arr!23371 _values!688) from!1053) lt!384318))))

(declare-fun lt!384313 () ListLongMap!9533)

(assert (=> b!852709 (= lt!384313 (+!2122 lt!384310 (tuple2!10751 (select (arr!23370 _keys!868) from!1053) lt!384314)))))

(declare-fun v!557 () V!26715)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852709 (= lt!384314 (get!12338 (select (store (arr!23371 _values!688) i!612 (ValueCellFull!7686 v!557)) from!1053) lt!384318))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1050 (Int (_ BitVec 64)) V!26715)

(assert (=> b!852709 (= lt!384318 (dynLambda!1050 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!384317 () array!48688)

(declare-fun minValue!654 () V!26715)

(declare-fun zeroValue!654 () V!26715)

(declare-fun getCurrentListMapNoExtraKeys!2765 (array!48686 array!48688 (_ BitVec 32) (_ BitVec 32) V!26715 V!26715 (_ BitVec 32) Int) ListLongMap!9533)

(assert (=> b!852709 (= lt!384310 (getCurrentListMapNoExtraKeys!2765 _keys!868 lt!384317 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38201 () ListLongMap!9533)

(declare-fun call!38200 () ListLongMap!9533)

(declare-fun e!475593 () Bool)

(declare-fun b!852710 () Bool)

(assert (=> b!852710 (= e!475593 (= call!38200 (+!2122 call!38201 (tuple2!10751 k0!854 v!557))))))

(declare-fun mapNonEmpty!25976 () Bool)

(declare-fun mapRes!25976 () Bool)

(declare-fun tp!49849 () Bool)

(declare-fun e!475589 () Bool)

(assert (=> mapNonEmpty!25976 (= mapRes!25976 (and tp!49849 e!475589))))

(declare-fun mapValue!25976 () ValueCell!7686)

(declare-fun mapKey!25976 () (_ BitVec 32))

(declare-fun mapRest!25976 () (Array (_ BitVec 32) ValueCell!7686))

(assert (=> mapNonEmpty!25976 (= (arr!23371 _values!688) (store mapRest!25976 mapKey!25976 mapValue!25976))))

(declare-fun b!852711 () Bool)

(declare-fun e!475595 () Bool)

(assert (=> b!852711 (= e!475595 (not e!475592))))

(declare-fun res!579267 () Bool)

(assert (=> b!852711 (=> res!579267 e!475592)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852711 (= res!579267 (not (validKeyInArray!0 (select (arr!23370 _keys!868) from!1053))))))

(assert (=> b!852711 e!475593))

(declare-fun c!91761 () Bool)

(assert (=> b!852711 (= c!91761 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384315 () Unit!29090)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!386 (array!48686 array!48688 (_ BitVec 32) (_ BitVec 32) V!26715 V!26715 (_ BitVec 32) (_ BitVec 64) V!26715 (_ BitVec 32) Int) Unit!29090)

(assert (=> b!852711 (= lt!384315 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!386 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852712 () Bool)

(declare-fun res!579268 () Bool)

(assert (=> b!852712 (=> (not res!579268) (not e!475591))))

(assert (=> b!852712 (= res!579268 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!25976 () Bool)

(assert (=> mapIsEmpty!25976 mapRes!25976))

(declare-fun b!852713 () Bool)

(declare-fun e!475594 () Bool)

(assert (=> b!852713 (= e!475594 tp_is_empty!16251)))

(declare-fun b!852714 () Bool)

(declare-fun res!579262 () Bool)

(assert (=> b!852714 (=> (not res!579262) (not e!475591))))

(assert (=> b!852714 (= res!579262 (and (= (size!23812 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23811 _keys!868) (size!23812 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852715 () Bool)

(declare-fun res!579264 () Bool)

(assert (=> b!852715 (=> (not res!579264) (not e!475591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48686 (_ BitVec 32)) Bool)

(assert (=> b!852715 (= res!579264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!38197 () Bool)

(assert (=> bm!38197 (= call!38200 (getCurrentListMapNoExtraKeys!2765 _keys!868 lt!384317 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852716 () Bool)

(assert (=> b!852716 (= e!475593 (= call!38200 call!38201))))

(declare-fun b!852717 () Bool)

(declare-fun res!579265 () Bool)

(assert (=> b!852717 (=> (not res!579265) (not e!475591))))

(assert (=> b!852717 (= res!579265 (and (= (select (arr!23370 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!852718 () Bool)

(assert (=> b!852718 (= e!475589 tp_is_empty!16251)))

(declare-fun bm!38198 () Bool)

(assert (=> bm!38198 (= call!38201 (getCurrentListMapNoExtraKeys!2765 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852719 () Bool)

(assert (=> b!852719 (= e!475591 e!475595)))

(declare-fun res!579266 () Bool)

(assert (=> b!852719 (=> (not res!579266) (not e!475595))))

(assert (=> b!852719 (= res!579266 (= from!1053 i!612))))

(assert (=> b!852719 (= lt!384313 (getCurrentListMapNoExtraKeys!2765 _keys!868 lt!384317 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852719 (= lt!384317 (array!48689 (store (arr!23371 _values!688) i!612 (ValueCellFull!7686 v!557)) (size!23812 _values!688)))))

(declare-fun lt!384309 () ListLongMap!9533)

(assert (=> b!852719 (= lt!384309 (getCurrentListMapNoExtraKeys!2765 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852720 () Bool)

(assert (=> b!852720 (= e!475590 (and e!475594 mapRes!25976))))

(declare-fun condMapEmpty!25976 () Bool)

(declare-fun mapDefault!25976 () ValueCell!7686)

(assert (=> b!852720 (= condMapEmpty!25976 (= (arr!23371 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7686)) mapDefault!25976)))))

(declare-fun b!852721 () Bool)

(declare-fun res!579270 () Bool)

(assert (=> b!852721 (=> (not res!579270) (not e!475591))))

(assert (=> b!852721 (= res!579270 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23811 _keys!868))))))

(assert (= (and start!73228 res!579261) b!852708))

(assert (= (and b!852708 res!579269) b!852714))

(assert (= (and b!852714 res!579262) b!852715))

(assert (= (and b!852715 res!579264) b!852707))

(assert (= (and b!852707 res!579263) b!852721))

(assert (= (and b!852721 res!579270) b!852712))

(assert (= (and b!852712 res!579268) b!852717))

(assert (= (and b!852717 res!579265) b!852719))

(assert (= (and b!852719 res!579266) b!852711))

(assert (= (and b!852711 c!91761) b!852710))

(assert (= (and b!852711 (not c!91761)) b!852716))

(assert (= (or b!852710 b!852716) bm!38198))

(assert (= (or b!852710 b!852716) bm!38197))

(assert (= (and b!852711 (not res!579267)) b!852709))

(assert (= (and b!852720 condMapEmpty!25976) mapIsEmpty!25976))

(assert (= (and b!852720 (not condMapEmpty!25976)) mapNonEmpty!25976))

(get-info :version)

(assert (= (and mapNonEmpty!25976 ((_ is ValueCellFull!7686) mapValue!25976)) b!852718))

(assert (= (and b!852720 ((_ is ValueCellFull!7686) mapDefault!25976)) b!852713))

(assert (= start!73228 b!852720))

(declare-fun b_lambda!11677 () Bool)

(assert (=> (not b_lambda!11677) (not b!852709)))

(declare-fun t!23198 () Bool)

(declare-fun tb!4425 () Bool)

(assert (=> (and start!73228 (= defaultEntry!696 defaultEntry!696) t!23198) tb!4425))

(declare-fun result!8453 () Bool)

(assert (=> tb!4425 (= result!8453 tp_is_empty!16251)))

(assert (=> b!852709 t!23198))

(declare-fun b_and!23409 () Bool)

(assert (= b_and!23407 (and (=> t!23198 result!8453) b_and!23409)))

(declare-fun m!793939 () Bool)

(assert (=> b!852711 m!793939))

(assert (=> b!852711 m!793939))

(declare-fun m!793941 () Bool)

(assert (=> b!852711 m!793941))

(declare-fun m!793943 () Bool)

(assert (=> b!852711 m!793943))

(declare-fun m!793945 () Bool)

(assert (=> b!852715 m!793945))

(declare-fun m!793947 () Bool)

(assert (=> b!852709 m!793947))

(declare-fun m!793949 () Bool)

(assert (=> b!852709 m!793949))

(declare-fun m!793951 () Bool)

(assert (=> b!852709 m!793951))

(declare-fun m!793953 () Bool)

(assert (=> b!852709 m!793953))

(declare-fun m!793955 () Bool)

(assert (=> b!852709 m!793955))

(assert (=> b!852709 m!793953))

(declare-fun m!793957 () Bool)

(assert (=> b!852709 m!793957))

(declare-fun m!793959 () Bool)

(assert (=> b!852709 m!793959))

(assert (=> b!852709 m!793955))

(declare-fun m!793961 () Bool)

(assert (=> b!852709 m!793961))

(assert (=> b!852709 m!793939))

(declare-fun m!793963 () Bool)

(assert (=> b!852709 m!793963))

(declare-fun m!793965 () Bool)

(assert (=> b!852709 m!793965))

(assert (=> b!852709 m!793959))

(declare-fun m!793967 () Bool)

(assert (=> b!852709 m!793967))

(declare-fun m!793969 () Bool)

(assert (=> b!852709 m!793969))

(declare-fun m!793971 () Bool)

(assert (=> b!852719 m!793971))

(assert (=> b!852719 m!793969))

(declare-fun m!793973 () Bool)

(assert (=> b!852719 m!793973))

(declare-fun m!793975 () Bool)

(assert (=> b!852707 m!793975))

(declare-fun m!793977 () Bool)

(assert (=> b!852708 m!793977))

(assert (=> bm!38197 m!793947))

(declare-fun m!793979 () Bool)

(assert (=> b!852710 m!793979))

(declare-fun m!793981 () Bool)

(assert (=> bm!38198 m!793981))

(declare-fun m!793983 () Bool)

(assert (=> b!852717 m!793983))

(declare-fun m!793985 () Bool)

(assert (=> mapNonEmpty!25976 m!793985))

(declare-fun m!793987 () Bool)

(assert (=> start!73228 m!793987))

(declare-fun m!793989 () Bool)

(assert (=> start!73228 m!793989))

(declare-fun m!793991 () Bool)

(assert (=> b!852712 m!793991))

(check-sat (not b!852712) (not b_next!14115) (not bm!38197) (not b!852707) (not b!852709) (not b!852711) tp_is_empty!16251 (not b!852710) (not b_lambda!11677) (not b!852719) b_and!23409 (not start!73228) (not b!852715) (not mapNonEmpty!25976) (not bm!38198) (not b!852708))
(check-sat b_and!23409 (not b_next!14115))
