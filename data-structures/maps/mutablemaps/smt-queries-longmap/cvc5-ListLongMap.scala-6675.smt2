; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84050 () Bool)

(assert start!84050)

(declare-fun b_free!19777 () Bool)

(declare-fun b_next!19777 () Bool)

(assert (=> start!84050 (= b_free!19777 (not b_next!19777))))

(declare-fun tp!68855 () Bool)

(declare-fun b_and!31655 () Bool)

(assert (=> start!84050 (= tp!68855 b_and!31655)))

(declare-fun b!981989 () Bool)

(declare-fun e!553589 () Bool)

(declare-fun e!553592 () Bool)

(declare-fun mapRes!36266 () Bool)

(assert (=> b!981989 (= e!553589 (and e!553592 mapRes!36266))))

(declare-fun condMapEmpty!36266 () Bool)

(declare-datatypes ((V!35417 0))(
  ( (V!35418 (val!11463 Int)) )
))
(declare-datatypes ((ValueCell!10931 0))(
  ( (ValueCellFull!10931 (v!14025 V!35417)) (EmptyCell!10931) )
))
(declare-datatypes ((array!61639 0))(
  ( (array!61640 (arr!29673 (Array (_ BitVec 32) ValueCell!10931)) (size!30153 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61639)

(declare-fun mapDefault!36266 () ValueCell!10931)

