; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72956 () Bool)

(assert start!72956)

(declare-fun b_free!13843 () Bool)

(declare-fun b_next!13843 () Bool)

(assert (=> start!72956 (= b_free!13843 (not b_next!13843))))

(declare-fun tp!49033 () Bool)

(declare-fun b_and!22947 () Bool)

(assert (=> start!72956 (= tp!49033 b_and!22947)))

(declare-fun mapNonEmpty!25568 () Bool)

(declare-fun mapRes!25568 () Bool)

(declare-fun tp!49034 () Bool)

(declare-fun e!472528 () Bool)

(assert (=> mapNonEmpty!25568 (= mapRes!25568 (and tp!49034 e!472528))))

(declare-datatypes ((V!26353 0))(
  ( (V!26354 (val!8037 Int)) )
))
(declare-datatypes ((ValueCell!7550 0))(
  ( (ValueCellFull!7550 (v!10458 V!26353)) (EmptyCell!7550) )
))
(declare-fun mapRest!25568 () (Array (_ BitVec 32) ValueCell!7550))

(declare-fun mapKey!25568 () (_ BitVec 32))

(declare-fun mapValue!25568 () ValueCell!7550)

(declare-datatypes ((array!48156 0))(
  ( (array!48157 (arr!23105 (Array (_ BitVec 32) ValueCell!7550)) (size!23546 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48156)

(assert (=> mapNonEmpty!25568 (= (arr!23105 _values!688) (store mapRest!25568 mapKey!25568 mapValue!25568))))

(declare-fun b!846643 () Bool)

(declare-fun res!575340 () Bool)

(declare-fun e!472526 () Bool)

(assert (=> b!846643 (=> (not res!575340) (not e!472526))))

(declare-datatypes ((array!48158 0))(
  ( (array!48159 (arr!23106 (Array (_ BitVec 32) (_ BitVec 64))) (size!23547 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48158)

(declare-datatypes ((List!16427 0))(
  ( (Nil!16424) (Cons!16423 (h!17554 (_ BitVec 64)) (t!22806 List!16427)) )
))
(declare-fun arrayNoDuplicates!0 (array!48158 (_ BitVec 32) List!16427) Bool)

(assert (=> b!846643 (= res!575340 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16424))))

(declare-fun res!575342 () Bool)

(assert (=> start!72956 (=> (not res!575342) (not e!472526))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72956 (= res!575342 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23547 _keys!868))))))

(assert (=> start!72956 e!472526))

(declare-fun tp_is_empty!15979 () Bool)

(assert (=> start!72956 tp_is_empty!15979))

(assert (=> start!72956 true))

(assert (=> start!72956 tp!49033))

(declare-fun array_inv!18338 (array!48158) Bool)

(assert (=> start!72956 (array_inv!18338 _keys!868)))

(declare-fun e!472527 () Bool)

(declare-fun array_inv!18339 (array!48156) Bool)

(assert (=> start!72956 (and (array_inv!18339 _values!688) e!472527)))

(declare-fun b!846644 () Bool)

(assert (=> b!846644 (= e!472526 false)))

(declare-fun v!557 () V!26353)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10516 0))(
  ( (tuple2!10517 (_1!5268 (_ BitVec 64)) (_2!5268 V!26353)) )
))
(declare-datatypes ((List!16428 0))(
  ( (Nil!16425) (Cons!16424 (h!17555 tuple2!10516) (t!22807 List!16428)) )
))
(declare-datatypes ((ListLongMap!9299 0))(
  ( (ListLongMap!9300 (toList!4665 List!16428)) )
))
(declare-fun lt!381546 () ListLongMap!9299)

(declare-fun minValue!654 () V!26353)

(declare-fun zeroValue!654 () V!26353)

(declare-fun getCurrentListMapNoExtraKeys!2654 (array!48158 array!48156 (_ BitVec 32) (_ BitVec 32) V!26353 V!26353 (_ BitVec 32) Int) ListLongMap!9299)

(assert (=> b!846644 (= lt!381546 (getCurrentListMapNoExtraKeys!2654 _keys!868 (array!48157 (store (arr!23105 _values!688) i!612 (ValueCellFull!7550 v!557)) (size!23546 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381545 () ListLongMap!9299)

(assert (=> b!846644 (= lt!381545 (getCurrentListMapNoExtraKeys!2654 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846645 () Bool)

(declare-fun res!575344 () Bool)

(assert (=> b!846645 (=> (not res!575344) (not e!472526))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!846645 (= res!575344 (and (= (select (arr!23106 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!846646 () Bool)

(declare-fun res!575345 () Bool)

(assert (=> b!846646 (=> (not res!575345) (not e!472526))))

(assert (=> b!846646 (= res!575345 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23547 _keys!868))))))

(declare-fun b!846647 () Bool)

(declare-fun res!575339 () Bool)

(assert (=> b!846647 (=> (not res!575339) (not e!472526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846647 (= res!575339 (validMask!0 mask!1196))))

(declare-fun b!846648 () Bool)

(assert (=> b!846648 (= e!472528 tp_is_empty!15979)))

(declare-fun mapIsEmpty!25568 () Bool)

(assert (=> mapIsEmpty!25568 mapRes!25568))

(declare-fun b!846649 () Bool)

(declare-fun res!575343 () Bool)

(assert (=> b!846649 (=> (not res!575343) (not e!472526))))

(assert (=> b!846649 (= res!575343 (and (= (size!23546 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23547 _keys!868) (size!23546 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846650 () Bool)

(declare-fun e!472529 () Bool)

(assert (=> b!846650 (= e!472527 (and e!472529 mapRes!25568))))

(declare-fun condMapEmpty!25568 () Bool)

(declare-fun mapDefault!25568 () ValueCell!7550)

