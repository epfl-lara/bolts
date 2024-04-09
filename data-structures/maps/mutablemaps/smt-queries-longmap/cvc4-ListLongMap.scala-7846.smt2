; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97860 () Bool)

(assert start!97860)

(declare-fun b_free!23525 () Bool)

(declare-fun b_next!23525 () Bool)

(assert (=> start!97860 (= b_free!23525 (not b_next!23525))))

(declare-fun tp!83280 () Bool)

(declare-fun b_and!37855 () Bool)

(assert (=> start!97860 (= tp!83280 b_and!37855)))

(declare-fun b!1119448 () Bool)

(declare-fun e!637574 () Bool)

(declare-fun e!637575 () Bool)

(declare-fun mapRes!43900 () Bool)

(assert (=> b!1119448 (= e!637574 (and e!637575 mapRes!43900))))

(declare-fun condMapEmpty!43900 () Bool)

(declare-datatypes ((V!42533 0))(
  ( (V!42534 (val!14084 Int)) )
))
(declare-datatypes ((ValueCell!13318 0))(
  ( (ValueCellFull!13318 (v!16718 V!42533)) (EmptyCell!13318) )
))
(declare-datatypes ((array!72938 0))(
  ( (array!72939 (arr!35118 (Array (_ BitVec 32) ValueCell!13318)) (size!35655 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72938)

(declare-fun mapDefault!43900 () ValueCell!13318)

