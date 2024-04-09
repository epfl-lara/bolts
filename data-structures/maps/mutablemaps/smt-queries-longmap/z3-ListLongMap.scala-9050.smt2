; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109122 () Bool)

(assert start!109122)

(declare-fun b_free!28575 () Bool)

(declare-fun b_next!28575 () Bool)

(assert (=> start!109122 (= b_free!28575 (not b_next!28575))))

(declare-fun tp!100844 () Bool)

(declare-fun b_and!46675 () Bool)

(assert (=> start!109122 (= tp!100844 b_and!46675)))

(declare-fun b!1289535 () Bool)

(declare-fun e!736286 () Bool)

(declare-fun e!736288 () Bool)

(declare-fun mapRes!52883 () Bool)

(assert (=> b!1289535 (= e!736286 (and e!736288 mapRes!52883))))

(declare-fun condMapEmpty!52883 () Bool)

(declare-datatypes ((V!50723 0))(
  ( (V!50724 (val!17182 Int)) )
))
(declare-datatypes ((ValueCell!16209 0))(
  ( (ValueCellFull!16209 (v!19783 V!50723)) (EmptyCell!16209) )
))
(declare-datatypes ((array!85429 0))(
  ( (array!85430 (arr!41211 (Array (_ BitVec 32) ValueCell!16209)) (size!41762 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85429)

(declare-fun mapDefault!52883 () ValueCell!16209)

(assert (=> b!1289535 (= condMapEmpty!52883 (= (arr!41211 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16209)) mapDefault!52883)))))

(declare-fun b!1289536 () Bool)

(declare-fun e!736291 () Bool)

(declare-fun tp_is_empty!34215 () Bool)

(assert (=> b!1289536 (= e!736291 tp_is_empty!34215)))

(declare-fun b!1289537 () Bool)

(assert (=> b!1289537 (= e!736288 tp_is_empty!34215)))

(declare-fun b!1289538 () Bool)

(declare-fun res!856689 () Bool)

(declare-fun e!736289 () Bool)

(assert (=> b!1289538 (=> (not res!856689) (not e!736289))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85431 0))(
  ( (array!85432 (arr!41212 (Array (_ BitVec 32) (_ BitVec 64))) (size!41763 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85431)

(assert (=> b!1289538 (= res!856689 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41763 _keys!1741))))))

(declare-fun res!856690 () Bool)

(assert (=> start!109122 (=> (not res!856690) (not e!736289))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109122 (= res!856690 (validMask!0 mask!2175))))

(assert (=> start!109122 e!736289))

(assert (=> start!109122 tp_is_empty!34215))

(assert (=> start!109122 true))

(declare-fun array_inv!31215 (array!85429) Bool)

(assert (=> start!109122 (and (array_inv!31215 _values!1445) e!736286)))

(declare-fun array_inv!31216 (array!85431) Bool)

(assert (=> start!109122 (array_inv!31216 _keys!1741)))

(assert (=> start!109122 tp!100844))

(declare-fun mapNonEmpty!52883 () Bool)

(declare-fun tp!100845 () Bool)

(assert (=> mapNonEmpty!52883 (= mapRes!52883 (and tp!100845 e!736291))))

(declare-fun mapKey!52883 () (_ BitVec 32))

(declare-fun mapRest!52883 () (Array (_ BitVec 32) ValueCell!16209))

(declare-fun mapValue!52883 () ValueCell!16209)

(assert (=> mapNonEmpty!52883 (= (arr!41211 _values!1445) (store mapRest!52883 mapKey!52883 mapValue!52883))))

(declare-fun b!1289539 () Bool)

(declare-fun res!856688 () Bool)

(assert (=> b!1289539 (=> (not res!856688) (not e!736289))))

(assert (=> b!1289539 (= res!856688 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41763 _keys!1741))))))

(declare-fun mapIsEmpty!52883 () Bool)

(assert (=> mapIsEmpty!52883 mapRes!52883))

(declare-fun b!1289540 () Bool)

(declare-fun res!856684 () Bool)

(assert (=> b!1289540 (=> (not res!856684) (not e!736289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85431 (_ BitVec 32)) Bool)

(assert (=> b!1289540 (= res!856684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289541 () Bool)

(declare-fun res!856686 () Bool)

(assert (=> b!1289541 (=> (not res!856686) (not e!736289))))

(declare-fun minValue!1387 () V!50723)

(declare-fun zeroValue!1387 () V!50723)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22204 0))(
  ( (tuple2!22205 (_1!11112 (_ BitVec 64)) (_2!11112 V!50723)) )
))
(declare-datatypes ((List!29404 0))(
  ( (Nil!29401) (Cons!29400 (h!30609 tuple2!22204) (t!42975 List!29404)) )
))
(declare-datatypes ((ListLongMap!19873 0))(
  ( (ListLongMap!19874 (toList!9952 List!29404)) )
))
(declare-fun contains!8008 (ListLongMap!19873 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4954 (array!85431 array!85429 (_ BitVec 32) (_ BitVec 32) V!50723 V!50723 (_ BitVec 32) Int) ListLongMap!19873)

(assert (=> b!1289541 (= res!856686 (contains!8008 (getCurrentListMap!4954 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289542 () Bool)

(declare-fun e!736290 () Bool)

(assert (=> b!1289542 (= e!736289 (not e!736290))))

(declare-fun res!856691 () Bool)

(assert (=> b!1289542 (=> res!856691 e!736290)))

(assert (=> b!1289542 (= res!856691 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289542 (not (contains!8008 (ListLongMap!19874 Nil!29401) k0!1205))))

(declare-datatypes ((Unit!42599 0))(
  ( (Unit!42600) )
))
(declare-fun lt!578259 () Unit!42599)

(declare-fun emptyContainsNothing!63 ((_ BitVec 64)) Unit!42599)

(assert (=> b!1289542 (= lt!578259 (emptyContainsNothing!63 k0!1205))))

(declare-fun b!1289543 () Bool)

(declare-fun res!856692 () Bool)

(assert (=> b!1289543 (=> (not res!856692) (not e!736289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289543 (= res!856692 (not (validKeyInArray!0 (select (arr!41212 _keys!1741) from!2144))))))

(declare-fun b!1289544 () Bool)

(assert (=> b!1289544 (= e!736290 true)))

(declare-fun lt!578260 () ListLongMap!19873)

(declare-fun +!4324 (ListLongMap!19873 tuple2!22204) ListLongMap!19873)

(assert (=> b!1289544 (not (contains!8008 (+!4324 lt!578260 (tuple2!22205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578258 () Unit!42599)

(declare-fun addStillNotContains!369 (ListLongMap!19873 (_ BitVec 64) V!50723 (_ BitVec 64)) Unit!42599)

(assert (=> b!1289544 (= lt!578258 (addStillNotContains!369 lt!578260 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1289544 (not (contains!8008 (+!4324 lt!578260 (tuple2!22205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578257 () Unit!42599)

(assert (=> b!1289544 (= lt!578257 (addStillNotContains!369 lt!578260 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6036 (array!85431 array!85429 (_ BitVec 32) (_ BitVec 32) V!50723 V!50723 (_ BitVec 32) Int) ListLongMap!19873)

(assert (=> b!1289544 (= lt!578260 (getCurrentListMapNoExtraKeys!6036 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289545 () Bool)

(declare-fun res!856687 () Bool)

(assert (=> b!1289545 (=> (not res!856687) (not e!736289))))

(assert (=> b!1289545 (= res!856687 (and (= (size!41762 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41763 _keys!1741) (size!41762 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289546 () Bool)

(declare-fun res!856685 () Bool)

(assert (=> b!1289546 (=> (not res!856685) (not e!736289))))

(declare-datatypes ((List!29405 0))(
  ( (Nil!29402) (Cons!29401 (h!30610 (_ BitVec 64)) (t!42976 List!29405)) )
))
(declare-fun arrayNoDuplicates!0 (array!85431 (_ BitVec 32) List!29405) Bool)

(assert (=> b!1289546 (= res!856685 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29402))))

(assert (= (and start!109122 res!856690) b!1289545))

(assert (= (and b!1289545 res!856687) b!1289540))

(assert (= (and b!1289540 res!856684) b!1289546))

(assert (= (and b!1289546 res!856685) b!1289539))

(assert (= (and b!1289539 res!856688) b!1289541))

(assert (= (and b!1289541 res!856686) b!1289538))

(assert (= (and b!1289538 res!856689) b!1289543))

(assert (= (and b!1289543 res!856692) b!1289542))

(assert (= (and b!1289542 (not res!856691)) b!1289544))

(assert (= (and b!1289535 condMapEmpty!52883) mapIsEmpty!52883))

(assert (= (and b!1289535 (not condMapEmpty!52883)) mapNonEmpty!52883))

(get-info :version)

(assert (= (and mapNonEmpty!52883 ((_ is ValueCellFull!16209) mapValue!52883)) b!1289536))

(assert (= (and b!1289535 ((_ is ValueCellFull!16209) mapDefault!52883)) b!1289537))

(assert (= start!109122 b!1289535))

(declare-fun m!1182109 () Bool)

(assert (=> b!1289546 m!1182109))

(declare-fun m!1182111 () Bool)

(assert (=> start!109122 m!1182111))

(declare-fun m!1182113 () Bool)

(assert (=> start!109122 m!1182113))

(declare-fun m!1182115 () Bool)

(assert (=> start!109122 m!1182115))

(declare-fun m!1182117 () Bool)

(assert (=> b!1289541 m!1182117))

(assert (=> b!1289541 m!1182117))

(declare-fun m!1182119 () Bool)

(assert (=> b!1289541 m!1182119))

(declare-fun m!1182121 () Bool)

(assert (=> b!1289540 m!1182121))

(declare-fun m!1182123 () Bool)

(assert (=> b!1289543 m!1182123))

(assert (=> b!1289543 m!1182123))

(declare-fun m!1182125 () Bool)

(assert (=> b!1289543 m!1182125))

(declare-fun m!1182127 () Bool)

(assert (=> mapNonEmpty!52883 m!1182127))

(declare-fun m!1182129 () Bool)

(assert (=> b!1289544 m!1182129))

(declare-fun m!1182131 () Bool)

(assert (=> b!1289544 m!1182131))

(assert (=> b!1289544 m!1182129))

(declare-fun m!1182133 () Bool)

(assert (=> b!1289544 m!1182133))

(declare-fun m!1182135 () Bool)

(assert (=> b!1289544 m!1182135))

(declare-fun m!1182137 () Bool)

(assert (=> b!1289544 m!1182137))

(declare-fun m!1182139 () Bool)

(assert (=> b!1289544 m!1182139))

(assert (=> b!1289544 m!1182135))

(declare-fun m!1182141 () Bool)

(assert (=> b!1289544 m!1182141))

(declare-fun m!1182143 () Bool)

(assert (=> b!1289542 m!1182143))

(declare-fun m!1182145 () Bool)

(assert (=> b!1289542 m!1182145))

(check-sat (not b!1289540) (not b!1289544) (not b!1289542) b_and!46675 (not b!1289546) tp_is_empty!34215 (not mapNonEmpty!52883) (not b!1289541) (not start!109122) (not b!1289543) (not b_next!28575))
(check-sat b_and!46675 (not b_next!28575))
