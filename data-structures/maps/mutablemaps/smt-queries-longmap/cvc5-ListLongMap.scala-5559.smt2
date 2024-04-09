; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73166 () Bool)

(assert start!73166)

(declare-fun b_free!14053 () Bool)

(declare-fun b_next!14053 () Bool)

(assert (=> start!73166 (= b_free!14053 (not b_next!14053))))

(declare-fun tp!49663 () Bool)

(declare-fun b_and!23283 () Bool)

(assert (=> start!73166 (= tp!49663 b_and!23283)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!26633 0))(
  ( (V!26634 (val!8142 Int)) )
))
(declare-datatypes ((tuple2!10694 0))(
  ( (tuple2!10695 (_1!5357 (_ BitVec 64)) (_2!5357 V!26633)) )
))
(declare-datatypes ((List!16582 0))(
  ( (Nil!16579) (Cons!16578 (h!17709 tuple2!10694) (t!23089 List!16582)) )
))
(declare-datatypes ((ListLongMap!9477 0))(
  ( (ListLongMap!9478 (toList!4754 List!16582)) )
))
(declare-fun call!38014 () ListLongMap!9477)

(declare-fun bm!38011 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48566 0))(
  ( (array!48567 (arr!23310 (Array (_ BitVec 32) (_ BitVec 64))) (size!23751 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48566)

(declare-datatypes ((ValueCell!7655 0))(
  ( (ValueCellFull!7655 (v!10563 V!26633)) (EmptyCell!7655) )
))
(declare-datatypes ((array!48568 0))(
  ( (array!48569 (arr!23311 (Array (_ BitVec 32) ValueCell!7655)) (size!23752 (_ BitVec 32))) )
))
(declare-fun lt!383383 () array!48568)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26633)

(declare-fun zeroValue!654 () V!26633)

(declare-fun getCurrentListMapNoExtraKeys!2739 (array!48566 array!48568 (_ BitVec 32) (_ BitVec 32) V!26633 V!26633 (_ BitVec 32) Int) ListLongMap!9477)

(assert (=> bm!38011 (= call!38014 (getCurrentListMapNoExtraKeys!2739 _keys!868 lt!383383 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!578340 () Bool)

(declare-fun e!474851 () Bool)

(assert (=> start!73166 (=> (not res!578340) (not e!474851))))

(assert (=> start!73166 (= res!578340 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23751 _keys!868))))))

(assert (=> start!73166 e!474851))

(declare-fun tp_is_empty!16189 () Bool)

(assert (=> start!73166 tp_is_empty!16189))

(assert (=> start!73166 true))

(assert (=> start!73166 tp!49663))

(declare-fun array_inv!18482 (array!48566) Bool)

(assert (=> start!73166 (array_inv!18482 _keys!868)))

(declare-fun _values!688 () array!48568)

(declare-fun e!474852 () Bool)

(declare-fun array_inv!18483 (array!48568) Bool)

(assert (=> start!73166 (and (array_inv!18483 _values!688) e!474852)))

(declare-fun b!851250 () Bool)

(declare-fun e!474847 () Bool)

(declare-fun e!474848 () Bool)

(assert (=> b!851250 (= e!474847 (not e!474848))))

(declare-fun res!578338 () Bool)

(assert (=> b!851250 (=> res!578338 e!474848)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851250 (= res!578338 (not (validKeyInArray!0 (select (arr!23310 _keys!868) from!1053))))))

(declare-fun e!474846 () Bool)

(assert (=> b!851250 e!474846))

(declare-fun c!91668 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851250 (= c!91668 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29038 0))(
  ( (Unit!29039) )
))
(declare-fun lt!383384 () Unit!29038)

(declare-fun v!557 () V!26633)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!363 (array!48566 array!48568 (_ BitVec 32) (_ BitVec 32) V!26633 V!26633 (_ BitVec 32) (_ BitVec 64) V!26633 (_ BitVec 32) Int) Unit!29038)

(assert (=> b!851250 (= lt!383384 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!363 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851251 () Bool)

(declare-fun res!578331 () Bool)

(assert (=> b!851251 (=> (not res!578331) (not e!474851))))

(assert (=> b!851251 (= res!578331 (and (= (size!23752 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23751 _keys!868) (size!23752 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851252 () Bool)

(declare-fun e!474845 () Bool)

(declare-fun mapRes!25883 () Bool)

(assert (=> b!851252 (= e!474852 (and e!474845 mapRes!25883))))

(declare-fun condMapEmpty!25883 () Bool)

(declare-fun mapDefault!25883 () ValueCell!7655)

