; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73410 () Bool)

(assert start!73410)

(declare-fun b_free!14297 () Bool)

(declare-fun b_next!14297 () Bool)

(assert (=> start!73410 (= b_free!14297 (not b_next!14297))))

(declare-fun tp!50395 () Bool)

(declare-fun b_and!23671 () Bool)

(assert (=> start!73410 (= tp!50395 b_and!23671)))

(declare-fun b!856320 () Bool)

(declare-fun res!581737 () Bool)

(declare-fun e!477361 () Bool)

(assert (=> b!856320 (=> (not res!581737) (not e!477361))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856320 (= res!581737 (validKeyInArray!0 k!854))))

(declare-fun b!856321 () Bool)

(declare-fun res!581733 () Bool)

(assert (=> b!856321 (=> (not res!581733) (not e!477361))))

(declare-datatypes ((array!49034 0))(
  ( (array!49035 (arr!23544 (Array (_ BitVec 32) (_ BitVec 64))) (size!23985 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49034)

(declare-datatypes ((List!16756 0))(
  ( (Nil!16753) (Cons!16752 (h!17883 (_ BitVec 64)) (t!23405 List!16756)) )
))
(declare-fun arrayNoDuplicates!0 (array!49034 (_ BitVec 32) List!16756) Bool)

(assert (=> b!856321 (= res!581733 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16753))))

(declare-fun b!856322 () Bool)

(declare-fun res!581735 () Bool)

(assert (=> b!856322 (=> (not res!581735) (not e!477361))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49034 (_ BitVec 32)) Bool)

(assert (=> b!856322 (= res!581735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!581739 () Bool)

(assert (=> start!73410 (=> (not res!581739) (not e!477361))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73410 (= res!581739 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23985 _keys!868))))))

(assert (=> start!73410 e!477361))

(declare-fun tp_is_empty!16433 () Bool)

(assert (=> start!73410 tp_is_empty!16433))

(assert (=> start!73410 true))

(assert (=> start!73410 tp!50395))

(declare-fun array_inv!18634 (array!49034) Bool)

(assert (=> start!73410 (array_inv!18634 _keys!868)))

(declare-datatypes ((V!26957 0))(
  ( (V!26958 (val!8264 Int)) )
))
(declare-datatypes ((ValueCell!7777 0))(
  ( (ValueCellFull!7777 (v!10685 V!26957)) (EmptyCell!7777) )
))
(declare-datatypes ((array!49036 0))(
  ( (array!49037 (arr!23545 (Array (_ BitVec 32) ValueCell!7777)) (size!23986 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49036)

(declare-fun e!477364 () Bool)

(declare-fun array_inv!18635 (array!49036) Bool)

(assert (=> start!73410 (and (array_inv!18635 _values!688) e!477364)))

(declare-fun b!856323 () Bool)

(declare-fun res!581736 () Bool)

(assert (=> b!856323 (=> (not res!581736) (not e!477361))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856323 (= res!581736 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23985 _keys!868))))))

(declare-fun b!856324 () Bool)

(declare-fun res!581734 () Bool)

(assert (=> b!856324 (=> (not res!581734) (not e!477361))))

(assert (=> b!856324 (= res!581734 (and (= (select (arr!23544 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856325 () Bool)

(declare-fun e!477362 () Bool)

(assert (=> b!856325 (= e!477362 (not true))))

(declare-fun v!557 () V!26957)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26957)

(declare-fun zeroValue!654 () V!26957)

(declare-fun lt!385913 () array!49036)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10882 0))(
  ( (tuple2!10883 (_1!5451 (_ BitVec 64)) (_2!5451 V!26957)) )
))
(declare-datatypes ((List!16757 0))(
  ( (Nil!16754) (Cons!16753 (h!17884 tuple2!10882) (t!23406 List!16757)) )
))
(declare-datatypes ((ListLongMap!9665 0))(
  ( (ListLongMap!9666 (toList!4848 List!16757)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2830 (array!49034 array!49036 (_ BitVec 32) (_ BitVec 32) V!26957 V!26957 (_ BitVec 32) Int) ListLongMap!9665)

(declare-fun +!2158 (ListLongMap!9665 tuple2!10882) ListLongMap!9665)

(assert (=> b!856325 (= (getCurrentListMapNoExtraKeys!2830 _keys!868 lt!385913 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2158 (getCurrentListMapNoExtraKeys!2830 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10883 k!854 v!557)))))

(declare-datatypes ((Unit!29158 0))(
  ( (Unit!29159) )
))
(declare-fun lt!385912 () Unit!29158)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!418 (array!49034 array!49036 (_ BitVec 32) (_ BitVec 32) V!26957 V!26957 (_ BitVec 32) (_ BitVec 64) V!26957 (_ BitVec 32) Int) Unit!29158)

(assert (=> b!856325 (= lt!385912 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!418 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26249 () Bool)

(declare-fun mapRes!26249 () Bool)

(assert (=> mapIsEmpty!26249 mapRes!26249))

(declare-fun b!856326 () Bool)

(declare-fun e!477363 () Bool)

(assert (=> b!856326 (= e!477364 (and e!477363 mapRes!26249))))

(declare-fun condMapEmpty!26249 () Bool)

(declare-fun mapDefault!26249 () ValueCell!7777)

