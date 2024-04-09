; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109666 () Bool)

(assert start!109666)

(declare-fun b_free!29119 () Bool)

(declare-fun b_next!29119 () Bool)

(assert (=> start!109666 (= b_free!29119 (not b_next!29119))))

(declare-fun tp!102476 () Bool)

(declare-fun b_and!47219 () Bool)

(assert (=> start!109666 (= tp!102476 b_and!47219)))

(declare-fun mapNonEmpty!53699 () Bool)

(declare-fun mapRes!53699 () Bool)

(declare-fun tp!102477 () Bool)

(declare-fun e!740839 () Bool)

(assert (=> mapNonEmpty!53699 (= mapRes!53699 (and tp!102477 e!740839))))

(declare-datatypes ((V!51449 0))(
  ( (V!51450 (val!17454 Int)) )
))
(declare-datatypes ((ValueCell!16481 0))(
  ( (ValueCellFull!16481 (v!20055 V!51449)) (EmptyCell!16481) )
))
(declare-fun mapRest!53699 () (Array (_ BitVec 32) ValueCell!16481))

(declare-fun mapValue!53699 () ValueCell!16481)

(declare-datatypes ((array!86487 0))(
  ( (array!86488 (arr!41740 (Array (_ BitVec 32) ValueCell!16481)) (size!42291 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86487)

(declare-fun mapKey!53699 () (_ BitVec 32))

(assert (=> mapNonEmpty!53699 (= (arr!41740 _values!1445) (store mapRest!53699 mapKey!53699 mapValue!53699))))

(declare-fun b!1298549 () Bool)

(declare-fun res!863093 () Bool)

(declare-fun e!740842 () Bool)

(assert (=> b!1298549 (=> (not res!863093) (not e!740842))))

(declare-datatypes ((array!86489 0))(
  ( (array!86490 (arr!41741 (Array (_ BitVec 32) (_ BitVec 64))) (size!42292 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86489)

(declare-datatypes ((List!29816 0))(
  ( (Nil!29813) (Cons!29812 (h!31021 (_ BitVec 64)) (t!43387 List!29816)) )
))
(declare-fun arrayNoDuplicates!0 (array!86489 (_ BitVec 32) List!29816) Bool)

(assert (=> b!1298549 (= res!863093 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29813))))

(declare-fun b!1298550 () Bool)

(declare-fun res!863092 () Bool)

(assert (=> b!1298550 (=> (not res!863092) (not e!740842))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86489 (_ BitVec 32)) Bool)

(assert (=> b!1298550 (= res!863092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298551 () Bool)

(declare-fun tp_is_empty!34759 () Bool)

(assert (=> b!1298551 (= e!740839 tp_is_empty!34759)))

(declare-fun res!863091 () Bool)

(assert (=> start!109666 (=> (not res!863091) (not e!740842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109666 (= res!863091 (validMask!0 mask!2175))))

(assert (=> start!109666 e!740842))

(assert (=> start!109666 tp_is_empty!34759))

(assert (=> start!109666 true))

(declare-fun e!740838 () Bool)

(declare-fun array_inv!31585 (array!86487) Bool)

(assert (=> start!109666 (and (array_inv!31585 _values!1445) e!740838)))

(declare-fun array_inv!31586 (array!86489) Bool)

(assert (=> start!109666 (array_inv!31586 _keys!1741)))

(assert (=> start!109666 tp!102476))

(declare-fun b!1298552 () Bool)

(declare-fun res!863090 () Bool)

(assert (=> b!1298552 (=> (not res!863090) (not e!740842))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1298552 (= res!863090 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42292 _keys!1741)) (not (= (select (arr!41741 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1298553 () Bool)

(declare-fun res!863088 () Bool)

(assert (=> b!1298553 (=> (not res!863088) (not e!740842))))

(assert (=> b!1298553 (= res!863088 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42292 _keys!1741))))))

(declare-fun b!1298554 () Bool)

(declare-fun res!863094 () Bool)

(assert (=> b!1298554 (=> (not res!863094) (not e!740842))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1298554 (= res!863094 (and (= (size!42291 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42292 _keys!1741) (size!42291 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53699 () Bool)

(assert (=> mapIsEmpty!53699 mapRes!53699))

(declare-fun b!1298555 () Bool)

(declare-fun res!863089 () Bool)

(assert (=> b!1298555 (=> (not res!863089) (not e!740842))))

(declare-fun minValue!1387 () V!51449)

(declare-fun zeroValue!1387 () V!51449)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22656 0))(
  ( (tuple2!22657 (_1!11338 (_ BitVec 64)) (_2!11338 V!51449)) )
))
(declare-datatypes ((List!29817 0))(
  ( (Nil!29814) (Cons!29813 (h!31022 tuple2!22656) (t!43388 List!29817)) )
))
(declare-datatypes ((ListLongMap!20325 0))(
  ( (ListLongMap!20326 (toList!10178 List!29817)) )
))
(declare-fun contains!8232 (ListLongMap!20325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5152 (array!86489 array!86487 (_ BitVec 32) (_ BitVec 32) V!51449 V!51449 (_ BitVec 32) Int) ListLongMap!20325)

(assert (=> b!1298555 (= res!863089 (contains!8232 (getCurrentListMap!5152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1298556 () Bool)

(assert (=> b!1298556 (= e!740842 (not (or (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvsub (size!42292 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)) (bvsub (size!42292 _keys!1741) from!2144)))))))

(assert (=> b!1298556 (contains!8232 (getCurrentListMap!5152 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42950 0))(
  ( (Unit!42951) )
))
(declare-fun lt!580660 () Unit!42950)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!50 (array!86489 array!86487 (_ BitVec 32) (_ BitVec 32) V!51449 V!51449 (_ BitVec 64) (_ BitVec 32) Int) Unit!42950)

(assert (=> b!1298556 (= lt!580660 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!50 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298557 () Bool)

(declare-fun e!740841 () Bool)

(assert (=> b!1298557 (= e!740841 tp_is_empty!34759)))

(declare-fun b!1298558 () Bool)

(assert (=> b!1298558 (= e!740838 (and e!740841 mapRes!53699))))

(declare-fun condMapEmpty!53699 () Bool)

(declare-fun mapDefault!53699 () ValueCell!16481)

