; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4110 () Bool)

(assert start!4110)

(declare-fun b_free!1017 () Bool)

(declare-fun b_next!1017 () Bool)

(assert (=> start!4110 (= b_free!1017 (not b_next!1017))))

(declare-fun tp!4470 () Bool)

(declare-fun b_and!1829 () Bool)

(assert (=> start!4110 (= tp!4470 b_and!1829)))

(declare-fun b!30674 () Bool)

(declare-fun e!19656 () Bool)

(assert (=> b!30674 (= e!19656 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!114 0))(
  ( (MissingZero!114 (index!2578 (_ BitVec 32))) (Found!114 (index!2579 (_ BitVec 32))) (Intermediate!114 (undefined!926 Bool) (index!2580 (_ BitVec 32)) (x!6560 (_ BitVec 32))) (Undefined!114) (MissingVacant!114 (index!2581 (_ BitVec 32))) )
))
(declare-fun lt!11451 () SeekEntryResult!114)

(declare-datatypes ((array!1955 0))(
  ( (array!1956 (arr!931 (Array (_ BitVec 32) (_ BitVec 64))) (size!1032 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1955)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1955 (_ BitVec 32)) SeekEntryResult!114)

(assert (=> b!30674 (= lt!11451 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!30675 () Bool)

(declare-fun res!18488 () Bool)

(assert (=> b!30675 (=> (not res!18488) (not e!19656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30675 (= res!18488 (validKeyInArray!0 k0!1304))))

(declare-fun b!30676 () Bool)

(declare-fun res!18487 () Bool)

(assert (=> b!30676 (=> (not res!18487) (not e!19656))))

(declare-datatypes ((V!1653 0))(
  ( (V!1654 (val!712 Int)) )
))
(declare-datatypes ((ValueCell!486 0))(
  ( (ValueCellFull!486 (v!1801 V!1653)) (EmptyCell!486) )
))
(declare-datatypes ((array!1957 0))(
  ( (array!1958 (arr!932 (Array (_ BitVec 32) ValueCell!486)) (size!1033 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1957)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!30676 (= res!18487 (and (= (size!1033 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1032 _keys!1833) (size!1033 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30677 () Bool)

(declare-fun res!18489 () Bool)

(assert (=> b!30677 (=> (not res!18489) (not e!19656))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1653)

(declare-fun minValue!1443 () V!1653)

(declare-datatypes ((tuple2!1160 0))(
  ( (tuple2!1161 (_1!590 (_ BitVec 64)) (_2!590 V!1653)) )
))
(declare-datatypes ((List!763 0))(
  ( (Nil!760) (Cons!759 (h!1326 tuple2!1160) (t!3458 List!763)) )
))
(declare-datatypes ((ListLongMap!741 0))(
  ( (ListLongMap!742 (toList!386 List!763)) )
))
(declare-fun contains!323 (ListLongMap!741 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!213 (array!1955 array!1957 (_ BitVec 32) (_ BitVec 32) V!1653 V!1653 (_ BitVec 32) Int) ListLongMap!741)

(assert (=> b!30677 (= res!18489 (not (contains!323 (getCurrentListMap!213 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!30678 () Bool)

(declare-fun res!18490 () Bool)

(assert (=> b!30678 (=> (not res!18490) (not e!19656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1955 (_ BitVec 32)) Bool)

(assert (=> b!30678 (= res!18490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30679 () Bool)

(declare-fun e!19657 () Bool)

(declare-fun e!19654 () Bool)

(declare-fun mapRes!1585 () Bool)

(assert (=> b!30679 (= e!19657 (and e!19654 mapRes!1585))))

(declare-fun condMapEmpty!1585 () Bool)

(declare-fun mapDefault!1585 () ValueCell!486)

(assert (=> b!30679 (= condMapEmpty!1585 (= (arr!932 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!486)) mapDefault!1585)))))

(declare-fun b!30680 () Bool)

(declare-fun res!18493 () Bool)

(assert (=> b!30680 (=> (not res!18493) (not e!19656))))

(declare-datatypes ((List!764 0))(
  ( (Nil!761) (Cons!760 (h!1327 (_ BitVec 64)) (t!3459 List!764)) )
))
(declare-fun arrayNoDuplicates!0 (array!1955 (_ BitVec 32) List!764) Bool)

(assert (=> b!30680 (= res!18493 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!761))))

(declare-fun mapNonEmpty!1585 () Bool)

(declare-fun tp!4471 () Bool)

(declare-fun e!19655 () Bool)

(assert (=> mapNonEmpty!1585 (= mapRes!1585 (and tp!4471 e!19655))))

(declare-fun mapKey!1585 () (_ BitVec 32))

(declare-fun mapValue!1585 () ValueCell!486)

(declare-fun mapRest!1585 () (Array (_ BitVec 32) ValueCell!486))

(assert (=> mapNonEmpty!1585 (= (arr!932 _values!1501) (store mapRest!1585 mapKey!1585 mapValue!1585))))

(declare-fun mapIsEmpty!1585 () Bool)

(assert (=> mapIsEmpty!1585 mapRes!1585))

(declare-fun b!30682 () Bool)

(declare-fun res!18492 () Bool)

(assert (=> b!30682 (=> (not res!18492) (not e!19656))))

(declare-fun arrayContainsKey!0 (array!1955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30682 (= res!18492 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30683 () Bool)

(declare-fun tp_is_empty!1371 () Bool)

(assert (=> b!30683 (= e!19654 tp_is_empty!1371)))

(declare-fun b!30681 () Bool)

(assert (=> b!30681 (= e!19655 tp_is_empty!1371)))

(declare-fun res!18491 () Bool)

(assert (=> start!4110 (=> (not res!18491) (not e!19656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4110 (= res!18491 (validMask!0 mask!2294))))

(assert (=> start!4110 e!19656))

(assert (=> start!4110 true))

(assert (=> start!4110 tp!4470))

(declare-fun array_inv!625 (array!1957) Bool)

(assert (=> start!4110 (and (array_inv!625 _values!1501) e!19657)))

(declare-fun array_inv!626 (array!1955) Bool)

(assert (=> start!4110 (array_inv!626 _keys!1833)))

(assert (=> start!4110 tp_is_empty!1371))

(assert (= (and start!4110 res!18491) b!30676))

(assert (= (and b!30676 res!18487) b!30678))

(assert (= (and b!30678 res!18490) b!30680))

(assert (= (and b!30680 res!18493) b!30675))

(assert (= (and b!30675 res!18488) b!30677))

(assert (= (and b!30677 res!18489) b!30682))

(assert (= (and b!30682 res!18492) b!30674))

(assert (= (and b!30679 condMapEmpty!1585) mapIsEmpty!1585))

(assert (= (and b!30679 (not condMapEmpty!1585)) mapNonEmpty!1585))

(get-info :version)

(assert (= (and mapNonEmpty!1585 ((_ is ValueCellFull!486) mapValue!1585)) b!30681))

(assert (= (and b!30679 ((_ is ValueCellFull!486) mapDefault!1585)) b!30683))

(assert (= start!4110 b!30679))

(declare-fun m!24637 () Bool)

(assert (=> start!4110 m!24637))

(declare-fun m!24639 () Bool)

(assert (=> start!4110 m!24639))

(declare-fun m!24641 () Bool)

(assert (=> start!4110 m!24641))

(declare-fun m!24643 () Bool)

(assert (=> b!30677 m!24643))

(assert (=> b!30677 m!24643))

(declare-fun m!24645 () Bool)

(assert (=> b!30677 m!24645))

(declare-fun m!24647 () Bool)

(assert (=> b!30674 m!24647))

(declare-fun m!24649 () Bool)

(assert (=> b!30678 m!24649))

(declare-fun m!24651 () Bool)

(assert (=> mapNonEmpty!1585 m!24651))

(declare-fun m!24653 () Bool)

(assert (=> b!30680 m!24653))

(declare-fun m!24655 () Bool)

(assert (=> b!30675 m!24655))

(declare-fun m!24657 () Bool)

(assert (=> b!30682 m!24657))

(check-sat (not b!30674) tp_is_empty!1371 (not b!30680) (not b!30677) (not b!30682) (not b!30675) (not start!4110) (not mapNonEmpty!1585) (not b!30678) (not b_next!1017) b_and!1829)
(check-sat b_and!1829 (not b_next!1017))
