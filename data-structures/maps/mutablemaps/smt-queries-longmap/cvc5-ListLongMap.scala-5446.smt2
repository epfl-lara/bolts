; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72488 () Bool)

(assert start!72488)

(declare-fun b_free!13645 () Bool)

(declare-fun b_next!13645 () Bool)

(assert (=> start!72488 (= b_free!13645 (not b_next!13645))))

(declare-fun tp!48034 () Bool)

(declare-fun b_and!22749 () Bool)

(assert (=> start!72488 (= tp!48034 b_and!22749)))

(declare-fun b!840239 () Bool)

(declare-fun res!571344 () Bool)

(declare-fun e!468865 () Bool)

(assert (=> b!840239 (=> (not res!571344) (not e!468865))))

(declare-datatypes ((array!47270 0))(
  ( (array!47271 (arr!22662 (Array (_ BitVec 32) (_ BitVec 64))) (size!23103 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47270)

(declare-datatypes ((List!16186 0))(
  ( (Nil!16183) (Cons!16182 (h!17313 (_ BitVec 64)) (t!22565 List!16186)) )
))
(declare-fun arrayNoDuplicates!0 (array!47270 (_ BitVec 32) List!16186) Bool)

(assert (=> b!840239 (= res!571344 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16183))))

(declare-datatypes ((V!25729 0))(
  ( (V!25730 (val!7803 Int)) )
))
(declare-datatypes ((tuple2!10358 0))(
  ( (tuple2!10359 (_1!5189 (_ BitVec 64)) (_2!5189 V!25729)) )
))
(declare-datatypes ((List!16187 0))(
  ( (Nil!16184) (Cons!16183 (h!17314 tuple2!10358) (t!22566 List!16187)) )
))
(declare-datatypes ((ListLongMap!9141 0))(
  ( (ListLongMap!9142 (toList!4586 List!16187)) )
))
(declare-fun call!37168 () ListLongMap!9141)

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37165 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7316 0))(
  ( (ValueCellFull!7316 (v!10224 V!25729)) (EmptyCell!7316) )
))
(declare-datatypes ((array!47272 0))(
  ( (array!47273 (arr!22663 (Array (_ BitVec 32) ValueCell!7316)) (size!23104 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47272)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25729)

(declare-fun zeroValue!654 () V!25729)

(declare-fun getCurrentListMapNoExtraKeys!2578 (array!47270 array!47272 (_ BitVec 32) (_ BitVec 32) V!25729 V!25729 (_ BitVec 32) Int) ListLongMap!9141)

(assert (=> bm!37165 (= call!37168 (getCurrentListMapNoExtraKeys!2578 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840240 () Bool)

(declare-fun e!468867 () Bool)

(declare-fun tp_is_empty!15511 () Bool)

(assert (=> b!840240 (= e!468867 tp_is_empty!15511)))

(declare-fun b!840242 () Bool)

(declare-fun res!571345 () Bool)

(assert (=> b!840242 (=> (not res!571345) (not e!468865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840242 (= res!571345 (validMask!0 mask!1196))))

(declare-fun b!840243 () Bool)

(declare-fun e!468866 () Bool)

(assert (=> b!840243 (= e!468866 tp_is_empty!15511)))

(declare-fun b!840244 () Bool)

(declare-fun res!571343 () Bool)

(assert (=> b!840244 (=> (not res!571343) (not e!468865))))

(assert (=> b!840244 (= res!571343 (and (= (size!23104 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23103 _keys!868) (size!23104 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840241 () Bool)

(assert (=> b!840241 (= e!468865 (not true))))

(declare-fun e!468868 () Bool)

(assert (=> b!840241 e!468868))

(declare-fun c!91245 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840241 (= c!91245 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!25729)

(declare-datatypes ((Unit!28854 0))(
  ( (Unit!28855) )
))
(declare-fun lt!380778 () Unit!28854)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!276 (array!47270 array!47272 (_ BitVec 32) (_ BitVec 32) V!25729 V!25729 (_ BitVec 32) (_ BitVec 64) V!25729 (_ BitVec 32) Int) Unit!28854)

(assert (=> b!840241 (= lt!380778 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!276 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571350 () Bool)

(assert (=> start!72488 (=> (not res!571350) (not e!468865))))

(assert (=> start!72488 (= res!571350 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23103 _keys!868))))))

(assert (=> start!72488 e!468865))

(assert (=> start!72488 tp_is_empty!15511))

(assert (=> start!72488 true))

(assert (=> start!72488 tp!48034))

(declare-fun array_inv!18014 (array!47270) Bool)

(assert (=> start!72488 (array_inv!18014 _keys!868)))

(declare-fun e!468869 () Bool)

(declare-fun array_inv!18015 (array!47272) Bool)

(assert (=> start!72488 (and (array_inv!18015 _values!688) e!468869)))

(declare-fun mapIsEmpty!24866 () Bool)

(declare-fun mapRes!24866 () Bool)

(assert (=> mapIsEmpty!24866 mapRes!24866))

(declare-fun b!840245 () Bool)

(assert (=> b!840245 (= e!468869 (and e!468867 mapRes!24866))))

(declare-fun condMapEmpty!24866 () Bool)

(declare-fun mapDefault!24866 () ValueCell!7316)

