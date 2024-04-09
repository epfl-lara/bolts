; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35638 () Bool)

(assert start!35638)

(declare-fun b_free!7885 () Bool)

(declare-fun b_next!7885 () Bool)

(assert (=> start!35638 (= b_free!7885 (not b_next!7885))))

(declare-fun tp!27638 () Bool)

(declare-fun b_and!15145 () Bool)

(assert (=> start!35638 (= tp!27638 b_and!15145)))

(declare-fun b!357408 () Bool)

(declare-fun e!218837 () Bool)

(declare-fun e!218838 () Bool)

(declare-fun mapRes!13632 () Bool)

(assert (=> b!357408 (= e!218837 (and e!218838 mapRes!13632))))

(declare-fun condMapEmpty!13632 () Bool)

(declare-datatypes ((V!11755 0))(
  ( (V!11756 (val!4086 Int)) )
))
(declare-datatypes ((ValueCell!3698 0))(
  ( (ValueCellFull!3698 (v!6276 V!11755)) (EmptyCell!3698) )
))
(declare-datatypes ((array!19701 0))(
  ( (array!19702 (arr!9341 (Array (_ BitVec 32) ValueCell!3698)) (size!9693 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19701)

(declare-fun mapDefault!13632 () ValueCell!3698)

