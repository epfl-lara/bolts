; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72468 () Bool)

(assert start!72468)

(declare-fun b_free!13625 () Bool)

(declare-fun b_next!13625 () Bool)

(assert (=> start!72468 (= b_free!13625 (not b_next!13625))))

(declare-fun tp!47975 () Bool)

(declare-fun b_and!22729 () Bool)

(assert (=> start!72468 (= tp!47975 b_and!22729)))

(declare-datatypes ((V!25701 0))(
  ( (V!25702 (val!7793 Int)) )
))
(declare-fun v!557 () V!25701)

(declare-datatypes ((tuple2!10342 0))(
  ( (tuple2!10343 (_1!5181 (_ BitVec 64)) (_2!5181 V!25701)) )
))
(declare-datatypes ((List!16172 0))(
  ( (Nil!16169) (Cons!16168 (h!17299 tuple2!10342) (t!22551 List!16172)) )
))
(declare-datatypes ((ListLongMap!9125 0))(
  ( (ListLongMap!9126 (toList!4578 List!16172)) )
))
(declare-fun call!37109 () ListLongMap!9125)

(declare-fun b!839849 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!37108 () ListLongMap!9125)

(declare-fun e!468690 () Bool)

(declare-fun +!1993 (ListLongMap!9125 tuple2!10342) ListLongMap!9125)

(assert (=> b!839849 (= e!468690 (= call!37109 (+!1993 call!37108 (tuple2!10343 k!854 v!557))))))

(declare-fun mapNonEmpty!24836 () Bool)

(declare-fun mapRes!24836 () Bool)

(declare-fun tp!47974 () Bool)

(declare-fun e!468688 () Bool)

(assert (=> mapNonEmpty!24836 (= mapRes!24836 (and tp!47974 e!468688))))

(declare-fun mapKey!24836 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7306 0))(
  ( (ValueCellFull!7306 (v!10214 V!25701)) (EmptyCell!7306) )
))
(declare-fun mapValue!24836 () ValueCell!7306)

(declare-fun mapRest!24836 () (Array (_ BitVec 32) ValueCell!7306))

(declare-datatypes ((array!47234 0))(
  ( (array!47235 (arr!22644 (Array (_ BitVec 32) ValueCell!7306)) (size!23085 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47234)

(assert (=> mapNonEmpty!24836 (= (arr!22644 _values!688) (store mapRest!24836 mapKey!24836 mapValue!24836))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47236 0))(
  ( (array!47237 (arr!22645 (Array (_ BitVec 32) (_ BitVec 64))) (size!23086 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47236)

(declare-fun bm!37105 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25701)

(declare-fun zeroValue!654 () V!25701)

(declare-fun getCurrentListMapNoExtraKeys!2570 (array!47236 array!47234 (_ BitVec 32) (_ BitVec 32) V!25701 V!25701 (_ BitVec 32) Int) ListLongMap!9125)

(assert (=> bm!37105 (= call!37109 (getCurrentListMapNoExtraKeys!2570 _keys!868 (array!47235 (store (arr!22644 _values!688) i!612 (ValueCellFull!7306 v!557)) (size!23085 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839850 () Bool)

(declare-fun res!571106 () Bool)

(declare-fun e!468687 () Bool)

(assert (=> b!839850 (=> (not res!571106) (not e!468687))))

(declare-datatypes ((List!16173 0))(
  ( (Nil!16170) (Cons!16169 (h!17300 (_ BitVec 64)) (t!22552 List!16173)) )
))
(declare-fun arrayNoDuplicates!0 (array!47236 (_ BitVec 32) List!16173) Bool)

(assert (=> b!839850 (= res!571106 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16170))))

(declare-fun b!839851 () Bool)

(declare-fun e!468689 () Bool)

(declare-fun e!468685 () Bool)

(assert (=> b!839851 (= e!468689 (and e!468685 mapRes!24836))))

(declare-fun condMapEmpty!24836 () Bool)

(declare-fun mapDefault!24836 () ValueCell!7306)

