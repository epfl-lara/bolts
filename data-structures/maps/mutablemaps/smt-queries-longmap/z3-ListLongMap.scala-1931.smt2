; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34242 () Bool)

(assert start!34242)

(declare-fun b_free!7257 () Bool)

(declare-fun b_next!7257 () Bool)

(assert (=> start!34242 (= b_free!7257 (not b_next!7257))))

(declare-fun tp!25305 () Bool)

(declare-fun b_and!14475 () Bool)

(assert (=> start!34242 (= tp!25305 b_and!14475)))

(declare-fun b!341386 () Bool)

(declare-fun e!209368 () Bool)

(declare-fun e!209371 () Bool)

(assert (=> b!341386 (= e!209368 e!209371)))

(declare-fun res!188813 () Bool)

(assert (=> b!341386 (=> (not res!188813) (not e!209371))))

(declare-datatypes ((SeekEntryResult!3284 0))(
  ( (MissingZero!3284 (index!15315 (_ BitVec 32))) (Found!3284 (index!15316 (_ BitVec 32))) (Intermediate!3284 (undefined!4096 Bool) (index!15317 (_ BitVec 32)) (x!34009 (_ BitVec 32))) (Undefined!3284) (MissingVacant!3284 (index!15318 (_ BitVec 32))) )
))
(declare-fun lt!161762 () SeekEntryResult!3284)

(get-info :version)

(assert (=> b!341386 (= res!188813 (and (not ((_ is Found!3284) lt!161762)) (not ((_ is MissingZero!3284) lt!161762)) ((_ is MissingVacant!3284) lt!161762)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!17983 0))(
  ( (array!17984 (arr!8509 (Array (_ BitVec 32) (_ BitVec 64))) (size!8861 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17983)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17983 (_ BitVec 32)) SeekEntryResult!3284)

(assert (=> b!341386 (= lt!161762 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341387 () Bool)

(declare-fun res!188810 () Bool)

(assert (=> b!341387 (=> (not res!188810) (not e!209368))))

(declare-datatypes ((List!4919 0))(
  ( (Nil!4916) (Cons!4915 (h!5771 (_ BitVec 64)) (t!10035 List!4919)) )
))
(declare-fun arrayNoDuplicates!0 (array!17983 (_ BitVec 32) List!4919) Bool)

(assert (=> b!341387 (= res!188810 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4916))))

(declare-fun b!341388 () Bool)

(assert (=> b!341388 (= e!209371 false)))

(declare-datatypes ((Unit!10602 0))(
  ( (Unit!10603) )
))
(declare-fun lt!161763 () Unit!10602)

(declare-fun e!209372 () Unit!10602)

(assert (=> b!341388 (= lt!161763 e!209372)))

(declare-fun c!52610 () Bool)

(declare-fun arrayContainsKey!0 (array!17983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341388 (= c!52610 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341389 () Bool)

(declare-fun e!209369 () Bool)

(declare-fun e!209370 () Bool)

(declare-fun mapRes!12240 () Bool)

(assert (=> b!341389 (= e!209369 (and e!209370 mapRes!12240))))

(declare-fun condMapEmpty!12240 () Bool)

(declare-datatypes ((V!10589 0))(
  ( (V!10590 (val!3649 Int)) )
))
(declare-datatypes ((ValueCell!3261 0))(
  ( (ValueCellFull!3261 (v!5817 V!10589)) (EmptyCell!3261) )
))
(declare-datatypes ((array!17985 0))(
  ( (array!17986 (arr!8510 (Array (_ BitVec 32) ValueCell!3261)) (size!8862 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17985)

(declare-fun mapDefault!12240 () ValueCell!3261)

(assert (=> b!341389 (= condMapEmpty!12240 (= (arr!8510 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3261)) mapDefault!12240)))))

(declare-fun b!341390 () Bool)

(declare-fun res!188808 () Bool)

(assert (=> b!341390 (=> (not res!188808) (not e!209368))))

(declare-fun zeroValue!1467 () V!10589)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10589)

(declare-datatypes ((tuple2!5276 0))(
  ( (tuple2!5277 (_1!2648 (_ BitVec 64)) (_2!2648 V!10589)) )
))
(declare-datatypes ((List!4920 0))(
  ( (Nil!4917) (Cons!4916 (h!5772 tuple2!5276) (t!10036 List!4920)) )
))
(declare-datatypes ((ListLongMap!4203 0))(
  ( (ListLongMap!4204 (toList!2117 List!4920)) )
))
(declare-fun contains!2167 (ListLongMap!4203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1637 (array!17983 array!17985 (_ BitVec 32) (_ BitVec 32) V!10589 V!10589 (_ BitVec 32) Int) ListLongMap!4203)

(assert (=> b!341390 (= res!188808 (not (contains!2167 (getCurrentListMap!1637 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!341392 () Bool)

(declare-fun e!209367 () Bool)

(declare-fun tp_is_empty!7209 () Bool)

(assert (=> b!341392 (= e!209367 tp_is_empty!7209)))

(declare-fun b!341393 () Bool)

(declare-fun Unit!10604 () Unit!10602)

(assert (=> b!341393 (= e!209372 Unit!10604)))

(declare-fun mapIsEmpty!12240 () Bool)

(assert (=> mapIsEmpty!12240 mapRes!12240))

(declare-fun mapNonEmpty!12240 () Bool)

(declare-fun tp!25304 () Bool)

(assert (=> mapNonEmpty!12240 (= mapRes!12240 (and tp!25304 e!209367))))

(declare-fun mapValue!12240 () ValueCell!3261)

(declare-fun mapKey!12240 () (_ BitVec 32))

(declare-fun mapRest!12240 () (Array (_ BitVec 32) ValueCell!3261))

(assert (=> mapNonEmpty!12240 (= (arr!8510 _values!1525) (store mapRest!12240 mapKey!12240 mapValue!12240))))

(declare-fun b!341394 () Bool)

(declare-fun res!188807 () Bool)

(assert (=> b!341394 (=> (not res!188807) (not e!209368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341394 (= res!188807 (validKeyInArray!0 k0!1348))))

(declare-fun res!188812 () Bool)

(assert (=> start!34242 (=> (not res!188812) (not e!209368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34242 (= res!188812 (validMask!0 mask!2385))))

(assert (=> start!34242 e!209368))

(assert (=> start!34242 true))

(assert (=> start!34242 tp_is_empty!7209))

(assert (=> start!34242 tp!25305))

(declare-fun array_inv!6296 (array!17985) Bool)

(assert (=> start!34242 (and (array_inv!6296 _values!1525) e!209369)))

(declare-fun array_inv!6297 (array!17983) Bool)

(assert (=> start!34242 (array_inv!6297 _keys!1895)))

(declare-fun b!341391 () Bool)

(declare-fun res!188809 () Bool)

(assert (=> b!341391 (=> (not res!188809) (not e!209368))))

(assert (=> b!341391 (= res!188809 (and (= (size!8862 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8861 _keys!1895) (size!8862 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341395 () Bool)

(declare-fun Unit!10605 () Unit!10602)

(assert (=> b!341395 (= e!209372 Unit!10605)))

(declare-fun lt!161761 () Unit!10602)

(declare-fun lemmaArrayContainsKeyThenInListMap!289 (array!17983 array!17985 (_ BitVec 32) (_ BitVec 32) V!10589 V!10589 (_ BitVec 64) (_ BitVec 32) Int) Unit!10602)

(declare-fun arrayScanForKey!0 (array!17983 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341395 (= lt!161761 (lemmaArrayContainsKeyThenInListMap!289 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341395 false))

(declare-fun b!341396 () Bool)

(assert (=> b!341396 (= e!209370 tp_is_empty!7209)))

(declare-fun b!341397 () Bool)

(declare-fun res!188811 () Bool)

(assert (=> b!341397 (=> (not res!188811) (not e!209368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17983 (_ BitVec 32)) Bool)

(assert (=> b!341397 (= res!188811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34242 res!188812) b!341391))

(assert (= (and b!341391 res!188809) b!341397))

(assert (= (and b!341397 res!188811) b!341387))

(assert (= (and b!341387 res!188810) b!341394))

(assert (= (and b!341394 res!188807) b!341390))

(assert (= (and b!341390 res!188808) b!341386))

(assert (= (and b!341386 res!188813) b!341388))

(assert (= (and b!341388 c!52610) b!341395))

(assert (= (and b!341388 (not c!52610)) b!341393))

(assert (= (and b!341389 condMapEmpty!12240) mapIsEmpty!12240))

(assert (= (and b!341389 (not condMapEmpty!12240)) mapNonEmpty!12240))

(assert (= (and mapNonEmpty!12240 ((_ is ValueCellFull!3261) mapValue!12240)) b!341392))

(assert (= (and b!341389 ((_ is ValueCellFull!3261) mapDefault!12240)) b!341396))

(assert (= start!34242 b!341389))

(declare-fun m!343817 () Bool)

(assert (=> start!34242 m!343817))

(declare-fun m!343819 () Bool)

(assert (=> start!34242 m!343819))

(declare-fun m!343821 () Bool)

(assert (=> start!34242 m!343821))

(declare-fun m!343823 () Bool)

(assert (=> b!341388 m!343823))

(declare-fun m!343825 () Bool)

(assert (=> b!341387 m!343825))

(declare-fun m!343827 () Bool)

(assert (=> b!341395 m!343827))

(assert (=> b!341395 m!343827))

(declare-fun m!343829 () Bool)

(assert (=> b!341395 m!343829))

(declare-fun m!343831 () Bool)

(assert (=> b!341386 m!343831))

(declare-fun m!343833 () Bool)

(assert (=> b!341394 m!343833))

(declare-fun m!343835 () Bool)

(assert (=> b!341390 m!343835))

(assert (=> b!341390 m!343835))

(declare-fun m!343837 () Bool)

(assert (=> b!341390 m!343837))

(declare-fun m!343839 () Bool)

(assert (=> b!341397 m!343839))

(declare-fun m!343841 () Bool)

(assert (=> mapNonEmpty!12240 m!343841))

(check-sat (not b!341386) tp_is_empty!7209 (not b!341397) (not b!341390) (not b!341395) (not b!341388) (not mapNonEmpty!12240) (not b!341387) (not b!341394) (not b_next!7257) (not start!34242) b_and!14475)
(check-sat b_and!14475 (not b_next!7257))
