; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34474 () Bool)

(assert start!34474)

(declare-fun b_free!7389 () Bool)

(declare-fun b_next!7389 () Bool)

(assert (=> start!34474 (= b_free!7389 (not b_next!7389))))

(declare-fun tp!25712 () Bool)

(declare-fun b_and!14615 () Bool)

(assert (=> start!34474 (= tp!25712 b_and!14615)))

(declare-fun b!344096 () Bool)

(declare-fun res!190347 () Bool)

(declare-fun e!210961 () Bool)

(assert (=> b!344096 (=> (not res!190347) (not e!210961))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344096 (= res!190347 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12450 () Bool)

(declare-fun mapRes!12450 () Bool)

(declare-fun tp!25713 () Bool)

(declare-fun e!210963 () Bool)

(assert (=> mapNonEmpty!12450 (= mapRes!12450 (and tp!25713 e!210963))))

(declare-fun mapKey!12450 () (_ BitVec 32))

(declare-datatypes ((V!10765 0))(
  ( (V!10766 (val!3715 Int)) )
))
(declare-datatypes ((ValueCell!3327 0))(
  ( (ValueCellFull!3327 (v!5887 V!10765)) (EmptyCell!3327) )
))
(declare-fun mapValue!12450 () ValueCell!3327)

(declare-datatypes ((array!18239 0))(
  ( (array!18240 (arr!8633 (Array (_ BitVec 32) ValueCell!3327)) (size!8985 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18239)

(declare-fun mapRest!12450 () (Array (_ BitVec 32) ValueCell!3327))

(assert (=> mapNonEmpty!12450 (= (arr!8633 _values!1525) (store mapRest!12450 mapKey!12450 mapValue!12450))))

(declare-fun b!344097 () Bool)

(assert (=> b!344097 (= e!210961 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3331 0))(
  ( (MissingZero!3331 (index!15503 (_ BitVec 32))) (Found!3331 (index!15504 (_ BitVec 32))) (Intermediate!3331 (undefined!4143 Bool) (index!15505 (_ BitVec 32)) (x!34272 (_ BitVec 32))) (Undefined!3331) (MissingVacant!3331 (index!15506 (_ BitVec 32))) )
))
(declare-fun lt!162618 () SeekEntryResult!3331)

(declare-datatypes ((array!18241 0))(
  ( (array!18242 (arr!8634 (Array (_ BitVec 32) (_ BitVec 64))) (size!8986 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18241)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18241 (_ BitVec 32)) SeekEntryResult!3331)

(assert (=> b!344097 (= lt!162618 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!344098 () Bool)

(declare-fun res!190348 () Bool)

(assert (=> b!344098 (=> (not res!190348) (not e!210961))))

(declare-datatypes ((List!5012 0))(
  ( (Nil!5009) (Cons!5008 (h!5864 (_ BitVec 64)) (t!10136 List!5012)) )
))
(declare-fun arrayNoDuplicates!0 (array!18241 (_ BitVec 32) List!5012) Bool)

(assert (=> b!344098 (= res!190348 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5009))))

(declare-fun b!344100 () Bool)

(declare-fun res!190351 () Bool)

(assert (=> b!344100 (=> (not res!190351) (not e!210961))))

(declare-fun zeroValue!1467 () V!10765)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10765)

(declare-datatypes ((tuple2!5366 0))(
  ( (tuple2!5367 (_1!2693 (_ BitVec 64)) (_2!2693 V!10765)) )
))
(declare-datatypes ((List!5013 0))(
  ( (Nil!5010) (Cons!5009 (h!5865 tuple2!5366) (t!10137 List!5013)) )
))
(declare-datatypes ((ListLongMap!4293 0))(
  ( (ListLongMap!4294 (toList!2162 List!5013)) )
))
(declare-fun contains!2216 (ListLongMap!4293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1682 (array!18241 array!18239 (_ BitVec 32) (_ BitVec 32) V!10765 V!10765 (_ BitVec 32) Int) ListLongMap!4293)

(assert (=> b!344100 (= res!190351 (not (contains!2216 (getCurrentListMap!1682 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!344101 () Bool)

(declare-fun res!190349 () Bool)

(assert (=> b!344101 (=> (not res!190349) (not e!210961))))

(assert (=> b!344101 (= res!190349 (and (= (size!8985 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8986 _keys!1895) (size!8985 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344102 () Bool)

(declare-fun e!210960 () Bool)

(declare-fun e!210959 () Bool)

(assert (=> b!344102 (= e!210960 (and e!210959 mapRes!12450))))

(declare-fun condMapEmpty!12450 () Bool)

(declare-fun mapDefault!12450 () ValueCell!3327)

(assert (=> b!344102 (= condMapEmpty!12450 (= (arr!8633 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3327)) mapDefault!12450)))))

(declare-fun mapIsEmpty!12450 () Bool)

(assert (=> mapIsEmpty!12450 mapRes!12450))

(declare-fun b!344103 () Bool)

(declare-fun res!190350 () Bool)

(assert (=> b!344103 (=> (not res!190350) (not e!210961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18241 (_ BitVec 32)) Bool)

(assert (=> b!344103 (= res!190350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344104 () Bool)

(declare-fun tp_is_empty!7341 () Bool)

(assert (=> b!344104 (= e!210963 tp_is_empty!7341)))

(declare-fun b!344099 () Bool)

(assert (=> b!344099 (= e!210959 tp_is_empty!7341)))

(declare-fun res!190352 () Bool)

(assert (=> start!34474 (=> (not res!190352) (not e!210961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34474 (= res!190352 (validMask!0 mask!2385))))

(assert (=> start!34474 e!210961))

(assert (=> start!34474 true))

(assert (=> start!34474 tp_is_empty!7341))

(assert (=> start!34474 tp!25712))

(declare-fun array_inv!6386 (array!18239) Bool)

(assert (=> start!34474 (and (array_inv!6386 _values!1525) e!210960)))

(declare-fun array_inv!6387 (array!18241) Bool)

(assert (=> start!34474 (array_inv!6387 _keys!1895)))

(assert (= (and start!34474 res!190352) b!344101))

(assert (= (and b!344101 res!190349) b!344103))

(assert (= (and b!344103 res!190350) b!344098))

(assert (= (and b!344098 res!190348) b!344096))

(assert (= (and b!344096 res!190347) b!344100))

(assert (= (and b!344100 res!190351) b!344097))

(assert (= (and b!344102 condMapEmpty!12450) mapIsEmpty!12450))

(assert (= (and b!344102 (not condMapEmpty!12450)) mapNonEmpty!12450))

(get-info :version)

(assert (= (and mapNonEmpty!12450 ((_ is ValueCellFull!3327) mapValue!12450)) b!344104))

(assert (= (and b!344102 ((_ is ValueCellFull!3327) mapDefault!12450)) b!344099))

(assert (= start!34474 b!344102))

(declare-fun m!345797 () Bool)

(assert (=> b!344097 m!345797))

(declare-fun m!345799 () Bool)

(assert (=> b!344096 m!345799))

(declare-fun m!345801 () Bool)

(assert (=> b!344103 m!345801))

(declare-fun m!345803 () Bool)

(assert (=> b!344100 m!345803))

(assert (=> b!344100 m!345803))

(declare-fun m!345805 () Bool)

(assert (=> b!344100 m!345805))

(declare-fun m!345807 () Bool)

(assert (=> b!344098 m!345807))

(declare-fun m!345809 () Bool)

(assert (=> start!34474 m!345809))

(declare-fun m!345811 () Bool)

(assert (=> start!34474 m!345811))

(declare-fun m!345813 () Bool)

(assert (=> start!34474 m!345813))

(declare-fun m!345815 () Bool)

(assert (=> mapNonEmpty!12450 m!345815))

(check-sat b_and!14615 (not b_next!7389) (not start!34474) (not b!344097) (not b!344098) (not b!344100) (not mapNonEmpty!12450) tp_is_empty!7341 (not b!344096) (not b!344103))
(check-sat b_and!14615 (not b_next!7389))
