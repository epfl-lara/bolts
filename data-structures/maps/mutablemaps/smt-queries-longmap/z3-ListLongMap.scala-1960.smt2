; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34516 () Bool)

(assert start!34516)

(declare-fun b_free!7431 () Bool)

(declare-fun b_next!7431 () Bool)

(assert (=> start!34516 (= b_free!7431 (not b_next!7431))))

(declare-fun tp!25838 () Bool)

(declare-fun b_and!14657 () Bool)

(assert (=> start!34516 (= tp!25838 b_and!14657)))

(declare-fun res!190730 () Bool)

(declare-fun e!211274 () Bool)

(assert (=> start!34516 (=> (not res!190730) (not e!211274))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34516 (= res!190730 (validMask!0 mask!2385))))

(assert (=> start!34516 e!211274))

(assert (=> start!34516 true))

(declare-fun tp_is_empty!7383 () Bool)

(assert (=> start!34516 tp_is_empty!7383))

(assert (=> start!34516 tp!25838))

(declare-datatypes ((V!10821 0))(
  ( (V!10822 (val!3736 Int)) )
))
(declare-datatypes ((ValueCell!3348 0))(
  ( (ValueCellFull!3348 (v!5908 V!10821)) (EmptyCell!3348) )
))
(declare-datatypes ((array!18321 0))(
  ( (array!18322 (arr!8674 (Array (_ BitVec 32) ValueCell!3348)) (size!9026 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18321)

(declare-fun e!211276 () Bool)

(declare-fun array_inv!6416 (array!18321) Bool)

(assert (=> start!34516 (and (array_inv!6416 _values!1525) e!211276)))

(declare-datatypes ((array!18323 0))(
  ( (array!18324 (arr!8675 (Array (_ BitVec 32) (_ BitVec 64))) (size!9027 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18323)

(declare-fun array_inv!6417 (array!18323) Bool)

(assert (=> start!34516 (array_inv!6417 _keys!1895)))

(declare-fun b!344663 () Bool)

(declare-fun e!211278 () Bool)

(assert (=> b!344663 (= e!211278 tp_is_empty!7383)))

(declare-fun b!344664 () Bool)

(assert (=> b!344664 (= e!211274 false)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3341 0))(
  ( (MissingZero!3341 (index!15543 (_ BitVec 32))) (Found!3341 (index!15544 (_ BitVec 32))) (Intermediate!3341 (undefined!4153 Bool) (index!15545 (_ BitVec 32)) (x!34338 (_ BitVec 32))) (Undefined!3341) (MissingVacant!3341 (index!15546 (_ BitVec 32))) )
))
(declare-fun lt!162681 () SeekEntryResult!3341)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18323 (_ BitVec 32)) SeekEntryResult!3341)

(assert (=> b!344664 (= lt!162681 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12513 () Bool)

(declare-fun mapRes!12513 () Bool)

(assert (=> mapIsEmpty!12513 mapRes!12513))

(declare-fun b!344665 () Bool)

(declare-fun res!190728 () Bool)

(assert (=> b!344665 (=> (not res!190728) (not e!211274))))

(declare-fun zeroValue!1467 () V!10821)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10821)

(declare-datatypes ((tuple2!5394 0))(
  ( (tuple2!5395 (_1!2707 (_ BitVec 64)) (_2!2707 V!10821)) )
))
(declare-datatypes ((List!5040 0))(
  ( (Nil!5037) (Cons!5036 (h!5892 tuple2!5394) (t!10164 List!5040)) )
))
(declare-datatypes ((ListLongMap!4321 0))(
  ( (ListLongMap!4322 (toList!2176 List!5040)) )
))
(declare-fun contains!2230 (ListLongMap!4321 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1696 (array!18323 array!18321 (_ BitVec 32) (_ BitVec 32) V!10821 V!10821 (_ BitVec 32) Int) ListLongMap!4321)

(assert (=> b!344665 (= res!190728 (not (contains!2230 (getCurrentListMap!1696 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!344666 () Bool)

(assert (=> b!344666 (= e!211276 (and e!211278 mapRes!12513))))

(declare-fun condMapEmpty!12513 () Bool)

(declare-fun mapDefault!12513 () ValueCell!3348)

(assert (=> b!344666 (= condMapEmpty!12513 (= (arr!8674 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3348)) mapDefault!12513)))))

(declare-fun b!344667 () Bool)

(declare-fun res!190727 () Bool)

(assert (=> b!344667 (=> (not res!190727) (not e!211274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18323 (_ BitVec 32)) Bool)

(assert (=> b!344667 (= res!190727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344668 () Bool)

(declare-fun e!211277 () Bool)

(assert (=> b!344668 (= e!211277 tp_is_empty!7383)))

(declare-fun b!344669 () Bool)

(declare-fun res!190726 () Bool)

(assert (=> b!344669 (=> (not res!190726) (not e!211274))))

(declare-datatypes ((List!5041 0))(
  ( (Nil!5038) (Cons!5037 (h!5893 (_ BitVec 64)) (t!10165 List!5041)) )
))
(declare-fun arrayNoDuplicates!0 (array!18323 (_ BitVec 32) List!5041) Bool)

(assert (=> b!344669 (= res!190726 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5038))))

(declare-fun b!344670 () Bool)

(declare-fun res!190729 () Bool)

(assert (=> b!344670 (=> (not res!190729) (not e!211274))))

(assert (=> b!344670 (= res!190729 (and (= (size!9026 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9027 _keys!1895) (size!9026 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344671 () Bool)

(declare-fun res!190725 () Bool)

(assert (=> b!344671 (=> (not res!190725) (not e!211274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344671 (= res!190725 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!12513 () Bool)

(declare-fun tp!25839 () Bool)

(assert (=> mapNonEmpty!12513 (= mapRes!12513 (and tp!25839 e!211277))))

(declare-fun mapRest!12513 () (Array (_ BitVec 32) ValueCell!3348))

(declare-fun mapKey!12513 () (_ BitVec 32))

(declare-fun mapValue!12513 () ValueCell!3348)

(assert (=> mapNonEmpty!12513 (= (arr!8674 _values!1525) (store mapRest!12513 mapKey!12513 mapValue!12513))))

(assert (= (and start!34516 res!190730) b!344670))

(assert (= (and b!344670 res!190729) b!344667))

(assert (= (and b!344667 res!190727) b!344669))

(assert (= (and b!344669 res!190726) b!344671))

(assert (= (and b!344671 res!190725) b!344665))

(assert (= (and b!344665 res!190728) b!344664))

(assert (= (and b!344666 condMapEmpty!12513) mapIsEmpty!12513))

(assert (= (and b!344666 (not condMapEmpty!12513)) mapNonEmpty!12513))

(get-info :version)

(assert (= (and mapNonEmpty!12513 ((_ is ValueCellFull!3348) mapValue!12513)) b!344668))

(assert (= (and b!344666 ((_ is ValueCellFull!3348) mapDefault!12513)) b!344663))

(assert (= start!34516 b!344666))

(declare-fun m!346217 () Bool)

(assert (=> b!344667 m!346217))

(declare-fun m!346219 () Bool)

(assert (=> start!34516 m!346219))

(declare-fun m!346221 () Bool)

(assert (=> start!34516 m!346221))

(declare-fun m!346223 () Bool)

(assert (=> start!34516 m!346223))

(declare-fun m!346225 () Bool)

(assert (=> b!344665 m!346225))

(assert (=> b!344665 m!346225))

(declare-fun m!346227 () Bool)

(assert (=> b!344665 m!346227))

(declare-fun m!346229 () Bool)

(assert (=> b!344664 m!346229))

(declare-fun m!346231 () Bool)

(assert (=> b!344669 m!346231))

(declare-fun m!346233 () Bool)

(assert (=> mapNonEmpty!12513 m!346233))

(declare-fun m!346235 () Bool)

(assert (=> b!344671 m!346235))

(check-sat (not b!344665) (not b!344671) (not mapNonEmpty!12513) b_and!14657 tp_is_empty!7383 (not b!344669) (not start!34516) (not b_next!7431) (not b!344667) (not b!344664))
(check-sat b_and!14657 (not b_next!7431))
