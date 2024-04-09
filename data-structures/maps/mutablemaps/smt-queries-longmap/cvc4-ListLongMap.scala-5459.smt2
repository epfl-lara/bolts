; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72570 () Bool)

(assert start!72570)

(declare-fun b_free!13727 () Bool)

(declare-fun b_next!13727 () Bool)

(assert (=> start!72570 (= b_free!13727 (not b_next!13727))))

(declare-fun tp!48281 () Bool)

(declare-fun b_and!22831 () Bool)

(assert (=> start!72570 (= tp!48281 b_and!22831)))

(declare-fun b!841838 () Bool)

(declare-fun res!572334 () Bool)

(declare-fun e!469603 () Bool)

(assert (=> b!841838 (=> (not res!572334) (not e!469603))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47430 0))(
  ( (array!47431 (arr!22742 (Array (_ BitVec 32) (_ BitVec 64))) (size!23183 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47430)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!841838 (= res!572334 (and (= (select (arr!22742 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23183 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!24989 () Bool)

(declare-fun mapRes!24989 () Bool)

(assert (=> mapIsEmpty!24989 mapRes!24989))

(declare-fun b!841839 () Bool)

(declare-fun res!572329 () Bool)

(assert (=> b!841839 (=> (not res!572329) (not e!469603))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25837 0))(
  ( (V!25838 (val!7844 Int)) )
))
(declare-datatypes ((ValueCell!7357 0))(
  ( (ValueCellFull!7357 (v!10265 V!25837)) (EmptyCell!7357) )
))
(declare-datatypes ((array!47432 0))(
  ( (array!47433 (arr!22743 (Array (_ BitVec 32) ValueCell!7357)) (size!23184 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47432)

(assert (=> b!841839 (= res!572329 (and (= (size!23184 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23183 _keys!868) (size!23184 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841840 () Bool)

(declare-fun res!572332 () Bool)

(assert (=> b!841840 (=> (not res!572332) (not e!469603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841840 (= res!572332 (validMask!0 mask!1196))))

(declare-fun b!841841 () Bool)

(declare-fun e!469604 () Bool)

(declare-fun tp_is_empty!15593 () Bool)

(assert (=> b!841841 (= e!469604 tp_is_empty!15593)))

(declare-datatypes ((tuple2!10430 0))(
  ( (tuple2!10431 (_1!5225 (_ BitVec 64)) (_2!5225 V!25837)) )
))
(declare-datatypes ((List!16256 0))(
  ( (Nil!16253) (Cons!16252 (h!17383 tuple2!10430) (t!22635 List!16256)) )
))
(declare-datatypes ((ListLongMap!9213 0))(
  ( (ListLongMap!9214 (toList!4622 List!16256)) )
))
(declare-fun call!37414 () ListLongMap!9213)

(declare-fun v!557 () V!25837)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!25837)

(declare-fun zeroValue!654 () V!25837)

(declare-fun bm!37411 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2612 (array!47430 array!47432 (_ BitVec 32) (_ BitVec 32) V!25837 V!25837 (_ BitVec 32) Int) ListLongMap!9213)

(assert (=> bm!37411 (= call!37414 (getCurrentListMapNoExtraKeys!2612 _keys!868 (array!47433 (store (arr!22743 _values!688) i!612 (ValueCellFull!7357 v!557)) (size!23184 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841842 () Bool)

(declare-fun res!572330 () Bool)

(assert (=> b!841842 (=> (not res!572330) (not e!469603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841842 (= res!572330 (validKeyInArray!0 k!854))))

(declare-fun b!841843 () Bool)

(declare-fun res!572327 () Bool)

(assert (=> b!841843 (=> (not res!572327) (not e!469603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47430 (_ BitVec 32)) Bool)

(assert (=> b!841843 (= res!572327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!572328 () Bool)

(assert (=> start!72570 (=> (not res!572328) (not e!469603))))

(assert (=> start!72570 (= res!572328 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23183 _keys!868))))))

(assert (=> start!72570 e!469603))

(assert (=> start!72570 tp_is_empty!15593))

(assert (=> start!72570 true))

(assert (=> start!72570 tp!48281))

(declare-fun array_inv!18078 (array!47430) Bool)

(assert (=> start!72570 (array_inv!18078 _keys!868)))

(declare-fun e!469605 () Bool)

(declare-fun array_inv!18079 (array!47432) Bool)

(assert (=> start!72570 (and (array_inv!18079 _values!688) e!469605)))

(declare-fun b!841844 () Bool)

(declare-fun e!469608 () Bool)

(assert (=> b!841844 (= e!469605 (and e!469608 mapRes!24989))))

(declare-fun condMapEmpty!24989 () Bool)

(declare-fun mapDefault!24989 () ValueCell!7357)

