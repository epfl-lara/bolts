; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97446 () Bool)

(assert start!97446)

(declare-fun b_free!23381 () Bool)

(declare-fun b_next!23381 () Bool)

(assert (=> start!97446 (= b_free!23381 (not b_next!23381))))

(declare-fun tp!82443 () Bool)

(declare-fun b_and!37619 () Bool)

(assert (=> start!97446 (= tp!82443 b_and!37619)))

(declare-fun b!1110893 () Bool)

(declare-fun e!633545 () Bool)

(declare-fun e!633546 () Bool)

(declare-fun mapRes!43279 () Bool)

(assert (=> b!1110893 (= e!633545 (and e!633546 mapRes!43279))))

(declare-fun condMapEmpty!43279 () Bool)

(declare-datatypes ((V!41981 0))(
  ( (V!41982 (val!13877 Int)) )
))
(declare-datatypes ((ValueCell!13111 0))(
  ( (ValueCellFull!13111 (v!16511 V!41981)) (EmptyCell!13111) )
))
(declare-datatypes ((array!72148 0))(
  ( (array!72149 (arr!34723 (Array (_ BitVec 32) ValueCell!13111)) (size!35260 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72148)

(declare-fun mapDefault!43279 () ValueCell!13111)

