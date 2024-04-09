; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111256 () Bool)

(assert start!111256)

(declare-fun b!1316592 () Bool)

(declare-fun e!751125 () Bool)

(declare-fun e!751126 () Bool)

(declare-fun mapRes!55244 () Bool)

(assert (=> b!1316592 (= e!751125 (and e!751126 mapRes!55244))))

(declare-fun condMapEmpty!55244 () Bool)

(declare-datatypes ((V!52757 0))(
  ( (V!52758 (val!17945 Int)) )
))
(declare-datatypes ((ValueCell!16972 0))(
  ( (ValueCellFull!16972 (v!20572 V!52757)) (EmptyCell!16972) )
))
(declare-datatypes ((array!88399 0))(
  ( (array!88400 (arr!42674 (Array (_ BitVec 32) ValueCell!16972)) (size!43225 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88399)

(declare-fun mapDefault!55244 () ValueCell!16972)

