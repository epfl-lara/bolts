; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73572 () Bool)

(assert start!73572)

(declare-fun b_free!14459 () Bool)

(declare-fun b_next!14459 () Bool)

(assert (=> start!73572 (= b_free!14459 (not b_next!14459))))

(declare-fun tp!50882 () Bool)

(declare-fun b_and!23915 () Bool)

(assert (=> start!73572 (= tp!50882 b_and!23915)))

(declare-fun b!859610 () Bool)

(declare-fun e!479067 () Bool)

(declare-fun e!479062 () Bool)

(assert (=> b!859610 (= e!479067 (not e!479062))))

(declare-fun res!584223 () Bool)

(assert (=> b!859610 (=> res!584223 e!479062)))

(declare-datatypes ((array!49348 0))(
  ( (array!49349 (arr!23701 (Array (_ BitVec 32) (_ BitVec 64))) (size!24142 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49348)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859610 (= res!584223 (not (validKeyInArray!0 (select (arr!23701 _keys!868) from!1053))))))

(declare-datatypes ((V!27173 0))(
  ( (V!27174 (val!8345 Int)) )
))
(declare-datatypes ((tuple2!11012 0))(
  ( (tuple2!11013 (_1!5516 (_ BitVec 64)) (_2!5516 V!27173)) )
))
(declare-datatypes ((List!16885 0))(
  ( (Nil!16882) (Cons!16881 (h!18012 tuple2!11012) (t!23618 List!16885)) )
))
(declare-datatypes ((ListLongMap!9795 0))(
  ( (ListLongMap!9796 (toList!4913 List!16885)) )
))
(declare-fun lt!387393 () ListLongMap!9795)

(declare-fun lt!387392 () ListLongMap!9795)

(assert (=> b!859610 (= lt!387393 lt!387392)))

(declare-fun lt!387394 () ListLongMap!9795)

(declare-fun v!557 () V!27173)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2216 (ListLongMap!9795 tuple2!11012) ListLongMap!9795)

(assert (=> b!859610 (= lt!387392 (+!2216 lt!387394 (tuple2!11013 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7858 0))(
  ( (ValueCellFull!7858 (v!10766 V!27173)) (EmptyCell!7858) )
))
(declare-datatypes ((array!49350 0))(
  ( (array!49351 (arr!23702 (Array (_ BitVec 32) ValueCell!7858)) (size!24143 (_ BitVec 32))) )
))
(declare-fun lt!387395 () array!49350)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27173)

(declare-fun zeroValue!654 () V!27173)

(declare-fun getCurrentListMapNoExtraKeys!2893 (array!49348 array!49350 (_ BitVec 32) (_ BitVec 32) V!27173 V!27173 (_ BitVec 32) Int) ListLongMap!9795)

(assert (=> b!859610 (= lt!387393 (getCurrentListMapNoExtraKeys!2893 _keys!868 lt!387395 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49350)

(assert (=> b!859610 (= lt!387394 (getCurrentListMapNoExtraKeys!2893 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29276 0))(
  ( (Unit!29277) )
))
(declare-fun lt!387397 () Unit!29276)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!473 (array!49348 array!49350 (_ BitVec 32) (_ BitVec 32) V!27173 V!27173 (_ BitVec 32) (_ BitVec 64) V!27173 (_ BitVec 32) Int) Unit!29276)

(assert (=> b!859610 (= lt!387397 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!473 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26492 () Bool)

(declare-fun mapRes!26492 () Bool)

(assert (=> mapIsEmpty!26492 mapRes!26492))

(declare-fun b!859612 () Bool)

(declare-fun e!479060 () Bool)

(declare-fun e!479059 () Bool)

(assert (=> b!859612 (= e!479060 e!479059)))

(declare-fun res!584210 () Bool)

(assert (=> b!859612 (=> res!584210 e!479059)))

(assert (=> b!859612 (= res!584210 (or (bvsge (size!24142 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24142 _keys!868)) (bvsge from!1053 (size!24142 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859612 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387398 () Unit!29276)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49348 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29276)

(assert (=> b!859612 (= lt!387398 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!16886 0))(
  ( (Nil!16883) (Cons!16882 (h!18013 (_ BitVec 64)) (t!23619 List!16886)) )
))
(declare-fun arrayNoDuplicates!0 (array!49348 (_ BitVec 32) List!16886) Bool)

(assert (=> b!859612 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16883)))

(declare-fun lt!387399 () Unit!29276)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49348 (_ BitVec 32) (_ BitVec 32)) Unit!29276)

(assert (=> b!859612 (= lt!387399 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859613 () Bool)

(declare-fun res!584218 () Bool)

(declare-fun e!479066 () Bool)

(assert (=> b!859613 (=> (not res!584218) (not e!479066))))

(assert (=> b!859613 (= res!584218 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24142 _keys!868))))))

(declare-fun b!859614 () Bool)

(declare-fun res!584214 () Bool)

(assert (=> b!859614 (=> (not res!584214) (not e!479066))))

(assert (=> b!859614 (= res!584214 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16883))))

(declare-fun b!859615 () Bool)

(declare-fun res!584212 () Bool)

(assert (=> b!859615 (=> (not res!584212) (not e!479066))))

(assert (=> b!859615 (= res!584212 (and (= (select (arr!23701 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!859616 () Bool)

(declare-fun res!584219 () Bool)

(assert (=> b!859616 (=> (not res!584219) (not e!479066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49348 (_ BitVec 32)) Bool)

(assert (=> b!859616 (= res!584219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859617 () Bool)

(assert (=> b!859617 (= e!479062 e!479060)))

(declare-fun res!584222 () Bool)

(assert (=> b!859617 (=> res!584222 e!479060)))

(assert (=> b!859617 (= res!584222 (not (= (select (arr!23701 _keys!868) from!1053) k!854)))))

(declare-fun lt!387396 () ListLongMap!9795)

(declare-fun get!12504 (ValueCell!7858 V!27173) V!27173)

(declare-fun dynLambda!1102 (Int (_ BitVec 64)) V!27173)

(assert (=> b!859617 (= lt!387396 (+!2216 lt!387392 (tuple2!11013 (select (arr!23701 _keys!868) from!1053) (get!12504 (select (arr!23702 _values!688) from!1053) (dynLambda!1102 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859618 () Bool)

(declare-fun e!479064 () Bool)

(declare-fun e!479061 () Bool)

(assert (=> b!859618 (= e!479064 (and e!479061 mapRes!26492))))

(declare-fun condMapEmpty!26492 () Bool)

(declare-fun mapDefault!26492 () ValueCell!7858)

