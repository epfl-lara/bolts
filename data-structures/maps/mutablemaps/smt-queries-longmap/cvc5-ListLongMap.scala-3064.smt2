; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43234 () Bool)

(assert start!43234)

(declare-fun b!478825 () Bool)

(declare-fun e!281656 () Bool)

(declare-fun e!281653 () Bool)

(declare-fun mapRes!22117 () Bool)

(assert (=> b!478825 (= e!281656 (and e!281653 mapRes!22117))))

(declare-fun condMapEmpty!22117 () Bool)

(declare-datatypes ((V!19225 0))(
  ( (V!19226 (val!6855 Int)) )
))
(declare-datatypes ((ValueCell!6446 0))(
  ( (ValueCellFull!6446 (v!9140 V!19225)) (EmptyCell!6446) )
))
(declare-datatypes ((array!30871 0))(
  ( (array!30872 (arr!14840 (Array (_ BitVec 32) ValueCell!6446)) (size!15198 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30871)

(declare-fun mapDefault!22117 () ValueCell!6446)

