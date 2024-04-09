; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109660 () Bool)

(assert start!109660)

(declare-fun b_free!29113 () Bool)

(declare-fun b_next!29113 () Bool)

(assert (=> start!109660 (= b_free!29113 (not b_next!29113))))

(declare-fun tp!102459 () Bool)

(declare-fun b_and!47213 () Bool)

(assert (=> start!109660 (= tp!102459 b_and!47213)))

(declare-fun b!1298459 () Bool)

(declare-fun res!863026 () Bool)

(declare-fun e!740795 () Bool)

(assert (=> b!1298459 (=> (not res!863026) (not e!740795))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86475 0))(
  ( (array!86476 (arr!41734 (Array (_ BitVec 32) (_ BitVec 64))) (size!42285 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86475)

(assert (=> b!1298459 (= res!863026 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42285 _keys!1741))))))

(declare-fun b!1298460 () Bool)

(declare-fun res!863027 () Bool)

(assert (=> b!1298460 (=> (not res!863027) (not e!740795))))

(declare-datatypes ((List!29810 0))(
  ( (Nil!29807) (Cons!29806 (h!31015 (_ BitVec 64)) (t!43381 List!29810)) )
))
(declare-fun arrayNoDuplicates!0 (array!86475 (_ BitVec 32) List!29810) Bool)

(assert (=> b!1298460 (= res!863027 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29807))))

(declare-fun b!1298461 () Bool)

(declare-fun res!863031 () Bool)

(assert (=> b!1298461 (=> (not res!863031) (not e!740795))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86475 (_ BitVec 32)) Bool)

(assert (=> b!1298461 (= res!863031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298462 () Bool)

(declare-fun e!740796 () Bool)

(declare-fun tp_is_empty!34753 () Bool)

(assert (=> b!1298462 (= e!740796 tp_is_empty!34753)))

(declare-fun b!1298463 () Bool)

(assert (=> b!1298463 (= e!740795 (not true))))

(declare-datatypes ((V!51441 0))(
  ( (V!51442 (val!17451 Int)) )
))
(declare-fun minValue!1387 () V!51441)

(declare-fun zeroValue!1387 () V!51441)

(declare-datatypes ((ValueCell!16478 0))(
  ( (ValueCellFull!16478 (v!20052 V!51441)) (EmptyCell!16478) )
))
(declare-datatypes ((array!86477 0))(
  ( (array!86478 (arr!41735 (Array (_ BitVec 32) ValueCell!16478)) (size!42286 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86477)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22650 0))(
  ( (tuple2!22651 (_1!11335 (_ BitVec 64)) (_2!11335 V!51441)) )
))
(declare-datatypes ((List!29811 0))(
  ( (Nil!29808) (Cons!29807 (h!31016 tuple2!22650) (t!43382 List!29811)) )
))
(declare-datatypes ((ListLongMap!20319 0))(
  ( (ListLongMap!20320 (toList!10175 List!29811)) )
))
(declare-fun contains!8229 (ListLongMap!20319 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5149 (array!86475 array!86477 (_ BitVec 32) (_ BitVec 32) V!51441 V!51441 (_ BitVec 32) Int) ListLongMap!20319)

(assert (=> b!1298463 (contains!8229 (getCurrentListMap!5149 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42944 0))(
  ( (Unit!42945) )
))
(declare-fun lt!580651 () Unit!42944)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!47 (array!86475 array!86477 (_ BitVec 32) (_ BitVec 32) V!51441 V!51441 (_ BitVec 64) (_ BitVec 32) Int) Unit!42944)

(assert (=> b!1298463 (= lt!580651 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!47 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun res!863028 () Bool)

(assert (=> start!109660 (=> (not res!863028) (not e!740795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109660 (= res!863028 (validMask!0 mask!2175))))

(assert (=> start!109660 e!740795))

(assert (=> start!109660 tp_is_empty!34753))

(assert (=> start!109660 true))

(declare-fun e!740797 () Bool)

(declare-fun array_inv!31579 (array!86477) Bool)

(assert (=> start!109660 (and (array_inv!31579 _values!1445) e!740797)))

(declare-fun array_inv!31580 (array!86475) Bool)

(assert (=> start!109660 (array_inv!31580 _keys!1741)))

(assert (=> start!109660 tp!102459))

(declare-fun b!1298464 () Bool)

(declare-fun res!863029 () Bool)

(assert (=> b!1298464 (=> (not res!863029) (not e!740795))))

(assert (=> b!1298464 (= res!863029 (contains!8229 (getCurrentListMap!5149 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1298465 () Bool)

(declare-fun res!863030 () Bool)

(assert (=> b!1298465 (=> (not res!863030) (not e!740795))))

(assert (=> b!1298465 (= res!863030 (and (= (size!42286 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42285 _keys!1741) (size!42286 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53690 () Bool)

(declare-fun mapRes!53690 () Bool)

(declare-fun tp!102458 () Bool)

(declare-fun e!740794 () Bool)

(assert (=> mapNonEmpty!53690 (= mapRes!53690 (and tp!102458 e!740794))))

(declare-fun mapKey!53690 () (_ BitVec 32))

(declare-fun mapRest!53690 () (Array (_ BitVec 32) ValueCell!16478))

(declare-fun mapValue!53690 () ValueCell!16478)

(assert (=> mapNonEmpty!53690 (= (arr!41735 _values!1445) (store mapRest!53690 mapKey!53690 mapValue!53690))))

(declare-fun b!1298466 () Bool)

(assert (=> b!1298466 (= e!740797 (and e!740796 mapRes!53690))))

(declare-fun condMapEmpty!53690 () Bool)

(declare-fun mapDefault!53690 () ValueCell!16478)

