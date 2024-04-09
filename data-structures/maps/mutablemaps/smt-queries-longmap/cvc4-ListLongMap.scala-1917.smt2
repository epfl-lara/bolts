; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34122 () Bool)

(assert start!34122)

(declare-fun b_free!7175 () Bool)

(declare-fun b_next!7175 () Bool)

(assert (=> start!34122 (= b_free!7175 (not b_next!7175))))

(declare-fun tp!25053 () Bool)

(declare-fun b_and!14389 () Bool)

(assert (=> start!34122 (= tp!25053 b_and!14389)))

(declare-fun b!339788 () Bool)

(declare-fun e!208469 () Bool)

(declare-fun e!208466 () Bool)

(declare-fun mapRes!12111 () Bool)

(assert (=> b!339788 (= e!208469 (and e!208466 mapRes!12111))))

(declare-fun condMapEmpty!12111 () Bool)

(declare-datatypes ((V!10479 0))(
  ( (V!10480 (val!3608 Int)) )
))
(declare-datatypes ((ValueCell!3220 0))(
  ( (ValueCellFull!3220 (v!5774 V!10479)) (EmptyCell!3220) )
))
(declare-datatypes ((array!17825 0))(
  ( (array!17826 (arr!8432 (Array (_ BitVec 32) ValueCell!3220)) (size!8784 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17825)

(declare-fun mapDefault!12111 () ValueCell!3220)

