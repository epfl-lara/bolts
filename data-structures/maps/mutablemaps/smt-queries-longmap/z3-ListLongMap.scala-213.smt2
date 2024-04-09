; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3960 () Bool)

(assert start!3960)

(declare-fun b_free!867 () Bool)

(declare-fun b_next!867 () Bool)

(assert (=> start!3960 (= b_free!867 (not b_next!867))))

(declare-fun tp!4020 () Bool)

(declare-fun b_and!1679 () Bool)

(assert (=> start!3960 (= tp!4020 b_and!1679)))

(declare-fun b!28420 () Bool)

(declare-fun res!16910 () Bool)

(declare-fun e!18381 () Bool)

(assert (=> b!28420 (=> (not res!16910) (not e!18381))))

(declare-datatypes ((array!1667 0))(
  ( (array!1668 (arr!787 (Array (_ BitVec 32) (_ BitVec 64))) (size!888 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1667)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28420 (= res!16910 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28421 () Bool)

(declare-fun e!18376 () Bool)

(declare-fun tp_is_empty!1221 () Bool)

(assert (=> b!28421 (= e!18376 tp_is_empty!1221)))

(declare-fun b!28422 () Bool)

(declare-fun e!18378 () Bool)

(assert (=> b!28422 (= e!18378 tp_is_empty!1221)))

(declare-fun b!28423 () Bool)

(declare-fun res!16912 () Bool)

(declare-fun e!18379 () Bool)

(assert (=> b!28423 (=> (not res!16912) (not e!18379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28423 (= res!16912 (validKeyInArray!0 k0!1304))))

(declare-fun b!28424 () Bool)

(declare-fun e!18380 () Bool)

(declare-fun mapRes!1360 () Bool)

(assert (=> b!28424 (= e!18380 (and e!18376 mapRes!1360))))

(declare-fun condMapEmpty!1360 () Bool)

(declare-datatypes ((V!1453 0))(
  ( (V!1454 (val!637 Int)) )
))
(declare-datatypes ((ValueCell!411 0))(
  ( (ValueCellFull!411 (v!1726 V!1453)) (EmptyCell!411) )
))
(declare-datatypes ((array!1669 0))(
  ( (array!1670 (arr!788 (Array (_ BitVec 32) ValueCell!411)) (size!889 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1669)

(declare-fun mapDefault!1360 () ValueCell!411)

(assert (=> b!28424 (= condMapEmpty!1360 (= (arr!788 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!411)) mapDefault!1360)))))

(declare-fun b!28425 () Bool)

(declare-fun e!18377 () Bool)

(assert (=> b!28425 (= e!18381 (not e!18377))))

(declare-fun res!16908 () Bool)

(assert (=> b!28425 (=> res!16908 e!18377)))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28425 (= res!16908 (not (= (size!888 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((tuple2!1042 0))(
  ( (tuple2!1043 (_1!531 (_ BitVec 64)) (_2!531 V!1453)) )
))
(declare-datatypes ((List!656 0))(
  ( (Nil!653) (Cons!652 (h!1219 tuple2!1042) (t!3351 List!656)) )
))
(declare-datatypes ((ListLongMap!623 0))(
  ( (ListLongMap!624 (toList!327 List!656)) )
))
(declare-fun lt!10802 () ListLongMap!623)

(declare-fun lt!10801 () (_ BitVec 32))

(declare-fun contains!264 (ListLongMap!623 (_ BitVec 64)) Bool)

(assert (=> b!28425 (contains!264 lt!10802 (select (arr!787 _keys!1833) lt!10801))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!643 0))(
  ( (Unit!644) )
))
(declare-fun lt!10803 () Unit!643)

(declare-fun zeroValue!1443 () V!1453)

(declare-fun minValue!1443 () V!1453)

(declare-fun lemmaValidKeyInArrayIsInListMap!13 (array!1667 array!1669 (_ BitVec 32) (_ BitVec 32) V!1453 V!1453 (_ BitVec 32) Int) Unit!643)

(assert (=> b!28425 (= lt!10803 (lemmaValidKeyInArrayIsInListMap!13 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10801 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1667 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28425 (= lt!10801 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28426 () Bool)

(declare-fun res!16911 () Bool)

(assert (=> b!28426 (=> (not res!16911) (not e!18379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1667 (_ BitVec 32)) Bool)

(assert (=> b!28426 (= res!16911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28427 () Bool)

(declare-fun res!16914 () Bool)

(assert (=> b!28427 (=> (not res!16914) (not e!18379))))

(declare-datatypes ((List!657 0))(
  ( (Nil!654) (Cons!653 (h!1220 (_ BitVec 64)) (t!3352 List!657)) )
))
(declare-fun arrayNoDuplicates!0 (array!1667 (_ BitVec 32) List!657) Bool)

(assert (=> b!28427 (= res!16914 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!654))))

(declare-fun res!16913 () Bool)

(assert (=> start!3960 (=> (not res!16913) (not e!18379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3960 (= res!16913 (validMask!0 mask!2294))))

(assert (=> start!3960 e!18379))

(assert (=> start!3960 true))

(assert (=> start!3960 tp!4020))

(declare-fun array_inv!533 (array!1669) Bool)

(assert (=> start!3960 (and (array_inv!533 _values!1501) e!18380)))

(declare-fun array_inv!534 (array!1667) Bool)

(assert (=> start!3960 (array_inv!534 _keys!1833)))

(assert (=> start!3960 tp_is_empty!1221))

(declare-fun b!28428 () Bool)

(assert (=> b!28428 (= e!18377 true)))

(declare-datatypes ((SeekEntryResult!71 0))(
  ( (MissingZero!71 (index!2406 (_ BitVec 32))) (Found!71 (index!2407 (_ BitVec 32))) (Intermediate!71 (undefined!883 Bool) (index!2408 (_ BitVec 32)) (x!6317 (_ BitVec 32))) (Undefined!71) (MissingVacant!71 (index!2409 (_ BitVec 32))) )
))
(declare-fun lt!10800 () SeekEntryResult!71)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1667 (_ BitVec 32)) SeekEntryResult!71)

(assert (=> b!28428 (= lt!10800 (seekEntryOrOpen!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!28429 () Bool)

(assert (=> b!28429 (= e!18379 e!18381)))

(declare-fun res!16909 () Bool)

(assert (=> b!28429 (=> (not res!16909) (not e!18381))))

(assert (=> b!28429 (= res!16909 (not (contains!264 lt!10802 k0!1304)))))

(declare-fun getCurrentListMap!155 (array!1667 array!1669 (_ BitVec 32) (_ BitVec 32) V!1453 V!1453 (_ BitVec 32) Int) ListLongMap!623)

(assert (=> b!28429 (= lt!10802 (getCurrentListMap!155 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28430 () Bool)

(declare-fun res!16915 () Bool)

(assert (=> b!28430 (=> (not res!16915) (not e!18379))))

(assert (=> b!28430 (= res!16915 (and (= (size!889 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!888 _keys!1833) (size!889 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1360 () Bool)

(assert (=> mapIsEmpty!1360 mapRes!1360))

(declare-fun mapNonEmpty!1360 () Bool)

(declare-fun tp!4021 () Bool)

(assert (=> mapNonEmpty!1360 (= mapRes!1360 (and tp!4021 e!18378))))

(declare-fun mapKey!1360 () (_ BitVec 32))

(declare-fun mapValue!1360 () ValueCell!411)

(declare-fun mapRest!1360 () (Array (_ BitVec 32) ValueCell!411))

(assert (=> mapNonEmpty!1360 (= (arr!788 _values!1501) (store mapRest!1360 mapKey!1360 mapValue!1360))))

(assert (= (and start!3960 res!16913) b!28430))

(assert (= (and b!28430 res!16915) b!28426))

(assert (= (and b!28426 res!16911) b!28427))

(assert (= (and b!28427 res!16914) b!28423))

(assert (= (and b!28423 res!16912) b!28429))

(assert (= (and b!28429 res!16909) b!28420))

(assert (= (and b!28420 res!16910) b!28425))

(assert (= (and b!28425 (not res!16908)) b!28428))

(assert (= (and b!28424 condMapEmpty!1360) mapIsEmpty!1360))

(assert (= (and b!28424 (not condMapEmpty!1360)) mapNonEmpty!1360))

(get-info :version)

(assert (= (and mapNonEmpty!1360 ((_ is ValueCellFull!411) mapValue!1360)) b!28422))

(assert (= (and b!28424 ((_ is ValueCellFull!411) mapDefault!1360)) b!28421))

(assert (= start!3960 b!28424))

(declare-fun m!22629 () Bool)

(assert (=> b!28429 m!22629))

(declare-fun m!22631 () Bool)

(assert (=> b!28429 m!22631))

(declare-fun m!22633 () Bool)

(assert (=> mapNonEmpty!1360 m!22633))

(declare-fun m!22635 () Bool)

(assert (=> start!3960 m!22635))

(declare-fun m!22637 () Bool)

(assert (=> start!3960 m!22637))

(declare-fun m!22639 () Bool)

(assert (=> start!3960 m!22639))

(declare-fun m!22641 () Bool)

(assert (=> b!28426 m!22641))

(declare-fun m!22643 () Bool)

(assert (=> b!28427 m!22643))

(declare-fun m!22645 () Bool)

(assert (=> b!28423 m!22645))

(declare-fun m!22647 () Bool)

(assert (=> b!28420 m!22647))

(declare-fun m!22649 () Bool)

(assert (=> b!28425 m!22649))

(assert (=> b!28425 m!22649))

(declare-fun m!22651 () Bool)

(assert (=> b!28425 m!22651))

(declare-fun m!22653 () Bool)

(assert (=> b!28425 m!22653))

(declare-fun m!22655 () Bool)

(assert (=> b!28425 m!22655))

(declare-fun m!22657 () Bool)

(assert (=> b!28428 m!22657))

(check-sat tp_is_empty!1221 b_and!1679 (not b!28420) (not b!28426) (not mapNonEmpty!1360) (not b!28423) (not b_next!867) (not b!28428) (not start!3960) (not b!28427) (not b!28425) (not b!28429))
(check-sat b_and!1679 (not b_next!867))
