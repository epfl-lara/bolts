; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73370 () Bool)

(assert start!73370)

(declare-fun b_free!14257 () Bool)

(declare-fun b_next!14257 () Bool)

(assert (=> start!73370 (= b_free!14257 (not b_next!14257))))

(declare-fun tp!50276 () Bool)

(declare-fun b_and!23631 () Bool)

(assert (=> start!73370 (= tp!50276 b_and!23631)))

(declare-fun b!855616 () Bool)

(declare-fun e!477018 () Bool)

(declare-fun e!477021 () Bool)

(declare-fun mapRes!26189 () Bool)

(assert (=> b!855616 (= e!477018 (and e!477021 mapRes!26189))))

(declare-fun condMapEmpty!26189 () Bool)

(declare-datatypes ((V!26905 0))(
  ( (V!26906 (val!8244 Int)) )
))
(declare-datatypes ((ValueCell!7757 0))(
  ( (ValueCellFull!7757 (v!10665 V!26905)) (EmptyCell!7757) )
))
(declare-datatypes ((array!48960 0))(
  ( (array!48961 (arr!23507 (Array (_ BitVec 32) ValueCell!7757)) (size!23948 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48960)

(declare-fun mapDefault!26189 () ValueCell!7757)

