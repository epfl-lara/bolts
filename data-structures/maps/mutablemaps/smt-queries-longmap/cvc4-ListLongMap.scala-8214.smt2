; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100202 () Bool)

(assert start!100202)

(declare-fun b!1194531 () Bool)

(declare-fun e!678890 () Bool)

(declare-fun e!678888 () Bool)

(declare-fun mapRes!47225 () Bool)

(assert (=> b!1194531 (= e!678890 (and e!678888 mapRes!47225))))

(declare-fun condMapEmpty!47225 () Bool)

(declare-datatypes ((V!45477 0))(
  ( (V!45478 (val!15188 Int)) )
))
(declare-datatypes ((ValueCell!14422 0))(
  ( (ValueCellFull!14422 (v!17827 V!45477)) (EmptyCell!14422) )
))
(declare-datatypes ((array!77290 0))(
  ( (array!77291 (arr!37290 (Array (_ BitVec 32) ValueCell!14422)) (size!37827 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77290)

(declare-fun mapDefault!47225 () ValueCell!14422)

