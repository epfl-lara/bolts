; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109628 () Bool)

(assert start!109628)

(declare-fun b_free!29081 () Bool)

(declare-fun b_next!29081 () Bool)

(assert (=> start!109628 (= b_free!29081 (not b_next!29081))))

(declare-fun tp!102362 () Bool)

(declare-fun b_and!47181 () Bool)

(assert (=> start!109628 (= tp!102362 b_and!47181)))

(declare-fun b!1297979 () Bool)

(declare-fun e!740557 () Bool)

(declare-fun e!740556 () Bool)

(declare-fun mapRes!53642 () Bool)

(assert (=> b!1297979 (= e!740557 (and e!740556 mapRes!53642))))

(declare-fun condMapEmpty!53642 () Bool)

(declare-datatypes ((V!51397 0))(
  ( (V!51398 (val!17435 Int)) )
))
(declare-datatypes ((ValueCell!16462 0))(
  ( (ValueCellFull!16462 (v!20036 V!51397)) (EmptyCell!16462) )
))
(declare-datatypes ((array!86413 0))(
  ( (array!86414 (arr!41703 (Array (_ BitVec 32) ValueCell!16462)) (size!42254 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86413)

(declare-fun mapDefault!53642 () ValueCell!16462)

