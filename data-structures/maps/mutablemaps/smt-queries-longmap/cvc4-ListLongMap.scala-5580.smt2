; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73296 () Bool)

(assert start!73296)

(declare-fun b_free!14183 () Bool)

(declare-fun b_next!14183 () Bool)

(assert (=> start!73296 (= b_free!14183 (not b_next!14183))))

(declare-fun tp!50053 () Bool)

(declare-fun b_and!23543 () Bool)

(assert (=> start!73296 (= tp!50053 b_and!23543)))

(declare-fun b!854305 () Bool)

(declare-fun e!476409 () Bool)

(declare-fun e!476408 () Bool)

(assert (=> b!854305 (= e!476409 e!476408)))

(declare-fun res!580285 () Bool)

(assert (=> b!854305 (=> (not res!580285) (not e!476408))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854305 (= res!580285 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48818 0))(
  ( (array!48819 (arr!23436 (Array (_ BitVec 32) (_ BitVec 64))) (size!23877 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48818)

(declare-datatypes ((V!26805 0))(
  ( (V!26806 (val!8207 Int)) )
))
(declare-datatypes ((tuple2!10806 0))(
  ( (tuple2!10807 (_1!5413 (_ BitVec 64)) (_2!5413 V!26805)) )
))
(declare-datatypes ((List!16678 0))(
  ( (Nil!16675) (Cons!16674 (h!17805 tuple2!10806) (t!23315 List!16678)) )
))
(declare-datatypes ((ListLongMap!9589 0))(
  ( (ListLongMap!9590 (toList!4810 List!16678)) )
))
(declare-fun lt!385336 () ListLongMap!9589)

(declare-fun minValue!654 () V!26805)

(declare-fun zeroValue!654 () V!26805)

(declare-datatypes ((ValueCell!7720 0))(
  ( (ValueCellFull!7720 (v!10628 V!26805)) (EmptyCell!7720) )
))
(declare-datatypes ((array!48820 0))(
  ( (array!48821 (arr!23437 (Array (_ BitVec 32) ValueCell!7720)) (size!23878 (_ BitVec 32))) )
))
(declare-fun lt!385335 () array!48820)

(declare-fun getCurrentListMapNoExtraKeys!2792 (array!48818 array!48820 (_ BitVec 32) (_ BitVec 32) V!26805 V!26805 (_ BitVec 32) Int) ListLongMap!9589)

(assert (=> b!854305 (= lt!385336 (getCurrentListMapNoExtraKeys!2792 _keys!868 lt!385335 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26805)

(declare-fun _values!688 () array!48820)

(assert (=> b!854305 (= lt!385335 (array!48821 (store (arr!23437 _values!688) i!612 (ValueCellFull!7720 v!557)) (size!23878 _values!688)))))

(declare-fun lt!385337 () ListLongMap!9589)

(assert (=> b!854305 (= lt!385337 (getCurrentListMapNoExtraKeys!2792 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854306 () Bool)

(declare-fun e!476407 () Bool)

(assert (=> b!854306 (= e!476408 (not e!476407))))

(declare-fun res!580289 () Bool)

(assert (=> b!854306 (=> res!580289 e!476407)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854306 (= res!580289 (not (validKeyInArray!0 (select (arr!23436 _keys!868) from!1053))))))

(declare-fun e!476405 () Bool)

(assert (=> b!854306 e!476405))

(declare-fun c!91863 () Bool)

(assert (=> b!854306 (= c!91863 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29132 0))(
  ( (Unit!29133) )
))
(declare-fun lt!385333 () Unit!29132)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!405 (array!48818 array!48820 (_ BitVec 32) (_ BitVec 32) V!26805 V!26805 (_ BitVec 32) (_ BitVec 64) V!26805 (_ BitVec 32) Int) Unit!29132)

(assert (=> b!854306 (= lt!385333 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!405 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38401 () Bool)

(declare-fun call!38404 () ListLongMap!9589)

(assert (=> bm!38401 (= call!38404 (getCurrentListMapNoExtraKeys!2792 _keys!868 lt!385335 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854307 () Bool)

(declare-fun res!580288 () Bool)

(assert (=> b!854307 (=> (not res!580288) (not e!476409))))

(assert (=> b!854307 (= res!580288 (and (= (size!23878 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23877 _keys!868) (size!23878 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26078 () Bool)

(declare-fun mapRes!26078 () Bool)

(assert (=> mapIsEmpty!26078 mapRes!26078))

(declare-fun b!854308 () Bool)

(declare-fun res!580283 () Bool)

(assert (=> b!854308 (=> (not res!580283) (not e!476409))))

(assert (=> b!854308 (= res!580283 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23877 _keys!868))))))

(declare-fun res!580284 () Bool)

(assert (=> start!73296 (=> (not res!580284) (not e!476409))))

(assert (=> start!73296 (= res!580284 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23877 _keys!868))))))

(assert (=> start!73296 e!476409))

(declare-fun tp_is_empty!16319 () Bool)

(assert (=> start!73296 tp_is_empty!16319))

(assert (=> start!73296 true))

(assert (=> start!73296 tp!50053))

(declare-fun array_inv!18556 (array!48818) Bool)

(assert (=> start!73296 (array_inv!18556 _keys!868)))

(declare-fun e!476406 () Bool)

(declare-fun array_inv!18557 (array!48820) Bool)

(assert (=> start!73296 (and (array_inv!18557 _values!688) e!476406)))

(declare-fun b!854309 () Bool)

(declare-fun res!580281 () Bool)

(assert (=> b!854309 (=> (not res!580281) (not e!476409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854309 (= res!580281 (validMask!0 mask!1196))))

(declare-fun bm!38402 () Bool)

(declare-fun call!38405 () ListLongMap!9589)

(assert (=> bm!38402 (= call!38405 (getCurrentListMapNoExtraKeys!2792 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854310 () Bool)

(declare-fun +!2145 (ListLongMap!9589 tuple2!10806) ListLongMap!9589)

(assert (=> b!854310 (= e!476405 (= call!38404 (+!2145 call!38405 (tuple2!10807 k!854 v!557))))))

(declare-fun b!854311 () Bool)

(declare-fun e!476411 () Bool)

(assert (=> b!854311 (= e!476411 tp_is_empty!16319)))

(declare-fun b!854312 () Bool)

(declare-fun res!580290 () Bool)

(assert (=> b!854312 (=> (not res!580290) (not e!476409))))

(assert (=> b!854312 (= res!580290 (and (= (select (arr!23436 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!854313 () Bool)

(declare-fun e!476412 () Bool)

(assert (=> b!854313 (= e!476412 tp_is_empty!16319)))

(declare-fun mapNonEmpty!26078 () Bool)

(declare-fun tp!50054 () Bool)

(assert (=> mapNonEmpty!26078 (= mapRes!26078 (and tp!50054 e!476411))))

(declare-fun mapRest!26078 () (Array (_ BitVec 32) ValueCell!7720))

(declare-fun mapValue!26078 () ValueCell!7720)

(declare-fun mapKey!26078 () (_ BitVec 32))

(assert (=> mapNonEmpty!26078 (= (arr!23437 _values!688) (store mapRest!26078 mapKey!26078 mapValue!26078))))

(declare-fun b!854314 () Bool)

(declare-fun res!580286 () Bool)

(assert (=> b!854314 (=> (not res!580286) (not e!476409))))

(assert (=> b!854314 (= res!580286 (validKeyInArray!0 k!854))))

(declare-fun b!854315 () Bool)

(declare-fun res!580282 () Bool)

(assert (=> b!854315 (=> (not res!580282) (not e!476409))))

(declare-datatypes ((List!16679 0))(
  ( (Nil!16676) (Cons!16675 (h!17806 (_ BitVec 64)) (t!23316 List!16679)) )
))
(declare-fun arrayNoDuplicates!0 (array!48818 (_ BitVec 32) List!16679) Bool)

(assert (=> b!854315 (= res!580282 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16676))))

(declare-fun b!854316 () Bool)

(assert (=> b!854316 (= e!476406 (and e!476412 mapRes!26078))))

(declare-fun condMapEmpty!26078 () Bool)

(declare-fun mapDefault!26078 () ValueCell!7720)

