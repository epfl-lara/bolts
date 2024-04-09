; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77612 () Bool)

(assert start!77612)

(declare-fun b_free!16169 () Bool)

(declare-fun b_next!16169 () Bool)

(assert (=> start!77612 (= b_free!16169 (not b_next!16169))))

(declare-fun tp!56770 () Bool)

(declare-fun b_and!26553 () Bool)

(assert (=> start!77612 (= tp!56770 b_and!26553)))

(declare-fun b!903933 () Bool)

(declare-fun e!506538 () Bool)

(declare-fun e!506535 () Bool)

(declare-fun mapRes!29593 () Bool)

(assert (=> b!903933 (= e!506538 (and e!506535 mapRes!29593))))

(declare-fun condMapEmpty!29593 () Bool)

(declare-datatypes ((V!29747 0))(
  ( (V!29748 (val!9344 Int)) )
))
(declare-datatypes ((ValueCell!8812 0))(
  ( (ValueCellFull!8812 (v!11849 V!29747)) (EmptyCell!8812) )
))
(declare-datatypes ((array!53206 0))(
  ( (array!53207 (arr!25558 (Array (_ BitVec 32) ValueCell!8812)) (size!26018 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53206)

(declare-fun mapDefault!29593 () ValueCell!8812)

