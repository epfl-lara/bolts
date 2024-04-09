; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108692 () Bool)

(assert start!108692)

(declare-fun b_free!28169 () Bool)

(declare-fun b_next!28169 () Bool)

(assert (=> start!108692 (= b_free!28169 (not b_next!28169))))

(declare-fun tp!99624 () Bool)

(declare-fun b_and!46245 () Bool)

(assert (=> start!108692 (= tp!99624 b_and!46245)))

(declare-fun b!1282467 () Bool)

(declare-fun res!851936 () Bool)

(declare-fun e!732804 () Bool)

(assert (=> b!1282467 (=> (not res!851936) (not e!732804))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50181 0))(
  ( (V!50182 (val!16979 Int)) )
))
(declare-datatypes ((ValueCell!16006 0))(
  ( (ValueCellFull!16006 (v!19579 V!50181)) (EmptyCell!16006) )
))
(declare-datatypes ((array!84639 0))(
  ( (array!84640 (arr!40817 (Array (_ BitVec 32) ValueCell!16006)) (size!41368 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84639)

(declare-datatypes ((array!84641 0))(
  ( (array!84642 (arr!40818 (Array (_ BitVec 32) (_ BitVec 64))) (size!41369 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84641)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1282467 (= res!851936 (and (= (size!41368 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41369 _keys!1741) (size!41368 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282468 () Bool)

(declare-fun res!851935 () Bool)

(assert (=> b!1282468 (=> (not res!851935) (not e!732804))))

(declare-datatypes ((List!29095 0))(
  ( (Nil!29092) (Cons!29091 (h!30300 (_ BitVec 64)) (t!42646 List!29095)) )
))
(declare-fun arrayNoDuplicates!0 (array!84641 (_ BitVec 32) List!29095) Bool)

(assert (=> b!1282468 (= res!851935 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29092))))

(declare-fun b!1282469 () Bool)

(declare-fun e!732802 () Bool)

(declare-fun tp_is_empty!33809 () Bool)

(assert (=> b!1282469 (= e!732802 tp_is_empty!33809)))

(declare-fun mapNonEmpty!52271 () Bool)

(declare-fun mapRes!52271 () Bool)

(declare-fun tp!99623 () Bool)

(declare-fun e!732803 () Bool)

(assert (=> mapNonEmpty!52271 (= mapRes!52271 (and tp!99623 e!732803))))

(declare-fun mapValue!52271 () ValueCell!16006)

(declare-fun mapKey!52271 () (_ BitVec 32))

(declare-fun mapRest!52271 () (Array (_ BitVec 32) ValueCell!16006))

(assert (=> mapNonEmpty!52271 (= (arr!40817 _values!1445) (store mapRest!52271 mapKey!52271 mapValue!52271))))

(declare-fun res!851933 () Bool)

(assert (=> start!108692 (=> (not res!851933) (not e!732804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108692 (= res!851933 (validMask!0 mask!2175))))

(assert (=> start!108692 e!732804))

(assert (=> start!108692 tp_is_empty!33809))

(assert (=> start!108692 true))

(declare-fun e!732805 () Bool)

(declare-fun array_inv!30945 (array!84639) Bool)

(assert (=> start!108692 (and (array_inv!30945 _values!1445) e!732805)))

(declare-fun array_inv!30946 (array!84641) Bool)

(assert (=> start!108692 (array_inv!30946 _keys!1741)))

(assert (=> start!108692 tp!99624))

(declare-fun b!1282470 () Bool)

(assert (=> b!1282470 (= e!732805 (and e!732802 mapRes!52271))))

(declare-fun condMapEmpty!52271 () Bool)

(declare-fun mapDefault!52271 () ValueCell!16006)

