; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74626 () Bool)

(assert start!74626)

(declare-fun b_free!15287 () Bool)

(declare-fun b_next!15287 () Bool)

(assert (=> start!74626 (= b_free!15287 (not b_next!15287))))

(declare-fun tp!53543 () Bool)

(declare-fun b_and!25181 () Bool)

(assert (=> start!74626 (= tp!53543 b_and!25181)))

(declare-fun b!878982 () Bool)

(declare-fun res!597324 () Bool)

(declare-fun e!489197 () Bool)

(assert (=> b!878982 (=> (not res!597324) (not e!489197))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51168 0))(
  ( (array!51169 (arr!24606 (Array (_ BitVec 32) (_ BitVec 64))) (size!25047 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51168)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878982 (= res!597324 (and (= (select (arr!24606 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878983 () Bool)

(declare-fun res!597322 () Bool)

(assert (=> b!878983 (=> (not res!597322) (not e!489197))))

(declare-datatypes ((List!17554 0))(
  ( (Nil!17551) (Cons!17550 (h!18681 (_ BitVec 64)) (t!24651 List!17554)) )
))
(declare-fun arrayNoDuplicates!0 (array!51168 (_ BitVec 32) List!17554) Bool)

(assert (=> b!878983 (= res!597322 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17551))))

(declare-fun b!878984 () Bool)

(declare-fun res!597323 () Bool)

(assert (=> b!878984 (=> (not res!597323) (not e!489197))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878984 (= res!597323 (validMask!0 mask!1196))))

(declare-fun b!878985 () Bool)

(declare-fun e!489196 () Bool)

(declare-fun tp_is_empty!17531 () Bool)

(assert (=> b!878985 (= e!489196 tp_is_empty!17531)))

(declare-fun b!878986 () Bool)

(declare-fun res!597321 () Bool)

(assert (=> b!878986 (=> (not res!597321) (not e!489197))))

(assert (=> b!878986 (= res!597321 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25047 _keys!868))))))

(declare-fun b!878987 () Bool)

(declare-fun res!597320 () Bool)

(assert (=> b!878987 (=> (not res!597320) (not e!489197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878987 (= res!597320 (validKeyInArray!0 k!854))))

(declare-fun b!878988 () Bool)

(declare-fun e!489199 () Bool)

(declare-fun e!489198 () Bool)

(assert (=> b!878988 (= e!489199 (not e!489198))))

(declare-fun res!597315 () Bool)

(assert (=> b!878988 (=> res!597315 e!489198)))

(assert (=> b!878988 (= res!597315 (not (validKeyInArray!0 (select (arr!24606 _keys!868) from!1053))))))

(declare-datatypes ((V!28421 0))(
  ( (V!28422 (val!8813 Int)) )
))
(declare-fun v!557 () V!28421)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8326 0))(
  ( (ValueCellFull!8326 (v!11249 V!28421)) (EmptyCell!8326) )
))
(declare-datatypes ((array!51170 0))(
  ( (array!51171 (arr!24607 (Array (_ BitVec 32) ValueCell!8326)) (size!25048 (_ BitVec 32))) )
))
(declare-fun lt!397387 () array!51170)

(declare-fun _values!688 () array!51170)

(declare-fun minValue!654 () V!28421)

(declare-fun zeroValue!654 () V!28421)

(declare-datatypes ((tuple2!11678 0))(
  ( (tuple2!11679 (_1!5849 (_ BitVec 64)) (_2!5849 V!28421)) )
))
(declare-datatypes ((List!17555 0))(
  ( (Nil!17552) (Cons!17551 (h!18682 tuple2!11678) (t!24652 List!17555)) )
))
(declare-datatypes ((ListLongMap!10461 0))(
  ( (ListLongMap!10462 (toList!5246 List!17555)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3208 (array!51168 array!51170 (_ BitVec 32) (_ BitVec 32) V!28421 V!28421 (_ BitVec 32) Int) ListLongMap!10461)

(declare-fun +!2452 (ListLongMap!10461 tuple2!11678) ListLongMap!10461)

(assert (=> b!878988 (= (getCurrentListMapNoExtraKeys!3208 _keys!868 lt!397387 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2452 (getCurrentListMapNoExtraKeys!3208 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11679 k!854 v!557)))))

(declare-datatypes ((Unit!29984 0))(
  ( (Unit!29985) )
))
(declare-fun lt!397388 () Unit!29984)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!684 (array!51168 array!51170 (_ BitVec 32) (_ BitVec 32) V!28421 V!28421 (_ BitVec 32) (_ BitVec 64) V!28421 (_ BitVec 32) Int) Unit!29984)

(assert (=> b!878988 (= lt!397388 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!684 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27912 () Bool)

(declare-fun mapRes!27912 () Bool)

(declare-fun tp!53544 () Bool)

(declare-fun e!489200 () Bool)

(assert (=> mapNonEmpty!27912 (= mapRes!27912 (and tp!53544 e!489200))))

(declare-fun mapRest!27912 () (Array (_ BitVec 32) ValueCell!8326))

(declare-fun mapValue!27912 () ValueCell!8326)

(declare-fun mapKey!27912 () (_ BitVec 32))

(assert (=> mapNonEmpty!27912 (= (arr!24607 _values!688) (store mapRest!27912 mapKey!27912 mapValue!27912))))

(declare-fun b!878989 () Bool)

(declare-fun res!597317 () Bool)

(assert (=> b!878989 (=> (not res!597317) (not e!489197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51168 (_ BitVec 32)) Bool)

(assert (=> b!878989 (= res!597317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878990 () Bool)

(assert (=> b!878990 (= e!489197 e!489199)))

(declare-fun res!597316 () Bool)

(assert (=> b!878990 (=> (not res!597316) (not e!489199))))

(assert (=> b!878990 (= res!597316 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397385 () ListLongMap!10461)

(assert (=> b!878990 (= lt!397385 (getCurrentListMapNoExtraKeys!3208 _keys!868 lt!397387 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878990 (= lt!397387 (array!51171 (store (arr!24607 _values!688) i!612 (ValueCellFull!8326 v!557)) (size!25048 _values!688)))))

(declare-fun lt!397386 () ListLongMap!10461)

(assert (=> b!878990 (= lt!397386 (getCurrentListMapNoExtraKeys!3208 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27912 () Bool)

(assert (=> mapIsEmpty!27912 mapRes!27912))

(declare-fun res!597319 () Bool)

(assert (=> start!74626 (=> (not res!597319) (not e!489197))))

(assert (=> start!74626 (= res!597319 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25047 _keys!868))))))

(assert (=> start!74626 e!489197))

(assert (=> start!74626 tp_is_empty!17531))

(assert (=> start!74626 true))

(assert (=> start!74626 tp!53543))

(declare-fun array_inv!19372 (array!51168) Bool)

(assert (=> start!74626 (array_inv!19372 _keys!868)))

(declare-fun e!489195 () Bool)

(declare-fun array_inv!19373 (array!51170) Bool)

(assert (=> start!74626 (and (array_inv!19373 _values!688) e!489195)))

(declare-fun b!878991 () Bool)

(declare-fun res!597318 () Bool)

(assert (=> b!878991 (=> (not res!597318) (not e!489197))))

(assert (=> b!878991 (= res!597318 (and (= (size!25048 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25047 _keys!868) (size!25048 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878992 () Bool)

(assert (=> b!878992 (= e!489195 (and e!489196 mapRes!27912))))

(declare-fun condMapEmpty!27912 () Bool)

(declare-fun mapDefault!27912 () ValueCell!8326)

