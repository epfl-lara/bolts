; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3966 () Bool)

(assert start!3966)

(declare-fun b_free!873 () Bool)

(declare-fun b_next!873 () Bool)

(assert (=> start!3966 (= b_free!873 (not b_next!873))))

(declare-fun tp!4039 () Bool)

(declare-fun b_and!1685 () Bool)

(assert (=> start!3966 (= tp!4039 b_and!1685)))

(declare-fun res!16987 () Bool)

(declare-fun e!18440 () Bool)

(assert (=> start!3966 (=> (not res!16987) (not e!18440))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3966 (= res!16987 (validMask!0 mask!2294))))

(assert (=> start!3966 e!18440))

(assert (=> start!3966 true))

(assert (=> start!3966 tp!4039))

(declare-datatypes ((V!1461 0))(
  ( (V!1462 (val!640 Int)) )
))
(declare-datatypes ((ValueCell!414 0))(
  ( (ValueCellFull!414 (v!1729 V!1461)) (EmptyCell!414) )
))
(declare-datatypes ((array!1679 0))(
  ( (array!1680 (arr!793 (Array (_ BitVec 32) ValueCell!414)) (size!894 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1679)

(declare-fun e!18441 () Bool)

(declare-fun array_inv!539 (array!1679) Bool)

(assert (=> start!3966 (and (array_inv!539 _values!1501) e!18441)))

(declare-datatypes ((array!1681 0))(
  ( (array!1682 (arr!794 (Array (_ BitVec 32) (_ BitVec 64))) (size!895 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1681)

(declare-fun array_inv!540 (array!1681) Bool)

(assert (=> start!3966 (array_inv!540 _keys!1833)))

(declare-fun tp_is_empty!1227 () Bool)

(assert (=> start!3966 tp_is_empty!1227))

(declare-fun b!28519 () Bool)

(declare-fun res!16982 () Bool)

(assert (=> b!28519 (=> (not res!16982) (not e!18440))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!28519 (= res!16982 (and (= (size!894 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!895 _keys!1833) (size!894 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28520 () Bool)

(declare-fun e!18443 () Bool)

(assert (=> b!28520 (= e!18443 tp_is_empty!1227)))

(declare-fun b!28521 () Bool)

(declare-fun res!16980 () Bool)

(declare-fun e!18444 () Bool)

(assert (=> b!28521 (=> (not res!16980) (not e!18444))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28521 (= res!16980 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1369 () Bool)

(declare-fun mapRes!1369 () Bool)

(assert (=> mapIsEmpty!1369 mapRes!1369))

(declare-fun b!28522 () Bool)

(declare-fun e!18439 () Bool)

(assert (=> b!28522 (= e!18441 (and e!18439 mapRes!1369))))

(declare-fun condMapEmpty!1369 () Bool)

(declare-fun mapDefault!1369 () ValueCell!414)

(assert (=> b!28522 (= condMapEmpty!1369 (= (arr!793 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!414)) mapDefault!1369)))))

(declare-fun b!28523 () Bool)

(assert (=> b!28523 (= e!18439 tp_is_empty!1227)))

(declare-fun b!28524 () Bool)

(assert (=> b!28524 (= e!18440 e!18444)))

(declare-fun res!16983 () Bool)

(assert (=> b!28524 (=> (not res!16983) (not e!18444))))

(declare-datatypes ((tuple2!1048 0))(
  ( (tuple2!1049 (_1!534 (_ BitVec 64)) (_2!534 V!1461)) )
))
(declare-datatypes ((List!662 0))(
  ( (Nil!659) (Cons!658 (h!1225 tuple2!1048) (t!3357 List!662)) )
))
(declare-datatypes ((ListLongMap!629 0))(
  ( (ListLongMap!630 (toList!330 List!662)) )
))
(declare-fun lt!10836 () ListLongMap!629)

(declare-fun contains!267 (ListLongMap!629 (_ BitVec 64)) Bool)

(assert (=> b!28524 (= res!16983 (not (contains!267 lt!10836 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1461)

(declare-fun minValue!1443 () V!1461)

(declare-fun getCurrentListMap!157 (array!1681 array!1679 (_ BitVec 32) (_ BitVec 32) V!1461 V!1461 (_ BitVec 32) Int) ListLongMap!629)

(assert (=> b!28524 (= lt!10836 (getCurrentListMap!157 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28525 () Bool)

(declare-fun res!16985 () Bool)

(assert (=> b!28525 (=> (not res!16985) (not e!18440))))

(declare-datatypes ((List!663 0))(
  ( (Nil!660) (Cons!659 (h!1226 (_ BitVec 64)) (t!3358 List!663)) )
))
(declare-fun arrayNoDuplicates!0 (array!1681 (_ BitVec 32) List!663) Bool)

(assert (=> b!28525 (= res!16985 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!660))))

(declare-fun b!28526 () Bool)

(declare-fun e!18442 () Bool)

(assert (=> b!28526 (= e!18442 true)))

(declare-datatypes ((SeekEntryResult!74 0))(
  ( (MissingZero!74 (index!2418 (_ BitVec 32))) (Found!74 (index!2419 (_ BitVec 32))) (Intermediate!74 (undefined!886 Bool) (index!2420 (_ BitVec 32)) (x!6328 (_ BitVec 32))) (Undefined!74) (MissingVacant!74 (index!2421 (_ BitVec 32))) )
))
(declare-fun lt!10838 () SeekEntryResult!74)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1681 (_ BitVec 32)) SeekEntryResult!74)

(assert (=> b!28526 (= lt!10838 (seekEntryOrOpen!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!28527 () Bool)

(declare-fun res!16984 () Bool)

(assert (=> b!28527 (=> (not res!16984) (not e!18440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28527 (= res!16984 (validKeyInArray!0 k0!1304))))

(declare-fun b!28528 () Bool)

(assert (=> b!28528 (= e!18444 (not e!18442))))

(declare-fun res!16981 () Bool)

(assert (=> b!28528 (=> res!16981 e!18442)))

(assert (=> b!28528 (= res!16981 (not (= (size!895 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun lt!10837 () (_ BitVec 32))

(assert (=> b!28528 (contains!267 lt!10836 (select (arr!794 _keys!1833) lt!10837))))

(declare-datatypes ((Unit!649 0))(
  ( (Unit!650) )
))
(declare-fun lt!10839 () Unit!649)

(declare-fun lemmaValidKeyInArrayIsInListMap!16 (array!1681 array!1679 (_ BitVec 32) (_ BitVec 32) V!1461 V!1461 (_ BitVec 32) Int) Unit!649)

(assert (=> b!28528 (= lt!10839 (lemmaValidKeyInArrayIsInListMap!16 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10837 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1681 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28528 (= lt!10837 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1369 () Bool)

(declare-fun tp!4038 () Bool)

(assert (=> mapNonEmpty!1369 (= mapRes!1369 (and tp!4038 e!18443))))

(declare-fun mapValue!1369 () ValueCell!414)

(declare-fun mapKey!1369 () (_ BitVec 32))

(declare-fun mapRest!1369 () (Array (_ BitVec 32) ValueCell!414))

(assert (=> mapNonEmpty!1369 (= (arr!793 _values!1501) (store mapRest!1369 mapKey!1369 mapValue!1369))))

(declare-fun b!28529 () Bool)

(declare-fun res!16986 () Bool)

(assert (=> b!28529 (=> (not res!16986) (not e!18440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1681 (_ BitVec 32)) Bool)

(assert (=> b!28529 (= res!16986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!3966 res!16987) b!28519))

(assert (= (and b!28519 res!16982) b!28529))

(assert (= (and b!28529 res!16986) b!28525))

(assert (= (and b!28525 res!16985) b!28527))

(assert (= (and b!28527 res!16984) b!28524))

(assert (= (and b!28524 res!16983) b!28521))

(assert (= (and b!28521 res!16980) b!28528))

(assert (= (and b!28528 (not res!16981)) b!28526))

(assert (= (and b!28522 condMapEmpty!1369) mapIsEmpty!1369))

(assert (= (and b!28522 (not condMapEmpty!1369)) mapNonEmpty!1369))

(get-info :version)

(assert (= (and mapNonEmpty!1369 ((_ is ValueCellFull!414) mapValue!1369)) b!28520))

(assert (= (and b!28522 ((_ is ValueCellFull!414) mapDefault!1369)) b!28523))

(assert (= start!3966 b!28522))

(declare-fun m!22719 () Bool)

(assert (=> start!3966 m!22719))

(declare-fun m!22721 () Bool)

(assert (=> start!3966 m!22721))

(declare-fun m!22723 () Bool)

(assert (=> start!3966 m!22723))

(declare-fun m!22725 () Bool)

(assert (=> b!28528 m!22725))

(assert (=> b!28528 m!22725))

(declare-fun m!22727 () Bool)

(assert (=> b!28528 m!22727))

(declare-fun m!22729 () Bool)

(assert (=> b!28528 m!22729))

(declare-fun m!22731 () Bool)

(assert (=> b!28528 m!22731))

(declare-fun m!22733 () Bool)

(assert (=> b!28526 m!22733))

(declare-fun m!22735 () Bool)

(assert (=> b!28525 m!22735))

(declare-fun m!22737 () Bool)

(assert (=> b!28527 m!22737))

(declare-fun m!22739 () Bool)

(assert (=> mapNonEmpty!1369 m!22739))

(declare-fun m!22741 () Bool)

(assert (=> b!28529 m!22741))

(declare-fun m!22743 () Bool)

(assert (=> b!28524 m!22743))

(declare-fun m!22745 () Bool)

(assert (=> b!28524 m!22745))

(declare-fun m!22747 () Bool)

(assert (=> b!28521 m!22747))

(check-sat b_and!1685 (not start!3966) (not b!28524) (not mapNonEmpty!1369) (not b!28527) (not b!28529) (not b!28528) (not b_next!873) (not b!28521) (not b!28525) (not b!28526) tp_is_empty!1227)
(check-sat b_and!1685 (not b_next!873))
