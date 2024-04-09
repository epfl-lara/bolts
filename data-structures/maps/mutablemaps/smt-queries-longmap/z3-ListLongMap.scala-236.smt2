; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4098 () Bool)

(assert start!4098)

(declare-fun b_free!1005 () Bool)

(declare-fun b_next!1005 () Bool)

(assert (=> start!4098 (= b_free!1005 (not b_next!1005))))

(declare-fun tp!4434 () Bool)

(declare-fun b_and!1817 () Bool)

(assert (=> start!4098 (= tp!4434 b_and!1817)))

(declare-fun b!30494 () Bool)

(declare-fun res!18362 () Bool)

(declare-fun e!19565 () Bool)

(assert (=> b!30494 (=> (not res!18362) (not e!19565))))

(declare-datatypes ((array!1933 0))(
  ( (array!1934 (arr!920 (Array (_ BitVec 32) (_ BitVec 64))) (size!1021 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1933)

(declare-datatypes ((List!756 0))(
  ( (Nil!753) (Cons!752 (h!1319 (_ BitVec 64)) (t!3451 List!756)) )
))
(declare-fun arrayNoDuplicates!0 (array!1933 (_ BitVec 32) List!756) Bool)

(assert (=> b!30494 (= res!18362 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!753))))

(declare-fun b!30495 () Bool)

(declare-fun res!18363 () Bool)

(assert (=> b!30495 (=> (not res!18363) (not e!19565))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1637 0))(
  ( (V!1638 (val!706 Int)) )
))
(declare-datatypes ((ValueCell!480 0))(
  ( (ValueCellFull!480 (v!1795 V!1637)) (EmptyCell!480) )
))
(declare-datatypes ((array!1935 0))(
  ( (array!1936 (arr!921 (Array (_ BitVec 32) ValueCell!480)) (size!1022 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1935)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1637)

(declare-fun minValue!1443 () V!1637)

(declare-datatypes ((tuple2!1152 0))(
  ( (tuple2!1153 (_1!586 (_ BitVec 64)) (_2!586 V!1637)) )
))
(declare-datatypes ((List!757 0))(
  ( (Nil!754) (Cons!753 (h!1320 tuple2!1152) (t!3452 List!757)) )
))
(declare-datatypes ((ListLongMap!733 0))(
  ( (ListLongMap!734 (toList!382 List!757)) )
))
(declare-fun contains!319 (ListLongMap!733 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!209 (array!1933 array!1935 (_ BitVec 32) (_ BitVec 32) V!1637 V!1637 (_ BitVec 32) Int) ListLongMap!733)

(assert (=> b!30495 (= res!18363 (not (contains!319 (getCurrentListMap!209 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!30496 () Bool)

(declare-fun e!19567 () Bool)

(declare-fun e!19566 () Bool)

(declare-fun mapRes!1567 () Bool)

(assert (=> b!30496 (= e!19567 (and e!19566 mapRes!1567))))

(declare-fun condMapEmpty!1567 () Bool)

(declare-fun mapDefault!1567 () ValueCell!480)

(assert (=> b!30496 (= condMapEmpty!1567 (= (arr!921 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!480)) mapDefault!1567)))))

(declare-fun b!30497 () Bool)

(declare-fun res!18366 () Bool)

(assert (=> b!30497 (=> (not res!18366) (not e!19565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1933 (_ BitVec 32)) Bool)

(assert (=> b!30497 (= res!18366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30498 () Bool)

(declare-fun res!18361 () Bool)

(assert (=> b!30498 (=> (not res!18361) (not e!19565))))

(declare-fun arrayContainsKey!0 (array!1933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30498 (= res!18361 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun res!18367 () Bool)

(assert (=> start!4098 (=> (not res!18367) (not e!19565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4098 (= res!18367 (validMask!0 mask!2294))))

(assert (=> start!4098 e!19565))

(assert (=> start!4098 true))

(assert (=> start!4098 tp!4434))

(declare-fun array_inv!619 (array!1935) Bool)

(assert (=> start!4098 (and (array_inv!619 _values!1501) e!19567)))

(declare-fun array_inv!620 (array!1933) Bool)

(assert (=> start!4098 (array_inv!620 _keys!1833)))

(declare-fun tp_is_empty!1359 () Bool)

(assert (=> start!4098 tp_is_empty!1359))

(declare-fun b!30499 () Bool)

(declare-fun res!18365 () Bool)

(assert (=> b!30499 (=> (not res!18365) (not e!19565))))

(assert (=> b!30499 (= res!18365 (and (= (size!1022 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1021 _keys!1833) (size!1022 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30500 () Bool)

(assert (=> b!30500 (= e!19565 false)))

(declare-datatypes ((SeekEntryResult!110 0))(
  ( (MissingZero!110 (index!2562 (_ BitVec 32))) (Found!110 (index!2563 (_ BitVec 32))) (Intermediate!110 (undefined!922 Bool) (index!2564 (_ BitVec 32)) (x!6540 (_ BitVec 32))) (Undefined!110) (MissingVacant!110 (index!2565 (_ BitVec 32))) )
))
(declare-fun lt!11433 () SeekEntryResult!110)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1933 (_ BitVec 32)) SeekEntryResult!110)

(assert (=> b!30500 (= lt!11433 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1567 () Bool)

(declare-fun tp!4435 () Bool)

(declare-fun e!19563 () Bool)

(assert (=> mapNonEmpty!1567 (= mapRes!1567 (and tp!4435 e!19563))))

(declare-fun mapKey!1567 () (_ BitVec 32))

(declare-fun mapValue!1567 () ValueCell!480)

(declare-fun mapRest!1567 () (Array (_ BitVec 32) ValueCell!480))

(assert (=> mapNonEmpty!1567 (= (arr!921 _values!1501) (store mapRest!1567 mapKey!1567 mapValue!1567))))

(declare-fun mapIsEmpty!1567 () Bool)

(assert (=> mapIsEmpty!1567 mapRes!1567))

(declare-fun b!30501 () Bool)

(declare-fun res!18364 () Bool)

(assert (=> b!30501 (=> (not res!18364) (not e!19565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30501 (= res!18364 (validKeyInArray!0 k0!1304))))

(declare-fun b!30502 () Bool)

(assert (=> b!30502 (= e!19566 tp_is_empty!1359)))

(declare-fun b!30503 () Bool)

(assert (=> b!30503 (= e!19563 tp_is_empty!1359)))

(assert (= (and start!4098 res!18367) b!30499))

(assert (= (and b!30499 res!18365) b!30497))

(assert (= (and b!30497 res!18366) b!30494))

(assert (= (and b!30494 res!18362) b!30501))

(assert (= (and b!30501 res!18364) b!30495))

(assert (= (and b!30495 res!18363) b!30498))

(assert (= (and b!30498 res!18361) b!30500))

(assert (= (and b!30496 condMapEmpty!1567) mapIsEmpty!1567))

(assert (= (and b!30496 (not condMapEmpty!1567)) mapNonEmpty!1567))

(get-info :version)

(assert (= (and mapNonEmpty!1567 ((_ is ValueCellFull!480) mapValue!1567)) b!30503))

(assert (= (and b!30496 ((_ is ValueCellFull!480) mapDefault!1567)) b!30502))

(assert (= start!4098 b!30496))

(declare-fun m!24505 () Bool)

(assert (=> b!30497 m!24505))

(declare-fun m!24507 () Bool)

(assert (=> b!30500 m!24507))

(declare-fun m!24509 () Bool)

(assert (=> b!30494 m!24509))

(declare-fun m!24511 () Bool)

(assert (=> mapNonEmpty!1567 m!24511))

(declare-fun m!24513 () Bool)

(assert (=> b!30495 m!24513))

(assert (=> b!30495 m!24513))

(declare-fun m!24515 () Bool)

(assert (=> b!30495 m!24515))

(declare-fun m!24517 () Bool)

(assert (=> b!30501 m!24517))

(declare-fun m!24519 () Bool)

(assert (=> start!4098 m!24519))

(declare-fun m!24521 () Bool)

(assert (=> start!4098 m!24521))

(declare-fun m!24523 () Bool)

(assert (=> start!4098 m!24523))

(declare-fun m!24525 () Bool)

(assert (=> b!30498 m!24525))

(check-sat (not b!30495) (not b!30500) (not mapNonEmpty!1567) (not b_next!1005) (not b!30497) (not b!30501) (not b!30494) tp_is_empty!1359 b_and!1817 (not b!30498) (not start!4098))
(check-sat b_and!1817 (not b_next!1005))
