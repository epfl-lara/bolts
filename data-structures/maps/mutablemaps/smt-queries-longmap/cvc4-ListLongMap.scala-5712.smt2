; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74088 () Bool)

(assert start!74088)

(declare-fun b_free!14975 () Bool)

(declare-fun b_next!14975 () Bool)

(assert (=> start!74088 (= b_free!14975 (not b_next!14975))))

(declare-fun tp!52430 () Bool)

(declare-fun b_and!24745 () Bool)

(assert (=> start!74088 (= tp!52430 b_and!24745)))

(declare-fun b!871053 () Bool)

(declare-fun res!592196 () Bool)

(declare-fun e!485020 () Bool)

(assert (=> b!871053 (=> (not res!592196) (not e!485020))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50350 0))(
  ( (array!50351 (arr!24202 (Array (_ BitVec 32) (_ BitVec 64))) (size!24643 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50350)

(declare-datatypes ((V!27861 0))(
  ( (V!27862 (val!8603 Int)) )
))
(declare-datatypes ((ValueCell!8116 0))(
  ( (ValueCellFull!8116 (v!11024 V!27861)) (EmptyCell!8116) )
))
(declare-datatypes ((array!50352 0))(
  ( (array!50353 (arr!24203 (Array (_ BitVec 32) ValueCell!8116)) (size!24644 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50352)

(assert (=> b!871053 (= res!592196 (and (= (size!24644 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24643 _keys!868) (size!24644 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871054 () Bool)

(declare-fun res!592192 () Bool)

(assert (=> b!871054 (=> (not res!592192) (not e!485020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871054 (= res!592192 (validMask!0 mask!1196))))

(declare-fun b!871055 () Bool)

(declare-fun e!485022 () Bool)

(assert (=> b!871055 (= e!485020 e!485022)))

(declare-fun res!592191 () Bool)

(assert (=> b!871055 (=> (not res!592191) (not e!485022))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871055 (= res!592191 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395334 () array!50352)

(declare-datatypes ((tuple2!11432 0))(
  ( (tuple2!11433 (_1!5726 (_ BitVec 64)) (_2!5726 V!27861)) )
))
(declare-datatypes ((List!17286 0))(
  ( (Nil!17283) (Cons!17282 (h!18413 tuple2!11432) (t!24331 List!17286)) )
))
(declare-datatypes ((ListLongMap!10215 0))(
  ( (ListLongMap!10216 (toList!5123 List!17286)) )
))
(declare-fun lt!395335 () ListLongMap!10215)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27861)

(declare-fun zeroValue!654 () V!27861)

(declare-fun getCurrentListMapNoExtraKeys!3087 (array!50350 array!50352 (_ BitVec 32) (_ BitVec 32) V!27861 V!27861 (_ BitVec 32) Int) ListLongMap!10215)

(assert (=> b!871055 (= lt!395335 (getCurrentListMapNoExtraKeys!3087 _keys!868 lt!395334 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27861)

(assert (=> b!871055 (= lt!395334 (array!50353 (store (arr!24203 _values!688) i!612 (ValueCellFull!8116 v!557)) (size!24644 _values!688)))))

(declare-fun lt!395337 () ListLongMap!10215)

(assert (=> b!871055 (= lt!395337 (getCurrentListMapNoExtraKeys!3087 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871056 () Bool)

(declare-fun e!485025 () Bool)

(declare-fun tp_is_empty!17111 () Bool)

(assert (=> b!871056 (= e!485025 tp_is_empty!17111)))

(declare-fun b!871057 () Bool)

(declare-fun e!485023 () Bool)

(declare-fun mapRes!27266 () Bool)

(assert (=> b!871057 (= e!485023 (and e!485025 mapRes!27266))))

(declare-fun condMapEmpty!27266 () Bool)

(declare-fun mapDefault!27266 () ValueCell!8116)

