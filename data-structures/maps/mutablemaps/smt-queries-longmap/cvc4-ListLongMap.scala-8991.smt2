; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108746 () Bool)

(assert start!108746)

(declare-fun b_free!28223 () Bool)

(declare-fun b_next!28223 () Bool)

(assert (=> start!108746 (= b_free!28223 (not b_next!28223))))

(declare-fun tp!99785 () Bool)

(declare-fun b_and!46299 () Bool)

(assert (=> start!108746 (= tp!99785 b_and!46299)))

(declare-fun res!852584 () Bool)

(declare-fun e!733208 () Bool)

(assert (=> start!108746 (=> (not res!852584) (not e!733208))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108746 (= res!852584 (validMask!0 mask!2175))))

(assert (=> start!108746 e!733208))

(declare-fun tp_is_empty!33863 () Bool)

(assert (=> start!108746 tp_is_empty!33863))

(assert (=> start!108746 true))

(declare-datatypes ((V!50253 0))(
  ( (V!50254 (val!17006 Int)) )
))
(declare-datatypes ((ValueCell!16033 0))(
  ( (ValueCellFull!16033 (v!19606 V!50253)) (EmptyCell!16033) )
))
(declare-datatypes ((array!84745 0))(
  ( (array!84746 (arr!40870 (Array (_ BitVec 32) ValueCell!16033)) (size!41421 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84745)

(declare-fun e!733209 () Bool)

(declare-fun array_inv!30985 (array!84745) Bool)

(assert (=> start!108746 (and (array_inv!30985 _values!1445) e!733209)))

(declare-datatypes ((array!84747 0))(
  ( (array!84748 (arr!40871 (Array (_ BitVec 32) (_ BitVec 64))) (size!41422 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84747)

(declare-fun array_inv!30986 (array!84747) Bool)

(assert (=> start!108746 (array_inv!30986 _keys!1741)))

(assert (=> start!108746 tp!99785))

(declare-fun b!1283354 () Bool)

(declare-fun e!733207 () Bool)

(declare-fun mapRes!52352 () Bool)

(assert (=> b!1283354 (= e!733209 (and e!733207 mapRes!52352))))

(declare-fun condMapEmpty!52352 () Bool)

(declare-fun mapDefault!52352 () ValueCell!16033)

