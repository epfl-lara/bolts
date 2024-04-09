; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72584 () Bool)

(assert start!72584)

(declare-fun b_free!13741 () Bool)

(declare-fun b_next!13741 () Bool)

(assert (=> start!72584 (= b_free!13741 (not b_next!13741))))

(declare-fun tp!48323 () Bool)

(declare-fun b_and!22845 () Bool)

(assert (=> start!72584 (= tp!48323 b_and!22845)))

(declare-fun mapNonEmpty!25010 () Bool)

(declare-fun mapRes!25010 () Bool)

(declare-fun tp!48322 () Bool)

(declare-fun e!469731 () Bool)

(assert (=> mapNonEmpty!25010 (= mapRes!25010 (and tp!48322 e!469731))))

(declare-datatypes ((V!25857 0))(
  ( (V!25858 (val!7851 Int)) )
))
(declare-datatypes ((ValueCell!7364 0))(
  ( (ValueCellFull!7364 (v!10272 V!25857)) (EmptyCell!7364) )
))
(declare-fun mapValue!25010 () ValueCell!7364)

(declare-fun mapKey!25010 () (_ BitVec 32))

(declare-fun mapRest!25010 () (Array (_ BitVec 32) ValueCell!7364))

(declare-datatypes ((array!47456 0))(
  ( (array!47457 (arr!22755 (Array (_ BitVec 32) ValueCell!7364)) (size!23196 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47456)

(assert (=> mapNonEmpty!25010 (= (arr!22755 _values!688) (store mapRest!25010 mapKey!25010 mapValue!25010))))

(declare-fun b!842111 () Bool)

(declare-fun res!572496 () Bool)

(declare-fun e!469732 () Bool)

(assert (=> b!842111 (=> (not res!572496) (not e!469732))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47458 0))(
  ( (array!47459 (arr!22756 (Array (_ BitVec 32) (_ BitVec 64))) (size!23197 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47458)

(assert (=> b!842111 (= res!572496 (and (= (size!23196 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23197 _keys!868) (size!23196 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842112 () Bool)

(declare-fun res!572499 () Bool)

(assert (=> b!842112 (=> (not res!572499) (not e!469732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47458 (_ BitVec 32)) Bool)

(assert (=> b!842112 (= res!572499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37453 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25857)

(declare-datatypes ((tuple2!10444 0))(
  ( (tuple2!10445 (_1!5232 (_ BitVec 64)) (_2!5232 V!25857)) )
))
(declare-datatypes ((List!16266 0))(
  ( (Nil!16263) (Cons!16262 (h!17393 tuple2!10444) (t!22645 List!16266)) )
))
(declare-datatypes ((ListLongMap!9227 0))(
  ( (ListLongMap!9228 (toList!4629 List!16266)) )
))
(declare-fun call!37456 () ListLongMap!9227)

(declare-fun zeroValue!654 () V!25857)

(declare-fun getCurrentListMapNoExtraKeys!2618 (array!47458 array!47456 (_ BitVec 32) (_ BitVec 32) V!25857 V!25857 (_ BitVec 32) Int) ListLongMap!9227)

(assert (=> bm!37453 (= call!37456 (getCurrentListMapNoExtraKeys!2618 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842113 () Bool)

(declare-fun e!469734 () Bool)

(declare-fun e!469730 () Bool)

(assert (=> b!842113 (= e!469734 (and e!469730 mapRes!25010))))

(declare-fun condMapEmpty!25010 () Bool)

(declare-fun mapDefault!25010 () ValueCell!7364)

