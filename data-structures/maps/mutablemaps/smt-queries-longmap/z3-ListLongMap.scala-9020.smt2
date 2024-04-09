; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108918 () Bool)

(assert start!108918)

(declare-fun b_free!28395 () Bool)

(declare-fun b_next!28395 () Bool)

(assert (=> start!108918 (= b_free!28395 (not b_next!28395))))

(declare-fun tp!100301 () Bool)

(declare-fun b_and!46471 () Bool)

(assert (=> start!108918 (= tp!100301 b_and!46471)))

(declare-fun b!1285856 () Bool)

(declare-fun res!854311 () Bool)

(declare-fun e!734499 () Bool)

(assert (=> b!1285856 (=> (not res!854311) (not e!734499))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285856 (= res!854311 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!52610 () Bool)

(declare-fun mapRes!52610 () Bool)

(assert (=> mapIsEmpty!52610 mapRes!52610))

(declare-fun b!1285857 () Bool)

(declare-fun e!734496 () Bool)

(declare-fun tp_is_empty!34035 () Bool)

(assert (=> b!1285857 (= e!734496 tp_is_empty!34035)))

(declare-fun b!1285858 () Bool)

(declare-fun res!854308 () Bool)

(assert (=> b!1285858 (=> (not res!854308) (not e!734499))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85079 0))(
  ( (array!85080 (arr!41037 (Array (_ BitVec 32) (_ BitVec 64))) (size!41588 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85079)

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1285858 (= res!854308 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41588 _keys!1741))))))

(declare-fun b!1285859 () Bool)

(declare-fun e!734498 () Bool)

(assert (=> b!1285859 (= e!734498 (and e!734496 mapRes!52610))))

(declare-fun condMapEmpty!52610 () Bool)

(declare-datatypes ((V!50483 0))(
  ( (V!50484 (val!17092 Int)) )
))
(declare-datatypes ((ValueCell!16119 0))(
  ( (ValueCellFull!16119 (v!19692 V!50483)) (EmptyCell!16119) )
))
(declare-datatypes ((array!85081 0))(
  ( (array!85082 (arr!41038 (Array (_ BitVec 32) ValueCell!16119)) (size!41589 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85081)

(declare-fun mapDefault!52610 () ValueCell!16119)

(assert (=> b!1285859 (= condMapEmpty!52610 (= (arr!41038 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16119)) mapDefault!52610)))))

(declare-fun b!1285860 () Bool)

(declare-fun res!854310 () Bool)

(assert (=> b!1285860 (=> (not res!854310) (not e!734499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285860 (= res!854310 (validKeyInArray!0 (select (arr!41037 _keys!1741) from!2144)))))

(declare-fun b!1285861 () Bool)

(declare-fun res!854307 () Bool)

(assert (=> b!1285861 (=> (not res!854307) (not e!734499))))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1285861 (= res!854307 (and (= (size!41589 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41588 _keys!1741) (size!41589 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52610 () Bool)

(declare-fun tp!100302 () Bool)

(declare-fun e!734497 () Bool)

(assert (=> mapNonEmpty!52610 (= mapRes!52610 (and tp!100302 e!734497))))

(declare-fun mapKey!52610 () (_ BitVec 32))

(declare-fun mapRest!52610 () (Array (_ BitVec 32) ValueCell!16119))

(declare-fun mapValue!52610 () ValueCell!16119)

(assert (=> mapNonEmpty!52610 (= (arr!41038 _values!1445) (store mapRest!52610 mapKey!52610 mapValue!52610))))

(declare-fun res!854312 () Bool)

(assert (=> start!108918 (=> (not res!854312) (not e!734499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108918 (= res!854312 (validMask!0 mask!2175))))

(assert (=> start!108918 e!734499))

(assert (=> start!108918 tp_is_empty!34035))

(assert (=> start!108918 true))

(declare-fun array_inv!31097 (array!85081) Bool)

(assert (=> start!108918 (and (array_inv!31097 _values!1445) e!734498)))

(declare-fun array_inv!31098 (array!85079) Bool)

(assert (=> start!108918 (array_inv!31098 _keys!1741)))

(assert (=> start!108918 tp!100301))

(declare-fun b!1285862 () Bool)

(declare-fun res!854309 () Bool)

(assert (=> b!1285862 (=> (not res!854309) (not e!734499))))

(declare-fun minValue!1387 () V!50483)

(declare-fun zeroValue!1387 () V!50483)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22046 0))(
  ( (tuple2!22047 (_1!11033 (_ BitVec 64)) (_2!11033 V!50483)) )
))
(declare-datatypes ((List!29256 0))(
  ( (Nil!29253) (Cons!29252 (h!30461 tuple2!22046) (t!42807 List!29256)) )
))
(declare-datatypes ((ListLongMap!19715 0))(
  ( (ListLongMap!19716 (toList!9873 List!29256)) )
))
(declare-fun contains!7928 (ListLongMap!19715 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4889 (array!85079 array!85081 (_ BitVec 32) (_ BitVec 32) V!50483 V!50483 (_ BitVec 32) Int) ListLongMap!19715)

(assert (=> b!1285862 (= res!854309 (contains!7928 (getCurrentListMap!4889 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285863 () Bool)

(declare-fun res!854313 () Bool)

(assert (=> b!1285863 (=> (not res!854313) (not e!734499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85079 (_ BitVec 32)) Bool)

(assert (=> b!1285863 (= res!854313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285864 () Bool)

(declare-fun res!854306 () Bool)

(assert (=> b!1285864 (=> (not res!854306) (not e!734499))))

(declare-datatypes ((List!29257 0))(
  ( (Nil!29254) (Cons!29253 (h!30462 (_ BitVec 64)) (t!42808 List!29257)) )
))
(declare-fun arrayNoDuplicates!0 (array!85079 (_ BitVec 32) List!29257) Bool)

(assert (=> b!1285864 (= res!854306 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29254))))

(declare-fun b!1285865 () Bool)

(assert (=> b!1285865 (= e!734499 false)))

(declare-fun lt!576897 () Bool)

(declare-fun +!4282 (ListLongMap!19715 tuple2!22046) ListLongMap!19715)

(declare-fun getCurrentListMapNoExtraKeys!5993 (array!85079 array!85081 (_ BitVec 32) (_ BitVec 32) V!50483 V!50483 (_ BitVec 32) Int) ListLongMap!19715)

(assert (=> b!1285865 (= lt!576897 (contains!7928 (+!4282 (getCurrentListMapNoExtraKeys!5993 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22047 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun b!1285866 () Bool)

(declare-fun res!854305 () Bool)

(assert (=> b!1285866 (=> (not res!854305) (not e!734499))))

(assert (=> b!1285866 (= res!854305 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41588 _keys!1741))))))

(declare-fun b!1285867 () Bool)

(assert (=> b!1285867 (= e!734497 tp_is_empty!34035)))

(assert (= (and start!108918 res!854312) b!1285861))

(assert (= (and b!1285861 res!854307) b!1285863))

(assert (= (and b!1285863 res!854313) b!1285864))

(assert (= (and b!1285864 res!854306) b!1285866))

(assert (= (and b!1285866 res!854305) b!1285862))

(assert (= (and b!1285862 res!854309) b!1285858))

(assert (= (and b!1285858 res!854308) b!1285860))

(assert (= (and b!1285860 res!854310) b!1285856))

(assert (= (and b!1285856 res!854311) b!1285865))

(assert (= (and b!1285859 condMapEmpty!52610) mapIsEmpty!52610))

(assert (= (and b!1285859 (not condMapEmpty!52610)) mapNonEmpty!52610))

(get-info :version)

(assert (= (and mapNonEmpty!52610 ((_ is ValueCellFull!16119) mapValue!52610)) b!1285867))

(assert (= (and b!1285859 ((_ is ValueCellFull!16119) mapDefault!52610)) b!1285857))

(assert (= start!108918 b!1285859))

(declare-fun m!1179083 () Bool)

(assert (=> b!1285864 m!1179083))

(declare-fun m!1179085 () Bool)

(assert (=> b!1285865 m!1179085))

(assert (=> b!1285865 m!1179085))

(declare-fun m!1179087 () Bool)

(assert (=> b!1285865 m!1179087))

(assert (=> b!1285865 m!1179087))

(declare-fun m!1179089 () Bool)

(assert (=> b!1285865 m!1179089))

(declare-fun m!1179091 () Bool)

(assert (=> b!1285862 m!1179091))

(assert (=> b!1285862 m!1179091))

(declare-fun m!1179093 () Bool)

(assert (=> b!1285862 m!1179093))

(declare-fun m!1179095 () Bool)

(assert (=> start!108918 m!1179095))

(declare-fun m!1179097 () Bool)

(assert (=> start!108918 m!1179097))

(declare-fun m!1179099 () Bool)

(assert (=> start!108918 m!1179099))

(declare-fun m!1179101 () Bool)

(assert (=> b!1285863 m!1179101))

(declare-fun m!1179103 () Bool)

(assert (=> mapNonEmpty!52610 m!1179103))

(declare-fun m!1179105 () Bool)

(assert (=> b!1285860 m!1179105))

(assert (=> b!1285860 m!1179105))

(declare-fun m!1179107 () Bool)

(assert (=> b!1285860 m!1179107))

(check-sat (not b!1285863) (not b!1285860) (not b!1285865) b_and!46471 (not b!1285862) (not mapNonEmpty!52610) (not b!1285864) tp_is_empty!34035 (not start!108918) (not b_next!28395))
(check-sat b_and!46471 (not b_next!28395))
