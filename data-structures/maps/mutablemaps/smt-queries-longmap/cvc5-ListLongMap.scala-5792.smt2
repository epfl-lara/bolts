; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74722 () Bool)

(assert start!74722)

(declare-fun b_free!15343 () Bool)

(declare-fun b_next!15343 () Bool)

(assert (=> start!74722 (= b_free!15343 (not b_next!15343))))

(declare-fun tp!53718 () Bool)

(declare-fun b_and!25323 () Bool)

(assert (=> start!74722 (= tp!53718 b_and!25323)))

(declare-fun b!880408 () Bool)

(declare-fun e!489974 () Bool)

(declare-fun tp_is_empty!17587 () Bool)

(assert (=> b!880408 (= e!489974 tp_is_empty!17587)))

(declare-fun b!880409 () Bool)

(declare-fun e!489969 () Bool)

(declare-fun e!489971 () Bool)

(assert (=> b!880409 (= e!489969 (not e!489971))))

(declare-fun res!598281 () Bool)

(assert (=> b!880409 (=> res!598281 e!489971)))

(declare-datatypes ((array!51280 0))(
  ( (array!51281 (arr!24660 (Array (_ BitVec 32) (_ BitVec 64))) (size!25101 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51280)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880409 (= res!598281 (not (validKeyInArray!0 (select (arr!24660 _keys!868) from!1053))))))

(declare-datatypes ((V!28497 0))(
  ( (V!28498 (val!8841 Int)) )
))
(declare-datatypes ((tuple2!11724 0))(
  ( (tuple2!11725 (_1!5872 (_ BitVec 64)) (_2!5872 V!28497)) )
))
(declare-datatypes ((List!17597 0))(
  ( (Nil!17594) (Cons!17593 (h!18724 tuple2!11724) (t!24750 List!17597)) )
))
(declare-datatypes ((ListLongMap!10507 0))(
  ( (ListLongMap!10508 (toList!5269 List!17597)) )
))
(declare-fun lt!398136 () ListLongMap!10507)

(declare-fun lt!398135 () ListLongMap!10507)

(assert (=> b!880409 (= lt!398136 lt!398135)))

(declare-fun lt!398132 () ListLongMap!10507)

(declare-fun v!557 () V!28497)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2475 (ListLongMap!10507 tuple2!11724) ListLongMap!10507)

(assert (=> b!880409 (= lt!398135 (+!2475 lt!398132 (tuple2!11725 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8354 0))(
  ( (ValueCellFull!8354 (v!11285 V!28497)) (EmptyCell!8354) )
))
(declare-datatypes ((array!51282 0))(
  ( (array!51283 (arr!24661 (Array (_ BitVec 32) ValueCell!8354)) (size!25102 (_ BitVec 32))) )
))
(declare-fun lt!398131 () array!51282)

(declare-fun minValue!654 () V!28497)

(declare-fun zeroValue!654 () V!28497)

(declare-fun getCurrentListMapNoExtraKeys!3229 (array!51280 array!51282 (_ BitVec 32) (_ BitVec 32) V!28497 V!28497 (_ BitVec 32) Int) ListLongMap!10507)

(assert (=> b!880409 (= lt!398136 (getCurrentListMapNoExtraKeys!3229 _keys!868 lt!398131 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51282)

(assert (=> b!880409 (= lt!398132 (getCurrentListMapNoExtraKeys!3229 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30026 0))(
  ( (Unit!30027) )
))
(declare-fun lt!398130 () Unit!30026)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!704 (array!51280 array!51282 (_ BitVec 32) (_ BitVec 32) V!28497 V!28497 (_ BitVec 32) (_ BitVec 64) V!28497 (_ BitVec 32) Int) Unit!30026)

(assert (=> b!880409 (= lt!398130 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!704 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880410 () Bool)

(declare-fun res!598279 () Bool)

(declare-fun e!489968 () Bool)

(assert (=> b!880410 (=> (not res!598279) (not e!489968))))

(assert (=> b!880410 (= res!598279 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25101 _keys!868))))))

(declare-fun b!880411 () Bool)

(declare-fun e!489973 () Bool)

(declare-fun mapRes!28002 () Bool)

(assert (=> b!880411 (= e!489973 (and e!489974 mapRes!28002))))

(declare-fun condMapEmpty!28002 () Bool)

(declare-fun mapDefault!28002 () ValueCell!8354)

