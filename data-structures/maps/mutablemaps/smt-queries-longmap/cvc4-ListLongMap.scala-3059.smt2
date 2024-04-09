; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43208 () Bool)

(assert start!43208)

(declare-fun b!478591 () Bool)

(declare-fun e!281461 () Bool)

(declare-fun e!281460 () Bool)

(declare-fun mapRes!22078 () Bool)

(assert (=> b!478591 (= e!281461 (and e!281460 mapRes!22078))))

(declare-fun condMapEmpty!22078 () Bool)

(declare-datatypes ((V!19189 0))(
  ( (V!19190 (val!6842 Int)) )
))
(declare-datatypes ((ValueCell!6433 0))(
  ( (ValueCellFull!6433 (v!9127 V!19189)) (EmptyCell!6433) )
))
(declare-datatypes ((array!30821 0))(
  ( (array!30822 (arr!14815 (Array (_ BitVec 32) ValueCell!6433)) (size!15173 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30821)

(declare-fun mapDefault!22078 () ValueCell!6433)

