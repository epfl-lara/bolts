; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43498 () Bool)

(assert start!43498)

(declare-fun b_free!12269 () Bool)

(declare-fun b_next!12269 () Bool)

(assert (=> start!43498 (= b_free!12269 (not b_next!12269))))

(declare-fun tp!43089 () Bool)

(declare-fun b_and!21047 () Bool)

(assert (=> start!43498 (= tp!43089 b_and!21047)))

(declare-fun b!481685 () Bool)

(declare-fun e!283417 () Bool)

(declare-fun tp_is_empty!13781 () Bool)

(assert (=> b!481685 (= e!283417 tp_is_empty!13781)))

(declare-fun b!481686 () Bool)

(declare-fun e!283414 () Bool)

(declare-fun e!283415 () Bool)

(declare-fun mapRes!22381 () Bool)

(assert (=> b!481686 (= e!283414 (and e!283415 mapRes!22381))))

(declare-fun condMapEmpty!22381 () Bool)

(declare-datatypes ((V!19445 0))(
  ( (V!19446 (val!6938 Int)) )
))
(declare-datatypes ((ValueCell!6529 0))(
  ( (ValueCellFull!6529 (v!9227 V!19445)) (EmptyCell!6529) )
))
(declare-datatypes ((array!31197 0))(
  ( (array!31198 (arr!14998 (Array (_ BitVec 32) ValueCell!6529)) (size!15356 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31197)

(declare-fun mapDefault!22381 () ValueCell!6529)

