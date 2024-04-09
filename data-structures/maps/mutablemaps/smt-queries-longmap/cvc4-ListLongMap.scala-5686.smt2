; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73932 () Bool)

(assert start!73932)

(declare-fun b_free!14819 () Bool)

(declare-fun b_next!14819 () Bool)

(assert (=> start!73932 (= b_free!14819 (not b_next!14819))))

(declare-fun tp!51962 () Bool)

(declare-fun b_and!24589 () Bool)

(assert (=> start!73932 (= tp!51962 b_and!24589)))

(declare-fun b!868245 () Bool)

(declare-fun res!590086 () Bool)

(declare-fun e!483619 () Bool)

(assert (=> b!868245 (=> (not res!590086) (not e!483619))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27653 0))(
  ( (V!27654 (val!8525 Int)) )
))
(declare-datatypes ((ValueCell!8038 0))(
  ( (ValueCellFull!8038 (v!10946 V!27653)) (EmptyCell!8038) )
))
(declare-datatypes ((array!50046 0))(
  ( (array!50047 (arr!24050 (Array (_ BitVec 32) ValueCell!8038)) (size!24491 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50046)

(declare-datatypes ((array!50048 0))(
  ( (array!50049 (arr!24051 (Array (_ BitVec 32) (_ BitVec 64))) (size!24492 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50048)

(assert (=> b!868245 (= res!590086 (and (= (size!24491 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24492 _keys!868) (size!24491 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27032 () Bool)

(declare-fun mapRes!27032 () Bool)

(declare-fun tp!51961 () Bool)

(declare-fun e!483616 () Bool)

(assert (=> mapNonEmpty!27032 (= mapRes!27032 (and tp!51961 e!483616))))

(declare-fun mapKey!27032 () (_ BitVec 32))

(declare-fun mapRest!27032 () (Array (_ BitVec 32) ValueCell!8038))

(declare-fun mapValue!27032 () ValueCell!8038)

(assert (=> mapNonEmpty!27032 (= (arr!24050 _values!688) (store mapRest!27032 mapKey!27032 mapValue!27032))))

(declare-fun b!868246 () Bool)

(declare-fun res!590085 () Bool)

(assert (=> b!868246 (=> (not res!590085) (not e!483619))))

(declare-datatypes ((List!17176 0))(
  ( (Nil!17173) (Cons!17172 (h!18303 (_ BitVec 64)) (t!24221 List!17176)) )
))
(declare-fun arrayNoDuplicates!0 (array!50048 (_ BitVec 32) List!17176) Bool)

(assert (=> b!868246 (= res!590085 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17173))))

(declare-fun b!868247 () Bool)

(declare-fun res!590090 () Bool)

(assert (=> b!868247 (=> (not res!590090) (not e!483619))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868247 (= res!590090 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24492 _keys!868))))))

(declare-fun b!868248 () Bool)

(declare-fun e!483617 () Bool)

(declare-fun tp_is_empty!16955 () Bool)

(assert (=> b!868248 (= e!483617 tp_is_empty!16955)))

(declare-fun b!868249 () Bool)

(declare-fun res!590091 () Bool)

(assert (=> b!868249 (=> (not res!590091) (not e!483619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868249 (= res!590091 (validMask!0 mask!1196))))

(declare-fun b!868250 () Bool)

(declare-fun e!483621 () Bool)

(assert (=> b!868250 (= e!483621 (and e!483617 mapRes!27032))))

(declare-fun condMapEmpty!27032 () Bool)

(declare-fun mapDefault!27032 () ValueCell!8038)

