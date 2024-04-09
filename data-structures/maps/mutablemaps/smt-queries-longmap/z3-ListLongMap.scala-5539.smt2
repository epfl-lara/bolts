; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73048 () Bool)

(assert start!73048)

(declare-fun b_free!13935 () Bool)

(declare-fun b_next!13935 () Bool)

(assert (=> start!73048 (= b_free!13935 (not b_next!13935))))

(declare-fun tp!49309 () Bool)

(declare-fun b_and!23047 () Bool)

(assert (=> start!73048 (= tp!49309 b_and!23047)))

(declare-fun b!848477 () Bool)

(declare-fun e!473436 () Bool)

(declare-datatypes ((V!26475 0))(
  ( (V!26476 (val!8083 Int)) )
))
(declare-datatypes ((tuple2!10584 0))(
  ( (tuple2!10585 (_1!5302 (_ BitVec 64)) (_2!5302 V!26475)) )
))
(declare-datatypes ((List!16490 0))(
  ( (Nil!16487) (Cons!16486 (h!17617 tuple2!10584) (t!22879 List!16490)) )
))
(declare-datatypes ((ListLongMap!9367 0))(
  ( (ListLongMap!9368 (toList!4699 List!16490)) )
))
(declare-fun call!37660 () ListLongMap!9367)

(declare-fun call!37661 () ListLongMap!9367)

(assert (=> b!848477 (= e!473436 (= call!37660 call!37661))))

(declare-fun b!848478 () Bool)

(declare-fun res!576569 () Bool)

(declare-fun e!473429 () Bool)

(assert (=> b!848478 (=> (not res!576569) (not e!473429))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48334 0))(
  ( (array!48335 (arr!23194 (Array (_ BitVec 32) (_ BitVec 64))) (size!23635 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48334)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!848478 (= res!576569 (and (= (select (arr!23194 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!848479 () Bool)

(declare-fun e!473434 () Bool)

(assert (=> b!848479 (= e!473434 true)))

(declare-fun lt!382014 () ListLongMap!9367)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26475)

(declare-datatypes ((ValueCell!7596 0))(
  ( (ValueCellFull!7596 (v!10504 V!26475)) (EmptyCell!7596) )
))
(declare-datatypes ((array!48336 0))(
  ( (array!48337 (arr!23195 (Array (_ BitVec 32) ValueCell!7596)) (size!23636 (_ BitVec 32))) )
))
(declare-fun lt!382012 () array!48336)

(declare-fun zeroValue!654 () V!26475)

(declare-fun +!2047 (ListLongMap!9367 tuple2!10584) ListLongMap!9367)

(declare-fun getCurrentListMapNoExtraKeys!2688 (array!48334 array!48336 (_ BitVec 32) (_ BitVec 32) V!26475 V!26475 (_ BitVec 32) Int) ListLongMap!9367)

(declare-fun get!12213 (ValueCell!7596 V!26475) V!26475)

(declare-fun dynLambda!985 (Int (_ BitVec 64)) V!26475)

(assert (=> b!848479 (= lt!382014 (+!2047 (getCurrentListMapNoExtraKeys!2688 _keys!868 lt!382012 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10585 (select (arr!23194 _keys!868) from!1053) (get!12213 (select (arr!23195 lt!382012) from!1053) (dynLambda!985 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!848480 () Bool)

(declare-fun e!473430 () Bool)

(declare-fun tp_is_empty!16071 () Bool)

(assert (=> b!848480 (= e!473430 tp_is_empty!16071)))

(declare-fun b!848481 () Bool)

(declare-fun res!576562 () Bool)

(assert (=> b!848481 (=> (not res!576562) (not e!473429))))

(declare-fun _values!688 () array!48336)

(assert (=> b!848481 (= res!576562 (and (= (size!23636 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23635 _keys!868) (size!23636 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25706 () Bool)

(declare-fun mapRes!25706 () Bool)

(assert (=> mapIsEmpty!25706 mapRes!25706))

(declare-fun b!848482 () Bool)

(declare-fun res!576570 () Bool)

(assert (=> b!848482 (=> (not res!576570) (not e!473429))))

(assert (=> b!848482 (= res!576570 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23635 _keys!868))))))

(declare-fun b!848483 () Bool)

(declare-fun res!576566 () Bool)

(assert (=> b!848483 (=> (not res!576566) (not e!473429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848483 (= res!576566 (validKeyInArray!0 k0!854))))

(declare-fun b!848484 () Bool)

(declare-fun e!473433 () Bool)

(assert (=> b!848484 (= e!473429 e!473433)))

(declare-fun res!576565 () Bool)

(assert (=> b!848484 (=> (not res!576565) (not e!473433))))

(assert (=> b!848484 (= res!576565 (= from!1053 i!612))))

(assert (=> b!848484 (= lt!382014 (getCurrentListMapNoExtraKeys!2688 _keys!868 lt!382012 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26475)

(assert (=> b!848484 (= lt!382012 (array!48337 (store (arr!23195 _values!688) i!612 (ValueCellFull!7596 v!557)) (size!23636 _values!688)))))

(declare-fun lt!382013 () ListLongMap!9367)

(assert (=> b!848484 (= lt!382013 (getCurrentListMapNoExtraKeys!2688 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848485 () Bool)

(assert (=> b!848485 (= e!473436 (= call!37660 (+!2047 call!37661 (tuple2!10585 k0!854 v!557))))))

(declare-fun b!848486 () Bool)

(declare-fun res!576561 () Bool)

(assert (=> b!848486 (=> (not res!576561) (not e!473429))))

(declare-datatypes ((List!16491 0))(
  ( (Nil!16488) (Cons!16487 (h!17618 (_ BitVec 64)) (t!22880 List!16491)) )
))
(declare-fun arrayNoDuplicates!0 (array!48334 (_ BitVec 32) List!16491) Bool)

(assert (=> b!848486 (= res!576561 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16488))))

(declare-fun b!848487 () Bool)

(declare-fun res!576567 () Bool)

(assert (=> b!848487 (=> (not res!576567) (not e!473429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848487 (= res!576567 (validMask!0 mask!1196))))

(declare-fun b!848488 () Bool)

(assert (=> b!848488 (= e!473433 (not e!473434))))

(declare-fun res!576568 () Bool)

(assert (=> b!848488 (=> res!576568 e!473434)))

(assert (=> b!848488 (= res!576568 (not (validKeyInArray!0 (select (arr!23194 _keys!868) from!1053))))))

(assert (=> b!848488 e!473436))

(declare-fun c!91491 () Bool)

(assert (=> b!848488 (= c!91491 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28956 0))(
  ( (Unit!28957) )
))
(declare-fun lt!382011 () Unit!28956)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!327 (array!48334 array!48336 (_ BitVec 32) (_ BitVec 32) V!26475 V!26475 (_ BitVec 32) (_ BitVec 64) V!26475 (_ BitVec 32) Int) Unit!28956)

(assert (=> b!848488 (= lt!382011 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!327 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848489 () Bool)

(declare-fun res!576563 () Bool)

(assert (=> b!848489 (=> (not res!576563) (not e!473429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48334 (_ BitVec 32)) Bool)

(assert (=> b!848489 (= res!576563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25706 () Bool)

(declare-fun tp!49310 () Bool)

(declare-fun e!473435 () Bool)

(assert (=> mapNonEmpty!25706 (= mapRes!25706 (and tp!49310 e!473435))))

(declare-fun mapValue!25706 () ValueCell!7596)

(declare-fun mapKey!25706 () (_ BitVec 32))

(declare-fun mapRest!25706 () (Array (_ BitVec 32) ValueCell!7596))

(assert (=> mapNonEmpty!25706 (= (arr!23195 _values!688) (store mapRest!25706 mapKey!25706 mapValue!25706))))

(declare-fun b!848490 () Bool)

(assert (=> b!848490 (= e!473435 tp_is_empty!16071)))

(declare-fun bm!37658 () Bool)

(assert (=> bm!37658 (= call!37660 (getCurrentListMapNoExtraKeys!2688 _keys!868 lt!382012 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848491 () Bool)

(declare-fun e!473432 () Bool)

(assert (=> b!848491 (= e!473432 (and e!473430 mapRes!25706))))

(declare-fun condMapEmpty!25706 () Bool)

(declare-fun mapDefault!25706 () ValueCell!7596)

(assert (=> b!848491 (= condMapEmpty!25706 (= (arr!23195 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7596)) mapDefault!25706)))))

(declare-fun res!576564 () Bool)

(assert (=> start!73048 (=> (not res!576564) (not e!473429))))

(assert (=> start!73048 (= res!576564 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23635 _keys!868))))))

(assert (=> start!73048 e!473429))

(assert (=> start!73048 tp_is_empty!16071))

(assert (=> start!73048 true))

(assert (=> start!73048 tp!49309))

(declare-fun array_inv!18396 (array!48334) Bool)

(assert (=> start!73048 (array_inv!18396 _keys!868)))

(declare-fun array_inv!18397 (array!48336) Bool)

(assert (=> start!73048 (and (array_inv!18397 _values!688) e!473432)))

(declare-fun bm!37657 () Bool)

(assert (=> bm!37657 (= call!37661 (getCurrentListMapNoExtraKeys!2688 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73048 res!576564) b!848487))

(assert (= (and b!848487 res!576567) b!848481))

(assert (= (and b!848481 res!576562) b!848489))

(assert (= (and b!848489 res!576563) b!848486))

(assert (= (and b!848486 res!576561) b!848482))

(assert (= (and b!848482 res!576570) b!848483))

(assert (= (and b!848483 res!576566) b!848478))

(assert (= (and b!848478 res!576569) b!848484))

(assert (= (and b!848484 res!576565) b!848488))

(assert (= (and b!848488 c!91491) b!848485))

(assert (= (and b!848488 (not c!91491)) b!848477))

(assert (= (or b!848485 b!848477) bm!37658))

(assert (= (or b!848485 b!848477) bm!37657))

(assert (= (and b!848488 (not res!576568)) b!848479))

(assert (= (and b!848491 condMapEmpty!25706) mapIsEmpty!25706))

(assert (= (and b!848491 (not condMapEmpty!25706)) mapNonEmpty!25706))

(get-info :version)

(assert (= (and mapNonEmpty!25706 ((_ is ValueCellFull!7596) mapValue!25706)) b!848490))

(assert (= (and b!848491 ((_ is ValueCellFull!7596) mapDefault!25706)) b!848480))

(assert (= start!73048 b!848491))

(declare-fun b_lambda!11497 () Bool)

(assert (=> (not b_lambda!11497) (not b!848479)))

(declare-fun t!22878 () Bool)

(declare-fun tb!4245 () Bool)

(assert (=> (and start!73048 (= defaultEntry!696 defaultEntry!696) t!22878) tb!4245))

(declare-fun result!8093 () Bool)

(assert (=> tb!4245 (= result!8093 tp_is_empty!16071)))

(assert (=> b!848479 t!22878))

(declare-fun b_and!23049 () Bool)

(assert (= b_and!23047 (and (=> t!22878 result!8093) b_and!23049)))

(declare-fun m!789353 () Bool)

(assert (=> b!848489 m!789353))

(declare-fun m!789355 () Bool)

(assert (=> b!848484 m!789355))

(declare-fun m!789357 () Bool)

(assert (=> b!848484 m!789357))

(declare-fun m!789359 () Bool)

(assert (=> b!848484 m!789359))

(declare-fun m!789361 () Bool)

(assert (=> start!73048 m!789361))

(declare-fun m!789363 () Bool)

(assert (=> start!73048 m!789363))

(declare-fun m!789365 () Bool)

(assert (=> b!848479 m!789365))

(declare-fun m!789367 () Bool)

(assert (=> b!848479 m!789367))

(declare-fun m!789369 () Bool)

(assert (=> b!848479 m!789369))

(assert (=> b!848479 m!789369))

(declare-fun m!789371 () Bool)

(assert (=> b!848479 m!789371))

(declare-fun m!789373 () Bool)

(assert (=> b!848479 m!789373))

(assert (=> b!848479 m!789365))

(declare-fun m!789375 () Bool)

(assert (=> b!848479 m!789375))

(assert (=> b!848479 m!789371))

(assert (=> b!848488 m!789375))

(assert (=> b!848488 m!789375))

(declare-fun m!789377 () Bool)

(assert (=> b!848488 m!789377))

(declare-fun m!789379 () Bool)

(assert (=> b!848488 m!789379))

(declare-fun m!789381 () Bool)

(assert (=> b!848486 m!789381))

(declare-fun m!789383 () Bool)

(assert (=> mapNonEmpty!25706 m!789383))

(declare-fun m!789385 () Bool)

(assert (=> bm!37657 m!789385))

(declare-fun m!789387 () Bool)

(assert (=> b!848485 m!789387))

(declare-fun m!789389 () Bool)

(assert (=> b!848483 m!789389))

(declare-fun m!789391 () Bool)

(assert (=> b!848478 m!789391))

(assert (=> bm!37658 m!789365))

(declare-fun m!789393 () Bool)

(assert (=> b!848487 m!789393))

(check-sat (not bm!37657) b_and!23049 (not b!848485) (not bm!37658) (not b!848487) (not mapNonEmpty!25706) (not b!848479) tp_is_empty!16071 (not b!848483) (not b!848489) (not start!73048) (not b_next!13935) (not b!848486) (not b_lambda!11497) (not b!848488) (not b!848484))
(check-sat b_and!23049 (not b_next!13935))
