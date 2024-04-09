; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39598 () Bool)

(assert start!39598)

(declare-fun b_free!9857 () Bool)

(declare-fun b_next!9857 () Bool)

(assert (=> start!39598 (= b_free!9857 (not b_next!9857))))

(declare-fun tp!35100 () Bool)

(declare-fun b_and!17531 () Bool)

(assert (=> start!39598 (= tp!35100 b_and!17531)))

(declare-fun b!423834 () Bool)

(declare-fun res!247914 () Bool)

(declare-fun e!251867 () Bool)

(assert (=> b!423834 (=> (not res!247914) (not e!251867))))

(declare-datatypes ((array!25845 0))(
  ( (array!25846 (arr!12369 (Array (_ BitVec 32) (_ BitVec 64))) (size!12721 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25845)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((V!15783 0))(
  ( (V!15784 (val!5549 Int)) )
))
(declare-datatypes ((ValueCell!5161 0))(
  ( (ValueCellFull!5161 (v!7792 V!15783)) (EmptyCell!5161) )
))
(declare-datatypes ((array!25847 0))(
  ( (array!25848 (arr!12370 (Array (_ BitVec 32) ValueCell!5161)) (size!12722 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25847)

(assert (=> b!423834 (= res!247914 (and (= (size!12722 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12721 _keys!709) (size!12722 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423835 () Bool)

(declare-fun res!247910 () Bool)

(assert (=> b!423835 (=> (not res!247910) (not e!251867))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423835 (= res!247910 (or (= (select (arr!12369 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12369 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423836 () Bool)

(declare-fun res!247909 () Bool)

(assert (=> b!423836 (=> (not res!247909) (not e!251867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25845 (_ BitVec 32)) Bool)

(assert (=> b!423836 (= res!247909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423837 () Bool)

(declare-fun e!251868 () Bool)

(declare-fun tp_is_empty!11009 () Bool)

(assert (=> b!423837 (= e!251868 tp_is_empty!11009)))

(declare-fun b!423838 () Bool)

(declare-fun e!251864 () Bool)

(assert (=> b!423838 (= e!251864 tp_is_empty!11009)))

(declare-fun b!423839 () Bool)

(declare-fun res!247903 () Bool)

(declare-fun e!251869 () Bool)

(assert (=> b!423839 (=> (not res!247903) (not e!251869))))

(declare-fun lt!194250 () array!25845)

(declare-datatypes ((List!7264 0))(
  ( (Nil!7261) (Cons!7260 (h!8116 (_ BitVec 64)) (t!12716 List!7264)) )
))
(declare-fun arrayNoDuplicates!0 (array!25845 (_ BitVec 32) List!7264) Bool)

(assert (=> b!423839 (= res!247903 (arrayNoDuplicates!0 lt!194250 #b00000000000000000000000000000000 Nil!7261))))

(declare-fun b!423840 () Bool)

(declare-fun res!247911 () Bool)

(assert (=> b!423840 (=> (not res!247911) (not e!251867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423840 (= res!247911 (validMask!0 mask!1025))))

(declare-fun b!423841 () Bool)

(assert (=> b!423841 (= e!251867 e!251869)))

(declare-fun res!247913 () Bool)

(assert (=> b!423841 (=> (not res!247913) (not e!251869))))

(assert (=> b!423841 (= res!247913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194250 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!423841 (= lt!194250 (array!25846 (store (arr!12369 _keys!709) i!563 k!794) (size!12721 _keys!709)))))

(declare-fun b!423842 () Bool)

(declare-fun e!251866 () Bool)

(declare-fun mapRes!18135 () Bool)

(assert (=> b!423842 (= e!251866 (and e!251864 mapRes!18135))))

(declare-fun condMapEmpty!18135 () Bool)

(declare-fun mapDefault!18135 () ValueCell!5161)

