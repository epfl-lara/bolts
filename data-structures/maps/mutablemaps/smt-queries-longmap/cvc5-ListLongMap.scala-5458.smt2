; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72560 () Bool)

(assert start!72560)

(declare-fun b_free!13717 () Bool)

(declare-fun b_next!13717 () Bool)

(assert (=> start!72560 (= b_free!13717 (not b_next!13717))))

(declare-fun tp!48251 () Bool)

(declare-fun b_and!22821 () Bool)

(assert (=> start!72560 (= tp!48251 b_and!22821)))

(declare-fun mapNonEmpty!24974 () Bool)

(declare-fun mapRes!24974 () Bool)

(declare-fun tp!48250 () Bool)

(declare-fun e!469515 () Bool)

(assert (=> mapNonEmpty!24974 (= mapRes!24974 (and tp!48250 e!469515))))

(declare-datatypes ((V!25825 0))(
  ( (V!25826 (val!7839 Int)) )
))
(declare-datatypes ((ValueCell!7352 0))(
  ( (ValueCellFull!7352 (v!10260 V!25825)) (EmptyCell!7352) )
))
(declare-fun mapValue!24974 () ValueCell!7352)

(declare-fun mapKey!24974 () (_ BitVec 32))

(declare-datatypes ((array!47410 0))(
  ( (array!47411 (arr!22732 (Array (_ BitVec 32) ValueCell!7352)) (size!23173 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47410)

(declare-fun mapRest!24974 () (Array (_ BitVec 32) ValueCell!7352))

(assert (=> mapNonEmpty!24974 (= (arr!22732 _values!688) (store mapRest!24974 mapKey!24974 mapValue!24974))))

(declare-fun mapIsEmpty!24974 () Bool)

(assert (=> mapIsEmpty!24974 mapRes!24974))

(declare-fun b!841643 () Bool)

(declare-fun e!469516 () Bool)

(assert (=> b!841643 (= e!469516 (not true))))

(declare-fun e!469518 () Bool)

(assert (=> b!841643 e!469518))

(declare-fun c!91353 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841643 (= c!91353 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25825)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28900 0))(
  ( (Unit!28901) )
))
(declare-fun lt!380886 () Unit!28900)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47412 0))(
  ( (array!47413 (arr!22733 (Array (_ BitVec 32) (_ BitVec 64))) (size!23174 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47412)

(declare-fun minValue!654 () V!25825)

(declare-fun zeroValue!654 () V!25825)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!299 (array!47412 array!47410 (_ BitVec 32) (_ BitVec 32) V!25825 V!25825 (_ BitVec 32) (_ BitVec 64) V!25825 (_ BitVec 32) Int) Unit!28900)

(assert (=> b!841643 (= lt!380886 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!299 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841644 () Bool)

(declare-fun res!572208 () Bool)

(assert (=> b!841644 (=> (not res!572208) (not e!469516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841644 (= res!572208 (validKeyInArray!0 k!854))))

(declare-fun b!841645 () Bool)

(declare-fun res!572213 () Bool)

(assert (=> b!841645 (=> (not res!572213) (not e!469516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841645 (= res!572213 (validMask!0 mask!1196))))

(declare-fun b!841646 () Bool)

(declare-fun res!572207 () Bool)

(assert (=> b!841646 (=> (not res!572207) (not e!469516))))

(declare-datatypes ((List!16248 0))(
  ( (Nil!16245) (Cons!16244 (h!17375 (_ BitVec 64)) (t!22627 List!16248)) )
))
(declare-fun arrayNoDuplicates!0 (array!47412 (_ BitVec 32) List!16248) Bool)

(assert (=> b!841646 (= res!572207 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16245))))

(declare-fun b!841647 () Bool)

(declare-fun e!469517 () Bool)

(declare-fun e!469514 () Bool)

(assert (=> b!841647 (= e!469517 (and e!469514 mapRes!24974))))

(declare-fun condMapEmpty!24974 () Bool)

(declare-fun mapDefault!24974 () ValueCell!7352)

