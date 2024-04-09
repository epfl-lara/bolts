; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72386 () Bool)

(assert start!72386)

(declare-fun b_free!13543 () Bool)

(declare-fun b_next!13543 () Bool)

(assert (=> start!72386 (= b_free!13543 (not b_next!13543))))

(declare-fun tp!47728 () Bool)

(declare-fun b_and!22647 () Bool)

(assert (=> start!72386 (= tp!47728 b_and!22647)))

(declare-fun b!838250 () Bool)

(declare-fun e!467947 () Bool)

(declare-fun tp_is_empty!15409 () Bool)

(assert (=> b!838250 (= e!467947 tp_is_empty!15409)))

(declare-fun b!838251 () Bool)

(declare-fun e!467949 () Bool)

(declare-datatypes ((V!25593 0))(
  ( (V!25594 (val!7752 Int)) )
))
(declare-datatypes ((tuple2!10272 0))(
  ( (tuple2!10273 (_1!5146 (_ BitVec 64)) (_2!5146 V!25593)) )
))
(declare-datatypes ((List!16111 0))(
  ( (Nil!16108) (Cons!16107 (h!17238 tuple2!10272) (t!22490 List!16111)) )
))
(declare-datatypes ((ListLongMap!9055 0))(
  ( (ListLongMap!9056 (toList!4543 List!16111)) )
))
(declare-fun call!36862 () ListLongMap!9055)

(declare-fun call!36863 () ListLongMap!9055)

(assert (=> b!838251 (= e!467949 (= call!36862 call!36863))))

(declare-fun mapNonEmpty!24713 () Bool)

(declare-fun mapRes!24713 () Bool)

(declare-fun tp!47729 () Bool)

(assert (=> mapNonEmpty!24713 (= mapRes!24713 (and tp!47729 e!467947))))

(declare-datatypes ((ValueCell!7265 0))(
  ( (ValueCellFull!7265 (v!10173 V!25593)) (EmptyCell!7265) )
))
(declare-fun mapValue!24713 () ValueCell!7265)

(declare-fun mapKey!24713 () (_ BitVec 32))

(declare-fun mapRest!24713 () (Array (_ BitVec 32) ValueCell!7265))

(declare-datatypes ((array!47070 0))(
  ( (array!47071 (arr!22562 (Array (_ BitVec 32) ValueCell!7265)) (size!23003 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47070)

(assert (=> mapNonEmpty!24713 (= (arr!22562 _values!688) (store mapRest!24713 mapKey!24713 mapValue!24713))))

(declare-fun res!570120 () Bool)

(declare-fun e!467952 () Bool)

(assert (=> start!72386 (=> (not res!570120) (not e!467952))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47072 0))(
  ( (array!47073 (arr!22563 (Array (_ BitVec 32) (_ BitVec 64))) (size!23004 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47072)

(assert (=> start!72386 (= res!570120 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23004 _keys!868))))))

(assert (=> start!72386 e!467952))

(assert (=> start!72386 tp_is_empty!15409))

(assert (=> start!72386 true))

(assert (=> start!72386 tp!47728))

(declare-fun array_inv!17948 (array!47072) Bool)

(assert (=> start!72386 (array_inv!17948 _keys!868)))

(declare-fun e!467951 () Bool)

(declare-fun array_inv!17949 (array!47070) Bool)

(assert (=> start!72386 (and (array_inv!17949 _values!688) e!467951)))

(declare-fun mapIsEmpty!24713 () Bool)

(assert (=> mapIsEmpty!24713 mapRes!24713))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!36859 () Bool)

(declare-fun minValue!654 () V!25593)

(declare-fun zeroValue!654 () V!25593)

(declare-fun getCurrentListMapNoExtraKeys!2538 (array!47072 array!47070 (_ BitVec 32) (_ BitVec 32) V!25593 V!25593 (_ BitVec 32) Int) ListLongMap!9055)

(assert (=> bm!36859 (= call!36863 (getCurrentListMapNoExtraKeys!2538 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838252 () Bool)

(declare-fun res!570121 () Bool)

(assert (=> b!838252 (=> (not res!570121) (not e!467952))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!838252 (= res!570121 (and (= (select (arr!22563 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23004 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838253 () Bool)

(declare-fun e!467950 () Bool)

(assert (=> b!838253 (= e!467951 (and e!467950 mapRes!24713))))

(declare-fun condMapEmpty!24713 () Bool)

(declare-fun mapDefault!24713 () ValueCell!7265)

