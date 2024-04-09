; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33996 () Bool)

(assert start!33996)

(declare-fun b_free!7119 () Bool)

(declare-fun b_next!7119 () Bool)

(assert (=> start!33996 (= b_free!7119 (not b_next!7119))))

(declare-fun tp!24875 () Bool)

(declare-fun b_and!14327 () Bool)

(assert (=> start!33996 (= tp!24875 b_and!14327)))

(declare-fun b!338417 () Bool)

(declare-fun res!187007 () Bool)

(declare-fun e!207651 () Bool)

(assert (=> b!338417 (=> (not res!187007) (not e!207651))))

(declare-datatypes ((array!17709 0))(
  ( (array!17710 (arr!8377 (Array (_ BitVec 32) (_ BitVec 64))) (size!8729 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17709)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17709 (_ BitVec 32)) Bool)

(assert (=> b!338417 (= res!187007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12018 () Bool)

(declare-fun mapRes!12018 () Bool)

(declare-fun tp!24876 () Bool)

(declare-fun e!207652 () Bool)

(assert (=> mapNonEmpty!12018 (= mapRes!12018 (and tp!24876 e!207652))))

(declare-datatypes ((V!10405 0))(
  ( (V!10406 (val!3580 Int)) )
))
(declare-datatypes ((ValueCell!3192 0))(
  ( (ValueCellFull!3192 (v!5743 V!10405)) (EmptyCell!3192) )
))
(declare-fun mapRest!12018 () (Array (_ BitVec 32) ValueCell!3192))

(declare-fun mapValue!12018 () ValueCell!3192)

(declare-datatypes ((array!17711 0))(
  ( (array!17712 (arr!8378 (Array (_ BitVec 32) ValueCell!3192)) (size!8730 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17711)

(declare-fun mapKey!12018 () (_ BitVec 32))

(assert (=> mapNonEmpty!12018 (= (arr!8378 _values!1525) (store mapRest!12018 mapKey!12018 mapValue!12018))))

(declare-fun b!338418 () Bool)

(declare-fun e!207657 () Bool)

(assert (=> b!338418 (= e!207657 false)))

(declare-datatypes ((Unit!10511 0))(
  ( (Unit!10512) )
))
(declare-fun lt!160821 () Unit!10511)

(declare-fun e!207654 () Unit!10511)

(assert (=> b!338418 (= lt!160821 e!207654)))

(declare-fun c!52361 () Bool)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338418 (= c!52361 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12018 () Bool)

(assert (=> mapIsEmpty!12018 mapRes!12018))

(declare-fun b!338419 () Bool)

(declare-fun e!207653 () Bool)

(declare-fun e!207656 () Bool)

(assert (=> b!338419 (= e!207653 (and e!207656 mapRes!12018))))

(declare-fun condMapEmpty!12018 () Bool)

(declare-fun mapDefault!12018 () ValueCell!3192)

(assert (=> b!338419 (= condMapEmpty!12018 (= (arr!8378 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3192)) mapDefault!12018)))))

(declare-fun b!338420 () Bool)

(declare-fun tp_is_empty!7071 () Bool)

(assert (=> b!338420 (= e!207652 tp_is_empty!7071)))

(declare-fun b!338421 () Bool)

(declare-fun Unit!10513 () Unit!10511)

(assert (=> b!338421 (= e!207654 Unit!10513)))

(declare-fun zeroValue!1467 () V!10405)

(declare-fun lt!160819 () Unit!10511)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10405)

(declare-fun lemmaArrayContainsKeyThenInListMap!273 (array!17709 array!17711 (_ BitVec 32) (_ BitVec 32) V!10405 V!10405 (_ BitVec 64) (_ BitVec 32) Int) Unit!10511)

(declare-fun arrayScanForKey!0 (array!17709 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338421 (= lt!160819 (lemmaArrayContainsKeyThenInListMap!273 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338421 false))

(declare-fun b!338422 () Bool)

(assert (=> b!338422 (= e!207651 e!207657)))

(declare-fun res!187010 () Bool)

(assert (=> b!338422 (=> (not res!187010) (not e!207657))))

(declare-datatypes ((SeekEntryResult!3240 0))(
  ( (MissingZero!3240 (index!15139 (_ BitVec 32))) (Found!3240 (index!15140 (_ BitVec 32))) (Intermediate!3240 (undefined!4052 Bool) (index!15141 (_ BitVec 32)) (x!33731 (_ BitVec 32))) (Undefined!3240) (MissingVacant!3240 (index!15142 (_ BitVec 32))) )
))
(declare-fun lt!160820 () SeekEntryResult!3240)

(get-info :version)

(assert (=> b!338422 (= res!187010 (and (not ((_ is Found!3240) lt!160820)) ((_ is MissingZero!3240) lt!160820)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17709 (_ BitVec 32)) SeekEntryResult!3240)

(assert (=> b!338422 (= lt!160820 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!338423 () Bool)

(declare-fun Unit!10514 () Unit!10511)

(assert (=> b!338423 (= e!207654 Unit!10514)))

(declare-fun b!338424 () Bool)

(declare-fun res!187009 () Bool)

(assert (=> b!338424 (=> (not res!187009) (not e!207651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338424 (= res!187009 (validKeyInArray!0 k0!1348))))

(declare-fun res!187013 () Bool)

(assert (=> start!33996 (=> (not res!187013) (not e!207651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33996 (= res!187013 (validMask!0 mask!2385))))

(assert (=> start!33996 e!207651))

(assert (=> start!33996 true))

(assert (=> start!33996 tp_is_empty!7071))

(assert (=> start!33996 tp!24875))

(declare-fun array_inv!6202 (array!17711) Bool)

(assert (=> start!33996 (and (array_inv!6202 _values!1525) e!207653)))

(declare-fun array_inv!6203 (array!17709) Bool)

(assert (=> start!33996 (array_inv!6203 _keys!1895)))

(declare-fun b!338425 () Bool)

(declare-fun res!187012 () Bool)

(assert (=> b!338425 (=> (not res!187012) (not e!207651))))

(declare-datatypes ((tuple2!5188 0))(
  ( (tuple2!5189 (_1!2604 (_ BitVec 64)) (_2!2604 V!10405)) )
))
(declare-datatypes ((List!4828 0))(
  ( (Nil!4825) (Cons!4824 (h!5680 tuple2!5188) (t!9934 List!4828)) )
))
(declare-datatypes ((ListLongMap!4115 0))(
  ( (ListLongMap!4116 (toList!2073 List!4828)) )
))
(declare-fun contains!2118 (ListLongMap!4115 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1593 (array!17709 array!17711 (_ BitVec 32) (_ BitVec 32) V!10405 V!10405 (_ BitVec 32) Int) ListLongMap!4115)

(assert (=> b!338425 (= res!187012 (not (contains!2118 (getCurrentListMap!1593 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!338426 () Bool)

(assert (=> b!338426 (= e!207656 tp_is_empty!7071)))

(declare-fun b!338427 () Bool)

(declare-fun res!187011 () Bool)

(assert (=> b!338427 (=> (not res!187011) (not e!207651))))

(declare-datatypes ((List!4829 0))(
  ( (Nil!4826) (Cons!4825 (h!5681 (_ BitVec 64)) (t!9935 List!4829)) )
))
(declare-fun arrayNoDuplicates!0 (array!17709 (_ BitVec 32) List!4829) Bool)

(assert (=> b!338427 (= res!187011 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4826))))

(declare-fun b!338428 () Bool)

(declare-fun res!187008 () Bool)

(assert (=> b!338428 (=> (not res!187008) (not e!207651))))

(assert (=> b!338428 (= res!187008 (and (= (size!8730 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8729 _keys!1895) (size!8730 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!33996 res!187013) b!338428))

(assert (= (and b!338428 res!187008) b!338417))

(assert (= (and b!338417 res!187007) b!338427))

(assert (= (and b!338427 res!187011) b!338424))

(assert (= (and b!338424 res!187009) b!338425))

(assert (= (and b!338425 res!187012) b!338422))

(assert (= (and b!338422 res!187010) b!338418))

(assert (= (and b!338418 c!52361) b!338421))

(assert (= (and b!338418 (not c!52361)) b!338423))

(assert (= (and b!338419 condMapEmpty!12018) mapIsEmpty!12018))

(assert (= (and b!338419 (not condMapEmpty!12018)) mapNonEmpty!12018))

(assert (= (and mapNonEmpty!12018 ((_ is ValueCellFull!3192) mapValue!12018)) b!338420))

(assert (= (and b!338419 ((_ is ValueCellFull!3192) mapDefault!12018)) b!338426))

(assert (= start!33996 b!338419))

(declare-fun m!341661 () Bool)

(assert (=> mapNonEmpty!12018 m!341661))

(declare-fun m!341663 () Bool)

(assert (=> b!338424 m!341663))

(declare-fun m!341665 () Bool)

(assert (=> b!338425 m!341665))

(assert (=> b!338425 m!341665))

(declare-fun m!341667 () Bool)

(assert (=> b!338425 m!341667))

(declare-fun m!341669 () Bool)

(assert (=> b!338418 m!341669))

(declare-fun m!341671 () Bool)

(assert (=> start!33996 m!341671))

(declare-fun m!341673 () Bool)

(assert (=> start!33996 m!341673))

(declare-fun m!341675 () Bool)

(assert (=> start!33996 m!341675))

(declare-fun m!341677 () Bool)

(assert (=> b!338421 m!341677))

(assert (=> b!338421 m!341677))

(declare-fun m!341679 () Bool)

(assert (=> b!338421 m!341679))

(declare-fun m!341681 () Bool)

(assert (=> b!338422 m!341681))

(declare-fun m!341683 () Bool)

(assert (=> b!338417 m!341683))

(declare-fun m!341685 () Bool)

(assert (=> b!338427 m!341685))

(check-sat (not b!338425) (not b!338427) (not b!338424) (not b!338422) (not start!33996) tp_is_empty!7071 (not b!338417) (not b!338421) (not b_next!7119) b_and!14327 (not mapNonEmpty!12018) (not b!338418))
(check-sat b_and!14327 (not b_next!7119))
