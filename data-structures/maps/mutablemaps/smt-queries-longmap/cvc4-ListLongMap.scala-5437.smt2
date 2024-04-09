; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72438 () Bool)

(assert start!72438)

(declare-fun b_free!13595 () Bool)

(declare-fun b_next!13595 () Bool)

(assert (=> start!72438 (= b_free!13595 (not b_next!13595))))

(declare-fun tp!47885 () Bool)

(declare-fun b_and!22699 () Bool)

(assert (=> start!72438 (= tp!47885 b_and!22699)))

(declare-fun b!839264 () Bool)

(declare-fun res!570748 () Bool)

(declare-fun e!468418 () Bool)

(assert (=> b!839264 (=> (not res!570748) (not e!468418))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47174 0))(
  ( (array!47175 (arr!22614 (Array (_ BitVec 32) (_ BitVec 64))) (size!23055 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47174)

(assert (=> b!839264 (= res!570748 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23055 _keys!868))))))

(declare-fun b!839265 () Bool)

(assert (=> b!839265 (= e!468418 (not true))))

(declare-fun e!468419 () Bool)

(assert (=> b!839265 e!468419))

(declare-fun c!91170 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!839265 (= c!91170 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28824 0))(
  ( (Unit!28825) )
))
(declare-fun lt!380703 () Unit!28824)

(declare-datatypes ((V!25661 0))(
  ( (V!25662 (val!7778 Int)) )
))
(declare-fun v!557 () V!25661)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!25661)

(declare-fun zeroValue!654 () V!25661)

(declare-datatypes ((ValueCell!7291 0))(
  ( (ValueCellFull!7291 (v!10199 V!25661)) (EmptyCell!7291) )
))
(declare-datatypes ((array!47176 0))(
  ( (array!47177 (arr!22615 (Array (_ BitVec 32) ValueCell!7291)) (size!23056 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47176)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!261 (array!47174 array!47176 (_ BitVec 32) (_ BitVec 32) V!25661 V!25661 (_ BitVec 32) (_ BitVec 64) V!25661 (_ BitVec 32) Int) Unit!28824)

(assert (=> b!839265 (= lt!380703 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!261 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839266 () Bool)

(declare-datatypes ((tuple2!10318 0))(
  ( (tuple2!10319 (_1!5169 (_ BitVec 64)) (_2!5169 V!25661)) )
))
(declare-datatypes ((List!16151 0))(
  ( (Nil!16148) (Cons!16147 (h!17278 tuple2!10318) (t!22530 List!16151)) )
))
(declare-datatypes ((ListLongMap!9101 0))(
  ( (ListLongMap!9102 (toList!4566 List!16151)) )
))
(declare-fun call!37019 () ListLongMap!9101)

(declare-fun call!37018 () ListLongMap!9101)

(assert (=> b!839266 (= e!468419 (= call!37019 call!37018))))

(declare-fun b!839267 () Bool)

(declare-fun res!570744 () Bool)

(assert (=> b!839267 (=> (not res!570744) (not e!468418))))

(declare-datatypes ((List!16152 0))(
  ( (Nil!16149) (Cons!16148 (h!17279 (_ BitVec 64)) (t!22531 List!16152)) )
))
(declare-fun arrayNoDuplicates!0 (array!47174 (_ BitVec 32) List!16152) Bool)

(assert (=> b!839267 (= res!570744 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16149))))

(declare-fun b!839268 () Bool)

(declare-fun res!570745 () Bool)

(assert (=> b!839268 (=> (not res!570745) (not e!468418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839268 (= res!570745 (validKeyInArray!0 k!854))))

(declare-fun b!839269 () Bool)

(declare-fun e!468415 () Bool)

(declare-fun tp_is_empty!15461 () Bool)

(assert (=> b!839269 (= e!468415 tp_is_empty!15461)))

(declare-fun bm!37015 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2559 (array!47174 array!47176 (_ BitVec 32) (_ BitVec 32) V!25661 V!25661 (_ BitVec 32) Int) ListLongMap!9101)

(assert (=> bm!37015 (= call!37018 (getCurrentListMapNoExtraKeys!2559 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839270 () Bool)

(declare-fun res!570747 () Bool)

(assert (=> b!839270 (=> (not res!570747) (not e!468418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839270 (= res!570747 (validMask!0 mask!1196))))

(declare-fun b!839271 () Bool)

(declare-fun +!1985 (ListLongMap!9101 tuple2!10318) ListLongMap!9101)

(assert (=> b!839271 (= e!468419 (= call!37019 (+!1985 call!37018 (tuple2!10319 k!854 v!557))))))

(declare-fun b!839272 () Bool)

(declare-fun res!570743 () Bool)

(assert (=> b!839272 (=> (not res!570743) (not e!468418))))

(assert (=> b!839272 (= res!570743 (and (= (select (arr!22614 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23055 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839273 () Bool)

(declare-fun res!570746 () Bool)

(assert (=> b!839273 (=> (not res!570746) (not e!468418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47174 (_ BitVec 32)) Bool)

(assert (=> b!839273 (= res!570746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!24791 () Bool)

(declare-fun mapRes!24791 () Bool)

(declare-fun tp!47884 () Bool)

(assert (=> mapNonEmpty!24791 (= mapRes!24791 (and tp!47884 e!468415))))

(declare-fun mapKey!24791 () (_ BitVec 32))

(declare-fun mapRest!24791 () (Array (_ BitVec 32) ValueCell!7291))

(declare-fun mapValue!24791 () ValueCell!7291)

(assert (=> mapNonEmpty!24791 (= (arr!22615 _values!688) (store mapRest!24791 mapKey!24791 mapValue!24791))))

(declare-fun b!839274 () Bool)

(declare-fun e!468420 () Bool)

(declare-fun e!468417 () Bool)

(assert (=> b!839274 (= e!468420 (and e!468417 mapRes!24791))))

(declare-fun condMapEmpty!24791 () Bool)

(declare-fun mapDefault!24791 () ValueCell!7291)

