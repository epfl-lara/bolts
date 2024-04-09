; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74272 () Bool)

(assert start!74272)

(declare-fun b_free!15021 () Bool)

(declare-fun b_next!15021 () Bool)

(assert (=> start!74272 (= b_free!15021 (not b_next!15021))))

(declare-fun tp!52735 () Bool)

(declare-fun b_and!24807 () Bool)

(assert (=> start!74272 (= tp!52735 b_and!24807)))

(declare-fun res!593562 () Bool)

(declare-fun e!486346 () Bool)

(assert (=> start!74272 (=> (not res!593562) (not e!486346))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50644 0))(
  ( (array!50645 (arr!24347 (Array (_ BitVec 32) (_ BitVec 64))) (size!24788 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50644)

(assert (=> start!74272 (= res!593562 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24788 _keys!868))))))

(assert (=> start!74272 e!486346))

(declare-fun tp_is_empty!17265 () Bool)

(assert (=> start!74272 tp_is_empty!17265))

(assert (=> start!74272 true))

(assert (=> start!74272 tp!52735))

(declare-fun array_inv!19188 (array!50644) Bool)

(assert (=> start!74272 (array_inv!19188 _keys!868)))

(declare-datatypes ((V!28067 0))(
  ( (V!28068 (val!8680 Int)) )
))
(declare-datatypes ((ValueCell!8193 0))(
  ( (ValueCellFull!8193 (v!11105 V!28067)) (EmptyCell!8193) )
))
(declare-datatypes ((array!50646 0))(
  ( (array!50647 (arr!24348 (Array (_ BitVec 32) ValueCell!8193)) (size!24789 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50646)

(declare-fun e!486345 () Bool)

(declare-fun array_inv!19189 (array!50646) Bool)

(assert (=> start!74272 (and (array_inv!19189 _values!688) e!486345)))

(declare-fun mapIsEmpty!27503 () Bool)

(declare-fun mapRes!27503 () Bool)

(assert (=> mapIsEmpty!27503 mapRes!27503))

(declare-fun b!873286 () Bool)

(declare-fun res!593564 () Bool)

(assert (=> b!873286 (=> (not res!593564) (not e!486346))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!873286 (= res!593564 (and (= (select (arr!24347 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24788 _keys!868))))))

(declare-fun b!873287 () Bool)

(declare-fun res!593568 () Bool)

(assert (=> b!873287 (=> (not res!593568) (not e!486346))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50644 (_ BitVec 32)) Bool)

(assert (=> b!873287 (= res!593568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873288 () Bool)

(declare-fun e!486348 () Bool)

(assert (=> b!873288 (= e!486345 (and e!486348 mapRes!27503))))

(declare-fun condMapEmpty!27503 () Bool)

(declare-fun mapDefault!27503 () ValueCell!8193)

(assert (=> b!873288 (= condMapEmpty!27503 (= (arr!24348 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8193)) mapDefault!27503)))))

(declare-fun b!873289 () Bool)

(declare-fun e!486347 () Bool)

(assert (=> b!873289 (= e!486347 tp_is_empty!17265)))

(declare-fun b!873290 () Bool)

(declare-fun res!593563 () Bool)

(assert (=> b!873290 (=> (not res!593563) (not e!486346))))

(declare-datatypes ((List!17349 0))(
  ( (Nil!17346) (Cons!17345 (h!18476 (_ BitVec 64)) (t!24396 List!17349)) )
))
(declare-fun arrayNoDuplicates!0 (array!50644 (_ BitVec 32) List!17349) Bool)

(assert (=> b!873290 (= res!593563 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17346))))

(declare-fun b!873291 () Bool)

(declare-fun res!593565 () Bool)

(assert (=> b!873291 (=> (not res!593565) (not e!486346))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!873291 (= res!593565 (and (= (size!24789 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24788 _keys!868) (size!24789 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27503 () Bool)

(declare-fun tp!52736 () Bool)

(assert (=> mapNonEmpty!27503 (= mapRes!27503 (and tp!52736 e!486347))))

(declare-fun mapValue!27503 () ValueCell!8193)

(declare-fun mapKey!27503 () (_ BitVec 32))

(declare-fun mapRest!27503 () (Array (_ BitVec 32) ValueCell!8193))

(assert (=> mapNonEmpty!27503 (= (arr!24348 _values!688) (store mapRest!27503 mapKey!27503 mapValue!27503))))

(declare-fun v!557 () V!28067)

(declare-fun defaultEntry!696 () Int)

(declare-fun b!873292 () Bool)

(declare-fun minValue!654 () V!28067)

(declare-fun zeroValue!654 () V!28067)

(declare-datatypes ((tuple2!11462 0))(
  ( (tuple2!11463 (_1!5741 (_ BitVec 64)) (_2!5741 V!28067)) )
))
(declare-datatypes ((List!17350 0))(
  ( (Nil!17347) (Cons!17346 (h!18477 tuple2!11462) (t!24397 List!17350)) )
))
(declare-datatypes ((ListLongMap!10245 0))(
  ( (ListLongMap!10246 (toList!5138 List!17350)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3102 (array!50644 array!50646 (_ BitVec 32) (_ BitVec 32) V!28067 V!28067 (_ BitVec 32) Int) ListLongMap!10245)

(assert (=> b!873292 (= e!486346 (not (= (getCurrentListMapNoExtraKeys!3102 _keys!868 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) (getCurrentListMapNoExtraKeys!3102 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))))

(declare-fun b!873293 () Bool)

(declare-fun res!593566 () Bool)

(assert (=> b!873293 (=> (not res!593566) (not e!486346))))

(assert (=> b!873293 (= res!593566 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24788 _keys!868))))))

(declare-fun b!873294 () Bool)

(declare-fun res!593567 () Bool)

(assert (=> b!873294 (=> (not res!593567) (not e!486346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873294 (= res!593567 (validKeyInArray!0 k0!854))))

(declare-fun b!873295 () Bool)

(assert (=> b!873295 (= e!486348 tp_is_empty!17265)))

(declare-fun b!873296 () Bool)

(declare-fun res!593561 () Bool)

(assert (=> b!873296 (=> (not res!593561) (not e!486346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873296 (= res!593561 (validMask!0 mask!1196))))

(assert (= (and start!74272 res!593562) b!873296))

(assert (= (and b!873296 res!593561) b!873291))

(assert (= (and b!873291 res!593565) b!873287))

(assert (= (and b!873287 res!593568) b!873290))

(assert (= (and b!873290 res!593563) b!873293))

(assert (= (and b!873293 res!593566) b!873294))

(assert (= (and b!873294 res!593567) b!873286))

(assert (= (and b!873286 res!593564) b!873292))

(assert (= (and b!873288 condMapEmpty!27503) mapIsEmpty!27503))

(assert (= (and b!873288 (not condMapEmpty!27503)) mapNonEmpty!27503))

(get-info :version)

(assert (= (and mapNonEmpty!27503 ((_ is ValueCellFull!8193) mapValue!27503)) b!873289))

(assert (= (and b!873288 ((_ is ValueCellFull!8193) mapDefault!27503)) b!873295))

(assert (= start!74272 b!873288))

(declare-fun m!813889 () Bool)

(assert (=> b!873286 m!813889))

(declare-fun m!813891 () Bool)

(assert (=> b!873294 m!813891))

(declare-fun m!813893 () Bool)

(assert (=> mapNonEmpty!27503 m!813893))

(declare-fun m!813895 () Bool)

(assert (=> b!873292 m!813895))

(declare-fun m!813897 () Bool)

(assert (=> b!873292 m!813897))

(declare-fun m!813899 () Bool)

(assert (=> b!873292 m!813899))

(declare-fun m!813901 () Bool)

(assert (=> b!873287 m!813901))

(declare-fun m!813903 () Bool)

(assert (=> b!873296 m!813903))

(declare-fun m!813905 () Bool)

(assert (=> b!873290 m!813905))

(declare-fun m!813907 () Bool)

(assert (=> start!74272 m!813907))

(declare-fun m!813909 () Bool)

(assert (=> start!74272 m!813909))

(check-sat tp_is_empty!17265 (not mapNonEmpty!27503) (not b!873287) (not b!873294) (not b_next!15021) b_and!24807 (not start!74272) (not b!873292) (not b!873296) (not b!873290))
(check-sat b_and!24807 (not b_next!15021))
(get-model)

(declare-fun d!108443 () Bool)

(assert (=> d!108443 (= (array_inv!19188 _keys!868) (bvsge (size!24788 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74272 d!108443))

(declare-fun d!108445 () Bool)

(assert (=> d!108445 (= (array_inv!19189 _values!688) (bvsge (size!24789 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74272 d!108445))

(declare-fun b!873355 () Bool)

(declare-fun e!486379 () ListLongMap!10245)

(declare-fun e!486384 () ListLongMap!10245)

(assert (=> b!873355 (= e!486379 e!486384)))

(declare-fun c!92381 () Bool)

(assert (=> b!873355 (= c!92381 (validKeyInArray!0 (select (arr!24347 _keys!868) from!1053)))))

(declare-fun b!873356 () Bool)

(declare-fun e!486382 () Bool)

(declare-fun e!486381 () Bool)

(assert (=> b!873356 (= e!486382 e!486381)))

(declare-fun c!92379 () Bool)

(assert (=> b!873356 (= c!92379 (bvslt from!1053 (size!24788 _keys!868)))))

(declare-fun b!873357 () Bool)

(declare-fun lt!395721 () ListLongMap!10245)

(assert (=> b!873357 (= e!486381 (= lt!395721 (getCurrentListMapNoExtraKeys!3102 _keys!868 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!873358 () Bool)

(declare-fun e!486378 () Bool)

(assert (=> b!873358 (= e!486378 e!486382)))

(declare-fun c!92380 () Bool)

(declare-fun e!486380 () Bool)

(assert (=> b!873358 (= c!92380 e!486380)))

(declare-fun res!593601 () Bool)

(assert (=> b!873358 (=> (not res!593601) (not e!486380))))

(assert (=> b!873358 (= res!593601 (bvslt from!1053 (size!24788 _keys!868)))))

(declare-fun b!873359 () Bool)

(declare-fun isEmpty!666 (ListLongMap!10245) Bool)

(assert (=> b!873359 (= e!486381 (isEmpty!666 lt!395721))))

(declare-fun b!873360 () Bool)

(declare-fun call!38540 () ListLongMap!10245)

(assert (=> b!873360 (= e!486384 call!38540)))

(declare-fun b!873354 () Bool)

(declare-fun res!593602 () Bool)

(assert (=> b!873354 (=> (not res!593602) (not e!486378))))

(declare-fun contains!4239 (ListLongMap!10245 (_ BitVec 64)) Bool)

(assert (=> b!873354 (= res!593602 (not (contains!4239 lt!395721 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!108447 () Bool)

(assert (=> d!108447 e!486378))

(declare-fun res!593604 () Bool)

(assert (=> d!108447 (=> (not res!593604) (not e!486378))))

(assert (=> d!108447 (= res!593604 (not (contains!4239 lt!395721 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108447 (= lt!395721 e!486379)))

(declare-fun c!92382 () Bool)

(assert (=> d!108447 (= c!92382 (bvsge from!1053 (size!24788 _keys!868)))))

(assert (=> d!108447 (validMask!0 mask!1196)))

(assert (=> d!108447 (= (getCurrentListMapNoExtraKeys!3102 _keys!868 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!395721)))

(declare-fun b!873361 () Bool)

(declare-fun e!486383 () Bool)

(assert (=> b!873361 (= e!486382 e!486383)))

(assert (=> b!873361 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24788 _keys!868)))))

(declare-fun res!593603 () Bool)

(assert (=> b!873361 (= res!593603 (contains!4239 lt!395721 (select (arr!24347 _keys!868) from!1053)))))

(assert (=> b!873361 (=> (not res!593603) (not e!486383))))

(declare-fun b!873362 () Bool)

(assert (=> b!873362 (= e!486379 (ListLongMap!10246 Nil!17347))))

(declare-fun b!873363 () Bool)

(assert (=> b!873363 (= e!486380 (validKeyInArray!0 (select (arr!24347 _keys!868) from!1053)))))

(assert (=> b!873363 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!873364 () Bool)

(declare-datatypes ((Unit!29886 0))(
  ( (Unit!29887) )
))
(declare-fun lt!395715 () Unit!29886)

(declare-fun lt!395718 () Unit!29886)

(assert (=> b!873364 (= lt!395715 lt!395718)))

(declare-fun lt!395716 () (_ BitVec 64))

(declare-fun lt!395719 () (_ BitVec 64))

(declare-fun lt!395717 () ListLongMap!10245)

(declare-fun lt!395720 () V!28067)

(declare-fun +!2416 (ListLongMap!10245 tuple2!11462) ListLongMap!10245)

(assert (=> b!873364 (not (contains!4239 (+!2416 lt!395717 (tuple2!11463 lt!395719 lt!395720)) lt!395716))))

(declare-fun addStillNotContains!202 (ListLongMap!10245 (_ BitVec 64) V!28067 (_ BitVec 64)) Unit!29886)

(assert (=> b!873364 (= lt!395718 (addStillNotContains!202 lt!395717 lt!395719 lt!395720 lt!395716))))

(assert (=> b!873364 (= lt!395716 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!12834 (ValueCell!8193 V!28067) V!28067)

(declare-fun dynLambda!1208 (Int (_ BitVec 64)) V!28067)

(assert (=> b!873364 (= lt!395720 (get!12834 (select (arr!24348 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688))) from!1053) (dynLambda!1208 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!873364 (= lt!395719 (select (arr!24347 _keys!868) from!1053))))

(assert (=> b!873364 (= lt!395717 call!38540)))

(assert (=> b!873364 (= e!486384 (+!2416 call!38540 (tuple2!11463 (select (arr!24347 _keys!868) from!1053) (get!12834 (select (arr!24348 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688))) from!1053) (dynLambda!1208 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38537 () Bool)

(assert (=> bm!38537 (= call!38540 (getCurrentListMapNoExtraKeys!3102 _keys!868 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!873365 () Bool)

(assert (=> b!873365 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24788 _keys!868)))))

(assert (=> b!873365 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24789 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688)))))))

(declare-fun apply!375 (ListLongMap!10245 (_ BitVec 64)) V!28067)

(assert (=> b!873365 (= e!486383 (= (apply!375 lt!395721 (select (arr!24347 _keys!868) from!1053)) (get!12834 (select (arr!24348 (array!50647 (store (arr!24348 _values!688) i!612 (ValueCellFull!8193 v!557)) (size!24789 _values!688))) from!1053) (dynLambda!1208 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!108447 c!92382) b!873362))

(assert (= (and d!108447 (not c!92382)) b!873355))

(assert (= (and b!873355 c!92381) b!873364))

(assert (= (and b!873355 (not c!92381)) b!873360))

(assert (= (or b!873364 b!873360) bm!38537))

(assert (= (and d!108447 res!593604) b!873354))

(assert (= (and b!873354 res!593602) b!873358))

(assert (= (and b!873358 res!593601) b!873363))

(assert (= (and b!873358 c!92380) b!873361))

(assert (= (and b!873358 (not c!92380)) b!873356))

(assert (= (and b!873361 res!593603) b!873365))

(assert (= (and b!873356 c!92379) b!873357))

(assert (= (and b!873356 (not c!92379)) b!873359))

(declare-fun b_lambda!12187 () Bool)

(assert (=> (not b_lambda!12187) (not b!873364)))

(declare-fun t!24401 () Bool)

(declare-fun tb!4905 () Bool)

(assert (=> (and start!74272 (= defaultEntry!696 defaultEntry!696) t!24401) tb!4905))

(declare-fun result!9417 () Bool)

(assert (=> tb!4905 (= result!9417 tp_is_empty!17265)))

(assert (=> b!873364 t!24401))

(declare-fun b_and!24811 () Bool)

(assert (= b_and!24807 (and (=> t!24401 result!9417) b_and!24811)))

(declare-fun b_lambda!12189 () Bool)

(assert (=> (not b_lambda!12189) (not b!873365)))

(assert (=> b!873365 t!24401))

(declare-fun b_and!24813 () Bool)

(assert (= b_and!24811 (and (=> t!24401 result!9417) b_and!24813)))

(declare-fun m!813933 () Bool)

(assert (=> b!873355 m!813933))

(assert (=> b!873355 m!813933))

(declare-fun m!813935 () Bool)

(assert (=> b!873355 m!813935))

(declare-fun m!813937 () Bool)

(assert (=> d!108447 m!813937))

(assert (=> d!108447 m!813903))

(assert (=> b!873361 m!813933))

(assert (=> b!873361 m!813933))

(declare-fun m!813939 () Bool)

(assert (=> b!873361 m!813939))

(assert (=> b!873363 m!813933))

(assert (=> b!873363 m!813933))

(assert (=> b!873363 m!813935))

(declare-fun m!813941 () Bool)

(assert (=> b!873359 m!813941))

(declare-fun m!813943 () Bool)

(assert (=> b!873365 m!813943))

(declare-fun m!813945 () Bool)

(assert (=> b!873365 m!813945))

(declare-fun m!813947 () Bool)

(assert (=> b!873365 m!813947))

(assert (=> b!873365 m!813933))

(assert (=> b!873365 m!813943))

(assert (=> b!873365 m!813945))

(assert (=> b!873365 m!813933))

(declare-fun m!813949 () Bool)

(assert (=> b!873365 m!813949))

(declare-fun m!813951 () Bool)

(assert (=> b!873357 m!813951))

(assert (=> b!873364 m!813943))

(assert (=> b!873364 m!813945))

(assert (=> b!873364 m!813947))

(declare-fun m!813953 () Bool)

(assert (=> b!873364 m!813953))

(assert (=> b!873364 m!813933))

(assert (=> b!873364 m!813943))

(assert (=> b!873364 m!813945))

(declare-fun m!813955 () Bool)

(assert (=> b!873364 m!813955))

(assert (=> b!873364 m!813955))

(declare-fun m!813957 () Bool)

(assert (=> b!873364 m!813957))

(declare-fun m!813959 () Bool)

(assert (=> b!873364 m!813959))

(declare-fun m!813961 () Bool)

(assert (=> b!873354 m!813961))

(assert (=> bm!38537 m!813951))

(assert (=> b!873292 d!108447))

(declare-fun b!873369 () Bool)

(declare-fun e!486386 () ListLongMap!10245)

(declare-fun e!486391 () ListLongMap!10245)

(assert (=> b!873369 (= e!486386 e!486391)))

(declare-fun c!92385 () Bool)

(assert (=> b!873369 (= c!92385 (validKeyInArray!0 (select (arr!24347 _keys!868) from!1053)))))

(declare-fun b!873370 () Bool)

(declare-fun e!486389 () Bool)

(declare-fun e!486388 () Bool)

(assert (=> b!873370 (= e!486389 e!486388)))

(declare-fun c!92383 () Bool)

(assert (=> b!873370 (= c!92383 (bvslt from!1053 (size!24788 _keys!868)))))

(declare-fun b!873371 () Bool)

(declare-fun lt!395728 () ListLongMap!10245)

(assert (=> b!873371 (= e!486388 (= lt!395728 (getCurrentListMapNoExtraKeys!3102 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!873372 () Bool)

(declare-fun e!486385 () Bool)

(assert (=> b!873372 (= e!486385 e!486389)))

(declare-fun c!92384 () Bool)

(declare-fun e!486387 () Bool)

(assert (=> b!873372 (= c!92384 e!486387)))

(declare-fun res!593605 () Bool)

(assert (=> b!873372 (=> (not res!593605) (not e!486387))))

(assert (=> b!873372 (= res!593605 (bvslt from!1053 (size!24788 _keys!868)))))

(declare-fun b!873373 () Bool)

(assert (=> b!873373 (= e!486388 (isEmpty!666 lt!395728))))

(declare-fun b!873374 () Bool)

(declare-fun call!38541 () ListLongMap!10245)

(assert (=> b!873374 (= e!486391 call!38541)))

(declare-fun b!873368 () Bool)

(declare-fun res!593606 () Bool)

(assert (=> b!873368 (=> (not res!593606) (not e!486385))))

(assert (=> b!873368 (= res!593606 (not (contains!4239 lt!395728 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!108449 () Bool)

(assert (=> d!108449 e!486385))

(declare-fun res!593608 () Bool)

(assert (=> d!108449 (=> (not res!593608) (not e!486385))))

(assert (=> d!108449 (= res!593608 (not (contains!4239 lt!395728 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108449 (= lt!395728 e!486386)))

(declare-fun c!92386 () Bool)

(assert (=> d!108449 (= c!92386 (bvsge from!1053 (size!24788 _keys!868)))))

(assert (=> d!108449 (validMask!0 mask!1196)))

(assert (=> d!108449 (= (getCurrentListMapNoExtraKeys!3102 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!395728)))

(declare-fun b!873375 () Bool)

(declare-fun e!486390 () Bool)

(assert (=> b!873375 (= e!486389 e!486390)))

(assert (=> b!873375 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24788 _keys!868)))))

(declare-fun res!593607 () Bool)

(assert (=> b!873375 (= res!593607 (contains!4239 lt!395728 (select (arr!24347 _keys!868) from!1053)))))

(assert (=> b!873375 (=> (not res!593607) (not e!486390))))

(declare-fun b!873376 () Bool)

(assert (=> b!873376 (= e!486386 (ListLongMap!10246 Nil!17347))))

(declare-fun b!873377 () Bool)

(assert (=> b!873377 (= e!486387 (validKeyInArray!0 (select (arr!24347 _keys!868) from!1053)))))

(assert (=> b!873377 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!873378 () Bool)

(declare-fun lt!395722 () Unit!29886)

(declare-fun lt!395725 () Unit!29886)

(assert (=> b!873378 (= lt!395722 lt!395725)))

(declare-fun lt!395724 () ListLongMap!10245)

(declare-fun lt!395726 () (_ BitVec 64))

(declare-fun lt!395723 () (_ BitVec 64))

(declare-fun lt!395727 () V!28067)

(assert (=> b!873378 (not (contains!4239 (+!2416 lt!395724 (tuple2!11463 lt!395726 lt!395727)) lt!395723))))

(assert (=> b!873378 (= lt!395725 (addStillNotContains!202 lt!395724 lt!395726 lt!395727 lt!395723))))

(assert (=> b!873378 (= lt!395723 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!873378 (= lt!395727 (get!12834 (select (arr!24348 _values!688) from!1053) (dynLambda!1208 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!873378 (= lt!395726 (select (arr!24347 _keys!868) from!1053))))

(assert (=> b!873378 (= lt!395724 call!38541)))

(assert (=> b!873378 (= e!486391 (+!2416 call!38541 (tuple2!11463 (select (arr!24347 _keys!868) from!1053) (get!12834 (select (arr!24348 _values!688) from!1053) (dynLambda!1208 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38538 () Bool)

(assert (=> bm!38538 (= call!38541 (getCurrentListMapNoExtraKeys!3102 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!873379 () Bool)

(assert (=> b!873379 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24788 _keys!868)))))

(assert (=> b!873379 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24789 _values!688)))))

(assert (=> b!873379 (= e!486390 (= (apply!375 lt!395728 (select (arr!24347 _keys!868) from!1053)) (get!12834 (select (arr!24348 _values!688) from!1053) (dynLambda!1208 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!108449 c!92386) b!873376))

(assert (= (and d!108449 (not c!92386)) b!873369))

(assert (= (and b!873369 c!92385) b!873378))

(assert (= (and b!873369 (not c!92385)) b!873374))

(assert (= (or b!873378 b!873374) bm!38538))

(assert (= (and d!108449 res!593608) b!873368))

(assert (= (and b!873368 res!593606) b!873372))

(assert (= (and b!873372 res!593605) b!873377))

(assert (= (and b!873372 c!92384) b!873375))

(assert (= (and b!873372 (not c!92384)) b!873370))

(assert (= (and b!873375 res!593607) b!873379))

(assert (= (and b!873370 c!92383) b!873371))

(assert (= (and b!873370 (not c!92383)) b!873373))

(declare-fun b_lambda!12191 () Bool)

(assert (=> (not b_lambda!12191) (not b!873378)))

(assert (=> b!873378 t!24401))

(declare-fun b_and!24815 () Bool)

(assert (= b_and!24813 (and (=> t!24401 result!9417) b_and!24815)))

(declare-fun b_lambda!12193 () Bool)

(assert (=> (not b_lambda!12193) (not b!873379)))

(assert (=> b!873379 t!24401))

(declare-fun b_and!24817 () Bool)

(assert (= b_and!24815 (and (=> t!24401 result!9417) b_and!24817)))

(assert (=> b!873369 m!813933))

(assert (=> b!873369 m!813933))

(assert (=> b!873369 m!813935))

(declare-fun m!813963 () Bool)

(assert (=> d!108449 m!813963))

(assert (=> d!108449 m!813903))

(assert (=> b!873375 m!813933))

(assert (=> b!873375 m!813933))

(declare-fun m!813965 () Bool)

(assert (=> b!873375 m!813965))

(assert (=> b!873377 m!813933))

(assert (=> b!873377 m!813933))

(assert (=> b!873377 m!813935))

(declare-fun m!813967 () Bool)

(assert (=> b!873373 m!813967))

(declare-fun m!813969 () Bool)

(assert (=> b!873379 m!813969))

(assert (=> b!873379 m!813945))

(declare-fun m!813971 () Bool)

(assert (=> b!873379 m!813971))

(assert (=> b!873379 m!813933))

(assert (=> b!873379 m!813969))

(assert (=> b!873379 m!813945))

(assert (=> b!873379 m!813933))

(declare-fun m!813973 () Bool)

(assert (=> b!873379 m!813973))

(declare-fun m!813975 () Bool)

(assert (=> b!873371 m!813975))

(assert (=> b!873378 m!813969))

(assert (=> b!873378 m!813945))

(assert (=> b!873378 m!813971))

(declare-fun m!813977 () Bool)

(assert (=> b!873378 m!813977))

(assert (=> b!873378 m!813933))

(assert (=> b!873378 m!813969))

(assert (=> b!873378 m!813945))

(declare-fun m!813979 () Bool)

(assert (=> b!873378 m!813979))

(assert (=> b!873378 m!813979))

(declare-fun m!813981 () Bool)

(assert (=> b!873378 m!813981))

(declare-fun m!813983 () Bool)

(assert (=> b!873378 m!813983))

(declare-fun m!813985 () Bool)

(assert (=> b!873368 m!813985))

(assert (=> bm!38538 m!813975))

(assert (=> b!873292 d!108449))

(declare-fun b!873388 () Bool)

(declare-fun e!486400 () Bool)

(declare-fun e!486399 () Bool)

(assert (=> b!873388 (= e!486400 e!486399)))

(declare-fun c!92389 () Bool)

(assert (=> b!873388 (= c!92389 (validKeyInArray!0 (select (arr!24347 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!873389 () Bool)

(declare-fun e!486398 () Bool)

(assert (=> b!873389 (= e!486399 e!486398)))

(declare-fun lt!395737 () (_ BitVec 64))

(assert (=> b!873389 (= lt!395737 (select (arr!24347 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!395736 () Unit!29886)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!50644 (_ BitVec 64) (_ BitVec 32)) Unit!29886)

(assert (=> b!873389 (= lt!395736 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!395737 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!50644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!873389 (arrayContainsKey!0 _keys!868 lt!395737 #b00000000000000000000000000000000)))

(declare-fun lt!395735 () Unit!29886)

(assert (=> b!873389 (= lt!395735 lt!395736)))

(declare-fun res!593613 () Bool)

(declare-datatypes ((SeekEntryResult!8740 0))(
  ( (MissingZero!8740 (index!37330 (_ BitVec 32))) (Found!8740 (index!37331 (_ BitVec 32))) (Intermediate!8740 (undefined!9552 Bool) (index!37332 (_ BitVec 32)) (x!74000 (_ BitVec 32))) (Undefined!8740) (MissingVacant!8740 (index!37333 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!50644 (_ BitVec 32)) SeekEntryResult!8740)

(assert (=> b!873389 (= res!593613 (= (seekEntryOrOpen!0 (select (arr!24347 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8740 #b00000000000000000000000000000000)))))

(assert (=> b!873389 (=> (not res!593613) (not e!486398))))

(declare-fun b!873390 () Bool)

(declare-fun call!38544 () Bool)

(assert (=> b!873390 (= e!486399 call!38544)))

(declare-fun b!873391 () Bool)

(assert (=> b!873391 (= e!486398 call!38544)))

(declare-fun d!108451 () Bool)

(declare-fun res!593614 () Bool)

(assert (=> d!108451 (=> res!593614 e!486400)))

(assert (=> d!108451 (= res!593614 (bvsge #b00000000000000000000000000000000 (size!24788 _keys!868)))))

(assert (=> d!108451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!486400)))

(declare-fun bm!38541 () Bool)

(assert (=> bm!38541 (= call!38544 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(assert (= (and d!108451 (not res!593614)) b!873388))

(assert (= (and b!873388 c!92389) b!873389))

(assert (= (and b!873388 (not c!92389)) b!873390))

(assert (= (and b!873389 res!593613) b!873391))

(assert (= (or b!873391 b!873390) bm!38541))

(declare-fun m!813987 () Bool)

(assert (=> b!873388 m!813987))

(assert (=> b!873388 m!813987))

(declare-fun m!813989 () Bool)

(assert (=> b!873388 m!813989))

(assert (=> b!873389 m!813987))

(declare-fun m!813991 () Bool)

(assert (=> b!873389 m!813991))

(declare-fun m!813993 () Bool)

(assert (=> b!873389 m!813993))

(assert (=> b!873389 m!813987))

(declare-fun m!813995 () Bool)

(assert (=> b!873389 m!813995))

(declare-fun m!813997 () Bool)

(assert (=> bm!38541 m!813997))

(assert (=> b!873287 d!108451))

(declare-fun d!108453 () Bool)

(assert (=> d!108453 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!873296 d!108453))

(declare-fun d!108455 () Bool)

(declare-fun res!593622 () Bool)

(declare-fun e!486410 () Bool)

(assert (=> d!108455 (=> res!593622 e!486410)))

(assert (=> d!108455 (= res!593622 (bvsge #b00000000000000000000000000000000 (size!24788 _keys!868)))))

(assert (=> d!108455 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17346) e!486410)))

(declare-fun b!873402 () Bool)

(declare-fun e!486412 () Bool)

(declare-fun call!38547 () Bool)

(assert (=> b!873402 (= e!486412 call!38547)))

(declare-fun b!873403 () Bool)

(declare-fun e!486409 () Bool)

(assert (=> b!873403 (= e!486409 e!486412)))

(declare-fun c!92392 () Bool)

(assert (=> b!873403 (= c!92392 (validKeyInArray!0 (select (arr!24347 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38544 () Bool)

(assert (=> bm!38544 (= call!38547 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92392 (Cons!17345 (select (arr!24347 _keys!868) #b00000000000000000000000000000000) Nil!17346) Nil!17346)))))

(declare-fun b!873404 () Bool)

(assert (=> b!873404 (= e!486412 call!38547)))

(declare-fun b!873405 () Bool)

(declare-fun e!486411 () Bool)

(declare-fun contains!4240 (List!17349 (_ BitVec 64)) Bool)

(assert (=> b!873405 (= e!486411 (contains!4240 Nil!17346 (select (arr!24347 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!873406 () Bool)

(assert (=> b!873406 (= e!486410 e!486409)))

(declare-fun res!593621 () Bool)

(assert (=> b!873406 (=> (not res!593621) (not e!486409))))

(assert (=> b!873406 (= res!593621 (not e!486411))))

(declare-fun res!593623 () Bool)

(assert (=> b!873406 (=> (not res!593623) (not e!486411))))

(assert (=> b!873406 (= res!593623 (validKeyInArray!0 (select (arr!24347 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108455 (not res!593622)) b!873406))

(assert (= (and b!873406 res!593623) b!873405))

(assert (= (and b!873406 res!593621) b!873403))

(assert (= (and b!873403 c!92392) b!873404))

(assert (= (and b!873403 (not c!92392)) b!873402))

(assert (= (or b!873404 b!873402) bm!38544))

(assert (=> b!873403 m!813987))

(assert (=> b!873403 m!813987))

(assert (=> b!873403 m!813989))

(assert (=> bm!38544 m!813987))

(declare-fun m!813999 () Bool)

(assert (=> bm!38544 m!813999))

(assert (=> b!873405 m!813987))

(assert (=> b!873405 m!813987))

(declare-fun m!814001 () Bool)

(assert (=> b!873405 m!814001))

(assert (=> b!873406 m!813987))

(assert (=> b!873406 m!813987))

(assert (=> b!873406 m!813989))

(assert (=> b!873290 d!108455))

(declare-fun d!108457 () Bool)

(assert (=> d!108457 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!873294 d!108457))

(declare-fun b!873414 () Bool)

(declare-fun e!486417 () Bool)

(assert (=> b!873414 (= e!486417 tp_is_empty!17265)))

(declare-fun mapNonEmpty!27509 () Bool)

(declare-fun mapRes!27509 () Bool)

(declare-fun tp!52745 () Bool)

(declare-fun e!486418 () Bool)

(assert (=> mapNonEmpty!27509 (= mapRes!27509 (and tp!52745 e!486418))))

(declare-fun mapRest!27509 () (Array (_ BitVec 32) ValueCell!8193))

(declare-fun mapValue!27509 () ValueCell!8193)

(declare-fun mapKey!27509 () (_ BitVec 32))

(assert (=> mapNonEmpty!27509 (= mapRest!27503 (store mapRest!27509 mapKey!27509 mapValue!27509))))

(declare-fun mapIsEmpty!27509 () Bool)

(assert (=> mapIsEmpty!27509 mapRes!27509))

(declare-fun condMapEmpty!27509 () Bool)

(declare-fun mapDefault!27509 () ValueCell!8193)

(assert (=> mapNonEmpty!27503 (= condMapEmpty!27509 (= mapRest!27503 ((as const (Array (_ BitVec 32) ValueCell!8193)) mapDefault!27509)))))

(assert (=> mapNonEmpty!27503 (= tp!52736 (and e!486417 mapRes!27509))))

(declare-fun b!873413 () Bool)

(assert (=> b!873413 (= e!486418 tp_is_empty!17265)))

(assert (= (and mapNonEmpty!27503 condMapEmpty!27509) mapIsEmpty!27509))

(assert (= (and mapNonEmpty!27503 (not condMapEmpty!27509)) mapNonEmpty!27509))

(assert (= (and mapNonEmpty!27509 ((_ is ValueCellFull!8193) mapValue!27509)) b!873413))

(assert (= (and mapNonEmpty!27503 ((_ is ValueCellFull!8193) mapDefault!27509)) b!873414))

(declare-fun m!814003 () Bool)

(assert (=> mapNonEmpty!27509 m!814003))

(declare-fun b_lambda!12195 () Bool)

(assert (= b_lambda!12191 (or (and start!74272 b_free!15021) b_lambda!12195)))

(declare-fun b_lambda!12197 () Bool)

(assert (= b_lambda!12193 (or (and start!74272 b_free!15021) b_lambda!12197)))

(declare-fun b_lambda!12199 () Bool)

(assert (= b_lambda!12189 (or (and start!74272 b_free!15021) b_lambda!12199)))

(declare-fun b_lambda!12201 () Bool)

(assert (= b_lambda!12187 (or (and start!74272 b_free!15021) b_lambda!12201)))

(check-sat (not b!873375) (not bm!38541) tp_is_empty!17265 (not b!873388) (not b!873354) (not b!873377) (not b_lambda!12201) (not bm!38538) (not b_lambda!12197) (not b!873371) b_and!24817 (not b!873359) (not b!873369) (not bm!38544) (not b!873405) (not bm!38537) (not d!108449) (not b!873363) (not b!873361) (not b!873389) (not b!873365) (not b!873373) (not b!873379) (not b!873406) (not b!873357) (not d!108447) (not b_next!15021) (not b_lambda!12195) (not b!873378) (not b!873355) (not b!873403) (not b_lambda!12199) (not b!873364) (not b!873368) (not mapNonEmpty!27509))
(check-sat b_and!24817 (not b_next!15021))
