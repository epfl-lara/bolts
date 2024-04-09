; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82470 () Bool)

(assert start!82470)

(declare-fun b!960960 () Bool)

(declare-fun e!541797 () Bool)

(declare-fun e!541796 () Bool)

(declare-fun mapRes!34096 () Bool)

(assert (=> b!960960 (= e!541797 (and e!541796 mapRes!34096))))

(declare-fun condMapEmpty!34096 () Bool)

(declare-datatypes ((V!33525 0))(
  ( (V!33526 (val!10754 Int)) )
))
(declare-datatypes ((ValueCell!10222 0))(
  ( (ValueCellFull!10222 (v!13311 V!33525)) (EmptyCell!10222) )
))
(declare-datatypes ((array!58911 0))(
  ( (array!58912 (arr!28323 (Array (_ BitVec 32) ValueCell!10222)) (size!28803 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58911)

(declare-fun mapDefault!34096 () ValueCell!10222)

