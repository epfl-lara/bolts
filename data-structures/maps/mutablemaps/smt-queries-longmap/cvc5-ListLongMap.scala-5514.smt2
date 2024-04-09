; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72896 () Bool)

(assert start!72896)

(declare-fun b_free!13783 () Bool)

(declare-fun b_next!13783 () Bool)

(assert (=> start!72896 (= b_free!13783 (not b_next!13783))))

(declare-fun tp!48854 () Bool)

(declare-fun b_and!22887 () Bool)

(assert (=> start!72896 (= tp!48854 b_and!22887)))

(declare-fun b!845653 () Bool)

(declare-fun res!574622 () Bool)

(declare-fun e!472077 () Bool)

(assert (=> b!845653 (=> (not res!574622) (not e!472077))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48038 0))(
  ( (array!48039 (arr!23046 (Array (_ BitVec 32) (_ BitVec 64))) (size!23487 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48038)

(assert (=> b!845653 (= res!574622 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23487 _keys!868))))))

(declare-fun b!845654 () Bool)

(declare-fun res!574624 () Bool)

(assert (=> b!845654 (=> (not res!574624) (not e!472077))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26273 0))(
  ( (V!26274 (val!8007 Int)) )
))
(declare-datatypes ((ValueCell!7520 0))(
  ( (ValueCellFull!7520 (v!10428 V!26273)) (EmptyCell!7520) )
))
(declare-datatypes ((array!48040 0))(
  ( (array!48041 (arr!23047 (Array (_ BitVec 32) ValueCell!7520)) (size!23488 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48040)

(assert (=> b!845654 (= res!574624 (and (= (size!23488 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23487 _keys!868) (size!23488 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845655 () Bool)

(declare-fun res!574625 () Bool)

(assert (=> b!845655 (=> (not res!574625) (not e!472077))))

(declare-datatypes ((List!16385 0))(
  ( (Nil!16382) (Cons!16381 (h!17512 (_ BitVec 64)) (t!22764 List!16385)) )
))
(declare-fun arrayNoDuplicates!0 (array!48038 (_ BitVec 32) List!16385) Bool)

(assert (=> b!845655 (= res!574625 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16382))))

(declare-fun mapNonEmpty!25478 () Bool)

(declare-fun mapRes!25478 () Bool)

(declare-fun tp!48853 () Bool)

(declare-fun e!472079 () Bool)

(assert (=> mapNonEmpty!25478 (= mapRes!25478 (and tp!48853 e!472079))))

(declare-fun mapRest!25478 () (Array (_ BitVec 32) ValueCell!7520))

(declare-fun mapKey!25478 () (_ BitVec 32))

(declare-fun mapValue!25478 () ValueCell!7520)

(assert (=> mapNonEmpty!25478 (= (arr!23047 _values!688) (store mapRest!25478 mapKey!25478 mapValue!25478))))

(declare-fun res!574620 () Bool)

(assert (=> start!72896 (=> (not res!574620) (not e!472077))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72896 (= res!574620 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23487 _keys!868))))))

(assert (=> start!72896 e!472077))

(assert (=> start!72896 true))

(assert (=> start!72896 tp!48854))

(declare-fun array_inv!18292 (array!48038) Bool)

(assert (=> start!72896 (array_inv!18292 _keys!868)))

(declare-fun e!472076 () Bool)

(declare-fun array_inv!18293 (array!48040) Bool)

(assert (=> start!72896 (and (array_inv!18293 _values!688) e!472076)))

(declare-fun tp_is_empty!15919 () Bool)

(assert (=> start!72896 tp_is_empty!15919))

(declare-fun b!845656 () Bool)

(assert (=> b!845656 (= e!472079 tp_is_empty!15919)))

(declare-fun b!845657 () Bool)

(declare-fun res!574626 () Bool)

(assert (=> b!845657 (=> (not res!574626) (not e!472077))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845657 (= res!574626 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!25478 () Bool)

(assert (=> mapIsEmpty!25478 mapRes!25478))

(declare-fun b!845658 () Bool)

(assert (=> b!845658 (= e!472077 false)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10474 0))(
  ( (tuple2!10475 (_1!5247 (_ BitVec 64)) (_2!5247 V!26273)) )
))
(declare-datatypes ((List!16386 0))(
  ( (Nil!16383) (Cons!16382 (h!17513 tuple2!10474) (t!22765 List!16386)) )
))
(declare-datatypes ((ListLongMap!9257 0))(
  ( (ListLongMap!9258 (toList!4644 List!16386)) )
))
(declare-fun lt!381390 () ListLongMap!9257)

(declare-fun minValue!654 () V!26273)

(declare-fun zeroValue!654 () V!26273)

(declare-fun getCurrentListMapNoExtraKeys!2633 (array!48038 array!48040 (_ BitVec 32) (_ BitVec 32) V!26273 V!26273 (_ BitVec 32) Int) ListLongMap!9257)

(assert (=> b!845658 (= lt!381390 (getCurrentListMapNoExtraKeys!2633 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845659 () Bool)

(declare-fun e!472080 () Bool)

(assert (=> b!845659 (= e!472076 (and e!472080 mapRes!25478))))

(declare-fun condMapEmpty!25478 () Bool)

(declare-fun mapDefault!25478 () ValueCell!7520)

