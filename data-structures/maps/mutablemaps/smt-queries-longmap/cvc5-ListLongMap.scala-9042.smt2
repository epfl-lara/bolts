; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109072 () Bool)

(assert start!109072)

(declare-fun b_free!28525 () Bool)

(declare-fun b_next!28525 () Bool)

(assert (=> start!109072 (= b_free!28525 (not b_next!28525))))

(declare-fun tp!100694 () Bool)

(declare-fun b_and!46625 () Bool)

(assert (=> start!109072 (= tp!100694 b_and!46625)))

(declare-fun res!856012 () Bool)

(declare-fun e!735841 () Bool)

(assert (=> start!109072 (=> (not res!856012) (not e!735841))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109072 (= res!856012 (validMask!0 mask!2175))))

(assert (=> start!109072 e!735841))

(declare-fun tp_is_empty!34165 () Bool)

(assert (=> start!109072 tp_is_empty!34165))

(assert (=> start!109072 true))

(declare-datatypes ((V!50657 0))(
  ( (V!50658 (val!17157 Int)) )
))
(declare-datatypes ((ValueCell!16184 0))(
  ( (ValueCellFull!16184 (v!19758 V!50657)) (EmptyCell!16184) )
))
(declare-datatypes ((array!85329 0))(
  ( (array!85330 (arr!41161 (Array (_ BitVec 32) ValueCell!16184)) (size!41712 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85329)

(declare-fun e!735838 () Bool)

(declare-fun array_inv!31181 (array!85329) Bool)

(assert (=> start!109072 (and (array_inv!31181 _values!1445) e!735838)))

(declare-datatypes ((array!85331 0))(
  ( (array!85332 (arr!41162 (Array (_ BitVec 32) (_ BitVec 64))) (size!41713 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85331)

(declare-fun array_inv!31182 (array!85331) Bool)

(assert (=> start!109072 (array_inv!31182 _keys!1741)))

(assert (=> start!109072 tp!100694))

(declare-fun b!1288635 () Bool)

(declare-fun res!856014 () Bool)

(assert (=> b!1288635 (=> (not res!856014) (not e!735841))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288635 (= res!856014 (and (= (size!41712 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41713 _keys!1741) (size!41712 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288636 () Bool)

(declare-fun e!735839 () Bool)

(declare-fun mapRes!52808 () Bool)

(assert (=> b!1288636 (= e!735838 (and e!735839 mapRes!52808))))

(declare-fun condMapEmpty!52808 () Bool)

(declare-fun mapDefault!52808 () ValueCell!16184)

