; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74108 () Bool)

(assert start!74108)

(declare-fun b_free!14989 () Bool)

(declare-fun b_next!14989 () Bool)

(assert (=> start!74108 (= b_free!14989 (not b_next!14989))))

(declare-fun tp!52481 () Bool)

(declare-fun b_and!24759 () Bool)

(assert (=> start!74108 (= tp!52481 b_and!24759)))

(declare-fun b!871372 () Bool)

(declare-fun e!485198 () Bool)

(declare-datatypes ((array!50390 0))(
  ( (array!50391 (arr!24222 (Array (_ BitVec 32) (_ BitVec 64))) (size!24663 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50390)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871372 (= e!485198 (not (validKeyInArray!0 (select (arr!24222 _keys!868) from!1053))))))

(declare-fun e!485197 () Bool)

(assert (=> b!871372 e!485197))

(declare-fun c!92298 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871372 (= c!92298 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29864 0))(
  ( (Unit!29865) )
))
(declare-fun lt!395430 () Unit!29864)

(declare-datatypes ((V!27889 0))(
  ( (V!27890 (val!8613 Int)) )
))
(declare-fun v!557 () V!27889)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8126 0))(
  ( (ValueCellFull!8126 (v!11034 V!27889)) (EmptyCell!8126) )
))
(declare-datatypes ((array!50392 0))(
  ( (array!50393 (arr!24223 (Array (_ BitVec 32) ValueCell!8126)) (size!24664 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50392)

(declare-fun minValue!654 () V!27889)

(declare-fun zeroValue!654 () V!27889)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!638 (array!50390 array!50392 (_ BitVec 32) (_ BitVec 32) V!27889 V!27889 (_ BitVec 32) (_ BitVec 64) V!27889 (_ BitVec 32) Int) Unit!29864)

(assert (=> b!871372 (= lt!395430 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!638 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871373 () Bool)

(declare-fun res!592419 () Bool)

(declare-fun e!485195 () Bool)

(assert (=> b!871373 (=> (not res!592419) (not e!485195))))

(assert (=> b!871373 (= res!592419 (and (= (select (arr!24222 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27296 () Bool)

(declare-fun mapRes!27296 () Bool)

(assert (=> mapIsEmpty!27296 mapRes!27296))

(declare-fun bm!38443 () Bool)

(declare-datatypes ((tuple2!11442 0))(
  ( (tuple2!11443 (_1!5731 (_ BitVec 64)) (_2!5731 V!27889)) )
))
(declare-datatypes ((List!17296 0))(
  ( (Nil!17293) (Cons!17292 (h!18423 tuple2!11442) (t!24341 List!17296)) )
))
(declare-datatypes ((ListLongMap!10225 0))(
  ( (ListLongMap!10226 (toList!5128 List!17296)) )
))
(declare-fun call!38447 () ListLongMap!10225)

(declare-fun lt!395428 () array!50392)

(declare-fun getCurrentListMapNoExtraKeys!3092 (array!50390 array!50392 (_ BitVec 32) (_ BitVec 32) V!27889 V!27889 (_ BitVec 32) Int) ListLongMap!10225)

(assert (=> bm!38443 (= call!38447 (getCurrentListMapNoExtraKeys!3092 _keys!868 lt!395428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871374 () Bool)

(declare-fun res!592417 () Bool)

(assert (=> b!871374 (=> (not res!592417) (not e!485195))))

(assert (=> b!871374 (= res!592417 (and (= (size!24664 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24663 _keys!868) (size!24664 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!592421 () Bool)

(assert (=> start!74108 (=> (not res!592421) (not e!485195))))

(assert (=> start!74108 (= res!592421 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24663 _keys!868))))))

(assert (=> start!74108 e!485195))

(declare-fun tp_is_empty!17131 () Bool)

(assert (=> start!74108 tp_is_empty!17131))

(assert (=> start!74108 true))

(assert (=> start!74108 tp!52481))

(declare-fun array_inv!19098 (array!50390) Bool)

(assert (=> start!74108 (array_inv!19098 _keys!868)))

(declare-fun e!485196 () Bool)

(declare-fun array_inv!19099 (array!50392) Bool)

(assert (=> start!74108 (and (array_inv!19099 _values!688) e!485196)))

(declare-fun b!871375 () Bool)

(declare-fun e!485194 () Bool)

(assert (=> b!871375 (= e!485194 tp_is_empty!17131)))

(declare-fun call!38446 () ListLongMap!10225)

(declare-fun bm!38444 () Bool)

(assert (=> bm!38444 (= call!38446 (getCurrentListMapNoExtraKeys!3092 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871376 () Bool)

(declare-fun e!485199 () Bool)

(assert (=> b!871376 (= e!485199 tp_is_empty!17131)))

(declare-fun mapNonEmpty!27296 () Bool)

(declare-fun tp!52480 () Bool)

(assert (=> mapNonEmpty!27296 (= mapRes!27296 (and tp!52480 e!485194))))

(declare-fun mapRest!27296 () (Array (_ BitVec 32) ValueCell!8126))

(declare-fun mapValue!27296 () ValueCell!8126)

(declare-fun mapKey!27296 () (_ BitVec 32))

(assert (=> mapNonEmpty!27296 (= (arr!24223 _values!688) (store mapRest!27296 mapKey!27296 mapValue!27296))))

(declare-fun b!871377 () Bool)

(declare-fun res!592418 () Bool)

(assert (=> b!871377 (=> (not res!592418) (not e!485195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871377 (= res!592418 (validMask!0 mask!1196))))

(declare-fun b!871378 () Bool)

(assert (=> b!871378 (= e!485195 e!485198)))

(declare-fun res!592420 () Bool)

(assert (=> b!871378 (=> (not res!592420) (not e!485198))))

(assert (=> b!871378 (= res!592420 (= from!1053 i!612))))

(declare-fun lt!395427 () ListLongMap!10225)

(assert (=> b!871378 (= lt!395427 (getCurrentListMapNoExtraKeys!3092 _keys!868 lt!395428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!871378 (= lt!395428 (array!50393 (store (arr!24223 _values!688) i!612 (ValueCellFull!8126 v!557)) (size!24664 _values!688)))))

(declare-fun lt!395429 () ListLongMap!10225)

(assert (=> b!871378 (= lt!395429 (getCurrentListMapNoExtraKeys!3092 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871379 () Bool)

(declare-fun res!592415 () Bool)

(assert (=> b!871379 (=> (not res!592415) (not e!485195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50390 (_ BitVec 32)) Bool)

(assert (=> b!871379 (= res!592415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871380 () Bool)

(declare-fun res!592416 () Bool)

(assert (=> b!871380 (=> (not res!592416) (not e!485195))))

(assert (=> b!871380 (= res!592416 (validKeyInArray!0 k!854))))

(declare-fun b!871381 () Bool)

(declare-fun res!592414 () Bool)

(assert (=> b!871381 (=> (not res!592414) (not e!485195))))

(assert (=> b!871381 (= res!592414 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24663 _keys!868))))))

(declare-fun b!871382 () Bool)

(declare-fun +!2407 (ListLongMap!10225 tuple2!11442) ListLongMap!10225)

(assert (=> b!871382 (= e!485197 (= call!38447 (+!2407 call!38446 (tuple2!11443 k!854 v!557))))))

(declare-fun b!871383 () Bool)

(declare-fun res!592422 () Bool)

(assert (=> b!871383 (=> (not res!592422) (not e!485195))))

(declare-datatypes ((List!17297 0))(
  ( (Nil!17294) (Cons!17293 (h!18424 (_ BitVec 64)) (t!24342 List!17297)) )
))
(declare-fun arrayNoDuplicates!0 (array!50390 (_ BitVec 32) List!17297) Bool)

(assert (=> b!871383 (= res!592422 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17294))))

(declare-fun b!871384 () Bool)

(assert (=> b!871384 (= e!485197 (= call!38447 call!38446))))

(declare-fun b!871385 () Bool)

(assert (=> b!871385 (= e!485196 (and e!485199 mapRes!27296))))

(declare-fun condMapEmpty!27296 () Bool)

(declare-fun mapDefault!27296 () ValueCell!8126)

