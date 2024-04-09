; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84318 () Bool)

(assert start!84318)

(declare-fun mapIsEmpty!36668 () Bool)

(declare-fun mapRes!36668 () Bool)

(assert (=> mapIsEmpty!36668 mapRes!36668))

(declare-fun b!985933 () Bool)

(declare-fun e!555856 () Bool)

(declare-fun e!555858 () Bool)

(assert (=> b!985933 (= e!555856 (and e!555858 mapRes!36668))))

(declare-fun condMapEmpty!36668 () Bool)

(declare-datatypes ((V!35773 0))(
  ( (V!35774 (val!11597 Int)) )
))
(declare-datatypes ((ValueCell!11065 0))(
  ( (ValueCellFull!11065 (v!14159 V!35773)) (EmptyCell!11065) )
))
(declare-datatypes ((array!62145 0))(
  ( (array!62146 (arr!29926 (Array (_ BitVec 32) ValueCell!11065)) (size!30406 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62145)

(declare-fun mapDefault!36668 () ValueCell!11065)

