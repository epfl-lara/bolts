; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72548 () Bool)

(assert start!72548)

(declare-fun b_free!13705 () Bool)

(declare-fun b_next!13705 () Bool)

(assert (=> start!72548 (= b_free!13705 (not b_next!13705))))

(declare-fun tp!48215 () Bool)

(declare-fun b_and!22809 () Bool)

(assert (=> start!72548 (= tp!48215 b_and!22809)))

(declare-datatypes ((V!25809 0))(
  ( (V!25810 (val!7833 Int)) )
))
(declare-datatypes ((tuple2!10416 0))(
  ( (tuple2!10417 (_1!5218 (_ BitVec 64)) (_2!5218 V!25809)) )
))
(declare-datatypes ((List!16240 0))(
  ( (Nil!16237) (Cons!16236 (h!17367 tuple2!10416) (t!22619 List!16240)) )
))
(declare-datatypes ((ListLongMap!9199 0))(
  ( (ListLongMap!9200 (toList!4615 List!16240)) )
))
(declare-fun call!37349 () ListLongMap!9199)

(declare-fun b!841409 () Bool)

(declare-fun v!557 () V!25809)

(declare-fun e!469407 () Bool)

(declare-fun call!37348 () ListLongMap!9199)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2018 (ListLongMap!9199 tuple2!10416) ListLongMap!9199)

(assert (=> b!841409 (= e!469407 (= call!37348 (+!2018 call!37349 (tuple2!10417 k!854 v!557))))))

(declare-fun res!572070 () Bool)

(declare-fun e!469409 () Bool)

(assert (=> start!72548 (=> (not res!572070) (not e!469409))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47388 0))(
  ( (array!47389 (arr!22721 (Array (_ BitVec 32) (_ BitVec 64))) (size!23162 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47388)

(assert (=> start!72548 (= res!572070 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23162 _keys!868))))))

(assert (=> start!72548 e!469409))

(declare-fun tp_is_empty!15571 () Bool)

(assert (=> start!72548 tp_is_empty!15571))

(assert (=> start!72548 true))

(assert (=> start!72548 tp!48215))

(declare-fun array_inv!18066 (array!47388) Bool)

(assert (=> start!72548 (array_inv!18066 _keys!868)))

(declare-datatypes ((ValueCell!7346 0))(
  ( (ValueCellFull!7346 (v!10254 V!25809)) (EmptyCell!7346) )
))
(declare-datatypes ((array!47390 0))(
  ( (array!47391 (arr!22722 (Array (_ BitVec 32) ValueCell!7346)) (size!23163 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47390)

(declare-fun e!469406 () Bool)

(declare-fun array_inv!18067 (array!47390) Bool)

(assert (=> start!72548 (and (array_inv!18067 _values!688) e!469406)))

(declare-fun b!841410 () Bool)

(declare-fun e!469408 () Bool)

(assert (=> b!841410 (= e!469408 tp_is_empty!15571)))

(declare-fun b!841411 () Bool)

(declare-fun mapRes!24956 () Bool)

(assert (=> b!841411 (= e!469406 (and e!469408 mapRes!24956))))

(declare-fun condMapEmpty!24956 () Bool)

(declare-fun mapDefault!24956 () ValueCell!7346)

