; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72512 () Bool)

(assert start!72512)

(declare-fun b_free!13669 () Bool)

(declare-fun b_next!13669 () Bool)

(assert (=> start!72512 (= b_free!13669 (not b_next!13669))))

(declare-fun tp!48107 () Bool)

(declare-fun b_and!22773 () Bool)

(assert (=> start!72512 (= tp!48107 b_and!22773)))

(declare-fun b!840707 () Bool)

(declare-fun res!571635 () Bool)

(declare-fun e!469086 () Bool)

(assert (=> b!840707 (=> (not res!571635) (not e!469086))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840707 (= res!571635 (validKeyInArray!0 k!854))))

(declare-fun res!571638 () Bool)

(assert (=> start!72512 (=> (not res!571638) (not e!469086))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47316 0))(
  ( (array!47317 (arr!22685 (Array (_ BitVec 32) (_ BitVec 64))) (size!23126 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47316)

(assert (=> start!72512 (= res!571638 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23126 _keys!868))))))

(assert (=> start!72512 e!469086))

(declare-fun tp_is_empty!15535 () Bool)

(assert (=> start!72512 tp_is_empty!15535))

(assert (=> start!72512 true))

(assert (=> start!72512 tp!48107))

(declare-fun array_inv!18034 (array!47316) Bool)

(assert (=> start!72512 (array_inv!18034 _keys!868)))

(declare-datatypes ((V!25761 0))(
  ( (V!25762 (val!7815 Int)) )
))
(declare-datatypes ((ValueCell!7328 0))(
  ( (ValueCellFull!7328 (v!10236 V!25761)) (EmptyCell!7328) )
))
(declare-datatypes ((array!47318 0))(
  ( (array!47319 (arr!22686 (Array (_ BitVec 32) ValueCell!7328)) (size!23127 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47318)

(declare-fun e!469085 () Bool)

(declare-fun array_inv!18035 (array!47318) Bool)

(assert (=> start!72512 (and (array_inv!18035 _values!688) e!469085)))

(declare-fun mapNonEmpty!24902 () Bool)

(declare-fun mapRes!24902 () Bool)

(declare-fun tp!48106 () Bool)

(declare-fun e!469081 () Bool)

(assert (=> mapNonEmpty!24902 (= mapRes!24902 (and tp!48106 e!469081))))

(declare-fun mapValue!24902 () ValueCell!7328)

(declare-fun mapRest!24902 () (Array (_ BitVec 32) ValueCell!7328))

(declare-fun mapKey!24902 () (_ BitVec 32))

(assert (=> mapNonEmpty!24902 (= (arr!22686 _values!688) (store mapRest!24902 mapKey!24902 mapValue!24902))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10380 0))(
  ( (tuple2!10381 (_1!5200 (_ BitVec 64)) (_2!5200 V!25761)) )
))
(declare-datatypes ((List!16205 0))(
  ( (Nil!16202) (Cons!16201 (h!17332 tuple2!10380) (t!22584 List!16205)) )
))
(declare-datatypes ((ListLongMap!9163 0))(
  ( (ListLongMap!9164 (toList!4597 List!16205)) )
))
(declare-fun call!37241 () ListLongMap!9163)

(declare-fun bm!37237 () Bool)

(declare-fun minValue!654 () V!25761)

(declare-fun zeroValue!654 () V!25761)

(declare-fun getCurrentListMapNoExtraKeys!2588 (array!47316 array!47318 (_ BitVec 32) (_ BitVec 32) V!25761 V!25761 (_ BitVec 32) Int) ListLongMap!9163)

(assert (=> bm!37237 (= call!37241 (getCurrentListMapNoExtraKeys!2588 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840708 () Bool)

(declare-fun e!469082 () Bool)

(assert (=> b!840708 (= e!469085 (and e!469082 mapRes!24902))))

(declare-fun condMapEmpty!24902 () Bool)

(declare-fun mapDefault!24902 () ValueCell!7328)

