; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109764 () Bool)

(assert start!109764)

(declare-fun b_free!29161 () Bool)

(declare-fun b_next!29161 () Bool)

(assert (=> start!109764 (= b_free!29161 (not b_next!29161))))

(declare-fun tp!102612 () Bool)

(declare-fun b_and!47273 () Bool)

(assert (=> start!109764 (= tp!102612 b_and!47273)))

(declare-fun b!1299646 () Bool)

(declare-fun res!863761 () Bool)

(declare-fun e!741439 () Bool)

(assert (=> b!1299646 (=> (not res!863761) (not e!741439))))

(declare-datatypes ((V!51505 0))(
  ( (V!51506 (val!17475 Int)) )
))
(declare-fun minValue!1387 () V!51505)

(declare-fun zeroValue!1387 () V!51505)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16502 0))(
  ( (ValueCellFull!16502 (v!20079 V!51505)) (EmptyCell!16502) )
))
(declare-datatypes ((array!86575 0))(
  ( (array!86576 (arr!41781 (Array (_ BitVec 32) ValueCell!16502)) (size!42332 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86575)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86577 0))(
  ( (array!86578 (arr!41782 (Array (_ BitVec 32) (_ BitVec 64))) (size!42333 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86577)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22686 0))(
  ( (tuple2!22687 (_1!11353 (_ BitVec 64)) (_2!11353 V!51505)) )
))
(declare-datatypes ((List!29845 0))(
  ( (Nil!29842) (Cons!29841 (h!31050 tuple2!22686) (t!43422 List!29845)) )
))
(declare-datatypes ((ListLongMap!20355 0))(
  ( (ListLongMap!20356 (toList!10193 List!29845)) )
))
(declare-fun contains!8251 (ListLongMap!20355 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5167 (array!86577 array!86575 (_ BitVec 32) (_ BitVec 32) V!51505 V!51505 (_ BitVec 32) Int) ListLongMap!20355)

(assert (=> b!1299646 (= res!863761 (contains!8251 (getCurrentListMap!5167 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!863759 () Bool)

(assert (=> start!109764 (=> (not res!863759) (not e!741439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109764 (= res!863759 (validMask!0 mask!2175))))

(assert (=> start!109764 e!741439))

(declare-fun tp_is_empty!34801 () Bool)

(assert (=> start!109764 tp_is_empty!34801))

(assert (=> start!109764 true))

(declare-fun e!741440 () Bool)

(declare-fun array_inv!31613 (array!86575) Bool)

(assert (=> start!109764 (and (array_inv!31613 _values!1445) e!741440)))

(declare-fun array_inv!31614 (array!86577) Bool)

(assert (=> start!109764 (array_inv!31614 _keys!1741)))

(assert (=> start!109764 tp!102612))

(declare-fun b!1299647 () Bool)

(declare-fun e!741437 () Bool)

(assert (=> b!1299647 (= e!741437 tp_is_empty!34801)))

(declare-fun mapNonEmpty!53771 () Bool)

(declare-fun mapRes!53771 () Bool)

(declare-fun tp!102611 () Bool)

(declare-fun e!741441 () Bool)

(assert (=> mapNonEmpty!53771 (= mapRes!53771 (and tp!102611 e!741441))))

(declare-fun mapRest!53771 () (Array (_ BitVec 32) ValueCell!16502))

(declare-fun mapKey!53771 () (_ BitVec 32))

(declare-fun mapValue!53771 () ValueCell!16502)

(assert (=> mapNonEmpty!53771 (= (arr!41781 _values!1445) (store mapRest!53771 mapKey!53771 mapValue!53771))))

(declare-fun b!1299648 () Bool)

(declare-fun res!863766 () Bool)

(assert (=> b!1299648 (=> (not res!863766) (not e!741439))))

(assert (=> b!1299648 (= res!863766 (and (= (size!42332 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42333 _keys!1741) (size!42332 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299649 () Bool)

(declare-fun res!863758 () Bool)

(assert (=> b!1299649 (=> (not res!863758) (not e!741439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86577 (_ BitVec 32)) Bool)

(assert (=> b!1299649 (= res!863758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299650 () Bool)

(assert (=> b!1299650 (= e!741440 (and e!741437 mapRes!53771))))

(declare-fun condMapEmpty!53771 () Bool)

(declare-fun mapDefault!53771 () ValueCell!16502)

