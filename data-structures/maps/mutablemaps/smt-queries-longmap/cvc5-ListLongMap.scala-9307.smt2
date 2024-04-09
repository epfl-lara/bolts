; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111284 () Bool)

(assert start!111284)

(declare-fun b!1316726 () Bool)

(declare-fun e!751249 () Bool)

(declare-fun e!751252 () Bool)

(declare-fun mapRes!55271 () Bool)

(assert (=> b!1316726 (= e!751249 (and e!751252 mapRes!55271))))

(declare-fun condMapEmpty!55271 () Bool)

(declare-datatypes ((V!52777 0))(
  ( (V!52778 (val!17952 Int)) )
))
(declare-datatypes ((ValueCell!16979 0))(
  ( (ValueCellFull!16979 (v!20579 V!52777)) (EmptyCell!16979) )
))
(declare-datatypes ((array!88425 0))(
  ( (array!88426 (arr!42685 (Array (_ BitVec 32) ValueCell!16979)) (size!43236 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88425)

(declare-fun mapDefault!55271 () ValueCell!16979)

