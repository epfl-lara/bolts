; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73300 () Bool)

(assert start!73300)

(declare-fun b_free!14187 () Bool)

(declare-fun b_next!14187 () Bool)

(assert (=> start!73300 (= b_free!14187 (not b_next!14187))))

(declare-fun tp!50066 () Bool)

(declare-fun b_and!23551 () Bool)

(assert (=> start!73300 (= tp!50066 b_and!23551)))

(declare-fun b!854399 () Bool)

(declare-fun res!580345 () Bool)

(declare-fun e!476458 () Bool)

(assert (=> b!854399 (=> (not res!580345) (not e!476458))))

(declare-datatypes ((array!48826 0))(
  ( (array!48827 (arr!23440 (Array (_ BitVec 32) (_ BitVec 64))) (size!23881 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48826)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48826 (_ BitVec 32)) Bool)

(assert (=> b!854399 (= res!580345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26084 () Bool)

(declare-fun mapRes!26084 () Bool)

(assert (=> mapIsEmpty!26084 mapRes!26084))

(declare-fun b!854400 () Bool)

(declare-fun e!476455 () Bool)

(assert (=> b!854400 (= e!476458 e!476455)))

(declare-fun res!580346 () Bool)

(assert (=> b!854400 (=> (not res!580346) (not e!476455))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854400 (= res!580346 (= from!1053 i!612))))

(declare-datatypes ((V!26811 0))(
  ( (V!26812 (val!8209 Int)) )
))
(declare-datatypes ((ValueCell!7722 0))(
  ( (ValueCellFull!7722 (v!10630 V!26811)) (EmptyCell!7722) )
))
(declare-datatypes ((array!48828 0))(
  ( (array!48829 (arr!23441 (Array (_ BitVec 32) ValueCell!7722)) (size!23882 (_ BitVec 32))) )
))
(declare-fun lt!385397 () array!48828)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26811)

(declare-fun zeroValue!654 () V!26811)

(declare-datatypes ((tuple2!10810 0))(
  ( (tuple2!10811 (_1!5415 (_ BitVec 64)) (_2!5415 V!26811)) )
))
(declare-datatypes ((List!16682 0))(
  ( (Nil!16679) (Cons!16678 (h!17809 tuple2!10810) (t!23323 List!16682)) )
))
(declare-datatypes ((ListLongMap!9593 0))(
  ( (ListLongMap!9594 (toList!4812 List!16682)) )
))
(declare-fun lt!385398 () ListLongMap!9593)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2794 (array!48826 array!48828 (_ BitVec 32) (_ BitVec 32) V!26811 V!26811 (_ BitVec 32) Int) ListLongMap!9593)

(assert (=> b!854400 (= lt!385398 (getCurrentListMapNoExtraKeys!2794 _keys!868 lt!385397 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26811)

(declare-fun _values!688 () array!48828)

(assert (=> b!854400 (= lt!385397 (array!48829 (store (arr!23441 _values!688) i!612 (ValueCellFull!7722 v!557)) (size!23882 _values!688)))))

(declare-fun lt!385392 () ListLongMap!9593)

(assert (=> b!854400 (= lt!385392 (getCurrentListMapNoExtraKeys!2794 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854401 () Bool)

(declare-fun res!580350 () Bool)

(assert (=> b!854401 (=> (not res!580350) (not e!476458))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854401 (= res!580350 (validKeyInArray!0 k0!854))))

(declare-fun b!854402 () Bool)

(declare-fun res!580341 () Bool)

(assert (=> b!854402 (=> (not res!580341) (not e!476458))))

(assert (=> b!854402 (= res!580341 (and (= (size!23882 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23881 _keys!868) (size!23882 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26084 () Bool)

(declare-fun tp!50065 () Bool)

(declare-fun e!476453 () Bool)

(assert (=> mapNonEmpty!26084 (= mapRes!26084 (and tp!50065 e!476453))))

(declare-fun mapValue!26084 () ValueCell!7722)

(declare-fun mapKey!26084 () (_ BitVec 32))

(declare-fun mapRest!26084 () (Array (_ BitVec 32) ValueCell!7722))

(assert (=> mapNonEmpty!26084 (= (arr!23441 _values!688) (store mapRest!26084 mapKey!26084 mapValue!26084))))

(declare-fun b!854403 () Bool)

(declare-fun e!476457 () Bool)

(assert (=> b!854403 (= e!476457 true)))

(declare-fun lt!385396 () ListLongMap!9593)

(declare-fun lt!385395 () tuple2!10810)

(declare-fun lt!385391 () V!26811)

(declare-fun +!2147 (ListLongMap!9593 tuple2!10810) ListLongMap!9593)

(assert (=> b!854403 (= (+!2147 lt!385396 lt!385395) (+!2147 (+!2147 lt!385396 (tuple2!10811 k0!854 lt!385391)) lt!385395))))

(declare-fun lt!385389 () V!26811)

(assert (=> b!854403 (= lt!385395 (tuple2!10811 k0!854 lt!385389))))

(declare-datatypes ((Unit!29136 0))(
  ( (Unit!29137) )
))
(declare-fun lt!385393 () Unit!29136)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!324 (ListLongMap!9593 (_ BitVec 64) V!26811 V!26811) Unit!29136)

(assert (=> b!854403 (= lt!385393 (addSameAsAddTwiceSameKeyDiffValues!324 lt!385396 k0!854 lt!385391 lt!385389))))

(declare-fun lt!385394 () V!26811)

(declare-fun get!12384 (ValueCell!7722 V!26811) V!26811)

(assert (=> b!854403 (= lt!385391 (get!12384 (select (arr!23441 _values!688) from!1053) lt!385394))))

(assert (=> b!854403 (= lt!385398 (+!2147 lt!385396 (tuple2!10811 (select (arr!23440 _keys!868) from!1053) lt!385389)))))

(assert (=> b!854403 (= lt!385389 (get!12384 (select (store (arr!23441 _values!688) i!612 (ValueCellFull!7722 v!557)) from!1053) lt!385394))))

(declare-fun dynLambda!1072 (Int (_ BitVec 64)) V!26811)

(assert (=> b!854403 (= lt!385394 (dynLambda!1072 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!854403 (= lt!385396 (getCurrentListMapNoExtraKeys!2794 _keys!868 lt!385397 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38413 () Bool)

(declare-fun call!38417 () ListLongMap!9593)

(assert (=> bm!38413 (= call!38417 (getCurrentListMapNoExtraKeys!2794 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854404 () Bool)

(declare-fun tp_is_empty!16323 () Bool)

(assert (=> b!854404 (= e!476453 tp_is_empty!16323)))

(declare-fun b!854405 () Bool)

(declare-fun e!476454 () Bool)

(declare-fun call!38416 () ListLongMap!9593)

(assert (=> b!854405 (= e!476454 (= call!38416 call!38417))))

(declare-fun res!580347 () Bool)

(assert (=> start!73300 (=> (not res!580347) (not e!476458))))

(assert (=> start!73300 (= res!580347 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23881 _keys!868))))))

(assert (=> start!73300 e!476458))

(assert (=> start!73300 tp_is_empty!16323))

(assert (=> start!73300 true))

(assert (=> start!73300 tp!50066))

(declare-fun array_inv!18558 (array!48826) Bool)

(assert (=> start!73300 (array_inv!18558 _keys!868)))

(declare-fun e!476460 () Bool)

(declare-fun array_inv!18559 (array!48828) Bool)

(assert (=> start!73300 (and (array_inv!18559 _values!688) e!476460)))

(declare-fun b!854406 () Bool)

(declare-fun res!580349 () Bool)

(assert (=> b!854406 (=> (not res!580349) (not e!476458))))

(assert (=> b!854406 (= res!580349 (and (= (select (arr!23440 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854407 () Bool)

(declare-fun e!476456 () Bool)

(assert (=> b!854407 (= e!476456 tp_is_empty!16323)))

(declare-fun b!854408 () Bool)

(assert (=> b!854408 (= e!476454 (= call!38416 (+!2147 call!38417 (tuple2!10811 k0!854 v!557))))))

(declare-fun b!854409 () Bool)

(assert (=> b!854409 (= e!476455 (not e!476457))))

(declare-fun res!580342 () Bool)

(assert (=> b!854409 (=> res!580342 e!476457)))

(assert (=> b!854409 (= res!580342 (not (validKeyInArray!0 (select (arr!23440 _keys!868) from!1053))))))

(assert (=> b!854409 e!476454))

(declare-fun c!91869 () Bool)

(assert (=> b!854409 (= c!91869 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!385390 () Unit!29136)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!407 (array!48826 array!48828 (_ BitVec 32) (_ BitVec 32) V!26811 V!26811 (_ BitVec 32) (_ BitVec 64) V!26811 (_ BitVec 32) Int) Unit!29136)

(assert (=> b!854409 (= lt!385390 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!407 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854410 () Bool)

(declare-fun res!580344 () Bool)

(assert (=> b!854410 (=> (not res!580344) (not e!476458))))

(assert (=> b!854410 (= res!580344 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23881 _keys!868))))))

(declare-fun b!854411 () Bool)

(declare-fun res!580348 () Bool)

(assert (=> b!854411 (=> (not res!580348) (not e!476458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854411 (= res!580348 (validMask!0 mask!1196))))

(declare-fun bm!38414 () Bool)

(assert (=> bm!38414 (= call!38416 (getCurrentListMapNoExtraKeys!2794 _keys!868 lt!385397 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854412 () Bool)

(assert (=> b!854412 (= e!476460 (and e!476456 mapRes!26084))))

(declare-fun condMapEmpty!26084 () Bool)

(declare-fun mapDefault!26084 () ValueCell!7722)

(assert (=> b!854412 (= condMapEmpty!26084 (= (arr!23441 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7722)) mapDefault!26084)))))

(declare-fun b!854413 () Bool)

(declare-fun res!580343 () Bool)

(assert (=> b!854413 (=> (not res!580343) (not e!476458))))

(declare-datatypes ((List!16683 0))(
  ( (Nil!16680) (Cons!16679 (h!17810 (_ BitVec 64)) (t!23324 List!16683)) )
))
(declare-fun arrayNoDuplicates!0 (array!48826 (_ BitVec 32) List!16683) Bool)

(assert (=> b!854413 (= res!580343 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16680))))

(assert (= (and start!73300 res!580347) b!854411))

(assert (= (and b!854411 res!580348) b!854402))

(assert (= (and b!854402 res!580341) b!854399))

(assert (= (and b!854399 res!580345) b!854413))

(assert (= (and b!854413 res!580343) b!854410))

(assert (= (and b!854410 res!580344) b!854401))

(assert (= (and b!854401 res!580350) b!854406))

(assert (= (and b!854406 res!580349) b!854400))

(assert (= (and b!854400 res!580346) b!854409))

(assert (= (and b!854409 c!91869) b!854408))

(assert (= (and b!854409 (not c!91869)) b!854405))

(assert (= (or b!854408 b!854405) bm!38413))

(assert (= (or b!854408 b!854405) bm!38414))

(assert (= (and b!854409 (not res!580342)) b!854403))

(assert (= (and b!854412 condMapEmpty!26084) mapIsEmpty!26084))

(assert (= (and b!854412 (not condMapEmpty!26084)) mapNonEmpty!26084))

(get-info :version)

(assert (= (and mapNonEmpty!26084 ((_ is ValueCellFull!7722) mapValue!26084)) b!854404))

(assert (= (and b!854412 ((_ is ValueCellFull!7722) mapDefault!26084)) b!854407))

(assert (= start!73300 b!854412))

(declare-fun b_lambda!11749 () Bool)

(assert (=> (not b_lambda!11749) (not b!854403)))

(declare-fun t!23322 () Bool)

(declare-fun tb!4497 () Bool)

(assert (=> (and start!73300 (= defaultEntry!696 defaultEntry!696) t!23322) tb!4497))

(declare-fun result!8597 () Bool)

(assert (=> tb!4497 (= result!8597 tp_is_empty!16323)))

(assert (=> b!854403 t!23322))

(declare-fun b_and!23553 () Bool)

(assert (= b_and!23551 (and (=> t!23322 result!8597) b_and!23553)))

(declare-fun m!795883 () Bool)

(assert (=> b!854403 m!795883))

(declare-fun m!795885 () Bool)

(assert (=> b!854403 m!795885))

(assert (=> b!854403 m!795883))

(declare-fun m!795887 () Bool)

(assert (=> b!854403 m!795887))

(declare-fun m!795889 () Bool)

(assert (=> b!854403 m!795889))

(declare-fun m!795891 () Bool)

(assert (=> b!854403 m!795891))

(declare-fun m!795893 () Bool)

(assert (=> b!854403 m!795893))

(declare-fun m!795895 () Bool)

(assert (=> b!854403 m!795895))

(declare-fun m!795897 () Bool)

(assert (=> b!854403 m!795897))

(assert (=> b!854403 m!795891))

(declare-fun m!795899 () Bool)

(assert (=> b!854403 m!795899))

(declare-fun m!795901 () Bool)

(assert (=> b!854403 m!795901))

(assert (=> b!854403 m!795893))

(declare-fun m!795903 () Bool)

(assert (=> b!854403 m!795903))

(declare-fun m!795905 () Bool)

(assert (=> b!854403 m!795905))

(declare-fun m!795907 () Bool)

(assert (=> b!854403 m!795907))

(declare-fun m!795909 () Bool)

(assert (=> mapNonEmpty!26084 m!795909))

(declare-fun m!795911 () Bool)

(assert (=> b!854411 m!795911))

(declare-fun m!795913 () Bool)

(assert (=> b!854413 m!795913))

(declare-fun m!795915 () Bool)

(assert (=> start!73300 m!795915))

(declare-fun m!795917 () Bool)

(assert (=> start!73300 m!795917))

(assert (=> bm!38414 m!795903))

(declare-fun m!795919 () Bool)

(assert (=> b!854401 m!795919))

(declare-fun m!795921 () Bool)

(assert (=> b!854406 m!795921))

(assert (=> b!854409 m!795905))

(assert (=> b!854409 m!795905))

(declare-fun m!795923 () Bool)

(assert (=> b!854409 m!795923))

(declare-fun m!795925 () Bool)

(assert (=> b!854409 m!795925))

(declare-fun m!795927 () Bool)

(assert (=> b!854408 m!795927))

(declare-fun m!795929 () Bool)

(assert (=> bm!38413 m!795929))

(declare-fun m!795931 () Bool)

(assert (=> b!854399 m!795931))

(declare-fun m!795933 () Bool)

(assert (=> b!854400 m!795933))

(assert (=> b!854400 m!795897))

(declare-fun m!795935 () Bool)

(assert (=> b!854400 m!795935))

(check-sat b_and!23553 (not b_next!14187) (not b!854408) (not bm!38414) (not b!854409) (not b_lambda!11749) tp_is_empty!16323 (not b!854403) (not b!854399) (not start!73300) (not b!854401) (not b!854411) (not bm!38413) (not mapNonEmpty!26084) (not b!854413) (not b!854400))
(check-sat b_and!23553 (not b_next!14187))
