; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108708 () Bool)

(assert start!108708)

(declare-fun b_free!28185 () Bool)

(declare-fun b_next!28185 () Bool)

(assert (=> start!108708 (= b_free!28185 (not b_next!28185))))

(declare-fun tp!99671 () Bool)

(declare-fun b_and!46261 () Bool)

(assert (=> start!108708 (= tp!99671 b_and!46261)))

(declare-fun b!1282674 () Bool)

(declare-fun res!852071 () Bool)

(declare-fun e!732923 () Bool)

(assert (=> b!1282674 (=> (not res!852071) (not e!732923))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!84671 0))(
  ( (array!84672 (arr!40833 (Array (_ BitVec 32) (_ BitVec 64))) (size!41384 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84671)

(assert (=> b!1282674 (= res!852071 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41384 _keys!1741))))))

(declare-fun b!1282675 () Bool)

(declare-fun res!852068 () Bool)

(assert (=> b!1282675 (=> (not res!852068) (not e!732923))))

(declare-datatypes ((List!29107 0))(
  ( (Nil!29104) (Cons!29103 (h!30312 (_ BitVec 64)) (t!42658 List!29107)) )
))
(declare-fun arrayNoDuplicates!0 (array!84671 (_ BitVec 32) List!29107) Bool)

(assert (=> b!1282675 (= res!852068 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29104))))

(declare-fun b!1282676 () Bool)

(declare-fun e!732921 () Bool)

(declare-fun tp_is_empty!33825 () Bool)

(assert (=> b!1282676 (= e!732921 tp_is_empty!33825)))

(declare-fun res!852069 () Bool)

(assert (=> start!108708 (=> (not res!852069) (not e!732923))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108708 (= res!852069 (validMask!0 mask!2175))))

(assert (=> start!108708 e!732923))

(assert (=> start!108708 tp_is_empty!33825))

(assert (=> start!108708 true))

(declare-datatypes ((V!50203 0))(
  ( (V!50204 (val!16987 Int)) )
))
(declare-datatypes ((ValueCell!16014 0))(
  ( (ValueCellFull!16014 (v!19587 V!50203)) (EmptyCell!16014) )
))
(declare-datatypes ((array!84673 0))(
  ( (array!84674 (arr!40834 (Array (_ BitVec 32) ValueCell!16014)) (size!41385 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84673)

(declare-fun e!732922 () Bool)

(declare-fun array_inv!30955 (array!84673) Bool)

(assert (=> start!108708 (and (array_inv!30955 _values!1445) e!732922)))

(declare-fun array_inv!30956 (array!84671) Bool)

(assert (=> start!108708 (array_inv!30956 _keys!1741)))

(assert (=> start!108708 tp!99671))

(declare-fun mapIsEmpty!52295 () Bool)

(declare-fun mapRes!52295 () Bool)

(assert (=> mapIsEmpty!52295 mapRes!52295))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun b!1282677 () Bool)

(assert (=> b!1282677 (= e!732923 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsgt from!2144 (size!41384 _keys!1741))))))

(declare-fun b!1282678 () Bool)

(declare-fun res!852072 () Bool)

(assert (=> b!1282678 (=> (not res!852072) (not e!732923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1282678 (= res!852072 (validKeyInArray!0 (select (arr!40833 _keys!1741) from!2144)))))

(declare-fun b!1282679 () Bool)

(declare-fun res!852075 () Bool)

(assert (=> b!1282679 (=> (not res!852075) (not e!732923))))

(assert (=> b!1282679 (= res!852075 (and (= (size!41385 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41384 _keys!1741) (size!41385 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282680 () Bool)

(declare-fun e!732925 () Bool)

(assert (=> b!1282680 (= e!732922 (and e!732925 mapRes!52295))))

(declare-fun condMapEmpty!52295 () Bool)

(declare-fun mapDefault!52295 () ValueCell!16014)

(assert (=> b!1282680 (= condMapEmpty!52295 (= (arr!40834 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16014)) mapDefault!52295)))))

(declare-fun b!1282681 () Bool)

(assert (=> b!1282681 (= e!732925 tp_is_empty!33825)))

(declare-fun b!1282682 () Bool)

(declare-fun res!852073 () Bool)

(assert (=> b!1282682 (=> (not res!852073) (not e!732923))))

(assert (=> b!1282682 (= res!852073 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41384 _keys!1741))))))

(declare-fun b!1282683 () Bool)

(declare-fun res!852074 () Bool)

(assert (=> b!1282683 (=> (not res!852074) (not e!732923))))

(declare-fun minValue!1387 () V!50203)

(declare-fun zeroValue!1387 () V!50203)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21898 0))(
  ( (tuple2!21899 (_1!10959 (_ BitVec 64)) (_2!10959 V!50203)) )
))
(declare-datatypes ((List!29108 0))(
  ( (Nil!29105) (Cons!29104 (h!30313 tuple2!21898) (t!42659 List!29108)) )
))
(declare-datatypes ((ListLongMap!19567 0))(
  ( (ListLongMap!19568 (toList!9799 List!29108)) )
))
(declare-fun contains!7854 (ListLongMap!19567 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4819 (array!84671 array!84673 (_ BitVec 32) (_ BitVec 32) V!50203 V!50203 (_ BitVec 32) Int) ListLongMap!19567)

(assert (=> b!1282683 (= res!852074 (contains!7854 (getCurrentListMap!4819 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282684 () Bool)

(declare-fun res!852070 () Bool)

(assert (=> b!1282684 (=> (not res!852070) (not e!732923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84671 (_ BitVec 32)) Bool)

(assert (=> b!1282684 (= res!852070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52295 () Bool)

(declare-fun tp!99672 () Bool)

(assert (=> mapNonEmpty!52295 (= mapRes!52295 (and tp!99672 e!732921))))

(declare-fun mapKey!52295 () (_ BitVec 32))

(declare-fun mapValue!52295 () ValueCell!16014)

(declare-fun mapRest!52295 () (Array (_ BitVec 32) ValueCell!16014))

(assert (=> mapNonEmpty!52295 (= (arr!40834 _values!1445) (store mapRest!52295 mapKey!52295 mapValue!52295))))

(assert (= (and start!108708 res!852069) b!1282679))

(assert (= (and b!1282679 res!852075) b!1282684))

(assert (= (and b!1282684 res!852070) b!1282675))

(assert (= (and b!1282675 res!852068) b!1282682))

(assert (= (and b!1282682 res!852073) b!1282683))

(assert (= (and b!1282683 res!852074) b!1282674))

(assert (= (and b!1282674 res!852071) b!1282678))

(assert (= (and b!1282678 res!852072) b!1282677))

(assert (= (and b!1282680 condMapEmpty!52295) mapIsEmpty!52295))

(assert (= (and b!1282680 (not condMapEmpty!52295)) mapNonEmpty!52295))

(get-info :version)

(assert (= (and mapNonEmpty!52295 ((_ is ValueCellFull!16014) mapValue!52295)) b!1282676))

(assert (= (and b!1282680 ((_ is ValueCellFull!16014) mapDefault!52295)) b!1282681))

(assert (= start!108708 b!1282680))

(declare-fun m!1176803 () Bool)

(assert (=> b!1282675 m!1176803))

(declare-fun m!1176805 () Bool)

(assert (=> b!1282684 m!1176805))

(declare-fun m!1176807 () Bool)

(assert (=> start!108708 m!1176807))

(declare-fun m!1176809 () Bool)

(assert (=> start!108708 m!1176809))

(declare-fun m!1176811 () Bool)

(assert (=> start!108708 m!1176811))

(declare-fun m!1176813 () Bool)

(assert (=> b!1282683 m!1176813))

(assert (=> b!1282683 m!1176813))

(declare-fun m!1176815 () Bool)

(assert (=> b!1282683 m!1176815))

(declare-fun m!1176817 () Bool)

(assert (=> b!1282678 m!1176817))

(assert (=> b!1282678 m!1176817))

(declare-fun m!1176819 () Bool)

(assert (=> b!1282678 m!1176819))

(declare-fun m!1176821 () Bool)

(assert (=> mapNonEmpty!52295 m!1176821))

(check-sat (not b_next!28185) (not b!1282678) (not b!1282684) tp_is_empty!33825 (not b!1282683) (not start!108708) (not b!1282675) (not mapNonEmpty!52295) b_and!46261)
(check-sat b_and!46261 (not b_next!28185))
