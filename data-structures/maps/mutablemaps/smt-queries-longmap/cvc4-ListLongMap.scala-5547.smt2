; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73098 () Bool)

(assert start!73098)

(declare-fun b_free!13985 () Bool)

(declare-fun b_next!13985 () Bool)

(assert (=> start!73098 (= b_free!13985 (not b_next!13985))))

(declare-fun tp!49459 () Bool)

(declare-fun b_and!23147 () Bool)

(assert (=> start!73098 (= tp!49459 b_and!23147)))

(declare-fun b!849652 () Bool)

(declare-fun res!577320 () Bool)

(declare-fun e!474029 () Bool)

(assert (=> b!849652 (=> (not res!577320) (not e!474029))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48434 0))(
  ( (array!48435 (arr!23244 (Array (_ BitVec 32) (_ BitVec 64))) (size!23685 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48434)

(assert (=> b!849652 (= res!577320 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23685 _keys!868))))))

(declare-fun b!849653 () Bool)

(declare-fun res!577319 () Bool)

(assert (=> b!849653 (=> (not res!577319) (not e!474029))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849653 (= res!577319 (validKeyInArray!0 k!854))))

(declare-fun b!849654 () Bool)

(declare-fun res!577313 () Bool)

(assert (=> b!849654 (=> (not res!577313) (not e!474029))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!849654 (= res!577313 (and (= (select (arr!23244 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849655 () Bool)

(declare-fun res!577315 () Bool)

(assert (=> b!849655 (=> (not res!577315) (not e!474029))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48434 (_ BitVec 32)) Bool)

(assert (=> b!849655 (= res!577315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25781 () Bool)

(declare-fun mapRes!25781 () Bool)

(declare-fun tp!49460 () Bool)

(declare-fun e!474034 () Bool)

(assert (=> mapNonEmpty!25781 (= mapRes!25781 (and tp!49460 e!474034))))

(declare-datatypes ((V!26541 0))(
  ( (V!26542 (val!8108 Int)) )
))
(declare-datatypes ((ValueCell!7621 0))(
  ( (ValueCellFull!7621 (v!10529 V!26541)) (EmptyCell!7621) )
))
(declare-fun mapRest!25781 () (Array (_ BitVec 32) ValueCell!7621))

(declare-fun mapKey!25781 () (_ BitVec 32))

(declare-fun mapValue!25781 () ValueCell!7621)

(declare-datatypes ((array!48436 0))(
  ( (array!48437 (arr!23245 (Array (_ BitVec 32) ValueCell!7621)) (size!23686 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48436)

(assert (=> mapNonEmpty!25781 (= (arr!23245 _values!688) (store mapRest!25781 mapKey!25781 mapValue!25781))))

(declare-fun b!849656 () Bool)

(declare-fun e!474035 () Bool)

(assert (=> b!849656 (= e!474035 true)))

(declare-datatypes ((tuple2!10632 0))(
  ( (tuple2!10633 (_1!5326 (_ BitVec 64)) (_2!5326 V!26541)) )
))
(declare-fun lt!382367 () tuple2!10632)

(declare-datatypes ((List!16532 0))(
  ( (Nil!16529) (Cons!16528 (h!17659 tuple2!10632) (t!22971 List!16532)) )
))
(declare-datatypes ((ListLongMap!9415 0))(
  ( (ListLongMap!9416 (toList!4723 List!16532)) )
))
(declare-fun lt!382359 () ListLongMap!9415)

(declare-fun lt!382361 () V!26541)

(declare-fun +!2068 (ListLongMap!9415 tuple2!10632) ListLongMap!9415)

(assert (=> b!849656 (= (+!2068 lt!382359 lt!382367) (+!2068 (+!2068 lt!382359 (tuple2!10633 k!854 lt!382361)) lt!382367))))

(declare-fun lt!382365 () V!26541)

(assert (=> b!849656 (= lt!382367 (tuple2!10633 k!854 lt!382365))))

(declare-datatypes ((Unit!28986 0))(
  ( (Unit!28987) )
))
(declare-fun lt!382363 () Unit!28986)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!256 (ListLongMap!9415 (_ BitVec 64) V!26541 V!26541) Unit!28986)

(assert (=> b!849656 (= lt!382363 (addSameAsAddTwiceSameKeyDiffValues!256 lt!382359 k!854 lt!382361 lt!382365))))

(declare-fun lt!382368 () V!26541)

(declare-fun get!12248 (ValueCell!7621 V!26541) V!26541)

(assert (=> b!849656 (= lt!382361 (get!12248 (select (arr!23245 _values!688) from!1053) lt!382368))))

(declare-fun lt!382364 () ListLongMap!9415)

(assert (=> b!849656 (= lt!382364 (+!2068 lt!382359 (tuple2!10633 (select (arr!23244 _keys!868) from!1053) lt!382365)))))

(declare-fun v!557 () V!26541)

(assert (=> b!849656 (= lt!382365 (get!12248 (select (store (arr!23245 _values!688) i!612 (ValueCellFull!7621 v!557)) from!1053) lt!382368))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1004 (Int (_ BitVec 64)) V!26541)

(assert (=> b!849656 (= lt!382368 (dynLambda!1004 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26541)

(declare-fun zeroValue!654 () V!26541)

(declare-fun lt!382362 () array!48436)

(declare-fun getCurrentListMapNoExtraKeys!2711 (array!48434 array!48436 (_ BitVec 32) (_ BitVec 32) V!26541 V!26541 (_ BitVec 32) Int) ListLongMap!9415)

(assert (=> b!849656 (= lt!382359 (getCurrentListMapNoExtraKeys!2711 _keys!868 lt!382362 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849657 () Bool)

(declare-fun e!474033 () Bool)

(declare-fun e!474031 () Bool)

(assert (=> b!849657 (= e!474033 (and e!474031 mapRes!25781))))

(declare-fun condMapEmpty!25781 () Bool)

(declare-fun mapDefault!25781 () ValueCell!7621)

