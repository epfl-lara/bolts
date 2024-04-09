; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39480 () Bool)

(assert start!39480)

(declare-fun b_free!9739 () Bool)

(declare-fun b_next!9739 () Bool)

(assert (=> start!39480 (= b_free!9739 (not b_next!9739))))

(declare-fun tp!34746 () Bool)

(declare-fun b_and!17371 () Bool)

(assert (=> start!39480 (= tp!34746 b_and!17371)))

(declare-fun b!420893 () Bool)

(declare-fun e!250619 () Bool)

(declare-fun e!250624 () Bool)

(assert (=> b!420893 (= e!250619 e!250624)))

(declare-fun res!245659 () Bool)

(assert (=> b!420893 (=> (not res!245659) (not e!250624))))

(declare-datatypes ((array!25609 0))(
  ( (array!25610 (arr!12251 (Array (_ BitVec 32) (_ BitVec 64))) (size!12603 (_ BitVec 32))) )
))
(declare-fun lt!193229 () array!25609)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25609 (_ BitVec 32)) Bool)

(assert (=> b!420893 (= res!245659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193229 mask!1025))))

(declare-fun _keys!709 () array!25609)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420893 (= lt!193229 (array!25610 (store (arr!12251 _keys!709) i!563 k!794) (size!12603 _keys!709)))))

(declare-fun b!420894 () Bool)

(declare-fun e!250625 () Bool)

(declare-fun tp_is_empty!10891 () Bool)

(assert (=> b!420894 (= e!250625 tp_is_empty!10891)))

(declare-fun b!420895 () Bool)

(declare-fun res!245663 () Bool)

(assert (=> b!420895 (=> (not res!245663) (not e!250619))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15627 0))(
  ( (V!15628 (val!5490 Int)) )
))
(declare-datatypes ((ValueCell!5102 0))(
  ( (ValueCellFull!5102 (v!7733 V!15627)) (EmptyCell!5102) )
))
(declare-datatypes ((array!25611 0))(
  ( (array!25612 (arr!12252 (Array (_ BitVec 32) ValueCell!5102)) (size!12604 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25611)

(assert (=> b!420895 (= res!245663 (and (= (size!12604 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12603 _keys!709) (size!12604 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420896 () Bool)

(declare-fun res!245657 () Bool)

(assert (=> b!420896 (=> (not res!245657) (not e!250619))))

(assert (=> b!420896 (= res!245657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420897 () Bool)

(declare-fun res!245667 () Bool)

(assert (=> b!420897 (=> (not res!245667) (not e!250619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420897 (= res!245667 (validMask!0 mask!1025))))

(declare-fun b!420898 () Bool)

(declare-fun e!250626 () Bool)

(declare-fun mapRes!17958 () Bool)

(assert (=> b!420898 (= e!250626 (and e!250625 mapRes!17958))))

(declare-fun condMapEmpty!17958 () Bool)

(declare-fun mapDefault!17958 () ValueCell!5102)

