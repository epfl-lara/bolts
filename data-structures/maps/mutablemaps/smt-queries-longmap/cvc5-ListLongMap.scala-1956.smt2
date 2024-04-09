; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34490 () Bool)

(assert start!34490)

(declare-fun b_free!7405 () Bool)

(declare-fun b_next!7405 () Bool)

(assert (=> start!34490 (= b_free!7405 (not b_next!7405))))

(declare-fun tp!25760 () Bool)

(declare-fun b_and!14631 () Bool)

(assert (=> start!34490 (= tp!25760 b_and!14631)))

(declare-fun b!344312 () Bool)

(declare-fun e!211082 () Bool)

(declare-fun e!211081 () Bool)

(declare-fun mapRes!12474 () Bool)

(assert (=> b!344312 (= e!211082 (and e!211081 mapRes!12474))))

(declare-fun condMapEmpty!12474 () Bool)

(declare-datatypes ((V!10787 0))(
  ( (V!10788 (val!3723 Int)) )
))
(declare-datatypes ((ValueCell!3335 0))(
  ( (ValueCellFull!3335 (v!5895 V!10787)) (EmptyCell!3335) )
))
(declare-datatypes ((array!18271 0))(
  ( (array!18272 (arr!8649 (Array (_ BitVec 32) ValueCell!3335)) (size!9001 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18271)

(declare-fun mapDefault!12474 () ValueCell!3335)

