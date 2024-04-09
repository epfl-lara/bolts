; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108780 () Bool)

(assert start!108780)

(declare-fun b_free!28257 () Bool)

(declare-fun b_next!28257 () Bool)

(assert (=> start!108780 (= b_free!28257 (not b_next!28257))))

(declare-fun tp!99887 () Bool)

(declare-fun b_and!46333 () Bool)

(assert (=> start!108780 (= tp!99887 b_and!46333)))

(declare-fun res!853036 () Bool)

(declare-fun e!733462 () Bool)

(assert (=> start!108780 (=> (not res!853036) (not e!733462))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108780 (= res!853036 (validMask!0 mask!2175))))

(assert (=> start!108780 e!733462))

(declare-fun tp_is_empty!33897 () Bool)

(assert (=> start!108780 tp_is_empty!33897))

(assert (=> start!108780 true))

(declare-datatypes ((V!50299 0))(
  ( (V!50300 (val!17023 Int)) )
))
(declare-datatypes ((ValueCell!16050 0))(
  ( (ValueCellFull!16050 (v!19623 V!50299)) (EmptyCell!16050) )
))
(declare-datatypes ((array!84811 0))(
  ( (array!84812 (arr!40903 (Array (_ BitVec 32) ValueCell!16050)) (size!41454 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84811)

(declare-fun e!733463 () Bool)

(declare-fun array_inv!31007 (array!84811) Bool)

(assert (=> start!108780 (and (array_inv!31007 _values!1445) e!733463)))

(declare-datatypes ((array!84813 0))(
  ( (array!84814 (arr!40904 (Array (_ BitVec 32) (_ BitVec 64))) (size!41455 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84813)

(declare-fun array_inv!31008 (array!84813) Bool)

(assert (=> start!108780 (array_inv!31008 _keys!1741)))

(assert (=> start!108780 tp!99887))

(declare-fun mapNonEmpty!52403 () Bool)

(declare-fun mapRes!52403 () Bool)

(declare-fun tp!99888 () Bool)

(declare-fun e!733461 () Bool)

(assert (=> mapNonEmpty!52403 (= mapRes!52403 (and tp!99888 e!733461))))

(declare-fun mapKey!52403 () (_ BitVec 32))

(declare-fun mapValue!52403 () ValueCell!16050)

(declare-fun mapRest!52403 () (Array (_ BitVec 32) ValueCell!16050))

(assert (=> mapNonEmpty!52403 (= (arr!40903 _values!1445) (store mapRest!52403 mapKey!52403 mapValue!52403))))

(declare-fun b!1283966 () Bool)

(declare-fun e!733465 () Bool)

(assert (=> b!1283966 (= e!733463 (and e!733465 mapRes!52403))))

(declare-fun condMapEmpty!52403 () Bool)

(declare-fun mapDefault!52403 () ValueCell!16050)

(assert (=> b!1283966 (= condMapEmpty!52403 (= (arr!40903 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16050)) mapDefault!52403)))))

(declare-fun b!1283967 () Bool)

(assert (=> b!1283967 (= e!733465 tp_is_empty!33897)))

(declare-fun b!1283968 () Bool)

(declare-fun res!853043 () Bool)

(assert (=> b!1283968 (=> (not res!853043) (not e!733462))))

(declare-fun zeroValue!1387 () V!50299)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!50299)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21948 0))(
  ( (tuple2!21949 (_1!10984 (_ BitVec 64)) (_2!10984 V!50299)) )
))
(declare-datatypes ((List!29155 0))(
  ( (Nil!29152) (Cons!29151 (h!30360 tuple2!21948) (t!42706 List!29155)) )
))
(declare-datatypes ((ListLongMap!19617 0))(
  ( (ListLongMap!19618 (toList!9824 List!29155)) )
))
(declare-fun contains!7879 (ListLongMap!19617 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4842 (array!84813 array!84811 (_ BitVec 32) (_ BitVec 32) V!50299 V!50299 (_ BitVec 32) Int) ListLongMap!19617)

(assert (=> b!1283968 (= res!853043 (contains!7879 (getCurrentListMap!4842 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1283969 () Bool)

(declare-fun res!853041 () Bool)

(assert (=> b!1283969 (=> (not res!853041) (not e!733462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283969 (= res!853041 (validKeyInArray!0 (select (arr!40904 _keys!1741) from!2144)))))

(declare-fun mapIsEmpty!52403 () Bool)

(assert (=> mapIsEmpty!52403 mapRes!52403))

(declare-fun b!1283970 () Bool)

(declare-fun res!853038 () Bool)

(assert (=> b!1283970 (=> (not res!853038) (not e!733462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84813 (_ BitVec 32)) Bool)

(assert (=> b!1283970 (= res!853038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283971 () Bool)

(declare-fun res!853039 () Bool)

(assert (=> b!1283971 (=> (not res!853039) (not e!733462))))

(assert (=> b!1283971 (= res!853039 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41455 _keys!1741))))))

(declare-fun b!1283972 () Bool)

(declare-fun res!853042 () Bool)

(assert (=> b!1283972 (=> (not res!853042) (not e!733462))))

(assert (=> b!1283972 (= res!853042 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283973 () Bool)

(declare-fun res!853040 () Bool)

(assert (=> b!1283973 (=> (not res!853040) (not e!733462))))

(declare-datatypes ((List!29156 0))(
  ( (Nil!29153) (Cons!29152 (h!30361 (_ BitVec 64)) (t!42707 List!29156)) )
))
(declare-fun arrayNoDuplicates!0 (array!84813 (_ BitVec 32) List!29156) Bool)

(assert (=> b!1283973 (= res!853040 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29153))))

(declare-fun b!1283974 () Bool)

(declare-fun res!853037 () Bool)

(assert (=> b!1283974 (=> (not res!853037) (not e!733462))))

(assert (=> b!1283974 (= res!853037 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41455 _keys!1741))))))

(declare-fun b!1283975 () Bool)

(declare-fun res!853044 () Bool)

(assert (=> b!1283975 (=> (not res!853044) (not e!733462))))

(assert (=> b!1283975 (= res!853044 (and (= (size!41454 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41455 _keys!1741) (size!41454 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283976 () Bool)

(assert (=> b!1283976 (= e!733462 (not true))))

(declare-fun lt!576695 () ListLongMap!19617)

(assert (=> b!1283976 (contains!7879 lt!576695 k0!1205)))

(declare-datatypes ((Unit!42435 0))(
  ( (Unit!42436) )
))
(declare-fun lt!576696 () Unit!42435)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!19 ((_ BitVec 64) (_ BitVec 64) V!50299 ListLongMap!19617) Unit!42435)

(assert (=> b!1283976 (= lt!576696 (lemmaInListMapAfterAddingDiffThenInBefore!19 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576695))))

(declare-fun +!4270 (ListLongMap!19617 tuple2!21948) ListLongMap!19617)

(declare-fun getCurrentListMapNoExtraKeys!5981 (array!84813 array!84811 (_ BitVec 32) (_ BitVec 32) V!50299 V!50299 (_ BitVec 32) Int) ListLongMap!19617)

(assert (=> b!1283976 (= lt!576695 (+!4270 (getCurrentListMapNoExtraKeys!5981 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283977 () Bool)

(assert (=> b!1283977 (= e!733461 tp_is_empty!33897)))

(assert (= (and start!108780 res!853036) b!1283975))

(assert (= (and b!1283975 res!853044) b!1283970))

(assert (= (and b!1283970 res!853038) b!1283973))

(assert (= (and b!1283973 res!853040) b!1283971))

(assert (= (and b!1283971 res!853039) b!1283968))

(assert (= (and b!1283968 res!853043) b!1283974))

(assert (= (and b!1283974 res!853037) b!1283969))

(assert (= (and b!1283969 res!853041) b!1283972))

(assert (= (and b!1283972 res!853042) b!1283976))

(assert (= (and b!1283966 condMapEmpty!52403) mapIsEmpty!52403))

(assert (= (and b!1283966 (not condMapEmpty!52403)) mapNonEmpty!52403))

(get-info :version)

(assert (= (and mapNonEmpty!52403 ((_ is ValueCellFull!16050) mapValue!52403)) b!1283977))

(assert (= (and b!1283966 ((_ is ValueCellFull!16050) mapDefault!52403)) b!1283967))

(assert (= start!108780 b!1283966))

(declare-fun m!1177795 () Bool)

(assert (=> b!1283970 m!1177795))

(declare-fun m!1177797 () Bool)

(assert (=> start!108780 m!1177797))

(declare-fun m!1177799 () Bool)

(assert (=> start!108780 m!1177799))

(declare-fun m!1177801 () Bool)

(assert (=> start!108780 m!1177801))

(declare-fun m!1177803 () Bool)

(assert (=> b!1283973 m!1177803))

(declare-fun m!1177805 () Bool)

(assert (=> b!1283969 m!1177805))

(assert (=> b!1283969 m!1177805))

(declare-fun m!1177807 () Bool)

(assert (=> b!1283969 m!1177807))

(declare-fun m!1177809 () Bool)

(assert (=> mapNonEmpty!52403 m!1177809))

(declare-fun m!1177811 () Bool)

(assert (=> b!1283968 m!1177811))

(assert (=> b!1283968 m!1177811))

(declare-fun m!1177813 () Bool)

(assert (=> b!1283968 m!1177813))

(declare-fun m!1177815 () Bool)

(assert (=> b!1283976 m!1177815))

(declare-fun m!1177817 () Bool)

(assert (=> b!1283976 m!1177817))

(declare-fun m!1177819 () Bool)

(assert (=> b!1283976 m!1177819))

(assert (=> b!1283976 m!1177819))

(declare-fun m!1177821 () Bool)

(assert (=> b!1283976 m!1177821))

(check-sat b_and!46333 (not b!1283976) (not start!108780) (not b!1283973) (not b_next!28257) (not mapNonEmpty!52403) tp_is_empty!33897 (not b!1283968) (not b!1283969) (not b!1283970))
(check-sat b_and!46333 (not b_next!28257))
