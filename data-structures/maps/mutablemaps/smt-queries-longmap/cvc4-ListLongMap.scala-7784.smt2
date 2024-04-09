; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97488 () Bool)

(assert start!97488)

(declare-fun b_free!23423 () Bool)

(declare-fun b_next!23423 () Bool)

(assert (=> start!97488 (= b_free!23423 (not b_next!23423))))

(declare-fun tp!82568 () Bool)

(declare-fun b_and!37703 () Bool)

(assert (=> start!97488 (= tp!82568 b_and!37703)))

(declare-fun b!1111943 () Bool)

(declare-fun e!634053 () Bool)

(declare-fun e!634048 () Bool)

(declare-fun mapRes!43342 () Bool)

(assert (=> b!1111943 (= e!634053 (and e!634048 mapRes!43342))))

(declare-fun condMapEmpty!43342 () Bool)

(declare-datatypes ((V!42037 0))(
  ( (V!42038 (val!13898 Int)) )
))
(declare-datatypes ((ValueCell!13132 0))(
  ( (ValueCellFull!13132 (v!16532 V!42037)) (EmptyCell!13132) )
))
(declare-datatypes ((array!72226 0))(
  ( (array!72227 (arr!34762 (Array (_ BitVec 32) ValueCell!13132)) (size!35299 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72226)

(declare-fun mapDefault!43342 () ValueCell!13132)

