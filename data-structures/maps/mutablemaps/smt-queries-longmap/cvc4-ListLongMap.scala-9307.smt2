; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111288 () Bool)

(assert start!111288)

(declare-fun mapIsEmpty!55277 () Bool)

(declare-fun mapRes!55277 () Bool)

(assert (=> mapIsEmpty!55277 mapRes!55277))

(declare-fun b!1316762 () Bool)

(declare-fun e!751279 () Bool)

(declare-fun e!751283 () Bool)

(assert (=> b!1316762 (= e!751279 (and e!751283 mapRes!55277))))

(declare-fun condMapEmpty!55277 () Bool)

(declare-datatypes ((V!52781 0))(
  ( (V!52782 (val!17954 Int)) )
))
(declare-datatypes ((ValueCell!16981 0))(
  ( (ValueCellFull!16981 (v!20581 V!52781)) (EmptyCell!16981) )
))
(declare-datatypes ((array!88431 0))(
  ( (array!88432 (arr!42688 (Array (_ BitVec 32) ValueCell!16981)) (size!43239 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88431)

(declare-fun mapDefault!55277 () ValueCell!16981)

