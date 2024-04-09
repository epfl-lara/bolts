; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3972 () Bool)

(assert start!3972)

(declare-fun b_free!879 () Bool)

(declare-fun b_next!879 () Bool)

(assert (=> start!3972 (= b_free!879 (not b_next!879))))

(declare-fun tp!4056 () Bool)

(declare-fun b_and!1691 () Bool)

(assert (=> start!3972 (= tp!4056 b_and!1691)))

(declare-fun b!28618 () Bool)

(declare-fun res!17055 () Bool)

(declare-fun e!18505 () Bool)

(assert (=> b!28618 (=> (not res!17055) (not e!18505))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28618 (= res!17055 (validKeyInArray!0 k0!1304))))

(declare-fun b!28619 () Bool)

(declare-fun e!18506 () Bool)

(declare-fun e!18502 () Bool)

(assert (=> b!28619 (= e!18506 (not e!18502))))

(declare-fun res!17059 () Bool)

(assert (=> b!28619 (=> res!17059 e!18502)))

(declare-datatypes ((array!1691 0))(
  ( (array!1692 (arr!799 (Array (_ BitVec 32) (_ BitVec 64))) (size!900 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1691)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28619 (= res!17059 (not (= (size!900 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((V!1469 0))(
  ( (V!1470 (val!643 Int)) )
))
(declare-datatypes ((tuple2!1054 0))(
  ( (tuple2!1055 (_1!537 (_ BitVec 64)) (_2!537 V!1469)) )
))
(declare-datatypes ((List!667 0))(
  ( (Nil!664) (Cons!663 (h!1230 tuple2!1054) (t!3362 List!667)) )
))
(declare-datatypes ((ListLongMap!635 0))(
  ( (ListLongMap!636 (toList!333 List!667)) )
))
(declare-fun lt!10874 () ListLongMap!635)

(declare-fun lt!10872 () (_ BitVec 32))

(declare-fun contains!270 (ListLongMap!635 (_ BitVec 64)) Bool)

(assert (=> b!28619 (contains!270 lt!10874 (select (arr!799 _keys!1833) lt!10872))))

(declare-datatypes ((ValueCell!417 0))(
  ( (ValueCellFull!417 (v!1732 V!1469)) (EmptyCell!417) )
))
(declare-datatypes ((array!1693 0))(
  ( (array!1694 (arr!800 (Array (_ BitVec 32) ValueCell!417)) (size!901 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1693)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!651 0))(
  ( (Unit!652) )
))
(declare-fun lt!10875 () Unit!651)

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1469)

(declare-fun minValue!1443 () V!1469)

(declare-fun lemmaValidKeyInArrayIsInListMap!17 (array!1691 array!1693 (_ BitVec 32) (_ BitVec 32) V!1469 V!1469 (_ BitVec 32) Int) Unit!651)

(assert (=> b!28619 (= lt!10875 (lemmaValidKeyInArrayIsInListMap!17 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10872 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1691 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28619 (= lt!10872 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28620 () Bool)

(declare-fun res!17057 () Bool)

(assert (=> b!28620 (=> (not res!17057) (not e!18505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1691 (_ BitVec 32)) Bool)

(assert (=> b!28620 (= res!17057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28621 () Bool)

(declare-fun e!18504 () Bool)

(declare-fun tp_is_empty!1233 () Bool)

(assert (=> b!28621 (= e!18504 tp_is_empty!1233)))

(declare-fun b!28622 () Bool)

(assert (=> b!28622 (= e!18502 true)))

(declare-datatypes ((SeekEntryResult!76 0))(
  ( (MissingZero!76 (index!2426 (_ BitVec 32))) (Found!76 (index!2427 (_ BitVec 32))) (Intermediate!76 (undefined!888 Bool) (index!2428 (_ BitVec 32)) (x!6338 (_ BitVec 32))) (Undefined!76) (MissingVacant!76 (index!2429 (_ BitVec 32))) )
))
(declare-fun lt!10873 () SeekEntryResult!76)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1691 (_ BitVec 32)) SeekEntryResult!76)

(assert (=> b!28622 (= lt!10873 (seekEntryOrOpen!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!28623 () Bool)

(declare-fun e!18507 () Bool)

(declare-fun mapRes!1378 () Bool)

(assert (=> b!28623 (= e!18507 (and e!18504 mapRes!1378))))

(declare-fun condMapEmpty!1378 () Bool)

(declare-fun mapDefault!1378 () ValueCell!417)

(assert (=> b!28623 (= condMapEmpty!1378 (= (arr!800 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!417)) mapDefault!1378)))))

(declare-fun b!28625 () Bool)

(declare-fun res!17053 () Bool)

(assert (=> b!28625 (=> (not res!17053) (not e!18505))))

(declare-datatypes ((List!668 0))(
  ( (Nil!665) (Cons!664 (h!1231 (_ BitVec 64)) (t!3363 List!668)) )
))
(declare-fun arrayNoDuplicates!0 (array!1691 (_ BitVec 32) List!668) Bool)

(assert (=> b!28625 (= res!17053 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!665))))

(declare-fun mapNonEmpty!1378 () Bool)

(declare-fun tp!4057 () Bool)

(declare-fun e!18508 () Bool)

(assert (=> mapNonEmpty!1378 (= mapRes!1378 (and tp!4057 e!18508))))

(declare-fun mapRest!1378 () (Array (_ BitVec 32) ValueCell!417))

(declare-fun mapValue!1378 () ValueCell!417)

(declare-fun mapKey!1378 () (_ BitVec 32))

(assert (=> mapNonEmpty!1378 (= (arr!800 _values!1501) (store mapRest!1378 mapKey!1378 mapValue!1378))))

(declare-fun b!28626 () Bool)

(assert (=> b!28626 (= e!18505 e!18506)))

(declare-fun res!17052 () Bool)

(assert (=> b!28626 (=> (not res!17052) (not e!18506))))

(assert (=> b!28626 (= res!17052 (not (contains!270 lt!10874 k0!1304)))))

(declare-fun getCurrentListMap!160 (array!1691 array!1693 (_ BitVec 32) (_ BitVec 32) V!1469 V!1469 (_ BitVec 32) Int) ListLongMap!635)

(assert (=> b!28626 (= lt!10874 (getCurrentListMap!160 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28627 () Bool)

(declare-fun res!17058 () Bool)

(assert (=> b!28627 (=> (not res!17058) (not e!18506))))

(declare-fun arrayContainsKey!0 (array!1691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28627 (= res!17058 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28628 () Bool)

(assert (=> b!28628 (= e!18508 tp_is_empty!1233)))

(declare-fun mapIsEmpty!1378 () Bool)

(assert (=> mapIsEmpty!1378 mapRes!1378))

(declare-fun res!17054 () Bool)

(assert (=> start!3972 (=> (not res!17054) (not e!18505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3972 (= res!17054 (validMask!0 mask!2294))))

(assert (=> start!3972 e!18505))

(assert (=> start!3972 true))

(assert (=> start!3972 tp!4056))

(declare-fun array_inv!541 (array!1693) Bool)

(assert (=> start!3972 (and (array_inv!541 _values!1501) e!18507)))

(declare-fun array_inv!542 (array!1691) Bool)

(assert (=> start!3972 (array_inv!542 _keys!1833)))

(assert (=> start!3972 tp_is_empty!1233))

(declare-fun b!28624 () Bool)

(declare-fun res!17056 () Bool)

(assert (=> b!28624 (=> (not res!17056) (not e!18505))))

(assert (=> b!28624 (= res!17056 (and (= (size!901 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!900 _keys!1833) (size!901 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(assert (= (and start!3972 res!17054) b!28624))

(assert (= (and b!28624 res!17056) b!28620))

(assert (= (and b!28620 res!17057) b!28625))

(assert (= (and b!28625 res!17053) b!28618))

(assert (= (and b!28618 res!17055) b!28626))

(assert (= (and b!28626 res!17052) b!28627))

(assert (= (and b!28627 res!17058) b!28619))

(assert (= (and b!28619 (not res!17059)) b!28622))

(assert (= (and b!28623 condMapEmpty!1378) mapIsEmpty!1378))

(assert (= (and b!28623 (not condMapEmpty!1378)) mapNonEmpty!1378))

(get-info :version)

(assert (= (and mapNonEmpty!1378 ((_ is ValueCellFull!417) mapValue!1378)) b!28628))

(assert (= (and b!28623 ((_ is ValueCellFull!417) mapDefault!1378)) b!28621))

(assert (= start!3972 b!28623))

(declare-fun m!22809 () Bool)

(assert (=> mapNonEmpty!1378 m!22809))

(declare-fun m!22811 () Bool)

(assert (=> b!28626 m!22811))

(declare-fun m!22813 () Bool)

(assert (=> b!28626 m!22813))

(declare-fun m!22815 () Bool)

(assert (=> b!28625 m!22815))

(declare-fun m!22817 () Bool)

(assert (=> b!28619 m!22817))

(assert (=> b!28619 m!22817))

(declare-fun m!22819 () Bool)

(assert (=> b!28619 m!22819))

(declare-fun m!22821 () Bool)

(assert (=> b!28619 m!22821))

(declare-fun m!22823 () Bool)

(assert (=> b!28619 m!22823))

(declare-fun m!22825 () Bool)

(assert (=> b!28618 m!22825))

(declare-fun m!22827 () Bool)

(assert (=> start!3972 m!22827))

(declare-fun m!22829 () Bool)

(assert (=> start!3972 m!22829))

(declare-fun m!22831 () Bool)

(assert (=> start!3972 m!22831))

(declare-fun m!22833 () Bool)

(assert (=> b!28627 m!22833))

(declare-fun m!22835 () Bool)

(assert (=> b!28620 m!22835))

(declare-fun m!22837 () Bool)

(assert (=> b!28622 m!22837))

(check-sat (not b!28622) (not b!28625) tp_is_empty!1233 b_and!1691 (not b_next!879) (not b!28626) (not start!3972) (not b!28627) (not b!28619) (not b!28620) (not mapNonEmpty!1378) (not b!28618))
(check-sat b_and!1691 (not b_next!879))
