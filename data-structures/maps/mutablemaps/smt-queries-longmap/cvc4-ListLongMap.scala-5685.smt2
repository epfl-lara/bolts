; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73926 () Bool)

(assert start!73926)

(declare-fun b_free!14813 () Bool)

(declare-fun b_next!14813 () Bool)

(assert (=> start!73926 (= b_free!14813 (not b_next!14813))))

(declare-fun tp!51944 () Bool)

(declare-fun b_and!24583 () Bool)

(assert (=> start!73926 (= tp!51944 b_and!24583)))

(declare-fun b!868137 () Bool)

(declare-fun e!483563 () Bool)

(declare-fun e!483565 () Bool)

(declare-fun mapRes!27023 () Bool)

(assert (=> b!868137 (= e!483563 (and e!483565 mapRes!27023))))

(declare-fun condMapEmpty!27023 () Bool)

(declare-datatypes ((V!27645 0))(
  ( (V!27646 (val!8522 Int)) )
))
(declare-datatypes ((ValueCell!8035 0))(
  ( (ValueCellFull!8035 (v!10943 V!27645)) (EmptyCell!8035) )
))
(declare-datatypes ((array!50036 0))(
  ( (array!50037 (arr!24045 (Array (_ BitVec 32) ValueCell!8035)) (size!24486 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50036)

(declare-fun mapDefault!27023 () ValueCell!8035)

