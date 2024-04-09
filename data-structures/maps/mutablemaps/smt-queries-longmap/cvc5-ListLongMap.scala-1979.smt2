; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34744 () Bool)

(assert start!34744)

(declare-fun b_free!7543 () Bool)

(declare-fun b_next!7543 () Bool)

(assert (=> start!34744 (= b_free!7543 (not b_next!7543))))

(declare-fun tp!26193 () Bool)

(declare-fun b_and!14781 () Bool)

(assert (=> start!34744 (= tp!26193 b_and!14781)))

(declare-fun b!347172 () Bool)

(declare-fun e!212736 () Bool)

(declare-fun e!212735 () Bool)

(declare-fun mapRes!12699 () Bool)

(assert (=> b!347172 (= e!212736 (and e!212735 mapRes!12699))))

(declare-fun condMapEmpty!12699 () Bool)

(declare-datatypes ((V!10971 0))(
  ( (V!10972 (val!3792 Int)) )
))
(declare-datatypes ((ValueCell!3404 0))(
  ( (ValueCellFull!3404 (v!5970 V!10971)) (EmptyCell!3404) )
))
(declare-datatypes ((array!18547 0))(
  ( (array!18548 (arr!8781 (Array (_ BitVec 32) ValueCell!3404)) (size!9133 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18547)

(declare-fun mapDefault!12699 () ValueCell!3404)

