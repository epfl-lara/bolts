; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74762 () Bool)

(assert start!74762)

(declare-fun b_free!15361 () Bool)

(declare-fun b_next!15361 () Bool)

(assert (=> start!74762 (= b_free!15361 (not b_next!15361))))

(declare-fun tp!53775 () Bool)

(declare-fun b_and!25375 () Bool)

(assert (=> start!74762 (= tp!53775 b_and!25375)))

(declare-fun b!880941 () Bool)

(declare-fun res!598628 () Bool)

(declare-fun e!490272 () Bool)

(assert (=> b!880941 (=> (not res!598628) (not e!490272))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880941 (= res!598628 (validKeyInArray!0 k!854))))

(declare-fun b!880942 () Bool)

(declare-fun e!490275 () Bool)

(declare-fun e!490274 () Bool)

(assert (=> b!880942 (= e!490275 (not e!490274))))

(declare-fun res!598637 () Bool)

(assert (=> b!880942 (=> res!598637 e!490274)))

(declare-datatypes ((array!51318 0))(
  ( (array!51319 (arr!24678 (Array (_ BitVec 32) (_ BitVec 64))) (size!25119 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51318)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!880942 (= res!598637 (not (validKeyInArray!0 (select (arr!24678 _keys!868) from!1053))))))

(declare-datatypes ((V!28521 0))(
  ( (V!28522 (val!8850 Int)) )
))
(declare-datatypes ((tuple2!11742 0))(
  ( (tuple2!11743 (_1!5881 (_ BitVec 64)) (_2!5881 V!28521)) )
))
(declare-datatypes ((List!17612 0))(
  ( (Nil!17609) (Cons!17608 (h!18739 tuple2!11742) (t!24783 List!17612)) )
))
(declare-datatypes ((ListLongMap!10525 0))(
  ( (ListLongMap!10526 (toList!5278 List!17612)) )
))
(declare-fun lt!398421 () ListLongMap!10525)

(declare-fun lt!398424 () ListLongMap!10525)

(assert (=> b!880942 (= lt!398421 lt!398424)))

(declare-fun lt!398423 () ListLongMap!10525)

(declare-fun v!557 () V!28521)

(declare-fun +!2484 (ListLongMap!10525 tuple2!11742) ListLongMap!10525)

(assert (=> b!880942 (= lt!398424 (+!2484 lt!398423 (tuple2!11743 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8363 0))(
  ( (ValueCellFull!8363 (v!11298 V!28521)) (EmptyCell!8363) )
))
(declare-datatypes ((array!51320 0))(
  ( (array!51321 (arr!24679 (Array (_ BitVec 32) ValueCell!8363)) (size!25120 (_ BitVec 32))) )
))
(declare-fun lt!398426 () array!51320)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28521)

(declare-fun zeroValue!654 () V!28521)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3238 (array!51318 array!51320 (_ BitVec 32) (_ BitVec 32) V!28521 V!28521 (_ BitVec 32) Int) ListLongMap!10525)

(assert (=> b!880942 (= lt!398421 (getCurrentListMapNoExtraKeys!3238 _keys!868 lt!398426 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51320)

(assert (=> b!880942 (= lt!398423 (getCurrentListMapNoExtraKeys!3238 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30044 0))(
  ( (Unit!30045) )
))
(declare-fun lt!398422 () Unit!30044)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!713 (array!51318 array!51320 (_ BitVec 32) (_ BitVec 32) V!28521 V!28521 (_ BitVec 32) (_ BitVec 64) V!28521 (_ BitVec 32) Int) Unit!30044)

(assert (=> b!880942 (= lt!398422 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!713 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!28032 () Bool)

(declare-fun mapRes!28032 () Bool)

(assert (=> mapIsEmpty!28032 mapRes!28032))

(declare-fun e!490279 () Bool)

(declare-fun b!880943 () Bool)

(declare-fun arrayContainsKey!0 (array!51318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!880943 (= e!490279 (arrayContainsKey!0 _keys!868 k!854 i!612))))

(declare-fun b!880944 () Bool)

(declare-fun e!490278 () Bool)

(declare-fun tp_is_empty!17605 () Bool)

(assert (=> b!880944 (= e!490278 tp_is_empty!17605)))

(declare-fun b!880945 () Bool)

(declare-fun res!598627 () Bool)

(assert (=> b!880945 (=> (not res!598627) (not e!490272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880945 (= res!598627 (validMask!0 mask!1196))))

(declare-fun res!598636 () Bool)

(assert (=> start!74762 (=> (not res!598636) (not e!490272))))

(assert (=> start!74762 (= res!598636 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25119 _keys!868))))))

(assert (=> start!74762 e!490272))

(assert (=> start!74762 tp_is_empty!17605))

(assert (=> start!74762 true))

(assert (=> start!74762 tp!53775))

(declare-fun array_inv!19422 (array!51318) Bool)

(assert (=> start!74762 (array_inv!19422 _keys!868)))

(declare-fun e!490271 () Bool)

(declare-fun array_inv!19423 (array!51320) Bool)

(assert (=> start!74762 (and (array_inv!19423 _values!688) e!490271)))

(declare-fun b!880946 () Bool)

(declare-fun e!490277 () Bool)

(assert (=> b!880946 (= e!490277 e!490279)))

(declare-fun res!598629 () Bool)

(assert (=> b!880946 (=> res!598629 e!490279)))

(assert (=> b!880946 (= res!598629 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsge (size!25119 _keys!868) #b01111111111111111111111111111111)))))

(declare-datatypes ((List!17613 0))(
  ( (Nil!17610) (Cons!17609 (h!18740 (_ BitVec 64)) (t!24784 List!17613)) )
))
(declare-fun arrayNoDuplicates!0 (array!51318 (_ BitVec 32) List!17613) Bool)

(assert (=> b!880946 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17610)))

(declare-fun lt!398420 () Unit!30044)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51318 (_ BitVec 32) (_ BitVec 32)) Unit!30044)

(assert (=> b!880946 (= lt!398420 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880947 () Bool)

(assert (=> b!880947 (= e!490274 e!490277)))

(declare-fun res!598635 () Bool)

(assert (=> b!880947 (=> res!598635 e!490277)))

(assert (=> b!880947 (= res!598635 (not (= (select (arr!24678 _keys!868) from!1053) k!854)))))

(declare-fun lt!398419 () ListLongMap!10525)

(declare-fun get!12998 (ValueCell!8363 V!28521) V!28521)

(declare-fun dynLambda!1247 (Int (_ BitVec 64)) V!28521)

(assert (=> b!880947 (= lt!398419 (+!2484 lt!398424 (tuple2!11743 (select (arr!24678 _keys!868) from!1053) (get!12998 (select (arr!24679 _values!688) from!1053) (dynLambda!1247 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880948 () Bool)

(declare-fun e!490273 () Bool)

(assert (=> b!880948 (= e!490271 (and e!490273 mapRes!28032))))

(declare-fun condMapEmpty!28032 () Bool)

(declare-fun mapDefault!28032 () ValueCell!8363)

