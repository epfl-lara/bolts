; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74082 () Bool)

(assert start!74082)

(declare-fun b_free!14969 () Bool)

(declare-fun b_next!14969 () Bool)

(assert (=> start!74082 (= b_free!14969 (not b_next!14969))))

(declare-fun tp!52412 () Bool)

(declare-fun b_and!24739 () Bool)

(assert (=> start!74082 (= tp!52412 b_and!24739)))

(declare-fun b!870945 () Bool)

(declare-fun res!592112 () Bool)

(declare-fun e!484969 () Bool)

(assert (=> b!870945 (=> (not res!592112) (not e!484969))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50340 0))(
  ( (array!50341 (arr!24197 (Array (_ BitVec 32) (_ BitVec 64))) (size!24638 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50340)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!870945 (= res!592112 (and (= (select (arr!24197 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870946 () Bool)

(declare-fun e!484970 () Bool)

(declare-fun tp_is_empty!17105 () Bool)

(assert (=> b!870946 (= e!484970 tp_is_empty!17105)))

(declare-fun b!870947 () Bool)

(declare-fun res!592116 () Bool)

(assert (=> b!870947 (=> (not res!592116) (not e!484969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870947 (= res!592116 (validKeyInArray!0 k!854))))

(declare-fun b!870948 () Bool)

(declare-fun e!484966 () Bool)

(assert (=> b!870948 (= e!484966 tp_is_empty!17105)))

(declare-fun mapNonEmpty!27257 () Bool)

(declare-fun mapRes!27257 () Bool)

(declare-fun tp!52411 () Bool)

(assert (=> mapNonEmpty!27257 (= mapRes!27257 (and tp!52411 e!484970))))

(declare-fun mapKey!27257 () (_ BitVec 32))

(declare-datatypes ((V!27853 0))(
  ( (V!27854 (val!8600 Int)) )
))
(declare-datatypes ((ValueCell!8113 0))(
  ( (ValueCellFull!8113 (v!11021 V!27853)) (EmptyCell!8113) )
))
(declare-fun mapValue!27257 () ValueCell!8113)

(declare-datatypes ((array!50342 0))(
  ( (array!50343 (arr!24198 (Array (_ BitVec 32) ValueCell!8113)) (size!24639 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50342)

(declare-fun mapRest!27257 () (Array (_ BitVec 32) ValueCell!8113))

(assert (=> mapNonEmpty!27257 (= (arr!24198 _values!688) (store mapRest!27257 mapKey!27257 mapValue!27257))))

(declare-fun b!870949 () Bool)

(declare-fun res!592108 () Bool)

(assert (=> b!870949 (=> (not res!592108) (not e!484969))))

(assert (=> b!870949 (= res!592108 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24638 _keys!868))))))

(declare-fun res!592113 () Bool)

(assert (=> start!74082 (=> (not res!592113) (not e!484969))))

(assert (=> start!74082 (= res!592113 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24638 _keys!868))))))

(assert (=> start!74082 e!484969))

(assert (=> start!74082 tp_is_empty!17105))

(assert (=> start!74082 true))

(assert (=> start!74082 tp!52412))

(declare-fun array_inv!19082 (array!50340) Bool)

(assert (=> start!74082 (array_inv!19082 _keys!868)))

(declare-fun e!484967 () Bool)

(declare-fun array_inv!19083 (array!50342) Bool)

(assert (=> start!74082 (and (array_inv!19083 _values!688) e!484967)))

(declare-fun b!870950 () Bool)

(declare-fun e!484968 () Bool)

(assert (=> b!870950 (= e!484968 (not true))))

(declare-fun v!557 () V!27853)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!395300 () array!50342)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27853)

(declare-fun zeroValue!654 () V!27853)

(declare-datatypes ((tuple2!11428 0))(
  ( (tuple2!11429 (_1!5724 (_ BitVec 64)) (_2!5724 V!27853)) )
))
(declare-datatypes ((List!17283 0))(
  ( (Nil!17280) (Cons!17279 (h!18410 tuple2!11428) (t!24328 List!17283)) )
))
(declare-datatypes ((ListLongMap!10211 0))(
  ( (ListLongMap!10212 (toList!5121 List!17283)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3085 (array!50340 array!50342 (_ BitVec 32) (_ BitVec 32) V!27853 V!27853 (_ BitVec 32) Int) ListLongMap!10211)

(declare-fun +!2401 (ListLongMap!10211 tuple2!11428) ListLongMap!10211)

(assert (=> b!870950 (= (getCurrentListMapNoExtraKeys!3085 _keys!868 lt!395300 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2401 (getCurrentListMapNoExtraKeys!3085 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11429 k!854 v!557)))))

(declare-datatypes ((Unit!29852 0))(
  ( (Unit!29853) )
))
(declare-fun lt!395301 () Unit!29852)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!632 (array!50340 array!50342 (_ BitVec 32) (_ BitVec 32) V!27853 V!27853 (_ BitVec 32) (_ BitVec 64) V!27853 (_ BitVec 32) Int) Unit!29852)

(assert (=> b!870950 (= lt!395301 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!632 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870951 () Bool)

(assert (=> b!870951 (= e!484967 (and e!484966 mapRes!27257))))

(declare-fun condMapEmpty!27257 () Bool)

(declare-fun mapDefault!27257 () ValueCell!8113)

