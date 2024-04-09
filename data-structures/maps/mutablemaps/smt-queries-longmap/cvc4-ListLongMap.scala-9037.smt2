; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109046 () Bool)

(assert start!109046)

(declare-fun b_free!28499 () Bool)

(declare-fun b_next!28499 () Bool)

(assert (=> start!109046 (= b_free!28499 (not b_next!28499))))

(declare-fun tp!100617 () Bool)

(declare-fun b_and!46599 () Bool)

(assert (=> start!109046 (= tp!100617 b_and!46599)))

(declare-fun res!855660 () Bool)

(declare-fun e!735603 () Bool)

(assert (=> start!109046 (=> (not res!855660) (not e!735603))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109046 (= res!855660 (validMask!0 mask!2175))))

(assert (=> start!109046 e!735603))

(declare-fun tp_is_empty!34139 () Bool)

(assert (=> start!109046 tp_is_empty!34139))

(assert (=> start!109046 true))

(declare-datatypes ((V!50621 0))(
  ( (V!50622 (val!17144 Int)) )
))
(declare-datatypes ((ValueCell!16171 0))(
  ( (ValueCellFull!16171 (v!19745 V!50621)) (EmptyCell!16171) )
))
(declare-datatypes ((array!85279 0))(
  ( (array!85280 (arr!41136 (Array (_ BitVec 32) ValueCell!16171)) (size!41687 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85279)

(declare-fun e!735604 () Bool)

(declare-fun array_inv!31165 (array!85279) Bool)

(assert (=> start!109046 (and (array_inv!31165 _values!1445) e!735604)))

(declare-datatypes ((array!85281 0))(
  ( (array!85282 (arr!41137 (Array (_ BitVec 32) (_ BitVec 64))) (size!41688 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85281)

(declare-fun array_inv!31166 (array!85281) Bool)

(assert (=> start!109046 (array_inv!31166 _keys!1741)))

(assert (=> start!109046 tp!100617))

(declare-fun b!1288167 () Bool)

(declare-fun e!735602 () Bool)

(declare-fun mapRes!52769 () Bool)

(assert (=> b!1288167 (= e!735604 (and e!735602 mapRes!52769))))

(declare-fun condMapEmpty!52769 () Bool)

(declare-fun mapDefault!52769 () ValueCell!16171)

