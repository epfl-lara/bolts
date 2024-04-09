; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73204 () Bool)

(assert start!73204)

(declare-fun b_free!14091 () Bool)

(declare-fun b_next!14091 () Bool)

(assert (=> start!73204 (= b_free!14091 (not b_next!14091))))

(declare-fun tp!49778 () Bool)

(declare-fun b_and!23359 () Bool)

(assert (=> start!73204 (= tp!49778 b_and!23359)))

(declare-fun b!852143 () Bool)

(declare-fun e!475307 () Bool)

(declare-fun tp_is_empty!16227 () Bool)

(assert (=> b!852143 (= e!475307 tp_is_empty!16227)))

(declare-datatypes ((V!26683 0))(
  ( (V!26684 (val!8161 Int)) )
))
(declare-datatypes ((tuple2!10726 0))(
  ( (tuple2!10727 (_1!5373 (_ BitVec 64)) (_2!5373 V!26683)) )
))
(declare-datatypes ((List!16611 0))(
  ( (Nil!16608) (Cons!16607 (h!17738 tuple2!10726) (t!23156 List!16611)) )
))
(declare-datatypes ((ListLongMap!9509 0))(
  ( (ListLongMap!9510 (toList!4770 List!16611)) )
))
(declare-fun call!38128 () ListLongMap!9509)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!38125 () Bool)

(declare-datatypes ((array!48640 0))(
  ( (array!48641 (arr!23347 (Array (_ BitVec 32) (_ BitVec 64))) (size!23788 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48640)

(declare-datatypes ((ValueCell!7674 0))(
  ( (ValueCellFull!7674 (v!10582 V!26683)) (EmptyCell!7674) )
))
(declare-datatypes ((array!48642 0))(
  ( (array!48643 (arr!23348 (Array (_ BitVec 32) ValueCell!7674)) (size!23789 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48642)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26683)

(declare-fun zeroValue!654 () V!26683)

(declare-fun getCurrentListMapNoExtraKeys!2755 (array!48640 array!48642 (_ BitVec 32) (_ BitVec 32) V!26683 V!26683 (_ BitVec 32) Int) ListLongMap!9509)

(assert (=> bm!38125 (= call!38128 (getCurrentListMapNoExtraKeys!2755 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852144 () Bool)

(declare-fun res!578907 () Bool)

(declare-fun e!475301 () Bool)

(assert (=> b!852144 (=> (not res!578907) (not e!475301))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852144 (= res!578907 (validKeyInArray!0 k0!854))))

(declare-fun lt!383955 () array!48642)

(declare-fun bm!38126 () Bool)

(declare-fun call!38129 () ListLongMap!9509)

(assert (=> bm!38126 (= call!38129 (getCurrentListMapNoExtraKeys!2755 _keys!868 lt!383955 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25940 () Bool)

(declare-fun mapRes!25940 () Bool)

(declare-fun tp!49777 () Bool)

(declare-fun e!475306 () Bool)

(assert (=> mapNonEmpty!25940 (= mapRes!25940 (and tp!49777 e!475306))))

(declare-fun mapValue!25940 () ValueCell!7674)

(declare-fun mapKey!25940 () (_ BitVec 32))

(declare-fun mapRest!25940 () (Array (_ BitVec 32) ValueCell!7674))

(assert (=> mapNonEmpty!25940 (= (arr!23348 _values!688) (store mapRest!25940 mapKey!25940 mapValue!25940))))

(declare-fun b!852145 () Bool)

(declare-fun res!578903 () Bool)

(assert (=> b!852145 (=> (not res!578903) (not e!475301))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852145 (= res!578903 (and (= (select (arr!23347 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!852146 () Bool)

(declare-fun res!578908 () Bool)

(assert (=> b!852146 (=> (not res!578908) (not e!475301))))

(assert (=> b!852146 (= res!578908 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23788 _keys!868))))))

(declare-fun b!852147 () Bool)

(declare-fun e!475304 () Bool)

(declare-fun e!475305 () Bool)

(assert (=> b!852147 (= e!475304 (not e!475305))))

(declare-fun res!578905 () Bool)

(assert (=> b!852147 (=> res!578905 e!475305)))

(assert (=> b!852147 (= res!578905 (not (validKeyInArray!0 (select (arr!23347 _keys!868) from!1053))))))

(declare-fun e!475308 () Bool)

(assert (=> b!852147 e!475308))

(declare-fun c!91725 () Bool)

(assert (=> b!852147 (= c!91725 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26683)

(declare-datatypes ((Unit!29070 0))(
  ( (Unit!29071) )
))
(declare-fun lt!383953 () Unit!29070)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!377 (array!48640 array!48642 (_ BitVec 32) (_ BitVec 32) V!26683 V!26683 (_ BitVec 32) (_ BitVec 64) V!26683 (_ BitVec 32) Int) Unit!29070)

(assert (=> b!852147 (= lt!383953 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!377 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852148 () Bool)

(declare-fun res!578904 () Bool)

(assert (=> b!852148 (=> (not res!578904) (not e!475301))))

(declare-datatypes ((List!16612 0))(
  ( (Nil!16609) (Cons!16608 (h!17739 (_ BitVec 64)) (t!23157 List!16612)) )
))
(declare-fun arrayNoDuplicates!0 (array!48640 (_ BitVec 32) List!16612) Bool)

(assert (=> b!852148 (= res!578904 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16609))))

(declare-fun b!852149 () Bool)

(assert (=> b!852149 (= e!475301 e!475304)))

(declare-fun res!578906 () Bool)

(assert (=> b!852149 (=> (not res!578906) (not e!475304))))

(assert (=> b!852149 (= res!578906 (= from!1053 i!612))))

(declare-fun lt!383954 () ListLongMap!9509)

(assert (=> b!852149 (= lt!383954 (getCurrentListMapNoExtraKeys!2755 _keys!868 lt!383955 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852149 (= lt!383955 (array!48643 (store (arr!23348 _values!688) i!612 (ValueCellFull!7674 v!557)) (size!23789 _values!688)))))

(declare-fun lt!383958 () ListLongMap!9509)

(assert (=> b!852149 (= lt!383958 (getCurrentListMapNoExtraKeys!2755 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852151 () Bool)

(declare-fun res!578910 () Bool)

(assert (=> b!852151 (=> (not res!578910) (not e!475301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48640 (_ BitVec 32)) Bool)

(assert (=> b!852151 (= res!578910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25940 () Bool)

(assert (=> mapIsEmpty!25940 mapRes!25940))

(declare-fun b!852152 () Bool)

(assert (=> b!852152 (= e!475305 true)))

(declare-fun lt!383952 () tuple2!10726)

(declare-fun lt!383956 () V!26683)

(declare-fun lt!383957 () ListLongMap!9509)

(declare-fun +!2111 (ListLongMap!9509 tuple2!10726) ListLongMap!9509)

(assert (=> b!852152 (= (+!2111 lt!383957 lt!383952) (+!2111 (+!2111 lt!383957 (tuple2!10727 k0!854 lt!383956)) lt!383952))))

(declare-fun lt!383951 () V!26683)

(assert (=> b!852152 (= lt!383952 (tuple2!10727 k0!854 lt!383951))))

(declare-fun lt!383949 () Unit!29070)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!294 (ListLongMap!9509 (_ BitVec 64) V!26683 V!26683) Unit!29070)

(assert (=> b!852152 (= lt!383949 (addSameAsAddTwiceSameKeyDiffValues!294 lt!383957 k0!854 lt!383956 lt!383951))))

(declare-fun lt!383950 () V!26683)

(declare-fun get!12322 (ValueCell!7674 V!26683) V!26683)

(assert (=> b!852152 (= lt!383956 (get!12322 (select (arr!23348 _values!688) from!1053) lt!383950))))

(assert (=> b!852152 (= lt!383954 (+!2111 lt!383957 (tuple2!10727 (select (arr!23347 _keys!868) from!1053) lt!383951)))))

(assert (=> b!852152 (= lt!383951 (get!12322 (select (store (arr!23348 _values!688) i!612 (ValueCellFull!7674 v!557)) from!1053) lt!383950))))

(declare-fun dynLambda!1042 (Int (_ BitVec 64)) V!26683)

(assert (=> b!852152 (= lt!383950 (dynLambda!1042 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!852152 (= lt!383957 (getCurrentListMapNoExtraKeys!2755 _keys!868 lt!383955 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852153 () Bool)

(declare-fun e!475303 () Bool)

(assert (=> b!852153 (= e!475303 (and e!475307 mapRes!25940))))

(declare-fun condMapEmpty!25940 () Bool)

(declare-fun mapDefault!25940 () ValueCell!7674)

(assert (=> b!852153 (= condMapEmpty!25940 (= (arr!23348 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7674)) mapDefault!25940)))))

(declare-fun b!852154 () Bool)

(declare-fun res!578909 () Bool)

(assert (=> b!852154 (=> (not res!578909) (not e!475301))))

(assert (=> b!852154 (= res!578909 (and (= (size!23789 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23788 _keys!868) (size!23789 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852155 () Bool)

(assert (=> b!852155 (= e!475306 tp_is_empty!16227)))

(declare-fun b!852150 () Bool)

(assert (=> b!852150 (= e!475308 (= call!38129 call!38128))))

(declare-fun res!578901 () Bool)

(assert (=> start!73204 (=> (not res!578901) (not e!475301))))

(assert (=> start!73204 (= res!578901 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23788 _keys!868))))))

(assert (=> start!73204 e!475301))

(assert (=> start!73204 tp_is_empty!16227))

(assert (=> start!73204 true))

(assert (=> start!73204 tp!49778))

(declare-fun array_inv!18506 (array!48640) Bool)

(assert (=> start!73204 (array_inv!18506 _keys!868)))

(declare-fun array_inv!18507 (array!48642) Bool)

(assert (=> start!73204 (and (array_inv!18507 _values!688) e!475303)))

(declare-fun b!852156 () Bool)

(assert (=> b!852156 (= e!475308 (= call!38129 (+!2111 call!38128 (tuple2!10727 k0!854 v!557))))))

(declare-fun b!852157 () Bool)

(declare-fun res!578902 () Bool)

(assert (=> b!852157 (=> (not res!578902) (not e!475301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852157 (= res!578902 (validMask!0 mask!1196))))

(assert (= (and start!73204 res!578901) b!852157))

(assert (= (and b!852157 res!578902) b!852154))

(assert (= (and b!852154 res!578909) b!852151))

(assert (= (and b!852151 res!578910) b!852148))

(assert (= (and b!852148 res!578904) b!852146))

(assert (= (and b!852146 res!578908) b!852144))

(assert (= (and b!852144 res!578907) b!852145))

(assert (= (and b!852145 res!578903) b!852149))

(assert (= (and b!852149 res!578906) b!852147))

(assert (= (and b!852147 c!91725) b!852156))

(assert (= (and b!852147 (not c!91725)) b!852150))

(assert (= (or b!852156 b!852150) bm!38126))

(assert (= (or b!852156 b!852150) bm!38125))

(assert (= (and b!852147 (not res!578905)) b!852152))

(assert (= (and b!852153 condMapEmpty!25940) mapIsEmpty!25940))

(assert (= (and b!852153 (not condMapEmpty!25940)) mapNonEmpty!25940))

(get-info :version)

(assert (= (and mapNonEmpty!25940 ((_ is ValueCellFull!7674) mapValue!25940)) b!852155))

(assert (= (and b!852153 ((_ is ValueCellFull!7674) mapDefault!25940)) b!852143))

(assert (= start!73204 b!852153))

(declare-fun b_lambda!11653 () Bool)

(assert (=> (not b_lambda!11653) (not b!852152)))

(declare-fun t!23155 () Bool)

(declare-fun tb!4401 () Bool)

(assert (=> (and start!73204 (= defaultEntry!696 defaultEntry!696) t!23155) tb!4401))

(declare-fun result!8405 () Bool)

(assert (=> tb!4401 (= result!8405 tp_is_empty!16227)))

(assert (=> b!852152 t!23155))

(declare-fun b_and!23361 () Bool)

(assert (= b_and!23359 (and (=> t!23155 result!8405) b_and!23361)))

(declare-fun m!793289 () Bool)

(assert (=> b!852147 m!793289))

(assert (=> b!852147 m!793289))

(declare-fun m!793291 () Bool)

(assert (=> b!852147 m!793291))

(declare-fun m!793293 () Bool)

(assert (=> b!852147 m!793293))

(declare-fun m!793295 () Bool)

(assert (=> b!852148 m!793295))

(declare-fun m!793297 () Bool)

(assert (=> b!852144 m!793297))

(declare-fun m!793299 () Bool)

(assert (=> b!852149 m!793299))

(declare-fun m!793301 () Bool)

(assert (=> b!852149 m!793301))

(declare-fun m!793303 () Bool)

(assert (=> b!852149 m!793303))

(declare-fun m!793305 () Bool)

(assert (=> start!73204 m!793305))

(declare-fun m!793307 () Bool)

(assert (=> start!73204 m!793307))

(declare-fun m!793309 () Bool)

(assert (=> b!852151 m!793309))

(declare-fun m!793311 () Bool)

(assert (=> bm!38125 m!793311))

(declare-fun m!793313 () Bool)

(assert (=> b!852157 m!793313))

(declare-fun m!793315 () Bool)

(assert (=> mapNonEmpty!25940 m!793315))

(declare-fun m!793317 () Bool)

(assert (=> b!852152 m!793317))

(declare-fun m!793319 () Bool)

(assert (=> b!852152 m!793319))

(declare-fun m!793321 () Bool)

(assert (=> b!852152 m!793321))

(declare-fun m!793323 () Bool)

(assert (=> b!852152 m!793323))

(declare-fun m!793325 () Bool)

(assert (=> b!852152 m!793325))

(declare-fun m!793327 () Bool)

(assert (=> b!852152 m!793327))

(assert (=> b!852152 m!793317))

(assert (=> b!852152 m!793325))

(declare-fun m!793329 () Bool)

(assert (=> b!852152 m!793329))

(declare-fun m!793331 () Bool)

(assert (=> b!852152 m!793331))

(declare-fun m!793333 () Bool)

(assert (=> b!852152 m!793333))

(assert (=> b!852152 m!793289))

(declare-fun m!793335 () Bool)

(assert (=> b!852152 m!793335))

(assert (=> b!852152 m!793331))

(declare-fun m!793337 () Bool)

(assert (=> b!852152 m!793337))

(assert (=> b!852152 m!793301))

(declare-fun m!793339 () Bool)

(assert (=> b!852145 m!793339))

(declare-fun m!793341 () Bool)

(assert (=> b!852156 m!793341))

(assert (=> bm!38126 m!793321))

(check-sat (not b!852152) (not b!852148) (not bm!38125) (not bm!38126) (not b!852144) (not b_next!14091) (not b!852147) tp_is_empty!16227 (not b!852157) (not mapNonEmpty!25940) (not b!852149) (not b!852156) (not start!73204) (not b_lambda!11653) b_and!23361 (not b!852151))
(check-sat b_and!23361 (not b_next!14091))
