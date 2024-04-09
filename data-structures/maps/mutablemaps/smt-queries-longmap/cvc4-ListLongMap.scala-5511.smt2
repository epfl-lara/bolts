; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72882 () Bool)

(assert start!72882)

(declare-fun b_free!13769 () Bool)

(declare-fun b_next!13769 () Bool)

(assert (=> start!72882 (= b_free!13769 (not b_next!13769))))

(declare-fun tp!48811 () Bool)

(declare-fun b_and!22873 () Bool)

(assert (=> start!72882 (= tp!48811 b_and!22873)))

(declare-fun b!845422 () Bool)

(declare-fun e!471973 () Bool)

(declare-fun tp_is_empty!15905 () Bool)

(assert (=> b!845422 (= e!471973 tp_is_empty!15905)))

(declare-fun b!845423 () Bool)

(declare-fun e!471975 () Bool)

(assert (=> b!845423 (= e!471975 tp_is_empty!15905)))

(declare-fun b!845424 () Bool)

(declare-fun e!471972 () Bool)

(assert (=> b!845424 (= e!471972 false)))

(declare-datatypes ((V!26253 0))(
  ( (V!26254 (val!8000 Int)) )
))
(declare-datatypes ((tuple2!10466 0))(
  ( (tuple2!10467 (_1!5243 (_ BitVec 64)) (_2!5243 V!26253)) )
))
(declare-datatypes ((List!16378 0))(
  ( (Nil!16375) (Cons!16374 (h!17505 tuple2!10466) (t!22757 List!16378)) )
))
(declare-datatypes ((ListLongMap!9249 0))(
  ( (ListLongMap!9250 (toList!4640 List!16378)) )
))
(declare-fun lt!381369 () ListLongMap!9249)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48012 0))(
  ( (array!48013 (arr!23033 (Array (_ BitVec 32) (_ BitVec 64))) (size!23474 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48012)

(declare-datatypes ((ValueCell!7513 0))(
  ( (ValueCellFull!7513 (v!10421 V!26253)) (EmptyCell!7513) )
))
(declare-datatypes ((array!48014 0))(
  ( (array!48015 (arr!23034 (Array (_ BitVec 32) ValueCell!7513)) (size!23475 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48014)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26253)

(declare-fun zeroValue!654 () V!26253)

(declare-fun getCurrentListMapNoExtraKeys!2629 (array!48012 array!48014 (_ BitVec 32) (_ BitVec 32) V!26253 V!26253 (_ BitVec 32) Int) ListLongMap!9249)

(assert (=> b!845424 (= lt!381369 (getCurrentListMapNoExtraKeys!2629 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845425 () Bool)

(declare-fun res!574458 () Bool)

(assert (=> b!845425 (=> (not res!574458) (not e!471972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48012 (_ BitVec 32)) Bool)

(assert (=> b!845425 (= res!574458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25457 () Bool)

(declare-fun mapRes!25457 () Bool)

(assert (=> mapIsEmpty!25457 mapRes!25457))

(declare-fun b!845426 () Bool)

(declare-fun res!574456 () Bool)

(assert (=> b!845426 (=> (not res!574456) (not e!471972))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845426 (= res!574456 (validKeyInArray!0 k!854))))

(declare-fun b!845427 () Bool)

(declare-fun res!574455 () Bool)

(assert (=> b!845427 (=> (not res!574455) (not e!471972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845427 (= res!574455 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25457 () Bool)

(declare-fun tp!48812 () Bool)

(assert (=> mapNonEmpty!25457 (= mapRes!25457 (and tp!48812 e!471973))))

(declare-fun mapRest!25457 () (Array (_ BitVec 32) ValueCell!7513))

(declare-fun mapValue!25457 () ValueCell!7513)

(declare-fun mapKey!25457 () (_ BitVec 32))

(assert (=> mapNonEmpty!25457 (= (arr!23034 _values!688) (store mapRest!25457 mapKey!25457 mapValue!25457))))

(declare-fun res!574451 () Bool)

(assert (=> start!72882 (=> (not res!574451) (not e!471972))))

(assert (=> start!72882 (= res!574451 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23474 _keys!868))))))

(assert (=> start!72882 e!471972))

(assert (=> start!72882 true))

(assert (=> start!72882 tp!48811))

(declare-fun array_inv!18284 (array!48012) Bool)

(assert (=> start!72882 (array_inv!18284 _keys!868)))

(declare-fun e!471974 () Bool)

(declare-fun array_inv!18285 (array!48014) Bool)

(assert (=> start!72882 (and (array_inv!18285 _values!688) e!471974)))

(assert (=> start!72882 tp_is_empty!15905))

(declare-fun b!845428 () Bool)

(declare-fun res!574453 () Bool)

(assert (=> b!845428 (=> (not res!574453) (not e!471972))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845428 (= res!574453 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23474 _keys!868))))))

(declare-fun b!845429 () Bool)

(declare-fun res!574457 () Bool)

(assert (=> b!845429 (=> (not res!574457) (not e!471972))))

(assert (=> b!845429 (= res!574457 (and (= (size!23475 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23474 _keys!868) (size!23475 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845430 () Bool)

(assert (=> b!845430 (= e!471974 (and e!471975 mapRes!25457))))

(declare-fun condMapEmpty!25457 () Bool)

(declare-fun mapDefault!25457 () ValueCell!7513)

