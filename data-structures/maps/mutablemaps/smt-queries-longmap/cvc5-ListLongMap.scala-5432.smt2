; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72404 () Bool)

(assert start!72404)

(declare-fun b_free!13561 () Bool)

(declare-fun b_next!13561 () Bool)

(assert (=> start!72404 (= b_free!13561 (not b_next!13561))))

(declare-fun tp!47783 () Bool)

(declare-fun b_and!22665 () Bool)

(assert (=> start!72404 (= tp!47783 b_and!22665)))

(declare-fun b!838601 () Bool)

(declare-fun e!468109 () Bool)

(assert (=> b!838601 (= e!468109 (not true))))

(declare-fun e!468111 () Bool)

(assert (=> b!838601 e!468111))

(declare-fun c!91119 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838601 (= c!91119 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25617 0))(
  ( (V!25618 (val!7761 Int)) )
))
(declare-fun v!557 () V!25617)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47106 0))(
  ( (array!47107 (arr!22580 (Array (_ BitVec 32) (_ BitVec 64))) (size!23021 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47106)

(declare-datatypes ((ValueCell!7274 0))(
  ( (ValueCellFull!7274 (v!10182 V!25617)) (EmptyCell!7274) )
))
(declare-datatypes ((array!47108 0))(
  ( (array!47109 (arr!22581 (Array (_ BitVec 32) ValueCell!7274)) (size!23022 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47108)

(declare-fun minValue!654 () V!25617)

(declare-datatypes ((Unit!28794 0))(
  ( (Unit!28795) )
))
(declare-fun lt!380652 () Unit!28794)

(declare-fun zeroValue!654 () V!25617)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!246 (array!47106 array!47108 (_ BitVec 32) (_ BitVec 32) V!25617 V!25617 (_ BitVec 32) (_ BitVec 64) V!25617 (_ BitVec 32) Int) Unit!28794)

(assert (=> b!838601 (= lt!380652 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!246 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838602 () Bool)

(declare-fun res!570339 () Bool)

(assert (=> b!838602 (=> (not res!570339) (not e!468109))))

(assert (=> b!838602 (= res!570339 (and (= (size!23022 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23021 _keys!868) (size!23022 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838603 () Bool)

(declare-fun e!468110 () Bool)

(declare-fun e!468114 () Bool)

(declare-fun mapRes!24740 () Bool)

(assert (=> b!838603 (= e!468110 (and e!468114 mapRes!24740))))

(declare-fun condMapEmpty!24740 () Bool)

(declare-fun mapDefault!24740 () ValueCell!7274)

