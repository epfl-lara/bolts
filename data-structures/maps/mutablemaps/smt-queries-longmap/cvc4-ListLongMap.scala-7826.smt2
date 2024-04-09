; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97740 () Bool)

(assert start!97740)

(declare-fun b!1116940 () Bool)

(declare-fun e!636360 () Bool)

(declare-fun e!636362 () Bool)

(declare-fun mapRes!43720 () Bool)

(assert (=> b!1116940 (= e!636360 (and e!636362 mapRes!43720))))

(declare-fun condMapEmpty!43720 () Bool)

(declare-datatypes ((V!42373 0))(
  ( (V!42374 (val!14024 Int)) )
))
(declare-datatypes ((ValueCell!13258 0))(
  ( (ValueCellFull!13258 (v!16658 V!42373)) (EmptyCell!13258) )
))
(declare-datatypes ((array!72708 0))(
  ( (array!72709 (arr!35003 (Array (_ BitVec 32) ValueCell!13258)) (size!35540 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72708)

(declare-fun mapDefault!43720 () ValueCell!13258)

