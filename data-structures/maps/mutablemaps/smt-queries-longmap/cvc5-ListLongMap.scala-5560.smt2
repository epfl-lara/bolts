; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73172 () Bool)

(assert start!73172)

(declare-fun b_free!14059 () Bool)

(declare-fun b_next!14059 () Bool)

(assert (=> start!73172 (= b_free!14059 (not b_next!14059))))

(declare-fun tp!49682 () Bool)

(declare-fun b_and!23295 () Bool)

(assert (=> start!73172 (= tp!49682 b_and!23295)))

(declare-fun b!851391 () Bool)

(declare-fun res!578425 () Bool)

(declare-fun e!474918 () Bool)

(assert (=> b!851391 (=> (not res!578425) (not e!474918))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48578 0))(
  ( (array!48579 (arr!23316 (Array (_ BitVec 32) (_ BitVec 64))) (size!23757 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48578)

(assert (=> b!851391 (= res!578425 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23757 _keys!868))))))

(declare-fun b!851392 () Bool)

(declare-fun e!474922 () Bool)

(assert (=> b!851392 (= e!474922 true)))

(declare-datatypes ((V!26641 0))(
  ( (V!26642 (val!8145 Int)) )
))
(declare-datatypes ((tuple2!10700 0))(
  ( (tuple2!10701 (_1!5360 (_ BitVec 64)) (_2!5360 V!26641)) )
))
(declare-fun lt!383477 () tuple2!10700)

(declare-fun lt!383470 () V!26641)

(declare-datatypes ((List!16586 0))(
  ( (Nil!16583) (Cons!16582 (h!17713 tuple2!10700) (t!23099 List!16586)) )
))
(declare-datatypes ((ListLongMap!9483 0))(
  ( (ListLongMap!9484 (toList!4757 List!16586)) )
))
(declare-fun lt!383469 () ListLongMap!9483)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2099 (ListLongMap!9483 tuple2!10700) ListLongMap!9483)

(assert (=> b!851392 (= (+!2099 lt!383469 lt!383477) (+!2099 (+!2099 lt!383469 (tuple2!10701 k!854 lt!383470)) lt!383477))))

(declare-fun lt!383471 () V!26641)

(assert (=> b!851392 (= lt!383477 (tuple2!10701 k!854 lt!383471))))

(declare-datatypes ((Unit!29044 0))(
  ( (Unit!29045) )
))
(declare-fun lt!383475 () Unit!29044)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!283 (ListLongMap!9483 (_ BitVec 64) V!26641 V!26641) Unit!29044)

(assert (=> b!851392 (= lt!383475 (addSameAsAddTwiceSameKeyDiffValues!283 lt!383469 k!854 lt!383470 lt!383471))))

(declare-fun lt!383478 () V!26641)

(declare-datatypes ((ValueCell!7658 0))(
  ( (ValueCellFull!7658 (v!10566 V!26641)) (EmptyCell!7658) )
))
(declare-datatypes ((array!48580 0))(
  ( (array!48581 (arr!23317 (Array (_ BitVec 32) ValueCell!7658)) (size!23758 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48580)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12301 (ValueCell!7658 V!26641) V!26641)

(assert (=> b!851392 (= lt!383470 (get!12301 (select (arr!23317 _values!688) from!1053) lt!383478))))

(declare-fun lt!383476 () ListLongMap!9483)

(assert (=> b!851392 (= lt!383476 (+!2099 lt!383469 (tuple2!10701 (select (arr!23316 _keys!868) from!1053) lt!383471)))))

(declare-fun v!557 () V!26641)

(assert (=> b!851392 (= lt!383471 (get!12301 (select (store (arr!23317 _values!688) i!612 (ValueCellFull!7658 v!557)) from!1053) lt!383478))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1031 (Int (_ BitVec 64)) V!26641)

(assert (=> b!851392 (= lt!383478 (dynLambda!1031 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383473 () array!48580)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26641)

(declare-fun zeroValue!654 () V!26641)

(declare-fun getCurrentListMapNoExtraKeys!2742 (array!48578 array!48580 (_ BitVec 32) (_ BitVec 32) V!26641 V!26641 (_ BitVec 32) Int) ListLongMap!9483)

(assert (=> b!851392 (= lt!383469 (getCurrentListMapNoExtraKeys!2742 _keys!868 lt!383473 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851393 () Bool)

(declare-fun res!578421 () Bool)

(assert (=> b!851393 (=> (not res!578421) (not e!474918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48578 (_ BitVec 32)) Bool)

(assert (=> b!851393 (= res!578421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851394 () Bool)

(declare-fun res!578427 () Bool)

(assert (=> b!851394 (=> (not res!578427) (not e!474918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851394 (= res!578427 (validMask!0 mask!1196))))

(declare-fun b!851395 () Bool)

(declare-fun e!474924 () Bool)

(assert (=> b!851395 (= e!474918 e!474924)))

(declare-fun res!578426 () Bool)

(assert (=> b!851395 (=> (not res!578426) (not e!474924))))

(assert (=> b!851395 (= res!578426 (= from!1053 i!612))))

(assert (=> b!851395 (= lt!383476 (getCurrentListMapNoExtraKeys!2742 _keys!868 lt!383473 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851395 (= lt!383473 (array!48581 (store (arr!23317 _values!688) i!612 (ValueCellFull!7658 v!557)) (size!23758 _values!688)))))

(declare-fun lt!383472 () ListLongMap!9483)

(assert (=> b!851395 (= lt!383472 (getCurrentListMapNoExtraKeys!2742 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851396 () Bool)

(assert (=> b!851396 (= e!474924 (not e!474922))))

(declare-fun res!578430 () Bool)

(assert (=> b!851396 (=> res!578430 e!474922)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851396 (= res!578430 (not (validKeyInArray!0 (select (arr!23316 _keys!868) from!1053))))))

(declare-fun e!474917 () Bool)

(assert (=> b!851396 e!474917))

(declare-fun c!91677 () Bool)

(assert (=> b!851396 (= c!91677 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383474 () Unit!29044)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!366 (array!48578 array!48580 (_ BitVec 32) (_ BitVec 32) V!26641 V!26641 (_ BitVec 32) (_ BitVec 64) V!26641 (_ BitVec 32) Int) Unit!29044)

(assert (=> b!851396 (= lt!383474 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!366 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851397 () Bool)

(declare-fun res!578429 () Bool)

(assert (=> b!851397 (=> (not res!578429) (not e!474918))))

(declare-datatypes ((List!16587 0))(
  ( (Nil!16584) (Cons!16583 (h!17714 (_ BitVec 64)) (t!23100 List!16587)) )
))
(declare-fun arrayNoDuplicates!0 (array!48578 (_ BitVec 32) List!16587) Bool)

(assert (=> b!851397 (= res!578429 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16584))))

(declare-fun mapIsEmpty!25892 () Bool)

(declare-fun mapRes!25892 () Bool)

(assert (=> mapIsEmpty!25892 mapRes!25892))

(declare-fun b!851399 () Bool)

(declare-fun res!578428 () Bool)

(assert (=> b!851399 (=> (not res!578428) (not e!474918))))

(assert (=> b!851399 (= res!578428 (validKeyInArray!0 k!854))))

(declare-fun b!851400 () Bool)

(declare-fun e!474923 () Bool)

(declare-fun tp_is_empty!16195 () Bool)

(assert (=> b!851400 (= e!474923 tp_is_empty!16195)))

(declare-fun call!38033 () ListLongMap!9483)

(declare-fun bm!38029 () Bool)

(assert (=> bm!38029 (= call!38033 (getCurrentListMapNoExtraKeys!2742 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851401 () Bool)

(declare-fun e!474921 () Bool)

(assert (=> b!851401 (= e!474921 (and e!474923 mapRes!25892))))

(declare-fun condMapEmpty!25892 () Bool)

(declare-fun mapDefault!25892 () ValueCell!7658)

