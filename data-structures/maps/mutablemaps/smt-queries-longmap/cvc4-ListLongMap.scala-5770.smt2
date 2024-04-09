; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74554 () Bool)

(assert start!74554)

(declare-fun b_free!15215 () Bool)

(declare-fun b_next!15215 () Bool)

(assert (=> start!74554 (= b_free!15215 (not b_next!15215))))

(declare-fun tp!53327 () Bool)

(declare-fun b_and!25109 () Bool)

(assert (=> start!74554 (= tp!53327 b_and!25109)))

(declare-fun b!877733 () Bool)

(declare-fun res!596390 () Bool)

(declare-fun e!488597 () Bool)

(assert (=> b!877733 (=> (not res!596390) (not e!488597))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51028 0))(
  ( (array!51029 (arr!24536 (Array (_ BitVec 32) (_ BitVec 64))) (size!24977 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51028)

(declare-datatypes ((V!28325 0))(
  ( (V!28326 (val!8777 Int)) )
))
(declare-datatypes ((ValueCell!8290 0))(
  ( (ValueCellFull!8290 (v!11213 V!28325)) (EmptyCell!8290) )
))
(declare-datatypes ((array!51030 0))(
  ( (array!51031 (arr!24537 (Array (_ BitVec 32) ValueCell!8290)) (size!24978 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51030)

(assert (=> b!877733 (= res!596390 (and (= (size!24978 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24977 _keys!868) (size!24978 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877734 () Bool)

(declare-fun e!488596 () Bool)

(declare-fun tp_is_empty!17459 () Bool)

(assert (=> b!877734 (= e!488596 tp_is_empty!17459)))

(declare-fun b!877735 () Bool)

(assert (=> b!877735 (= e!488597 false)))

(declare-fun v!557 () V!28325)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11624 0))(
  ( (tuple2!11625 (_1!5822 (_ BitVec 64)) (_2!5822 V!28325)) )
))
(declare-datatypes ((List!17505 0))(
  ( (Nil!17502) (Cons!17501 (h!18632 tuple2!11624) (t!24602 List!17505)) )
))
(declare-datatypes ((ListLongMap!10407 0))(
  ( (ListLongMap!10408 (toList!5219 List!17505)) )
))
(declare-fun lt!397100 () ListLongMap!10407)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28325)

(declare-fun zeroValue!654 () V!28325)

(declare-fun getCurrentListMapNoExtraKeys!3181 (array!51028 array!51030 (_ BitVec 32) (_ BitVec 32) V!28325 V!28325 (_ BitVec 32) Int) ListLongMap!10407)

(assert (=> b!877735 (= lt!397100 (getCurrentListMapNoExtraKeys!3181 _keys!868 (array!51031 (store (arr!24537 _values!688) i!612 (ValueCellFull!8290 v!557)) (size!24978 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397099 () ListLongMap!10407)

(assert (=> b!877735 (= lt!397099 (getCurrentListMapNoExtraKeys!3181 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877736 () Bool)

(declare-fun res!596392 () Bool)

(assert (=> b!877736 (=> (not res!596392) (not e!488597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51028 (_ BitVec 32)) Bool)

(assert (=> b!877736 (= res!596392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877737 () Bool)

(declare-fun res!596394 () Bool)

(assert (=> b!877737 (=> (not res!596394) (not e!488597))))

(declare-datatypes ((List!17506 0))(
  ( (Nil!17503) (Cons!17502 (h!18633 (_ BitVec 64)) (t!24603 List!17506)) )
))
(declare-fun arrayNoDuplicates!0 (array!51028 (_ BitVec 32) List!17506) Bool)

(assert (=> b!877737 (= res!596394 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17503))))

(declare-fun b!877738 () Bool)

(declare-fun e!488595 () Bool)

(assert (=> b!877738 (= e!488595 tp_is_empty!17459)))

(declare-fun res!596391 () Bool)

(assert (=> start!74554 (=> (not res!596391) (not e!488597))))

(assert (=> start!74554 (= res!596391 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24977 _keys!868))))))

(assert (=> start!74554 e!488597))

(assert (=> start!74554 tp_is_empty!17459))

(assert (=> start!74554 true))

(assert (=> start!74554 tp!53327))

(declare-fun array_inv!19326 (array!51028) Bool)

(assert (=> start!74554 (array_inv!19326 _keys!868)))

(declare-fun e!488598 () Bool)

(declare-fun array_inv!19327 (array!51030) Bool)

(assert (=> start!74554 (and (array_inv!19327 _values!688) e!488598)))

(declare-fun b!877739 () Bool)

(declare-fun res!596393 () Bool)

(assert (=> b!877739 (=> (not res!596393) (not e!488597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877739 (= res!596393 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27804 () Bool)

(declare-fun mapRes!27804 () Bool)

(assert (=> mapIsEmpty!27804 mapRes!27804))

(declare-fun b!877740 () Bool)

(assert (=> b!877740 (= e!488598 (and e!488595 mapRes!27804))))

(declare-fun condMapEmpty!27804 () Bool)

(declare-fun mapDefault!27804 () ValueCell!8290)

