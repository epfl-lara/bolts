; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74544 () Bool)

(assert start!74544)

(declare-fun b_free!15205 () Bool)

(declare-fun b_next!15205 () Bool)

(assert (=> start!74544 (= b_free!15205 (not b_next!15205))))

(declare-fun tp!53297 () Bool)

(declare-fun b_and!25099 () Bool)

(assert (=> start!74544 (= tp!53297 b_and!25099)))

(declare-fun b!877568 () Bool)

(declare-fun res!596276 () Bool)

(declare-fun e!488523 () Bool)

(assert (=> b!877568 (=> (not res!596276) (not e!488523))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877568 (= res!596276 (validMask!0 mask!1196))))

(declare-fun b!877569 () Bool)

(declare-fun res!596271 () Bool)

(assert (=> b!877569 (=> (not res!596271) (not e!488523))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51008 0))(
  ( (array!51009 (arr!24526 (Array (_ BitVec 32) (_ BitVec 64))) (size!24967 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51008)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877569 (= res!596271 (and (= (select (arr!24526 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877570 () Bool)

(assert (=> b!877570 (= e!488523 false)))

(declare-datatypes ((V!28313 0))(
  ( (V!28314 (val!8772 Int)) )
))
(declare-fun v!557 () V!28313)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11614 0))(
  ( (tuple2!11615 (_1!5817 (_ BitVec 64)) (_2!5817 V!28313)) )
))
(declare-datatypes ((List!17496 0))(
  ( (Nil!17493) (Cons!17492 (h!18623 tuple2!11614) (t!24593 List!17496)) )
))
(declare-datatypes ((ListLongMap!10397 0))(
  ( (ListLongMap!10398 (toList!5214 List!17496)) )
))
(declare-fun lt!397070 () ListLongMap!10397)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8285 0))(
  ( (ValueCellFull!8285 (v!11208 V!28313)) (EmptyCell!8285) )
))
(declare-datatypes ((array!51010 0))(
  ( (array!51011 (arr!24527 (Array (_ BitVec 32) ValueCell!8285)) (size!24968 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51010)

(declare-fun minValue!654 () V!28313)

(declare-fun zeroValue!654 () V!28313)

(declare-fun getCurrentListMapNoExtraKeys!3176 (array!51008 array!51010 (_ BitVec 32) (_ BitVec 32) V!28313 V!28313 (_ BitVec 32) Int) ListLongMap!10397)

(assert (=> b!877570 (= lt!397070 (getCurrentListMapNoExtraKeys!3176 _keys!868 (array!51011 (store (arr!24527 _values!688) i!612 (ValueCellFull!8285 v!557)) (size!24968 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397069 () ListLongMap!10397)

(assert (=> b!877570 (= lt!397069 (getCurrentListMapNoExtraKeys!3176 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27789 () Bool)

(declare-fun mapRes!27789 () Bool)

(declare-fun tp!53298 () Bool)

(declare-fun e!488521 () Bool)

(assert (=> mapNonEmpty!27789 (= mapRes!27789 (and tp!53298 e!488521))))

(declare-fun mapKey!27789 () (_ BitVec 32))

(declare-fun mapRest!27789 () (Array (_ BitVec 32) ValueCell!8285))

(declare-fun mapValue!27789 () ValueCell!8285)

(assert (=> mapNonEmpty!27789 (= (arr!24527 _values!688) (store mapRest!27789 mapKey!27789 mapValue!27789))))

(declare-fun res!596272 () Bool)

(assert (=> start!74544 (=> (not res!596272) (not e!488523))))

(assert (=> start!74544 (= res!596272 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24967 _keys!868))))))

(assert (=> start!74544 e!488523))

(declare-fun tp_is_empty!17449 () Bool)

(assert (=> start!74544 tp_is_empty!17449))

(assert (=> start!74544 true))

(assert (=> start!74544 tp!53297))

(declare-fun array_inv!19316 (array!51008) Bool)

(assert (=> start!74544 (array_inv!19316 _keys!868)))

(declare-fun e!488522 () Bool)

(declare-fun array_inv!19317 (array!51010) Bool)

(assert (=> start!74544 (and (array_inv!19317 _values!688) e!488522)))

(declare-fun b!877571 () Bool)

(declare-fun res!596277 () Bool)

(assert (=> b!877571 (=> (not res!596277) (not e!488523))))

(assert (=> b!877571 (= res!596277 (and (= (size!24968 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24967 _keys!868) (size!24968 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877572 () Bool)

(declare-fun res!596270 () Bool)

(assert (=> b!877572 (=> (not res!596270) (not e!488523))))

(declare-datatypes ((List!17497 0))(
  ( (Nil!17494) (Cons!17493 (h!18624 (_ BitVec 64)) (t!24594 List!17497)) )
))
(declare-fun arrayNoDuplicates!0 (array!51008 (_ BitVec 32) List!17497) Bool)

(assert (=> b!877572 (= res!596270 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17494))))

(declare-fun b!877573 () Bool)

(declare-fun res!596273 () Bool)

(assert (=> b!877573 (=> (not res!596273) (not e!488523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877573 (= res!596273 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27789 () Bool)

(assert (=> mapIsEmpty!27789 mapRes!27789))

(declare-fun b!877574 () Bool)

(declare-fun e!488519 () Bool)

(assert (=> b!877574 (= e!488522 (and e!488519 mapRes!27789))))

(declare-fun condMapEmpty!27789 () Bool)

(declare-fun mapDefault!27789 () ValueCell!8285)

