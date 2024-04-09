; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101058 () Bool)

(assert start!101058)

(declare-fun b_free!26021 () Bool)

(declare-fun b_next!26021 () Bool)

(assert (=> start!101058 (= b_free!26021 (not b_next!26021))))

(declare-fun tp!91079 () Bool)

(declare-fun b_and!43133 () Bool)

(assert (=> start!101058 (= tp!91079 b_and!43133)))

(declare-fun b!1210583 () Bool)

(declare-fun e!687556 () Bool)

(declare-fun e!687548 () Bool)

(declare-fun mapRes!47956 () Bool)

(assert (=> b!1210583 (= e!687556 (and e!687548 mapRes!47956))))

(declare-fun condMapEmpty!47956 () Bool)

(declare-datatypes ((V!46093 0))(
  ( (V!46094 (val!15419 Int)) )
))
(declare-datatypes ((ValueCell!14653 0))(
  ( (ValueCellFull!14653 (v!18071 V!46093)) (EmptyCell!14653) )
))
(declare-datatypes ((array!78208 0))(
  ( (array!78209 (arr!37737 (Array (_ BitVec 32) ValueCell!14653)) (size!38274 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78208)

(declare-fun mapDefault!47956 () ValueCell!14653)

