; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4068 () Bool)

(assert start!4068)

(declare-fun b_free!975 () Bool)

(declare-fun b_next!975 () Bool)

(assert (=> start!4068 (= b_free!975 (not b_next!975))))

(declare-fun tp!4345 () Bool)

(declare-fun b_and!1787 () Bool)

(assert (=> start!4068 (= tp!4345 b_and!1787)))

(declare-fun b!30044 () Bool)

(declare-fun res!18048 () Bool)

(declare-fun e!19340 () Bool)

(assert (=> b!30044 (=> (not res!18048) (not e!19340))))

(declare-datatypes ((array!1877 0))(
  ( (array!1878 (arr!892 (Array (_ BitVec 32) (_ BitVec 64))) (size!993 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1877)

(declare-datatypes ((List!733 0))(
  ( (Nil!730) (Cons!729 (h!1296 (_ BitVec 64)) (t!3428 List!733)) )
))
(declare-fun arrayNoDuplicates!0 (array!1877 (_ BitVec 32) List!733) Bool)

(assert (=> b!30044 (= res!18048 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!730))))

(declare-fun b!30046 () Bool)

(declare-fun res!18051 () Bool)

(assert (=> b!30046 (=> (not res!18051) (not e!19340))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1877 (_ BitVec 32)) Bool)

(assert (=> b!30046 (= res!18051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1522 () Bool)

(declare-fun mapRes!1522 () Bool)

(declare-fun tp!4344 () Bool)

(declare-fun e!19341 () Bool)

(assert (=> mapNonEmpty!1522 (= mapRes!1522 (and tp!4344 e!19341))))

(declare-datatypes ((V!1597 0))(
  ( (V!1598 (val!691 Int)) )
))
(declare-datatypes ((ValueCell!465 0))(
  ( (ValueCellFull!465 (v!1780 V!1597)) (EmptyCell!465) )
))
(declare-datatypes ((array!1879 0))(
  ( (array!1880 (arr!893 (Array (_ BitVec 32) ValueCell!465)) (size!994 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1879)

(declare-fun mapValue!1522 () ValueCell!465)

(declare-fun mapKey!1522 () (_ BitVec 32))

(declare-fun mapRest!1522 () (Array (_ BitVec 32) ValueCell!465))

(assert (=> mapNonEmpty!1522 (= (arr!893 _values!1501) (store mapRest!1522 mapKey!1522 mapValue!1522))))

(declare-fun b!30047 () Bool)

(declare-fun tp_is_empty!1329 () Bool)

(assert (=> b!30047 (= e!19341 tp_is_empty!1329)))

(declare-fun b!30048 () Bool)

(declare-fun res!18047 () Bool)

(assert (=> b!30048 (=> (not res!18047) (not e!19340))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30048 (= res!18047 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30049 () Bool)

(declare-fun res!18052 () Bool)

(assert (=> b!30049 (=> (not res!18052) (not e!19340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30049 (= res!18052 (validKeyInArray!0 k0!1304))))

(declare-fun b!30045 () Bool)

(assert (=> b!30045 (= e!19340 false)))

(declare-datatypes ((SeekEntryResult!99 0))(
  ( (MissingZero!99 (index!2518 (_ BitVec 32))) (Found!99 (index!2519 (_ BitVec 32))) (Intermediate!99 (undefined!911 Bool) (index!2520 (_ BitVec 32)) (x!6489 (_ BitVec 32))) (Undefined!99) (MissingVacant!99 (index!2521 (_ BitVec 32))) )
))
(declare-fun lt!11388 () SeekEntryResult!99)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1877 (_ BitVec 32)) SeekEntryResult!99)

(assert (=> b!30045 (= lt!11388 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun res!18046 () Bool)

(assert (=> start!4068 (=> (not res!18046) (not e!19340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4068 (= res!18046 (validMask!0 mask!2294))))

(assert (=> start!4068 e!19340))

(assert (=> start!4068 true))

(assert (=> start!4068 tp!4345))

(declare-fun e!19342 () Bool)

(declare-fun array_inv!599 (array!1879) Bool)

(assert (=> start!4068 (and (array_inv!599 _values!1501) e!19342)))

(declare-fun array_inv!600 (array!1877) Bool)

(assert (=> start!4068 (array_inv!600 _keys!1833)))

(assert (=> start!4068 tp_is_empty!1329))

(declare-fun b!30050 () Bool)

(declare-fun e!19338 () Bool)

(assert (=> b!30050 (= e!19342 (and e!19338 mapRes!1522))))

(declare-fun condMapEmpty!1522 () Bool)

(declare-fun mapDefault!1522 () ValueCell!465)

(assert (=> b!30050 (= condMapEmpty!1522 (= (arr!893 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!465)) mapDefault!1522)))))

(declare-fun b!30051 () Bool)

(assert (=> b!30051 (= e!19338 tp_is_empty!1329)))

(declare-fun b!30052 () Bool)

(declare-fun res!18050 () Bool)

(assert (=> b!30052 (=> (not res!18050) (not e!19340))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!30052 (= res!18050 (and (= (size!994 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!993 _keys!1833) (size!994 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1522 () Bool)

(assert (=> mapIsEmpty!1522 mapRes!1522))

(declare-fun b!30053 () Bool)

(declare-fun res!18049 () Bool)

(assert (=> b!30053 (=> (not res!18049) (not e!19340))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1597)

(declare-fun minValue!1443 () V!1597)

(declare-datatypes ((tuple2!1128 0))(
  ( (tuple2!1129 (_1!574 (_ BitVec 64)) (_2!574 V!1597)) )
))
(declare-datatypes ((List!734 0))(
  ( (Nil!731) (Cons!730 (h!1297 tuple2!1128) (t!3429 List!734)) )
))
(declare-datatypes ((ListLongMap!709 0))(
  ( (ListLongMap!710 (toList!370 List!734)) )
))
(declare-fun contains!307 (ListLongMap!709 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!197 (array!1877 array!1879 (_ BitVec 32) (_ BitVec 32) V!1597 V!1597 (_ BitVec 32) Int) ListLongMap!709)

(assert (=> b!30053 (= res!18049 (not (contains!307 (getCurrentListMap!197 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(assert (= (and start!4068 res!18046) b!30052))

(assert (= (and b!30052 res!18050) b!30046))

(assert (= (and b!30046 res!18051) b!30044))

(assert (= (and b!30044 res!18048) b!30049))

(assert (= (and b!30049 res!18052) b!30053))

(assert (= (and b!30053 res!18049) b!30048))

(assert (= (and b!30048 res!18047) b!30045))

(assert (= (and b!30050 condMapEmpty!1522) mapIsEmpty!1522))

(assert (= (and b!30050 (not condMapEmpty!1522)) mapNonEmpty!1522))

(get-info :version)

(assert (= (and mapNonEmpty!1522 ((_ is ValueCellFull!465) mapValue!1522)) b!30047))

(assert (= (and b!30050 ((_ is ValueCellFull!465) mapDefault!1522)) b!30051))

(assert (= start!4068 b!30050))

(declare-fun m!24175 () Bool)

(assert (=> b!30045 m!24175))

(declare-fun m!24177 () Bool)

(assert (=> mapNonEmpty!1522 m!24177))

(declare-fun m!24179 () Bool)

(assert (=> b!30044 m!24179))

(declare-fun m!24181 () Bool)

(assert (=> b!30046 m!24181))

(declare-fun m!24183 () Bool)

(assert (=> start!4068 m!24183))

(declare-fun m!24185 () Bool)

(assert (=> start!4068 m!24185))

(declare-fun m!24187 () Bool)

(assert (=> start!4068 m!24187))

(declare-fun m!24189 () Bool)

(assert (=> b!30053 m!24189))

(assert (=> b!30053 m!24189))

(declare-fun m!24191 () Bool)

(assert (=> b!30053 m!24191))

(declare-fun m!24193 () Bool)

(assert (=> b!30049 m!24193))

(declare-fun m!24195 () Bool)

(assert (=> b!30048 m!24195))

(check-sat (not b!30053) (not b!30048) (not b!30046) (not start!4068) (not b!30049) tp_is_empty!1329 (not b!30045) b_and!1787 (not b!30044) (not mapNonEmpty!1522) (not b_next!975))
(check-sat b_and!1787 (not b_next!975))
