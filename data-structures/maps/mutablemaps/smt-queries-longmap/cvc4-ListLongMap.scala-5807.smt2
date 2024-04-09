; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74946 () Bool)

(assert start!74946)

(declare-fun b_free!15437 () Bool)

(declare-fun b_next!15437 () Bool)

(assert (=> start!74946 (= b_free!15437 (not b_next!15437))))

(declare-fun tp!54014 () Bool)

(declare-fun b_and!25591 () Bool)

(assert (=> start!74946 (= tp!54014 b_and!25591)))

(declare-fun e!491626 () Bool)

(declare-fun b!883311 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51472 0))(
  ( (array!51473 (arr!24751 (Array (_ BitVec 32) (_ BitVec 64))) (size!25192 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51472)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883311 (= e!491626 (not (= (select (arr!24751 _keys!868) from!1053) k!854)))))

(declare-datatypes ((Unit!30114 0))(
  ( (Unit!30115) )
))
(declare-fun lt!399810 () Unit!30114)

(declare-fun e!491627 () Unit!30114)

(assert (=> b!883311 (= lt!399810 e!491627)))

(declare-fun c!92979 () Bool)

(assert (=> b!883311 (= c!92979 (= (select (arr!24751 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!28621 0))(
  ( (V!28622 (val!8888 Int)) )
))
(declare-datatypes ((tuple2!11808 0))(
  ( (tuple2!11809 (_1!5914 (_ BitVec 64)) (_2!5914 V!28621)) )
))
(declare-datatypes ((List!17674 0))(
  ( (Nil!17671) (Cons!17670 (h!18801 tuple2!11808) (t!24921 List!17674)) )
))
(declare-datatypes ((ListLongMap!10591 0))(
  ( (ListLongMap!10592 (toList!5311 List!17674)) )
))
(declare-fun lt!399814 () ListLongMap!10591)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8401 0))(
  ( (ValueCellFull!8401 (v!11353 V!28621)) (EmptyCell!8401) )
))
(declare-datatypes ((array!51474 0))(
  ( (array!51475 (arr!24752 (Array (_ BitVec 32) ValueCell!8401)) (size!25193 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51474)

(declare-fun lt!399807 () ListLongMap!10591)

(declare-fun +!2515 (ListLongMap!10591 tuple2!11808) ListLongMap!10591)

(declare-fun get!13053 (ValueCell!8401 V!28621) V!28621)

(declare-fun dynLambda!1270 (Int (_ BitVec 64)) V!28621)

(assert (=> b!883311 (= lt!399807 (+!2515 lt!399814 (tuple2!11809 (select (arr!24751 _keys!868) from!1053) (get!13053 (select (arr!24752 _values!688) from!1053) (dynLambda!1270 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883312 () Bool)

(declare-fun e!491629 () Bool)

(declare-fun e!491630 () Bool)

(assert (=> b!883312 (= e!491629 e!491630)))

(declare-fun res!600226 () Bool)

(assert (=> b!883312 (=> (not res!600226) (not e!491630))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!883312 (= res!600226 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!399804 () array!51474)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28621)

(declare-fun zeroValue!654 () V!28621)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3268 (array!51472 array!51474 (_ BitVec 32) (_ BitVec 32) V!28621 V!28621 (_ BitVec 32) Int) ListLongMap!10591)

(assert (=> b!883312 (= lt!399807 (getCurrentListMapNoExtraKeys!3268 _keys!868 lt!399804 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28621)

(assert (=> b!883312 (= lt!399804 (array!51475 (store (arr!24752 _values!688) i!612 (ValueCellFull!8401 v!557)) (size!25193 _values!688)))))

(declare-fun lt!399811 () ListLongMap!10591)

(assert (=> b!883312 (= lt!399811 (getCurrentListMapNoExtraKeys!3268 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883314 () Bool)

(declare-fun res!600225 () Bool)

(assert (=> b!883314 (=> (not res!600225) (not e!491629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883314 (= res!600225 (validKeyInArray!0 k!854))))

(declare-fun b!883315 () Bool)

(declare-fun Unit!30116 () Unit!30114)

(assert (=> b!883315 (= e!491627 Unit!30116)))

(declare-fun b!883316 () Bool)

(declare-fun res!600221 () Bool)

(assert (=> b!883316 (=> (not res!600221) (not e!491629))))

(declare-datatypes ((List!17675 0))(
  ( (Nil!17672) (Cons!17671 (h!18802 (_ BitVec 64)) (t!24922 List!17675)) )
))
(declare-fun arrayNoDuplicates!0 (array!51472 (_ BitVec 32) List!17675) Bool)

(assert (=> b!883316 (= res!600221 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17672))))

(declare-fun b!883317 () Bool)

(declare-fun res!600220 () Bool)

(assert (=> b!883317 (=> (not res!600220) (not e!491629))))

(assert (=> b!883317 (= res!600220 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25192 _keys!868))))))

(declare-fun b!883318 () Bool)

(declare-fun res!600224 () Bool)

(assert (=> b!883318 (=> (not res!600224) (not e!491629))))

(assert (=> b!883318 (= res!600224 (and (= (select (arr!24751 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883319 () Bool)

(declare-fun res!600219 () Bool)

(assert (=> b!883319 (=> (not res!600219) (not e!491629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51472 (_ BitVec 32)) Bool)

(assert (=> b!883319 (= res!600219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883320 () Bool)

(declare-fun Unit!30117 () Unit!30114)

(assert (=> b!883320 (= e!491627 Unit!30117)))

(declare-fun lt!399813 () Unit!30114)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51472 (_ BitVec 32) (_ BitVec 32)) Unit!30114)

(assert (=> b!883320 (= lt!399813 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!883320 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17672)))

(declare-fun lt!399806 () Unit!30114)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51472 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30114)

(assert (=> b!883320 (= lt!399806 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883320 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399805 () Unit!30114)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51472 (_ BitVec 64) (_ BitVec 32) List!17675) Unit!30114)

(assert (=> b!883320 (= lt!399805 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17672))))

(assert (=> b!883320 false))

(declare-fun b!883321 () Bool)

(declare-fun e!491628 () Bool)

(declare-fun e!491624 () Bool)

(declare-fun mapRes!28158 () Bool)

(assert (=> b!883321 (= e!491628 (and e!491624 mapRes!28158))))

(declare-fun condMapEmpty!28158 () Bool)

(declare-fun mapDefault!28158 () ValueCell!8401)

