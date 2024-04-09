; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73064 () Bool)

(assert start!73064)

(declare-fun b_free!13951 () Bool)

(declare-fun b_next!13951 () Bool)

(assert (=> start!73064 (= b_free!13951 (not b_next!13951))))

(declare-fun tp!49357 () Bool)

(declare-fun b_and!23079 () Bool)

(assert (=> start!73064 (= tp!49357 b_and!23079)))

(declare-fun b!848853 () Bool)

(declare-fun e!473624 () Bool)

(declare-fun tp_is_empty!16087 () Bool)

(assert (=> b!848853 (= e!473624 tp_is_empty!16087)))

(declare-fun res!576810 () Bool)

(declare-fun e!473621 () Bool)

(assert (=> start!73064 (=> (not res!576810) (not e!473621))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48366 0))(
  ( (array!48367 (arr!23210 (Array (_ BitVec 32) (_ BitVec 64))) (size!23651 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48366)

(assert (=> start!73064 (= res!576810 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23651 _keys!868))))))

(assert (=> start!73064 e!473621))

(assert (=> start!73064 tp_is_empty!16087))

(assert (=> start!73064 true))

(assert (=> start!73064 tp!49357))

(declare-fun array_inv!18410 (array!48366) Bool)

(assert (=> start!73064 (array_inv!18410 _keys!868)))

(declare-datatypes ((V!26497 0))(
  ( (V!26498 (val!8091 Int)) )
))
(declare-datatypes ((ValueCell!7604 0))(
  ( (ValueCellFull!7604 (v!10512 V!26497)) (EmptyCell!7604) )
))
(declare-datatypes ((array!48368 0))(
  ( (array!48369 (arr!23211 (Array (_ BitVec 32) ValueCell!7604)) (size!23652 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48368)

(declare-fun e!473623 () Bool)

(declare-fun array_inv!18411 (array!48368) Bool)

(assert (=> start!73064 (and (array_inv!18411 _values!688) e!473623)))

(declare-fun b!848854 () Bool)

(declare-fun e!473625 () Bool)

(assert (=> b!848854 (= e!473621 e!473625)))

(declare-fun res!576806 () Bool)

(assert (=> b!848854 (=> (not res!576806) (not e!473625))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848854 (= res!576806 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10600 0))(
  ( (tuple2!10601 (_1!5310 (_ BitVec 64)) (_2!5310 V!26497)) )
))
(declare-datatypes ((List!16503 0))(
  ( (Nil!16500) (Cons!16499 (h!17630 tuple2!10600) (t!22908 List!16503)) )
))
(declare-datatypes ((ListLongMap!9383 0))(
  ( (ListLongMap!9384 (toList!4707 List!16503)) )
))
(declare-fun lt!382109 () ListLongMap!9383)

(declare-fun minValue!654 () V!26497)

(declare-fun zeroValue!654 () V!26497)

(declare-fun lt!382110 () array!48368)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2695 (array!48366 array!48368 (_ BitVec 32) (_ BitVec 32) V!26497 V!26497 (_ BitVec 32) Int) ListLongMap!9383)

(assert (=> b!848854 (= lt!382109 (getCurrentListMapNoExtraKeys!2695 _keys!868 lt!382110 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26497)

(assert (=> b!848854 (= lt!382110 (array!48369 (store (arr!23211 _values!688) i!612 (ValueCellFull!7604 v!557)) (size!23652 _values!688)))))

(declare-fun lt!382107 () ListLongMap!9383)

(assert (=> b!848854 (= lt!382107 (getCurrentListMapNoExtraKeys!2695 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848855 () Bool)

(declare-fun mapRes!25730 () Bool)

(assert (=> b!848855 (= e!473623 (and e!473624 mapRes!25730))))

(declare-fun condMapEmpty!25730 () Bool)

(declare-fun mapDefault!25730 () ValueCell!7604)

