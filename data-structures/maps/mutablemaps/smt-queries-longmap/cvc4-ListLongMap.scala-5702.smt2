; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74028 () Bool)

(assert start!74028)

(declare-fun b_free!14915 () Bool)

(declare-fun b_next!14915 () Bool)

(assert (=> start!74028 (= b_free!14915 (not b_next!14915))))

(declare-fun tp!52250 () Bool)

(declare-fun b_and!24685 () Bool)

(assert (=> start!74028 (= tp!52250 b_and!24685)))

(declare-fun b!869973 () Bool)

(declare-fun res!591386 () Bool)

(declare-fun e!484481 () Bool)

(assert (=> b!869973 (=> (not res!591386) (not e!484481))))

(declare-datatypes ((array!50234 0))(
  ( (array!50235 (arr!24144 (Array (_ BitVec 32) (_ BitVec 64))) (size!24585 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50234)

(declare-datatypes ((List!17245 0))(
  ( (Nil!17242) (Cons!17241 (h!18372 (_ BitVec 64)) (t!24290 List!17245)) )
))
(declare-fun arrayNoDuplicates!0 (array!50234 (_ BitVec 32) List!17245) Bool)

(assert (=> b!869973 (= res!591386 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17242))))

(declare-fun b!869974 () Bool)

(declare-fun res!591384 () Bool)

(assert (=> b!869974 (=> (not res!591384) (not e!484481))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869974 (= res!591384 (and (= (select (arr!24144 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!869975 () Bool)

(declare-fun res!591380 () Bool)

(assert (=> b!869975 (=> (not res!591380) (not e!484481))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50234 (_ BitVec 32)) Bool)

(assert (=> b!869975 (= res!591380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27176 () Bool)

(declare-fun mapRes!27176 () Bool)

(declare-fun tp!52249 () Bool)

(declare-fun e!484485 () Bool)

(assert (=> mapNonEmpty!27176 (= mapRes!27176 (and tp!52249 e!484485))))

(declare-fun mapKey!27176 () (_ BitVec 32))

(declare-datatypes ((V!27781 0))(
  ( (V!27782 (val!8573 Int)) )
))
(declare-datatypes ((ValueCell!8086 0))(
  ( (ValueCellFull!8086 (v!10994 V!27781)) (EmptyCell!8086) )
))
(declare-fun mapRest!27176 () (Array (_ BitVec 32) ValueCell!8086))

(declare-datatypes ((array!50236 0))(
  ( (array!50237 (arr!24145 (Array (_ BitVec 32) ValueCell!8086)) (size!24586 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50236)

(declare-fun mapValue!27176 () ValueCell!8086)

(assert (=> mapNonEmpty!27176 (= (arr!24145 _values!688) (store mapRest!27176 mapKey!27176 mapValue!27176))))

(declare-fun b!869976 () Bool)

(declare-fun res!591382 () Bool)

(assert (=> b!869976 (=> (not res!591382) (not e!484481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869976 (= res!591382 (validKeyInArray!0 k!854))))

(declare-fun b!869978 () Bool)

(declare-fun res!591385 () Bool)

(assert (=> b!869978 (=> (not res!591385) (not e!484481))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!869978 (= res!591385 (and (= (size!24586 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24585 _keys!868) (size!24586 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869979 () Bool)

(declare-fun e!484482 () Bool)

(assert (=> b!869979 (= e!484482 (not true))))

(declare-fun v!557 () V!27781)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27781)

(declare-fun zeroValue!654 () V!27781)

(declare-fun lt!394974 () array!50236)

(declare-datatypes ((tuple2!11388 0))(
  ( (tuple2!11389 (_1!5704 (_ BitVec 64)) (_2!5704 V!27781)) )
))
(declare-datatypes ((List!17246 0))(
  ( (Nil!17243) (Cons!17242 (h!18373 tuple2!11388) (t!24291 List!17246)) )
))
(declare-datatypes ((ListLongMap!10171 0))(
  ( (ListLongMap!10172 (toList!5101 List!17246)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3065 (array!50234 array!50236 (_ BitVec 32) (_ BitVec 32) V!27781 V!27781 (_ BitVec 32) Int) ListLongMap!10171)

(declare-fun +!2384 (ListLongMap!10171 tuple2!11388) ListLongMap!10171)

(assert (=> b!869979 (= (getCurrentListMapNoExtraKeys!3065 _keys!868 lt!394974 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2384 (getCurrentListMapNoExtraKeys!3065 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11389 k!854 v!557)))))

(declare-datatypes ((Unit!29818 0))(
  ( (Unit!29819) )
))
(declare-fun lt!394975 () Unit!29818)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!615 (array!50234 array!50236 (_ BitVec 32) (_ BitVec 32) V!27781 V!27781 (_ BitVec 32) (_ BitVec 64) V!27781 (_ BitVec 32) Int) Unit!29818)

(assert (=> b!869979 (= lt!394975 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!615 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869980 () Bool)

(declare-fun res!591387 () Bool)

(assert (=> b!869980 (=> (not res!591387) (not e!484481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869980 (= res!591387 (validMask!0 mask!1196))))

(declare-fun b!869981 () Bool)

(declare-fun res!591381 () Bool)

(assert (=> b!869981 (=> (not res!591381) (not e!484481))))

(assert (=> b!869981 (= res!591381 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24585 _keys!868))))))

(declare-fun b!869982 () Bool)

(assert (=> b!869982 (= e!484481 e!484482)))

(declare-fun res!591383 () Bool)

(assert (=> b!869982 (=> (not res!591383) (not e!484482))))

(assert (=> b!869982 (= res!591383 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394977 () ListLongMap!10171)

(assert (=> b!869982 (= lt!394977 (getCurrentListMapNoExtraKeys!3065 _keys!868 lt!394974 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!869982 (= lt!394974 (array!50237 (store (arr!24145 _values!688) i!612 (ValueCellFull!8086 v!557)) (size!24586 _values!688)))))

(declare-fun lt!394976 () ListLongMap!10171)

(assert (=> b!869982 (= lt!394976 (getCurrentListMapNoExtraKeys!3065 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869983 () Bool)

(declare-fun tp_is_empty!17051 () Bool)

(assert (=> b!869983 (= e!484485 tp_is_empty!17051)))

(declare-fun b!869984 () Bool)

(declare-fun e!484484 () Bool)

(declare-fun e!484480 () Bool)

(assert (=> b!869984 (= e!484484 (and e!484480 mapRes!27176))))

(declare-fun condMapEmpty!27176 () Bool)

(declare-fun mapDefault!27176 () ValueCell!8086)

