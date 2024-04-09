; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111350 () Bool)

(assert start!111350)

(declare-fun b!1317166 () Bool)

(declare-fun e!751594 () Bool)

(declare-fun e!751597 () Bool)

(declare-fun mapRes!55334 () Bool)

(assert (=> b!1317166 (= e!751594 (and e!751597 mapRes!55334))))

(declare-fun condMapEmpty!55334 () Bool)

(declare-datatypes ((V!52825 0))(
  ( (V!52826 (val!17970 Int)) )
))
(declare-datatypes ((ValueCell!16997 0))(
  ( (ValueCellFull!16997 (v!20598 V!52825)) (EmptyCell!16997) )
))
(declare-datatypes ((array!88495 0))(
  ( (array!88496 (arr!42717 (Array (_ BitVec 32) ValueCell!16997)) (size!43268 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88495)

(declare-fun mapDefault!55334 () ValueCell!16997)

