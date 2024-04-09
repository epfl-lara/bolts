; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73408 () Bool)

(assert start!73408)

(declare-fun b_free!14295 () Bool)

(declare-fun b_next!14295 () Bool)

(assert (=> start!73408 (= b_free!14295 (not b_next!14295))))

(declare-fun tp!50390 () Bool)

(declare-fun b_and!23669 () Bool)

(assert (=> start!73408 (= tp!50390 b_and!23669)))

(declare-fun b!856284 () Bool)

(declare-fun res!581707 () Bool)

(declare-fun e!477346 () Bool)

(assert (=> b!856284 (=> (not res!581707) (not e!477346))))

(declare-datatypes ((array!49030 0))(
  ( (array!49031 (arr!23542 (Array (_ BitVec 32) (_ BitVec 64))) (size!23983 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49030)

(declare-datatypes ((List!16754 0))(
  ( (Nil!16751) (Cons!16750 (h!17881 (_ BitVec 64)) (t!23403 List!16754)) )
))
(declare-fun arrayNoDuplicates!0 (array!49030 (_ BitVec 32) List!16754) Bool)

(assert (=> b!856284 (= res!581707 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16751))))

(declare-fun b!856285 () Bool)

(declare-fun e!477347 () Bool)

(declare-fun tp_is_empty!16431 () Bool)

(assert (=> b!856285 (= e!477347 tp_is_empty!16431)))

(declare-fun mapNonEmpty!26246 () Bool)

(declare-fun mapRes!26246 () Bool)

(declare-fun tp!50389 () Bool)

(declare-fun e!477345 () Bool)

(assert (=> mapNonEmpty!26246 (= mapRes!26246 (and tp!50389 e!477345))))

(declare-datatypes ((V!26955 0))(
  ( (V!26956 (val!8263 Int)) )
))
(declare-datatypes ((ValueCell!7776 0))(
  ( (ValueCellFull!7776 (v!10684 V!26955)) (EmptyCell!7776) )
))
(declare-fun mapValue!26246 () ValueCell!7776)

(declare-fun mapKey!26246 () (_ BitVec 32))

(declare-fun mapRest!26246 () (Array (_ BitVec 32) ValueCell!7776))

(declare-datatypes ((array!49032 0))(
  ( (array!49033 (arr!23543 (Array (_ BitVec 32) ValueCell!7776)) (size!23984 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49032)

(assert (=> mapNonEmpty!26246 (= (arr!23543 _values!688) (store mapRest!26246 mapKey!26246 mapValue!26246))))

(declare-fun b!856286 () Bool)

(declare-fun res!581705 () Bool)

(assert (=> b!856286 (=> (not res!581705) (not e!477346))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!856286 (= res!581705 (and (= (select (arr!23542 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856287 () Bool)

(assert (=> b!856287 (= e!477345 tp_is_empty!16431)))

(declare-fun b!856288 () Bool)

(declare-fun res!581709 () Bool)

(assert (=> b!856288 (=> (not res!581709) (not e!477346))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49030 (_ BitVec 32)) Bool)

(assert (=> b!856288 (= res!581709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856289 () Bool)

(declare-fun e!477343 () Bool)

(assert (=> b!856289 (= e!477343 (and e!477347 mapRes!26246))))

(declare-fun condMapEmpty!26246 () Bool)

(declare-fun mapDefault!26246 () ValueCell!7776)

(assert (=> b!856289 (= condMapEmpty!26246 (= (arr!23543 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7776)) mapDefault!26246)))))

(declare-fun b!856290 () Bool)

(declare-fun res!581712 () Bool)

(assert (=> b!856290 (=> (not res!581712) (not e!477346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856290 (= res!581712 (validKeyInArray!0 k0!854))))

(declare-fun b!856291 () Bool)

(declare-fun res!581710 () Bool)

(assert (=> b!856291 (=> (not res!581710) (not e!477346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856291 (= res!581710 (validMask!0 mask!1196))))

(declare-fun b!856292 () Bool)

(declare-fun e!477344 () Bool)

(assert (=> b!856292 (= e!477344 (not true))))

(declare-fun v!557 () V!26955)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!385902 () array!49032)

(declare-fun minValue!654 () V!26955)

(declare-fun zeroValue!654 () V!26955)

(declare-datatypes ((tuple2!10880 0))(
  ( (tuple2!10881 (_1!5450 (_ BitVec 64)) (_2!5450 V!26955)) )
))
(declare-datatypes ((List!16755 0))(
  ( (Nil!16752) (Cons!16751 (h!17882 tuple2!10880) (t!23404 List!16755)) )
))
(declare-datatypes ((ListLongMap!9663 0))(
  ( (ListLongMap!9664 (toList!4847 List!16755)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2829 (array!49030 array!49032 (_ BitVec 32) (_ BitVec 32) V!26955 V!26955 (_ BitVec 32) Int) ListLongMap!9663)

(declare-fun +!2157 (ListLongMap!9663 tuple2!10880) ListLongMap!9663)

(assert (=> b!856292 (= (getCurrentListMapNoExtraKeys!2829 _keys!868 lt!385902 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2157 (getCurrentListMapNoExtraKeys!2829 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10881 k0!854 v!557)))))

(declare-datatypes ((Unit!29156 0))(
  ( (Unit!29157) )
))
(declare-fun lt!385901 () Unit!29156)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!417 (array!49030 array!49032 (_ BitVec 32) (_ BitVec 32) V!26955 V!26955 (_ BitVec 32) (_ BitVec 64) V!26955 (_ BitVec 32) Int) Unit!29156)

(assert (=> b!856292 (= lt!385901 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!417 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26246 () Bool)

(assert (=> mapIsEmpty!26246 mapRes!26246))

(declare-fun res!581704 () Bool)

(assert (=> start!73408 (=> (not res!581704) (not e!477346))))

(assert (=> start!73408 (= res!581704 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23983 _keys!868))))))

(assert (=> start!73408 e!477346))

(assert (=> start!73408 tp_is_empty!16431))

(assert (=> start!73408 true))

(assert (=> start!73408 tp!50390))

(declare-fun array_inv!18632 (array!49030) Bool)

(assert (=> start!73408 (array_inv!18632 _keys!868)))

(declare-fun array_inv!18633 (array!49032) Bool)

(assert (=> start!73408 (and (array_inv!18633 _values!688) e!477343)))

(declare-fun b!856293 () Bool)

(declare-fun res!581708 () Bool)

(assert (=> b!856293 (=> (not res!581708) (not e!477346))))

(assert (=> b!856293 (= res!581708 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23983 _keys!868))))))

(declare-fun b!856294 () Bool)

(assert (=> b!856294 (= e!477346 e!477344)))

(declare-fun res!581711 () Bool)

(assert (=> b!856294 (=> (not res!581711) (not e!477344))))

(assert (=> b!856294 (= res!581711 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!385900 () ListLongMap!9663)

(assert (=> b!856294 (= lt!385900 (getCurrentListMapNoExtraKeys!2829 _keys!868 lt!385902 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856294 (= lt!385902 (array!49033 (store (arr!23543 _values!688) i!612 (ValueCellFull!7776 v!557)) (size!23984 _values!688)))))

(declare-fun lt!385899 () ListLongMap!9663)

(assert (=> b!856294 (= lt!385899 (getCurrentListMapNoExtraKeys!2829 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856295 () Bool)

(declare-fun res!581706 () Bool)

(assert (=> b!856295 (=> (not res!581706) (not e!477346))))

(assert (=> b!856295 (= res!581706 (and (= (size!23984 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23983 _keys!868) (size!23984 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!73408 res!581704) b!856291))

(assert (= (and b!856291 res!581710) b!856295))

(assert (= (and b!856295 res!581706) b!856288))

(assert (= (and b!856288 res!581709) b!856284))

(assert (= (and b!856284 res!581707) b!856293))

(assert (= (and b!856293 res!581708) b!856290))

(assert (= (and b!856290 res!581712) b!856286))

(assert (= (and b!856286 res!581705) b!856294))

(assert (= (and b!856294 res!581711) b!856292))

(assert (= (and b!856289 condMapEmpty!26246) mapIsEmpty!26246))

(assert (= (and b!856289 (not condMapEmpty!26246)) mapNonEmpty!26246))

(get-info :version)

(assert (= (and mapNonEmpty!26246 ((_ is ValueCellFull!7776) mapValue!26246)) b!856287))

(assert (= (and b!856289 ((_ is ValueCellFull!7776) mapDefault!26246)) b!856285))

(assert (= start!73408 b!856289))

(declare-fun m!797335 () Bool)

(assert (=> b!856294 m!797335))

(declare-fun m!797337 () Bool)

(assert (=> b!856294 m!797337))

(declare-fun m!797339 () Bool)

(assert (=> b!856294 m!797339))

(declare-fun m!797341 () Bool)

(assert (=> b!856292 m!797341))

(declare-fun m!797343 () Bool)

(assert (=> b!856292 m!797343))

(assert (=> b!856292 m!797343))

(declare-fun m!797345 () Bool)

(assert (=> b!856292 m!797345))

(declare-fun m!797347 () Bool)

(assert (=> b!856292 m!797347))

(declare-fun m!797349 () Bool)

(assert (=> b!856291 m!797349))

(declare-fun m!797351 () Bool)

(assert (=> start!73408 m!797351))

(declare-fun m!797353 () Bool)

(assert (=> start!73408 m!797353))

(declare-fun m!797355 () Bool)

(assert (=> b!856286 m!797355))

(declare-fun m!797357 () Bool)

(assert (=> mapNonEmpty!26246 m!797357))

(declare-fun m!797359 () Bool)

(assert (=> b!856284 m!797359))

(declare-fun m!797361 () Bool)

(assert (=> b!856288 m!797361))

(declare-fun m!797363 () Bool)

(assert (=> b!856290 m!797363))

(check-sat b_and!23669 (not b_next!14295) (not mapNonEmpty!26246) (not start!73408) (not b!856291) (not b!856284) tp_is_empty!16431 (not b!856292) (not b!856294) (not b!856288) (not b!856290))
(check-sat b_and!23669 (not b_next!14295))
