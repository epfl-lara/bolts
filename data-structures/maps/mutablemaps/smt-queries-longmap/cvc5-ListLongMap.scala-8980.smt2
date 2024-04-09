; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108676 () Bool)

(assert start!108676)

(declare-fun b_free!28153 () Bool)

(declare-fun b_next!28153 () Bool)

(assert (=> start!108676 (= b_free!28153 (not b_next!28153))))

(declare-fun tp!99576 () Bool)

(declare-fun b_and!46229 () Bool)

(assert (=> start!108676 (= tp!99576 b_and!46229)))

(declare-fun b!1282275 () Bool)

(declare-fun e!732681 () Bool)

(assert (=> b!1282275 (= e!732681 false)))

(declare-datatypes ((V!50161 0))(
  ( (V!50162 (val!16971 Int)) )
))
(declare-fun minValue!1387 () V!50161)

(declare-fun zeroValue!1387 () V!50161)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576462 () Bool)

(declare-datatypes ((ValueCell!15998 0))(
  ( (ValueCellFull!15998 (v!19571 V!50161)) (EmptyCell!15998) )
))
(declare-datatypes ((array!84609 0))(
  ( (array!84610 (arr!40802 (Array (_ BitVec 32) ValueCell!15998)) (size!41353 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84609)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84611 0))(
  ( (array!84612 (arr!40803 (Array (_ BitVec 32) (_ BitVec 64))) (size!41354 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84611)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21874 0))(
  ( (tuple2!21875 (_1!10947 (_ BitVec 64)) (_2!10947 V!50161)) )
))
(declare-datatypes ((List!29084 0))(
  ( (Nil!29081) (Cons!29080 (h!30289 tuple2!21874) (t!42635 List!29084)) )
))
(declare-datatypes ((ListLongMap!19543 0))(
  ( (ListLongMap!19544 (toList!9787 List!29084)) )
))
(declare-fun contains!7842 (ListLongMap!19543 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4807 (array!84611 array!84609 (_ BitVec 32) (_ BitVec 32) V!50161 V!50161 (_ BitVec 32) Int) ListLongMap!19543)

(assert (=> b!1282275 (= lt!576462 (contains!7842 (getCurrentListMap!4807 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282276 () Bool)

(declare-fun res!851816 () Bool)

(assert (=> b!1282276 (=> (not res!851816) (not e!732681))))

(assert (=> b!1282276 (= res!851816 (and (= (size!41353 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41354 _keys!1741) (size!41353 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!851814 () Bool)

(assert (=> start!108676 (=> (not res!851814) (not e!732681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108676 (= res!851814 (validMask!0 mask!2175))))

(assert (=> start!108676 e!732681))

(declare-fun tp_is_empty!33793 () Bool)

(assert (=> start!108676 tp_is_empty!33793))

(assert (=> start!108676 true))

(declare-fun e!732682 () Bool)

(declare-fun array_inv!30933 (array!84609) Bool)

(assert (=> start!108676 (and (array_inv!30933 _values!1445) e!732682)))

(declare-fun array_inv!30934 (array!84611) Bool)

(assert (=> start!108676 (array_inv!30934 _keys!1741)))

(assert (=> start!108676 tp!99576))

(declare-fun mapNonEmpty!52247 () Bool)

(declare-fun mapRes!52247 () Bool)

(declare-fun tp!99575 () Bool)

(declare-fun e!732684 () Bool)

(assert (=> mapNonEmpty!52247 (= mapRes!52247 (and tp!99575 e!732684))))

(declare-fun mapValue!52247 () ValueCell!15998)

(declare-fun mapRest!52247 () (Array (_ BitVec 32) ValueCell!15998))

(declare-fun mapKey!52247 () (_ BitVec 32))

(assert (=> mapNonEmpty!52247 (= (arr!40802 _values!1445) (store mapRest!52247 mapKey!52247 mapValue!52247))))

(declare-fun mapIsEmpty!52247 () Bool)

(assert (=> mapIsEmpty!52247 mapRes!52247))

(declare-fun b!1282277 () Bool)

(declare-fun res!851817 () Bool)

(assert (=> b!1282277 (=> (not res!851817) (not e!732681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84611 (_ BitVec 32)) Bool)

(assert (=> b!1282277 (= res!851817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282278 () Bool)

(declare-fun e!732685 () Bool)

(assert (=> b!1282278 (= e!732682 (and e!732685 mapRes!52247))))

(declare-fun condMapEmpty!52247 () Bool)

(declare-fun mapDefault!52247 () ValueCell!15998)

