; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105820 () Bool)

(assert start!105820)

(declare-fun b_free!27347 () Bool)

(declare-fun b_next!27347 () Bool)

(assert (=> start!105820 (= b_free!27347 (not b_next!27347))))

(declare-fun tp!95571 () Bool)

(declare-fun b_and!45253 () Bool)

(assert (=> start!105820 (= tp!95571 b_and!45253)))

(declare-fun b!1259995 () Bool)

(declare-fun e!716943 () Bool)

(declare-fun e!716941 () Bool)

(declare-fun mapRes!50173 () Bool)

(assert (=> b!1259995 (= e!716943 (and e!716941 mapRes!50173))))

(declare-fun condMapEmpty!50173 () Bool)

(declare-datatypes ((V!48363 0))(
  ( (V!48364 (val!16187 Int)) )
))
(declare-datatypes ((ValueCell!15361 0))(
  ( (ValueCellFull!15361 (v!18890 V!48363)) (EmptyCell!15361) )
))
(declare-datatypes ((array!82109 0))(
  ( (array!82110 (arr!39604 (Array (_ BitVec 32) ValueCell!15361)) (size!40141 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82109)

(declare-fun mapDefault!50173 () ValueCell!15361)

