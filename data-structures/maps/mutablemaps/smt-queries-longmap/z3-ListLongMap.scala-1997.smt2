; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34920 () Bool)

(assert start!34920)

(declare-fun b_free!7653 () Bool)

(declare-fun b_next!7653 () Bool)

(assert (=> start!34920 (= b_free!7653 (not b_next!7653))))

(declare-fun tp!26532 () Bool)

(declare-fun b_and!14897 () Bool)

(assert (=> start!34920 (= tp!26532 b_and!14897)))

(declare-fun mapNonEmpty!12873 () Bool)

(declare-fun mapRes!12873 () Bool)

(declare-fun tp!26531 () Bool)

(declare-fun e!214058 () Bool)

(assert (=> mapNonEmpty!12873 (= mapRes!12873 (and tp!26531 e!214058))))

(declare-fun mapKey!12873 () (_ BitVec 32))

(declare-datatypes ((V!11117 0))(
  ( (V!11118 (val!3847 Int)) )
))
(declare-datatypes ((ValueCell!3459 0))(
  ( (ValueCellFull!3459 (v!6028 V!11117)) (EmptyCell!3459) )
))
(declare-fun mapRest!12873 () (Array (_ BitVec 32) ValueCell!3459))

(declare-datatypes ((array!18765 0))(
  ( (array!18766 (arr!8887 (Array (_ BitVec 32) ValueCell!3459)) (size!9239 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18765)

(declare-fun mapValue!12873 () ValueCell!3459)

(assert (=> mapNonEmpty!12873 (= (arr!8887 _values!1525) (store mapRest!12873 mapKey!12873 mapValue!12873))))

(declare-fun res!193729 () Bool)

(declare-fun e!214059 () Bool)

(assert (=> start!34920 (=> (not res!193729) (not e!214059))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34920 (= res!193729 (validMask!0 mask!2385))))

(assert (=> start!34920 e!214059))

(assert (=> start!34920 true))

(declare-fun tp_is_empty!7605 () Bool)

(assert (=> start!34920 tp_is_empty!7605))

(assert (=> start!34920 tp!26532))

(declare-fun e!214056 () Bool)

(declare-fun array_inv!6552 (array!18765) Bool)

(assert (=> start!34920 (and (array_inv!6552 _values!1525) e!214056)))

(declare-datatypes ((array!18767 0))(
  ( (array!18768 (arr!8888 (Array (_ BitVec 32) (_ BitVec 64))) (size!9240 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18767)

(declare-fun array_inv!6553 (array!18767) Bool)

(assert (=> start!34920 (array_inv!6553 _keys!1895)))

(declare-fun b!349425 () Bool)

(declare-fun e!214055 () Bool)

(declare-fun lt!164211 () Bool)

(assert (=> b!349425 (= e!214055 lt!164211)))

(declare-datatypes ((Unit!10822 0))(
  ( (Unit!10823) )
))
(declare-fun lt!164208 () Unit!10822)

(declare-fun e!214057 () Unit!10822)

(assert (=> b!349425 (= lt!164208 e!214057)))

(declare-fun c!53213 () Bool)

(assert (=> b!349425 (= c!53213 lt!164211)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349425 (= lt!164211 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!349426 () Bool)

(declare-fun res!193731 () Bool)

(assert (=> b!349426 (=> (not res!193731) (not e!214059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349426 (= res!193731 (validKeyInArray!0 k0!1348))))

(declare-fun b!349427 () Bool)

(declare-fun Unit!10824 () Unit!10822)

(assert (=> b!349427 (= e!214057 Unit!10824)))

(declare-fun zeroValue!1467 () V!11117)

(declare-fun lt!164209 () Unit!10822)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11117)

(declare-fun lemmaArrayContainsKeyThenInListMap!319 (array!18767 array!18765 (_ BitVec 32) (_ BitVec 32) V!11117 V!11117 (_ BitVec 64) (_ BitVec 32) Int) Unit!10822)

(declare-fun arrayScanForKey!0 (array!18767 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349427 (= lt!164209 (lemmaArrayContainsKeyThenInListMap!319 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!349427 false))

(declare-fun b!349428 () Bool)

(assert (=> b!349428 (= e!214058 tp_is_empty!7605)))

(declare-fun b!349429 () Bool)

(declare-fun res!193730 () Bool)

(assert (=> b!349429 (=> (not res!193730) (not e!214059))))

(declare-datatypes ((tuple2!5554 0))(
  ( (tuple2!5555 (_1!2787 (_ BitVec 64)) (_2!2787 V!11117)) )
))
(declare-datatypes ((List!5193 0))(
  ( (Nil!5190) (Cons!5189 (h!6045 tuple2!5554) (t!10335 List!5193)) )
))
(declare-datatypes ((ListLongMap!4481 0))(
  ( (ListLongMap!4482 (toList!2256 List!5193)) )
))
(declare-fun contains!2319 (ListLongMap!4481 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1773 (array!18767 array!18765 (_ BitVec 32) (_ BitVec 32) V!11117 V!11117 (_ BitVec 32) Int) ListLongMap!4481)

(assert (=> b!349429 (= res!193730 (not (contains!2319 (getCurrentListMap!1773 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!349430 () Bool)

(declare-fun e!214060 () Bool)

(assert (=> b!349430 (= e!214056 (and e!214060 mapRes!12873))))

(declare-fun condMapEmpty!12873 () Bool)

(declare-fun mapDefault!12873 () ValueCell!3459)

(assert (=> b!349430 (= condMapEmpty!12873 (= (arr!8887 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3459)) mapDefault!12873)))))

(declare-fun b!349431 () Bool)

(declare-fun res!193732 () Bool)

(assert (=> b!349431 (=> (not res!193732) (not e!214059))))

(declare-datatypes ((List!5194 0))(
  ( (Nil!5191) (Cons!5190 (h!6046 (_ BitVec 64)) (t!10336 List!5194)) )
))
(declare-fun arrayNoDuplicates!0 (array!18767 (_ BitVec 32) List!5194) Bool)

(assert (=> b!349431 (= res!193732 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5191))))

(declare-fun b!349432 () Bool)

(assert (=> b!349432 (= e!214060 tp_is_empty!7605)))

(declare-fun b!349433 () Bool)

(declare-fun res!193733 () Bool)

(assert (=> b!349433 (=> (not res!193733) (not e!214059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18767 (_ BitVec 32)) Bool)

(assert (=> b!349433 (= res!193733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349434 () Bool)

(declare-fun res!193734 () Bool)

(assert (=> b!349434 (=> (not res!193734) (not e!214059))))

(assert (=> b!349434 (= res!193734 (and (= (size!9239 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9240 _keys!1895) (size!9239 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349435 () Bool)

(assert (=> b!349435 (= e!214059 e!214055)))

(declare-fun res!193728 () Bool)

(assert (=> b!349435 (=> (not res!193728) (not e!214055))))

(declare-datatypes ((SeekEntryResult!3422 0))(
  ( (MissingZero!3422 (index!15867 (_ BitVec 32))) (Found!3422 (index!15868 (_ BitVec 32))) (Intermediate!3422 (undefined!4234 Bool) (index!15869 (_ BitVec 32)) (x!34805 (_ BitVec 32))) (Undefined!3422) (MissingVacant!3422 (index!15870 (_ BitVec 32))) )
))
(declare-fun lt!164210 () SeekEntryResult!3422)

(get-info :version)

(assert (=> b!349435 (= res!193728 (and (not ((_ is Found!3422) lt!164210)) ((_ is MissingZero!3422) lt!164210)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18767 (_ BitVec 32)) SeekEntryResult!3422)

(assert (=> b!349435 (= lt!164210 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!349436 () Bool)

(declare-fun Unit!10825 () Unit!10822)

(assert (=> b!349436 (= e!214057 Unit!10825)))

(declare-fun mapIsEmpty!12873 () Bool)

(assert (=> mapIsEmpty!12873 mapRes!12873))

(assert (= (and start!34920 res!193729) b!349434))

(assert (= (and b!349434 res!193734) b!349433))

(assert (= (and b!349433 res!193733) b!349431))

(assert (= (and b!349431 res!193732) b!349426))

(assert (= (and b!349426 res!193731) b!349429))

(assert (= (and b!349429 res!193730) b!349435))

(assert (= (and b!349435 res!193728) b!349425))

(assert (= (and b!349425 c!53213) b!349427))

(assert (= (and b!349425 (not c!53213)) b!349436))

(assert (= (and b!349430 condMapEmpty!12873) mapIsEmpty!12873))

(assert (= (and b!349430 (not condMapEmpty!12873)) mapNonEmpty!12873))

(assert (= (and mapNonEmpty!12873 ((_ is ValueCellFull!3459) mapValue!12873)) b!349428))

(assert (= (and b!349430 ((_ is ValueCellFull!3459) mapDefault!12873)) b!349432))

(assert (= start!34920 b!349430))

(declare-fun m!349919 () Bool)

(assert (=> b!349427 m!349919))

(assert (=> b!349427 m!349919))

(declare-fun m!349921 () Bool)

(assert (=> b!349427 m!349921))

(declare-fun m!349923 () Bool)

(assert (=> b!349433 m!349923))

(declare-fun m!349925 () Bool)

(assert (=> mapNonEmpty!12873 m!349925))

(declare-fun m!349927 () Bool)

(assert (=> b!349435 m!349927))

(declare-fun m!349929 () Bool)

(assert (=> start!34920 m!349929))

(declare-fun m!349931 () Bool)

(assert (=> start!34920 m!349931))

(declare-fun m!349933 () Bool)

(assert (=> start!34920 m!349933))

(declare-fun m!349935 () Bool)

(assert (=> b!349429 m!349935))

(assert (=> b!349429 m!349935))

(declare-fun m!349937 () Bool)

(assert (=> b!349429 m!349937))

(declare-fun m!349939 () Bool)

(assert (=> b!349425 m!349939))

(declare-fun m!349941 () Bool)

(assert (=> b!349426 m!349941))

(declare-fun m!349943 () Bool)

(assert (=> b!349431 m!349943))

(check-sat (not b!349425) (not b!349426) (not start!34920) (not b!349427) tp_is_empty!7605 (not b!349429) (not b!349435) (not mapNonEmpty!12873) (not b!349433) (not b!349431) (not b_next!7653) b_and!14897)
(check-sat b_and!14897 (not b_next!7653))
