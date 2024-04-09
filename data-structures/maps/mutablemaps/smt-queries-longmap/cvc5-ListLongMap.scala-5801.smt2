; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74848 () Bool)

(assert start!74848)

(declare-fun b_free!15397 () Bool)

(declare-fun b_next!15397 () Bool)

(assert (=> start!74848 (= b_free!15397 (not b_next!15397))))

(declare-fun tp!53888 () Bool)

(declare-fun b_and!25479 () Bool)

(assert (=> start!74848 (= tp!53888 b_and!25479)))

(declare-fun b!882024 () Bool)

(declare-fun res!599349 () Bool)

(declare-fun e!490904 () Bool)

(assert (=> b!882024 (=> (not res!599349) (not e!490904))))

(declare-datatypes ((array!51390 0))(
  ( (array!51391 (arr!24712 (Array (_ BitVec 32) (_ BitVec 64))) (size!25153 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51390)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51390 (_ BitVec 32)) Bool)

(assert (=> b!882024 (= res!599349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!28092 () Bool)

(declare-fun mapRes!28092 () Bool)

(declare-fun tp!53889 () Bool)

(declare-fun e!490898 () Bool)

(assert (=> mapNonEmpty!28092 (= mapRes!28092 (and tp!53889 e!490898))))

(declare-fun mapKey!28092 () (_ BitVec 32))

(declare-datatypes ((V!28569 0))(
  ( (V!28570 (val!8868 Int)) )
))
(declare-datatypes ((ValueCell!8381 0))(
  ( (ValueCellFull!8381 (v!11324 V!28569)) (EmptyCell!8381) )
))
(declare-fun mapRest!28092 () (Array (_ BitVec 32) ValueCell!8381))

(declare-fun mapValue!28092 () ValueCell!8381)

(declare-datatypes ((array!51392 0))(
  ( (array!51393 (arr!24713 (Array (_ BitVec 32) ValueCell!8381)) (size!25154 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51392)

(assert (=> mapNonEmpty!28092 (= (arr!24713 _values!688) (store mapRest!28092 mapKey!28092 mapValue!28092))))

(declare-fun b!882025 () Bool)

(declare-fun res!599350 () Bool)

(assert (=> b!882025 (=> (not res!599350) (not e!490904))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!882025 (= res!599350 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25153 _keys!868))))))

(declare-fun b!882026 () Bool)

(declare-fun e!490903 () Bool)

(declare-fun tp_is_empty!17641 () Bool)

(assert (=> b!882026 (= e!490903 tp_is_empty!17641)))

(declare-fun b!882028 () Bool)

(declare-fun res!599355 () Bool)

(assert (=> b!882028 (=> (not res!599355) (not e!490904))))

(declare-datatypes ((List!17639 0))(
  ( (Nil!17636) (Cons!17635 (h!18766 (_ BitVec 64)) (t!24846 List!17639)) )
))
(declare-fun arrayNoDuplicates!0 (array!51390 (_ BitVec 32) List!17639) Bool)

(assert (=> b!882028 (= res!599355 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17636))))

(declare-fun b!882029 () Bool)

(declare-fun res!599351 () Bool)

(assert (=> b!882029 (=> (not res!599351) (not e!490904))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882029 (= res!599351 (and (= (select (arr!24712 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!882030 () Bool)

(declare-fun res!599354 () Bool)

(assert (=> b!882030 (=> (not res!599354) (not e!490904))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!882030 (= res!599354 (and (= (size!25154 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25153 _keys!868) (size!25154 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28092 () Bool)

(assert (=> mapIsEmpty!28092 mapRes!28092))

(declare-fun b!882031 () Bool)

(declare-fun e!490896 () Bool)

(declare-fun noDuplicate!1316 (List!17639) Bool)

(assert (=> b!882031 (= e!490896 (noDuplicate!1316 Nil!17636))))

(declare-fun b!882032 () Bool)

(declare-fun e!490899 () Bool)

(declare-fun e!490902 () Bool)

(assert (=> b!882032 (= e!490899 (not e!490902))))

(declare-fun res!599353 () Bool)

(assert (=> b!882032 (=> res!599353 e!490902)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882032 (= res!599353 (not (validKeyInArray!0 (select (arr!24712 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11772 0))(
  ( (tuple2!11773 (_1!5896 (_ BitVec 64)) (_2!5896 V!28569)) )
))
(declare-datatypes ((List!17640 0))(
  ( (Nil!17637) (Cons!17636 (h!18767 tuple2!11772) (t!24847 List!17640)) )
))
(declare-datatypes ((ListLongMap!10555 0))(
  ( (ListLongMap!10556 (toList!5293 List!17640)) )
))
(declare-fun lt!399051 () ListLongMap!10555)

(declare-fun lt!399049 () ListLongMap!10555)

(assert (=> b!882032 (= lt!399051 lt!399049)))

(declare-fun v!557 () V!28569)

(declare-fun lt!399047 () ListLongMap!10555)

(declare-fun +!2499 (ListLongMap!10555 tuple2!11772) ListLongMap!10555)

(assert (=> b!882032 (= lt!399049 (+!2499 lt!399047 (tuple2!11773 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!399055 () array!51392)

(declare-fun minValue!654 () V!28569)

(declare-fun zeroValue!654 () V!28569)

(declare-fun getCurrentListMapNoExtraKeys!3252 (array!51390 array!51392 (_ BitVec 32) (_ BitVec 32) V!28569 V!28569 (_ BitVec 32) Int) ListLongMap!10555)

(assert (=> b!882032 (= lt!399051 (getCurrentListMapNoExtraKeys!3252 _keys!868 lt!399055 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882032 (= lt!399047 (getCurrentListMapNoExtraKeys!3252 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30074 0))(
  ( (Unit!30075) )
))
(declare-fun lt!399048 () Unit!30074)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!726 (array!51390 array!51392 (_ BitVec 32) (_ BitVec 32) V!28569 V!28569 (_ BitVec 32) (_ BitVec 64) V!28569 (_ BitVec 32) Int) Unit!30074)

(assert (=> b!882032 (= lt!399048 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!726 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882033 () Bool)

(declare-fun res!599356 () Bool)

(assert (=> b!882033 (=> (not res!599356) (not e!490904))))

(assert (=> b!882033 (= res!599356 (validKeyInArray!0 k!854))))

(declare-fun b!882034 () Bool)

(declare-fun res!599352 () Bool)

(assert (=> b!882034 (=> (not res!599352) (not e!490904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882034 (= res!599352 (validMask!0 mask!1196))))

(declare-fun b!882035 () Bool)

(assert (=> b!882035 (= e!490904 e!490899)))

(declare-fun res!599348 () Bool)

(assert (=> b!882035 (=> (not res!599348) (not e!490899))))

(assert (=> b!882035 (= res!599348 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!399052 () ListLongMap!10555)

(assert (=> b!882035 (= lt!399052 (getCurrentListMapNoExtraKeys!3252 _keys!868 lt!399055 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!882035 (= lt!399055 (array!51393 (store (arr!24713 _values!688) i!612 (ValueCellFull!8381 v!557)) (size!25154 _values!688)))))

(declare-fun lt!399054 () ListLongMap!10555)

(assert (=> b!882035 (= lt!399054 (getCurrentListMapNoExtraKeys!3252 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!882036 () Bool)

(declare-fun e!490897 () Bool)

(assert (=> b!882036 (= e!490897 e!490896)))

(declare-fun res!599359 () Bool)

(assert (=> b!882036 (=> res!599359 e!490896)))

(assert (=> b!882036 (= res!599359 (or (bvsge (size!25153 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25153 _keys!868)) (bvsge from!1053 (size!25153 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882036 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399050 () Unit!30074)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51390 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30074)

(assert (=> b!882036 (= lt!399050 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!882036 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17636)))

(declare-fun lt!399053 () Unit!30074)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51390 (_ BitVec 32) (_ BitVec 32)) Unit!30074)

(assert (=> b!882036 (= lt!399053 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!882037 () Bool)

(assert (=> b!882037 (= e!490902 e!490897)))

(declare-fun res!599358 () Bool)

(assert (=> b!882037 (=> res!599358 e!490897)))

(assert (=> b!882037 (= res!599358 (not (= (select (arr!24712 _keys!868) from!1053) k!854)))))

(declare-fun get!13025 (ValueCell!8381 V!28569) V!28569)

(declare-fun dynLambda!1258 (Int (_ BitVec 64)) V!28569)

(assert (=> b!882037 (= lt!399052 (+!2499 lt!399049 (tuple2!11773 (select (arr!24712 _keys!868) from!1053) (get!13025 (select (arr!24713 _values!688) from!1053) (dynLambda!1258 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882038 () Bool)

(assert (=> b!882038 (= e!490898 tp_is_empty!17641)))

(declare-fun b!882027 () Bool)

(declare-fun e!490900 () Bool)

(assert (=> b!882027 (= e!490900 (and e!490903 mapRes!28092))))

(declare-fun condMapEmpty!28092 () Bool)

(declare-fun mapDefault!28092 () ValueCell!8381)

