; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108768 () Bool)

(assert start!108768)

(declare-fun b_free!28245 () Bool)

(declare-fun b_next!28245 () Bool)

(assert (=> start!108768 (= b_free!28245 (not b_next!28245))))

(declare-fun tp!99851 () Bool)

(declare-fun b_and!46321 () Bool)

(assert (=> start!108768 (= tp!99851 b_and!46321)))

(declare-fun b!1283750 () Bool)

(declare-fun e!733371 () Bool)

(declare-fun e!733375 () Bool)

(declare-fun mapRes!52385 () Bool)

(assert (=> b!1283750 (= e!733371 (and e!733375 mapRes!52385))))

(declare-fun condMapEmpty!52385 () Bool)

(declare-datatypes ((V!50283 0))(
  ( (V!50284 (val!17017 Int)) )
))
(declare-datatypes ((ValueCell!16044 0))(
  ( (ValueCellFull!16044 (v!19617 V!50283)) (EmptyCell!16044) )
))
(declare-datatypes ((array!84787 0))(
  ( (array!84788 (arr!40891 (Array (_ BitVec 32) ValueCell!16044)) (size!41442 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84787)

(declare-fun mapDefault!52385 () ValueCell!16044)

(assert (=> b!1283750 (= condMapEmpty!52385 (= (arr!40891 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16044)) mapDefault!52385)))))

(declare-fun b!1283751 () Bool)

(declare-fun res!852875 () Bool)

(declare-fun e!733372 () Bool)

(assert (=> b!1283751 (=> (not res!852875) (not e!733372))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84789 0))(
  ( (array!84790 (arr!40892 (Array (_ BitVec 32) (_ BitVec 64))) (size!41443 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84789)

(assert (=> b!1283751 (= res!852875 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41443 _keys!1741))))))

(declare-fun b!1283752 () Bool)

(declare-fun e!733374 () Bool)

(declare-fun tp_is_empty!33885 () Bool)

(assert (=> b!1283752 (= e!733374 tp_is_empty!33885)))

(declare-fun mapIsEmpty!52385 () Bool)

(assert (=> mapIsEmpty!52385 mapRes!52385))

(declare-fun b!1283753 () Bool)

(declare-fun res!852874 () Bool)

(assert (=> b!1283753 (=> (not res!852874) (not e!733372))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283753 (= res!852874 (and (= (size!41442 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41443 _keys!1741) (size!41442 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283755 () Bool)

(assert (=> b!1283755 (= e!733372 (not true))))

(declare-datatypes ((tuple2!21938 0))(
  ( (tuple2!21939 (_1!10979 (_ BitVec 64)) (_2!10979 V!50283)) )
))
(declare-datatypes ((List!29146 0))(
  ( (Nil!29143) (Cons!29142 (h!30351 tuple2!21938) (t!42697 List!29146)) )
))
(declare-datatypes ((ListLongMap!19607 0))(
  ( (ListLongMap!19608 (toList!9819 List!29146)) )
))
(declare-fun lt!576659 () ListLongMap!19607)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!7874 (ListLongMap!19607 (_ BitVec 64)) Bool)

(assert (=> b!1283755 (contains!7874 lt!576659 k0!1205)))

(declare-fun minValue!1387 () V!50283)

(declare-datatypes ((Unit!42427 0))(
  ( (Unit!42428) )
))
(declare-fun lt!576660 () Unit!42427)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!15 ((_ BitVec 64) (_ BitVec 64) V!50283 ListLongMap!19607) Unit!42427)

(assert (=> b!1283755 (= lt!576660 (lemmaInListMapAfterAddingDiffThenInBefore!15 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576659))))

(declare-fun zeroValue!1387 () V!50283)

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4266 (ListLongMap!19607 tuple2!21938) ListLongMap!19607)

(declare-fun getCurrentListMapNoExtraKeys!5977 (array!84789 array!84787 (_ BitVec 32) (_ BitVec 32) V!50283 V!50283 (_ BitVec 32) Int) ListLongMap!19607)

(assert (=> b!1283755 (= lt!576659 (+!4266 (getCurrentListMapNoExtraKeys!5977 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21939 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283756 () Bool)

(assert (=> b!1283756 (= e!733375 tp_is_empty!33885)))

(declare-fun b!1283757 () Bool)

(declare-fun res!852881 () Bool)

(assert (=> b!1283757 (=> (not res!852881) (not e!733372))))

(declare-datatypes ((List!29147 0))(
  ( (Nil!29144) (Cons!29143 (h!30352 (_ BitVec 64)) (t!42698 List!29147)) )
))
(declare-fun arrayNoDuplicates!0 (array!84789 (_ BitVec 32) List!29147) Bool)

(assert (=> b!1283757 (= res!852881 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29144))))

(declare-fun b!1283758 () Bool)

(declare-fun res!852879 () Bool)

(assert (=> b!1283758 (=> (not res!852879) (not e!733372))))

(assert (=> b!1283758 (= res!852879 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41443 _keys!1741))))))

(declare-fun b!1283759 () Bool)

(declare-fun res!852878 () Bool)

(assert (=> b!1283759 (=> (not res!852878) (not e!733372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84789 (_ BitVec 32)) Bool)

(assert (=> b!1283759 (= res!852878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283760 () Bool)

(declare-fun res!852880 () Bool)

(assert (=> b!1283760 (=> (not res!852880) (not e!733372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283760 (= res!852880 (validKeyInArray!0 (select (arr!40892 _keys!1741) from!2144)))))

(declare-fun mapNonEmpty!52385 () Bool)

(declare-fun tp!99852 () Bool)

(assert (=> mapNonEmpty!52385 (= mapRes!52385 (and tp!99852 e!733374))))

(declare-fun mapValue!52385 () ValueCell!16044)

(declare-fun mapRest!52385 () (Array (_ BitVec 32) ValueCell!16044))

(declare-fun mapKey!52385 () (_ BitVec 32))

(assert (=> mapNonEmpty!52385 (= (arr!40891 _values!1445) (store mapRest!52385 mapKey!52385 mapValue!52385))))

(declare-fun b!1283761 () Bool)

(declare-fun res!852876 () Bool)

(assert (=> b!1283761 (=> (not res!852876) (not e!733372))))

(declare-fun getCurrentListMap!4837 (array!84789 array!84787 (_ BitVec 32) (_ BitVec 32) V!50283 V!50283 (_ BitVec 32) Int) ListLongMap!19607)

(assert (=> b!1283761 (= res!852876 (contains!7874 (getCurrentListMap!4837 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1283754 () Bool)

(declare-fun res!852882 () Bool)

(assert (=> b!1283754 (=> (not res!852882) (not e!733372))))

(assert (=> b!1283754 (= res!852882 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!852877 () Bool)

(assert (=> start!108768 (=> (not res!852877) (not e!733372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108768 (= res!852877 (validMask!0 mask!2175))))

(assert (=> start!108768 e!733372))

(assert (=> start!108768 tp_is_empty!33885))

(assert (=> start!108768 true))

(declare-fun array_inv!30999 (array!84787) Bool)

(assert (=> start!108768 (and (array_inv!30999 _values!1445) e!733371)))

(declare-fun array_inv!31000 (array!84789) Bool)

(assert (=> start!108768 (array_inv!31000 _keys!1741)))

(assert (=> start!108768 tp!99851))

(assert (= (and start!108768 res!852877) b!1283753))

(assert (= (and b!1283753 res!852874) b!1283759))

(assert (= (and b!1283759 res!852878) b!1283757))

(assert (= (and b!1283757 res!852881) b!1283751))

(assert (= (and b!1283751 res!852875) b!1283761))

(assert (= (and b!1283761 res!852876) b!1283758))

(assert (= (and b!1283758 res!852879) b!1283760))

(assert (= (and b!1283760 res!852880) b!1283754))

(assert (= (and b!1283754 res!852882) b!1283755))

(assert (= (and b!1283750 condMapEmpty!52385) mapIsEmpty!52385))

(assert (= (and b!1283750 (not condMapEmpty!52385)) mapNonEmpty!52385))

(get-info :version)

(assert (= (and mapNonEmpty!52385 ((_ is ValueCellFull!16044) mapValue!52385)) b!1283752))

(assert (= (and b!1283750 ((_ is ValueCellFull!16044) mapDefault!52385)) b!1283756))

(assert (= start!108768 b!1283750))

(declare-fun m!1177627 () Bool)

(assert (=> b!1283759 m!1177627))

(declare-fun m!1177629 () Bool)

(assert (=> b!1283757 m!1177629))

(declare-fun m!1177631 () Bool)

(assert (=> b!1283761 m!1177631))

(assert (=> b!1283761 m!1177631))

(declare-fun m!1177633 () Bool)

(assert (=> b!1283761 m!1177633))

(declare-fun m!1177635 () Bool)

(assert (=> b!1283755 m!1177635))

(declare-fun m!1177637 () Bool)

(assert (=> b!1283755 m!1177637))

(declare-fun m!1177639 () Bool)

(assert (=> b!1283755 m!1177639))

(assert (=> b!1283755 m!1177639))

(declare-fun m!1177641 () Bool)

(assert (=> b!1283755 m!1177641))

(declare-fun m!1177643 () Bool)

(assert (=> mapNonEmpty!52385 m!1177643))

(declare-fun m!1177645 () Bool)

(assert (=> start!108768 m!1177645))

(declare-fun m!1177647 () Bool)

(assert (=> start!108768 m!1177647))

(declare-fun m!1177649 () Bool)

(assert (=> start!108768 m!1177649))

(declare-fun m!1177651 () Bool)

(assert (=> b!1283760 m!1177651))

(assert (=> b!1283760 m!1177651))

(declare-fun m!1177653 () Bool)

(assert (=> b!1283760 m!1177653))

(check-sat (not start!108768) b_and!46321 (not b_next!28245) (not b!1283757) (not b!1283761) (not b!1283759) (not b!1283755) (not b!1283760) (not mapNonEmpty!52385) tp_is_empty!33885)
(check-sat b_and!46321 (not b_next!28245))
