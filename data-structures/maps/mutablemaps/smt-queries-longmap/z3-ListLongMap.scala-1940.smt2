; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34344 () Bool)

(assert start!34344)

(declare-fun b_free!7311 () Bool)

(declare-fun b_next!7311 () Bool)

(assert (=> start!34344 (= b_free!7311 (not b_next!7311))))

(declare-fun tp!25473 () Bool)

(declare-fun b_and!14533 () Bool)

(assert (=> start!34344 (= tp!25473 b_and!14533)))

(declare-fun b!342636 () Bool)

(declare-fun res!189477 () Bool)

(declare-fun e!210115 () Bool)

(assert (=> b!342636 (=> (not res!189477) (not e!210115))))

(declare-datatypes ((array!18093 0))(
  ( (array!18094 (arr!8562 (Array (_ BitVec 32) (_ BitVec 64))) (size!8914 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18093)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18093 (_ BitVec 32)) Bool)

(assert (=> b!342636 (= res!189477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342638 () Bool)

(declare-fun e!210118 () Bool)

(declare-fun tp_is_empty!7263 () Bool)

(assert (=> b!342638 (= e!210118 tp_is_empty!7263)))

(declare-fun b!342639 () Bool)

(declare-datatypes ((Unit!10689 0))(
  ( (Unit!10690) )
))
(declare-fun e!210120 () Unit!10689)

(declare-fun Unit!10691 () Unit!10689)

(assert (=> b!342639 (= e!210120 Unit!10691)))

(declare-fun b!342640 () Bool)

(declare-fun Unit!10692 () Unit!10689)

(assert (=> b!342640 (= e!210120 Unit!10692)))

(declare-fun lt!162217 () Unit!10689)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10661 0))(
  ( (V!10662 (val!3676 Int)) )
))
(declare-fun zeroValue!1467 () V!10661)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3288 0))(
  ( (ValueCellFull!3288 (v!5846 V!10661)) (EmptyCell!3288) )
))
(declare-datatypes ((array!18095 0))(
  ( (array!18096 (arr!8563 (Array (_ BitVec 32) ValueCell!3288)) (size!8915 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18095)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10661)

(declare-fun lemmaArrayContainsKeyThenInListMap!309 (array!18093 array!18095 (_ BitVec 32) (_ BitVec 32) V!10661 V!10661 (_ BitVec 64) (_ BitVec 32) Int) Unit!10689)

(declare-fun arrayScanForKey!0 (array!18093 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342640 (= lt!162217 (lemmaArrayContainsKeyThenInListMap!309 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342640 false))

(declare-fun b!342641 () Bool)

(declare-fun e!210116 () Bool)

(assert (=> b!342641 (= e!210116 false)))

(declare-fun lt!162218 () Unit!10689)

(assert (=> b!342641 (= lt!162218 e!210120)))

(declare-fun c!52769 () Bool)

(declare-fun arrayContainsKey!0 (array!18093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342641 (= c!52769 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342642 () Bool)

(declare-fun res!189482 () Bool)

(assert (=> b!342642 (=> (not res!189482) (not e!210115))))

(declare-datatypes ((List!4959 0))(
  ( (Nil!4956) (Cons!4955 (h!5811 (_ BitVec 64)) (t!10079 List!4959)) )
))
(declare-fun arrayNoDuplicates!0 (array!18093 (_ BitVec 32) List!4959) Bool)

(assert (=> b!342642 (= res!189482 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4956))))

(declare-fun b!342643 () Bool)

(declare-fun res!189481 () Bool)

(assert (=> b!342643 (=> (not res!189481) (not e!210115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342643 (= res!189481 (validKeyInArray!0 k0!1348))))

(declare-fun b!342644 () Bool)

(declare-fun res!189480 () Bool)

(assert (=> b!342644 (=> (not res!189480) (not e!210115))))

(declare-datatypes ((tuple2!5316 0))(
  ( (tuple2!5317 (_1!2668 (_ BitVec 64)) (_2!2668 V!10661)) )
))
(declare-datatypes ((List!4960 0))(
  ( (Nil!4957) (Cons!4956 (h!5812 tuple2!5316) (t!10080 List!4960)) )
))
(declare-datatypes ((ListLongMap!4243 0))(
  ( (ListLongMap!4244 (toList!2137 List!4960)) )
))
(declare-fun contains!2189 (ListLongMap!4243 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1657 (array!18093 array!18095 (_ BitVec 32) (_ BitVec 32) V!10661 V!10661 (_ BitVec 32) Int) ListLongMap!4243)

(assert (=> b!342644 (= res!189480 (not (contains!2189 (getCurrentListMap!1657 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!342645 () Bool)

(declare-fun res!189478 () Bool)

(assert (=> b!342645 (=> (not res!189478) (not e!210115))))

(assert (=> b!342645 (= res!189478 (and (= (size!8915 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8914 _keys!1895) (size!8915 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!12327 () Bool)

(declare-fun mapRes!12327 () Bool)

(declare-fun tp!25472 () Bool)

(declare-fun e!210114 () Bool)

(assert (=> mapNonEmpty!12327 (= mapRes!12327 (and tp!25472 e!210114))))

(declare-fun mapValue!12327 () ValueCell!3288)

(declare-fun mapKey!12327 () (_ BitVec 32))

(declare-fun mapRest!12327 () (Array (_ BitVec 32) ValueCell!3288))

(assert (=> mapNonEmpty!12327 (= (arr!8563 _values!1525) (store mapRest!12327 mapKey!12327 mapValue!12327))))

(declare-fun mapIsEmpty!12327 () Bool)

(assert (=> mapIsEmpty!12327 mapRes!12327))

(declare-fun b!342637 () Bool)

(assert (=> b!342637 (= e!210115 e!210116)))

(declare-fun res!189479 () Bool)

(assert (=> b!342637 (=> (not res!189479) (not e!210116))))

(declare-datatypes ((SeekEntryResult!3302 0))(
  ( (MissingZero!3302 (index!15387 (_ BitVec 32))) (Found!3302 (index!15388 (_ BitVec 32))) (Intermediate!3302 (undefined!4114 Bool) (index!15389 (_ BitVec 32)) (x!34119 (_ BitVec 32))) (Undefined!3302) (MissingVacant!3302 (index!15390 (_ BitVec 32))) )
))
(declare-fun lt!162219 () SeekEntryResult!3302)

(get-info :version)

(assert (=> b!342637 (= res!189479 (and (not ((_ is Found!3302) lt!162219)) (not ((_ is MissingZero!3302) lt!162219)) ((_ is MissingVacant!3302) lt!162219)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18093 (_ BitVec 32)) SeekEntryResult!3302)

(assert (=> b!342637 (= lt!162219 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!189476 () Bool)

(assert (=> start!34344 (=> (not res!189476) (not e!210115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34344 (= res!189476 (validMask!0 mask!2385))))

(assert (=> start!34344 e!210115))

(assert (=> start!34344 true))

(assert (=> start!34344 tp_is_empty!7263))

(assert (=> start!34344 tp!25473))

(declare-fun e!210119 () Bool)

(declare-fun array_inv!6330 (array!18095) Bool)

(assert (=> start!34344 (and (array_inv!6330 _values!1525) e!210119)))

(declare-fun array_inv!6331 (array!18093) Bool)

(assert (=> start!34344 (array_inv!6331 _keys!1895)))

(declare-fun b!342646 () Bool)

(assert (=> b!342646 (= e!210114 tp_is_empty!7263)))

(declare-fun b!342647 () Bool)

(assert (=> b!342647 (= e!210119 (and e!210118 mapRes!12327))))

(declare-fun condMapEmpty!12327 () Bool)

(declare-fun mapDefault!12327 () ValueCell!3288)

(assert (=> b!342647 (= condMapEmpty!12327 (= (arr!8563 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3288)) mapDefault!12327)))))

(assert (= (and start!34344 res!189476) b!342645))

(assert (= (and b!342645 res!189478) b!342636))

(assert (= (and b!342636 res!189477) b!342642))

(assert (= (and b!342642 res!189482) b!342643))

(assert (= (and b!342643 res!189481) b!342644))

(assert (= (and b!342644 res!189480) b!342637))

(assert (= (and b!342637 res!189479) b!342641))

(assert (= (and b!342641 c!52769) b!342640))

(assert (= (and b!342641 (not c!52769)) b!342639))

(assert (= (and b!342647 condMapEmpty!12327) mapIsEmpty!12327))

(assert (= (and b!342647 (not condMapEmpty!12327)) mapNonEmpty!12327))

(assert (= (and mapNonEmpty!12327 ((_ is ValueCellFull!3288) mapValue!12327)) b!342646))

(assert (= (and b!342647 ((_ is ValueCellFull!3288) mapDefault!12327)) b!342638))

(assert (= start!34344 b!342647))

(declare-fun m!344723 () Bool)

(assert (=> b!342641 m!344723))

(declare-fun m!344725 () Bool)

(assert (=> start!34344 m!344725))

(declare-fun m!344727 () Bool)

(assert (=> start!34344 m!344727))

(declare-fun m!344729 () Bool)

(assert (=> start!34344 m!344729))

(declare-fun m!344731 () Bool)

(assert (=> b!342643 m!344731))

(declare-fun m!344733 () Bool)

(assert (=> b!342637 m!344733))

(declare-fun m!344735 () Bool)

(assert (=> b!342642 m!344735))

(declare-fun m!344737 () Bool)

(assert (=> mapNonEmpty!12327 m!344737))

(declare-fun m!344739 () Bool)

(assert (=> b!342636 m!344739))

(declare-fun m!344741 () Bool)

(assert (=> b!342640 m!344741))

(assert (=> b!342640 m!344741))

(declare-fun m!344743 () Bool)

(assert (=> b!342640 m!344743))

(declare-fun m!344745 () Bool)

(assert (=> b!342644 m!344745))

(assert (=> b!342644 m!344745))

(declare-fun m!344747 () Bool)

(assert (=> b!342644 m!344747))

(check-sat (not mapNonEmpty!12327) (not b!342643) (not b!342637) (not b_next!7311) (not b!342640) tp_is_empty!7263 (not b!342642) (not b!342636) (not start!34344) (not b!342641) (not b!342644) b_and!14533)
(check-sat b_and!14533 (not b_next!7311))
