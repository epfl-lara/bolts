; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111270 () Bool)

(assert start!111270)

(declare-fun b!1316652 () Bool)

(declare-fun e!751191 () Bool)

(declare-fun e!751193 () Bool)

(declare-fun mapRes!55259 () Bool)

(assert (=> b!1316652 (= e!751191 (and e!751193 mapRes!55259))))

(declare-fun condMapEmpty!55259 () Bool)

(declare-datatypes ((V!52769 0))(
  ( (V!52770 (val!17949 Int)) )
))
(declare-datatypes ((ValueCell!16976 0))(
  ( (ValueCellFull!16976 (v!20576 V!52769)) (EmptyCell!16976) )
))
(declare-datatypes ((array!88413 0))(
  ( (array!88414 (arr!42680 (Array (_ BitVec 32) ValueCell!16976)) (size!43231 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88413)

(declare-fun mapDefault!55259 () ValueCell!16976)

