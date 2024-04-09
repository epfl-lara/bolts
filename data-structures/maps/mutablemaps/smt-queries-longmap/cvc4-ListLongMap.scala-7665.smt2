; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96350 () Bool)

(assert start!96350)

(declare-fun mapIsEmpty!42208 () Bool)

(declare-fun mapRes!42208 () Bool)

(assert (=> mapIsEmpty!42208 mapRes!42208))

(declare-fun b!1094479 () Bool)

(declare-fun e!624913 () Bool)

(declare-fun e!624915 () Bool)

(assert (=> b!1094479 (= e!624913 (and e!624915 mapRes!42208))))

(declare-fun condMapEmpty!42208 () Bool)

(declare-datatypes ((V!41085 0))(
  ( (V!41086 (val!13541 Int)) )
))
(declare-datatypes ((ValueCell!12775 0))(
  ( (ValueCellFull!12775 (v!16163 V!41085)) (EmptyCell!12775) )
))
(declare-datatypes ((array!70808 0))(
  ( (array!70809 (arr!34074 (Array (_ BitVec 32) ValueCell!12775)) (size!34611 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70808)

(declare-fun mapDefault!42208 () ValueCell!12775)

