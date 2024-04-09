; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82544 () Bool)

(assert start!82544)

(declare-fun b!961472 () Bool)

(declare-fun e!542201 () Bool)

(declare-fun e!542199 () Bool)

(declare-fun mapRes!34171 () Bool)

(assert (=> b!961472 (= e!542201 (and e!542199 mapRes!34171))))

(declare-fun condMapEmpty!34171 () Bool)

(declare-datatypes ((V!33585 0))(
  ( (V!33586 (val!10776 Int)) )
))
(declare-datatypes ((ValueCell!10244 0))(
  ( (ValueCellFull!10244 (v!13334 V!33585)) (EmptyCell!10244) )
))
(declare-datatypes ((array!58995 0))(
  ( (array!58996 (arr!28362 (Array (_ BitVec 32) ValueCell!10244)) (size!28842 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58995)

(declare-fun mapDefault!34171 () ValueCell!10244)

