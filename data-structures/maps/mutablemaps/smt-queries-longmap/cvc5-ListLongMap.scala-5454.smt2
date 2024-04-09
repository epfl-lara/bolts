; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72536 () Bool)

(assert start!72536)

(declare-fun b_free!13693 () Bool)

(declare-fun b_next!13693 () Bool)

(assert (=> start!72536 (= b_free!13693 (not b_next!13693))))

(declare-fun tp!48179 () Bool)

(declare-fun b_and!22797 () Bool)

(assert (=> start!72536 (= tp!48179 b_and!22797)))

(declare-fun b!841175 () Bool)

(declare-fun res!571920 () Bool)

(declare-fun e!469297 () Bool)

(assert (=> b!841175 (=> (not res!571920) (not e!469297))))

(declare-datatypes ((array!47364 0))(
  ( (array!47365 (arr!22709 (Array (_ BitVec 32) (_ BitVec 64))) (size!23150 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47364)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47364 (_ BitVec 32)) Bool)

(assert (=> b!841175 (= res!571920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-datatypes ((V!25793 0))(
  ( (V!25794 (val!7827 Int)) )
))
(declare-fun v!557 () V!25793)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25793)

(declare-fun zeroValue!654 () V!25793)

(declare-datatypes ((tuple2!10404 0))(
  ( (tuple2!10405 (_1!5212 (_ BitVec 64)) (_2!5212 V!25793)) )
))
(declare-datatypes ((List!16228 0))(
  ( (Nil!16225) (Cons!16224 (h!17355 tuple2!10404) (t!22607 List!16228)) )
))
(declare-datatypes ((ListLongMap!9187 0))(
  ( (ListLongMap!9188 (toList!4609 List!16228)) )
))
(declare-fun call!37313 () ListLongMap!9187)

(declare-fun bm!37309 () Bool)

(declare-datatypes ((ValueCell!7340 0))(
  ( (ValueCellFull!7340 (v!10248 V!25793)) (EmptyCell!7340) )
))
(declare-datatypes ((array!47366 0))(
  ( (array!47367 (arr!22710 (Array (_ BitVec 32) ValueCell!7340)) (size!23151 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47366)

(declare-fun getCurrentListMapNoExtraKeys!2600 (array!47364 array!47366 (_ BitVec 32) (_ BitVec 32) V!25793 V!25793 (_ BitVec 32) Int) ListLongMap!9187)

(assert (=> bm!37309 (= call!37313 (getCurrentListMapNoExtraKeys!2600 _keys!868 (array!47367 (store (arr!22710 _values!688) i!612 (ValueCellFull!7340 v!557)) (size!23151 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841176 () Bool)

(declare-fun e!469300 () Bool)

(declare-fun tp_is_empty!15559 () Bool)

(assert (=> b!841176 (= e!469300 tp_is_empty!15559)))

(declare-fun b!841177 () Bool)

(declare-fun res!571923 () Bool)

(assert (=> b!841177 (=> (not res!571923) (not e!469297))))

(declare-datatypes ((List!16229 0))(
  ( (Nil!16226) (Cons!16225 (h!17356 (_ BitVec 64)) (t!22608 List!16229)) )
))
(declare-fun arrayNoDuplicates!0 (array!47364 (_ BitVec 32) List!16229) Bool)

(assert (=> b!841177 (= res!571923 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16226))))

(declare-fun b!841178 () Bool)

(declare-fun e!469299 () Bool)

(declare-fun e!469302 () Bool)

(declare-fun mapRes!24938 () Bool)

(assert (=> b!841178 (= e!469299 (and e!469302 mapRes!24938))))

(declare-fun condMapEmpty!24938 () Bool)

(declare-fun mapDefault!24938 () ValueCell!7340)

