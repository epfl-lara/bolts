; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111092 () Bool)

(assert start!111092)

(declare-fun b_free!29891 () Bool)

(declare-fun b_next!29891 () Bool)

(assert (=> start!111092 (= b_free!29891 (not b_next!29891))))

(declare-fun tp!104996 () Bool)

(declare-fun b_and!48109 () Bool)

(assert (=> start!111092 (= tp!104996 b_and!48109)))

(declare-fun b!1314765 () Bool)

(declare-fun e!750019 () Bool)

(declare-fun e!750020 () Bool)

(declare-fun mapRes!55060 () Bool)

(assert (=> b!1314765 (= e!750019 (and e!750020 mapRes!55060))))

(declare-fun condMapEmpty!55060 () Bool)

(declare-datatypes ((V!52597 0))(
  ( (V!52598 (val!17885 Int)) )
))
(declare-datatypes ((ValueCell!16912 0))(
  ( (ValueCellFull!16912 (v!20510 V!52597)) (EmptyCell!16912) )
))
(declare-datatypes ((array!88173 0))(
  ( (array!88174 (arr!42562 (Array (_ BitVec 32) ValueCell!16912)) (size!43113 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88173)

(declare-fun mapDefault!55060 () ValueCell!16912)

