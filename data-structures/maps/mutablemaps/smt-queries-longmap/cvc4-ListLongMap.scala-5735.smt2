; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74238 () Bool)

(assert start!74238)

(declare-fun b_free!15017 () Bool)

(declare-fun b_next!15017 () Bool)

(assert (=> start!74238 (= b_free!15017 (not b_next!15017))))

(declare-fun tp!52702 () Bool)

(declare-fun b_and!24787 () Bool)

(assert (=> start!74238 (= tp!52702 b_and!24787)))

(declare-fun b!872941 () Bool)

(declare-fun res!593371 () Bool)

(declare-fun e!486145 () Bool)

(assert (=> b!872941 (=> (not res!593371) (not e!486145))))

(declare-datatypes ((array!50614 0))(
  ( (array!50615 (arr!24333 (Array (_ BitVec 32) (_ BitVec 64))) (size!24774 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50614)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50614 (_ BitVec 32)) Bool)

(assert (=> b!872941 (= res!593371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872942 () Bool)

(declare-fun res!593372 () Bool)

(assert (=> b!872942 (=> (not res!593372) (not e!486145))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872942 (= res!593372 (validKeyInArray!0 k!854))))

(declare-fun b!872943 () Bool)

(declare-fun res!593367 () Bool)

(assert (=> b!872943 (=> (not res!593367) (not e!486145))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!872943 (= res!593367 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24774 _keys!868))))))

(declare-fun b!872944 () Bool)

(declare-datatypes ((V!28045 0))(
  ( (V!28046 (val!8672 Int)) )
))
(declare-fun v!557 () V!28045)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28045)

(declare-fun zeroValue!654 () V!28045)

(declare-datatypes ((ValueCell!8185 0))(
  ( (ValueCellFull!8185 (v!11093 V!28045)) (EmptyCell!8185) )
))
(declare-datatypes ((array!50616 0))(
  ( (array!50617 (arr!24334 (Array (_ BitVec 32) ValueCell!8185)) (size!24775 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50616)

(declare-datatypes ((tuple2!11460 0))(
  ( (tuple2!11461 (_1!5740 (_ BitVec 64)) (_2!5740 V!28045)) )
))
(declare-datatypes ((List!17345 0))(
  ( (Nil!17342) (Cons!17341 (h!18472 tuple2!11460) (t!24390 List!17345)) )
))
(declare-datatypes ((ListLongMap!10243 0))(
  ( (ListLongMap!10244 (toList!5137 List!17345)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3101 (array!50614 array!50616 (_ BitVec 32) (_ BitVec 32) V!28045 V!28045 (_ BitVec 32) Int) ListLongMap!10243)

(assert (=> b!872944 (= e!486145 (not (= (getCurrentListMapNoExtraKeys!3101 _keys!868 (array!50617 (store (arr!24334 _values!688) i!612 (ValueCellFull!8185 v!557)) (size!24775 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) (getCurrentListMapNoExtraKeys!3101 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))))

(declare-fun e!486149 () Bool)

(assert (=> b!872944 e!486149))

(declare-fun c!92337 () Bool)

(assert (=> b!872944 (= c!92337 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29884 0))(
  ( (Unit!29885) )
))
(declare-fun lt!395625 () Unit!29884)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!647 (array!50614 array!50616 (_ BitVec 32) (_ BitVec 32) V!28045 V!28045 (_ BitVec 32) (_ BitVec 64) V!28045 (_ BitVec 32) Int) Unit!29884)

(assert (=> b!872944 (= lt!395625 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!647 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38518 () ListLongMap!10243)

(declare-fun b!872945 () Bool)

(declare-fun call!38519 () ListLongMap!10243)

(declare-fun +!2415 (ListLongMap!10243 tuple2!11460) ListLongMap!10243)

(assert (=> b!872945 (= e!486149 (= call!38518 (+!2415 call!38519 (tuple2!11461 k!854 v!557))))))

(declare-fun res!593366 () Bool)

(assert (=> start!74238 (=> (not res!593366) (not e!486145))))

(assert (=> start!74238 (= res!593366 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24774 _keys!868))))))

(assert (=> start!74238 e!486145))

(declare-fun tp_is_empty!17249 () Bool)

(assert (=> start!74238 tp_is_empty!17249))

(assert (=> start!74238 true))

(assert (=> start!74238 tp!52702))

(declare-fun array_inv!19180 (array!50614) Bool)

(assert (=> start!74238 (array_inv!19180 _keys!868)))

(declare-fun e!486150 () Bool)

(declare-fun array_inv!19181 (array!50616) Bool)

(assert (=> start!74238 (and (array_inv!19181 _values!688) e!486150)))

(declare-fun b!872946 () Bool)

(declare-fun e!486146 () Bool)

(declare-fun mapRes!27476 () Bool)

(assert (=> b!872946 (= e!486150 (and e!486146 mapRes!27476))))

(declare-fun condMapEmpty!27476 () Bool)

(declare-fun mapDefault!27476 () ValueCell!8185)

