; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73418 () Bool)

(assert start!73418)

(declare-fun b_free!14305 () Bool)

(declare-fun b_next!14305 () Bool)

(assert (=> start!73418 (= b_free!14305 (not b_next!14305))))

(declare-fun tp!50419 () Bool)

(declare-fun b_and!23679 () Bool)

(assert (=> start!73418 (= tp!50419 b_and!23679)))

(declare-fun b!856464 () Bool)

(declare-fun e!477434 () Bool)

(assert (=> b!856464 (= e!477434 (not true))))

(declare-datatypes ((V!26969 0))(
  ( (V!26970 (val!8268 Int)) )
))
(declare-fun v!557 () V!26969)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7781 0))(
  ( (ValueCellFull!7781 (v!10689 V!26969)) (EmptyCell!7781) )
))
(declare-datatypes ((array!49050 0))(
  ( (array!49051 (arr!23552 (Array (_ BitVec 32) ValueCell!7781)) (size!23993 (_ BitVec 32))) )
))
(declare-fun lt!385961 () array!49050)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49052 0))(
  ( (array!49053 (arr!23553 (Array (_ BitVec 32) (_ BitVec 64))) (size!23994 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49052)

(declare-fun _values!688 () array!49050)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26969)

(declare-fun zeroValue!654 () V!26969)

(declare-datatypes ((tuple2!10890 0))(
  ( (tuple2!10891 (_1!5455 (_ BitVec 64)) (_2!5455 V!26969)) )
))
(declare-datatypes ((List!16764 0))(
  ( (Nil!16761) (Cons!16760 (h!17891 tuple2!10890) (t!23413 List!16764)) )
))
(declare-datatypes ((ListLongMap!9673 0))(
  ( (ListLongMap!9674 (toList!4852 List!16764)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2834 (array!49052 array!49050 (_ BitVec 32) (_ BitVec 32) V!26969 V!26969 (_ BitVec 32) Int) ListLongMap!9673)

(declare-fun +!2161 (ListLongMap!9673 tuple2!10890) ListLongMap!9673)

(assert (=> b!856464 (= (getCurrentListMapNoExtraKeys!2834 _keys!868 lt!385961 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2161 (getCurrentListMapNoExtraKeys!2834 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10891 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29164 0))(
  ( (Unit!29165) )
))
(declare-fun lt!385959 () Unit!29164)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!421 (array!49052 array!49050 (_ BitVec 32) (_ BitVec 32) V!26969 V!26969 (_ BitVec 32) (_ BitVec 64) V!26969 (_ BitVec 32) Int) Unit!29164)

(assert (=> b!856464 (= lt!385959 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!421 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856465 () Bool)

(declare-fun e!477435 () Bool)

(assert (=> b!856465 (= e!477435 e!477434)))

(declare-fun res!581846 () Bool)

(assert (=> b!856465 (=> (not res!581846) (not e!477434))))

(assert (=> b!856465 (= res!581846 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!385962 () ListLongMap!9673)

(assert (=> b!856465 (= lt!385962 (getCurrentListMapNoExtraKeys!2834 _keys!868 lt!385961 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856465 (= lt!385961 (array!49051 (store (arr!23552 _values!688) i!612 (ValueCellFull!7781 v!557)) (size!23993 _values!688)))))

(declare-fun lt!385960 () ListLongMap!9673)

(assert (=> b!856465 (= lt!385960 (getCurrentListMapNoExtraKeys!2834 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26261 () Bool)

(declare-fun mapRes!26261 () Bool)

(assert (=> mapIsEmpty!26261 mapRes!26261))

(declare-fun res!581844 () Bool)

(assert (=> start!73418 (=> (not res!581844) (not e!477435))))

(assert (=> start!73418 (= res!581844 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23994 _keys!868))))))

(assert (=> start!73418 e!477435))

(declare-fun tp_is_empty!16441 () Bool)

(assert (=> start!73418 tp_is_empty!16441))

(assert (=> start!73418 true))

(assert (=> start!73418 tp!50419))

(declare-fun array_inv!18642 (array!49052) Bool)

(assert (=> start!73418 (array_inv!18642 _keys!868)))

(declare-fun e!477433 () Bool)

(declare-fun array_inv!18643 (array!49050) Bool)

(assert (=> start!73418 (and (array_inv!18643 _values!688) e!477433)))

(declare-fun b!856466 () Bool)

(declare-fun res!581839 () Bool)

(assert (=> b!856466 (=> (not res!581839) (not e!477435))))

(assert (=> b!856466 (= res!581839 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23994 _keys!868))))))

(declare-fun b!856467 () Bool)

(declare-fun e!477436 () Bool)

(assert (=> b!856467 (= e!477436 tp_is_empty!16441)))

(declare-fun b!856468 () Bool)

(declare-fun res!581840 () Bool)

(assert (=> b!856468 (=> (not res!581840) (not e!477435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856468 (= res!581840 (validKeyInArray!0 k!854))))

(declare-fun b!856469 () Bool)

(assert (=> b!856469 (= e!477433 (and e!477436 mapRes!26261))))

(declare-fun condMapEmpty!26261 () Bool)

(declare-fun mapDefault!26261 () ValueCell!7781)

