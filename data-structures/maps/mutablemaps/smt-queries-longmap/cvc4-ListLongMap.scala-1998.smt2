; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34928 () Bool)

(assert start!34928)

(declare-fun b_free!7661 () Bool)

(declare-fun b_next!7661 () Bool)

(assert (=> start!34928 (= b_free!7661 (not b_next!7661))))

(declare-fun tp!26555 () Bool)

(declare-fun b_and!14905 () Bool)

(assert (=> start!34928 (= tp!26555 b_and!14905)))

(declare-fun b!349585 () Bool)

(declare-fun e!214147 () Bool)

(declare-fun e!214151 () Bool)

(declare-fun mapRes!12885 () Bool)

(assert (=> b!349585 (= e!214147 (and e!214151 mapRes!12885))))

(declare-fun condMapEmpty!12885 () Bool)

(declare-datatypes ((V!11127 0))(
  ( (V!11128 (val!3851 Int)) )
))
(declare-datatypes ((ValueCell!3463 0))(
  ( (ValueCellFull!3463 (v!6032 V!11127)) (EmptyCell!3463) )
))
(declare-datatypes ((array!18779 0))(
  ( (array!18780 (arr!8894 (Array (_ BitVec 32) ValueCell!3463)) (size!9246 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18779)

(declare-fun mapDefault!12885 () ValueCell!3463)

