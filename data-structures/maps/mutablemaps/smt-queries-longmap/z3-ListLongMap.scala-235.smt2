; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4092 () Bool)

(assert start!4092)

(declare-fun b_free!999 () Bool)

(declare-fun b_next!999 () Bool)

(assert (=> start!4092 (= b_free!999 (not b_next!999))))

(declare-fun tp!4417 () Bool)

(declare-fun b_and!1811 () Bool)

(assert (=> start!4092 (= tp!4417 b_and!1811)))

(declare-fun res!18299 () Bool)

(declare-fun e!19522 () Bool)

(assert (=> start!4092 (=> (not res!18299) (not e!19522))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4092 (= res!18299 (validMask!0 mask!2294))))

(assert (=> start!4092 e!19522))

(assert (=> start!4092 true))

(assert (=> start!4092 tp!4417))

(declare-datatypes ((V!1629 0))(
  ( (V!1630 (val!703 Int)) )
))
(declare-datatypes ((ValueCell!477 0))(
  ( (ValueCellFull!477 (v!1792 V!1629)) (EmptyCell!477) )
))
(declare-datatypes ((array!1921 0))(
  ( (array!1922 (arr!914 (Array (_ BitVec 32) ValueCell!477)) (size!1015 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1921)

(declare-fun e!19520 () Bool)

(declare-fun array_inv!613 (array!1921) Bool)

(assert (=> start!4092 (and (array_inv!613 _values!1501) e!19520)))

(declare-datatypes ((array!1923 0))(
  ( (array!1924 (arr!915 (Array (_ BitVec 32) (_ BitVec 64))) (size!1016 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1923)

(declare-fun array_inv!614 (array!1923) Bool)

(assert (=> start!4092 (array_inv!614 _keys!1833)))

(declare-fun tp_is_empty!1353 () Bool)

(assert (=> start!4092 tp_is_empty!1353))

(declare-fun b!30404 () Bool)

(declare-fun e!19521 () Bool)

(declare-fun mapRes!1558 () Bool)

(assert (=> b!30404 (= e!19520 (and e!19521 mapRes!1558))))

(declare-fun condMapEmpty!1558 () Bool)

(declare-fun mapDefault!1558 () ValueCell!477)

(assert (=> b!30404 (= condMapEmpty!1558 (= (arr!914 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!477)) mapDefault!1558)))))

(declare-fun b!30405 () Bool)

(assert (=> b!30405 (= e!19522 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!107 0))(
  ( (MissingZero!107 (index!2550 (_ BitVec 32))) (Found!107 (index!2551 (_ BitVec 32))) (Intermediate!107 (undefined!919 Bool) (index!2552 (_ BitVec 32)) (x!6529 (_ BitVec 32))) (Undefined!107) (MissingVacant!107 (index!2553 (_ BitVec 32))) )
))
(declare-fun lt!11424 () SeekEntryResult!107)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1923 (_ BitVec 32)) SeekEntryResult!107)

(assert (=> b!30405 (= lt!11424 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!30406 () Bool)

(declare-fun res!18301 () Bool)

(assert (=> b!30406 (=> (not res!18301) (not e!19522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30406 (= res!18301 (validKeyInArray!0 k0!1304))))

(declare-fun b!30407 () Bool)

(declare-fun res!18303 () Bool)

(assert (=> b!30407 (=> (not res!18303) (not e!19522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1923 (_ BitVec 32)) Bool)

(assert (=> b!30407 (= res!18303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1558 () Bool)

(declare-fun tp!4416 () Bool)

(declare-fun e!19519 () Bool)

(assert (=> mapNonEmpty!1558 (= mapRes!1558 (and tp!4416 e!19519))))

(declare-fun mapRest!1558 () (Array (_ BitVec 32) ValueCell!477))

(declare-fun mapKey!1558 () (_ BitVec 32))

(declare-fun mapValue!1558 () ValueCell!477)

(assert (=> mapNonEmpty!1558 (= (arr!914 _values!1501) (store mapRest!1558 mapKey!1558 mapValue!1558))))

(declare-fun b!30408 () Bool)

(declare-fun res!18304 () Bool)

(assert (=> b!30408 (=> (not res!18304) (not e!19522))))

(declare-fun arrayContainsKey!0 (array!1923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30408 (= res!18304 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30409 () Bool)

(declare-fun res!18298 () Bool)

(assert (=> b!30409 (=> (not res!18298) (not e!19522))))

(declare-datatypes ((List!750 0))(
  ( (Nil!747) (Cons!746 (h!1313 (_ BitVec 64)) (t!3445 List!750)) )
))
(declare-fun arrayNoDuplicates!0 (array!1923 (_ BitVec 32) List!750) Bool)

(assert (=> b!30409 (= res!18298 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!747))))

(declare-fun mapIsEmpty!1558 () Bool)

(assert (=> mapIsEmpty!1558 mapRes!1558))

(declare-fun b!30410 () Bool)

(declare-fun res!18300 () Bool)

(assert (=> b!30410 (=> (not res!18300) (not e!19522))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1629)

(declare-fun minValue!1443 () V!1629)

(declare-datatypes ((tuple2!1146 0))(
  ( (tuple2!1147 (_1!583 (_ BitVec 64)) (_2!583 V!1629)) )
))
(declare-datatypes ((List!751 0))(
  ( (Nil!748) (Cons!747 (h!1314 tuple2!1146) (t!3446 List!751)) )
))
(declare-datatypes ((ListLongMap!727 0))(
  ( (ListLongMap!728 (toList!379 List!751)) )
))
(declare-fun contains!316 (ListLongMap!727 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!206 (array!1923 array!1921 (_ BitVec 32) (_ BitVec 32) V!1629 V!1629 (_ BitVec 32) Int) ListLongMap!727)

(assert (=> b!30410 (= res!18300 (not (contains!316 (getCurrentListMap!206 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!30411 () Bool)

(assert (=> b!30411 (= e!19519 tp_is_empty!1353)))

(declare-fun b!30412 () Bool)

(declare-fun res!18302 () Bool)

(assert (=> b!30412 (=> (not res!18302) (not e!19522))))

(assert (=> b!30412 (= res!18302 (and (= (size!1015 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1016 _keys!1833) (size!1015 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30413 () Bool)

(assert (=> b!30413 (= e!19521 tp_is_empty!1353)))

(assert (= (and start!4092 res!18299) b!30412))

(assert (= (and b!30412 res!18302) b!30407))

(assert (= (and b!30407 res!18303) b!30409))

(assert (= (and b!30409 res!18298) b!30406))

(assert (= (and b!30406 res!18301) b!30410))

(assert (= (and b!30410 res!18300) b!30408))

(assert (= (and b!30408 res!18304) b!30405))

(assert (= (and b!30404 condMapEmpty!1558) mapIsEmpty!1558))

(assert (= (and b!30404 (not condMapEmpty!1558)) mapNonEmpty!1558))

(get-info :version)

(assert (= (and mapNonEmpty!1558 ((_ is ValueCellFull!477) mapValue!1558)) b!30411))

(assert (= (and b!30404 ((_ is ValueCellFull!477) mapDefault!1558)) b!30413))

(assert (= start!4092 b!30404))

(declare-fun m!24439 () Bool)

(assert (=> b!30406 m!24439))

(declare-fun m!24441 () Bool)

(assert (=> mapNonEmpty!1558 m!24441))

(declare-fun m!24443 () Bool)

(assert (=> b!30408 m!24443))

(declare-fun m!24445 () Bool)

(assert (=> b!30409 m!24445))

(declare-fun m!24447 () Bool)

(assert (=> b!30407 m!24447))

(declare-fun m!24449 () Bool)

(assert (=> b!30410 m!24449))

(assert (=> b!30410 m!24449))

(declare-fun m!24451 () Bool)

(assert (=> b!30410 m!24451))

(declare-fun m!24453 () Bool)

(assert (=> b!30405 m!24453))

(declare-fun m!24455 () Bool)

(assert (=> start!4092 m!24455))

(declare-fun m!24457 () Bool)

(assert (=> start!4092 m!24457))

(declare-fun m!24459 () Bool)

(assert (=> start!4092 m!24459))

(check-sat (not b!30405) (not mapNonEmpty!1558) (not b!30408) (not b!30410) tp_is_empty!1353 b_and!1811 (not b!30406) (not b_next!999) (not b!30409) (not b!30407) (not start!4092))
(check-sat b_and!1811 (not b_next!999))
