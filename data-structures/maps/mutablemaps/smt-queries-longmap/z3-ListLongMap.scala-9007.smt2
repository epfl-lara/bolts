; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108840 () Bool)

(assert start!108840)

(declare-fun b_free!28317 () Bool)

(declare-fun b_next!28317 () Bool)

(assert (=> start!108840 (= b_free!28317 (not b_next!28317))))

(declare-fun tp!100067 () Bool)

(declare-fun b_and!46393 () Bool)

(assert (=> start!108840 (= tp!100067 b_and!46393)))

(declare-fun b!1284753 () Bool)

(declare-fun e!733915 () Bool)

(declare-fun tp_is_empty!33957 () Bool)

(assert (=> b!1284753 (= e!733915 tp_is_empty!33957)))

(declare-fun b!1284754 () Bool)

(declare-fun res!853555 () Bool)

(declare-fun e!733914 () Bool)

(assert (=> b!1284754 (=> (not res!853555) (not e!733914))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50379 0))(
  ( (V!50380 (val!17053 Int)) )
))
(declare-datatypes ((ValueCell!16080 0))(
  ( (ValueCellFull!16080 (v!19653 V!50379)) (EmptyCell!16080) )
))
(declare-datatypes ((array!84929 0))(
  ( (array!84930 (arr!40962 (Array (_ BitVec 32) ValueCell!16080)) (size!41513 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84929)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84931 0))(
  ( (array!84932 (arr!40963 (Array (_ BitVec 32) (_ BitVec 64))) (size!41514 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84931)

(assert (=> b!1284754 (= res!853555 (and (= (size!41513 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41514 _keys!1741) (size!41513 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52493 () Bool)

(declare-fun mapRes!52493 () Bool)

(declare-fun tp!100068 () Bool)

(declare-fun e!733912 () Bool)

(assert (=> mapNonEmpty!52493 (= mapRes!52493 (and tp!100068 e!733912))))

(declare-fun mapValue!52493 () ValueCell!16080)

(declare-fun mapRest!52493 () (Array (_ BitVec 32) ValueCell!16080))

(declare-fun mapKey!52493 () (_ BitVec 32))

(assert (=> mapNonEmpty!52493 (= (arr!40962 _values!1445) (store mapRest!52493 mapKey!52493 mapValue!52493))))

(declare-fun mapIsEmpty!52493 () Bool)

(assert (=> mapIsEmpty!52493 mapRes!52493))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun b!1284755 () Bool)

(assert (=> b!1284755 (= e!733914 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsgt from!2144 (size!41514 _keys!1741))))))

(declare-fun b!1284756 () Bool)

(declare-fun res!853560 () Bool)

(assert (=> b!1284756 (=> (not res!853560) (not e!733914))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1284756 (= res!853560 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41514 _keys!1741))))))

(declare-fun b!1284757 () Bool)

(declare-fun res!853559 () Bool)

(assert (=> b!1284757 (=> (not res!853559) (not e!733914))))

(assert (=> b!1284757 (= res!853559 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41514 _keys!1741))))))

(declare-fun res!853554 () Bool)

(assert (=> start!108840 (=> (not res!853554) (not e!733914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108840 (= res!853554 (validMask!0 mask!2175))))

(assert (=> start!108840 e!733914))

(assert (=> start!108840 tp_is_empty!33957))

(assert (=> start!108840 true))

(declare-fun e!733911 () Bool)

(declare-fun array_inv!31047 (array!84929) Bool)

(assert (=> start!108840 (and (array_inv!31047 _values!1445) e!733911)))

(declare-fun array_inv!31048 (array!84931) Bool)

(assert (=> start!108840 (array_inv!31048 _keys!1741)))

(assert (=> start!108840 tp!100067))

(declare-fun b!1284758 () Bool)

(declare-fun res!853557 () Bool)

(assert (=> b!1284758 (=> (not res!853557) (not e!733914))))

(declare-fun minValue!1387 () V!50379)

(declare-fun zeroValue!1387 () V!50379)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21986 0))(
  ( (tuple2!21987 (_1!11003 (_ BitVec 64)) (_2!11003 V!50379)) )
))
(declare-datatypes ((List!29199 0))(
  ( (Nil!29196) (Cons!29195 (h!30404 tuple2!21986) (t!42750 List!29199)) )
))
(declare-datatypes ((ListLongMap!19655 0))(
  ( (ListLongMap!19656 (toList!9843 List!29199)) )
))
(declare-fun contains!7898 (ListLongMap!19655 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4861 (array!84931 array!84929 (_ BitVec 32) (_ BitVec 32) V!50379 V!50379 (_ BitVec 32) Int) ListLongMap!19655)

(assert (=> b!1284758 (= res!853557 (contains!7898 (getCurrentListMap!4861 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284759 () Bool)

(declare-fun res!853558 () Bool)

(assert (=> b!1284759 (=> (not res!853558) (not e!733914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284759 (= res!853558 (validKeyInArray!0 (select (arr!40963 _keys!1741) from!2144)))))

(declare-fun b!1284760 () Bool)

(declare-fun res!853553 () Bool)

(assert (=> b!1284760 (=> (not res!853553) (not e!733914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84931 (_ BitVec 32)) Bool)

(assert (=> b!1284760 (= res!853553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284761 () Bool)

(assert (=> b!1284761 (= e!733912 tp_is_empty!33957)))

(declare-fun b!1284762 () Bool)

(assert (=> b!1284762 (= e!733911 (and e!733915 mapRes!52493))))

(declare-fun condMapEmpty!52493 () Bool)

(declare-fun mapDefault!52493 () ValueCell!16080)

(assert (=> b!1284762 (= condMapEmpty!52493 (= (arr!40962 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16080)) mapDefault!52493)))))

(declare-fun b!1284763 () Bool)

(declare-fun res!853556 () Bool)

(assert (=> b!1284763 (=> (not res!853556) (not e!733914))))

(declare-datatypes ((List!29200 0))(
  ( (Nil!29197) (Cons!29196 (h!30405 (_ BitVec 64)) (t!42751 List!29200)) )
))
(declare-fun arrayNoDuplicates!0 (array!84931 (_ BitVec 32) List!29200) Bool)

(assert (=> b!1284763 (= res!853556 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29197))))

(assert (= (and start!108840 res!853554) b!1284754))

(assert (= (and b!1284754 res!853555) b!1284760))

(assert (= (and b!1284760 res!853553) b!1284763))

(assert (= (and b!1284763 res!853556) b!1284757))

(assert (= (and b!1284757 res!853559) b!1284758))

(assert (= (and b!1284758 res!853557) b!1284756))

(assert (= (and b!1284756 res!853560) b!1284759))

(assert (= (and b!1284759 res!853558) b!1284755))

(assert (= (and b!1284762 condMapEmpty!52493) mapIsEmpty!52493))

(assert (= (and b!1284762 (not condMapEmpty!52493)) mapNonEmpty!52493))

(get-info :version)

(assert (= (and mapNonEmpty!52493 ((_ is ValueCellFull!16080) mapValue!52493)) b!1284761))

(assert (= (and b!1284762 ((_ is ValueCellFull!16080) mapDefault!52493)) b!1284753))

(assert (= start!108840 b!1284762))

(declare-fun m!1178339 () Bool)

(assert (=> start!108840 m!1178339))

(declare-fun m!1178341 () Bool)

(assert (=> start!108840 m!1178341))

(declare-fun m!1178343 () Bool)

(assert (=> start!108840 m!1178343))

(declare-fun m!1178345 () Bool)

(assert (=> b!1284763 m!1178345))

(declare-fun m!1178347 () Bool)

(assert (=> mapNonEmpty!52493 m!1178347))

(declare-fun m!1178349 () Bool)

(assert (=> b!1284760 m!1178349))

(declare-fun m!1178351 () Bool)

(assert (=> b!1284759 m!1178351))

(assert (=> b!1284759 m!1178351))

(declare-fun m!1178353 () Bool)

(assert (=> b!1284759 m!1178353))

(declare-fun m!1178355 () Bool)

(assert (=> b!1284758 m!1178355))

(assert (=> b!1284758 m!1178355))

(declare-fun m!1178357 () Bool)

(assert (=> b!1284758 m!1178357))

(check-sat (not b!1284758) (not start!108840) (not mapNonEmpty!52493) (not b!1284763) tp_is_empty!33957 (not b!1284759) b_and!46393 (not b_next!28317) (not b!1284760))
(check-sat b_and!46393 (not b_next!28317))
