; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108554 () Bool)

(assert start!108554)

(declare-fun b_free!28065 () Bool)

(declare-fun b_next!28065 () Bool)

(assert (=> start!108554 (= b_free!28065 (not b_next!28065))))

(declare-fun tp!99305 () Bool)

(declare-fun b_and!46135 () Bool)

(assert (=> start!108554 (= tp!99305 b_and!46135)))

(declare-fun b!1280777 () Bool)

(declare-fun e!731830 () Bool)

(declare-fun e!731828 () Bool)

(declare-fun mapRes!52109 () Bool)

(assert (=> b!1280777 (= e!731830 (and e!731828 mapRes!52109))))

(declare-fun condMapEmpty!52109 () Bool)

(declare-datatypes ((V!50043 0))(
  ( (V!50044 (val!16927 Int)) )
))
(declare-datatypes ((ValueCell!15954 0))(
  ( (ValueCellFull!15954 (v!19525 V!50043)) (EmptyCell!15954) )
))
(declare-datatypes ((array!84439 0))(
  ( (array!84440 (arr!40719 (Array (_ BitVec 32) ValueCell!15954)) (size!41270 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84439)

(declare-fun mapDefault!52109 () ValueCell!15954)

(assert (=> b!1280777 (= condMapEmpty!52109 (= (arr!40719 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15954)) mapDefault!52109)))))

(declare-fun mapIsEmpty!52109 () Bool)

(assert (=> mapIsEmpty!52109 mapRes!52109))

(declare-fun b!1280778 () Bool)

(declare-fun tp_is_empty!33705 () Bool)

(assert (=> b!1280778 (= e!731828 tp_is_empty!33705)))

(declare-fun b!1280779 () Bool)

(declare-fun res!850861 () Bool)

(declare-fun e!731826 () Bool)

(assert (=> b!1280779 (=> (not res!850861) (not e!731826))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84441 0))(
  ( (array!84442 (arr!40720 (Array (_ BitVec 32) (_ BitVec 64))) (size!41271 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84441)

(assert (=> b!1280779 (= res!850861 (and (= (size!41270 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41271 _keys!1741) (size!41270 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280780 () Bool)

(assert (=> b!1280780 (= e!731826 (not true))))

(declare-fun minValue!1387 () V!50043)

(declare-fun zeroValue!1387 () V!50043)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21816 0))(
  ( (tuple2!21817 (_1!10918 (_ BitVec 64)) (_2!10918 V!50043)) )
))
(declare-datatypes ((List!29026 0))(
  ( (Nil!29023) (Cons!29022 (h!30231 tuple2!21816) (t!42573 List!29026)) )
))
(declare-datatypes ((ListLongMap!19485 0))(
  ( (ListLongMap!19486 (toList!9758 List!29026)) )
))
(declare-fun contains!7811 (ListLongMap!19485 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4778 (array!84441 array!84439 (_ BitVec 32) (_ BitVec 32) V!50043 V!50043 (_ BitVec 32) Int) ListLongMap!19485)

(assert (=> b!1280780 (contains!7811 (getCurrentListMap!4778 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42357 0))(
  ( (Unit!42358) )
))
(declare-fun lt!576106 () Unit!42357)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!11 (array!84441 array!84439 (_ BitVec 32) (_ BitVec 32) V!50043 V!50043 (_ BitVec 64) (_ BitVec 32) Int) Unit!42357)

(assert (=> b!1280780 (= lt!576106 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!11 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280781 () Bool)

(declare-fun res!850863 () Bool)

(assert (=> b!1280781 (=> (not res!850863) (not e!731826))))

(assert (=> b!1280781 (= res!850863 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41271 _keys!1741))))))

(declare-fun b!1280782 () Bool)

(declare-fun res!850859 () Bool)

(assert (=> b!1280782 (=> (not res!850859) (not e!731826))))

(declare-datatypes ((List!29027 0))(
  ( (Nil!29024) (Cons!29023 (h!30232 (_ BitVec 64)) (t!42574 List!29027)) )
))
(declare-fun arrayNoDuplicates!0 (array!84441 (_ BitVec 32) List!29027) Bool)

(assert (=> b!1280782 (= res!850859 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29024))))

(declare-fun b!1280783 () Bool)

(declare-fun e!731829 () Bool)

(assert (=> b!1280783 (= e!731829 tp_is_empty!33705)))

(declare-fun b!1280784 () Bool)

(declare-fun res!850862 () Bool)

(assert (=> b!1280784 (=> (not res!850862) (not e!731826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84441 (_ BitVec 32)) Bool)

(assert (=> b!1280784 (= res!850862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52109 () Bool)

(declare-fun tp!99306 () Bool)

(assert (=> mapNonEmpty!52109 (= mapRes!52109 (and tp!99306 e!731829))))

(declare-fun mapKey!52109 () (_ BitVec 32))

(declare-fun mapRest!52109 () (Array (_ BitVec 32) ValueCell!15954))

(declare-fun mapValue!52109 () ValueCell!15954)

(assert (=> mapNonEmpty!52109 (= (arr!40719 _values!1445) (store mapRest!52109 mapKey!52109 mapValue!52109))))

(declare-fun b!1280785 () Bool)

(declare-fun res!850865 () Bool)

(assert (=> b!1280785 (=> (not res!850865) (not e!731826))))

(assert (=> b!1280785 (= res!850865 (contains!7811 (getCurrentListMap!4778 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280786 () Bool)

(declare-fun res!850860 () Bool)

(assert (=> b!1280786 (=> (not res!850860) (not e!731826))))

(assert (=> b!1280786 (= res!850860 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41271 _keys!1741)) (not (= (select (arr!40720 _keys!1741) from!2144) k0!1205))))))

(declare-fun res!850864 () Bool)

(assert (=> start!108554 (=> (not res!850864) (not e!731826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108554 (= res!850864 (validMask!0 mask!2175))))

(assert (=> start!108554 e!731826))

(assert (=> start!108554 tp_is_empty!33705))

(assert (=> start!108554 true))

(declare-fun array_inv!30887 (array!84439) Bool)

(assert (=> start!108554 (and (array_inv!30887 _values!1445) e!731830)))

(declare-fun array_inv!30888 (array!84441) Bool)

(assert (=> start!108554 (array_inv!30888 _keys!1741)))

(assert (=> start!108554 tp!99305))

(assert (= (and start!108554 res!850864) b!1280779))

(assert (= (and b!1280779 res!850861) b!1280784))

(assert (= (and b!1280784 res!850862) b!1280782))

(assert (= (and b!1280782 res!850859) b!1280781))

(assert (= (and b!1280781 res!850863) b!1280785))

(assert (= (and b!1280785 res!850865) b!1280786))

(assert (= (and b!1280786 res!850860) b!1280780))

(assert (= (and b!1280777 condMapEmpty!52109) mapIsEmpty!52109))

(assert (= (and b!1280777 (not condMapEmpty!52109)) mapNonEmpty!52109))

(get-info :version)

(assert (= (and mapNonEmpty!52109 ((_ is ValueCellFull!15954) mapValue!52109)) b!1280783))

(assert (= (and b!1280777 ((_ is ValueCellFull!15954) mapDefault!52109)) b!1280778))

(assert (= start!108554 b!1280777))

(declare-fun m!1175351 () Bool)

(assert (=> b!1280782 m!1175351))

(declare-fun m!1175353 () Bool)

(assert (=> b!1280785 m!1175353))

(assert (=> b!1280785 m!1175353))

(declare-fun m!1175355 () Bool)

(assert (=> b!1280785 m!1175355))

(declare-fun m!1175357 () Bool)

(assert (=> b!1280784 m!1175357))

(declare-fun m!1175359 () Bool)

(assert (=> b!1280786 m!1175359))

(declare-fun m!1175361 () Bool)

(assert (=> mapNonEmpty!52109 m!1175361))

(declare-fun m!1175363 () Bool)

(assert (=> b!1280780 m!1175363))

(assert (=> b!1280780 m!1175363))

(declare-fun m!1175365 () Bool)

(assert (=> b!1280780 m!1175365))

(declare-fun m!1175367 () Bool)

(assert (=> b!1280780 m!1175367))

(declare-fun m!1175369 () Bool)

(assert (=> start!108554 m!1175369))

(declare-fun m!1175371 () Bool)

(assert (=> start!108554 m!1175371))

(declare-fun m!1175373 () Bool)

(assert (=> start!108554 m!1175373))

(check-sat (not b!1280780) b_and!46135 (not b_next!28065) tp_is_empty!33705 (not b!1280782) (not b!1280785) (not start!108554) (not b!1280784) (not mapNonEmpty!52109))
(check-sat b_and!46135 (not b_next!28065))
