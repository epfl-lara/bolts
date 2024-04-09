; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84288 () Bool)

(assert start!84288)

(declare-fun b!985663 () Bool)

(declare-fun e!555632 () Bool)

(declare-fun e!555631 () Bool)

(declare-fun mapRes!36623 () Bool)

(assert (=> b!985663 (= e!555632 (and e!555631 mapRes!36623))))

(declare-fun condMapEmpty!36623 () Bool)

(declare-datatypes ((V!35733 0))(
  ( (V!35734 (val!11582 Int)) )
))
(declare-datatypes ((ValueCell!11050 0))(
  ( (ValueCellFull!11050 (v!14144 V!35733)) (EmptyCell!11050) )
))
(declare-datatypes ((array!62091 0))(
  ( (array!62092 (arr!29899 (Array (_ BitVec 32) ValueCell!11050)) (size!30379 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62091)

(declare-fun mapDefault!36623 () ValueCell!11050)

