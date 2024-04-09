; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74112 () Bool)

(assert start!74112)

(declare-fun b_free!14993 () Bool)

(declare-fun b_next!14993 () Bool)

(assert (=> start!74112 (= b_free!14993 (not b_next!14993))))

(declare-fun tp!52492 () Bool)

(declare-fun b_and!24763 () Bool)

(assert (=> start!74112 (= tp!52492 b_and!24763)))

(declare-fun b!871456 () Bool)

(declare-fun e!485236 () Bool)

(declare-fun e!485238 () Bool)

(assert (=> b!871456 (= e!485236 e!485238)))

(declare-fun res!592469 () Bool)

(assert (=> b!871456 (=> (not res!592469) (not e!485238))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871456 (= res!592469 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50398 0))(
  ( (array!50399 (arr!24226 (Array (_ BitVec 32) (_ BitVec 64))) (size!24667 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50398)

(declare-datatypes ((V!27893 0))(
  ( (V!27894 (val!8615 Int)) )
))
(declare-datatypes ((ValueCell!8128 0))(
  ( (ValueCellFull!8128 (v!11036 V!27893)) (EmptyCell!8128) )
))
(declare-datatypes ((array!50400 0))(
  ( (array!50401 (arr!24227 (Array (_ BitVec 32) ValueCell!8128)) (size!24668 (_ BitVec 32))) )
))
(declare-fun lt!395452 () array!50400)

(declare-datatypes ((tuple2!11446 0))(
  ( (tuple2!11447 (_1!5733 (_ BitVec 64)) (_2!5733 V!27893)) )
))
(declare-datatypes ((List!17300 0))(
  ( (Nil!17297) (Cons!17296 (h!18427 tuple2!11446) (t!24345 List!17300)) )
))
(declare-datatypes ((ListLongMap!10229 0))(
  ( (ListLongMap!10230 (toList!5130 List!17300)) )
))
(declare-fun lt!395451 () ListLongMap!10229)

(declare-fun minValue!654 () V!27893)

(declare-fun zeroValue!654 () V!27893)

(declare-fun getCurrentListMapNoExtraKeys!3094 (array!50398 array!50400 (_ BitVec 32) (_ BitVec 32) V!27893 V!27893 (_ BitVec 32) Int) ListLongMap!10229)

(assert (=> b!871456 (= lt!395451 (getCurrentListMapNoExtraKeys!3094 _keys!868 lt!395452 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27893)

(declare-fun _values!688 () array!50400)

(assert (=> b!871456 (= lt!395452 (array!50401 (store (arr!24227 _values!688) i!612 (ValueCellFull!8128 v!557)) (size!24668 _values!688)))))

(declare-fun lt!395454 () ListLongMap!10229)

(assert (=> b!871456 (= lt!395454 (getCurrentListMapNoExtraKeys!3094 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871457 () Bool)

(declare-fun e!485241 () Bool)

(declare-fun call!38459 () ListLongMap!10229)

(declare-fun call!38458 () ListLongMap!10229)

(assert (=> b!871457 (= e!485241 (= call!38459 call!38458))))

(declare-fun mapNonEmpty!27302 () Bool)

(declare-fun mapRes!27302 () Bool)

(declare-fun tp!52493 () Bool)

(declare-fun e!485237 () Bool)

(assert (=> mapNonEmpty!27302 (= mapRes!27302 (and tp!52493 e!485237))))

(declare-fun mapKey!27302 () (_ BitVec 32))

(declare-fun mapRest!27302 () (Array (_ BitVec 32) ValueCell!8128))

(declare-fun mapValue!27302 () ValueCell!8128)

(assert (=> mapNonEmpty!27302 (= (arr!24227 _values!688) (store mapRest!27302 mapKey!27302 mapValue!27302))))

(declare-fun b!871458 () Bool)

(declare-fun res!592474 () Bool)

(assert (=> b!871458 (=> (not res!592474) (not e!485236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50398 (_ BitVec 32)) Bool)

(assert (=> b!871458 (= res!592474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!592476 () Bool)

(assert (=> start!74112 (=> (not res!592476) (not e!485236))))

(assert (=> start!74112 (= res!592476 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24667 _keys!868))))))

(assert (=> start!74112 e!485236))

(declare-fun tp_is_empty!17135 () Bool)

(assert (=> start!74112 tp_is_empty!17135))

(assert (=> start!74112 true))

(assert (=> start!74112 tp!52492))

(declare-fun array_inv!19102 (array!50398) Bool)

(assert (=> start!74112 (array_inv!19102 _keys!868)))

(declare-fun e!485239 () Bool)

(declare-fun array_inv!19103 (array!50400) Bool)

(assert (=> start!74112 (and (array_inv!19103 _values!688) e!485239)))

(declare-fun b!871459 () Bool)

(assert (=> b!871459 (= e!485237 tp_is_empty!17135)))

(declare-fun b!871460 () Bool)

(declare-fun res!592472 () Bool)

(assert (=> b!871460 (=> (not res!592472) (not e!485236))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871460 (= res!592472 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27302 () Bool)

(assert (=> mapIsEmpty!27302 mapRes!27302))

(declare-fun b!871461 () Bool)

(assert (=> b!871461 (= e!485238 (not (validKeyInArray!0 (select (arr!24226 _keys!868) from!1053))))))

(assert (=> b!871461 e!485241))

(declare-fun c!92304 () Bool)

(assert (=> b!871461 (= c!92304 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29868 0))(
  ( (Unit!29869) )
))
(declare-fun lt!395453 () Unit!29868)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!640 (array!50398 array!50400 (_ BitVec 32) (_ BitVec 32) V!27893 V!27893 (_ BitVec 32) (_ BitVec 64) V!27893 (_ BitVec 32) Int) Unit!29868)

(assert (=> b!871461 (= lt!395453 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!640 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871462 () Bool)

(declare-fun res!592473 () Bool)

(assert (=> b!871462 (=> (not res!592473) (not e!485236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871462 (= res!592473 (validMask!0 mask!1196))))

(declare-fun b!871463 () Bool)

(declare-fun e!485235 () Bool)

(assert (=> b!871463 (= e!485235 tp_is_empty!17135)))

(declare-fun bm!38455 () Bool)

(assert (=> bm!38455 (= call!38459 (getCurrentListMapNoExtraKeys!3094 _keys!868 lt!395452 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871464 () Bool)

(declare-fun res!592470 () Bool)

(assert (=> b!871464 (=> (not res!592470) (not e!485236))))

(assert (=> b!871464 (= res!592470 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24667 _keys!868))))))

(declare-fun b!871465 () Bool)

(declare-fun res!592468 () Bool)

(assert (=> b!871465 (=> (not res!592468) (not e!485236))))

(declare-datatypes ((List!17301 0))(
  ( (Nil!17298) (Cons!17297 (h!18428 (_ BitVec 64)) (t!24346 List!17301)) )
))
(declare-fun arrayNoDuplicates!0 (array!50398 (_ BitVec 32) List!17301) Bool)

(assert (=> b!871465 (= res!592468 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17298))))

(declare-fun b!871466 () Bool)

(declare-fun +!2409 (ListLongMap!10229 tuple2!11446) ListLongMap!10229)

(assert (=> b!871466 (= e!485241 (= call!38459 (+!2409 call!38458 (tuple2!11447 k!854 v!557))))))

(declare-fun b!871467 () Bool)

(assert (=> b!871467 (= e!485239 (and e!485235 mapRes!27302))))

(declare-fun condMapEmpty!27302 () Bool)

(declare-fun mapDefault!27302 () ValueCell!8128)

