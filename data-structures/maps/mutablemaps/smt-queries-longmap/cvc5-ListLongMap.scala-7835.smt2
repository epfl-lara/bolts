; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97790 () Bool)

(assert start!97790)

(declare-fun b_free!23455 () Bool)

(declare-fun b_next!23455 () Bool)

(assert (=> start!97790 (= b_free!23455 (not b_next!23455))))

(declare-fun tp!83069 () Bool)

(declare-fun b_and!37751 () Bool)

(assert (=> start!97790 (= tp!83069 b_and!37751)))

(declare-fun b!1117944 () Bool)

(declare-fun e!636844 () Bool)

(declare-fun e!636839 () Bool)

(declare-fun mapRes!43795 () Bool)

(assert (=> b!1117944 (= e!636844 (and e!636839 mapRes!43795))))

(declare-fun condMapEmpty!43795 () Bool)

(declare-datatypes ((V!42441 0))(
  ( (V!42442 (val!14049 Int)) )
))
(declare-datatypes ((ValueCell!13283 0))(
  ( (ValueCellFull!13283 (v!16683 V!42441)) (EmptyCell!13283) )
))
(declare-datatypes ((array!72802 0))(
  ( (array!72803 (arr!35050 (Array (_ BitVec 32) ValueCell!13283)) (size!35587 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72802)

(declare-fun mapDefault!43795 () ValueCell!13283)

