; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74608 () Bool)

(assert start!74608)

(declare-fun b_free!15269 () Bool)

(declare-fun b_next!15269 () Bool)

(assert (=> start!74608 (= b_free!15269 (not b_next!15269))))

(declare-fun tp!53490 () Bool)

(declare-fun b_and!25163 () Bool)

(assert (=> start!74608 (= tp!53490 b_and!25163)))

(declare-fun b!878632 () Bool)

(declare-fun res!597053 () Bool)

(declare-fun e!489009 () Bool)

(assert (=> b!878632 (=> (not res!597053) (not e!489009))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51132 0))(
  ( (array!51133 (arr!24588 (Array (_ BitVec 32) (_ BitVec 64))) (size!25029 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51132)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878632 (= res!597053 (and (= (select (arr!24588 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!597047 () Bool)

(assert (=> start!74608 (=> (not res!597047) (not e!489009))))

(assert (=> start!74608 (= res!597047 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25029 _keys!868))))))

(assert (=> start!74608 e!489009))

(declare-fun tp_is_empty!17513 () Bool)

(assert (=> start!74608 tp_is_empty!17513))

(assert (=> start!74608 true))

(assert (=> start!74608 tp!53490))

(declare-fun array_inv!19354 (array!51132) Bool)

(assert (=> start!74608 (array_inv!19354 _keys!868)))

(declare-datatypes ((V!28397 0))(
  ( (V!28398 (val!8804 Int)) )
))
(declare-datatypes ((ValueCell!8317 0))(
  ( (ValueCellFull!8317 (v!11240 V!28397)) (EmptyCell!8317) )
))
(declare-datatypes ((array!51134 0))(
  ( (array!51135 (arr!24589 (Array (_ BitVec 32) ValueCell!8317)) (size!25030 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51134)

(declare-fun e!489008 () Bool)

(declare-fun array_inv!19355 (array!51134) Bool)

(assert (=> start!74608 (and (array_inv!19355 _values!688) e!489008)))

(declare-fun mapNonEmpty!27885 () Bool)

(declare-fun mapRes!27885 () Bool)

(declare-fun tp!53489 () Bool)

(declare-fun e!489012 () Bool)

(assert (=> mapNonEmpty!27885 (= mapRes!27885 (and tp!53489 e!489012))))

(declare-fun mapValue!27885 () ValueCell!8317)

(declare-fun mapKey!27885 () (_ BitVec 32))

(declare-fun mapRest!27885 () (Array (_ BitVec 32) ValueCell!8317))

(assert (=> mapNonEmpty!27885 (= (arr!24589 _values!688) (store mapRest!27885 mapKey!27885 mapValue!27885))))

(declare-fun b!878633 () Bool)

(declare-fun e!489011 () Bool)

(assert (=> b!878633 (= e!489011 (not (bvslt from!1053 (size!25029 _keys!868))))))

(declare-fun v!557 () V!28397)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!397279 () array!51134)

(declare-fun minValue!654 () V!28397)

(declare-fun zeroValue!654 () V!28397)

(declare-datatypes ((tuple2!11660 0))(
  ( (tuple2!11661 (_1!5840 (_ BitVec 64)) (_2!5840 V!28397)) )
))
(declare-datatypes ((List!17540 0))(
  ( (Nil!17537) (Cons!17536 (h!18667 tuple2!11660) (t!24637 List!17540)) )
))
(declare-datatypes ((ListLongMap!10443 0))(
  ( (ListLongMap!10444 (toList!5237 List!17540)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3199 (array!51132 array!51134 (_ BitVec 32) (_ BitVec 32) V!28397 V!28397 (_ BitVec 32) Int) ListLongMap!10443)

(declare-fun +!2444 (ListLongMap!10443 tuple2!11660) ListLongMap!10443)

(assert (=> b!878633 (= (getCurrentListMapNoExtraKeys!3199 _keys!868 lt!397279 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2444 (getCurrentListMapNoExtraKeys!3199 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11661 k!854 v!557)))))

(declare-datatypes ((Unit!29968 0))(
  ( (Unit!29969) )
))
(declare-fun lt!397280 () Unit!29968)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!676 (array!51132 array!51134 (_ BitVec 32) (_ BitVec 32) V!28397 V!28397 (_ BitVec 32) (_ BitVec 64) V!28397 (_ BitVec 32) Int) Unit!29968)

(assert (=> b!878633 (= lt!397280 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!676 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878634 () Bool)

(assert (=> b!878634 (= e!489012 tp_is_empty!17513)))

(declare-fun b!878635 () Bool)

(declare-fun res!597050 () Bool)

(assert (=> b!878635 (=> (not res!597050) (not e!489009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51132 (_ BitVec 32)) Bool)

(assert (=> b!878635 (= res!597050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878636 () Bool)

(declare-fun res!597052 () Bool)

(assert (=> b!878636 (=> (not res!597052) (not e!489009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878636 (= res!597052 (validMask!0 mask!1196))))

(declare-fun b!878637 () Bool)

(assert (=> b!878637 (= e!489009 e!489011)))

(declare-fun res!597048 () Bool)

(assert (=> b!878637 (=> (not res!597048) (not e!489011))))

(assert (=> b!878637 (= res!597048 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397277 () ListLongMap!10443)

(assert (=> b!878637 (= lt!397277 (getCurrentListMapNoExtraKeys!3199 _keys!868 lt!397279 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878637 (= lt!397279 (array!51135 (store (arr!24589 _values!688) i!612 (ValueCellFull!8317 v!557)) (size!25030 _values!688)))))

(declare-fun lt!397278 () ListLongMap!10443)

(assert (=> b!878637 (= lt!397278 (getCurrentListMapNoExtraKeys!3199 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878638 () Bool)

(declare-fun e!489010 () Bool)

(assert (=> b!878638 (= e!489010 tp_is_empty!17513)))

(declare-fun b!878639 () Bool)

(declare-fun res!597046 () Bool)

(assert (=> b!878639 (=> (not res!597046) (not e!489009))))

(assert (=> b!878639 (= res!597046 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25029 _keys!868))))))

(declare-fun mapIsEmpty!27885 () Bool)

(assert (=> mapIsEmpty!27885 mapRes!27885))

(declare-fun b!878640 () Bool)

(assert (=> b!878640 (= e!489008 (and e!489010 mapRes!27885))))

(declare-fun condMapEmpty!27885 () Bool)

(declare-fun mapDefault!27885 () ValueCell!8317)

