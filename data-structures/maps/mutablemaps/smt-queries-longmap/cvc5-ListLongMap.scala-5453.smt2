; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72530 () Bool)

(assert start!72530)

(declare-fun b_free!13687 () Bool)

(declare-fun b_next!13687 () Bool)

(assert (=> start!72530 (= b_free!13687 (not b_next!13687))))

(declare-fun tp!48161 () Bool)

(declare-fun b_and!22791 () Bool)

(assert (=> start!72530 (= tp!48161 b_and!22791)))

(declare-datatypes ((V!25785 0))(
  ( (V!25786 (val!7824 Int)) )
))
(declare-datatypes ((tuple2!10398 0))(
  ( (tuple2!10399 (_1!5209 (_ BitVec 64)) (_2!5209 V!25785)) )
))
(declare-datatypes ((List!16222 0))(
  ( (Nil!16219) (Cons!16218 (h!17349 tuple2!10398) (t!22601 List!16222)) )
))
(declare-datatypes ((ListLongMap!9181 0))(
  ( (ListLongMap!9182 (toList!4606 List!16222)) )
))
(declare-fun call!37294 () ListLongMap!9181)

(declare-fun v!557 () V!25785)

(declare-fun call!37295 () ListLongMap!9181)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun b!841058 () Bool)

(declare-fun e!469247 () Bool)

(declare-fun +!2012 (ListLongMap!9181 tuple2!10398) ListLongMap!9181)

(assert (=> b!841058 (= e!469247 (= call!37294 (+!2012 call!37295 (tuple2!10399 k!854 v!557))))))

(declare-fun b!841059 () Bool)

(declare-fun res!571853 () Bool)

(declare-fun e!469246 () Bool)

(assert (=> b!841059 (=> (not res!571853) (not e!469246))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47352 0))(
  ( (array!47353 (arr!22703 (Array (_ BitVec 32) (_ BitVec 64))) (size!23144 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47352)

(assert (=> b!841059 (= res!571853 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23144 _keys!868))))))

(declare-fun b!841060 () Bool)

(declare-fun e!469248 () Bool)

(declare-fun tp_is_empty!15553 () Bool)

(assert (=> b!841060 (= e!469248 tp_is_empty!15553)))

(declare-fun b!841061 () Bool)

(declare-fun res!571854 () Bool)

(assert (=> b!841061 (=> (not res!571854) (not e!469246))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47352 (_ BitVec 32)) Bool)

(assert (=> b!841061 (= res!571854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841062 () Bool)

(declare-fun res!571852 () Bool)

(assert (=> b!841062 (=> (not res!571852) (not e!469246))))

(declare-datatypes ((List!16223 0))(
  ( (Nil!16220) (Cons!16219 (h!17350 (_ BitVec 64)) (t!22602 List!16223)) )
))
(declare-fun arrayNoDuplicates!0 (array!47352 (_ BitVec 32) List!16223) Bool)

(assert (=> b!841062 (= res!571852 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16220))))

(declare-fun res!571849 () Bool)

(assert (=> start!72530 (=> (not res!571849) (not e!469246))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72530 (= res!571849 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23144 _keys!868))))))

(assert (=> start!72530 e!469246))

(assert (=> start!72530 tp_is_empty!15553))

(assert (=> start!72530 true))

(assert (=> start!72530 tp!48161))

(declare-fun array_inv!18050 (array!47352) Bool)

(assert (=> start!72530 (array_inv!18050 _keys!868)))

(declare-datatypes ((ValueCell!7337 0))(
  ( (ValueCellFull!7337 (v!10245 V!25785)) (EmptyCell!7337) )
))
(declare-datatypes ((array!47354 0))(
  ( (array!47355 (arr!22704 (Array (_ BitVec 32) ValueCell!7337)) (size!23145 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47354)

(declare-fun e!469243 () Bool)

(declare-fun array_inv!18051 (array!47354) Bool)

(assert (=> start!72530 (and (array_inv!18051 _values!688) e!469243)))

(declare-fun mapNonEmpty!24929 () Bool)

(declare-fun mapRes!24929 () Bool)

(declare-fun tp!48160 () Bool)

(assert (=> mapNonEmpty!24929 (= mapRes!24929 (and tp!48160 e!469248))))

(declare-fun mapKey!24929 () (_ BitVec 32))

(declare-fun mapValue!24929 () ValueCell!7337)

(declare-fun mapRest!24929 () (Array (_ BitVec 32) ValueCell!7337))

(assert (=> mapNonEmpty!24929 (= (arr!22704 _values!688) (store mapRest!24929 mapKey!24929 mapValue!24929))))

(declare-fun b!841063 () Bool)

(declare-fun res!571848 () Bool)

(assert (=> b!841063 (=> (not res!571848) (not e!469246))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!841063 (= res!571848 (and (= (size!23145 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23144 _keys!868) (size!23145 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841064 () Bool)

(declare-fun e!469244 () Bool)

(assert (=> b!841064 (= e!469244 tp_is_empty!15553)))

(declare-fun bm!37291 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!25785)

(declare-fun zeroValue!654 () V!25785)

(declare-fun getCurrentListMapNoExtraKeys!2597 (array!47352 array!47354 (_ BitVec 32) (_ BitVec 32) V!25785 V!25785 (_ BitVec 32) Int) ListLongMap!9181)

(assert (=> bm!37291 (= call!37295 (getCurrentListMapNoExtraKeys!2597 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841065 () Bool)

(assert (=> b!841065 (= e!469243 (and e!469244 mapRes!24929))))

(declare-fun condMapEmpty!24929 () Bool)

(declare-fun mapDefault!24929 () ValueCell!7337)

