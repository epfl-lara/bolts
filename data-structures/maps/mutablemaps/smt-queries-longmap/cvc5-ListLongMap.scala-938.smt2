; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20736 () Bool)

(assert start!20736)

(declare-fun b_free!5383 () Bool)

(declare-fun b_next!5383 () Bool)

(assert (=> start!20736 (= b_free!5383 (not b_next!5383))))

(declare-fun tp!19181 () Bool)

(declare-fun b_and!12147 () Bool)

(assert (=> start!20736 (= tp!19181 b_and!12147)))

(declare-fun b!207312 () Bool)

(declare-fun e!135368 () Bool)

(declare-fun e!135367 () Bool)

(declare-fun mapRes!8927 () Bool)

(assert (=> b!207312 (= e!135368 (and e!135367 mapRes!8927))))

(declare-fun condMapEmpty!8927 () Bool)

(declare-datatypes ((V!6633 0))(
  ( (V!6634 (val!2664 Int)) )
))
(declare-datatypes ((ValueCell!2276 0))(
  ( (ValueCellFull!2276 (v!4630 V!6633)) (EmptyCell!2276) )
))
(declare-datatypes ((array!9686 0))(
  ( (array!9687 (arr!4593 (Array (_ BitVec 32) ValueCell!2276)) (size!4918 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9686)

(declare-fun mapDefault!8927 () ValueCell!2276)

