; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35028 () Bool)

(assert start!35028)

(declare-fun b_free!7709 () Bool)

(declare-fun b_next!7709 () Bool)

(assert (=> start!35028 (= b_free!7709 (not b_next!7709))))

(declare-fun tp!26705 () Bool)

(declare-fun b_and!14957 () Bool)

(assert (=> start!35028 (= tp!26705 b_and!14957)))

(declare-fun b!350739 () Bool)

(declare-fun e!214823 () Bool)

(declare-fun tp_is_empty!7661 () Bool)

(assert (=> b!350739 (= e!214823 tp_is_empty!7661)))

(declare-fun b!350740 () Bool)

(declare-fun e!214827 () Bool)

(declare-fun mapRes!12963 () Bool)

(assert (=> b!350740 (= e!214827 (and e!214823 mapRes!12963))))

(declare-fun condMapEmpty!12963 () Bool)

(declare-datatypes ((V!11191 0))(
  ( (V!11192 (val!3875 Int)) )
))
(declare-datatypes ((ValueCell!3487 0))(
  ( (ValueCellFull!3487 (v!6058 V!11191)) (EmptyCell!3487) )
))
(declare-datatypes ((array!18869 0))(
  ( (array!18870 (arr!8937 (Array (_ BitVec 32) ValueCell!3487)) (size!9289 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18869)

(declare-fun mapDefault!12963 () ValueCell!3487)

