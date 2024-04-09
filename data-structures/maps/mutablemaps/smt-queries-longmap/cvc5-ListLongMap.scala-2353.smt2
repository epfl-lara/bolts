; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37588 () Bool)

(assert start!37588)

(declare-fun b_free!8707 () Bool)

(declare-fun b_next!8707 () Bool)

(assert (=> start!37588 (= b_free!8707 (not b_next!8707))))

(declare-fun tp!30836 () Bool)

(declare-fun b_and!15967 () Bool)

(assert (=> start!37588 (= tp!30836 b_and!15967)))

(declare-fun b!383931 () Bool)

(declare-fun e!233140 () Bool)

(declare-fun e!233139 () Bool)

(declare-fun mapRes!15597 () Bool)

(assert (=> b!383931 (= e!233140 (and e!233139 mapRes!15597))))

(declare-fun condMapEmpty!15597 () Bool)

(declare-datatypes ((V!13579 0))(
  ( (V!13580 (val!4722 Int)) )
))
(declare-datatypes ((ValueCell!4334 0))(
  ( (ValueCellFull!4334 (v!6915 V!13579)) (EmptyCell!4334) )
))
(declare-datatypes ((array!22599 0))(
  ( (array!22600 (arr!10765 (Array (_ BitVec 32) ValueCell!4334)) (size!11117 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22599)

(declare-fun mapDefault!15597 () ValueCell!4334)

