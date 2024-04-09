; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39586 () Bool)

(assert start!39586)

(declare-fun b_free!9845 () Bool)

(declare-fun b_next!9845 () Bool)

(assert (=> start!39586 (= b_free!9845 (not b_next!9845))))

(declare-fun tp!35064 () Bool)

(declare-fun b_and!17519 () Bool)

(assert (=> start!39586 (= tp!35064 b_and!17519)))

(declare-fun b!423564 () Bool)

(declare-fun res!247688 () Bool)

(declare-fun e!251760 () Bool)

(assert (=> b!423564 (=> (not res!247688) (not e!251760))))

(declare-datatypes ((array!25821 0))(
  ( (array!25822 (arr!12357 (Array (_ BitVec 32) (_ BitVec 64))) (size!12709 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25821)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423564 (= res!247688 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423565 () Bool)

(declare-fun res!247691 () Bool)

(assert (=> b!423565 (=> (not res!247691) (not e!251760))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25821 (_ BitVec 32)) Bool)

(assert (=> b!423565 (= res!247691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423566 () Bool)

(declare-fun res!247697 () Bool)

(assert (=> b!423566 (=> (not res!247697) (not e!251760))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15767 0))(
  ( (V!15768 (val!5543 Int)) )
))
(declare-datatypes ((ValueCell!5155 0))(
  ( (ValueCellFull!5155 (v!7786 V!15767)) (EmptyCell!5155) )
))
(declare-datatypes ((array!25823 0))(
  ( (array!25824 (arr!12358 (Array (_ BitVec 32) ValueCell!5155)) (size!12710 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25823)

(assert (=> b!423566 (= res!247697 (and (= (size!12710 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12709 _keys!709) (size!12710 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423567 () Bool)

(declare-fun res!247689 () Bool)

(assert (=> b!423567 (=> (not res!247689) (not e!251760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423567 (= res!247689 (validMask!0 mask!1025))))

(declare-fun b!423568 () Bool)

(declare-fun e!251758 () Bool)

(declare-fun e!251761 () Bool)

(declare-fun mapRes!18117 () Bool)

(assert (=> b!423568 (= e!251758 (and e!251761 mapRes!18117))))

(declare-fun condMapEmpty!18117 () Bool)

(declare-fun mapDefault!18117 () ValueCell!5155)

