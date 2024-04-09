; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4206 () Bool)

(assert start!4206)

(declare-fun b_free!1113 () Bool)

(declare-fun b_next!1113 () Bool)

(assert (=> start!4206 (= b_free!1113 (not b_next!1113))))

(declare-fun tp!4759 () Bool)

(declare-fun b_and!1925 () Bool)

(assert (=> start!4206 (= tp!4759 b_and!1925)))

(declare-fun b!32096 () Bool)

(declare-fun res!19481 () Bool)

(declare-fun e!20431 () Bool)

(assert (=> b!32096 (=> (not res!19481) (not e!20431))))

(declare-datatypes ((array!2141 0))(
  ( (array!2142 (arr!1024 (Array (_ BitVec 32) (_ BitVec 64))) (size!1125 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2141)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32096 (= res!19481 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!19478 () Bool)

(assert (=> start!4206 (=> (not res!19478) (not e!20431))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4206 (= res!19478 (validMask!0 mask!2294))))

(assert (=> start!4206 e!20431))

(assert (=> start!4206 true))

(assert (=> start!4206 tp!4759))

(declare-datatypes ((V!1781 0))(
  ( (V!1782 (val!760 Int)) )
))
(declare-datatypes ((ValueCell!534 0))(
  ( (ValueCellFull!534 (v!1849 V!1781)) (EmptyCell!534) )
))
(declare-datatypes ((array!2143 0))(
  ( (array!2144 (arr!1025 (Array (_ BitVec 32) ValueCell!534)) (size!1126 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2143)

(declare-fun e!20430 () Bool)

(declare-fun array_inv!679 (array!2143) Bool)

(assert (=> start!4206 (and (array_inv!679 _values!1501) e!20430)))

(declare-fun array_inv!680 (array!2141) Bool)

(assert (=> start!4206 (array_inv!680 _keys!1833)))

(declare-fun tp_is_empty!1467 () Bool)

(assert (=> start!4206 tp_is_empty!1467))

(declare-fun mapNonEmpty!1729 () Bool)

(declare-fun mapRes!1729 () Bool)

(declare-fun tp!4758 () Bool)

(declare-fun e!20428 () Bool)

(assert (=> mapNonEmpty!1729 (= mapRes!1729 (and tp!4758 e!20428))))

(declare-fun mapKey!1729 () (_ BitVec 32))

(declare-fun mapValue!1729 () ValueCell!534)

(declare-fun mapRest!1729 () (Array (_ BitVec 32) ValueCell!534))

(assert (=> mapNonEmpty!1729 (= (arr!1025 _values!1501) (store mapRest!1729 mapKey!1729 mapValue!1729))))

(declare-fun b!32097 () Bool)

(declare-fun e!20427 () Bool)

(assert (=> b!32097 (= e!20430 (and e!20427 mapRes!1729))))

(declare-fun condMapEmpty!1729 () Bool)

(declare-fun mapDefault!1729 () ValueCell!534)

(assert (=> b!32097 (= condMapEmpty!1729 (= (arr!1025 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!534)) mapDefault!1729)))))

(declare-fun b!32098 () Bool)

(declare-fun res!19479 () Bool)

(assert (=> b!32098 (=> (not res!19479) (not e!20431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2141 (_ BitVec 32)) Bool)

(assert (=> b!32098 (= res!19479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32099 () Bool)

(assert (=> b!32099 (= e!20427 tp_is_empty!1467)))

(declare-fun b!32100 () Bool)

(declare-fun res!19477 () Bool)

(assert (=> b!32100 (=> (not res!19477) (not e!20431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32100 (= res!19477 (validKeyInArray!0 k0!1304))))

(declare-fun mapIsEmpty!1729 () Bool)

(assert (=> mapIsEmpty!1729 mapRes!1729))

(declare-fun b!32101 () Bool)

(assert (=> b!32101 (= e!20431 false)))

(declare-fun lt!11640 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2141 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32101 (= lt!11640 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32102 () Bool)

(declare-fun res!19480 () Bool)

(assert (=> b!32102 (=> (not res!19480) (not e!20431))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!32102 (= res!19480 (and (= (size!1126 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1125 _keys!1833) (size!1126 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32103 () Bool)

(declare-fun res!19483 () Bool)

(assert (=> b!32103 (=> (not res!19483) (not e!20431))))

(declare-datatypes ((List!833 0))(
  ( (Nil!830) (Cons!829 (h!1396 (_ BitVec 64)) (t!3528 List!833)) )
))
(declare-fun arrayNoDuplicates!0 (array!2141 (_ BitVec 32) List!833) Bool)

(assert (=> b!32103 (= res!19483 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!830))))

(declare-fun b!32104 () Bool)

(assert (=> b!32104 (= e!20428 tp_is_empty!1467)))

(declare-fun b!32105 () Bool)

(declare-fun res!19482 () Bool)

(assert (=> b!32105 (=> (not res!19482) (not e!20431))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1781)

(declare-fun minValue!1443 () V!1781)

(declare-datatypes ((tuple2!1230 0))(
  ( (tuple2!1231 (_1!625 (_ BitVec 64)) (_2!625 V!1781)) )
))
(declare-datatypes ((List!834 0))(
  ( (Nil!831) (Cons!830 (h!1397 tuple2!1230) (t!3529 List!834)) )
))
(declare-datatypes ((ListLongMap!811 0))(
  ( (ListLongMap!812 (toList!421 List!834)) )
))
(declare-fun contains!358 (ListLongMap!811 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!246 (array!2141 array!2143 (_ BitVec 32) (_ BitVec 32) V!1781 V!1781 (_ BitVec 32) Int) ListLongMap!811)

(assert (=> b!32105 (= res!19482 (not (contains!358 (getCurrentListMap!246 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(assert (= (and start!4206 res!19478) b!32102))

(assert (= (and b!32102 res!19480) b!32098))

(assert (= (and b!32098 res!19479) b!32103))

(assert (= (and b!32103 res!19483) b!32100))

(assert (= (and b!32100 res!19477) b!32105))

(assert (= (and b!32105 res!19482) b!32096))

(assert (= (and b!32096 res!19481) b!32101))

(assert (= (and b!32097 condMapEmpty!1729) mapIsEmpty!1729))

(assert (= (and b!32097 (not condMapEmpty!1729)) mapNonEmpty!1729))

(get-info :version)

(assert (= (and mapNonEmpty!1729 ((_ is ValueCellFull!534) mapValue!1729)) b!32104))

(assert (= (and b!32097 ((_ is ValueCellFull!534) mapDefault!1729)) b!32099))

(assert (= start!4206 b!32097))

(declare-fun m!25711 () Bool)

(assert (=> b!32098 m!25711))

(declare-fun m!25713 () Bool)

(assert (=> start!4206 m!25713))

(declare-fun m!25715 () Bool)

(assert (=> start!4206 m!25715))

(declare-fun m!25717 () Bool)

(assert (=> start!4206 m!25717))

(declare-fun m!25719 () Bool)

(assert (=> mapNonEmpty!1729 m!25719))

(declare-fun m!25721 () Bool)

(assert (=> b!32105 m!25721))

(assert (=> b!32105 m!25721))

(declare-fun m!25723 () Bool)

(assert (=> b!32105 m!25723))

(declare-fun m!25725 () Bool)

(assert (=> b!32103 m!25725))

(declare-fun m!25727 () Bool)

(assert (=> b!32101 m!25727))

(declare-fun m!25729 () Bool)

(assert (=> b!32100 m!25729))

(declare-fun m!25731 () Bool)

(assert (=> b!32096 m!25731))

(check-sat (not b!32101) b_and!1925 (not b!32103) (not b!32100) (not b!32105) (not b!32096) (not mapNonEmpty!1729) (not b!32098) (not b_next!1113) tp_is_empty!1467 (not start!4206))
(check-sat b_and!1925 (not b_next!1113))
