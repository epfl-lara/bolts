; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4574 () Bool)

(assert start!4574)

(declare-fun b_free!1275 () Bool)

(declare-fun b_next!1275 () Bool)

(assert (=> start!4574 (= b_free!1275 (not b_next!1275))))

(declare-fun tp!5272 () Bool)

(declare-fun b_and!2105 () Bool)

(assert (=> start!4574 (= tp!5272 b_and!2105)))

(declare-fun b!35798 () Bool)

(declare-fun e!22618 () Bool)

(assert (=> b!35798 (= e!22618 (not true))))

(declare-datatypes ((V!1997 0))(
  ( (V!1998 (val!841 Int)) )
))
(declare-datatypes ((tuple2!1348 0))(
  ( (tuple2!1349 (_1!684 (_ BitVec 64)) (_2!684 V!1997)) )
))
(declare-datatypes ((List!955 0))(
  ( (Nil!952) (Cons!951 (h!1518 tuple2!1348) (t!3668 List!955)) )
))
(declare-datatypes ((ListLongMap!929 0))(
  ( (ListLongMap!930 (toList!480 List!955)) )
))
(declare-fun lt!13213 () ListLongMap!929)

(declare-datatypes ((array!2469 0))(
  ( (array!2470 (arr!1179 (Array (_ BitVec 32) (_ BitVec 64))) (size!1280 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2469)

(declare-datatypes ((SeekEntryResult!172 0))(
  ( (MissingZero!172 (index!2810 (_ BitVec 32))) (Found!172 (index!2811 (_ BitVec 32))) (Intermediate!172 (undefined!984 Bool) (index!2812 (_ BitVec 32)) (x!7052 (_ BitVec 32))) (Undefined!172) (MissingVacant!172 (index!2813 (_ BitVec 32))) )
))
(declare-fun lt!13212 () SeekEntryResult!172)

(declare-fun contains!426 (ListLongMap!929 (_ BitVec 64)) Bool)

(assert (=> b!35798 (contains!426 lt!13213 (select (arr!1179 _keys!1833) (index!2811 lt!13212)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!615 0))(
  ( (ValueCellFull!615 (v!1939 V!1997)) (EmptyCell!615) )
))
(declare-datatypes ((array!2471 0))(
  ( (array!2472 (arr!1180 (Array (_ BitVec 32) ValueCell!615)) (size!1281 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2471)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((Unit!788 0))(
  ( (Unit!789) )
))
(declare-fun lt!13214 () Unit!788)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1997)

(declare-fun minValue!1443 () V!1997)

(declare-fun lemmaValidKeyInArrayIsInListMap!70 (array!2469 array!2471 (_ BitVec 32) (_ BitVec 32) V!1997 V!1997 (_ BitVec 32) Int) Unit!788)

(assert (=> b!35798 (= lt!13214 (lemmaValidKeyInArrayIsInListMap!70 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2811 lt!13212) defaultEntry!1504))))

(declare-fun mapIsEmpty!1999 () Bool)

(declare-fun mapRes!1999 () Bool)

(assert (=> mapIsEmpty!1999 mapRes!1999))

(declare-fun b!35799 () Bool)

(declare-fun e!22620 () Bool)

(declare-fun tp_is_empty!1629 () Bool)

(assert (=> b!35799 (= e!22620 tp_is_empty!1629)))

(declare-fun b!35800 () Bool)

(declare-fun res!21703 () Bool)

(declare-fun e!22617 () Bool)

(assert (=> b!35800 (=> (not res!21703) (not e!22617))))

(assert (=> b!35800 (= res!21703 (and (= (size!1281 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1280 _keys!1833) (size!1281 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35801 () Bool)

(declare-fun res!21702 () Bool)

(assert (=> b!35801 (=> (not res!21702) (not e!22617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2469 (_ BitVec 32)) Bool)

(assert (=> b!35801 (= res!21702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35802 () Bool)

(declare-fun e!22621 () Bool)

(assert (=> b!35802 (= e!22621 tp_is_empty!1629)))

(declare-fun b!35803 () Bool)

(declare-fun e!22619 () Bool)

(assert (=> b!35803 (= e!22619 e!22618)))

(declare-fun res!21707 () Bool)

(assert (=> b!35803 (=> (not res!21707) (not e!22618))))

(get-info :version)

(assert (=> b!35803 (= res!21707 ((_ is Found!172) lt!13212))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2469 (_ BitVec 32)) SeekEntryResult!172)

(assert (=> b!35803 (= lt!13212 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!35804 () Bool)

(declare-fun res!21701 () Bool)

(assert (=> b!35804 (=> (not res!21701) (not e!22617))))

(declare-datatypes ((List!956 0))(
  ( (Nil!953) (Cons!952 (h!1519 (_ BitVec 64)) (t!3669 List!956)) )
))
(declare-fun arrayNoDuplicates!0 (array!2469 (_ BitVec 32) List!956) Bool)

(assert (=> b!35804 (= res!21701 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!953))))

(declare-fun b!35805 () Bool)

(declare-fun e!22622 () Bool)

(assert (=> b!35805 (= e!22622 (and e!22621 mapRes!1999))))

(declare-fun condMapEmpty!1999 () Bool)

(declare-fun mapDefault!1999 () ValueCell!615)

(assert (=> b!35805 (= condMapEmpty!1999 (= (arr!1180 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!615)) mapDefault!1999)))))

(declare-fun res!21705 () Bool)

(assert (=> start!4574 (=> (not res!21705) (not e!22617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4574 (= res!21705 (validMask!0 mask!2294))))

(assert (=> start!4574 e!22617))

(assert (=> start!4574 true))

(assert (=> start!4574 tp!5272))

(declare-fun array_inv!779 (array!2471) Bool)

(assert (=> start!4574 (and (array_inv!779 _values!1501) e!22622)))

(declare-fun array_inv!780 (array!2469) Bool)

(assert (=> start!4574 (array_inv!780 _keys!1833)))

(assert (=> start!4574 tp_is_empty!1629))

(declare-fun b!35806 () Bool)

(declare-fun res!21704 () Bool)

(assert (=> b!35806 (=> (not res!21704) (not e!22619))))

(declare-fun arrayContainsKey!0 (array!2469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35806 (= res!21704 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35807 () Bool)

(assert (=> b!35807 (= e!22617 e!22619)))

(declare-fun res!21706 () Bool)

(assert (=> b!35807 (=> (not res!21706) (not e!22619))))

(assert (=> b!35807 (= res!21706 (not (contains!426 lt!13213 k0!1304)))))

(declare-fun getCurrentListMap!301 (array!2469 array!2471 (_ BitVec 32) (_ BitVec 32) V!1997 V!1997 (_ BitVec 32) Int) ListLongMap!929)

(assert (=> b!35807 (= lt!13213 (getCurrentListMap!301 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapNonEmpty!1999 () Bool)

(declare-fun tp!5271 () Bool)

(assert (=> mapNonEmpty!1999 (= mapRes!1999 (and tp!5271 e!22620))))

(declare-fun mapValue!1999 () ValueCell!615)

(declare-fun mapKey!1999 () (_ BitVec 32))

(declare-fun mapRest!1999 () (Array (_ BitVec 32) ValueCell!615))

(assert (=> mapNonEmpty!1999 (= (arr!1180 _values!1501) (store mapRest!1999 mapKey!1999 mapValue!1999))))

(declare-fun b!35808 () Bool)

(declare-fun res!21700 () Bool)

(assert (=> b!35808 (=> (not res!21700) (not e!22617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35808 (= res!21700 (validKeyInArray!0 k0!1304))))

(assert (= (and start!4574 res!21705) b!35800))

(assert (= (and b!35800 res!21703) b!35801))

(assert (= (and b!35801 res!21702) b!35804))

(assert (= (and b!35804 res!21701) b!35808))

(assert (= (and b!35808 res!21700) b!35807))

(assert (= (and b!35807 res!21706) b!35806))

(assert (= (and b!35806 res!21704) b!35803))

(assert (= (and b!35803 res!21707) b!35798))

(assert (= (and b!35805 condMapEmpty!1999) mapIsEmpty!1999))

(assert (= (and b!35805 (not condMapEmpty!1999)) mapNonEmpty!1999))

(assert (= (and mapNonEmpty!1999 ((_ is ValueCellFull!615) mapValue!1999)) b!35799))

(assert (= (and b!35805 ((_ is ValueCellFull!615) mapDefault!1999)) b!35802))

(assert (= start!4574 b!35805))

(declare-fun m!28785 () Bool)

(assert (=> b!35804 m!28785))

(declare-fun m!28787 () Bool)

(assert (=> b!35801 m!28787))

(declare-fun m!28789 () Bool)

(assert (=> b!35808 m!28789))

(declare-fun m!28791 () Bool)

(assert (=> b!35798 m!28791))

(assert (=> b!35798 m!28791))

(declare-fun m!28793 () Bool)

(assert (=> b!35798 m!28793))

(declare-fun m!28795 () Bool)

(assert (=> b!35798 m!28795))

(declare-fun m!28797 () Bool)

(assert (=> b!35806 m!28797))

(declare-fun m!28799 () Bool)

(assert (=> b!35807 m!28799))

(declare-fun m!28801 () Bool)

(assert (=> b!35807 m!28801))

(declare-fun m!28803 () Bool)

(assert (=> mapNonEmpty!1999 m!28803))

(declare-fun m!28805 () Bool)

(assert (=> b!35803 m!28805))

(declare-fun m!28807 () Bool)

(assert (=> start!4574 m!28807))

(declare-fun m!28809 () Bool)

(assert (=> start!4574 m!28809))

(declare-fun m!28811 () Bool)

(assert (=> start!4574 m!28811))

(check-sat (not b!35808) (not b!35803) (not b!35798) (not start!4574) (not b!35801) tp_is_empty!1629 (not mapNonEmpty!1999) b_and!2105 (not b_next!1275) (not b!35806) (not b!35804) (not b!35807))
(check-sat b_and!2105 (not b_next!1275))
