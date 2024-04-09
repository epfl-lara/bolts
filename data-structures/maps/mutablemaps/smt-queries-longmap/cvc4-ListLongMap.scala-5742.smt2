; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74312 () Bool)

(assert start!74312)

(declare-fun b_free!15047 () Bool)

(declare-fun b_next!15047 () Bool)

(assert (=> start!74312 (= b_free!15047 (not b_next!15047))))

(declare-fun tp!52817 () Bool)

(declare-fun b_and!24841 () Bool)

(assert (=> start!74312 (= tp!52817 b_and!24841)))

(declare-fun b!873800 () Bool)

(declare-fun e!486595 () Bool)

(declare-fun e!486596 () Bool)

(declare-fun mapRes!27545 () Bool)

(assert (=> b!873800 (= e!486595 (and e!486596 mapRes!27545))))

(declare-fun condMapEmpty!27545 () Bool)

(declare-datatypes ((V!28101 0))(
  ( (V!28102 (val!8693 Int)) )
))
(declare-datatypes ((ValueCell!8206 0))(
  ( (ValueCellFull!8206 (v!11118 V!28101)) (EmptyCell!8206) )
))
(declare-datatypes ((array!50698 0))(
  ( (array!50699 (arr!24373 (Array (_ BitVec 32) ValueCell!8206)) (size!24814 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50698)

(declare-fun mapDefault!27545 () ValueCell!8206)

