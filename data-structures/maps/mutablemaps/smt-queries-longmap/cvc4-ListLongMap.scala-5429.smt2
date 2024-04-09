; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72390 () Bool)

(assert start!72390)

(declare-fun b_free!13547 () Bool)

(declare-fun b_next!13547 () Bool)

(assert (=> start!72390 (= b_free!13547 (not b_next!13547))))

(declare-fun tp!47740 () Bool)

(declare-fun b_and!22651 () Bool)

(assert (=> start!72390 (= tp!47740 b_and!22651)))

(declare-fun b!838329 () Bool)

(declare-fun res!570172 () Bool)

(declare-fun e!467985 () Bool)

(assert (=> b!838329 (=> (not res!570172) (not e!467985))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47078 0))(
  ( (array!47079 (arr!22566 (Array (_ BitVec 32) (_ BitVec 64))) (size!23007 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47078)

(declare-datatypes ((V!25597 0))(
  ( (V!25598 (val!7754 Int)) )
))
(declare-datatypes ((ValueCell!7267 0))(
  ( (ValueCellFull!7267 (v!10175 V!25597)) (EmptyCell!7267) )
))
(declare-datatypes ((array!47080 0))(
  ( (array!47081 (arr!22567 (Array (_ BitVec 32) ValueCell!7267)) (size!23008 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47080)

(assert (=> b!838329 (= res!570172 (and (= (size!23008 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23007 _keys!868) (size!23008 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!36871 () Bool)

(declare-fun v!557 () V!25597)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10276 0))(
  ( (tuple2!10277 (_1!5148 (_ BitVec 64)) (_2!5148 V!25597)) )
))
(declare-datatypes ((List!16114 0))(
  ( (Nil!16111) (Cons!16110 (h!17241 tuple2!10276) (t!22493 List!16114)) )
))
(declare-datatypes ((ListLongMap!9059 0))(
  ( (ListLongMap!9060 (toList!4545 List!16114)) )
))
(declare-fun call!36875 () ListLongMap!9059)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25597)

(declare-fun zeroValue!654 () V!25597)

(declare-fun getCurrentListMapNoExtraKeys!2540 (array!47078 array!47080 (_ BitVec 32) (_ BitVec 32) V!25597 V!25597 (_ BitVec 32) Int) ListLongMap!9059)

(assert (=> bm!36871 (= call!36875 (getCurrentListMapNoExtraKeys!2540 _keys!868 (array!47081 (store (arr!22567 _values!688) i!612 (ValueCellFull!7267 v!557)) (size!23008 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838330 () Bool)

(assert (=> b!838330 (= e!467985 (not true))))

(declare-fun e!467983 () Bool)

(assert (=> b!838330 e!467983))

(declare-fun c!91098 () Bool)

(assert (=> b!838330 (= c!91098 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!28786 0))(
  ( (Unit!28787) )
))
(declare-fun lt!380631 () Unit!28786)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!242 (array!47078 array!47080 (_ BitVec 32) (_ BitVec 32) V!25597 V!25597 (_ BitVec 32) (_ BitVec 64) V!25597 (_ BitVec 32) Int) Unit!28786)

(assert (=> b!838330 (= lt!380631 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!242 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!24719 () Bool)

(declare-fun mapRes!24719 () Bool)

(assert (=> mapIsEmpty!24719 mapRes!24719))

(declare-fun call!36874 () ListLongMap!9059)

(declare-fun bm!36872 () Bool)

(assert (=> bm!36872 (= call!36874 (getCurrentListMapNoExtraKeys!2540 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838331 () Bool)

(declare-fun e!467984 () Bool)

(declare-fun tp_is_empty!15413 () Bool)

(assert (=> b!838331 (= e!467984 tp_is_empty!15413)))

(declare-fun b!838332 () Bool)

(declare-fun res!570167 () Bool)

(assert (=> b!838332 (=> (not res!570167) (not e!467985))))

(assert (=> b!838332 (= res!570167 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23007 _keys!868))))))

(declare-fun b!838333 () Bool)

(declare-fun res!570174 () Bool)

(assert (=> b!838333 (=> (not res!570174) (not e!467985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838333 (= res!570174 (validKeyInArray!0 k!854))))

(declare-fun b!838334 () Bool)

(declare-fun +!1968 (ListLongMap!9059 tuple2!10276) ListLongMap!9059)

(assert (=> b!838334 (= e!467983 (= call!36875 (+!1968 call!36874 (tuple2!10277 k!854 v!557))))))

(declare-fun b!838328 () Bool)

(declare-fun e!467988 () Bool)

(assert (=> b!838328 (= e!467988 tp_is_empty!15413)))

(declare-fun res!570169 () Bool)

(assert (=> start!72390 (=> (not res!570169) (not e!467985))))

(assert (=> start!72390 (= res!570169 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23007 _keys!868))))))

(assert (=> start!72390 e!467985))

(assert (=> start!72390 tp_is_empty!15413))

(assert (=> start!72390 true))

(assert (=> start!72390 tp!47740))

(declare-fun array_inv!17952 (array!47078) Bool)

(assert (=> start!72390 (array_inv!17952 _keys!868)))

(declare-fun e!467986 () Bool)

(declare-fun array_inv!17953 (array!47080) Bool)

(assert (=> start!72390 (and (array_inv!17953 _values!688) e!467986)))

(declare-fun mapNonEmpty!24719 () Bool)

(declare-fun tp!47741 () Bool)

(assert (=> mapNonEmpty!24719 (= mapRes!24719 (and tp!47741 e!467984))))

(declare-fun mapRest!24719 () (Array (_ BitVec 32) ValueCell!7267))

(declare-fun mapKey!24719 () (_ BitVec 32))

(declare-fun mapValue!24719 () ValueCell!7267)

(assert (=> mapNonEmpty!24719 (= (arr!22567 _values!688) (store mapRest!24719 mapKey!24719 mapValue!24719))))

(declare-fun b!838335 () Bool)

(declare-fun res!570168 () Bool)

(assert (=> b!838335 (=> (not res!570168) (not e!467985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47078 (_ BitVec 32)) Bool)

(assert (=> b!838335 (= res!570168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838336 () Bool)

(assert (=> b!838336 (= e!467986 (and e!467988 mapRes!24719))))

(declare-fun condMapEmpty!24719 () Bool)

(declare-fun mapDefault!24719 () ValueCell!7267)

