; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73644 () Bool)

(assert start!73644)

(declare-fun b_free!14531 () Bool)

(declare-fun b_next!14531 () Bool)

(assert (=> start!73644 (= b_free!14531 (not b_next!14531))))

(declare-fun tp!51097 () Bool)

(declare-fun b_and!24059 () Bool)

(assert (=> start!73644 (= tp!51097 b_and!24059)))

(declare-fun b!861412 () Bool)

(declare-fun e!479982 () Bool)

(declare-fun tp_is_empty!16667 () Bool)

(assert (=> b!861412 (= e!479982 tp_is_empty!16667)))

(declare-fun b!861413 () Bool)

(declare-fun res!585512 () Bool)

(declare-fun e!479983 () Bool)

(assert (=> b!861413 (=> (not res!585512) (not e!479983))))

(declare-datatypes ((array!49482 0))(
  ( (array!49483 (arr!23768 (Array (_ BitVec 32) (_ BitVec 64))) (size!24209 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49482)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49482 (_ BitVec 32)) Bool)

(assert (=> b!861413 (= res!585512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861414 () Bool)

(declare-fun res!585511 () Bool)

(assert (=> b!861414 (=> (not res!585511) (not e!479983))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861414 (= res!585511 (and (= (select (arr!23768 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861415 () Bool)

(declare-fun e!479980 () Bool)

(assert (=> b!861415 (= e!479983 e!479980)))

(declare-fun res!585513 () Bool)

(assert (=> b!861415 (=> (not res!585513) (not e!479980))))

(assert (=> b!861415 (= res!585513 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27269 0))(
  ( (V!27270 (val!8381 Int)) )
))
(declare-datatypes ((ValueCell!7894 0))(
  ( (ValueCellFull!7894 (v!10802 V!27269)) (EmptyCell!7894) )
))
(declare-datatypes ((array!49484 0))(
  ( (array!49485 (arr!23769 (Array (_ BitVec 32) ValueCell!7894)) (size!24210 (_ BitVec 32))) )
))
(declare-fun lt!388524 () array!49484)

(declare-datatypes ((tuple2!11072 0))(
  ( (tuple2!11073 (_1!5546 (_ BitVec 64)) (_2!5546 V!27269)) )
))
(declare-datatypes ((List!16942 0))(
  ( (Nil!16939) (Cons!16938 (h!18069 tuple2!11072) (t!23747 List!16942)) )
))
(declare-datatypes ((ListLongMap!9855 0))(
  ( (ListLongMap!9856 (toList!4943 List!16942)) )
))
(declare-fun lt!388530 () ListLongMap!9855)

(declare-fun minValue!654 () V!27269)

(declare-fun zeroValue!654 () V!27269)

(declare-fun getCurrentListMapNoExtraKeys!2922 (array!49482 array!49484 (_ BitVec 32) (_ BitVec 32) V!27269 V!27269 (_ BitVec 32) Int) ListLongMap!9855)

(assert (=> b!861415 (= lt!388530 (getCurrentListMapNoExtraKeys!2922 _keys!868 lt!388524 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27269)

(declare-fun _values!688 () array!49484)

(assert (=> b!861415 (= lt!388524 (array!49485 (store (arr!23769 _values!688) i!612 (ValueCellFull!7894 v!557)) (size!24210 _values!688)))))

(declare-fun lt!388531 () ListLongMap!9855)

(assert (=> b!861415 (= lt!388531 (getCurrentListMapNoExtraKeys!2922 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26600 () Bool)

(declare-fun mapRes!26600 () Bool)

(assert (=> mapIsEmpty!26600 mapRes!26600))

(declare-fun b!861416 () Bool)

(declare-fun res!585510 () Bool)

(assert (=> b!861416 (=> (not res!585510) (not e!479983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861416 (= res!585510 (validMask!0 mask!1196))))

(declare-fun b!861417 () Bool)

(declare-datatypes ((Unit!29352 0))(
  ( (Unit!29353) )
))
(declare-fun e!479985 () Unit!29352)

(declare-fun Unit!29354 () Unit!29352)

(assert (=> b!861417 (= e!479985 Unit!29354)))

(declare-fun lt!388527 () Unit!29352)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49482 (_ BitVec 32) (_ BitVec 32)) Unit!29352)

(assert (=> b!861417 (= lt!388527 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16943 0))(
  ( (Nil!16940) (Cons!16939 (h!18070 (_ BitVec 64)) (t!23748 List!16943)) )
))
(declare-fun arrayNoDuplicates!0 (array!49482 (_ BitVec 32) List!16943) Bool)

(assert (=> b!861417 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16940)))

(declare-fun lt!388523 () Unit!29352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49482 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29352)

(assert (=> b!861417 (= lt!388523 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861417 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388528 () Unit!29352)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49482 (_ BitVec 64) (_ BitVec 32) List!16943) Unit!29352)

(assert (=> b!861417 (= lt!388528 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16940))))

(assert (=> b!861417 false))

(declare-fun b!861418 () Bool)

(declare-fun Unit!29355 () Unit!29352)

(assert (=> b!861418 (= e!479985 Unit!29355)))

(declare-fun b!861419 () Bool)

(declare-fun e!479984 () Bool)

(assert (=> b!861419 (= e!479984 (and e!479982 mapRes!26600))))

(declare-fun condMapEmpty!26600 () Bool)

(declare-fun mapDefault!26600 () ValueCell!7894)

