; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73320 () Bool)

(assert start!73320)

(declare-fun b_free!14207 () Bool)

(declare-fun b_next!14207 () Bool)

(assert (=> start!73320 (= b_free!14207 (not b_next!14207))))

(declare-fun tp!50126 () Bool)

(declare-fun b_and!23581 () Bool)

(assert (=> start!73320 (= tp!50126 b_and!23581)))

(declare-fun b!854791 () Bool)

(declare-fun e!476646 () Bool)

(declare-fun e!476644 () Bool)

(declare-fun mapRes!26114 () Bool)

(assert (=> b!854791 (= e!476646 (and e!476644 mapRes!26114))))

(declare-fun condMapEmpty!26114 () Bool)

(declare-datatypes ((V!26837 0))(
  ( (V!26838 (val!8219 Int)) )
))
(declare-datatypes ((ValueCell!7732 0))(
  ( (ValueCellFull!7732 (v!10640 V!26837)) (EmptyCell!7732) )
))
(declare-datatypes ((array!48866 0))(
  ( (array!48867 (arr!23460 (Array (_ BitVec 32) ValueCell!7732)) (size!23901 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48866)

(declare-fun mapDefault!26114 () ValueCell!7732)

