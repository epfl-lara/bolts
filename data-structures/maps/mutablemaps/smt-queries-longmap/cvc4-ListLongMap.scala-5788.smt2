; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74702 () Bool)

(assert start!74702)

(declare-fun b_free!15323 () Bool)

(declare-fun b_next!15323 () Bool)

(assert (=> start!74702 (= b_free!15323 (not b_next!15323))))

(declare-fun tp!53658 () Bool)

(declare-fun b_and!25283 () Bool)

(assert (=> start!74702 (= tp!53658 b_and!25283)))

(declare-fun b!879978 () Bool)

(declare-fun e!489737 () Bool)

(declare-fun e!489742 () Bool)

(assert (=> b!879978 (= e!489737 (not e!489742))))

(declare-fun res!597963 () Bool)

(assert (=> b!879978 (=> res!597963 e!489742)))

(declare-datatypes ((array!51244 0))(
  ( (array!51245 (arr!24642 (Array (_ BitVec 32) (_ BitVec 64))) (size!25083 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51244)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879978 (= res!597963 (not (validKeyInArray!0 (select (arr!24642 _keys!868) from!1053))))))

(declare-datatypes ((V!28469 0))(
  ( (V!28470 (val!8831 Int)) )
))
(declare-datatypes ((tuple2!11708 0))(
  ( (tuple2!11709 (_1!5864 (_ BitVec 64)) (_2!5864 V!28469)) )
))
(declare-datatypes ((List!17582 0))(
  ( (Nil!17579) (Cons!17578 (h!18709 tuple2!11708) (t!24715 List!17582)) )
))
(declare-datatypes ((ListLongMap!10491 0))(
  ( (ListLongMap!10492 (toList!5261 List!17582)) )
))
(declare-fun lt!397906 () ListLongMap!10491)

(declare-fun lt!397901 () ListLongMap!10491)

(assert (=> b!879978 (= lt!397906 lt!397901)))

(declare-fun v!557 () V!28469)

(declare-fun lt!397905 () ListLongMap!10491)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2467 (ListLongMap!10491 tuple2!11708) ListLongMap!10491)

(assert (=> b!879978 (= lt!397901 (+!2467 lt!397905 (tuple2!11709 k!854 v!557)))))

(declare-datatypes ((ValueCell!8344 0))(
  ( (ValueCellFull!8344 (v!11275 V!28469)) (EmptyCell!8344) )
))
(declare-datatypes ((array!51246 0))(
  ( (array!51247 (arr!24643 (Array (_ BitVec 32) ValueCell!8344)) (size!25084 (_ BitVec 32))) )
))
(declare-fun lt!397903 () array!51246)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28469)

(declare-fun zeroValue!654 () V!28469)

(declare-fun getCurrentListMapNoExtraKeys!3221 (array!51244 array!51246 (_ BitVec 32) (_ BitVec 32) V!28469 V!28469 (_ BitVec 32) Int) ListLongMap!10491)

(assert (=> b!879978 (= lt!397906 (getCurrentListMapNoExtraKeys!3221 _keys!868 lt!397903 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51246)

(assert (=> b!879978 (= lt!397905 (getCurrentListMapNoExtraKeys!3221 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30010 0))(
  ( (Unit!30011) )
))
(declare-fun lt!397900 () Unit!30010)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!697 (array!51244 array!51246 (_ BitVec 32) (_ BitVec 32) V!28469 V!28469 (_ BitVec 32) (_ BitVec 64) V!28469 (_ BitVec 32) Int) Unit!30010)

(assert (=> b!879978 (= lt!397900 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!697 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27972 () Bool)

(declare-fun mapRes!27972 () Bool)

(assert (=> mapIsEmpty!27972 mapRes!27972))

(declare-fun b!879979 () Bool)

(declare-fun res!597959 () Bool)

(declare-fun e!489738 () Bool)

(assert (=> b!879979 (=> (not res!597959) (not e!489738))))

(assert (=> b!879979 (= res!597959 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25083 _keys!868))))))

(declare-fun b!879980 () Bool)

(declare-fun e!489741 () Bool)

(declare-fun e!489743 () Bool)

(assert (=> b!879980 (= e!489741 (and e!489743 mapRes!27972))))

(declare-fun condMapEmpty!27972 () Bool)

(declare-fun mapDefault!27972 () ValueCell!8344)

