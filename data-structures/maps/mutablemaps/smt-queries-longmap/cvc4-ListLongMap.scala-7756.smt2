; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97320 () Bool)

(assert start!97320)

(declare-fun b_free!23255 () Bool)

(declare-fun b_next!23255 () Bool)

(assert (=> start!97320 (= b_free!23255 (not b_next!23255))))

(declare-fun tp!82065 () Bool)

(declare-fun b_and!37359 () Bool)

(assert (=> start!97320 (= tp!82065 b_and!37359)))

(declare-fun b!1107695 () Bool)

(declare-fun e!632009 () Bool)

(declare-fun e!632012 () Bool)

(declare-fun mapRes!43090 () Bool)

(assert (=> b!1107695 (= e!632009 (and e!632012 mapRes!43090))))

(declare-fun condMapEmpty!43090 () Bool)

(declare-datatypes ((V!41813 0))(
  ( (V!41814 (val!13814 Int)) )
))
(declare-datatypes ((ValueCell!13048 0))(
  ( (ValueCellFull!13048 (v!16448 V!41813)) (EmptyCell!13048) )
))
(declare-datatypes ((array!71900 0))(
  ( (array!71901 (arr!34599 (Array (_ BitVec 32) ValueCell!13048)) (size!35136 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71900)

(declare-fun mapDefault!43090 () ValueCell!13048)

