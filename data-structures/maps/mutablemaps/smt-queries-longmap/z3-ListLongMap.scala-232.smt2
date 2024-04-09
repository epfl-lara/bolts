; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4074 () Bool)

(assert start!4074)

(declare-fun b_free!981 () Bool)

(declare-fun b_next!981 () Bool)

(assert (=> start!4074 (= b_free!981 (not b_next!981))))

(declare-fun tp!4362 () Bool)

(declare-fun b_and!1793 () Bool)

(assert (=> start!4074 (= tp!4362 b_and!1793)))

(declare-fun b!30134 () Bool)

(declare-fun e!19385 () Bool)

(assert (=> b!30134 (= e!19385 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((array!1887 0))(
  ( (array!1888 (arr!897 (Array (_ BitVec 32) (_ BitVec 64))) (size!998 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1887)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!101 0))(
  ( (MissingZero!101 (index!2526 (_ BitVec 32))) (Found!101 (index!2527 (_ BitVec 32))) (Intermediate!101 (undefined!913 Bool) (index!2528 (_ BitVec 32)) (x!6499 (_ BitVec 32))) (Undefined!101) (MissingVacant!101 (index!2529 (_ BitVec 32))) )
))
(declare-fun lt!11397 () SeekEntryResult!101)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1887 (_ BitVec 32)) SeekEntryResult!101)

(assert (=> b!30134 (= lt!11397 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!30135 () Bool)

(declare-fun res!18109 () Bool)

(assert (=> b!30135 (=> (not res!18109) (not e!19385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1887 (_ BitVec 32)) Bool)

(assert (=> b!30135 (= res!18109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30136 () Bool)

(declare-fun e!19387 () Bool)

(declare-fun e!19383 () Bool)

(declare-fun mapRes!1531 () Bool)

(assert (=> b!30136 (= e!19387 (and e!19383 mapRes!1531))))

(declare-fun condMapEmpty!1531 () Bool)

(declare-datatypes ((V!1605 0))(
  ( (V!1606 (val!694 Int)) )
))
(declare-datatypes ((ValueCell!468 0))(
  ( (ValueCellFull!468 (v!1783 V!1605)) (EmptyCell!468) )
))
(declare-datatypes ((array!1889 0))(
  ( (array!1890 (arr!898 (Array (_ BitVec 32) ValueCell!468)) (size!999 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1889)

(declare-fun mapDefault!1531 () ValueCell!468)

(assert (=> b!30136 (= condMapEmpty!1531 (= (arr!898 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!468)) mapDefault!1531)))))

(declare-fun mapNonEmpty!1531 () Bool)

(declare-fun tp!4363 () Bool)

(declare-fun e!19384 () Bool)

(assert (=> mapNonEmpty!1531 (= mapRes!1531 (and tp!4363 e!19384))))

(declare-fun mapRest!1531 () (Array (_ BitVec 32) ValueCell!468))

(declare-fun mapKey!1531 () (_ BitVec 32))

(declare-fun mapValue!1531 () ValueCell!468)

(assert (=> mapNonEmpty!1531 (= (arr!898 _values!1501) (store mapRest!1531 mapKey!1531 mapValue!1531))))

(declare-fun b!30137 () Bool)

(declare-fun res!18110 () Bool)

(assert (=> b!30137 (=> (not res!18110) (not e!19385))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!30137 (= res!18110 (and (= (size!999 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!998 _keys!1833) (size!999 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1531 () Bool)

(assert (=> mapIsEmpty!1531 mapRes!1531))

(declare-fun b!30139 () Bool)

(declare-fun tp_is_empty!1335 () Bool)

(assert (=> b!30139 (= e!19384 tp_is_empty!1335)))

(declare-fun b!30140 () Bool)

(declare-fun res!18112 () Bool)

(assert (=> b!30140 (=> (not res!18112) (not e!19385))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1605)

(declare-fun minValue!1443 () V!1605)

(declare-datatypes ((tuple2!1132 0))(
  ( (tuple2!1133 (_1!576 (_ BitVec 64)) (_2!576 V!1605)) )
))
(declare-datatypes ((List!736 0))(
  ( (Nil!733) (Cons!732 (h!1299 tuple2!1132) (t!3431 List!736)) )
))
(declare-datatypes ((ListLongMap!713 0))(
  ( (ListLongMap!714 (toList!372 List!736)) )
))
(declare-fun contains!309 (ListLongMap!713 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!199 (array!1887 array!1889 (_ BitVec 32) (_ BitVec 32) V!1605 V!1605 (_ BitVec 32) Int) ListLongMap!713)

(assert (=> b!30140 (= res!18112 (not (contains!309 (getCurrentListMap!199 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!30141 () Bool)

(declare-fun res!18114 () Bool)

(assert (=> b!30141 (=> (not res!18114) (not e!19385))))

(declare-fun arrayContainsKey!0 (array!1887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30141 (= res!18114 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30142 () Bool)

(assert (=> b!30142 (= e!19383 tp_is_empty!1335)))

(declare-fun b!30143 () Bool)

(declare-fun res!18115 () Bool)

(assert (=> b!30143 (=> (not res!18115) (not e!19385))))

(declare-datatypes ((List!737 0))(
  ( (Nil!734) (Cons!733 (h!1300 (_ BitVec 64)) (t!3432 List!737)) )
))
(declare-fun arrayNoDuplicates!0 (array!1887 (_ BitVec 32) List!737) Bool)

(assert (=> b!30143 (= res!18115 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!734))))

(declare-fun res!18113 () Bool)

(assert (=> start!4074 (=> (not res!18113) (not e!19385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4074 (= res!18113 (validMask!0 mask!2294))))

(assert (=> start!4074 e!19385))

(assert (=> start!4074 true))

(assert (=> start!4074 tp!4362))

(declare-fun array_inv!601 (array!1889) Bool)

(assert (=> start!4074 (and (array_inv!601 _values!1501) e!19387)))

(declare-fun array_inv!602 (array!1887) Bool)

(assert (=> start!4074 (array_inv!602 _keys!1833)))

(assert (=> start!4074 tp_is_empty!1335))

(declare-fun b!30138 () Bool)

(declare-fun res!18111 () Bool)

(assert (=> b!30138 (=> (not res!18111) (not e!19385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30138 (= res!18111 (validKeyInArray!0 k0!1304))))

(assert (= (and start!4074 res!18113) b!30137))

(assert (= (and b!30137 res!18110) b!30135))

(assert (= (and b!30135 res!18109) b!30143))

(assert (= (and b!30143 res!18115) b!30138))

(assert (= (and b!30138 res!18111) b!30140))

(assert (= (and b!30140 res!18112) b!30141))

(assert (= (and b!30141 res!18114) b!30134))

(assert (= (and b!30136 condMapEmpty!1531) mapIsEmpty!1531))

(assert (= (and b!30136 (not condMapEmpty!1531)) mapNonEmpty!1531))

(get-info :version)

(assert (= (and mapNonEmpty!1531 ((_ is ValueCellFull!468) mapValue!1531)) b!30139))

(assert (= (and b!30136 ((_ is ValueCellFull!468) mapDefault!1531)) b!30142))

(assert (= start!4074 b!30136))

(declare-fun m!24241 () Bool)

(assert (=> start!4074 m!24241))

(declare-fun m!24243 () Bool)

(assert (=> start!4074 m!24243))

(declare-fun m!24245 () Bool)

(assert (=> start!4074 m!24245))

(declare-fun m!24247 () Bool)

(assert (=> b!30135 m!24247))

(declare-fun m!24249 () Bool)

(assert (=> b!30143 m!24249))

(declare-fun m!24251 () Bool)

(assert (=> b!30138 m!24251))

(declare-fun m!24253 () Bool)

(assert (=> b!30134 m!24253))

(declare-fun m!24255 () Bool)

(assert (=> b!30141 m!24255))

(declare-fun m!24257 () Bool)

(assert (=> mapNonEmpty!1531 m!24257))

(declare-fun m!24259 () Bool)

(assert (=> b!30140 m!24259))

(assert (=> b!30140 m!24259))

(declare-fun m!24261 () Bool)

(assert (=> b!30140 m!24261))

(check-sat (not b!30140) (not b!30134) (not b_next!981) tp_is_empty!1335 (not b!30138) (not b!30135) (not b!30143) b_and!1793 (not mapNonEmpty!1531) (not b!30141) (not start!4074))
(check-sat b_and!1793 (not b_next!981))
