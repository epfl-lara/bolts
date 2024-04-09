; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73024 () Bool)

(assert start!73024)

(declare-fun b_free!13911 () Bool)

(declare-fun b_next!13911 () Bool)

(assert (=> start!73024 (= b_free!13911 (not b_next!13911))))

(declare-fun tp!49237 () Bool)

(declare-fun b_and!23015 () Bool)

(assert (=> start!73024 (= tp!49237 b_and!23015)))

(declare-fun b!847942 () Bool)

(declare-fun res!576219 () Bool)

(declare-fun e!473156 () Bool)

(assert (=> b!847942 (=> (not res!576219) (not e!473156))))

(declare-datatypes ((array!48286 0))(
  ( (array!48287 (arr!23170 (Array (_ BitVec 32) (_ BitVec 64))) (size!23611 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48286)

(declare-datatypes ((List!16472 0))(
  ( (Nil!16469) (Cons!16468 (h!17599 (_ BitVec 64)) (t!22851 List!16472)) )
))
(declare-fun arrayNoDuplicates!0 (array!48286 (_ BitVec 32) List!16472) Bool)

(assert (=> b!847942 (= res!576219 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16469))))

(declare-fun b!847943 () Bool)

(declare-fun e!473157 () Bool)

(declare-fun tp_is_empty!16047 () Bool)

(assert (=> b!847943 (= e!473157 tp_is_empty!16047)))

(declare-fun b!847944 () Bool)

(declare-fun res!576216 () Bool)

(assert (=> b!847944 (=> (not res!576216) (not e!473156))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847944 (= res!576216 (and (= (select (arr!23170 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!847945 () Bool)

(declare-fun e!473155 () Bool)

(declare-datatypes ((V!26443 0))(
  ( (V!26444 (val!8071 Int)) )
))
(declare-datatypes ((tuple2!10564 0))(
  ( (tuple2!10565 (_1!5292 (_ BitVec 64)) (_2!5292 V!26443)) )
))
(declare-datatypes ((List!16473 0))(
  ( (Nil!16470) (Cons!16469 (h!17600 tuple2!10564) (t!22852 List!16473)) )
))
(declare-datatypes ((ListLongMap!9347 0))(
  ( (ListLongMap!9348 (toList!4689 List!16473)) )
))
(declare-fun call!37588 () ListLongMap!9347)

(declare-fun call!37589 () ListLongMap!9347)

(assert (=> b!847945 (= e!473155 (= call!37588 call!37589))))

(declare-fun b!847946 () Bool)

(declare-fun e!473158 () Bool)

(assert (=> b!847946 (= e!473158 (not true))))

(assert (=> b!847946 e!473155))

(declare-fun c!91455 () Bool)

(assert (=> b!847946 (= c!91455 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26443)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28942 0))(
  ( (Unit!28943) )
))
(declare-fun lt!381867 () Unit!28942)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7584 0))(
  ( (ValueCellFull!7584 (v!10492 V!26443)) (EmptyCell!7584) )
))
(declare-datatypes ((array!48288 0))(
  ( (array!48289 (arr!23171 (Array (_ BitVec 32) ValueCell!7584)) (size!23612 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48288)

(declare-fun minValue!654 () V!26443)

(declare-fun zeroValue!654 () V!26443)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!320 (array!48286 array!48288 (_ BitVec 32) (_ BitVec 32) V!26443 V!26443 (_ BitVec 32) (_ BitVec 64) V!26443 (_ BitVec 32) Int) Unit!28942)

(assert (=> b!847946 (= lt!381867 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!320 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847947 () Bool)

(declare-fun res!576217 () Bool)

(assert (=> b!847947 (=> (not res!576217) (not e!473156))))

(assert (=> b!847947 (= res!576217 (and (= (size!23612 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23611 _keys!868) (size!23612 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847948 () Bool)

(assert (=> b!847948 (= e!473156 e!473158)))

(declare-fun res!576222 () Bool)

(assert (=> b!847948 (=> (not res!576222) (not e!473158))))

(assert (=> b!847948 (= res!576222 (= from!1053 i!612))))

(declare-fun lt!381870 () array!48288)

(declare-fun lt!381868 () ListLongMap!9347)

(declare-fun getCurrentListMapNoExtraKeys!2678 (array!48286 array!48288 (_ BitVec 32) (_ BitVec 32) V!26443 V!26443 (_ BitVec 32) Int) ListLongMap!9347)

(assert (=> b!847948 (= lt!381868 (getCurrentListMapNoExtraKeys!2678 _keys!868 lt!381870 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!847948 (= lt!381870 (array!48289 (store (arr!23171 _values!688) i!612 (ValueCellFull!7584 v!557)) (size!23612 _values!688)))))

(declare-fun lt!381869 () ListLongMap!9347)

(assert (=> b!847948 (= lt!381869 (getCurrentListMapNoExtraKeys!2678 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847949 () Bool)

(declare-fun res!576214 () Bool)

(assert (=> b!847949 (=> (not res!576214) (not e!473156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847949 (= res!576214 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25670 () Bool)

(declare-fun mapRes!25670 () Bool)

(assert (=> mapIsEmpty!25670 mapRes!25670))

(declare-fun b!847950 () Bool)

(declare-fun e!473159 () Bool)

(declare-fun e!473160 () Bool)

(assert (=> b!847950 (= e!473159 (and e!473160 mapRes!25670))))

(declare-fun condMapEmpty!25670 () Bool)

(declare-fun mapDefault!25670 () ValueCell!7584)

(assert (=> b!847950 (= condMapEmpty!25670 (= (arr!23171 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7584)) mapDefault!25670)))))

(declare-fun b!847951 () Bool)

(assert (=> b!847951 (= e!473160 tp_is_empty!16047)))

(declare-fun b!847952 () Bool)

(declare-fun +!2042 (ListLongMap!9347 tuple2!10564) ListLongMap!9347)

(assert (=> b!847952 (= e!473155 (= call!37588 (+!2042 call!37589 (tuple2!10565 k0!854 v!557))))))

(declare-fun bm!37586 () Bool)

(assert (=> bm!37586 (= call!37588 (getCurrentListMapNoExtraKeys!2678 _keys!868 lt!381870 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847953 () Bool)

(declare-fun res!576215 () Bool)

(assert (=> b!847953 (=> (not res!576215) (not e!473156))))

(assert (=> b!847953 (= res!576215 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23611 _keys!868))))))

(declare-fun b!847954 () Bool)

(declare-fun res!576220 () Bool)

(assert (=> b!847954 (=> (not res!576220) (not e!473156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847954 (= res!576220 (validKeyInArray!0 k0!854))))

(declare-fun bm!37585 () Bool)

(assert (=> bm!37585 (= call!37589 (getCurrentListMapNoExtraKeys!2678 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!576221 () Bool)

(assert (=> start!73024 (=> (not res!576221) (not e!473156))))

(assert (=> start!73024 (= res!576221 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23611 _keys!868))))))

(assert (=> start!73024 e!473156))

(assert (=> start!73024 tp_is_empty!16047))

(assert (=> start!73024 true))

(assert (=> start!73024 tp!49237))

(declare-fun array_inv!18378 (array!48286) Bool)

(assert (=> start!73024 (array_inv!18378 _keys!868)))

(declare-fun array_inv!18379 (array!48288) Bool)

(assert (=> start!73024 (and (array_inv!18379 _values!688) e!473159)))

(declare-fun mapNonEmpty!25670 () Bool)

(declare-fun tp!49238 () Bool)

(assert (=> mapNonEmpty!25670 (= mapRes!25670 (and tp!49238 e!473157))))

(declare-fun mapKey!25670 () (_ BitVec 32))

(declare-fun mapValue!25670 () ValueCell!7584)

(declare-fun mapRest!25670 () (Array (_ BitVec 32) ValueCell!7584))

(assert (=> mapNonEmpty!25670 (= (arr!23171 _values!688) (store mapRest!25670 mapKey!25670 mapValue!25670))))

(declare-fun b!847955 () Bool)

(declare-fun res!576218 () Bool)

(assert (=> b!847955 (=> (not res!576218) (not e!473156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48286 (_ BitVec 32)) Bool)

(assert (=> b!847955 (= res!576218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73024 res!576221) b!847949))

(assert (= (and b!847949 res!576214) b!847947))

(assert (= (and b!847947 res!576217) b!847955))

(assert (= (and b!847955 res!576218) b!847942))

(assert (= (and b!847942 res!576219) b!847953))

(assert (= (and b!847953 res!576215) b!847954))

(assert (= (and b!847954 res!576220) b!847944))

(assert (= (and b!847944 res!576216) b!847948))

(assert (= (and b!847948 res!576222) b!847946))

(assert (= (and b!847946 c!91455) b!847952))

(assert (= (and b!847946 (not c!91455)) b!847945))

(assert (= (or b!847952 b!847945) bm!37585))

(assert (= (or b!847952 b!847945) bm!37586))

(assert (= (and b!847950 condMapEmpty!25670) mapIsEmpty!25670))

(assert (= (and b!847950 (not condMapEmpty!25670)) mapNonEmpty!25670))

(get-info :version)

(assert (= (and mapNonEmpty!25670 ((_ is ValueCellFull!7584) mapValue!25670)) b!847943))

(assert (= (and b!847950 ((_ is ValueCellFull!7584) mapDefault!25670)) b!847951))

(assert (= start!73024 b!847950))

(declare-fun m!788933 () Bool)

(assert (=> b!847952 m!788933))

(declare-fun m!788935 () Bool)

(assert (=> mapNonEmpty!25670 m!788935))

(declare-fun m!788937 () Bool)

(assert (=> b!847949 m!788937))

(declare-fun m!788939 () Bool)

(assert (=> b!847944 m!788939))

(declare-fun m!788941 () Bool)

(assert (=> b!847948 m!788941))

(declare-fun m!788943 () Bool)

(assert (=> b!847948 m!788943))

(declare-fun m!788945 () Bool)

(assert (=> b!847948 m!788945))

(declare-fun m!788947 () Bool)

(assert (=> start!73024 m!788947))

(declare-fun m!788949 () Bool)

(assert (=> start!73024 m!788949))

(declare-fun m!788951 () Bool)

(assert (=> b!847942 m!788951))

(declare-fun m!788953 () Bool)

(assert (=> b!847954 m!788953))

(declare-fun m!788955 () Bool)

(assert (=> b!847955 m!788955))

(declare-fun m!788957 () Bool)

(assert (=> bm!37586 m!788957))

(declare-fun m!788959 () Bool)

(assert (=> bm!37585 m!788959))

(declare-fun m!788961 () Bool)

(assert (=> b!847946 m!788961))

(check-sat (not b!847949) (not b!847954) (not b!847946) (not b!847948) (not b!847955) (not b!847952) (not b!847942) (not bm!37586) (not mapNonEmpty!25670) (not b_next!13911) tp_is_empty!16047 b_and!23015 (not start!73024) (not bm!37585))
(check-sat b_and!23015 (not b_next!13911))
