; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73042 () Bool)

(assert start!73042)

(declare-fun b_free!13929 () Bool)

(declare-fun b_next!13929 () Bool)

(assert (=> start!73042 (= b_free!13929 (not b_next!13929))))

(declare-fun tp!49292 () Bool)

(declare-fun b_and!23035 () Bool)

(assert (=> start!73042 (= tp!49292 b_and!23035)))

(declare-fun b!848336 () Bool)

(declare-fun res!576473 () Bool)

(declare-fun e!473358 () Bool)

(assert (=> b!848336 (=> (not res!576473) (not e!473358))))

(declare-datatypes ((array!48322 0))(
  ( (array!48323 (arr!23188 (Array (_ BitVec 32) (_ BitVec 64))) (size!23629 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48322)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48322 (_ BitVec 32)) Bool)

(assert (=> b!848336 (= res!576473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!576475 () Bool)

(assert (=> start!73042 (=> (not res!576475) (not e!473358))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73042 (= res!576475 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23629 _keys!868))))))

(assert (=> start!73042 e!473358))

(declare-fun tp_is_empty!16065 () Bool)

(assert (=> start!73042 tp_is_empty!16065))

(assert (=> start!73042 true))

(assert (=> start!73042 tp!49292))

(declare-fun array_inv!18390 (array!48322) Bool)

(assert (=> start!73042 (array_inv!18390 _keys!868)))

(declare-datatypes ((V!26467 0))(
  ( (V!26468 (val!8080 Int)) )
))
(declare-datatypes ((ValueCell!7593 0))(
  ( (ValueCellFull!7593 (v!10501 V!26467)) (EmptyCell!7593) )
))
(declare-datatypes ((array!48324 0))(
  ( (array!48325 (arr!23189 (Array (_ BitVec 32) ValueCell!7593)) (size!23630 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48324)

(declare-fun e!473359 () Bool)

(declare-fun array_inv!18391 (array!48324) Bool)

(assert (=> start!73042 (and (array_inv!18391 _values!688) e!473359)))

(declare-fun b!848337 () Bool)

(declare-fun res!576476 () Bool)

(assert (=> b!848337 (=> (not res!576476) (not e!473358))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848337 (= res!576476 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!25697 () Bool)

(declare-fun mapRes!25697 () Bool)

(declare-fun tp!49291 () Bool)

(declare-fun e!473361 () Bool)

(assert (=> mapNonEmpty!25697 (= mapRes!25697 (and tp!49291 e!473361))))

(declare-fun mapKey!25697 () (_ BitVec 32))

(declare-fun mapValue!25697 () ValueCell!7593)

(declare-fun mapRest!25697 () (Array (_ BitVec 32) ValueCell!7593))

(assert (=> mapNonEmpty!25697 (= (arr!23189 _values!688) (store mapRest!25697 mapKey!25697 mapValue!25697))))

(declare-fun b!848338 () Bool)

(declare-fun e!473364 () Bool)

(assert (=> b!848338 (= e!473359 (and e!473364 mapRes!25697))))

(declare-fun condMapEmpty!25697 () Bool)

(declare-fun mapDefault!25697 () ValueCell!7593)

(assert (=> b!848338 (= condMapEmpty!25697 (= (arr!23189 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7593)) mapDefault!25697)))))

(declare-fun b!848339 () Bool)

(assert (=> b!848339 (= e!473364 tp_is_empty!16065)))

(declare-fun b!848340 () Bool)

(declare-fun res!576480 () Bool)

(assert (=> b!848340 (=> (not res!576480) (not e!473358))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848340 (= res!576480 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23629 _keys!868))))))

(declare-fun b!848341 () Bool)

(declare-fun e!473360 () Bool)

(assert (=> b!848341 (= e!473360 true)))

(declare-datatypes ((tuple2!10578 0))(
  ( (tuple2!10579 (_1!5299 (_ BitVec 64)) (_2!5299 V!26467)) )
))
(declare-datatypes ((List!16486 0))(
  ( (Nil!16483) (Cons!16482 (h!17613 tuple2!10578) (t!22869 List!16486)) )
))
(declare-datatypes ((ListLongMap!9361 0))(
  ( (ListLongMap!9362 (toList!4696 List!16486)) )
))
(declare-fun lt!381976 () ListLongMap!9361)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26467)

(declare-fun lt!381977 () array!48324)

(declare-fun zeroValue!654 () V!26467)

(declare-fun +!2046 (ListLongMap!9361 tuple2!10578) ListLongMap!9361)

(declare-fun getCurrentListMapNoExtraKeys!2685 (array!48322 array!48324 (_ BitVec 32) (_ BitVec 32) V!26467 V!26467 (_ BitVec 32) Int) ListLongMap!9361)

(declare-fun get!12210 (ValueCell!7593 V!26467) V!26467)

(declare-fun dynLambda!984 (Int (_ BitVec 64)) V!26467)

(assert (=> b!848341 (= lt!381976 (+!2046 (getCurrentListMapNoExtraKeys!2685 _keys!868 lt!381977 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10579 (select (arr!23188 _keys!868) from!1053) (get!12210 (select (arr!23189 lt!381977) from!1053) (dynLambda!984 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun v!557 () V!26467)

(declare-fun b!848342 () Bool)

(declare-fun call!37642 () ListLongMap!9361)

(declare-fun call!37643 () ListLongMap!9361)

(declare-fun e!473362 () Bool)

(assert (=> b!848342 (= e!473362 (= call!37642 (+!2046 call!37643 (tuple2!10579 k0!854 v!557))))))

(declare-fun b!848343 () Bool)

(assert (=> b!848343 (= e!473362 (= call!37642 call!37643))))

(declare-fun bm!37639 () Bool)

(assert (=> bm!37639 (= call!37642 (getCurrentListMapNoExtraKeys!2685 _keys!868 lt!381977 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848344 () Bool)

(declare-fun res!576477 () Bool)

(assert (=> b!848344 (=> (not res!576477) (not e!473358))))

(assert (=> b!848344 (= res!576477 (and (= (select (arr!23188 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!848345 () Bool)

(declare-fun res!576472 () Bool)

(assert (=> b!848345 (=> (not res!576472) (not e!473358))))

(assert (=> b!848345 (= res!576472 (and (= (size!23630 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23629 _keys!868) (size!23630 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!848346 () Bool)

(assert (=> b!848346 (= e!473361 tp_is_empty!16065)))

(declare-fun b!848347 () Bool)

(declare-fun res!576478 () Bool)

(assert (=> b!848347 (=> (not res!576478) (not e!473358))))

(declare-datatypes ((List!16487 0))(
  ( (Nil!16484) (Cons!16483 (h!17614 (_ BitVec 64)) (t!22870 List!16487)) )
))
(declare-fun arrayNoDuplicates!0 (array!48322 (_ BitVec 32) List!16487) Bool)

(assert (=> b!848347 (= res!576478 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16484))))

(declare-fun mapIsEmpty!25697 () Bool)

(assert (=> mapIsEmpty!25697 mapRes!25697))

(declare-fun b!848348 () Bool)

(declare-fun e!473357 () Bool)

(assert (=> b!848348 (= e!473358 e!473357)))

(declare-fun res!576471 () Bool)

(assert (=> b!848348 (=> (not res!576471) (not e!473357))))

(assert (=> b!848348 (= res!576471 (= from!1053 i!612))))

(assert (=> b!848348 (= lt!381976 (getCurrentListMapNoExtraKeys!2685 _keys!868 lt!381977 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848348 (= lt!381977 (array!48325 (store (arr!23189 _values!688) i!612 (ValueCellFull!7593 v!557)) (size!23630 _values!688)))))

(declare-fun lt!381975 () ListLongMap!9361)

(assert (=> b!848348 (= lt!381975 (getCurrentListMapNoExtraKeys!2685 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848349 () Bool)

(assert (=> b!848349 (= e!473357 (not e!473360))))

(declare-fun res!576479 () Bool)

(assert (=> b!848349 (=> res!576479 e!473360)))

(assert (=> b!848349 (= res!576479 (not (validKeyInArray!0 (select (arr!23188 _keys!868) from!1053))))))

(assert (=> b!848349 e!473362))

(declare-fun c!91482 () Bool)

(assert (=> b!848349 (= c!91482 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28954 0))(
  ( (Unit!28955) )
))
(declare-fun lt!381978 () Unit!28954)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!326 (array!48322 array!48324 (_ BitVec 32) (_ BitVec 32) V!26467 V!26467 (_ BitVec 32) (_ BitVec 64) V!26467 (_ BitVec 32) Int) Unit!28954)

(assert (=> b!848349 (= lt!381978 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!326 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848350 () Bool)

(declare-fun res!576474 () Bool)

(assert (=> b!848350 (=> (not res!576474) (not e!473358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848350 (= res!576474 (validMask!0 mask!1196))))

(declare-fun bm!37640 () Bool)

(assert (=> bm!37640 (= call!37643 (getCurrentListMapNoExtraKeys!2685 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73042 res!576475) b!848350))

(assert (= (and b!848350 res!576474) b!848345))

(assert (= (and b!848345 res!576472) b!848336))

(assert (= (and b!848336 res!576473) b!848347))

(assert (= (and b!848347 res!576478) b!848340))

(assert (= (and b!848340 res!576480) b!848337))

(assert (= (and b!848337 res!576476) b!848344))

(assert (= (and b!848344 res!576477) b!848348))

(assert (= (and b!848348 res!576471) b!848349))

(assert (= (and b!848349 c!91482) b!848342))

(assert (= (and b!848349 (not c!91482)) b!848343))

(assert (= (or b!848342 b!848343) bm!37640))

(assert (= (or b!848342 b!848343) bm!37639))

(assert (= (and b!848349 (not res!576479)) b!848341))

(assert (= (and b!848338 condMapEmpty!25697) mapIsEmpty!25697))

(assert (= (and b!848338 (not condMapEmpty!25697)) mapNonEmpty!25697))

(get-info :version)

(assert (= (and mapNonEmpty!25697 ((_ is ValueCellFull!7593) mapValue!25697)) b!848346))

(assert (= (and b!848338 ((_ is ValueCellFull!7593) mapDefault!25697)) b!848339))

(assert (= start!73042 b!848338))

(declare-fun b_lambda!11491 () Bool)

(assert (=> (not b_lambda!11491) (not b!848341)))

(declare-fun t!22868 () Bool)

(declare-fun tb!4239 () Bool)

(assert (=> (and start!73042 (= defaultEntry!696 defaultEntry!696) t!22868) tb!4239))

(declare-fun result!8081 () Bool)

(assert (=> tb!4239 (= result!8081 tp_is_empty!16065)))

(assert (=> b!848341 t!22868))

(declare-fun b_and!23037 () Bool)

(assert (= b_and!23035 (and (=> t!22868 result!8081) b_and!23037)))

(declare-fun m!789227 () Bool)

(assert (=> b!848336 m!789227))

(declare-fun m!789229 () Bool)

(assert (=> b!848349 m!789229))

(assert (=> b!848349 m!789229))

(declare-fun m!789231 () Bool)

(assert (=> b!848349 m!789231))

(declare-fun m!789233 () Bool)

(assert (=> b!848349 m!789233))

(declare-fun m!789235 () Bool)

(assert (=> b!848350 m!789235))

(declare-fun m!789237 () Bool)

(assert (=> mapNonEmpty!25697 m!789237))

(declare-fun m!789239 () Bool)

(assert (=> b!848348 m!789239))

(declare-fun m!789241 () Bool)

(assert (=> b!848348 m!789241))

(declare-fun m!789243 () Bool)

(assert (=> b!848348 m!789243))

(declare-fun m!789245 () Bool)

(assert (=> b!848342 m!789245))

(declare-fun m!789247 () Bool)

(assert (=> start!73042 m!789247))

(declare-fun m!789249 () Bool)

(assert (=> start!73042 m!789249))

(declare-fun m!789251 () Bool)

(assert (=> b!848344 m!789251))

(declare-fun m!789253 () Bool)

(assert (=> b!848337 m!789253))

(declare-fun m!789255 () Bool)

(assert (=> b!848341 m!789255))

(declare-fun m!789257 () Bool)

(assert (=> b!848341 m!789257))

(assert (=> b!848341 m!789255))

(declare-fun m!789259 () Bool)

(assert (=> b!848341 m!789259))

(assert (=> b!848341 m!789257))

(declare-fun m!789261 () Bool)

(assert (=> b!848341 m!789261))

(declare-fun m!789263 () Bool)

(assert (=> b!848341 m!789263))

(assert (=> b!848341 m!789229))

(assert (=> b!848341 m!789261))

(declare-fun m!789265 () Bool)

(assert (=> b!848347 m!789265))

(declare-fun m!789267 () Bool)

(assert (=> bm!37640 m!789267))

(assert (=> bm!37639 m!789255))

(check-sat (not b!848342) (not b_next!13929) (not b!848349) (not b!848337) tp_is_empty!16065 (not start!73042) (not b!848341) (not b!848350) (not b_lambda!11491) b_and!23037 (not b!848347) (not b!848348) (not b!848336) (not bm!37639) (not bm!37640) (not mapNonEmpty!25697))
(check-sat b_and!23037 (not b_next!13929))
