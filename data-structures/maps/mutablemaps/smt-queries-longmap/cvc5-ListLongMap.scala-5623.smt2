; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73550 () Bool)

(assert start!73550)

(declare-fun b_free!14437 () Bool)

(declare-fun b_next!14437 () Bool)

(assert (=> start!73550 (= b_free!14437 (not b_next!14437))))

(declare-fun tp!50815 () Bool)

(declare-fun b_and!23871 () Bool)

(assert (=> start!73550 (= tp!50815 b_and!23871)))

(declare-fun b!859048 () Bool)

(declare-fun e!478775 () Bool)

(declare-fun tp_is_empty!16573 () Bool)

(assert (=> b!859048 (= e!478775 tp_is_empty!16573)))

(declare-fun b!859049 () Bool)

(declare-fun res!583777 () Bool)

(declare-fun e!478772 () Bool)

(assert (=> b!859049 (=> (not res!583777) (not e!478772))))

(declare-datatypes ((array!49304 0))(
  ( (array!49305 (arr!23679 (Array (_ BitVec 32) (_ BitVec 64))) (size!24120 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49304)

(declare-datatypes ((List!16864 0))(
  ( (Nil!16861) (Cons!16860 (h!17991 (_ BitVec 64)) (t!23575 List!16864)) )
))
(declare-fun arrayNoDuplicates!0 (array!49304 (_ BitVec 32) List!16864) Bool)

(assert (=> b!859049 (= res!583777 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16861))))

(declare-fun b!859050 () Bool)

(declare-fun res!583770 () Bool)

(assert (=> b!859050 (=> (not res!583770) (not e!478772))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859050 (= res!583770 (validMask!0 mask!1196))))

(declare-fun b!859051 () Bool)

(declare-fun res!583773 () Bool)

(assert (=> b!859051 (=> (not res!583773) (not e!478772))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!859051 (= res!583773 (and (= (select (arr!23679 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!859052 () Bool)

(declare-fun e!478773 () Bool)

(declare-fun e!478774 () Bool)

(assert (=> b!859052 (= e!478773 (not e!478774))))

(declare-fun res!583776 () Bool)

(assert (=> b!859052 (=> res!583776 e!478774)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859052 (= res!583776 (not (validKeyInArray!0 (select (arr!23679 _keys!868) from!1053))))))

(declare-datatypes ((V!27145 0))(
  ( (V!27146 (val!8334 Int)) )
))
(declare-datatypes ((tuple2!10992 0))(
  ( (tuple2!10993 (_1!5506 (_ BitVec 64)) (_2!5506 V!27145)) )
))
(declare-datatypes ((List!16865 0))(
  ( (Nil!16862) (Cons!16861 (h!17992 tuple2!10992) (t!23576 List!16865)) )
))
(declare-datatypes ((ListLongMap!9775 0))(
  ( (ListLongMap!9776 (toList!4903 List!16865)) )
))
(declare-fun lt!387075 () ListLongMap!9775)

(declare-fun lt!387074 () ListLongMap!9775)

(assert (=> b!859052 (= lt!387075 lt!387074)))

(declare-fun v!557 () V!27145)

(declare-fun lt!387076 () ListLongMap!9775)

(declare-fun +!2206 (ListLongMap!9775 tuple2!10992) ListLongMap!9775)

(assert (=> b!859052 (= lt!387074 (+!2206 lt!387076 (tuple2!10993 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7847 0))(
  ( (ValueCellFull!7847 (v!10755 V!27145)) (EmptyCell!7847) )
))
(declare-datatypes ((array!49306 0))(
  ( (array!49307 (arr!23680 (Array (_ BitVec 32) ValueCell!7847)) (size!24121 (_ BitVec 32))) )
))
(declare-fun lt!387081 () array!49306)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27145)

(declare-fun zeroValue!654 () V!27145)

(declare-fun getCurrentListMapNoExtraKeys!2883 (array!49304 array!49306 (_ BitVec 32) (_ BitVec 32) V!27145 V!27145 (_ BitVec 32) Int) ListLongMap!9775)

(assert (=> b!859052 (= lt!387075 (getCurrentListMapNoExtraKeys!2883 _keys!868 lt!387081 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49306)

(assert (=> b!859052 (= lt!387076 (getCurrentListMapNoExtraKeys!2883 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29256 0))(
  ( (Unit!29257) )
))
(declare-fun lt!387079 () Unit!29256)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!463 (array!49304 array!49306 (_ BitVec 32) (_ BitVec 32) V!27145 V!27145 (_ BitVec 32) (_ BitVec 64) V!27145 (_ BitVec 32) Int) Unit!29256)

(assert (=> b!859052 (= lt!387079 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!463 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859053 () Bool)

(declare-fun e!478770 () Bool)

(declare-fun mapRes!26459 () Bool)

(assert (=> b!859053 (= e!478770 (and e!478775 mapRes!26459))))

(declare-fun condMapEmpty!26459 () Bool)

(declare-fun mapDefault!26459 () ValueCell!7847)

