; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34196 () Bool)

(assert start!34196)

(declare-fun b_free!7211 () Bool)

(declare-fun b_next!7211 () Bool)

(assert (=> start!34196 (= b_free!7211 (not b_next!7211))))

(declare-fun tp!25166 () Bool)

(declare-fun b_and!14429 () Bool)

(assert (=> start!34196 (= tp!25166 b_and!14429)))

(declare-fun b!340622 () Bool)

(declare-fun e!208953 () Bool)

(declare-fun e!208950 () Bool)

(declare-fun mapRes!12171 () Bool)

(assert (=> b!340622 (= e!208953 (and e!208950 mapRes!12171))))

(declare-fun condMapEmpty!12171 () Bool)

(declare-datatypes ((V!10527 0))(
  ( (V!10528 (val!3626 Int)) )
))
(declare-datatypes ((ValueCell!3238 0))(
  ( (ValueCellFull!3238 (v!5794 V!10527)) (EmptyCell!3238) )
))
(declare-datatypes ((array!17893 0))(
  ( (array!17894 (arr!8464 (Array (_ BitVec 32) ValueCell!3238)) (size!8816 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17893)

(declare-fun mapDefault!12171 () ValueCell!3238)

