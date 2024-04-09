; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109044 () Bool)

(assert start!109044)

(declare-fun b_free!28497 () Bool)

(declare-fun b_next!28497 () Bool)

(assert (=> start!109044 (= b_free!28497 (not b_next!28497))))

(declare-fun tp!100611 () Bool)

(declare-fun b_and!46597 () Bool)

(assert (=> start!109044 (= tp!100611 b_and!46597)))

(declare-fun b!1288131 () Bool)

(declare-fun res!855636 () Bool)

(declare-fun e!735586 () Bool)

(assert (=> b!1288131 (=> (not res!855636) (not e!735586))))

(declare-datatypes ((array!85275 0))(
  ( (array!85276 (arr!41134 (Array (_ BitVec 32) (_ BitVec 64))) (size!41685 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85275)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85275 (_ BitVec 32)) Bool)

(assert (=> b!1288131 (= res!855636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52766 () Bool)

(declare-fun mapRes!52766 () Bool)

(assert (=> mapIsEmpty!52766 mapRes!52766))

(declare-fun b!1288132 () Bool)

(declare-fun e!735587 () Bool)

(assert (=> b!1288132 (= e!735587 true)))

(declare-datatypes ((V!50619 0))(
  ( (V!50620 (val!17143 Int)) )
))
(declare-fun minValue!1387 () V!50619)

(declare-fun zeroValue!1387 () V!50619)

(declare-fun lt!577878 () Bool)

(declare-datatypes ((ValueCell!16170 0))(
  ( (ValueCellFull!16170 (v!19744 V!50619)) (EmptyCell!16170) )
))
(declare-datatypes ((array!85277 0))(
  ( (array!85278 (arr!41135 (Array (_ BitVec 32) ValueCell!16170)) (size!41686 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85277)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22140 0))(
  ( (tuple2!22141 (_1!11080 (_ BitVec 64)) (_2!11080 V!50619)) )
))
(declare-datatypes ((List!29339 0))(
  ( (Nil!29336) (Cons!29335 (h!30544 tuple2!22140) (t!42910 List!29339)) )
))
(declare-datatypes ((ListLongMap!19809 0))(
  ( (ListLongMap!19810 (toList!9920 List!29339)) )
))
(declare-fun contains!7976 (ListLongMap!19809 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6009 (array!85275 array!85277 (_ BitVec 32) (_ BitVec 32) V!50619 V!50619 (_ BitVec 32) Int) ListLongMap!19809)

(assert (=> b!1288132 (= lt!577878 (contains!7976 (getCurrentListMapNoExtraKeys!6009 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288133 () Bool)

(declare-fun res!855631 () Bool)

(assert (=> b!1288133 (=> (not res!855631) (not e!735586))))

(declare-datatypes ((List!29340 0))(
  ( (Nil!29337) (Cons!29336 (h!30545 (_ BitVec 64)) (t!42911 List!29340)) )
))
(declare-fun arrayNoDuplicates!0 (array!85275 (_ BitVec 32) List!29340) Bool)

(assert (=> b!1288133 (= res!855631 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29337))))

(declare-fun b!1288134 () Bool)

(declare-fun res!855632 () Bool)

(assert (=> b!1288134 (=> (not res!855632) (not e!735586))))

(declare-fun getCurrentListMap!4924 (array!85275 array!85277 (_ BitVec 32) (_ BitVec 32) V!50619 V!50619 (_ BitVec 32) Int) ListLongMap!19809)

(assert (=> b!1288134 (= res!855632 (contains!7976 (getCurrentListMap!4924 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288135 () Bool)

(declare-fun e!735584 () Bool)

(declare-fun e!735585 () Bool)

(assert (=> b!1288135 (= e!735584 (and e!735585 mapRes!52766))))

(declare-fun condMapEmpty!52766 () Bool)

(declare-fun mapDefault!52766 () ValueCell!16170)

(assert (=> b!1288135 (= condMapEmpty!52766 (= (arr!41135 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16170)) mapDefault!52766)))))

(declare-fun b!1288136 () Bool)

(declare-fun res!855637 () Bool)

(assert (=> b!1288136 (=> (not res!855637) (not e!735586))))

(assert (=> b!1288136 (= res!855637 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41685 _keys!1741))))))

(declare-fun mapNonEmpty!52766 () Bool)

(declare-fun tp!100610 () Bool)

(declare-fun e!735589 () Bool)

(assert (=> mapNonEmpty!52766 (= mapRes!52766 (and tp!100610 e!735589))))

(declare-fun mapValue!52766 () ValueCell!16170)

(declare-fun mapRest!52766 () (Array (_ BitVec 32) ValueCell!16170))

(declare-fun mapKey!52766 () (_ BitVec 32))

(assert (=> mapNonEmpty!52766 (= (arr!41135 _values!1445) (store mapRest!52766 mapKey!52766 mapValue!52766))))

(declare-fun b!1288137 () Bool)

(declare-fun res!855635 () Bool)

(assert (=> b!1288137 (=> (not res!855635) (not e!735586))))

(assert (=> b!1288137 (= res!855635 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41685 _keys!1741))))))

(declare-fun b!1288138 () Bool)

(declare-fun tp_is_empty!34137 () Bool)

(assert (=> b!1288138 (= e!735589 tp_is_empty!34137)))

(declare-fun b!1288139 () Bool)

(assert (=> b!1288139 (= e!735585 tp_is_empty!34137)))

(declare-fun b!1288140 () Bool)

(declare-fun res!855633 () Bool)

(assert (=> b!1288140 (=> (not res!855633) (not e!735586))))

(assert (=> b!1288140 (= res!855633 (and (= (size!41686 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41685 _keys!1741) (size!41686 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288141 () Bool)

(declare-fun res!855639 () Bool)

(assert (=> b!1288141 (=> (not res!855639) (not e!735586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288141 (= res!855639 (not (validKeyInArray!0 (select (arr!41134 _keys!1741) from!2144))))))

(declare-fun res!855634 () Bool)

(assert (=> start!109044 (=> (not res!855634) (not e!735586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109044 (= res!855634 (validMask!0 mask!2175))))

(assert (=> start!109044 e!735586))

(assert (=> start!109044 tp_is_empty!34137))

(assert (=> start!109044 true))

(declare-fun array_inv!31163 (array!85277) Bool)

(assert (=> start!109044 (and (array_inv!31163 _values!1445) e!735584)))

(declare-fun array_inv!31164 (array!85275) Bool)

(assert (=> start!109044 (array_inv!31164 _keys!1741)))

(assert (=> start!109044 tp!100611))

(declare-fun b!1288142 () Bool)

(assert (=> b!1288142 (= e!735586 (not e!735587))))

(declare-fun res!855638 () Bool)

(assert (=> b!1288142 (=> res!855638 e!735587)))

(assert (=> b!1288142 (= res!855638 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288142 (not (contains!7976 (ListLongMap!19810 Nil!29336) k0!1205))))

(declare-datatypes ((Unit!42535 0))(
  ( (Unit!42536) )
))
(declare-fun lt!577879 () Unit!42535)

(declare-fun emptyContainsNothing!35 ((_ BitVec 64)) Unit!42535)

(assert (=> b!1288142 (= lt!577879 (emptyContainsNothing!35 k0!1205))))

(assert (= (and start!109044 res!855634) b!1288140))

(assert (= (and b!1288140 res!855633) b!1288131))

(assert (= (and b!1288131 res!855636) b!1288133))

(assert (= (and b!1288133 res!855631) b!1288137))

(assert (= (and b!1288137 res!855635) b!1288134))

(assert (= (and b!1288134 res!855632) b!1288136))

(assert (= (and b!1288136 res!855637) b!1288141))

(assert (= (and b!1288141 res!855639) b!1288142))

(assert (= (and b!1288142 (not res!855638)) b!1288132))

(assert (= (and b!1288135 condMapEmpty!52766) mapIsEmpty!52766))

(assert (= (and b!1288135 (not condMapEmpty!52766)) mapNonEmpty!52766))

(get-info :version)

(assert (= (and mapNonEmpty!52766 ((_ is ValueCellFull!16170) mapValue!52766)) b!1288138))

(assert (= (and b!1288135 ((_ is ValueCellFull!16170) mapDefault!52766)) b!1288139))

(assert (= start!109044 b!1288135))

(declare-fun m!1180821 () Bool)

(assert (=> b!1288133 m!1180821))

(declare-fun m!1180823 () Bool)

(assert (=> start!109044 m!1180823))

(declare-fun m!1180825 () Bool)

(assert (=> start!109044 m!1180825))

(declare-fun m!1180827 () Bool)

(assert (=> start!109044 m!1180827))

(declare-fun m!1180829 () Bool)

(assert (=> b!1288132 m!1180829))

(assert (=> b!1288132 m!1180829))

(declare-fun m!1180831 () Bool)

(assert (=> b!1288132 m!1180831))

(declare-fun m!1180833 () Bool)

(assert (=> b!1288134 m!1180833))

(assert (=> b!1288134 m!1180833))

(declare-fun m!1180835 () Bool)

(assert (=> b!1288134 m!1180835))

(declare-fun m!1180837 () Bool)

(assert (=> b!1288142 m!1180837))

(declare-fun m!1180839 () Bool)

(assert (=> b!1288142 m!1180839))

(declare-fun m!1180841 () Bool)

(assert (=> b!1288141 m!1180841))

(assert (=> b!1288141 m!1180841))

(declare-fun m!1180843 () Bool)

(assert (=> b!1288141 m!1180843))

(declare-fun m!1180845 () Bool)

(assert (=> b!1288131 m!1180845))

(declare-fun m!1180847 () Bool)

(assert (=> mapNonEmpty!52766 m!1180847))

(check-sat (not b!1288134) b_and!46597 (not b!1288133) (not start!109044) (not b!1288131) tp_is_empty!34137 (not b!1288132) (not b_next!28497) (not mapNonEmpty!52766) (not b!1288141) (not b!1288142))
(check-sat b_and!46597 (not b_next!28497))
