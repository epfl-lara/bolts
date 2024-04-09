; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34118 () Bool)

(assert start!34118)

(declare-fun b_free!7171 () Bool)

(declare-fun b_next!7171 () Bool)

(assert (=> start!34118 (= b_free!7171 (not b_next!7171))))

(declare-fun tp!25041 () Bool)

(declare-fun b_and!14385 () Bool)

(assert (=> start!34118 (= tp!25041 b_and!14385)))

(declare-fun b!339734 () Bool)

(declare-fun res!187719 () Bool)

(declare-fun e!208437 () Bool)

(assert (=> b!339734 (=> (not res!187719) (not e!208437))))

(declare-datatypes ((array!17817 0))(
  ( (array!17818 (arr!8428 (Array (_ BitVec 32) (_ BitVec 64))) (size!8780 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17817)

(declare-datatypes ((List!4867 0))(
  ( (Nil!4864) (Cons!4863 (h!5719 (_ BitVec 64)) (t!9979 List!4867)) )
))
(declare-fun arrayNoDuplicates!0 (array!17817 (_ BitVec 32) List!4867) Bool)

(assert (=> b!339734 (= res!187719 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4864))))

(declare-fun mapIsEmpty!12105 () Bool)

(declare-fun mapRes!12105 () Bool)

(assert (=> mapIsEmpty!12105 mapRes!12105))

(declare-fun b!339735 () Bool)

(declare-fun res!187721 () Bool)

(assert (=> b!339735 (=> (not res!187721) (not e!208437))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17817 (_ BitVec 32)) Bool)

(assert (=> b!339735 (= res!187721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339736 () Bool)

(declare-fun e!208436 () Bool)

(declare-fun e!208438 () Bool)

(assert (=> b!339736 (= e!208436 (and e!208438 mapRes!12105))))

(declare-fun condMapEmpty!12105 () Bool)

(declare-datatypes ((V!10475 0))(
  ( (V!10476 (val!3606 Int)) )
))
(declare-datatypes ((ValueCell!3218 0))(
  ( (ValueCellFull!3218 (v!5772 V!10475)) (EmptyCell!3218) )
))
(declare-datatypes ((array!17819 0))(
  ( (array!17820 (arr!8429 (Array (_ BitVec 32) ValueCell!3218)) (size!8781 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17819)

(declare-fun mapDefault!12105 () ValueCell!3218)

