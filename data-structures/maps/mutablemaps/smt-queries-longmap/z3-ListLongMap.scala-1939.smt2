; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34338 () Bool)

(assert start!34338)

(declare-fun b_free!7305 () Bool)

(declare-fun b_next!7305 () Bool)

(assert (=> start!34338 (= b_free!7305 (not b_next!7305))))

(declare-fun tp!25454 () Bool)

(declare-fun b_and!14527 () Bool)

(assert (=> start!34338 (= tp!25454 b_and!14527)))

(declare-fun b!342528 () Bool)

(declare-fun res!189418 () Bool)

(declare-fun e!210056 () Bool)

(assert (=> b!342528 (=> (not res!189418) (not e!210056))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10653 0))(
  ( (V!10654 (val!3673 Int)) )
))
(declare-datatypes ((ValueCell!3285 0))(
  ( (ValueCellFull!3285 (v!5843 V!10653)) (EmptyCell!3285) )
))
(declare-datatypes ((array!18081 0))(
  ( (array!18082 (arr!8556 (Array (_ BitVec 32) ValueCell!3285)) (size!8908 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18081)

(declare-datatypes ((array!18083 0))(
  ( (array!18084 (arr!8557 (Array (_ BitVec 32) (_ BitVec 64))) (size!8909 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18083)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!342528 (= res!189418 (and (= (size!8908 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8909 _keys!1895) (size!8908 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342529 () Bool)

(declare-fun e!210054 () Bool)

(declare-fun e!210055 () Bool)

(declare-fun mapRes!12318 () Bool)

(assert (=> b!342529 (= e!210054 (and e!210055 mapRes!12318))))

(declare-fun condMapEmpty!12318 () Bool)

(declare-fun mapDefault!12318 () ValueCell!3285)

(assert (=> b!342529 (= condMapEmpty!12318 (= (arr!8556 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3285)) mapDefault!12318)))))

(declare-fun b!342530 () Bool)

(declare-datatypes ((Unit!10678 0))(
  ( (Unit!10679) )
))
(declare-fun e!210057 () Unit!10678)

(declare-fun Unit!10680 () Unit!10678)

(assert (=> b!342530 (= e!210057 Unit!10680)))

(declare-fun mapIsEmpty!12318 () Bool)

(assert (=> mapIsEmpty!12318 mapRes!12318))

(declare-fun mapNonEmpty!12318 () Bool)

(declare-fun tp!25455 () Bool)

(declare-fun e!210053 () Bool)

(assert (=> mapNonEmpty!12318 (= mapRes!12318 (and tp!25455 e!210053))))

(declare-fun mapRest!12318 () (Array (_ BitVec 32) ValueCell!3285))

(declare-fun mapKey!12318 () (_ BitVec 32))

(declare-fun mapValue!12318 () ValueCell!3285)

(assert (=> mapNonEmpty!12318 (= (arr!8556 _values!1525) (store mapRest!12318 mapKey!12318 mapValue!12318))))

(declare-fun b!342531 () Bool)

(declare-fun res!189419 () Bool)

(assert (=> b!342531 (=> (not res!189419) (not e!210056))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10653)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10653)

(declare-datatypes ((tuple2!5312 0))(
  ( (tuple2!5313 (_1!2666 (_ BitVec 64)) (_2!2666 V!10653)) )
))
(declare-datatypes ((List!4954 0))(
  ( (Nil!4951) (Cons!4950 (h!5806 tuple2!5312) (t!10074 List!4954)) )
))
(declare-datatypes ((ListLongMap!4239 0))(
  ( (ListLongMap!4240 (toList!2135 List!4954)) )
))
(declare-fun contains!2187 (ListLongMap!4239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1655 (array!18083 array!18081 (_ BitVec 32) (_ BitVec 32) V!10653 V!10653 (_ BitVec 32) Int) ListLongMap!4239)

(assert (=> b!342531 (= res!189419 (not (contains!2187 (getCurrentListMap!1655 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!342532 () Bool)

(declare-fun Unit!10681 () Unit!10678)

(assert (=> b!342532 (= e!210057 Unit!10681)))

(declare-fun lt!162192 () Unit!10678)

(declare-fun lemmaArrayContainsKeyThenInListMap!306 (array!18083 array!18081 (_ BitVec 32) (_ BitVec 32) V!10653 V!10653 (_ BitVec 64) (_ BitVec 32) Int) Unit!10678)

(declare-fun arrayScanForKey!0 (array!18083 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342532 (= lt!162192 (lemmaArrayContainsKeyThenInListMap!306 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342532 false))

(declare-fun res!189417 () Bool)

(assert (=> start!34338 (=> (not res!189417) (not e!210056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34338 (= res!189417 (validMask!0 mask!2385))))

(assert (=> start!34338 e!210056))

(assert (=> start!34338 true))

(declare-fun tp_is_empty!7257 () Bool)

(assert (=> start!34338 tp_is_empty!7257))

(assert (=> start!34338 tp!25454))

(declare-fun array_inv!6326 (array!18081) Bool)

(assert (=> start!34338 (and (array_inv!6326 _values!1525) e!210054)))

(declare-fun array_inv!6327 (array!18083) Bool)

(assert (=> start!34338 (array_inv!6327 _keys!1895)))

(declare-fun b!342533 () Bool)

(declare-fun e!210052 () Bool)

(assert (=> b!342533 (= e!210052 false)))

(declare-fun lt!162191 () Unit!10678)

(assert (=> b!342533 (= lt!162191 e!210057)))

(declare-fun c!52760 () Bool)

(declare-fun arrayContainsKey!0 (array!18083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342533 (= c!52760 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!342534 () Bool)

(assert (=> b!342534 (= e!210056 e!210052)))

(declare-fun res!189415 () Bool)

(assert (=> b!342534 (=> (not res!189415) (not e!210052))))

(declare-datatypes ((SeekEntryResult!3300 0))(
  ( (MissingZero!3300 (index!15379 (_ BitVec 32))) (Found!3300 (index!15380 (_ BitVec 32))) (Intermediate!3300 (undefined!4112 Bool) (index!15381 (_ BitVec 32)) (x!34109 (_ BitVec 32))) (Undefined!3300) (MissingVacant!3300 (index!15382 (_ BitVec 32))) )
))
(declare-fun lt!162190 () SeekEntryResult!3300)

(get-info :version)

(assert (=> b!342534 (= res!189415 (and (not ((_ is Found!3300) lt!162190)) (not ((_ is MissingZero!3300) lt!162190)) ((_ is MissingVacant!3300) lt!162190)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18083 (_ BitVec 32)) SeekEntryResult!3300)

(assert (=> b!342534 (= lt!162190 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!342535 () Bool)

(assert (=> b!342535 (= e!210053 tp_is_empty!7257)))

(declare-fun b!342536 () Bool)

(declare-fun res!189414 () Bool)

(assert (=> b!342536 (=> (not res!189414) (not e!210056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18083 (_ BitVec 32)) Bool)

(assert (=> b!342536 (= res!189414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342537 () Bool)

(declare-fun res!189413 () Bool)

(assert (=> b!342537 (=> (not res!189413) (not e!210056))))

(declare-datatypes ((List!4955 0))(
  ( (Nil!4952) (Cons!4951 (h!5807 (_ BitVec 64)) (t!10075 List!4955)) )
))
(declare-fun arrayNoDuplicates!0 (array!18083 (_ BitVec 32) List!4955) Bool)

(assert (=> b!342537 (= res!189413 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4952))))

(declare-fun b!342538 () Bool)

(declare-fun res!189416 () Bool)

(assert (=> b!342538 (=> (not res!189416) (not e!210056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342538 (= res!189416 (validKeyInArray!0 k0!1348))))

(declare-fun b!342539 () Bool)

(assert (=> b!342539 (= e!210055 tp_is_empty!7257)))

(assert (= (and start!34338 res!189417) b!342528))

(assert (= (and b!342528 res!189418) b!342536))

(assert (= (and b!342536 res!189414) b!342537))

(assert (= (and b!342537 res!189413) b!342538))

(assert (= (and b!342538 res!189416) b!342531))

(assert (= (and b!342531 res!189419) b!342534))

(assert (= (and b!342534 res!189415) b!342533))

(assert (= (and b!342533 c!52760) b!342532))

(assert (= (and b!342533 (not c!52760)) b!342530))

(assert (= (and b!342529 condMapEmpty!12318) mapIsEmpty!12318))

(assert (= (and b!342529 (not condMapEmpty!12318)) mapNonEmpty!12318))

(assert (= (and mapNonEmpty!12318 ((_ is ValueCellFull!3285) mapValue!12318)) b!342535))

(assert (= (and b!342529 ((_ is ValueCellFull!3285) mapDefault!12318)) b!342539))

(assert (= start!34338 b!342529))

(declare-fun m!344645 () Bool)

(assert (=> start!34338 m!344645))

(declare-fun m!344647 () Bool)

(assert (=> start!34338 m!344647))

(declare-fun m!344649 () Bool)

(assert (=> start!34338 m!344649))

(declare-fun m!344651 () Bool)

(assert (=> b!342534 m!344651))

(declare-fun m!344653 () Bool)

(assert (=> mapNonEmpty!12318 m!344653))

(declare-fun m!344655 () Bool)

(assert (=> b!342532 m!344655))

(assert (=> b!342532 m!344655))

(declare-fun m!344657 () Bool)

(assert (=> b!342532 m!344657))

(declare-fun m!344659 () Bool)

(assert (=> b!342538 m!344659))

(declare-fun m!344661 () Bool)

(assert (=> b!342536 m!344661))

(declare-fun m!344663 () Bool)

(assert (=> b!342531 m!344663))

(assert (=> b!342531 m!344663))

(declare-fun m!344665 () Bool)

(assert (=> b!342531 m!344665))

(declare-fun m!344667 () Bool)

(assert (=> b!342537 m!344667))

(declare-fun m!344669 () Bool)

(assert (=> b!342533 m!344669))

(check-sat (not b!342538) (not mapNonEmpty!12318) (not b!342532) (not b_next!7305) (not b!342536) (not start!34338) (not b!342533) (not b!342537) (not b!342534) b_and!14527 (not b!342531) tp_is_empty!7257)
(check-sat b_and!14527 (not b_next!7305))
