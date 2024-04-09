; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84302 () Bool)

(assert start!84302)

(declare-fun b!985789 () Bool)

(declare-fun e!555737 () Bool)

(declare-fun e!555739 () Bool)

(declare-fun mapRes!36644 () Bool)

(assert (=> b!985789 (= e!555737 (and e!555739 mapRes!36644))))

(declare-fun condMapEmpty!36644 () Bool)

(declare-datatypes ((V!35753 0))(
  ( (V!35754 (val!11589 Int)) )
))
(declare-datatypes ((ValueCell!11057 0))(
  ( (ValueCellFull!11057 (v!14151 V!35753)) (EmptyCell!11057) )
))
(declare-datatypes ((array!62117 0))(
  ( (array!62118 (arr!29912 (Array (_ BitVec 32) ValueCell!11057)) (size!30392 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62117)

(declare-fun mapDefault!36644 () ValueCell!11057)

