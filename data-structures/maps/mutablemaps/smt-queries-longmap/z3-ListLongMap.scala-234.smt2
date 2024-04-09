; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4086 () Bool)

(assert start!4086)

(declare-fun b_free!993 () Bool)

(declare-fun b_next!993 () Bool)

(assert (=> start!4086 (= b_free!993 (not b_next!993))))

(declare-fun tp!4399 () Bool)

(declare-fun b_and!1805 () Bool)

(assert (=> start!4086 (= tp!4399 b_and!1805)))

(declare-fun mapIsEmpty!1549 () Bool)

(declare-fun mapRes!1549 () Bool)

(assert (=> mapIsEmpty!1549 mapRes!1549))

(declare-fun b!30314 () Bool)

(declare-fun e!19476 () Bool)

(declare-fun tp_is_empty!1347 () Bool)

(assert (=> b!30314 (= e!19476 tp_is_empty!1347)))

(declare-fun b!30315 () Bool)

(declare-fun res!18239 () Bool)

(declare-fun e!19474 () Bool)

(assert (=> b!30315 (=> (not res!18239) (not e!19474))))

(declare-datatypes ((array!1911 0))(
  ( (array!1912 (arr!909 (Array (_ BitVec 32) (_ BitVec 64))) (size!1010 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1911)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30315 (= res!18239 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30317 () Bool)

(assert (=> b!30317 (= e!19474 false)))

(declare-datatypes ((SeekEntryResult!105 0))(
  ( (MissingZero!105 (index!2542 (_ BitVec 32))) (Found!105 (index!2543 (_ BitVec 32))) (Intermediate!105 (undefined!917 Bool) (index!2544 (_ BitVec 32)) (x!6519 (_ BitVec 32))) (Undefined!105) (MissingVacant!105 (index!2545 (_ BitVec 32))) )
))
(declare-fun lt!11415 () SeekEntryResult!105)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1911 (_ BitVec 32)) SeekEntryResult!105)

(assert (=> b!30317 (= lt!11415 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1549 () Bool)

(declare-fun tp!4398 () Bool)

(declare-fun e!19475 () Bool)

(assert (=> mapNonEmpty!1549 (= mapRes!1549 (and tp!4398 e!19475))))

(declare-datatypes ((V!1621 0))(
  ( (V!1622 (val!700 Int)) )
))
(declare-datatypes ((ValueCell!474 0))(
  ( (ValueCellFull!474 (v!1789 V!1621)) (EmptyCell!474) )
))
(declare-fun mapRest!1549 () (Array (_ BitVec 32) ValueCell!474))

(declare-fun mapKey!1549 () (_ BitVec 32))

(declare-datatypes ((array!1913 0))(
  ( (array!1914 (arr!910 (Array (_ BitVec 32) ValueCell!474)) (size!1011 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1913)

(declare-fun mapValue!1549 () ValueCell!474)

(assert (=> mapNonEmpty!1549 (= (arr!910 _values!1501) (store mapRest!1549 mapKey!1549 mapValue!1549))))

(declare-fun b!30318 () Bool)

(declare-fun res!18238 () Bool)

(assert (=> b!30318 (=> (not res!18238) (not e!19474))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1621)

(declare-fun minValue!1443 () V!1621)

(declare-datatypes ((tuple2!1142 0))(
  ( (tuple2!1143 (_1!581 (_ BitVec 64)) (_2!581 V!1621)) )
))
(declare-datatypes ((List!746 0))(
  ( (Nil!743) (Cons!742 (h!1309 tuple2!1142) (t!3441 List!746)) )
))
(declare-datatypes ((ListLongMap!723 0))(
  ( (ListLongMap!724 (toList!377 List!746)) )
))
(declare-fun contains!314 (ListLongMap!723 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!204 (array!1911 array!1913 (_ BitVec 32) (_ BitVec 32) V!1621 V!1621 (_ BitVec 32) Int) ListLongMap!723)

(assert (=> b!30318 (= res!18238 (not (contains!314 (getCurrentListMap!204 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!30319 () Bool)

(declare-fun res!18240 () Bool)

(assert (=> b!30319 (=> (not res!18240) (not e!19474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30319 (= res!18240 (validKeyInArray!0 k0!1304))))

(declare-fun b!30320 () Bool)

(declare-fun res!18236 () Bool)

(assert (=> b!30320 (=> (not res!18236) (not e!19474))))

(assert (=> b!30320 (= res!18236 (and (= (size!1011 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1010 _keys!1833) (size!1011 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30321 () Bool)

(assert (=> b!30321 (= e!19475 tp_is_empty!1347)))

(declare-fun res!18241 () Bool)

(assert (=> start!4086 (=> (not res!18241) (not e!19474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4086 (= res!18241 (validMask!0 mask!2294))))

(assert (=> start!4086 e!19474))

(assert (=> start!4086 true))

(assert (=> start!4086 tp!4399))

(declare-fun e!19477 () Bool)

(declare-fun array_inv!609 (array!1913) Bool)

(assert (=> start!4086 (and (array_inv!609 _values!1501) e!19477)))

(declare-fun array_inv!610 (array!1911) Bool)

(assert (=> start!4086 (array_inv!610 _keys!1833)))

(assert (=> start!4086 tp_is_empty!1347))

(declare-fun b!30316 () Bool)

(assert (=> b!30316 (= e!19477 (and e!19476 mapRes!1549))))

(declare-fun condMapEmpty!1549 () Bool)

(declare-fun mapDefault!1549 () ValueCell!474)

(assert (=> b!30316 (= condMapEmpty!1549 (= (arr!910 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!474)) mapDefault!1549)))))

(declare-fun b!30322 () Bool)

(declare-fun res!18235 () Bool)

(assert (=> b!30322 (=> (not res!18235) (not e!19474))))

(declare-datatypes ((List!747 0))(
  ( (Nil!744) (Cons!743 (h!1310 (_ BitVec 64)) (t!3442 List!747)) )
))
(declare-fun arrayNoDuplicates!0 (array!1911 (_ BitVec 32) List!747) Bool)

(assert (=> b!30322 (= res!18235 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!744))))

(declare-fun b!30323 () Bool)

(declare-fun res!18237 () Bool)

(assert (=> b!30323 (=> (not res!18237) (not e!19474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1911 (_ BitVec 32)) Bool)

(assert (=> b!30323 (= res!18237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!4086 res!18241) b!30320))

(assert (= (and b!30320 res!18236) b!30323))

(assert (= (and b!30323 res!18237) b!30322))

(assert (= (and b!30322 res!18235) b!30319))

(assert (= (and b!30319 res!18240) b!30318))

(assert (= (and b!30318 res!18238) b!30315))

(assert (= (and b!30315 res!18239) b!30317))

(assert (= (and b!30316 condMapEmpty!1549) mapIsEmpty!1549))

(assert (= (and b!30316 (not condMapEmpty!1549)) mapNonEmpty!1549))

(get-info :version)

(assert (= (and mapNonEmpty!1549 ((_ is ValueCellFull!474) mapValue!1549)) b!30321))

(assert (= (and b!30316 ((_ is ValueCellFull!474) mapDefault!1549)) b!30314))

(assert (= start!4086 b!30316))

(declare-fun m!24373 () Bool)

(assert (=> b!30318 m!24373))

(assert (=> b!30318 m!24373))

(declare-fun m!24375 () Bool)

(assert (=> b!30318 m!24375))

(declare-fun m!24377 () Bool)

(assert (=> b!30319 m!24377))

(declare-fun m!24379 () Bool)

(assert (=> b!30322 m!24379))

(declare-fun m!24381 () Bool)

(assert (=> start!4086 m!24381))

(declare-fun m!24383 () Bool)

(assert (=> start!4086 m!24383))

(declare-fun m!24385 () Bool)

(assert (=> start!4086 m!24385))

(declare-fun m!24387 () Bool)

(assert (=> b!30315 m!24387))

(declare-fun m!24389 () Bool)

(assert (=> b!30317 m!24389))

(declare-fun m!24391 () Bool)

(assert (=> b!30323 m!24391))

(declare-fun m!24393 () Bool)

(assert (=> mapNonEmpty!1549 m!24393))

(check-sat tp_is_empty!1347 (not b!30318) (not b!30317) (not start!4086) (not mapNonEmpty!1549) (not b!30315) b_and!1805 (not b_next!993) (not b!30319) (not b!30323) (not b!30322))
(check-sat b_and!1805 (not b_next!993))
