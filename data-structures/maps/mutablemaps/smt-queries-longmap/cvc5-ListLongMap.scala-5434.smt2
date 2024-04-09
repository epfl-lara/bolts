; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72416 () Bool)

(assert start!72416)

(declare-fun b_free!13573 () Bool)

(declare-fun b_next!13573 () Bool)

(assert (=> start!72416 (= b_free!13573 (not b_next!13573))))

(declare-fun tp!47819 () Bool)

(declare-fun b_and!22677 () Bool)

(assert (=> start!72416 (= tp!47819 b_and!22677)))

(declare-fun b!838835 () Bool)

(declare-fun e!468220 () Bool)

(assert (=> b!838835 (= e!468220 (not true))))

(declare-fun e!468219 () Bool)

(assert (=> b!838835 e!468219))

(declare-fun c!91137 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838835 (= c!91137 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28804 0))(
  ( (Unit!28805) )
))
(declare-fun lt!380670 () Unit!28804)

(declare-datatypes ((V!25633 0))(
  ( (V!25634 (val!7767 Int)) )
))
(declare-fun v!557 () V!25633)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47130 0))(
  ( (array!47131 (arr!22592 (Array (_ BitVec 32) (_ BitVec 64))) (size!23033 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47130)

(declare-fun minValue!654 () V!25633)

(declare-fun zeroValue!654 () V!25633)

(declare-datatypes ((ValueCell!7280 0))(
  ( (ValueCellFull!7280 (v!10188 V!25633)) (EmptyCell!7280) )
))
(declare-datatypes ((array!47132 0))(
  ( (array!47133 (arr!22593 (Array (_ BitVec 32) ValueCell!7280)) (size!23034 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47132)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!251 (array!47130 array!47132 (_ BitVec 32) (_ BitVec 32) V!25633 V!25633 (_ BitVec 32) (_ BitVec 64) V!25633 (_ BitVec 32) Int) Unit!28804)

(assert (=> b!838835 (= lt!380670 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!251 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838836 () Bool)

(declare-fun res!570479 () Bool)

(assert (=> b!838836 (=> (not res!570479) (not e!468220))))

(assert (=> b!838836 (= res!570479 (and (= (size!23034 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23033 _keys!868) (size!23034 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!36949 () Bool)

(declare-datatypes ((tuple2!10296 0))(
  ( (tuple2!10297 (_1!5158 (_ BitVec 64)) (_2!5158 V!25633)) )
))
(declare-datatypes ((List!16132 0))(
  ( (Nil!16129) (Cons!16128 (h!17259 tuple2!10296) (t!22511 List!16132)) )
))
(declare-datatypes ((ListLongMap!9079 0))(
  ( (ListLongMap!9080 (toList!4555 List!16132)) )
))
(declare-fun call!36953 () ListLongMap!9079)

(declare-fun getCurrentListMapNoExtraKeys!2550 (array!47130 array!47132 (_ BitVec 32) (_ BitVec 32) V!25633 V!25633 (_ BitVec 32) Int) ListLongMap!9079)

(assert (=> bm!36949 (= call!36953 (getCurrentListMapNoExtraKeys!2550 _keys!868 (array!47133 (store (arr!22593 _values!688) i!612 (ValueCellFull!7280 v!557)) (size!23034 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838838 () Bool)

(declare-fun res!570482 () Bool)

(assert (=> b!838838 (=> (not res!570482) (not e!468220))))

(assert (=> b!838838 (= res!570482 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23033 _keys!868))))))

(declare-fun mapIsEmpty!24758 () Bool)

(declare-fun mapRes!24758 () Bool)

(assert (=> mapIsEmpty!24758 mapRes!24758))

(declare-fun b!838839 () Bool)

(declare-fun call!36952 () ListLongMap!9079)

(assert (=> b!838839 (= e!468219 (= call!36953 call!36952))))

(declare-fun b!838840 () Bool)

(declare-fun e!468221 () Bool)

(declare-fun tp_is_empty!15439 () Bool)

(assert (=> b!838840 (= e!468221 tp_is_empty!15439)))

(declare-fun res!570483 () Bool)

(assert (=> start!72416 (=> (not res!570483) (not e!468220))))

(assert (=> start!72416 (= res!570483 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23033 _keys!868))))))

(assert (=> start!72416 e!468220))

(assert (=> start!72416 tp_is_empty!15439))

(assert (=> start!72416 true))

(assert (=> start!72416 tp!47819))

(declare-fun array_inv!17972 (array!47130) Bool)

(assert (=> start!72416 (array_inv!17972 _keys!868)))

(declare-fun e!468218 () Bool)

(declare-fun array_inv!17973 (array!47132) Bool)

(assert (=> start!72416 (and (array_inv!17973 _values!688) e!468218)))

(declare-fun b!838837 () Bool)

(declare-fun res!570484 () Bool)

(assert (=> b!838837 (=> (not res!570484) (not e!468220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838837 (= res!570484 (validKeyInArray!0 k!854))))

(declare-fun b!838841 () Bool)

(declare-fun res!570481 () Bool)

(assert (=> b!838841 (=> (not res!570481) (not e!468220))))

(assert (=> b!838841 (= res!570481 (and (= (select (arr!22592 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23033 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838842 () Bool)

(declare-fun e!468222 () Bool)

(assert (=> b!838842 (= e!468218 (and e!468222 mapRes!24758))))

(declare-fun condMapEmpty!24758 () Bool)

(declare-fun mapDefault!24758 () ValueCell!7280)

