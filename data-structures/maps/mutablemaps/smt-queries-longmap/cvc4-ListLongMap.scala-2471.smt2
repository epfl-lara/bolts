; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38656 () Bool)

(assert start!38656)

(declare-fun b_free!9185 () Bool)

(declare-fun b_next!9185 () Bool)

(assert (=> start!38656 (= b_free!9185 (not b_next!9185))))

(declare-fun tp!32678 () Bool)

(declare-fun b_and!16589 () Bool)

(assert (=> start!38656 (= tp!32678 b_and!16589)))

(declare-fun b!400981 () Bool)

(declare-fun e!241840 () Bool)

(declare-fun e!241838 () Bool)

(declare-fun mapRes!16722 () Bool)

(assert (=> b!400981 (= e!241840 (and e!241838 mapRes!16722))))

(declare-fun condMapEmpty!16722 () Bool)

(declare-datatypes ((V!14527 0))(
  ( (V!14528 (val!5078 Int)) )
))
(declare-datatypes ((ValueCell!4690 0))(
  ( (ValueCellFull!4690 (v!7321 V!14527)) (EmptyCell!4690) )
))
(declare-datatypes ((array!24011 0))(
  ( (array!24012 (arr!11452 (Array (_ BitVec 32) ValueCell!4690)) (size!11804 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24011)

(declare-fun mapDefault!16722 () ValueCell!4690)

