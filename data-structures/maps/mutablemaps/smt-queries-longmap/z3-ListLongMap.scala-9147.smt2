; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109760 () Bool)

(assert start!109760)

(declare-fun b_free!29157 () Bool)

(declare-fun b_next!29157 () Bool)

(assert (=> start!109760 (= b_free!29157 (not b_next!29157))))

(declare-fun tp!102599 () Bool)

(declare-fun b_and!47269 () Bool)

(assert (=> start!109760 (= tp!102599 b_and!47269)))

(declare-fun b!1299574 () Bool)

(declare-fun res!863704 () Bool)

(declare-fun e!741408 () Bool)

(assert (=> b!1299574 (=> (not res!863704) (not e!741408))))

(declare-datatypes ((array!86567 0))(
  ( (array!86568 (arr!41777 (Array (_ BitVec 32) (_ BitVec 64))) (size!42328 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86567)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299574 (= res!863704 (validKeyInArray!0 (select (arr!41777 _keys!1741) from!2144)))))

(declare-fun b!1299575 () Bool)

(assert (=> b!1299575 (= e!741408 (not true))))

(declare-datatypes ((V!51499 0))(
  ( (V!51500 (val!17473 Int)) )
))
(declare-datatypes ((tuple2!22684 0))(
  ( (tuple2!22685 (_1!11352 (_ BitVec 64)) (_2!11352 V!51499)) )
))
(declare-datatypes ((List!29843 0))(
  ( (Nil!29840) (Cons!29839 (h!31048 tuple2!22684) (t!43420 List!29843)) )
))
(declare-datatypes ((ListLongMap!20353 0))(
  ( (ListLongMap!20354 (toList!10192 List!29843)) )
))
(declare-fun lt!581048 () ListLongMap!20353)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8250 (ListLongMap!20353 (_ BitVec 64)) Bool)

(assert (=> b!1299575 (contains!8250 lt!581048 k0!1205)))

(declare-fun minValue!1387 () V!51499)

(declare-datatypes ((Unit!42971 0))(
  ( (Unit!42972) )
))
(declare-fun lt!581047 () Unit!42971)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!67 ((_ BitVec 64) (_ BitVec 64) V!51499 ListLongMap!20353) Unit!42971)

(assert (=> b!1299575 (= lt!581047 (lemmaInListMapAfterAddingDiffThenInBefore!67 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!581048))))

(declare-fun zeroValue!1387 () V!51499)

(declare-datatypes ((ValueCell!16500 0))(
  ( (ValueCellFull!16500 (v!20077 V!51499)) (EmptyCell!16500) )
))
(declare-datatypes ((array!86569 0))(
  ( (array!86570 (arr!41778 (Array (_ BitVec 32) ValueCell!16500)) (size!42329 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86569)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun +!4423 (ListLongMap!20353 tuple2!22684) ListLongMap!20353)

(declare-fun getCurrentListMapNoExtraKeys!6136 (array!86567 array!86569 (_ BitVec 32) (_ BitVec 32) V!51499 V!51499 (_ BitVec 32) Int) ListLongMap!20353)

(assert (=> b!1299575 (= lt!581048 (+!4423 (getCurrentListMapNoExtraKeys!6136 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1299576 () Bool)

(declare-fun res!863711 () Bool)

(assert (=> b!1299576 (=> (not res!863711) (not e!741408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86567 (_ BitVec 32)) Bool)

(assert (=> b!1299576 (= res!863711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53765 () Bool)

(declare-fun mapRes!53765 () Bool)

(declare-fun tp!102600 () Bool)

(declare-fun e!741411 () Bool)

(assert (=> mapNonEmpty!53765 (= mapRes!53765 (and tp!102600 e!741411))))

(declare-fun mapKey!53765 () (_ BitVec 32))

(declare-fun mapValue!53765 () ValueCell!16500)

(declare-fun mapRest!53765 () (Array (_ BitVec 32) ValueCell!16500))

(assert (=> mapNonEmpty!53765 (= (arr!41778 _values!1445) (store mapRest!53765 mapKey!53765 mapValue!53765))))

(declare-fun b!1299577 () Bool)

(declare-fun tp_is_empty!34797 () Bool)

(assert (=> b!1299577 (= e!741411 tp_is_empty!34797)))

(declare-fun res!863708 () Bool)

(assert (=> start!109760 (=> (not res!863708) (not e!741408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109760 (= res!863708 (validMask!0 mask!2175))))

(assert (=> start!109760 e!741408))

(assert (=> start!109760 tp_is_empty!34797))

(assert (=> start!109760 true))

(declare-fun e!741407 () Bool)

(declare-fun array_inv!31609 (array!86569) Bool)

(assert (=> start!109760 (and (array_inv!31609 _values!1445) e!741407)))

(declare-fun array_inv!31610 (array!86567) Bool)

(assert (=> start!109760 (array_inv!31610 _keys!1741)))

(assert (=> start!109760 tp!102599))

(declare-fun b!1299578 () Bool)

(declare-fun res!863707 () Bool)

(assert (=> b!1299578 (=> (not res!863707) (not e!741408))))

(assert (=> b!1299578 (= res!863707 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42328 _keys!1741))))))

(declare-fun b!1299579 () Bool)

(declare-fun res!863705 () Bool)

(assert (=> b!1299579 (=> (not res!863705) (not e!741408))))

(declare-fun getCurrentListMap!5166 (array!86567 array!86569 (_ BitVec 32) (_ BitVec 32) V!51499 V!51499 (_ BitVec 32) Int) ListLongMap!20353)

(assert (=> b!1299579 (= res!863705 (contains!8250 (getCurrentListMap!5166 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1299580 () Bool)

(declare-fun res!863706 () Bool)

(assert (=> b!1299580 (=> (not res!863706) (not e!741408))))

(assert (=> b!1299580 (= res!863706 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1299581 () Bool)

(declare-fun e!741410 () Bool)

(assert (=> b!1299581 (= e!741410 tp_is_empty!34797)))

(declare-fun mapIsEmpty!53765 () Bool)

(assert (=> mapIsEmpty!53765 mapRes!53765))

(declare-fun b!1299582 () Bool)

(declare-fun res!863710 () Bool)

(assert (=> b!1299582 (=> (not res!863710) (not e!741408))))

(declare-datatypes ((List!29844 0))(
  ( (Nil!29841) (Cons!29840 (h!31049 (_ BitVec 64)) (t!43421 List!29844)) )
))
(declare-fun arrayNoDuplicates!0 (array!86567 (_ BitVec 32) List!29844) Bool)

(assert (=> b!1299582 (= res!863710 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29841))))

(declare-fun b!1299583 () Bool)

(assert (=> b!1299583 (= e!741407 (and e!741410 mapRes!53765))))

(declare-fun condMapEmpty!53765 () Bool)

(declare-fun mapDefault!53765 () ValueCell!16500)

(assert (=> b!1299583 (= condMapEmpty!53765 (= (arr!41778 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16500)) mapDefault!53765)))))

(declare-fun b!1299584 () Bool)

(declare-fun res!863712 () Bool)

(assert (=> b!1299584 (=> (not res!863712) (not e!741408))))

(assert (=> b!1299584 (= res!863712 (and (= (size!42329 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42328 _keys!1741) (size!42329 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299585 () Bool)

(declare-fun res!863709 () Bool)

(assert (=> b!1299585 (=> (not res!863709) (not e!741408))))

(assert (=> b!1299585 (= res!863709 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42328 _keys!1741))))))

(assert (= (and start!109760 res!863708) b!1299584))

(assert (= (and b!1299584 res!863712) b!1299576))

(assert (= (and b!1299576 res!863711) b!1299582))

(assert (= (and b!1299582 res!863710) b!1299585))

(assert (= (and b!1299585 res!863709) b!1299579))

(assert (= (and b!1299579 res!863705) b!1299578))

(assert (= (and b!1299578 res!863707) b!1299574))

(assert (= (and b!1299574 res!863704) b!1299580))

(assert (= (and b!1299580 res!863706) b!1299575))

(assert (= (and b!1299583 condMapEmpty!53765) mapIsEmpty!53765))

(assert (= (and b!1299583 (not condMapEmpty!53765)) mapNonEmpty!53765))

(get-info :version)

(assert (= (and mapNonEmpty!53765 ((_ is ValueCellFull!16500) mapValue!53765)) b!1299577))

(assert (= (and b!1299583 ((_ is ValueCellFull!16500) mapDefault!53765)) b!1299581))

(assert (= start!109760 b!1299583))

(declare-fun m!1190739 () Bool)

(assert (=> b!1299576 m!1190739))

(declare-fun m!1190741 () Bool)

(assert (=> b!1299579 m!1190741))

(assert (=> b!1299579 m!1190741))

(declare-fun m!1190743 () Bool)

(assert (=> b!1299579 m!1190743))

(declare-fun m!1190745 () Bool)

(assert (=> start!109760 m!1190745))

(declare-fun m!1190747 () Bool)

(assert (=> start!109760 m!1190747))

(declare-fun m!1190749 () Bool)

(assert (=> start!109760 m!1190749))

(declare-fun m!1190751 () Bool)

(assert (=> b!1299582 m!1190751))

(declare-fun m!1190753 () Bool)

(assert (=> b!1299574 m!1190753))

(assert (=> b!1299574 m!1190753))

(declare-fun m!1190755 () Bool)

(assert (=> b!1299574 m!1190755))

(declare-fun m!1190757 () Bool)

(assert (=> mapNonEmpty!53765 m!1190757))

(declare-fun m!1190759 () Bool)

(assert (=> b!1299575 m!1190759))

(declare-fun m!1190761 () Bool)

(assert (=> b!1299575 m!1190761))

(declare-fun m!1190763 () Bool)

(assert (=> b!1299575 m!1190763))

(assert (=> b!1299575 m!1190763))

(declare-fun m!1190765 () Bool)

(assert (=> b!1299575 m!1190765))

(check-sat (not b!1299576) (not b!1299582) (not b!1299575) tp_is_empty!34797 (not start!109760) (not b!1299579) (not mapNonEmpty!53765) b_and!47269 (not b!1299574) (not b_next!29157))
(check-sat b_and!47269 (not b_next!29157))
