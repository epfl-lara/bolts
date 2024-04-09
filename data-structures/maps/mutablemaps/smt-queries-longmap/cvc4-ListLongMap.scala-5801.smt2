; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74852 () Bool)

(assert start!74852)

(declare-fun b_free!15401 () Bool)

(declare-fun b_next!15401 () Bool)

(assert (=> start!74852 (= b_free!15401 (not b_next!15401))))

(declare-fun tp!53901 () Bool)

(declare-fun b_and!25487 () Bool)

(assert (=> start!74852 (= tp!53901 b_and!25487)))

(declare-fun b!882118 () Bool)

(declare-fun e!490950 () Bool)

(declare-fun e!490953 () Bool)

(assert (=> b!882118 (= e!490950 e!490953)))

(declare-fun res!599427 () Bool)

(assert (=> b!882118 (=> res!599427 e!490953)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51398 0))(
  ( (array!51399 (arr!24716 (Array (_ BitVec 32) (_ BitVec 64))) (size!25157 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51398)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882118 (= res!599427 (not (= (select (arr!24716 _keys!868) from!1053) k!854)))))

(declare-datatypes ((V!28573 0))(
  ( (V!28574 (val!8870 Int)) )
))
(declare-datatypes ((tuple2!11776 0))(
  ( (tuple2!11777 (_1!5898 (_ BitVec 64)) (_2!5898 V!28573)) )
))
(declare-datatypes ((List!17643 0))(
  ( (Nil!17640) (Cons!17639 (h!18770 tuple2!11776) (t!24854 List!17643)) )
))
(declare-datatypes ((ListLongMap!10559 0))(
  ( (ListLongMap!10560 (toList!5295 List!17643)) )
))
(declare-fun lt!399103 () ListLongMap!10559)

(declare-fun lt!399101 () ListLongMap!10559)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8383 0))(
  ( (ValueCellFull!8383 (v!11326 V!28573)) (EmptyCell!8383) )
))
(declare-datatypes ((array!51400 0))(
  ( (array!51401 (arr!24717 (Array (_ BitVec 32) ValueCell!8383)) (size!25158 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51400)

(declare-fun +!2501 (ListLongMap!10559 tuple2!11776) ListLongMap!10559)

(declare-fun get!13027 (ValueCell!8383 V!28573) V!28573)

(declare-fun dynLambda!1260 (Int (_ BitVec 64)) V!28573)

(assert (=> b!882118 (= lt!399101 (+!2501 lt!399103 (tuple2!11777 (select (arr!24716 _keys!868) from!1053) (get!13027 (select (arr!24717 _values!688) from!1053) (dynLambda!1260 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882119 () Bool)

(declare-fun res!599430 () Bool)

(declare-fun e!490958 () Bool)

(assert (=> b!882119 (=> (not res!599430) (not e!490958))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!882119 (= res!599430 (and (= (select (arr!24716 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!599424 () Bool)

(assert (=> start!74852 (=> (not res!599424) (not e!490958))))

(assert (=> start!74852 (= res!599424 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25157 _keys!868))))))

(assert (=> start!74852 e!490958))

(declare-fun tp_is_empty!17645 () Bool)

(assert (=> start!74852 tp_is_empty!17645))

(assert (=> start!74852 true))

(assert (=> start!74852 tp!53901))

(declare-fun array_inv!19450 (array!51398) Bool)

(assert (=> start!74852 (array_inv!19450 _keys!868)))

(declare-fun e!490956 () Bool)

(declare-fun array_inv!19451 (array!51400) Bool)

(assert (=> start!74852 (and (array_inv!19451 _values!688) e!490956)))

(declare-fun b!882120 () Bool)

(declare-fun res!599422 () Bool)

(assert (=> b!882120 (=> (not res!599422) (not e!490958))))

(declare-datatypes ((List!17644 0))(
  ( (Nil!17641) (Cons!17640 (h!18771 (_ BitVec 64)) (t!24855 List!17644)) )
))
(declare-fun arrayNoDuplicates!0 (array!51398 (_ BitVec 32) List!17644) Bool)

(assert (=> b!882120 (= res!599422 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17641))))

(declare-fun b!882121 () Bool)

(declare-fun e!490957 () Bool)

(declare-fun noDuplicate!1318 (List!17644) Bool)

(assert (=> b!882121 (= e!490957 (noDuplicate!1318 Nil!17641))))

(declare-fun b!882122 () Bool)

(declare-fun res!599425 () Bool)

(assert (=> b!882122 (=> (not res!599425) (not e!490958))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51398 (_ BitVec 32)) Bool)

(assert (=> b!882122 (= res!599425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!882123 () Bool)

(declare-fun res!599431 () Bool)

(assert (=> b!882123 (=> (not res!599431) (not e!490958))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!882123 (= res!599431 (and (= (size!25158 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25157 _keys!868) (size!25158 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!882124 () Bool)

(assert (=> b!882124 (= e!490953 e!490957)))

(declare-fun res!599420 () Bool)

(assert (=> b!882124 (=> res!599420 e!490957)))

(assert (=> b!882124 (= res!599420 (or (bvsge (size!25157 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25157 _keys!868)) (bvsge from!1053 (size!25157 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882124 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30078 0))(
  ( (Unit!30079) )
))
(declare-fun lt!399109 () Unit!30078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51398 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30078)

(assert (=> b!882124 (= lt!399109 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!882124 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17641)))

(declare-fun lt!399102 () Unit!30078)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51398 (_ BitVec 32) (_ BitVec 32)) Unit!30078)

(assert (=> b!882124 (= lt!399102 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!882125 () Bool)

(declare-fun e!490955 () Bool)

(assert (=> b!882125 (= e!490955 (not e!490950))))

(declare-fun res!599426 () Bool)

(assert (=> b!882125 (=> res!599426 e!490950)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882125 (= res!599426 (not (validKeyInArray!0 (select (arr!24716 _keys!868) from!1053))))))

(declare-fun lt!399108 () ListLongMap!10559)

(assert (=> b!882125 (= lt!399108 lt!399103)))

(declare-fun v!557 () V!28573)

(declare-fun lt!399105 () ListLongMap!10559)

(assert (=> b!882125 (= lt!399103 (+!2501 lt!399105 (tuple2!11777 k!854 v!557)))))

(declare-fun lt!399104 () array!51400)

(declare-fun minValue!654 () V!28573)

(declare-fun zeroValue!654 () V!28573)

(declare-fun getCurrentListMapNoExtraKeys!3254 (array!51398 array!51400 (_ BitVec 32) (_ BitVec 32) V!28573 V!28573 (_ BitVec 32) Int) ListLongMap!10559)

(assert (=> b!882125 (= lt!399108 (getCurrentListMapNoExtraKeys!3254 _keys!868 lt!399104 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882125 (= lt!399105 (getCurrentListMapNoExtraKeys!3254 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399107 () Unit!30078)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!728 (array!51398 array!51400 (_ BitVec 32) (_ BitVec 32) V!28573 V!28573 (_ BitVec 32) (_ BitVec 64) V!28573 (_ BitVec 32) Int) Unit!30078)

(assert (=> b!882125 (= lt!399107 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!728 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882126 () Bool)

(declare-fun e!490954 () Bool)

(declare-fun mapRes!28098 () Bool)

(assert (=> b!882126 (= e!490956 (and e!490954 mapRes!28098))))

(declare-fun condMapEmpty!28098 () Bool)

(declare-fun mapDefault!28098 () ValueCell!8383)

