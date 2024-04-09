; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72392 () Bool)

(assert start!72392)

(declare-fun b_free!13549 () Bool)

(declare-fun b_next!13549 () Bool)

(assert (=> start!72392 (= b_free!13549 (not b_next!13549))))

(declare-fun tp!47747 () Bool)

(declare-fun b_and!22653 () Bool)

(assert (=> start!72392 (= tp!47747 b_and!22653)))

(declare-fun mapIsEmpty!24722 () Bool)

(declare-fun mapRes!24722 () Bool)

(assert (=> mapIsEmpty!24722 mapRes!24722))

(declare-fun b!838367 () Bool)

(declare-fun e!468003 () Bool)

(declare-datatypes ((V!25601 0))(
  ( (V!25602 (val!7755 Int)) )
))
(declare-datatypes ((tuple2!10278 0))(
  ( (tuple2!10279 (_1!5149 (_ BitVec 64)) (_2!5149 V!25601)) )
))
(declare-datatypes ((List!16115 0))(
  ( (Nil!16112) (Cons!16111 (h!17242 tuple2!10278) (t!22494 List!16115)) )
))
(declare-datatypes ((ListLongMap!9061 0))(
  ( (ListLongMap!9062 (toList!4546 List!16115)) )
))
(declare-fun call!36881 () ListLongMap!9061)

(declare-fun call!36880 () ListLongMap!9061)

(assert (=> b!838367 (= e!468003 (= call!36881 call!36880))))

(declare-fun b!838368 () Bool)

(declare-fun e!468005 () Bool)

(declare-fun tp_is_empty!15415 () Bool)

(assert (=> b!838368 (= e!468005 tp_is_empty!15415)))

(declare-fun bm!36877 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47082 0))(
  ( (array!47083 (arr!22568 (Array (_ BitVec 32) (_ BitVec 64))) (size!23009 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47082)

(declare-datatypes ((ValueCell!7268 0))(
  ( (ValueCellFull!7268 (v!10176 V!25601)) (EmptyCell!7268) )
))
(declare-datatypes ((array!47084 0))(
  ( (array!47085 (arr!22569 (Array (_ BitVec 32) ValueCell!7268)) (size!23010 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47084)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25601)

(declare-fun zeroValue!654 () V!25601)

(declare-fun getCurrentListMapNoExtraKeys!2541 (array!47082 array!47084 (_ BitVec 32) (_ BitVec 32) V!25601 V!25601 (_ BitVec 32) Int) ListLongMap!9061)

(assert (=> bm!36877 (= call!36880 (getCurrentListMapNoExtraKeys!2541 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24722 () Bool)

(declare-fun tp!47746 () Bool)

(assert (=> mapNonEmpty!24722 (= mapRes!24722 (and tp!47746 e!468005))))

(declare-fun mapKey!24722 () (_ BitVec 32))

(declare-fun mapValue!24722 () ValueCell!7268)

(declare-fun mapRest!24722 () (Array (_ BitVec 32) ValueCell!7268))

(assert (=> mapNonEmpty!24722 (= (arr!22569 _values!688) (store mapRest!24722 mapKey!24722 mapValue!24722))))

(declare-fun b!838369 () Bool)

(declare-fun res!570197 () Bool)

(declare-fun e!468001 () Bool)

(assert (=> b!838369 (=> (not res!570197) (not e!468001))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838369 (= res!570197 (validKeyInArray!0 k!854))))

(declare-fun b!838370 () Bool)

(declare-fun res!570192 () Bool)

(assert (=> b!838370 (=> (not res!570192) (not e!468001))))

(declare-datatypes ((List!16116 0))(
  ( (Nil!16113) (Cons!16112 (h!17243 (_ BitVec 64)) (t!22495 List!16116)) )
))
(declare-fun arrayNoDuplicates!0 (array!47082 (_ BitVec 32) List!16116) Bool)

(assert (=> b!838370 (= res!570192 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16113))))

(declare-fun v!557 () V!25601)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun bm!36878 () Bool)

(assert (=> bm!36878 (= call!36881 (getCurrentListMapNoExtraKeys!2541 _keys!868 (array!47085 (store (arr!22569 _values!688) i!612 (ValueCellFull!7268 v!557)) (size!23010 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838371 () Bool)

(declare-fun res!570198 () Bool)

(assert (=> b!838371 (=> (not res!570198) (not e!468001))))

(assert (=> b!838371 (= res!570198 (and (= (size!23010 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23009 _keys!868) (size!23010 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!570193 () Bool)

(assert (=> start!72392 (=> (not res!570193) (not e!468001))))

(assert (=> start!72392 (= res!570193 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23009 _keys!868))))))

(assert (=> start!72392 e!468001))

(assert (=> start!72392 tp_is_empty!15415))

(assert (=> start!72392 true))

(assert (=> start!72392 tp!47747))

(declare-fun array_inv!17954 (array!47082) Bool)

(assert (=> start!72392 (array_inv!17954 _keys!868)))

(declare-fun e!468006 () Bool)

(declare-fun array_inv!17955 (array!47084) Bool)

(assert (=> start!72392 (and (array_inv!17955 _values!688) e!468006)))

(declare-fun b!838372 () Bool)

(declare-fun res!570194 () Bool)

(assert (=> b!838372 (=> (not res!570194) (not e!468001))))

(assert (=> b!838372 (= res!570194 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23009 _keys!868))))))

(declare-fun b!838373 () Bool)

(declare-fun +!1969 (ListLongMap!9061 tuple2!10278) ListLongMap!9061)

(assert (=> b!838373 (= e!468003 (= call!36881 (+!1969 call!36880 (tuple2!10279 k!854 v!557))))))

(declare-fun b!838374 () Bool)

(declare-fun e!468002 () Bool)

(assert (=> b!838374 (= e!468006 (and e!468002 mapRes!24722))))

(declare-fun condMapEmpty!24722 () Bool)

(declare-fun mapDefault!24722 () ValueCell!7268)

