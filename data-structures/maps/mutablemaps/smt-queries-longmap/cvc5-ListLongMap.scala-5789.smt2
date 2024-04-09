; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74704 () Bool)

(assert start!74704)

(declare-fun b_free!15325 () Bool)

(declare-fun b_next!15325 () Bool)

(assert (=> start!74704 (= b_free!15325 (not b_next!15325))))

(declare-fun tp!53663 () Bool)

(declare-fun b_and!25287 () Bool)

(assert (=> start!74704 (= tp!53663 b_and!25287)))

(declare-fun b!880019 () Bool)

(declare-fun e!489764 () Bool)

(declare-fun e!489762 () Bool)

(declare-fun mapRes!27975 () Bool)

(assert (=> b!880019 (= e!489764 (and e!489762 mapRes!27975))))

(declare-fun condMapEmpty!27975 () Bool)

(declare-datatypes ((V!28473 0))(
  ( (V!28474 (val!8832 Int)) )
))
(declare-datatypes ((ValueCell!8345 0))(
  ( (ValueCellFull!8345 (v!11276 V!28473)) (EmptyCell!8345) )
))
(declare-datatypes ((array!51248 0))(
  ( (array!51249 (arr!24644 (Array (_ BitVec 32) ValueCell!8345)) (size!25085 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51248)

(declare-fun mapDefault!27975 () ValueCell!8345)

