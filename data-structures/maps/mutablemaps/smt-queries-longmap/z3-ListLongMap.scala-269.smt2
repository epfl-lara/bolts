; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4440 () Bool)

(assert start!4440)

(declare-fun b_free!1203 () Bool)

(declare-fun b_next!1203 () Bool)

(assert (=> start!4440 (= b_free!1203 (not b_next!1203))))

(declare-fun tp!5046 () Bool)

(declare-fun b_and!2027 () Bool)

(assert (=> start!4440 (= tp!5046 b_and!2027)))

(declare-fun b!34290 () Bool)

(declare-fun res!20764 () Bool)

(declare-fun e!21773 () Bool)

(assert (=> b!34290 (=> (not res!20764) (not e!21773))))

(declare-datatypes ((V!1901 0))(
  ( (V!1902 (val!805 Int)) )
))
(declare-datatypes ((ValueCell!579 0))(
  ( (ValueCellFull!579 (v!1900 V!1901)) (EmptyCell!579) )
))
(declare-datatypes ((array!2323 0))(
  ( (array!2324 (arr!1109 (Array (_ BitVec 32) ValueCell!579)) (size!1210 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2323)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2325 0))(
  ( (array!2326 (arr!1110 (Array (_ BitVec 32) (_ BitVec 64))) (size!1211 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2325)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!34290 (= res!20764 (and (= (size!1210 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1211 _keys!1833) (size!1210 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34291 () Bool)

(declare-fun e!21774 () Bool)

(assert (=> b!34291 (= e!21774 (not true))))

(declare-fun lt!12755 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2325 (_ BitVec 32)) Bool)

(assert (=> b!34291 (arrayForallSeekEntryOrOpenFound!0 lt!12755 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!773 0))(
  ( (Unit!774) )
))
(declare-fun lt!12757 () Unit!773)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!2325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!773)

(assert (=> b!34291 (= lt!12757 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!12755))))

(declare-datatypes ((SeekEntryResult!146 0))(
  ( (MissingZero!146 (index!2706 (_ BitVec 32))) (Found!146 (index!2707 (_ BitVec 32))) (Intermediate!146 (undefined!958 Bool) (index!2708 (_ BitVec 32)) (x!6900 (_ BitVec 32))) (Undefined!146) (MissingVacant!146 (index!2709 (_ BitVec 32))) )
))
(declare-fun lt!12753 () SeekEntryResult!146)

(get-info :version)

(assert (=> b!34291 (and ((_ is Found!146) lt!12753) (= (index!2707 lt!12753) lt!12755))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2325 (_ BitVec 32)) SeekEntryResult!146)

(assert (=> b!34291 (= lt!12753 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!12752 () Unit!773)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2325 (_ BitVec 32)) Unit!773)

(assert (=> b!34291 (= lt!12752 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12755 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1298 0))(
  ( (tuple2!1299 (_1!659 (_ BitVec 64)) (_2!659 V!1901)) )
))
(declare-datatypes ((List!901 0))(
  ( (Nil!898) (Cons!897 (h!1464 tuple2!1298) (t!3608 List!901)) )
))
(declare-datatypes ((ListLongMap!879 0))(
  ( (ListLongMap!880 (toList!455 List!901)) )
))
(declare-fun lt!12756 () ListLongMap!879)

(declare-fun contains!398 (ListLongMap!879 (_ BitVec 64)) Bool)

(assert (=> b!34291 (contains!398 lt!12756 (select (arr!1110 _keys!1833) lt!12755))))

(declare-fun lt!12754 () Unit!773)

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1901)

(declare-fun minValue!1443 () V!1901)

(declare-fun lemmaValidKeyInArrayIsInListMap!68 (array!2325 array!2323 (_ BitVec 32) (_ BitVec 32) V!1901 V!1901 (_ BitVec 32) Int) Unit!773)

(assert (=> b!34291 (= lt!12754 (lemmaValidKeyInArrayIsInListMap!68 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12755 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2325 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!34291 (= lt!12755 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!34292 () Bool)

(declare-fun res!20766 () Bool)

(assert (=> b!34292 (=> (not res!20766) (not e!21773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34292 (= res!20766 (validKeyInArray!0 k0!1304))))

(declare-fun b!34293 () Bool)

(declare-fun res!20765 () Bool)

(assert (=> b!34293 (=> (not res!20765) (not e!21773))))

(declare-datatypes ((List!902 0))(
  ( (Nil!899) (Cons!898 (h!1465 (_ BitVec 64)) (t!3609 List!902)) )
))
(declare-fun arrayNoDuplicates!0 (array!2325 (_ BitVec 32) List!902) Bool)

(assert (=> b!34293 (= res!20765 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!899))))

(declare-fun b!34294 () Bool)

(declare-fun res!20767 () Bool)

(assert (=> b!34294 (=> (not res!20767) (not e!21773))))

(assert (=> b!34294 (= res!20767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34295 () Bool)

(declare-fun e!21770 () Bool)

(declare-fun tp_is_empty!1557 () Bool)

(assert (=> b!34295 (= e!21770 tp_is_empty!1557)))

(declare-fun res!20770 () Bool)

(assert (=> start!4440 (=> (not res!20770) (not e!21773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4440 (= res!20770 (validMask!0 mask!2294))))

(assert (=> start!4440 e!21773))

(assert (=> start!4440 true))

(assert (=> start!4440 tp!5046))

(declare-fun e!21771 () Bool)

(declare-fun array_inv!737 (array!2323) Bool)

(assert (=> start!4440 (and (array_inv!737 _values!1501) e!21771)))

(declare-fun array_inv!738 (array!2325) Bool)

(assert (=> start!4440 (array_inv!738 _keys!1833)))

(assert (=> start!4440 tp_is_empty!1557))

(declare-fun b!34296 () Bool)

(declare-fun e!21769 () Bool)

(declare-fun mapRes!1882 () Bool)

(assert (=> b!34296 (= e!21771 (and e!21769 mapRes!1882))))

(declare-fun condMapEmpty!1882 () Bool)

(declare-fun mapDefault!1882 () ValueCell!579)

(assert (=> b!34296 (= condMapEmpty!1882 (= (arr!1109 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!579)) mapDefault!1882)))))

(declare-fun b!34297 () Bool)

(assert (=> b!34297 (= e!21773 e!21774)))

(declare-fun res!20768 () Bool)

(assert (=> b!34297 (=> (not res!20768) (not e!21774))))

(assert (=> b!34297 (= res!20768 (not (contains!398 lt!12756 k0!1304)))))

(declare-fun getCurrentListMap!276 (array!2325 array!2323 (_ BitVec 32) (_ BitVec 32) V!1901 V!1901 (_ BitVec 32) Int) ListLongMap!879)

(assert (=> b!34297 (= lt!12756 (getCurrentListMap!276 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1882 () Bool)

(assert (=> mapIsEmpty!1882 mapRes!1882))

(declare-fun mapNonEmpty!1882 () Bool)

(declare-fun tp!5047 () Bool)

(assert (=> mapNonEmpty!1882 (= mapRes!1882 (and tp!5047 e!21770))))

(declare-fun mapRest!1882 () (Array (_ BitVec 32) ValueCell!579))

(declare-fun mapValue!1882 () ValueCell!579)

(declare-fun mapKey!1882 () (_ BitVec 32))

(assert (=> mapNonEmpty!1882 (= (arr!1109 _values!1501) (store mapRest!1882 mapKey!1882 mapValue!1882))))

(declare-fun b!34298 () Bool)

(assert (=> b!34298 (= e!21769 tp_is_empty!1557)))

(declare-fun b!34299 () Bool)

(declare-fun res!20769 () Bool)

(assert (=> b!34299 (=> (not res!20769) (not e!21774))))

(declare-fun arrayContainsKey!0 (array!2325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34299 (= res!20769 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(assert (= (and start!4440 res!20770) b!34290))

(assert (= (and b!34290 res!20764) b!34294))

(assert (= (and b!34294 res!20767) b!34293))

(assert (= (and b!34293 res!20765) b!34292))

(assert (= (and b!34292 res!20766) b!34297))

(assert (= (and b!34297 res!20768) b!34299))

(assert (= (and b!34299 res!20769) b!34291))

(assert (= (and b!34296 condMapEmpty!1882) mapIsEmpty!1882))

(assert (= (and b!34296 (not condMapEmpty!1882)) mapNonEmpty!1882))

(assert (= (and mapNonEmpty!1882 ((_ is ValueCellFull!579) mapValue!1882)) b!34295))

(assert (= (and b!34296 ((_ is ValueCellFull!579) mapDefault!1882)) b!34298))

(assert (= start!4440 b!34296))

(declare-fun m!27641 () Bool)

(assert (=> b!34291 m!27641))

(declare-fun m!27643 () Bool)

(assert (=> b!34291 m!27643))

(declare-fun m!27645 () Bool)

(assert (=> b!34291 m!27645))

(declare-fun m!27647 () Bool)

(assert (=> b!34291 m!27647))

(declare-fun m!27649 () Bool)

(assert (=> b!34291 m!27649))

(assert (=> b!34291 m!27641))

(declare-fun m!27651 () Bool)

(assert (=> b!34291 m!27651))

(declare-fun m!27653 () Bool)

(assert (=> b!34291 m!27653))

(declare-fun m!27655 () Bool)

(assert (=> b!34291 m!27655))

(declare-fun m!27657 () Bool)

(assert (=> mapNonEmpty!1882 m!27657))

(declare-fun m!27659 () Bool)

(assert (=> b!34293 m!27659))

(declare-fun m!27661 () Bool)

(assert (=> b!34299 m!27661))

(declare-fun m!27663 () Bool)

(assert (=> b!34297 m!27663))

(declare-fun m!27665 () Bool)

(assert (=> b!34297 m!27665))

(declare-fun m!27667 () Bool)

(assert (=> b!34294 m!27667))

(declare-fun m!27669 () Bool)

(assert (=> b!34292 m!27669))

(declare-fun m!27671 () Bool)

(assert (=> start!4440 m!27671))

(declare-fun m!27673 () Bool)

(assert (=> start!4440 m!27673))

(declare-fun m!27675 () Bool)

(assert (=> start!4440 m!27675))

(check-sat (not b!34293) (not b!34297) (not b!34294) (not b_next!1203) (not b!34292) tp_is_empty!1557 b_and!2027 (not mapNonEmpty!1882) (not start!4440) (not b!34299) (not b!34291))
(check-sat b_and!2027 (not b_next!1203))
