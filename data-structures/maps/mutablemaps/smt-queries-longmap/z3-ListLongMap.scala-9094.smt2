; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109386 () Bool)

(assert start!109386)

(declare-fun b_free!28839 () Bool)

(declare-fun b_next!28839 () Bool)

(assert (=> start!109386 (= b_free!28839 (not b_next!28839))))

(declare-fun tp!101637 () Bool)

(declare-fun b_and!46939 () Bool)

(assert (=> start!109386 (= tp!101637 b_and!46939)))

(declare-fun b!1294174 () Bool)

(declare-fun res!860137 () Bool)

(declare-fun e!738549 () Bool)

(assert (=> b!1294174 (=> (not res!860137) (not e!738549))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85945 0))(
  ( (array!85946 (arr!41469 (Array (_ BitVec 32) (_ BitVec 64))) (size!42020 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85945)

(assert (=> b!1294174 (= res!860137 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42020 _keys!1741))))))

(declare-fun b!1294175 () Bool)

(declare-fun res!860138 () Bool)

(assert (=> b!1294175 (=> (not res!860138) (not e!738549))))

(assert (=> b!1294175 (= res!860138 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42020 _keys!1741))))))

(declare-fun mapNonEmpty!53279 () Bool)

(declare-fun mapRes!53279 () Bool)

(declare-fun tp!101636 () Bool)

(declare-fun e!738553 () Bool)

(assert (=> mapNonEmpty!53279 (= mapRes!53279 (and tp!101636 e!738553))))

(declare-datatypes ((V!51075 0))(
  ( (V!51076 (val!17314 Int)) )
))
(declare-datatypes ((ValueCell!16341 0))(
  ( (ValueCellFull!16341 (v!19915 V!51075)) (EmptyCell!16341) )
))
(declare-fun mapRest!53279 () (Array (_ BitVec 32) ValueCell!16341))

(declare-fun mapValue!53279 () ValueCell!16341)

(declare-datatypes ((array!85947 0))(
  ( (array!85948 (arr!41470 (Array (_ BitVec 32) ValueCell!16341)) (size!42021 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85947)

(declare-fun mapKey!53279 () (_ BitVec 32))

(assert (=> mapNonEmpty!53279 (= (arr!41470 _values!1445) (store mapRest!53279 mapKey!53279 mapValue!53279))))

(declare-fun b!1294176 () Bool)

(declare-fun res!860139 () Bool)

(assert (=> b!1294176 (=> (not res!860139) (not e!738549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294176 (= res!860139 (not (validKeyInArray!0 (select (arr!41469 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53279 () Bool)

(assert (=> mapIsEmpty!53279 mapRes!53279))

(declare-fun b!1294177 () Bool)

(declare-fun res!860136 () Bool)

(assert (=> b!1294177 (=> (not res!860136) (not e!738549))))

(declare-fun minValue!1387 () V!51075)

(declare-fun zeroValue!1387 () V!51075)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22432 0))(
  ( (tuple2!22433 (_1!11226 (_ BitVec 64)) (_2!11226 V!51075)) )
))
(declare-datatypes ((List!29608 0))(
  ( (Nil!29605) (Cons!29604 (h!30813 tuple2!22432) (t!43179 List!29608)) )
))
(declare-datatypes ((ListLongMap!20101 0))(
  ( (ListLongMap!20102 (toList!10066 List!29608)) )
))
(declare-fun contains!8122 (ListLongMap!20101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5051 (array!85945 array!85947 (_ BitVec 32) (_ BitVec 32) V!51075 V!51075 (_ BitVec 32) Int) ListLongMap!20101)

(assert (=> b!1294177 (= res!860136 (contains!8122 (getCurrentListMap!5051 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294178 () Bool)

(declare-fun e!738550 () Bool)

(declare-fun e!738551 () Bool)

(assert (=> b!1294178 (= e!738550 (and e!738551 mapRes!53279))))

(declare-fun condMapEmpty!53279 () Bool)

(declare-fun mapDefault!53279 () ValueCell!16341)

(assert (=> b!1294178 (= condMapEmpty!53279 (= (arr!41470 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16341)) mapDefault!53279)))))

(declare-fun b!1294180 () Bool)

(assert (=> b!1294180 (= e!738549 (not true))))

(assert (=> b!1294180 (not (contains!8122 (ListLongMap!20102 Nil!29605) k0!1205))))

(declare-datatypes ((Unit!42803 0))(
  ( (Unit!42804) )
))
(declare-fun lt!579637 () Unit!42803)

(declare-fun emptyContainsNothing!158 ((_ BitVec 64)) Unit!42803)

(assert (=> b!1294180 (= lt!579637 (emptyContainsNothing!158 k0!1205))))

(declare-fun b!1294181 () Bool)

(declare-fun res!860141 () Bool)

(assert (=> b!1294181 (=> (not res!860141) (not e!738549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85945 (_ BitVec 32)) Bool)

(assert (=> b!1294181 (= res!860141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294182 () Bool)

(declare-fun res!860140 () Bool)

(assert (=> b!1294182 (=> (not res!860140) (not e!738549))))

(assert (=> b!1294182 (= res!860140 (and (= (size!42021 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42020 _keys!1741) (size!42021 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294183 () Bool)

(declare-fun res!860135 () Bool)

(assert (=> b!1294183 (=> (not res!860135) (not e!738549))))

(declare-datatypes ((List!29609 0))(
  ( (Nil!29606) (Cons!29605 (h!30814 (_ BitVec 64)) (t!43180 List!29609)) )
))
(declare-fun arrayNoDuplicates!0 (array!85945 (_ BitVec 32) List!29609) Bool)

(assert (=> b!1294183 (= res!860135 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29606))))

(declare-fun b!1294184 () Bool)

(declare-fun tp_is_empty!34479 () Bool)

(assert (=> b!1294184 (= e!738551 tp_is_empty!34479)))

(declare-fun res!860142 () Bool)

(assert (=> start!109386 (=> (not res!860142) (not e!738549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109386 (= res!860142 (validMask!0 mask!2175))))

(assert (=> start!109386 e!738549))

(assert (=> start!109386 tp_is_empty!34479))

(assert (=> start!109386 true))

(declare-fun array_inv!31385 (array!85947) Bool)

(assert (=> start!109386 (and (array_inv!31385 _values!1445) e!738550)))

(declare-fun array_inv!31386 (array!85945) Bool)

(assert (=> start!109386 (array_inv!31386 _keys!1741)))

(assert (=> start!109386 tp!101637))

(declare-fun b!1294179 () Bool)

(assert (=> b!1294179 (= e!738553 tp_is_empty!34479)))

(assert (= (and start!109386 res!860142) b!1294182))

(assert (= (and b!1294182 res!860140) b!1294181))

(assert (= (and b!1294181 res!860141) b!1294183))

(assert (= (and b!1294183 res!860135) b!1294175))

(assert (= (and b!1294175 res!860138) b!1294177))

(assert (= (and b!1294177 res!860136) b!1294174))

(assert (= (and b!1294174 res!860137) b!1294176))

(assert (= (and b!1294176 res!860139) b!1294180))

(assert (= (and b!1294178 condMapEmpty!53279) mapIsEmpty!53279))

(assert (= (and b!1294178 (not condMapEmpty!53279)) mapNonEmpty!53279))

(get-info :version)

(assert (= (and mapNonEmpty!53279 ((_ is ValueCellFull!16341) mapValue!53279)) b!1294179))

(assert (= (and b!1294178 ((_ is ValueCellFull!16341) mapDefault!53279)) b!1294184))

(assert (= start!109386 b!1294178))

(declare-fun m!1186469 () Bool)

(assert (=> b!1294176 m!1186469))

(assert (=> b!1294176 m!1186469))

(declare-fun m!1186471 () Bool)

(assert (=> b!1294176 m!1186471))

(declare-fun m!1186473 () Bool)

(assert (=> b!1294177 m!1186473))

(assert (=> b!1294177 m!1186473))

(declare-fun m!1186475 () Bool)

(assert (=> b!1294177 m!1186475))

(declare-fun m!1186477 () Bool)

(assert (=> mapNonEmpty!53279 m!1186477))

(declare-fun m!1186479 () Bool)

(assert (=> start!109386 m!1186479))

(declare-fun m!1186481 () Bool)

(assert (=> start!109386 m!1186481))

(declare-fun m!1186483 () Bool)

(assert (=> start!109386 m!1186483))

(declare-fun m!1186485 () Bool)

(assert (=> b!1294181 m!1186485))

(declare-fun m!1186487 () Bool)

(assert (=> b!1294183 m!1186487))

(declare-fun m!1186489 () Bool)

(assert (=> b!1294180 m!1186489))

(declare-fun m!1186491 () Bool)

(assert (=> b!1294180 m!1186491))

(check-sat (not start!109386) (not b!1294177) b_and!46939 (not b!1294180) (not mapNonEmpty!53279) (not b_next!28839) tp_is_empty!34479 (not b!1294176) (not b!1294181) (not b!1294183))
(check-sat b_and!46939 (not b_next!28839))
