; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41920 () Bool)

(assert start!41920)

(declare-fun b_free!11501 () Bool)

(declare-fun b_next!11501 () Bool)

(assert (=> start!41920 (= b_free!11501 (not b_next!11501))))

(declare-fun tp!40515 () Bool)

(declare-fun b_and!19907 () Bool)

(assert (=> start!41920 (= tp!40515 b_and!19907)))

(declare-fun mapIsEmpty!21085 () Bool)

(declare-fun mapRes!21085 () Bool)

(assert (=> mapIsEmpty!21085 mapRes!21085))

(declare-fun b!467723 () Bool)

(declare-fun e!273669 () Bool)

(declare-fun e!273671 () Bool)

(assert (=> b!467723 (= e!273669 (and e!273671 mapRes!21085))))

(declare-fun condMapEmpty!21085 () Bool)

(declare-datatypes ((V!18343 0))(
  ( (V!18344 (val!6509 Int)) )
))
(declare-datatypes ((ValueCell!6121 0))(
  ( (ValueCellFull!6121 (v!8794 V!18343)) (EmptyCell!6121) )
))
(declare-datatypes ((array!29593 0))(
  ( (array!29594 (arr!14220 (Array (_ BitVec 32) ValueCell!6121)) (size!14572 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29593)

(declare-fun mapDefault!21085 () ValueCell!6121)

