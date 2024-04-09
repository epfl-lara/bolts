; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72450 () Bool)

(assert start!72450)

(declare-fun b_free!13607 () Bool)

(declare-fun b_next!13607 () Bool)

(assert (=> start!72450 (= b_free!13607 (not b_next!13607))))

(declare-fun tp!47921 () Bool)

(declare-fun b_and!22711 () Bool)

(assert (=> start!72450 (= tp!47921 b_and!22711)))

(declare-fun b!839498 () Bool)

(declare-fun e!468527 () Bool)

(declare-fun tp_is_empty!15473 () Bool)

(assert (=> b!839498 (= e!468527 tp_is_empty!15473)))

(declare-fun b!839499 () Bool)

(declare-fun res!570888 () Bool)

(declare-fun e!468523 () Bool)

(assert (=> b!839499 (=> (not res!570888) (not e!468523))))

(declare-datatypes ((array!47198 0))(
  ( (array!47199 (arr!22626 (Array (_ BitVec 32) (_ BitVec 64))) (size!23067 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47198)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47198 (_ BitVec 32)) Bool)

(assert (=> b!839499 (= res!570888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839500 () Bool)

(declare-fun e!468528 () Bool)

(declare-datatypes ((V!25677 0))(
  ( (V!25678 (val!7784 Int)) )
))
(declare-datatypes ((tuple2!10330 0))(
  ( (tuple2!10331 (_1!5175 (_ BitVec 64)) (_2!5175 V!25677)) )
))
(declare-datatypes ((List!16162 0))(
  ( (Nil!16159) (Cons!16158 (h!17289 tuple2!10330) (t!22541 List!16162)) )
))
(declare-datatypes ((ListLongMap!9113 0))(
  ( (ListLongMap!9114 (toList!4572 List!16162)) )
))
(declare-fun call!37054 () ListLongMap!9113)

(declare-fun call!37055 () ListLongMap!9113)

(assert (=> b!839500 (= e!468528 (= call!37054 call!37055))))

(declare-fun b!839501 () Bool)

(declare-fun res!570894 () Bool)

(assert (=> b!839501 (=> (not res!570894) (not e!468523))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839501 (= res!570894 (validKeyInArray!0 k!854))))

(declare-fun b!839502 () Bool)

(declare-fun e!468525 () Bool)

(declare-fun e!468524 () Bool)

(declare-fun mapRes!24809 () Bool)

(assert (=> b!839502 (= e!468525 (and e!468524 mapRes!24809))))

(declare-fun condMapEmpty!24809 () Bool)

(declare-datatypes ((ValueCell!7297 0))(
  ( (ValueCellFull!7297 (v!10205 V!25677)) (EmptyCell!7297) )
))
(declare-datatypes ((array!47200 0))(
  ( (array!47201 (arr!22627 (Array (_ BitVec 32) ValueCell!7297)) (size!23068 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47200)

(declare-fun mapDefault!24809 () ValueCell!7297)

