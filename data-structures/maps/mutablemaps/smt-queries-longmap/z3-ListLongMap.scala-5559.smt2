; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73168 () Bool)

(assert start!73168)

(declare-fun b_free!14055 () Bool)

(declare-fun b_next!14055 () Bool)

(assert (=> start!73168 (= b_free!14055 (not b_next!14055))))

(declare-fun tp!49670 () Bool)

(declare-fun b_and!23287 () Bool)

(assert (=> start!73168 (= tp!49670 b_and!23287)))

(declare-fun b!851297 () Bool)

(declare-fun e!474872 () Bool)

(assert (=> b!851297 (= e!474872 true)))

(declare-datatypes ((V!26635 0))(
  ( (V!26636 (val!8143 Int)) )
))
(declare-fun lt!383409 () V!26635)

(declare-datatypes ((tuple2!10696 0))(
  ( (tuple2!10697 (_1!5358 (_ BitVec 64)) (_2!5358 V!26635)) )
))
(declare-datatypes ((List!16583 0))(
  ( (Nil!16580) (Cons!16579 (h!17710 tuple2!10696) (t!23092 List!16583)) )
))
(declare-datatypes ((ListLongMap!9479 0))(
  ( (ListLongMap!9480 (toList!4755 List!16583)) )
))
(declare-fun lt!383412 () ListLongMap!9479)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lt!383411 () tuple2!10696)

(declare-fun +!2097 (ListLongMap!9479 tuple2!10696) ListLongMap!9479)

(assert (=> b!851297 (= (+!2097 lt!383412 lt!383411) (+!2097 (+!2097 lt!383412 (tuple2!10697 k0!854 lt!383409)) lt!383411))))

(declare-fun lt!383413 () V!26635)

(assert (=> b!851297 (= lt!383411 (tuple2!10697 k0!854 lt!383413))))

(declare-datatypes ((Unit!29040 0))(
  ( (Unit!29041) )
))
(declare-fun lt!383414 () Unit!29040)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!281 (ListLongMap!9479 (_ BitVec 64) V!26635 V!26635) Unit!29040)

(assert (=> b!851297 (= lt!383414 (addSameAsAddTwiceSameKeyDiffValues!281 lt!383412 k0!854 lt!383409 lt!383413))))

(declare-fun lt!383415 () V!26635)

(declare-datatypes ((ValueCell!7656 0))(
  ( (ValueCellFull!7656 (v!10564 V!26635)) (EmptyCell!7656) )
))
(declare-datatypes ((array!48570 0))(
  ( (array!48571 (arr!23312 (Array (_ BitVec 32) ValueCell!7656)) (size!23753 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48570)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12297 (ValueCell!7656 V!26635) V!26635)

(assert (=> b!851297 (= lt!383409 (get!12297 (select (arr!23312 _values!688) from!1053) lt!383415))))

(declare-fun lt!383417 () ListLongMap!9479)

(declare-datatypes ((array!48572 0))(
  ( (array!48573 (arr!23313 (Array (_ BitVec 32) (_ BitVec 64))) (size!23754 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48572)

(assert (=> b!851297 (= lt!383417 (+!2097 lt!383412 (tuple2!10697 (select (arr!23313 _keys!868) from!1053) lt!383413)))))

(declare-fun v!557 () V!26635)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851297 (= lt!383413 (get!12297 (select (store (arr!23312 _values!688) i!612 (ValueCellFull!7656 v!557)) from!1053) lt!383415))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1029 (Int (_ BitVec 64)) V!26635)

(assert (=> b!851297 (= lt!383415 (dynLambda!1029 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383416 () array!48570)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26635)

(declare-fun zeroValue!654 () V!26635)

(declare-fun getCurrentListMapNoExtraKeys!2740 (array!48572 array!48570 (_ BitVec 32) (_ BitVec 32) V!26635 V!26635 (_ BitVec 32) Int) ListLongMap!9479)

(assert (=> b!851297 (= lt!383412 (getCurrentListMapNoExtraKeys!2740 _keys!868 lt!383416 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851298 () Bool)

(declare-fun e!474871 () Bool)

(assert (=> b!851298 (= e!474871 (not e!474872))))

(declare-fun res!578363 () Bool)

(assert (=> b!851298 (=> res!578363 e!474872)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851298 (= res!578363 (not (validKeyInArray!0 (select (arr!23313 _keys!868) from!1053))))))

(declare-fun e!474873 () Bool)

(assert (=> b!851298 e!474873))

(declare-fun c!91671 () Bool)

(assert (=> b!851298 (= c!91671 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383410 () Unit!29040)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!364 (array!48572 array!48570 (_ BitVec 32) (_ BitVec 32) V!26635 V!26635 (_ BitVec 32) (_ BitVec 64) V!26635 (_ BitVec 32) Int) Unit!29040)

(assert (=> b!851298 (= lt!383410 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!364 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851299 () Bool)

(declare-fun res!578366 () Bool)

(declare-fun e!474870 () Bool)

(assert (=> b!851299 (=> (not res!578366) (not e!474870))))

(assert (=> b!851299 (= res!578366 (and (= (size!23753 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23754 _keys!868) (size!23753 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851301 () Bool)

(declare-fun res!578369 () Bool)

(assert (=> b!851301 (=> (not res!578369) (not e!474870))))

(assert (=> b!851301 (= res!578369 (validKeyInArray!0 k0!854))))

(declare-fun call!38020 () ListLongMap!9479)

(declare-fun bm!38017 () Bool)

(assert (=> bm!38017 (= call!38020 (getCurrentListMapNoExtraKeys!2740 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851302 () Bool)

(declare-fun res!578368 () Bool)

(assert (=> b!851302 (=> (not res!578368) (not e!474870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48572 (_ BitVec 32)) Bool)

(assert (=> b!851302 (= res!578368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851303 () Bool)

(declare-fun res!578365 () Bool)

(assert (=> b!851303 (=> (not res!578365) (not e!474870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851303 (= res!578365 (validMask!0 mask!1196))))

(declare-fun b!851304 () Bool)

(declare-fun e!474876 () Bool)

(declare-fun tp_is_empty!16191 () Bool)

(assert (=> b!851304 (= e!474876 tp_is_empty!16191)))

(declare-fun b!851305 () Bool)

(assert (=> b!851305 (= e!474870 e!474871)))

(declare-fun res!578367 () Bool)

(assert (=> b!851305 (=> (not res!578367) (not e!474871))))

(assert (=> b!851305 (= res!578367 (= from!1053 i!612))))

(assert (=> b!851305 (= lt!383417 (getCurrentListMapNoExtraKeys!2740 _keys!868 lt!383416 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851305 (= lt!383416 (array!48571 (store (arr!23312 _values!688) i!612 (ValueCellFull!7656 v!557)) (size!23753 _values!688)))))

(declare-fun lt!383418 () ListLongMap!9479)

(assert (=> b!851305 (= lt!383418 (getCurrentListMapNoExtraKeys!2740 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!25886 () Bool)

(declare-fun mapRes!25886 () Bool)

(declare-fun tp!49669 () Bool)

(declare-fun e!474874 () Bool)

(assert (=> mapNonEmpty!25886 (= mapRes!25886 (and tp!49669 e!474874))))

(declare-fun mapValue!25886 () ValueCell!7656)

(declare-fun mapRest!25886 () (Array (_ BitVec 32) ValueCell!7656))

(declare-fun mapKey!25886 () (_ BitVec 32))

(assert (=> mapNonEmpty!25886 (= (arr!23312 _values!688) (store mapRest!25886 mapKey!25886 mapValue!25886))))

(declare-fun b!851306 () Bool)

(declare-fun res!578370 () Bool)

(assert (=> b!851306 (=> (not res!578370) (not e!474870))))

(assert (=> b!851306 (= res!578370 (and (= (select (arr!23313 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!851307 () Bool)

(declare-fun res!578361 () Bool)

(assert (=> b!851307 (=> (not res!578361) (not e!474870))))

(assert (=> b!851307 (= res!578361 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23754 _keys!868))))))

(declare-fun b!851300 () Bool)

(declare-fun call!38021 () ListLongMap!9479)

(assert (=> b!851300 (= e!474873 (= call!38021 call!38020))))

(declare-fun res!578364 () Bool)

(assert (=> start!73168 (=> (not res!578364) (not e!474870))))

(assert (=> start!73168 (= res!578364 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23754 _keys!868))))))

(assert (=> start!73168 e!474870))

(assert (=> start!73168 tp_is_empty!16191))

(assert (=> start!73168 true))

(assert (=> start!73168 tp!49670))

(declare-fun array_inv!18484 (array!48572) Bool)

(assert (=> start!73168 (array_inv!18484 _keys!868)))

(declare-fun e!474869 () Bool)

(declare-fun array_inv!18485 (array!48570) Bool)

(assert (=> start!73168 (and (array_inv!18485 _values!688) e!474869)))

(declare-fun mapIsEmpty!25886 () Bool)

(assert (=> mapIsEmpty!25886 mapRes!25886))

(declare-fun b!851308 () Bool)

(assert (=> b!851308 (= e!474874 tp_is_empty!16191)))

(declare-fun b!851309 () Bool)

(assert (=> b!851309 (= e!474869 (and e!474876 mapRes!25886))))

(declare-fun condMapEmpty!25886 () Bool)

(declare-fun mapDefault!25886 () ValueCell!7656)

(assert (=> b!851309 (= condMapEmpty!25886 (= (arr!23312 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7656)) mapDefault!25886)))))

(declare-fun b!851310 () Bool)

(assert (=> b!851310 (= e!474873 (= call!38021 (+!2097 call!38020 (tuple2!10697 k0!854 v!557))))))

(declare-fun bm!38018 () Bool)

(assert (=> bm!38018 (= call!38021 (getCurrentListMapNoExtraKeys!2740 _keys!868 lt!383416 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851311 () Bool)

(declare-fun res!578362 () Bool)

(assert (=> b!851311 (=> (not res!578362) (not e!474870))))

(declare-datatypes ((List!16584 0))(
  ( (Nil!16581) (Cons!16580 (h!17711 (_ BitVec 64)) (t!23093 List!16584)) )
))
(declare-fun arrayNoDuplicates!0 (array!48572 (_ BitVec 32) List!16584) Bool)

(assert (=> b!851311 (= res!578362 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16581))))

(assert (= (and start!73168 res!578364) b!851303))

(assert (= (and b!851303 res!578365) b!851299))

(assert (= (and b!851299 res!578366) b!851302))

(assert (= (and b!851302 res!578368) b!851311))

(assert (= (and b!851311 res!578362) b!851307))

(assert (= (and b!851307 res!578361) b!851301))

(assert (= (and b!851301 res!578369) b!851306))

(assert (= (and b!851306 res!578370) b!851305))

(assert (= (and b!851305 res!578367) b!851298))

(assert (= (and b!851298 c!91671) b!851310))

(assert (= (and b!851298 (not c!91671)) b!851300))

(assert (= (or b!851310 b!851300) bm!38018))

(assert (= (or b!851310 b!851300) bm!38017))

(assert (= (and b!851298 (not res!578363)) b!851297))

(assert (= (and b!851309 condMapEmpty!25886) mapIsEmpty!25886))

(assert (= (and b!851309 (not condMapEmpty!25886)) mapNonEmpty!25886))

(get-info :version)

(assert (= (and mapNonEmpty!25886 ((_ is ValueCellFull!7656) mapValue!25886)) b!851308))

(assert (= (and b!851309 ((_ is ValueCellFull!7656) mapDefault!25886)) b!851304))

(assert (= start!73168 b!851309))

(declare-fun b_lambda!11617 () Bool)

(assert (=> (not b_lambda!11617) (not b!851297)))

(declare-fun t!23091 () Bool)

(declare-fun tb!4365 () Bool)

(assert (=> (and start!73168 (= defaultEntry!696 defaultEntry!696) t!23091) tb!4365))

(declare-fun result!8333 () Bool)

(assert (=> tb!4365 (= result!8333 tp_is_empty!16191)))

(assert (=> b!851297 t!23091))

(declare-fun b_and!23289 () Bool)

(assert (= b_and!23287 (and (=> t!23091 result!8333) b_and!23289)))

(declare-fun m!792317 () Bool)

(assert (=> bm!38018 m!792317))

(declare-fun m!792319 () Bool)

(assert (=> b!851302 m!792319))

(declare-fun m!792321 () Bool)

(assert (=> start!73168 m!792321))

(declare-fun m!792323 () Bool)

(assert (=> start!73168 m!792323))

(declare-fun m!792325 () Bool)

(assert (=> b!851310 m!792325))

(declare-fun m!792327 () Bool)

(assert (=> b!851303 m!792327))

(declare-fun m!792329 () Bool)

(assert (=> b!851301 m!792329))

(declare-fun m!792331 () Bool)

(assert (=> mapNonEmpty!25886 m!792331))

(declare-fun m!792333 () Bool)

(assert (=> b!851306 m!792333))

(declare-fun m!792335 () Bool)

(assert (=> bm!38017 m!792335))

(declare-fun m!792337 () Bool)

(assert (=> b!851311 m!792337))

(declare-fun m!792339 () Bool)

(assert (=> b!851298 m!792339))

(assert (=> b!851298 m!792339))

(declare-fun m!792341 () Bool)

(assert (=> b!851298 m!792341))

(declare-fun m!792343 () Bool)

(assert (=> b!851298 m!792343))

(declare-fun m!792345 () Bool)

(assert (=> b!851305 m!792345))

(declare-fun m!792347 () Bool)

(assert (=> b!851305 m!792347))

(declare-fun m!792349 () Bool)

(assert (=> b!851305 m!792349))

(declare-fun m!792351 () Bool)

(assert (=> b!851297 m!792351))

(assert (=> b!851297 m!792317))

(declare-fun m!792353 () Bool)

(assert (=> b!851297 m!792353))

(declare-fun m!792355 () Bool)

(assert (=> b!851297 m!792355))

(declare-fun m!792357 () Bool)

(assert (=> b!851297 m!792357))

(declare-fun m!792359 () Bool)

(assert (=> b!851297 m!792359))

(assert (=> b!851297 m!792347))

(declare-fun m!792361 () Bool)

(assert (=> b!851297 m!792361))

(declare-fun m!792363 () Bool)

(assert (=> b!851297 m!792363))

(assert (=> b!851297 m!792357))

(assert (=> b!851297 m!792361))

(assert (=> b!851297 m!792339))

(declare-fun m!792365 () Bool)

(assert (=> b!851297 m!792365))

(declare-fun m!792367 () Bool)

(assert (=> b!851297 m!792367))

(declare-fun m!792369 () Bool)

(assert (=> b!851297 m!792369))

(assert (=> b!851297 m!792367))

(check-sat (not start!73168) (not b!851303) (not b!851298) b_and!23289 (not bm!38018) (not b_next!14055) (not b!851297) (not mapNonEmpty!25886) (not bm!38017) (not b!851302) (not b!851301) (not b!851305) (not b_lambda!11617) (not b!851310) (not b!851311) tp_is_empty!16191)
(check-sat b_and!23289 (not b_next!14055))
