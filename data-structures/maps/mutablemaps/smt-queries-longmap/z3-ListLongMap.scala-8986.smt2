; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108714 () Bool)

(assert start!108714)

(declare-fun b_free!28191 () Bool)

(declare-fun b_next!28191 () Bool)

(assert (=> start!108714 (= b_free!28191 (not b_next!28191))))

(declare-fun tp!99689 () Bool)

(declare-fun b_and!46267 () Bool)

(assert (=> start!108714 (= tp!99689 b_and!46267)))

(declare-fun mapNonEmpty!52304 () Bool)

(declare-fun mapRes!52304 () Bool)

(declare-fun tp!99690 () Bool)

(declare-fun e!732970 () Bool)

(assert (=> mapNonEmpty!52304 (= mapRes!52304 (and tp!99690 e!732970))))

(declare-datatypes ((V!50211 0))(
  ( (V!50212 (val!16990 Int)) )
))
(declare-datatypes ((ValueCell!16017 0))(
  ( (ValueCellFull!16017 (v!19590 V!50211)) (EmptyCell!16017) )
))
(declare-fun mapRest!52304 () (Array (_ BitVec 32) ValueCell!16017))

(declare-fun mapValue!52304 () ValueCell!16017)

(declare-datatypes ((array!84683 0))(
  ( (array!84684 (arr!40839 (Array (_ BitVec 32) ValueCell!16017)) (size!41390 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84683)

(declare-fun mapKey!52304 () (_ BitVec 32))

(assert (=> mapNonEmpty!52304 (= (arr!40839 _values!1445) (store mapRest!52304 mapKey!52304 mapValue!52304))))

(declare-fun b!1282778 () Bool)

(declare-fun res!852153 () Bool)

(declare-fun e!732966 () Bool)

(assert (=> b!1282778 (=> (not res!852153) (not e!732966))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84685 0))(
  ( (array!84686 (arr!40840 (Array (_ BitVec 32) (_ BitVec 64))) (size!41391 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84685)

(assert (=> b!1282778 (= res!852153 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41391 _keys!1741))))))

(declare-fun b!1282779 () Bool)

(declare-fun e!732968 () Bool)

(declare-fun e!732969 () Bool)

(assert (=> b!1282779 (= e!732968 (and e!732969 mapRes!52304))))

(declare-fun condMapEmpty!52304 () Bool)

(declare-fun mapDefault!52304 () ValueCell!16017)

(assert (=> b!1282779 (= condMapEmpty!52304 (= (arr!40839 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16017)) mapDefault!52304)))))

(declare-fun b!1282780 () Bool)

(declare-fun res!852146 () Bool)

(assert (=> b!1282780 (=> (not res!852146) (not e!732966))))

(declare-fun minValue!1387 () V!50211)

(declare-fun zeroValue!1387 () V!50211)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!21902 0))(
  ( (tuple2!21903 (_1!10961 (_ BitVec 64)) (_2!10961 V!50211)) )
))
(declare-datatypes ((List!29111 0))(
  ( (Nil!29108) (Cons!29107 (h!30316 tuple2!21902) (t!42662 List!29111)) )
))
(declare-datatypes ((ListLongMap!19571 0))(
  ( (ListLongMap!19572 (toList!9801 List!29111)) )
))
(declare-fun contains!7856 (ListLongMap!19571 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4821 (array!84685 array!84683 (_ BitVec 32) (_ BitVec 32) V!50211 V!50211 (_ BitVec 32) Int) ListLongMap!19571)

(assert (=> b!1282780 (= res!852146 (contains!7856 (getCurrentListMap!4821 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282781 () Bool)

(declare-fun tp_is_empty!33831 () Bool)

(assert (=> b!1282781 (= e!732970 tp_is_empty!33831)))

(declare-fun res!852151 () Bool)

(assert (=> start!108714 (=> (not res!852151) (not e!732966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108714 (= res!852151 (validMask!0 mask!2175))))

(assert (=> start!108714 e!732966))

(assert (=> start!108714 tp_is_empty!33831))

(assert (=> start!108714 true))

(declare-fun array_inv!30961 (array!84683) Bool)

(assert (=> start!108714 (and (array_inv!30961 _values!1445) e!732968)))

(declare-fun array_inv!30962 (array!84685) Bool)

(assert (=> start!108714 (array_inv!30962 _keys!1741)))

(assert (=> start!108714 tp!99689))

(declare-fun b!1282782 () Bool)

(declare-fun res!852148 () Bool)

(assert (=> b!1282782 (=> (not res!852148) (not e!732966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1282782 (= res!852148 (validKeyInArray!0 (select (arr!40840 _keys!1741) from!2144)))))

(declare-fun b!1282783 () Bool)

(assert (=> b!1282783 (= e!732966 false)))

(declare-fun lt!576510 () Bool)

(declare-fun +!4249 (ListLongMap!19571 tuple2!21902) ListLongMap!19571)

(declare-fun getCurrentListMapNoExtraKeys!5960 (array!84685 array!84683 (_ BitVec 32) (_ BitVec 32) V!50211 V!50211 (_ BitVec 32) Int) ListLongMap!19571)

(assert (=> b!1282783 (= lt!576510 (contains!7856 (+!4249 (+!4249 (getCurrentListMapNoExtraKeys!5960 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21903 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!21903 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun b!1282784 () Bool)

(declare-fun res!852152 () Bool)

(assert (=> b!1282784 (=> (not res!852152) (not e!732966))))

(assert (=> b!1282784 (= res!852152 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1282785 () Bool)

(declare-fun res!852147 () Bool)

(assert (=> b!1282785 (=> (not res!852147) (not e!732966))))

(assert (=> b!1282785 (= res!852147 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41391 _keys!1741))))))

(declare-fun b!1282786 () Bool)

(declare-fun res!852145 () Bool)

(assert (=> b!1282786 (=> (not res!852145) (not e!732966))))

(assert (=> b!1282786 (= res!852145 (and (= (size!41390 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41391 _keys!1741) (size!41390 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282787 () Bool)

(declare-fun res!852150 () Bool)

(assert (=> b!1282787 (=> (not res!852150) (not e!732966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84685 (_ BitVec 32)) Bool)

(assert (=> b!1282787 (= res!852150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282788 () Bool)

(assert (=> b!1282788 (= e!732969 tp_is_empty!33831)))

(declare-fun mapIsEmpty!52304 () Bool)

(assert (=> mapIsEmpty!52304 mapRes!52304))

(declare-fun b!1282789 () Bool)

(declare-fun res!852149 () Bool)

(assert (=> b!1282789 (=> (not res!852149) (not e!732966))))

(declare-datatypes ((List!29112 0))(
  ( (Nil!29109) (Cons!29108 (h!30317 (_ BitVec 64)) (t!42663 List!29112)) )
))
(declare-fun arrayNoDuplicates!0 (array!84685 (_ BitVec 32) List!29112) Bool)

(assert (=> b!1282789 (= res!852149 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29109))))

(assert (= (and start!108714 res!852151) b!1282786))

(assert (= (and b!1282786 res!852145) b!1282787))

(assert (= (and b!1282787 res!852150) b!1282789))

(assert (= (and b!1282789 res!852149) b!1282778))

(assert (= (and b!1282778 res!852153) b!1282780))

(assert (= (and b!1282780 res!852146) b!1282785))

(assert (= (and b!1282785 res!852147) b!1282782))

(assert (= (and b!1282782 res!852148) b!1282784))

(assert (= (and b!1282784 res!852152) b!1282783))

(assert (= (and b!1282779 condMapEmpty!52304) mapIsEmpty!52304))

(assert (= (and b!1282779 (not condMapEmpty!52304)) mapNonEmpty!52304))

(get-info :version)

(assert (= (and mapNonEmpty!52304 ((_ is ValueCellFull!16017) mapValue!52304)) b!1282781))

(assert (= (and b!1282779 ((_ is ValueCellFull!16017) mapDefault!52304)) b!1282788))

(assert (= start!108714 b!1282779))

(declare-fun m!1176871 () Bool)

(assert (=> b!1282789 m!1176871))

(declare-fun m!1176873 () Bool)

(assert (=> b!1282783 m!1176873))

(assert (=> b!1282783 m!1176873))

(declare-fun m!1176875 () Bool)

(assert (=> b!1282783 m!1176875))

(assert (=> b!1282783 m!1176875))

(declare-fun m!1176877 () Bool)

(assert (=> b!1282783 m!1176877))

(assert (=> b!1282783 m!1176877))

(declare-fun m!1176879 () Bool)

(assert (=> b!1282783 m!1176879))

(declare-fun m!1176881 () Bool)

(assert (=> b!1282787 m!1176881))

(declare-fun m!1176883 () Bool)

(assert (=> b!1282782 m!1176883))

(assert (=> b!1282782 m!1176883))

(declare-fun m!1176885 () Bool)

(assert (=> b!1282782 m!1176885))

(declare-fun m!1176887 () Bool)

(assert (=> start!108714 m!1176887))

(declare-fun m!1176889 () Bool)

(assert (=> start!108714 m!1176889))

(declare-fun m!1176891 () Bool)

(assert (=> start!108714 m!1176891))

(declare-fun m!1176893 () Bool)

(assert (=> mapNonEmpty!52304 m!1176893))

(declare-fun m!1176895 () Bool)

(assert (=> b!1282780 m!1176895))

(assert (=> b!1282780 m!1176895))

(declare-fun m!1176897 () Bool)

(assert (=> b!1282780 m!1176897))

(check-sat tp_is_empty!33831 (not b_next!28191) (not mapNonEmpty!52304) (not b!1282787) (not b!1282783) b_and!46267 (not start!108714) (not b!1282782) (not b!1282780) (not b!1282789))
(check-sat b_and!46267 (not b_next!28191))
