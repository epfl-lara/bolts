; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37550 () Bool)

(assert start!37550)

(declare-fun b_free!8669 () Bool)

(declare-fun b_next!8669 () Bool)

(assert (=> start!37550 (= b_free!8669 (not b_next!8669))))

(declare-fun tp!30722 () Bool)

(declare-fun b_and!15929 () Bool)

(assert (=> start!37550 (= tp!30722 b_and!15929)))

(declare-fun b!383131 () Bool)

(declare-fun res!218183 () Bool)

(declare-fun e!232743 () Bool)

(assert (=> b!383131 (=> (not res!218183) (not e!232743))))

(declare-datatypes ((array!22525 0))(
  ( (array!22526 (arr!10728 (Array (_ BitVec 32) (_ BitVec 64))) (size!11080 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22525)

(declare-datatypes ((List!6147 0))(
  ( (Nil!6144) (Cons!6143 (h!6999 (_ BitVec 64)) (t!11305 List!6147)) )
))
(declare-fun arrayNoDuplicates!0 (array!22525 (_ BitVec 32) List!6147) Bool)

(assert (=> b!383131 (= res!218183 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6144))))

(declare-fun mapIsEmpty!15540 () Bool)

(declare-fun mapRes!15540 () Bool)

(assert (=> mapIsEmpty!15540 mapRes!15540))

(declare-fun b!383132 () Bool)

(declare-fun res!218186 () Bool)

(assert (=> b!383132 (=> (not res!218186) (not e!232743))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13527 0))(
  ( (V!13528 (val!4703 Int)) )
))
(declare-datatypes ((ValueCell!4315 0))(
  ( (ValueCellFull!4315 (v!6896 V!13527)) (EmptyCell!4315) )
))
(declare-datatypes ((array!22527 0))(
  ( (array!22528 (arr!10729 (Array (_ BitVec 32) ValueCell!4315)) (size!11081 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22527)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!383132 (= res!218186 (and (= (size!11081 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11080 _keys!658) (size!11081 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383133 () Bool)

(declare-fun res!218181 () Bool)

(assert (=> b!383133 (=> (not res!218181) (not e!232743))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383133 (= res!218181 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383134 () Bool)

(declare-fun res!218180 () Bool)

(declare-fun e!232739 () Bool)

(assert (=> b!383134 (=> (not res!218180) (not e!232739))))

(declare-fun lt!179995 () array!22525)

(assert (=> b!383134 (= res!218180 (arrayNoDuplicates!0 lt!179995 #b00000000000000000000000000000000 Nil!6144))))

(declare-fun b!383135 () Bool)

(declare-fun res!218179 () Bool)

(assert (=> b!383135 (=> (not res!218179) (not e!232743))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383135 (= res!218179 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11080 _keys!658))))))

(declare-fun b!383136 () Bool)

(declare-fun e!232740 () Bool)

(declare-fun e!232738 () Bool)

(assert (=> b!383136 (= e!232740 (and e!232738 mapRes!15540))))

(declare-fun condMapEmpty!15540 () Bool)

(declare-fun mapDefault!15540 () ValueCell!4315)

