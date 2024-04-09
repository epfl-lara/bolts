; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108548 () Bool)

(assert start!108548)

(declare-fun b_free!28059 () Bool)

(declare-fun b_next!28059 () Bool)

(assert (=> start!108548 (= b_free!28059 (not b_next!28059))))

(declare-fun tp!99288 () Bool)

(declare-fun b_and!46129 () Bool)

(assert (=> start!108548 (= tp!99288 b_and!46129)))

(declare-fun b!1280687 () Bool)

(declare-fun res!850802 () Bool)

(declare-fun e!731784 () Bool)

(assert (=> b!1280687 (=> (not res!850802) (not e!731784))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!84427 0))(
  ( (array!84428 (arr!40713 (Array (_ BitVec 32) (_ BitVec 64))) (size!41264 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84427)

(assert (=> b!1280687 (= res!850802 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41264 _keys!1741)) (not (= (select (arr!40713 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1280688 () Bool)

(assert (=> b!1280688 (= e!731784 (not true))))

(declare-datatypes ((V!50035 0))(
  ( (V!50036 (val!16924 Int)) )
))
(declare-fun minValue!1387 () V!50035)

(declare-fun zeroValue!1387 () V!50035)

(declare-datatypes ((ValueCell!15951 0))(
  ( (ValueCellFull!15951 (v!19522 V!50035)) (EmptyCell!15951) )
))
(declare-datatypes ((array!84429 0))(
  ( (array!84430 (arr!40714 (Array (_ BitVec 32) ValueCell!15951)) (size!41265 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84429)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21810 0))(
  ( (tuple2!21811 (_1!10915 (_ BitVec 64)) (_2!10915 V!50035)) )
))
(declare-datatypes ((List!29020 0))(
  ( (Nil!29017) (Cons!29016 (h!30225 tuple2!21810) (t!42567 List!29020)) )
))
(declare-datatypes ((ListLongMap!19479 0))(
  ( (ListLongMap!19480 (toList!9755 List!29020)) )
))
(declare-fun contains!7808 (ListLongMap!19479 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4775 (array!84427 array!84429 (_ BitVec 32) (_ BitVec 32) V!50035 V!50035 (_ BitVec 32) Int) ListLongMap!19479)

(assert (=> b!1280688 (contains!7808 (getCurrentListMap!4775 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42351 0))(
  ( (Unit!42352) )
))
(declare-fun lt!576097 () Unit!42351)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!8 (array!84427 array!84429 (_ BitVec 32) (_ BitVec 32) V!50035 V!50035 (_ BitVec 64) (_ BitVec 32) Int) Unit!42351)

(assert (=> b!1280688 (= lt!576097 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!8 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun res!850799 () Bool)

(assert (=> start!108548 (=> (not res!850799) (not e!731784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108548 (= res!850799 (validMask!0 mask!2175))))

(assert (=> start!108548 e!731784))

(declare-fun tp_is_empty!33699 () Bool)

(assert (=> start!108548 tp_is_empty!33699))

(assert (=> start!108548 true))

(declare-fun e!731782 () Bool)

(declare-fun array_inv!30885 (array!84429) Bool)

(assert (=> start!108548 (and (array_inv!30885 _values!1445) e!731782)))

(declare-fun array_inv!30886 (array!84427) Bool)

(assert (=> start!108548 (array_inv!30886 _keys!1741)))

(assert (=> start!108548 tp!99288))

(declare-fun mapIsEmpty!52100 () Bool)

(declare-fun mapRes!52100 () Bool)

(assert (=> mapIsEmpty!52100 mapRes!52100))

(declare-fun b!1280689 () Bool)

(declare-fun res!850801 () Bool)

(assert (=> b!1280689 (=> (not res!850801) (not e!731784))))

(assert (=> b!1280689 (= res!850801 (and (= (size!41265 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41264 _keys!1741) (size!41265 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280690 () Bool)

(declare-fun e!731781 () Bool)

(assert (=> b!1280690 (= e!731782 (and e!731781 mapRes!52100))))

(declare-fun condMapEmpty!52100 () Bool)

(declare-fun mapDefault!52100 () ValueCell!15951)

(assert (=> b!1280690 (= condMapEmpty!52100 (= (arr!40714 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15951)) mapDefault!52100)))))

(declare-fun b!1280691 () Bool)

(assert (=> b!1280691 (= e!731781 tp_is_empty!33699)))

(declare-fun b!1280692 () Bool)

(declare-fun e!731785 () Bool)

(assert (=> b!1280692 (= e!731785 tp_is_empty!33699)))

(declare-fun b!1280693 () Bool)

(declare-fun res!850796 () Bool)

(assert (=> b!1280693 (=> (not res!850796) (not e!731784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84427 (_ BitVec 32)) Bool)

(assert (=> b!1280693 (= res!850796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280694 () Bool)

(declare-fun res!850798 () Bool)

(assert (=> b!1280694 (=> (not res!850798) (not e!731784))))

(assert (=> b!1280694 (= res!850798 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41264 _keys!1741))))))

(declare-fun b!1280695 () Bool)

(declare-fun res!850800 () Bool)

(assert (=> b!1280695 (=> (not res!850800) (not e!731784))))

(declare-datatypes ((List!29021 0))(
  ( (Nil!29018) (Cons!29017 (h!30226 (_ BitVec 64)) (t!42568 List!29021)) )
))
(declare-fun arrayNoDuplicates!0 (array!84427 (_ BitVec 32) List!29021) Bool)

(assert (=> b!1280695 (= res!850800 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29018))))

(declare-fun mapNonEmpty!52100 () Bool)

(declare-fun tp!99287 () Bool)

(assert (=> mapNonEmpty!52100 (= mapRes!52100 (and tp!99287 e!731785))))

(declare-fun mapValue!52100 () ValueCell!15951)

(declare-fun mapRest!52100 () (Array (_ BitVec 32) ValueCell!15951))

(declare-fun mapKey!52100 () (_ BitVec 32))

(assert (=> mapNonEmpty!52100 (= (arr!40714 _values!1445) (store mapRest!52100 mapKey!52100 mapValue!52100))))

(declare-fun b!1280696 () Bool)

(declare-fun res!850797 () Bool)

(assert (=> b!1280696 (=> (not res!850797) (not e!731784))))

(assert (=> b!1280696 (= res!850797 (contains!7808 (getCurrentListMap!4775 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108548 res!850799) b!1280689))

(assert (= (and b!1280689 res!850801) b!1280693))

(assert (= (and b!1280693 res!850796) b!1280695))

(assert (= (and b!1280695 res!850800) b!1280694))

(assert (= (and b!1280694 res!850798) b!1280696))

(assert (= (and b!1280696 res!850797) b!1280687))

(assert (= (and b!1280687 res!850802) b!1280688))

(assert (= (and b!1280690 condMapEmpty!52100) mapIsEmpty!52100))

(assert (= (and b!1280690 (not condMapEmpty!52100)) mapNonEmpty!52100))

(get-info :version)

(assert (= (and mapNonEmpty!52100 ((_ is ValueCellFull!15951) mapValue!52100)) b!1280692))

(assert (= (and b!1280690 ((_ is ValueCellFull!15951) mapDefault!52100)) b!1280691))

(assert (= start!108548 b!1280690))

(declare-fun m!1175279 () Bool)

(assert (=> b!1280688 m!1175279))

(assert (=> b!1280688 m!1175279))

(declare-fun m!1175281 () Bool)

(assert (=> b!1280688 m!1175281))

(declare-fun m!1175283 () Bool)

(assert (=> b!1280688 m!1175283))

(declare-fun m!1175285 () Bool)

(assert (=> b!1280687 m!1175285))

(declare-fun m!1175287 () Bool)

(assert (=> b!1280696 m!1175287))

(assert (=> b!1280696 m!1175287))

(declare-fun m!1175289 () Bool)

(assert (=> b!1280696 m!1175289))

(declare-fun m!1175291 () Bool)

(assert (=> start!108548 m!1175291))

(declare-fun m!1175293 () Bool)

(assert (=> start!108548 m!1175293))

(declare-fun m!1175295 () Bool)

(assert (=> start!108548 m!1175295))

(declare-fun m!1175297 () Bool)

(assert (=> b!1280695 m!1175297))

(declare-fun m!1175299 () Bool)

(assert (=> mapNonEmpty!52100 m!1175299))

(declare-fun m!1175301 () Bool)

(assert (=> b!1280693 m!1175301))

(check-sat (not b!1280696) (not mapNonEmpty!52100) (not b_next!28059) (not b!1280688) tp_is_empty!33699 b_and!46129 (not start!108548) (not b!1280695) (not b!1280693))
(check-sat b_and!46129 (not b_next!28059))
