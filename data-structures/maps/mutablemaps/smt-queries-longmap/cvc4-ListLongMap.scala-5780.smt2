; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74614 () Bool)

(assert start!74614)

(declare-fun b_free!15275 () Bool)

(declare-fun b_next!15275 () Bool)

(assert (=> start!74614 (= b_free!15275 (not b_next!15275))))

(declare-fun tp!53507 () Bool)

(declare-fun b_and!25169 () Bool)

(assert (=> start!74614 (= tp!53507 b_and!25169)))

(declare-fun b!878748 () Bool)

(declare-fun e!489073 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((V!28405 0))(
  ( (V!28406 (val!8807 Int)) )
))
(declare-datatypes ((ValueCell!8320 0))(
  ( (ValueCellFull!8320 (v!11243 V!28405)) (EmptyCell!8320) )
))
(declare-datatypes ((array!51144 0))(
  ( (array!51145 (arr!24594 (Array (_ BitVec 32) ValueCell!8320)) (size!25035 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51144)

(assert (=> b!878748 (= e!489073 (bvslt i!612 (size!25035 _values!688)))))

(declare-fun b!878749 () Bool)

(declare-fun res!597143 () Bool)

(declare-fun e!489075 () Bool)

(assert (=> b!878749 (=> (not res!597143) (not e!489075))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51146 0))(
  ( (array!51147 (arr!24595 (Array (_ BitVec 32) (_ BitVec 64))) (size!25036 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51146)

(assert (=> b!878749 (= res!597143 (and (= (size!25035 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25036 _keys!868) (size!25035 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878750 () Bool)

(declare-fun e!489074 () Bool)

(declare-fun tp_is_empty!17519 () Bool)

(assert (=> b!878750 (= e!489074 tp_is_empty!17519)))

(declare-fun b!878751 () Bool)

(declare-fun res!597135 () Bool)

(assert (=> b!878751 (=> (not res!597135) (not e!489075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878751 (= res!597135 (validMask!0 mask!1196))))

(declare-fun b!878752 () Bool)

(declare-fun e!489069 () Bool)

(assert (=> b!878752 (= e!489069 (not e!489073))))

(declare-fun res!597142 () Bool)

(assert (=> b!878752 (=> res!597142 e!489073)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878752 (= res!597142 (not (validKeyInArray!0 (select (arr!24595 _keys!868) from!1053))))))

(declare-fun lt!397316 () array!51144)

(declare-fun v!557 () V!28405)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!28405)

(declare-fun zeroValue!654 () V!28405)

(declare-datatypes ((tuple2!11666 0))(
  ( (tuple2!11667 (_1!5843 (_ BitVec 64)) (_2!5843 V!28405)) )
))
(declare-datatypes ((List!17545 0))(
  ( (Nil!17542) (Cons!17541 (h!18672 tuple2!11666) (t!24642 List!17545)) )
))
(declare-datatypes ((ListLongMap!10449 0))(
  ( (ListLongMap!10450 (toList!5240 List!17545)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3202 (array!51146 array!51144 (_ BitVec 32) (_ BitVec 32) V!28405 V!28405 (_ BitVec 32) Int) ListLongMap!10449)

(declare-fun +!2446 (ListLongMap!10449 tuple2!11666) ListLongMap!10449)

(assert (=> b!878752 (= (getCurrentListMapNoExtraKeys!3202 _keys!868 lt!397316 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2446 (getCurrentListMapNoExtraKeys!3202 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11667 k!854 v!557)))))

(declare-datatypes ((Unit!29972 0))(
  ( (Unit!29973) )
))
(declare-fun lt!397313 () Unit!29972)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!678 (array!51146 array!51144 (_ BitVec 32) (_ BitVec 32) V!28405 V!28405 (_ BitVec 32) (_ BitVec 64) V!28405 (_ BitVec 32) Int) Unit!29972)

(assert (=> b!878752 (= lt!397313 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!678 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878753 () Bool)

(declare-fun e!489070 () Bool)

(assert (=> b!878753 (= e!489070 tp_is_empty!17519)))

(declare-fun b!878754 () Bool)

(declare-fun res!597136 () Bool)

(assert (=> b!878754 (=> (not res!597136) (not e!489075))))

(assert (=> b!878754 (= res!597136 (validKeyInArray!0 k!854))))

(declare-fun b!878755 () Bool)

(declare-fun res!597137 () Bool)

(assert (=> b!878755 (=> (not res!597137) (not e!489075))))

(assert (=> b!878755 (= res!597137 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25036 _keys!868))))))

(declare-fun b!878756 () Bool)

(declare-fun res!597139 () Bool)

(assert (=> b!878756 (=> (not res!597139) (not e!489075))))

(assert (=> b!878756 (= res!597139 (and (= (select (arr!24595 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!597138 () Bool)

(assert (=> start!74614 (=> (not res!597138) (not e!489075))))

(assert (=> start!74614 (= res!597138 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25036 _keys!868))))))

(assert (=> start!74614 e!489075))

(assert (=> start!74614 tp_is_empty!17519))

(assert (=> start!74614 true))

(assert (=> start!74614 tp!53507))

(declare-fun array_inv!19360 (array!51146) Bool)

(assert (=> start!74614 (array_inv!19360 _keys!868)))

(declare-fun e!489072 () Bool)

(declare-fun array_inv!19361 (array!51144) Bool)

(assert (=> start!74614 (and (array_inv!19361 _values!688) e!489072)))

(declare-fun b!878757 () Bool)

(declare-fun mapRes!27894 () Bool)

(assert (=> b!878757 (= e!489072 (and e!489070 mapRes!27894))))

(declare-fun condMapEmpty!27894 () Bool)

(declare-fun mapDefault!27894 () ValueCell!8320)

