; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74590 () Bool)

(assert start!74590)

(declare-fun b_free!15251 () Bool)

(declare-fun b_next!15251 () Bool)

(assert (=> start!74590 (= b_free!15251 (not b_next!15251))))

(declare-fun tp!53435 () Bool)

(declare-fun b_and!25145 () Bool)

(assert (=> start!74590 (= tp!53435 b_and!25145)))

(declare-fun b!878327 () Bool)

(declare-fun e!488864 () Bool)

(declare-fun tp_is_empty!17495 () Bool)

(assert (=> b!878327 (= e!488864 tp_is_empty!17495)))

(declare-fun res!596823 () Bool)

(declare-fun e!488868 () Bool)

(assert (=> start!74590 (=> (not res!596823) (not e!488868))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51096 0))(
  ( (array!51097 (arr!24570 (Array (_ BitVec 32) (_ BitVec 64))) (size!25011 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51096)

(assert (=> start!74590 (= res!596823 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25011 _keys!868))))))

(assert (=> start!74590 e!488868))

(assert (=> start!74590 tp_is_empty!17495))

(assert (=> start!74590 true))

(assert (=> start!74590 tp!53435))

(declare-fun array_inv!19342 (array!51096) Bool)

(assert (=> start!74590 (array_inv!19342 _keys!868)))

(declare-datatypes ((V!28373 0))(
  ( (V!28374 (val!8795 Int)) )
))
(declare-datatypes ((ValueCell!8308 0))(
  ( (ValueCellFull!8308 (v!11231 V!28373)) (EmptyCell!8308) )
))
(declare-datatypes ((array!51098 0))(
  ( (array!51099 (arr!24571 (Array (_ BitVec 32) ValueCell!8308)) (size!25012 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51098)

(declare-fun e!488867 () Bool)

(declare-fun array_inv!19343 (array!51098) Bool)

(assert (=> start!74590 (and (array_inv!19343 _values!688) e!488867)))

(declare-fun b!878328 () Bool)

(assert (=> b!878328 (= e!488868 false)))

(declare-fun v!557 () V!28373)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28373)

(declare-fun zeroValue!654 () V!28373)

(declare-datatypes ((tuple2!11646 0))(
  ( (tuple2!11647 (_1!5833 (_ BitVec 64)) (_2!5833 V!28373)) )
))
(declare-datatypes ((List!17529 0))(
  ( (Nil!17526) (Cons!17525 (h!18656 tuple2!11646) (t!24626 List!17529)) )
))
(declare-datatypes ((ListLongMap!10429 0))(
  ( (ListLongMap!10430 (toList!5230 List!17529)) )
))
(declare-fun lt!397207 () ListLongMap!10429)

(declare-fun getCurrentListMapNoExtraKeys!3192 (array!51096 array!51098 (_ BitVec 32) (_ BitVec 32) V!28373 V!28373 (_ BitVec 32) Int) ListLongMap!10429)

(assert (=> b!878328 (= lt!397207 (getCurrentListMapNoExtraKeys!3192 _keys!868 (array!51099 (store (arr!24571 _values!688) i!612 (ValueCellFull!8308 v!557)) (size!25012 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397208 () ListLongMap!10429)

(assert (=> b!878328 (= lt!397208 (getCurrentListMapNoExtraKeys!3192 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878329 () Bool)

(declare-fun res!596827 () Bool)

(assert (=> b!878329 (=> (not res!596827) (not e!488868))))

(assert (=> b!878329 (= res!596827 (and (= (size!25012 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25011 _keys!868) (size!25012 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878330 () Bool)

(declare-fun res!596828 () Bool)

(assert (=> b!878330 (=> (not res!596828) (not e!488868))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878330 (= res!596828 (validKeyInArray!0 k!854))))

(declare-fun b!878331 () Bool)

(declare-fun res!596824 () Bool)

(assert (=> b!878331 (=> (not res!596824) (not e!488868))))

(assert (=> b!878331 (= res!596824 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25011 _keys!868))))))

(declare-fun b!878332 () Bool)

(declare-fun res!596822 () Bool)

(assert (=> b!878332 (=> (not res!596822) (not e!488868))))

(assert (=> b!878332 (= res!596822 (and (= (select (arr!24570 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27858 () Bool)

(declare-fun mapRes!27858 () Bool)

(declare-fun tp!53436 () Bool)

(assert (=> mapNonEmpty!27858 (= mapRes!27858 (and tp!53436 e!488864))))

(declare-fun mapRest!27858 () (Array (_ BitVec 32) ValueCell!8308))

(declare-fun mapKey!27858 () (_ BitVec 32))

(declare-fun mapValue!27858 () ValueCell!8308)

(assert (=> mapNonEmpty!27858 (= (arr!24571 _values!688) (store mapRest!27858 mapKey!27858 mapValue!27858))))

(declare-fun b!878333 () Bool)

(declare-fun res!596829 () Bool)

(assert (=> b!878333 (=> (not res!596829) (not e!488868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878333 (= res!596829 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27858 () Bool)

(assert (=> mapIsEmpty!27858 mapRes!27858))

(declare-fun b!878334 () Bool)

(declare-fun res!596826 () Bool)

(assert (=> b!878334 (=> (not res!596826) (not e!488868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51096 (_ BitVec 32)) Bool)

(assert (=> b!878334 (= res!596826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878335 () Bool)

(declare-fun e!488866 () Bool)

(assert (=> b!878335 (= e!488867 (and e!488866 mapRes!27858))))

(declare-fun condMapEmpty!27858 () Bool)

(declare-fun mapDefault!27858 () ValueCell!8308)

