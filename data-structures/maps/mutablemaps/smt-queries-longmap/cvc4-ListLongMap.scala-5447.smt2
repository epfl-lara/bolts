; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72498 () Bool)

(assert start!72498)

(declare-fun b_free!13655 () Bool)

(declare-fun b_next!13655 () Bool)

(assert (=> start!72498 (= b_free!13655 (not b_next!13655))))

(declare-fun tp!48064 () Bool)

(declare-fun b_and!22759 () Bool)

(assert (=> start!72498 (= tp!48064 b_and!22759)))

(declare-fun b!840434 () Bool)

(declare-fun res!571470 () Bool)

(declare-fun e!468956 () Bool)

(assert (=> b!840434 (=> (not res!571470) (not e!468956))))

(declare-datatypes ((array!47290 0))(
  ( (array!47291 (arr!22672 (Array (_ BitVec 32) (_ BitVec 64))) (size!23113 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47290)

(declare-datatypes ((List!16195 0))(
  ( (Nil!16192) (Cons!16191 (h!17322 (_ BitVec 64)) (t!22574 List!16195)) )
))
(declare-fun arrayNoDuplicates!0 (array!47290 (_ BitVec 32) List!16195) Bool)

(assert (=> b!840434 (= res!571470 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16192))))

(declare-datatypes ((V!25741 0))(
  ( (V!25742 (val!7808 Int)) )
))
(declare-datatypes ((tuple2!10368 0))(
  ( (tuple2!10369 (_1!5194 (_ BitVec 64)) (_2!5194 V!25741)) )
))
(declare-datatypes ((List!16196 0))(
  ( (Nil!16193) (Cons!16192 (h!17323 tuple2!10368) (t!22575 List!16196)) )
))
(declare-datatypes ((ListLongMap!9151 0))(
  ( (ListLongMap!9152 (toList!4591 List!16196)) )
))
(declare-fun call!37198 () ListLongMap!9151)

(declare-fun v!557 () V!25741)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7321 0))(
  ( (ValueCellFull!7321 (v!10229 V!25741)) (EmptyCell!7321) )
))
(declare-datatypes ((array!47292 0))(
  ( (array!47293 (arr!22673 (Array (_ BitVec 32) ValueCell!7321)) (size!23114 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47292)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25741)

(declare-fun bm!37195 () Bool)

(declare-fun zeroValue!654 () V!25741)

(declare-fun getCurrentListMapNoExtraKeys!2583 (array!47290 array!47292 (_ BitVec 32) (_ BitVec 32) V!25741 V!25741 (_ BitVec 32) Int) ListLongMap!9151)

(assert (=> bm!37195 (= call!37198 (getCurrentListMapNoExtraKeys!2583 _keys!868 (array!47293 (store (arr!22673 _values!688) i!612 (ValueCellFull!7321 v!557)) (size!23114 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571463 () Bool)

(assert (=> start!72498 (=> (not res!571463) (not e!468956))))

(assert (=> start!72498 (= res!571463 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23113 _keys!868))))))

(assert (=> start!72498 e!468956))

(declare-fun tp_is_empty!15521 () Bool)

(assert (=> start!72498 tp_is_empty!15521))

(assert (=> start!72498 true))

(assert (=> start!72498 tp!48064))

(declare-fun array_inv!18024 (array!47290) Bool)

(assert (=> start!72498 (array_inv!18024 _keys!868)))

(declare-fun e!468955 () Bool)

(declare-fun array_inv!18025 (array!47292) Bool)

(assert (=> start!72498 (and (array_inv!18025 _values!688) e!468955)))

(declare-fun b!840435 () Bool)

(declare-fun e!468957 () Bool)

(assert (=> b!840435 (= e!468957 tp_is_empty!15521)))

(declare-fun b!840436 () Bool)

(declare-fun res!571466 () Bool)

(assert (=> b!840436 (=> (not res!571466) (not e!468956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47290 (_ BitVec 32)) Bool)

(assert (=> b!840436 (= res!571466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840437 () Bool)

(declare-fun res!571468 () Bool)

(assert (=> b!840437 (=> (not res!571468) (not e!468956))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840437 (= res!571468 (validKeyInArray!0 k!854))))

(declare-fun b!840438 () Bool)

(assert (=> b!840438 (= e!468956 (not true))))

(declare-fun e!468958 () Bool)

(assert (=> b!840438 e!468958))

(declare-fun c!91260 () Bool)

(assert (=> b!840438 (= c!91260 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28862 0))(
  ( (Unit!28863) )
))
(declare-fun lt!380793 () Unit!28862)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!280 (array!47290 array!47292 (_ BitVec 32) (_ BitVec 32) V!25741 V!25741 (_ BitVec 32) (_ BitVec 64) V!25741 (_ BitVec 32) Int) Unit!28862)

(assert (=> b!840438 (= lt!380793 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!280 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840439 () Bool)

(declare-fun call!37199 () ListLongMap!9151)

(declare-fun +!2001 (ListLongMap!9151 tuple2!10368) ListLongMap!9151)

(assert (=> b!840439 (= e!468958 (= call!37198 (+!2001 call!37199 (tuple2!10369 k!854 v!557))))))

(declare-fun b!840440 () Bool)

(declare-fun res!571464 () Bool)

(assert (=> b!840440 (=> (not res!571464) (not e!468956))))

(assert (=> b!840440 (= res!571464 (and (= (size!23114 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23113 _keys!868) (size!23114 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840441 () Bool)

(declare-fun res!571465 () Bool)

(assert (=> b!840441 (=> (not res!571465) (not e!468956))))

(assert (=> b!840441 (= res!571465 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23113 _keys!868))))))

(declare-fun mapIsEmpty!24881 () Bool)

(declare-fun mapRes!24881 () Bool)

(assert (=> mapIsEmpty!24881 mapRes!24881))

(declare-fun b!840442 () Bool)

(declare-fun res!571469 () Bool)

(assert (=> b!840442 (=> (not res!571469) (not e!468956))))

(assert (=> b!840442 (= res!571469 (and (= (select (arr!22672 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23113 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840443 () Bool)

(declare-fun res!571467 () Bool)

(assert (=> b!840443 (=> (not res!571467) (not e!468956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840443 (= res!571467 (validMask!0 mask!1196))))

(declare-fun b!840444 () Bool)

(assert (=> b!840444 (= e!468958 (= call!37198 call!37199))))

(declare-fun b!840445 () Bool)

(assert (=> b!840445 (= e!468955 (and e!468957 mapRes!24881))))

(declare-fun condMapEmpty!24881 () Bool)

(declare-fun mapDefault!24881 () ValueCell!7321)

