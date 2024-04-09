; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37162 () Bool)

(assert start!37162)

(declare-fun b_free!8281 () Bool)

(declare-fun b_next!8281 () Bool)

(assert (=> start!37162 (= b_free!8281 (not b_next!8281))))

(declare-fun tp!29558 () Bool)

(declare-fun b_and!15541 () Bool)

(assert (=> start!37162 (= tp!29558 b_and!15541)))

(declare-fun b!374562 () Bool)

(declare-fun e!228260 () Bool)

(declare-fun e!228262 () Bool)

(declare-fun mapRes!14958 () Bool)

(assert (=> b!374562 (= e!228260 (and e!228262 mapRes!14958))))

(declare-fun condMapEmpty!14958 () Bool)

(declare-datatypes ((V!13011 0))(
  ( (V!13012 (val!4509 Int)) )
))
(declare-datatypes ((ValueCell!4121 0))(
  ( (ValueCellFull!4121 (v!6702 V!13011)) (EmptyCell!4121) )
))
(declare-datatypes ((array!21759 0))(
  ( (array!21760 (arr!10345 (Array (_ BitVec 32) ValueCell!4121)) (size!10697 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21759)

(declare-fun mapDefault!14958 () ValueCell!4121)

