; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72440 () Bool)

(assert start!72440)

(declare-fun b_free!13597 () Bool)

(declare-fun b_next!13597 () Bool)

(assert (=> start!72440 (= b_free!13597 (not b_next!13597))))

(declare-fun tp!47891 () Bool)

(declare-fun b_and!22701 () Bool)

(assert (=> start!72440 (= tp!47891 b_and!22701)))

(declare-fun b!839303 () Bool)

(declare-fun e!468433 () Bool)

(declare-fun tp_is_empty!15463 () Bool)

(assert (=> b!839303 (= e!468433 tp_is_empty!15463)))

(declare-fun mapIsEmpty!24794 () Bool)

(declare-fun mapRes!24794 () Bool)

(assert (=> mapIsEmpty!24794 mapRes!24794))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25665 0))(
  ( (V!25666 (val!7779 Int)) )
))
(declare-datatypes ((tuple2!10320 0))(
  ( (tuple2!10321 (_1!5170 (_ BitVec 64)) (_2!5170 V!25665)) )
))
(declare-datatypes ((List!16153 0))(
  ( (Nil!16150) (Cons!16149 (h!17280 tuple2!10320) (t!22532 List!16153)) )
))
(declare-datatypes ((ListLongMap!9103 0))(
  ( (ListLongMap!9104 (toList!4567 List!16153)) )
))
(declare-fun call!37024 () ListLongMap!9103)

(declare-datatypes ((array!47178 0))(
  ( (array!47179 (arr!22616 (Array (_ BitVec 32) (_ BitVec 64))) (size!23057 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47178)

(declare-datatypes ((ValueCell!7292 0))(
  ( (ValueCellFull!7292 (v!10200 V!25665)) (EmptyCell!7292) )
))
(declare-datatypes ((array!47180 0))(
  ( (array!47181 (arr!22617 (Array (_ BitVec 32) ValueCell!7292)) (size!23058 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47180)

(declare-fun minValue!654 () V!25665)

(declare-fun zeroValue!654 () V!25665)

(declare-fun bm!37021 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2560 (array!47178 array!47180 (_ BitVec 32) (_ BitVec 32) V!25665 V!25665 (_ BitVec 32) Int) ListLongMap!9103)

(assert (=> bm!37021 (= call!37024 (getCurrentListMapNoExtraKeys!2560 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839304 () Bool)

(declare-fun res!570768 () Bool)

(declare-fun e!468434 () Bool)

(assert (=> b!839304 (=> (not res!570768) (not e!468434))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839304 (= res!570768 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23057 _keys!868))))))

(declare-fun b!839305 () Bool)

(declare-fun e!468435 () Bool)

(assert (=> b!839305 (= e!468435 tp_is_empty!15463)))

(declare-fun b!839306 () Bool)

(declare-fun res!570772 () Bool)

(assert (=> b!839306 (=> (not res!570772) (not e!468434))))

(declare-datatypes ((List!16154 0))(
  ( (Nil!16151) (Cons!16150 (h!17281 (_ BitVec 64)) (t!22533 List!16154)) )
))
(declare-fun arrayNoDuplicates!0 (array!47178 (_ BitVec 32) List!16154) Bool)

(assert (=> b!839306 (= res!570772 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16151))))

(declare-fun b!839307 () Bool)

(declare-fun res!570771 () Bool)

(assert (=> b!839307 (=> (not res!570771) (not e!468434))))

(assert (=> b!839307 (= res!570771 (and (= (size!23058 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23057 _keys!868) (size!23058 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839308 () Bool)

(declare-fun res!570769 () Bool)

(assert (=> b!839308 (=> (not res!570769) (not e!468434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47178 (_ BitVec 32)) Bool)

(assert (=> b!839308 (= res!570769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839309 () Bool)

(declare-fun res!570774 () Bool)

(assert (=> b!839309 (=> (not res!570774) (not e!468434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839309 (= res!570774 (validMask!0 mask!1196))))

(declare-fun e!468438 () Bool)

(declare-fun call!37025 () ListLongMap!9103)

(declare-fun b!839310 () Bool)

(declare-fun v!557 () V!25665)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!1986 (ListLongMap!9103 tuple2!10320) ListLongMap!9103)

(assert (=> b!839310 (= e!468438 (= call!37025 (+!1986 call!37024 (tuple2!10321 k!854 v!557))))))

(declare-fun b!839311 () Bool)

(declare-fun res!570770 () Bool)

(assert (=> b!839311 (=> (not res!570770) (not e!468434))))

(assert (=> b!839311 (= res!570770 (and (= (select (arr!22616 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23057 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839312 () Bool)

(declare-fun e!468437 () Bool)

(assert (=> b!839312 (= e!468437 (and e!468433 mapRes!24794))))

(declare-fun condMapEmpty!24794 () Bool)

(declare-fun mapDefault!24794 () ValueCell!7292)

