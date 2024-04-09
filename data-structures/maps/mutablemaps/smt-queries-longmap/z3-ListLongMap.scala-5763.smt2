; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74456 () Bool)

(assert start!74456)

(declare-fun b_free!15171 () Bool)

(declare-fun b_next!15171 () Bool)

(assert (=> start!74456 (= b_free!15171 (not b_next!15171))))

(declare-fun tp!53191 () Bool)

(declare-fun b_and!25013 () Bool)

(assert (=> start!74456 (= tp!53191 b_and!25013)))

(declare-fun mapIsEmpty!27734 () Bool)

(declare-fun mapRes!27734 () Bool)

(assert (=> mapIsEmpty!27734 mapRes!27734))

(declare-fun b!876379 () Bool)

(declare-fun e!487888 () Bool)

(declare-fun e!487886 () Bool)

(assert (=> b!876379 (= e!487888 (not e!487886))))

(declare-fun res!595632 () Bool)

(assert (=> b!876379 (=> res!595632 e!487886)))

(declare-datatypes ((array!50938 0))(
  ( (array!50939 (arr!24492 (Array (_ BitVec 32) (_ BitVec 64))) (size!24933 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50938)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876379 (= res!595632 (not (validKeyInArray!0 (select (arr!24492 _keys!868) from!1053))))))

(declare-fun e!487887 () Bool)

(assert (=> b!876379 e!487887))

(declare-fun c!92524 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876379 (= c!92524 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!28267 0))(
  ( (V!28268 (val!8755 Int)) )
))
(declare-fun v!557 () V!28267)

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((Unit!29928 0))(
  ( (Unit!29929) )
))
(declare-fun lt!396488 () Unit!29928)

(declare-datatypes ((ValueCell!8268 0))(
  ( (ValueCellFull!8268 (v!11184 V!28267)) (EmptyCell!8268) )
))
(declare-datatypes ((array!50940 0))(
  ( (array!50941 (arr!24493 (Array (_ BitVec 32) ValueCell!8268)) (size!24934 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50940)

(declare-fun minValue!654 () V!28267)

(declare-fun zeroValue!654 () V!28267)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!668 (array!50938 array!50940 (_ BitVec 32) (_ BitVec 32) V!28267 V!28267 (_ BitVec 32) (_ BitVec 64) V!28267 (_ BitVec 32) Int) Unit!29928)

(assert (=> b!876379 (= lt!396488 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!668 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876380 () Bool)

(declare-fun res!595631 () Bool)

(declare-fun e!487884 () Bool)

(assert (=> b!876380 (=> (not res!595631) (not e!487884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50938 (_ BitVec 32)) Bool)

(assert (=> b!876380 (= res!595631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876381 () Bool)

(declare-fun res!595628 () Bool)

(assert (=> b!876381 (=> (not res!595628) (not e!487884))))

(assert (=> b!876381 (= res!595628 (and (= (select (arr!24492 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun bm!38753 () Bool)

(declare-datatypes ((tuple2!11584 0))(
  ( (tuple2!11585 (_1!5802 (_ BitVec 64)) (_2!5802 V!28267)) )
))
(declare-datatypes ((List!17466 0))(
  ( (Nil!17463) (Cons!17462 (h!18593 tuple2!11584) (t!24549 List!17466)) )
))
(declare-datatypes ((ListLongMap!10367 0))(
  ( (ListLongMap!10368 (toList!5199 List!17466)) )
))
(declare-fun call!38757 () ListLongMap!10367)

(declare-fun getCurrentListMapNoExtraKeys!3161 (array!50938 array!50940 (_ BitVec 32) (_ BitVec 32) V!28267 V!28267 (_ BitVec 32) Int) ListLongMap!10367)

(assert (=> bm!38753 (= call!38757 (getCurrentListMapNoExtraKeys!3161 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!595627 () Bool)

(assert (=> start!74456 (=> (not res!595627) (not e!487884))))

(assert (=> start!74456 (= res!595627 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24933 _keys!868))))))

(assert (=> start!74456 e!487884))

(declare-fun tp_is_empty!17415 () Bool)

(assert (=> start!74456 tp_is_empty!17415))

(assert (=> start!74456 true))

(assert (=> start!74456 tp!53191))

(declare-fun array_inv!19292 (array!50938) Bool)

(assert (=> start!74456 (array_inv!19292 _keys!868)))

(declare-fun e!487885 () Bool)

(declare-fun array_inv!19293 (array!50940) Bool)

(assert (=> start!74456 (and (array_inv!19293 _values!688) e!487885)))

(declare-fun mapNonEmpty!27734 () Bool)

(declare-fun tp!53192 () Bool)

(declare-fun e!487889 () Bool)

(assert (=> mapNonEmpty!27734 (= mapRes!27734 (and tp!53192 e!487889))))

(declare-fun mapValue!27734 () ValueCell!8268)

(declare-fun mapRest!27734 () (Array (_ BitVec 32) ValueCell!8268))

(declare-fun mapKey!27734 () (_ BitVec 32))

(assert (=> mapNonEmpty!27734 (= (arr!24493 _values!688) (store mapRest!27734 mapKey!27734 mapValue!27734))))

(declare-fun call!38756 () ListLongMap!10367)

(declare-fun b!876382 () Bool)

(declare-fun +!2435 (ListLongMap!10367 tuple2!11584) ListLongMap!10367)

(assert (=> b!876382 (= e!487887 (= call!38756 (+!2435 call!38757 (tuple2!11585 k0!854 v!557))))))

(declare-fun b!876383 () Bool)

(declare-fun res!595625 () Bool)

(assert (=> b!876383 (=> (not res!595625) (not e!487884))))

(declare-datatypes ((List!17467 0))(
  ( (Nil!17464) (Cons!17463 (h!18594 (_ BitVec 64)) (t!24550 List!17467)) )
))
(declare-fun arrayNoDuplicates!0 (array!50938 (_ BitVec 32) List!17467) Bool)

(assert (=> b!876383 (= res!595625 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17464))))

(declare-fun b!876384 () Bool)

(declare-fun e!487883 () Bool)

(assert (=> b!876384 (= e!487883 tp_is_empty!17415)))

(declare-fun b!876385 () Bool)

(declare-fun res!595629 () Bool)

(assert (=> b!876385 (=> (not res!595629) (not e!487884))))

(assert (=> b!876385 (= res!595629 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24933 _keys!868))))))

(declare-fun b!876386 () Bool)

(declare-fun res!595624 () Bool)

(assert (=> b!876386 (=> (not res!595624) (not e!487884))))

(assert (=> b!876386 (= res!595624 (validKeyInArray!0 k0!854))))

(declare-fun bm!38754 () Bool)

(declare-fun lt!396479 () array!50940)

(assert (=> bm!38754 (= call!38756 (getCurrentListMapNoExtraKeys!3161 _keys!868 lt!396479 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876387 () Bool)

(assert (=> b!876387 (= e!487884 e!487888)))

(declare-fun res!595626 () Bool)

(assert (=> b!876387 (=> (not res!595626) (not e!487888))))

(assert (=> b!876387 (= res!595626 (= from!1053 i!612))))

(declare-fun lt!396482 () ListLongMap!10367)

(assert (=> b!876387 (= lt!396482 (getCurrentListMapNoExtraKeys!3161 _keys!868 lt!396479 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!876387 (= lt!396479 (array!50941 (store (arr!24493 _values!688) i!612 (ValueCellFull!8268 v!557)) (size!24934 _values!688)))))

(declare-fun lt!396487 () ListLongMap!10367)

(assert (=> b!876387 (= lt!396487 (getCurrentListMapNoExtraKeys!3161 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!876388 () Bool)

(assert (=> b!876388 (= e!487886 (bvslt i!612 (size!24934 _values!688)))))

(declare-fun lt!396486 () tuple2!11584)

(declare-fun lt!396480 () V!28267)

(declare-fun lt!396484 () ListLongMap!10367)

(assert (=> b!876388 (= (+!2435 lt!396484 lt!396486) (+!2435 (+!2435 lt!396484 (tuple2!11585 k0!854 lt!396480)) lt!396486))))

(declare-fun lt!396481 () V!28267)

(assert (=> b!876388 (= lt!396486 (tuple2!11585 k0!854 lt!396481))))

(declare-fun lt!396485 () Unit!29928)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!327 (ListLongMap!10367 (_ BitVec 64) V!28267 V!28267) Unit!29928)

(assert (=> b!876388 (= lt!396485 (addSameAsAddTwiceSameKeyDiffValues!327 lt!396484 k0!854 lt!396480 lt!396481))))

(declare-fun lt!396483 () V!28267)

(declare-fun get!12895 (ValueCell!8268 V!28267) V!28267)

(assert (=> b!876388 (= lt!396480 (get!12895 (select (arr!24493 _values!688) from!1053) lt!396483))))

(assert (=> b!876388 (= lt!396482 (+!2435 lt!396484 (tuple2!11585 (select (arr!24492 _keys!868) from!1053) lt!396481)))))

(assert (=> b!876388 (= lt!396481 (get!12895 (select (store (arr!24493 _values!688) i!612 (ValueCellFull!8268 v!557)) from!1053) lt!396483))))

(declare-fun dynLambda!1217 (Int (_ BitVec 64)) V!28267)

(assert (=> b!876388 (= lt!396483 (dynLambda!1217 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!876388 (= lt!396484 (getCurrentListMapNoExtraKeys!3161 _keys!868 lt!396479 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876389 () Bool)

(assert (=> b!876389 (= e!487887 (= call!38756 call!38757))))

(declare-fun b!876390 () Bool)

(assert (=> b!876390 (= e!487885 (and e!487883 mapRes!27734))))

(declare-fun condMapEmpty!27734 () Bool)

(declare-fun mapDefault!27734 () ValueCell!8268)

(assert (=> b!876390 (= condMapEmpty!27734 (= (arr!24493 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8268)) mapDefault!27734)))))

(declare-fun b!876391 () Bool)

(assert (=> b!876391 (= e!487889 tp_is_empty!17415)))

(declare-fun b!876392 () Bool)

(declare-fun res!595623 () Bool)

(assert (=> b!876392 (=> (not res!595623) (not e!487884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876392 (= res!595623 (validMask!0 mask!1196))))

(declare-fun b!876393 () Bool)

(declare-fun res!595630 () Bool)

(assert (=> b!876393 (=> (not res!595630) (not e!487884))))

(assert (=> b!876393 (= res!595630 (and (= (size!24934 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24933 _keys!868) (size!24934 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!74456 res!595627) b!876392))

(assert (= (and b!876392 res!595623) b!876393))

(assert (= (and b!876393 res!595630) b!876380))

(assert (= (and b!876380 res!595631) b!876383))

(assert (= (and b!876383 res!595625) b!876385))

(assert (= (and b!876385 res!595629) b!876386))

(assert (= (and b!876386 res!595624) b!876381))

(assert (= (and b!876381 res!595628) b!876387))

(assert (= (and b!876387 res!595626) b!876379))

(assert (= (and b!876379 c!92524) b!876382))

(assert (= (and b!876379 (not c!92524)) b!876389))

(assert (= (or b!876382 b!876389) bm!38754))

(assert (= (or b!876382 b!876389) bm!38753))

(assert (= (and b!876379 (not res!595632)) b!876388))

(assert (= (and b!876390 condMapEmpty!27734) mapIsEmpty!27734))

(assert (= (and b!876390 (not condMapEmpty!27734)) mapNonEmpty!27734))

(get-info :version)

(assert (= (and mapNonEmpty!27734 ((_ is ValueCellFull!8268) mapValue!27734)) b!876391))

(assert (= (and b!876390 ((_ is ValueCellFull!8268) mapDefault!27734)) b!876384))

(assert (= start!74456 b!876390))

(declare-fun b_lambda!12269 () Bool)

(assert (=> (not b_lambda!12269) (not b!876388)))

(declare-fun t!24548 () Bool)

(declare-fun tb!4939 () Bool)

(assert (=> (and start!74456 (= defaultEntry!696 defaultEntry!696) t!24548) tb!4939))

(declare-fun result!9489 () Bool)

(assert (=> tb!4939 (= result!9489 tp_is_empty!17415)))

(assert (=> b!876388 t!24548))

(declare-fun b_and!25015 () Bool)

(assert (= b_and!25013 (and (=> t!24548 result!9489) b_and!25015)))

(declare-fun m!816247 () Bool)

(assert (=> start!74456 m!816247))

(declare-fun m!816249 () Bool)

(assert (=> start!74456 m!816249))

(declare-fun m!816251 () Bool)

(assert (=> b!876392 m!816251))

(declare-fun m!816253 () Bool)

(assert (=> b!876380 m!816253))

(declare-fun m!816255 () Bool)

(assert (=> b!876386 m!816255))

(declare-fun m!816257 () Bool)

(assert (=> b!876383 m!816257))

(declare-fun m!816259 () Bool)

(assert (=> bm!38754 m!816259))

(declare-fun m!816261 () Bool)

(assert (=> b!876388 m!816261))

(declare-fun m!816263 () Bool)

(assert (=> b!876388 m!816263))

(declare-fun m!816265 () Bool)

(assert (=> b!876388 m!816265))

(declare-fun m!816267 () Bool)

(assert (=> b!876388 m!816267))

(declare-fun m!816269 () Bool)

(assert (=> b!876388 m!816269))

(assert (=> b!876388 m!816261))

(declare-fun m!816271 () Bool)

(assert (=> b!876388 m!816271))

(assert (=> b!876388 m!816259))

(declare-fun m!816273 () Bool)

(assert (=> b!876388 m!816273))

(declare-fun m!816275 () Bool)

(assert (=> b!876388 m!816275))

(declare-fun m!816277 () Bool)

(assert (=> b!876388 m!816277))

(declare-fun m!816279 () Bool)

(assert (=> b!876388 m!816279))

(assert (=> b!876388 m!816265))

(declare-fun m!816281 () Bool)

(assert (=> b!876388 m!816281))

(declare-fun m!816283 () Bool)

(assert (=> b!876388 m!816283))

(assert (=> b!876388 m!816267))

(declare-fun m!816285 () Bool)

(assert (=> b!876387 m!816285))

(assert (=> b!876387 m!816275))

(declare-fun m!816287 () Bool)

(assert (=> b!876387 m!816287))

(declare-fun m!816289 () Bool)

(assert (=> b!876382 m!816289))

(declare-fun m!816291 () Bool)

(assert (=> b!876381 m!816291))

(declare-fun m!816293 () Bool)

(assert (=> mapNonEmpty!27734 m!816293))

(assert (=> b!876379 m!816277))

(assert (=> b!876379 m!816277))

(declare-fun m!816295 () Bool)

(assert (=> b!876379 m!816295))

(declare-fun m!816297 () Bool)

(assert (=> b!876379 m!816297))

(declare-fun m!816299 () Bool)

(assert (=> bm!38753 m!816299))

(check-sat (not b!876386) (not b_lambda!12269) tp_is_empty!17415 (not b!876382) (not mapNonEmpty!27734) b_and!25015 (not b!876392) (not b!876379) (not b_next!15171) (not b!876383) (not start!74456) (not b!876388) (not b!876380) (not b!876387) (not bm!38754) (not bm!38753))
(check-sat b_and!25015 (not b_next!15171))
