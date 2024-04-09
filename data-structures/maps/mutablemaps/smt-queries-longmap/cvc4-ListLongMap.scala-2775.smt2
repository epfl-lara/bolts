; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40534 () Bool)

(assert start!40534)

(declare-fun mapIsEmpty!19467 () Bool)

(declare-fun mapRes!19467 () Bool)

(assert (=> mapIsEmpty!19467 mapRes!19467))

(declare-fun b!446346 () Bool)

(declare-fun e!262225 () Bool)

(assert (=> b!446346 (= e!262225 false)))

(declare-fun lt!203787 () Bool)

(declare-datatypes ((array!27549 0))(
  ( (array!27550 (arr!13218 (Array (_ BitVec 32) (_ BitVec 64))) (size!13570 (_ BitVec 32))) )
))
(declare-fun lt!203786 () array!27549)

(declare-datatypes ((List!7890 0))(
  ( (Nil!7887) (Cons!7886 (h!8742 (_ BitVec 64)) (t!13658 List!7890)) )
))
(declare-fun arrayNoDuplicates!0 (array!27549 (_ BitVec 32) List!7890) Bool)

(assert (=> b!446346 (= lt!203787 (arrayNoDuplicates!0 lt!203786 #b00000000000000000000000000000000 Nil!7887))))

(declare-fun b!446347 () Bool)

(declare-fun e!262224 () Bool)

(declare-fun tp_is_empty!11891 () Bool)

(assert (=> b!446347 (= e!262224 tp_is_empty!11891)))

(declare-fun b!446348 () Bool)

(declare-fun e!262223 () Bool)

(assert (=> b!446348 (= e!262223 (and e!262224 mapRes!19467))))

(declare-fun condMapEmpty!19467 () Bool)

(declare-datatypes ((V!16959 0))(
  ( (V!16960 (val!5990 Int)) )
))
(declare-datatypes ((ValueCell!5602 0))(
  ( (ValueCellFull!5602 (v!8241 V!16959)) (EmptyCell!5602) )
))
(declare-datatypes ((array!27551 0))(
  ( (array!27552 (arr!13219 (Array (_ BitVec 32) ValueCell!5602)) (size!13571 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27551)

(declare-fun mapDefault!19467 () ValueCell!5602)

