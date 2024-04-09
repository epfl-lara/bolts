; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37468 () Bool)

(assert start!37468)

(declare-fun b_free!8587 () Bool)

(declare-fun b_next!8587 () Bool)

(assert (=> start!37468 (= b_free!8587 (not b_next!8587))))

(declare-fun tp!30477 () Bool)

(declare-fun b_and!15847 () Bool)

(assert (=> start!37468 (= tp!30477 b_and!15847)))

(declare-fun b!381409 () Bool)

(declare-fun res!216830 () Bool)

(declare-fun e!231878 () Bool)

(assert (=> b!381409 (=> (not res!216830) (not e!231878))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22361 0))(
  ( (array!22362 (arr!10646 (Array (_ BitVec 32) (_ BitVec 64))) (size!10998 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22361)

(assert (=> b!381409 (= res!216830 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10998 _keys!658))))))

(declare-fun b!381410 () Bool)

(declare-fun res!216827 () Bool)

(assert (=> b!381410 (=> (not res!216827) (not e!231878))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13419 0))(
  ( (V!13420 (val!4662 Int)) )
))
(declare-datatypes ((ValueCell!4274 0))(
  ( (ValueCellFull!4274 (v!6855 V!13419)) (EmptyCell!4274) )
))
(declare-datatypes ((array!22363 0))(
  ( (array!22364 (arr!10647 (Array (_ BitVec 32) ValueCell!4274)) (size!10999 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22363)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!381410 (= res!216827 (and (= (size!10999 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10998 _keys!658) (size!10999 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381411 () Bool)

(declare-fun res!216833 () Bool)

(assert (=> b!381411 (=> (not res!216833) (not e!231878))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381411 (= res!216833 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381412 () Bool)

(declare-fun res!216831 () Bool)

(assert (=> b!381412 (=> (not res!216831) (not e!231878))))

(assert (=> b!381412 (= res!216831 (or (= (select (arr!10646 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10646 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381413 () Bool)

(declare-fun e!231882 () Bool)

(declare-fun e!231880 () Bool)

(declare-fun mapRes!15417 () Bool)

(assert (=> b!381413 (= e!231882 (and e!231880 mapRes!15417))))

(declare-fun condMapEmpty!15417 () Bool)

(declare-fun mapDefault!15417 () ValueCell!4274)

