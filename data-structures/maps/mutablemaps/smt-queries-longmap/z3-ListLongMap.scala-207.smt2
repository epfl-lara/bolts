; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3924 () Bool)

(assert start!3924)

(declare-fun b_free!831 () Bool)

(declare-fun b_next!831 () Bool)

(assert (=> start!3924 (= b_free!831 (not b_next!831))))

(declare-fun tp!3913 () Bool)

(declare-fun b_and!1643 () Bool)

(assert (=> start!3924 (= tp!3913 b_and!1643)))

(declare-fun mapIsEmpty!1306 () Bool)

(declare-fun mapRes!1306 () Bool)

(assert (=> mapIsEmpty!1306 mapRes!1306))

(declare-fun res!16530 () Bool)

(declare-fun e!18100 () Bool)

(assert (=> start!3924 (=> (not res!16530) (not e!18100))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3924 (= res!16530 (validMask!0 mask!2294))))

(assert (=> start!3924 e!18100))

(assert (=> start!3924 true))

(assert (=> start!3924 tp!3913))

(declare-datatypes ((V!1405 0))(
  ( (V!1406 (val!619 Int)) )
))
(declare-datatypes ((ValueCell!393 0))(
  ( (ValueCellFull!393 (v!1708 V!1405)) (EmptyCell!393) )
))
(declare-datatypes ((array!1597 0))(
  ( (array!1598 (arr!752 (Array (_ BitVec 32) ValueCell!393)) (size!853 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1597)

(declare-fun e!18097 () Bool)

(declare-fun array_inv!515 (array!1597) Bool)

(assert (=> start!3924 (and (array_inv!515 _values!1501) e!18097)))

(declare-datatypes ((array!1599 0))(
  ( (array!1600 (arr!753 (Array (_ BitVec 32) (_ BitVec 64))) (size!854 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1599)

(declare-fun array_inv!516 (array!1599) Bool)

(assert (=> start!3924 (array_inv!516 _keys!1833)))

(declare-fun tp_is_empty!1185 () Bool)

(assert (=> start!3924 tp_is_empty!1185))

(declare-fun mapNonEmpty!1306 () Bool)

(declare-fun tp!3912 () Bool)

(declare-fun e!18098 () Bool)

(assert (=> mapNonEmpty!1306 (= mapRes!1306 (and tp!3912 e!18098))))

(declare-fun mapKey!1306 () (_ BitVec 32))

(declare-fun mapValue!1306 () ValueCell!393)

(declare-fun mapRest!1306 () (Array (_ BitVec 32) ValueCell!393))

(assert (=> mapNonEmpty!1306 (= (arr!752 _values!1501) (store mapRest!1306 mapKey!1306 mapValue!1306))))

(declare-fun b!27875 () Bool)

(declare-fun res!16527 () Bool)

(assert (=> b!27875 (=> (not res!16527) (not e!18100))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27875 (= res!16527 (validKeyInArray!0 k0!1304))))

(declare-fun b!27876 () Bool)

(declare-fun e!18096 () Bool)

(assert (=> b!27876 (= e!18096 tp_is_empty!1185)))

(declare-fun b!27877 () Bool)

(declare-fun res!16526 () Bool)

(assert (=> b!27877 (=> (not res!16526) (not e!18100))))

(declare-fun arrayContainsKey!0 (array!1599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27877 (= res!16526 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27878 () Bool)

(declare-fun res!16525 () Bool)

(assert (=> b!27878 (=> (not res!16525) (not e!18100))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!27878 (= res!16525 (and (= (size!853 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!854 _keys!1833) (size!853 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27879 () Bool)

(assert (=> b!27879 (= e!18100 false)))

(declare-fun lt!10731 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1599 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27879 (= lt!10731 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27880 () Bool)

(declare-fun res!16528 () Bool)

(assert (=> b!27880 (=> (not res!16528) (not e!18100))))

(declare-datatypes ((List!633 0))(
  ( (Nil!630) (Cons!629 (h!1196 (_ BitVec 64)) (t!3328 List!633)) )
))
(declare-fun arrayNoDuplicates!0 (array!1599 (_ BitVec 32) List!633) Bool)

(assert (=> b!27880 (= res!16528 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!630))))

(declare-fun b!27881 () Bool)

(declare-fun res!16531 () Bool)

(assert (=> b!27881 (=> (not res!16531) (not e!18100))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1405)

(declare-fun minValue!1443 () V!1405)

(declare-datatypes ((tuple2!1018 0))(
  ( (tuple2!1019 (_1!519 (_ BitVec 64)) (_2!519 V!1405)) )
))
(declare-datatypes ((List!634 0))(
  ( (Nil!631) (Cons!630 (h!1197 tuple2!1018) (t!3329 List!634)) )
))
(declare-datatypes ((ListLongMap!599 0))(
  ( (ListLongMap!600 (toList!315 List!634)) )
))
(declare-fun contains!252 (ListLongMap!599 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!143 (array!1599 array!1597 (_ BitVec 32) (_ BitVec 32) V!1405 V!1405 (_ BitVec 32) Int) ListLongMap!599)

(assert (=> b!27881 (= res!16531 (not (contains!252 (getCurrentListMap!143 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!27882 () Bool)

(assert (=> b!27882 (= e!18097 (and e!18096 mapRes!1306))))

(declare-fun condMapEmpty!1306 () Bool)

(declare-fun mapDefault!1306 () ValueCell!393)

(assert (=> b!27882 (= condMapEmpty!1306 (= (arr!752 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!393)) mapDefault!1306)))))

(declare-fun b!27883 () Bool)

(assert (=> b!27883 (= e!18098 tp_is_empty!1185)))

(declare-fun b!27884 () Bool)

(declare-fun res!16529 () Bool)

(assert (=> b!27884 (=> (not res!16529) (not e!18100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1599 (_ BitVec 32)) Bool)

(assert (=> b!27884 (= res!16529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!3924 res!16530) b!27878))

(assert (= (and b!27878 res!16525) b!27884))

(assert (= (and b!27884 res!16529) b!27880))

(assert (= (and b!27880 res!16528) b!27875))

(assert (= (and b!27875 res!16527) b!27881))

(assert (= (and b!27881 res!16531) b!27877))

(assert (= (and b!27877 res!16526) b!27879))

(assert (= (and b!27882 condMapEmpty!1306) mapIsEmpty!1306))

(assert (= (and b!27882 (not condMapEmpty!1306)) mapNonEmpty!1306))

(get-info :version)

(assert (= (and mapNonEmpty!1306 ((_ is ValueCellFull!393) mapValue!1306)) b!27883))

(assert (= (and b!27882 ((_ is ValueCellFull!393) mapDefault!1306)) b!27876))

(assert (= start!3924 b!27882))

(declare-fun m!22225 () Bool)

(assert (=> mapNonEmpty!1306 m!22225))

(declare-fun m!22227 () Bool)

(assert (=> b!27881 m!22227))

(assert (=> b!27881 m!22227))

(declare-fun m!22229 () Bool)

(assert (=> b!27881 m!22229))

(declare-fun m!22231 () Bool)

(assert (=> b!27880 m!22231))

(declare-fun m!22233 () Bool)

(assert (=> b!27877 m!22233))

(declare-fun m!22235 () Bool)

(assert (=> b!27884 m!22235))

(declare-fun m!22237 () Bool)

(assert (=> b!27875 m!22237))

(declare-fun m!22239 () Bool)

(assert (=> start!3924 m!22239))

(declare-fun m!22241 () Bool)

(assert (=> start!3924 m!22241))

(declare-fun m!22243 () Bool)

(assert (=> start!3924 m!22243))

(declare-fun m!22245 () Bool)

(assert (=> b!27879 m!22245))

(check-sat tp_is_empty!1185 (not start!3924) (not b!27879) (not b!27875) (not b!27884) (not b_next!831) (not mapNonEmpty!1306) (not b!27880) b_and!1643 (not b!27877) (not b!27881))
(check-sat b_and!1643 (not b_next!831))
