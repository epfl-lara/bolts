; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39064 () Bool)

(assert start!39064)

(declare-fun b_free!9323 () Bool)

(declare-fun b_next!9323 () Bool)

(assert (=> start!39064 (= b_free!9323 (not b_next!9323))))

(declare-fun tp!33498 () Bool)

(declare-fun b_and!16727 () Bool)

(assert (=> start!39064 (= tp!33498 b_and!16727)))

(declare-fun b!409677 () Bool)

(declare-fun e!245676 () Bool)

(declare-fun tp_is_empty!10475 () Bool)

(assert (=> b!409677 (= e!245676 tp_is_empty!10475)))

(declare-fun b!409678 () Bool)

(declare-fun res!237398 () Bool)

(declare-fun e!245677 () Bool)

(assert (=> b!409678 (=> (not res!237398) (not e!245677))))

(declare-datatypes ((array!24801 0))(
  ( (array!24802 (arr!11847 (Array (_ BitVec 32) (_ BitVec 64))) (size!12199 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24801)

(declare-datatypes ((List!6841 0))(
  ( (Nil!6838) (Cons!6837 (h!7693 (_ BitVec 64)) (t!12023 List!6841)) )
))
(declare-fun arrayNoDuplicates!0 (array!24801 (_ BitVec 32) List!6841) Bool)

(assert (=> b!409678 (= res!237398 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6838))))

(declare-fun mapIsEmpty!17334 () Bool)

(declare-fun mapRes!17334 () Bool)

(assert (=> mapIsEmpty!17334 mapRes!17334))

(declare-fun b!409679 () Bool)

(declare-fun res!237401 () Bool)

(assert (=> b!409679 (=> (not res!237401) (not e!245677))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409679 (= res!237401 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!237392 () Bool)

(assert (=> start!39064 (=> (not res!237392) (not e!245677))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39064 (= res!237392 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12199 _keys!709))))))

(assert (=> start!39064 e!245677))

(assert (=> start!39064 tp_is_empty!10475))

(assert (=> start!39064 tp!33498))

(assert (=> start!39064 true))

(declare-datatypes ((V!15071 0))(
  ( (V!15072 (val!5282 Int)) )
))
(declare-datatypes ((ValueCell!4894 0))(
  ( (ValueCellFull!4894 (v!7525 V!15071)) (EmptyCell!4894) )
))
(declare-datatypes ((array!24803 0))(
  ( (array!24804 (arr!11848 (Array (_ BitVec 32) ValueCell!4894)) (size!12200 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24803)

(declare-fun e!245674 () Bool)

(declare-fun array_inv!8650 (array!24803) Bool)

(assert (=> start!39064 (and (array_inv!8650 _values!549) e!245674)))

(declare-fun array_inv!8651 (array!24801) Bool)

(assert (=> start!39064 (array_inv!8651 _keys!709)))

(declare-fun b!409680 () Bool)

(declare-fun res!237394 () Bool)

(declare-fun e!245673 () Bool)

(assert (=> b!409680 (=> (not res!237394) (not e!245673))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409680 (= res!237394 (bvsle from!863 i!563))))

(declare-fun b!409681 () Bool)

(declare-fun res!237395 () Bool)

(assert (=> b!409681 (=> (not res!237395) (not e!245677))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409681 (= res!237395 (validMask!0 mask!1025))))

(declare-fun b!409682 () Bool)

(assert (=> b!409682 (= e!245674 (and e!245676 mapRes!17334))))

(declare-fun condMapEmpty!17334 () Bool)

(declare-fun mapDefault!17334 () ValueCell!4894)

