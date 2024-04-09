; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73142 () Bool)

(assert start!73142)

(declare-fun b_free!14029 () Bool)

(declare-fun b_next!14029 () Bool)

(assert (=> start!73142 (= b_free!14029 (not b_next!14029))))

(declare-fun tp!49591 () Bool)

(declare-fun b_and!23235 () Bool)

(assert (=> start!73142 (= tp!49591 b_and!23235)))

(declare-fun b!850686 () Bool)

(declare-fun e!474560 () Bool)

(declare-datatypes ((V!26601 0))(
  ( (V!26602 (val!8130 Int)) )
))
(declare-datatypes ((tuple2!10670 0))(
  ( (tuple2!10671 (_1!5345 (_ BitVec 64)) (_2!5345 V!26601)) )
))
(declare-datatypes ((List!16563 0))(
  ( (Nil!16560) (Cons!16559 (h!17690 tuple2!10670) (t!23046 List!16563)) )
))
(declare-datatypes ((ListLongMap!9453 0))(
  ( (ListLongMap!9454 (toList!4742 List!16563)) )
))
(declare-fun call!37942 () ListLongMap!9453)

(declare-fun call!37943 () ListLongMap!9453)

(assert (=> b!850686 (= e!474560 (= call!37942 call!37943))))

(declare-fun res!577972 () Bool)

(declare-fun e!474559 () Bool)

(assert (=> start!73142 (=> (not res!577972) (not e!474559))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48518 0))(
  ( (array!48519 (arr!23286 (Array (_ BitVec 32) (_ BitVec 64))) (size!23727 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48518)

(assert (=> start!73142 (= res!577972 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23727 _keys!868))))))

(assert (=> start!73142 e!474559))

(declare-fun tp_is_empty!16165 () Bool)

(assert (=> start!73142 tp_is_empty!16165))

(assert (=> start!73142 true))

(assert (=> start!73142 tp!49591))

(declare-fun array_inv!18464 (array!48518) Bool)

(assert (=> start!73142 (array_inv!18464 _keys!868)))

(declare-datatypes ((ValueCell!7643 0))(
  ( (ValueCellFull!7643 (v!10551 V!26601)) (EmptyCell!7643) )
))
(declare-datatypes ((array!48520 0))(
  ( (array!48521 (arr!23287 (Array (_ BitVec 32) ValueCell!7643)) (size!23728 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48520)

(declare-fun e!474558 () Bool)

(declare-fun array_inv!18465 (array!48520) Bool)

(assert (=> start!73142 (and (array_inv!18465 _values!688) e!474558)))

(declare-fun b!850687 () Bool)

(declare-fun res!577971 () Bool)

(assert (=> b!850687 (=> (not res!577971) (not e!474559))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850687 (= res!577971 (validMask!0 mask!1196))))

(declare-fun b!850688 () Bool)

(declare-fun e!474557 () Bool)

(assert (=> b!850688 (= e!474557 true)))

(declare-fun lt!383023 () V!26601)

(declare-fun lt!383024 () ListLongMap!9453)

(declare-fun lt!383020 () tuple2!10670)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2085 (ListLongMap!9453 tuple2!10670) ListLongMap!9453)

(assert (=> b!850688 (= (+!2085 lt!383024 lt!383020) (+!2085 (+!2085 lt!383024 (tuple2!10671 k!854 lt!383023)) lt!383020))))

(declare-fun lt!383022 () V!26601)

(assert (=> b!850688 (= lt!383020 (tuple2!10671 k!854 lt!383022))))

(declare-datatypes ((Unit!29016 0))(
  ( (Unit!29017) )
))
(declare-fun lt!383028 () Unit!29016)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!270 (ListLongMap!9453 (_ BitVec 64) V!26601 V!26601) Unit!29016)

(assert (=> b!850688 (= lt!383028 (addSameAsAddTwiceSameKeyDiffValues!270 lt!383024 k!854 lt!383023 lt!383022))))

(declare-fun lt!383019 () V!26601)

(declare-fun get!12278 (ValueCell!7643 V!26601) V!26601)

(assert (=> b!850688 (= lt!383023 (get!12278 (select (arr!23287 _values!688) from!1053) lt!383019))))

(declare-fun lt!383021 () ListLongMap!9453)

(assert (=> b!850688 (= lt!383021 (+!2085 lt!383024 (tuple2!10671 (select (arr!23286 _keys!868) from!1053) lt!383022)))))

(declare-fun v!557 () V!26601)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850688 (= lt!383022 (get!12278 (select (store (arr!23287 _values!688) i!612 (ValueCellFull!7643 v!557)) from!1053) lt!383019))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1018 (Int (_ BitVec 64)) V!26601)

(assert (=> b!850688 (= lt!383019 (dynLambda!1018 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383025 () array!48520)

(declare-fun minValue!654 () V!26601)

(declare-fun zeroValue!654 () V!26601)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2728 (array!48518 array!48520 (_ BitVec 32) (_ BitVec 32) V!26601 V!26601 (_ BitVec 32) Int) ListLongMap!9453)

(assert (=> b!850688 (= lt!383024 (getCurrentListMapNoExtraKeys!2728 _keys!868 lt!383025 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850689 () Bool)

(declare-fun res!577975 () Bool)

(assert (=> b!850689 (=> (not res!577975) (not e!474559))))

(assert (=> b!850689 (= res!577975 (and (= (size!23728 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23727 _keys!868) (size!23728 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850690 () Bool)

(declare-fun e!474561 () Bool)

(assert (=> b!850690 (= e!474561 tp_is_empty!16165)))

(declare-fun b!850691 () Bool)

(declare-fun mapRes!25847 () Bool)

(assert (=> b!850691 (= e!474558 (and e!474561 mapRes!25847))))

(declare-fun condMapEmpty!25847 () Bool)

(declare-fun mapDefault!25847 () ValueCell!7643)

