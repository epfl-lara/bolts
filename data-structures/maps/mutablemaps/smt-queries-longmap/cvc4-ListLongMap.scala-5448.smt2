; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72504 () Bool)

(assert start!72504)

(declare-fun b_free!13661 () Bool)

(declare-fun b_next!13661 () Bool)

(assert (=> start!72504 (= b_free!13661 (not b_next!13661))))

(declare-fun tp!48082 () Bool)

(declare-fun b_and!22765 () Bool)

(assert (=> start!72504 (= tp!48082 b_and!22765)))

(declare-fun b!840551 () Bool)

(declare-fun e!469010 () Bool)

(declare-fun tp_is_empty!15527 () Bool)

(assert (=> b!840551 (= e!469010 tp_is_empty!15527)))

(declare-fun b!840552 () Bool)

(declare-fun e!469009 () Bool)

(assert (=> b!840552 (= e!469009 (not true))))

(declare-fun e!469012 () Bool)

(assert (=> b!840552 e!469012))

(declare-fun c!91269 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840552 (= c!91269 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28868 0))(
  ( (Unit!28869) )
))
(declare-fun lt!380802 () Unit!28868)

(declare-datatypes ((V!25749 0))(
  ( (V!25750 (val!7811 Int)) )
))
(declare-fun v!557 () V!25749)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47302 0))(
  ( (array!47303 (arr!22678 (Array (_ BitVec 32) (_ BitVec 64))) (size!23119 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47302)

(declare-datatypes ((ValueCell!7324 0))(
  ( (ValueCellFull!7324 (v!10232 V!25749)) (EmptyCell!7324) )
))
(declare-datatypes ((array!47304 0))(
  ( (array!47305 (arr!22679 (Array (_ BitVec 32) ValueCell!7324)) (size!23120 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47304)

(declare-fun minValue!654 () V!25749)

(declare-fun zeroValue!654 () V!25749)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!283 (array!47302 array!47304 (_ BitVec 32) (_ BitVec 32) V!25749 V!25749 (_ BitVec 32) (_ BitVec 64) V!25749 (_ BitVec 32) Int) Unit!28868)

(assert (=> b!840552 (= lt!380802 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!283 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840553 () Bool)

(declare-fun res!571536 () Bool)

(assert (=> b!840553 (=> (not res!571536) (not e!469009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840553 (= res!571536 (validKeyInArray!0 k!854))))

(declare-fun bm!37213 () Bool)

(declare-datatypes ((tuple2!10374 0))(
  ( (tuple2!10375 (_1!5197 (_ BitVec 64)) (_2!5197 V!25749)) )
))
(declare-datatypes ((List!16201 0))(
  ( (Nil!16198) (Cons!16197 (h!17328 tuple2!10374) (t!22580 List!16201)) )
))
(declare-datatypes ((ListLongMap!9157 0))(
  ( (ListLongMap!9158 (toList!4594 List!16201)) )
))
(declare-fun call!37216 () ListLongMap!9157)

(declare-fun getCurrentListMapNoExtraKeys!2586 (array!47302 array!47304 (_ BitVec 32) (_ BitVec 32) V!25749 V!25749 (_ BitVec 32) Int) ListLongMap!9157)

(assert (=> bm!37213 (= call!37216 (getCurrentListMapNoExtraKeys!2586 _keys!868 (array!47305 (store (arr!22679 _values!688) i!612 (ValueCellFull!7324 v!557)) (size!23120 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840554 () Bool)

(declare-fun e!469013 () Bool)

(declare-fun mapRes!24890 () Bool)

(assert (=> b!840554 (= e!469013 (and e!469010 mapRes!24890))))

(declare-fun condMapEmpty!24890 () Bool)

(declare-fun mapDefault!24890 () ValueCell!7324)

