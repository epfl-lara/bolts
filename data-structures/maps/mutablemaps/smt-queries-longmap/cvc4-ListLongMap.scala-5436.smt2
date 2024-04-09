; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72432 () Bool)

(assert start!72432)

(declare-fun b_free!13589 () Bool)

(declare-fun b_next!13589 () Bool)

(assert (=> start!72432 (= b_free!13589 (not b_next!13589))))

(declare-fun tp!47866 () Bool)

(declare-fun b_and!22693 () Bool)

(assert (=> start!72432 (= tp!47866 b_and!22693)))

(declare-fun b!839147 () Bool)

(declare-fun e!468365 () Bool)

(assert (=> b!839147 (= e!468365 (not true))))

(declare-fun e!468362 () Bool)

(assert (=> b!839147 e!468362))

(declare-fun c!91161 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839147 (= c!91161 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28818 0))(
  ( (Unit!28819) )
))
(declare-fun lt!380694 () Unit!28818)

(declare-datatypes ((V!25653 0))(
  ( (V!25654 (val!7775 Int)) )
))
(declare-fun v!557 () V!25653)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47162 0))(
  ( (array!47163 (arr!22608 (Array (_ BitVec 32) (_ BitVec 64))) (size!23049 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47162)

(declare-datatypes ((ValueCell!7288 0))(
  ( (ValueCellFull!7288 (v!10196 V!25653)) (EmptyCell!7288) )
))
(declare-datatypes ((array!47164 0))(
  ( (array!47165 (arr!22609 (Array (_ BitVec 32) ValueCell!7288)) (size!23050 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47164)

(declare-fun minValue!654 () V!25653)

(declare-fun zeroValue!654 () V!25653)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!258 (array!47162 array!47164 (_ BitVec 32) (_ BitVec 32) V!25653 V!25653 (_ BitVec 32) (_ BitVec 64) V!25653 (_ BitVec 32) Int) Unit!28818)

(assert (=> b!839147 (= lt!380694 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!258 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839148 () Bool)

(declare-fun res!570676 () Bool)

(assert (=> b!839148 (=> (not res!570676) (not e!468365))))

(assert (=> b!839148 (= res!570676 (and (= (size!23050 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23049 _keys!868) (size!23050 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839149 () Bool)

(declare-fun res!570674 () Bool)

(assert (=> b!839149 (=> (not res!570674) (not e!468365))))

(declare-datatypes ((List!16145 0))(
  ( (Nil!16142) (Cons!16141 (h!17272 (_ BitVec 64)) (t!22524 List!16145)) )
))
(declare-fun arrayNoDuplicates!0 (array!47162 (_ BitVec 32) List!16145) Bool)

(assert (=> b!839149 (= res!570674 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16142))))

(declare-fun b!839150 () Bool)

(declare-fun res!570675 () Bool)

(assert (=> b!839150 (=> (not res!570675) (not e!468365))))

(assert (=> b!839150 (= res!570675 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23049 _keys!868))))))

(declare-fun b!839151 () Bool)

(declare-datatypes ((tuple2!10312 0))(
  ( (tuple2!10313 (_1!5166 (_ BitVec 64)) (_2!5166 V!25653)) )
))
(declare-datatypes ((List!16146 0))(
  ( (Nil!16143) (Cons!16142 (h!17273 tuple2!10312) (t!22525 List!16146)) )
))
(declare-datatypes ((ListLongMap!9095 0))(
  ( (ListLongMap!9096 (toList!4563 List!16146)) )
))
(declare-fun call!37000 () ListLongMap!9095)

(declare-fun call!37001 () ListLongMap!9095)

(declare-fun +!1982 (ListLongMap!9095 tuple2!10312) ListLongMap!9095)

(assert (=> b!839151 (= e!468362 (= call!37000 (+!1982 call!37001 (tuple2!10313 k!854 v!557))))))

(declare-fun b!839152 () Bool)

(declare-fun e!468364 () Bool)

(declare-fun e!468361 () Bool)

(declare-fun mapRes!24782 () Bool)

(assert (=> b!839152 (= e!468364 (and e!468361 mapRes!24782))))

(declare-fun condMapEmpty!24782 () Bool)

(declare-fun mapDefault!24782 () ValueCell!7288)

