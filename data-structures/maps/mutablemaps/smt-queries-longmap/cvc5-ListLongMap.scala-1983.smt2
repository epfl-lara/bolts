; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34790 () Bool)

(assert start!34790)

(declare-fun b_free!7567 () Bool)

(declare-fun b_next!7567 () Bool)

(assert (=> start!34790 (= b_free!7567 (not b_next!7567))))

(declare-fun tp!26267 () Bool)

(declare-fun b_and!14807 () Bool)

(assert (=> start!34790 (= tp!26267 b_and!14807)))

(declare-fun b!347712 () Bool)

(declare-fun e!213071 () Bool)

(declare-fun e!213073 () Bool)

(declare-fun mapRes!12738 () Bool)

(assert (=> b!347712 (= e!213071 (and e!213073 mapRes!12738))))

(declare-fun condMapEmpty!12738 () Bool)

(declare-datatypes ((V!11003 0))(
  ( (V!11004 (val!3804 Int)) )
))
(declare-datatypes ((ValueCell!3416 0))(
  ( (ValueCellFull!3416 (v!5983 V!11003)) (EmptyCell!3416) )
))
(declare-datatypes ((array!18595 0))(
  ( (array!18596 (arr!8804 (Array (_ BitVec 32) ValueCell!3416)) (size!9156 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18595)

(declare-fun mapDefault!12738 () ValueCell!3416)

