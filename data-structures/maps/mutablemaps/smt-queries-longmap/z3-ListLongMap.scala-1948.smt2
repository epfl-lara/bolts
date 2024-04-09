; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34444 () Bool)

(assert start!34444)

(declare-fun b_free!7359 () Bool)

(declare-fun b_next!7359 () Bool)

(assert (=> start!34444 (= b_free!7359 (not b_next!7359))))

(declare-fun tp!25622 () Bool)

(declare-fun b_and!14585 () Bool)

(assert (=> start!34444 (= tp!25622 b_and!14585)))

(declare-fun b!343691 () Bool)

(declare-fun res!190082 () Bool)

(declare-fun e!210737 () Bool)

(assert (=> b!343691 (=> (not res!190082) (not e!210737))))

(declare-datatypes ((array!18185 0))(
  ( (array!18186 (arr!8606 (Array (_ BitVec 32) (_ BitVec 64))) (size!8958 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18185)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18185 (_ BitVec 32)) Bool)

(assert (=> b!343691 (= res!190082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343692 () Bool)

(declare-fun e!210736 () Bool)

(declare-fun tp_is_empty!7311 () Bool)

(assert (=> b!343692 (= e!210736 tp_is_empty!7311)))

(declare-fun b!343693 () Bool)

(declare-fun res!190080 () Bool)

(assert (=> b!343693 (=> (not res!190080) (not e!210737))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343693 (= res!190080 (validKeyInArray!0 k0!1348))))

(declare-fun b!343694 () Bool)

(declare-fun e!210738 () Bool)

(assert (=> b!343694 (= e!210738 tp_is_empty!7311)))

(declare-fun b!343695 () Bool)

(assert (=> b!343695 (= e!210737 false)))

(declare-datatypes ((SeekEntryResult!3321 0))(
  ( (MissingZero!3321 (index!15463 (_ BitVec 32))) (Found!3321 (index!15464 (_ BitVec 32))) (Intermediate!3321 (undefined!4133 Bool) (index!15465 (_ BitVec 32)) (x!34222 (_ BitVec 32))) (Undefined!3321) (MissingVacant!3321 (index!15466 (_ BitVec 32))) )
))
(declare-fun lt!162573 () SeekEntryResult!3321)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18185 (_ BitVec 32)) SeekEntryResult!3321)

(assert (=> b!343695 (= lt!162573 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343696 () Bool)

(declare-fun res!190079 () Bool)

(assert (=> b!343696 (=> (not res!190079) (not e!210737))))

(declare-datatypes ((V!10725 0))(
  ( (V!10726 (val!3700 Int)) )
))
(declare-datatypes ((ValueCell!3312 0))(
  ( (ValueCellFull!3312 (v!5872 V!10725)) (EmptyCell!3312) )
))
(declare-datatypes ((array!18187 0))(
  ( (array!18188 (arr!8607 (Array (_ BitVec 32) ValueCell!3312)) (size!8959 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18187)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343696 (= res!190079 (and (= (size!8959 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8958 _keys!1895) (size!8959 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343697 () Bool)

(declare-fun res!190081 () Bool)

(assert (=> b!343697 (=> (not res!190081) (not e!210737))))

(declare-datatypes ((List!4993 0))(
  ( (Nil!4990) (Cons!4989 (h!5845 (_ BitVec 64)) (t!10117 List!4993)) )
))
(declare-fun arrayNoDuplicates!0 (array!18185 (_ BitVec 32) List!4993) Bool)

(assert (=> b!343697 (= res!190081 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4990))))

(declare-fun mapIsEmpty!12405 () Bool)

(declare-fun mapRes!12405 () Bool)

(assert (=> mapIsEmpty!12405 mapRes!12405))

(declare-fun res!190077 () Bool)

(assert (=> start!34444 (=> (not res!190077) (not e!210737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34444 (= res!190077 (validMask!0 mask!2385))))

(assert (=> start!34444 e!210737))

(assert (=> start!34444 true))

(assert (=> start!34444 tp_is_empty!7311))

(assert (=> start!34444 tp!25622))

(declare-fun e!210734 () Bool)

(declare-fun array_inv!6366 (array!18187) Bool)

(assert (=> start!34444 (and (array_inv!6366 _values!1525) e!210734)))

(declare-fun array_inv!6367 (array!18185) Bool)

(assert (=> start!34444 (array_inv!6367 _keys!1895)))

(declare-fun mapNonEmpty!12405 () Bool)

(declare-fun tp!25623 () Bool)

(assert (=> mapNonEmpty!12405 (= mapRes!12405 (and tp!25623 e!210738))))

(declare-fun mapValue!12405 () ValueCell!3312)

(declare-fun mapKey!12405 () (_ BitVec 32))

(declare-fun mapRest!12405 () (Array (_ BitVec 32) ValueCell!3312))

(assert (=> mapNonEmpty!12405 (= (arr!8607 _values!1525) (store mapRest!12405 mapKey!12405 mapValue!12405))))

(declare-fun b!343698 () Bool)

(assert (=> b!343698 (= e!210734 (and e!210736 mapRes!12405))))

(declare-fun condMapEmpty!12405 () Bool)

(declare-fun mapDefault!12405 () ValueCell!3312)

(assert (=> b!343698 (= condMapEmpty!12405 (= (arr!8607 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3312)) mapDefault!12405)))))

(declare-fun b!343699 () Bool)

(declare-fun res!190078 () Bool)

(assert (=> b!343699 (=> (not res!190078) (not e!210737))))

(declare-fun zeroValue!1467 () V!10725)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10725)

(declare-datatypes ((tuple2!5348 0))(
  ( (tuple2!5349 (_1!2684 (_ BitVec 64)) (_2!2684 V!10725)) )
))
(declare-datatypes ((List!4994 0))(
  ( (Nil!4991) (Cons!4990 (h!5846 tuple2!5348) (t!10118 List!4994)) )
))
(declare-datatypes ((ListLongMap!4275 0))(
  ( (ListLongMap!4276 (toList!2153 List!4994)) )
))
(declare-fun contains!2207 (ListLongMap!4275 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1673 (array!18185 array!18187 (_ BitVec 32) (_ BitVec 32) V!10725 V!10725 (_ BitVec 32) Int) ListLongMap!4275)

(assert (=> b!343699 (= res!190078 (not (contains!2207 (getCurrentListMap!1673 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34444 res!190077) b!343696))

(assert (= (and b!343696 res!190079) b!343691))

(assert (= (and b!343691 res!190082) b!343697))

(assert (= (and b!343697 res!190081) b!343693))

(assert (= (and b!343693 res!190080) b!343699))

(assert (= (and b!343699 res!190078) b!343695))

(assert (= (and b!343698 condMapEmpty!12405) mapIsEmpty!12405))

(assert (= (and b!343698 (not condMapEmpty!12405)) mapNonEmpty!12405))

(get-info :version)

(assert (= (and mapNonEmpty!12405 ((_ is ValueCellFull!3312) mapValue!12405)) b!343694))

(assert (= (and b!343698 ((_ is ValueCellFull!3312) mapDefault!12405)) b!343692))

(assert (= start!34444 b!343698))

(declare-fun m!345497 () Bool)

(assert (=> b!343691 m!345497))

(declare-fun m!345499 () Bool)

(assert (=> b!343695 m!345499))

(declare-fun m!345501 () Bool)

(assert (=> b!343693 m!345501))

(declare-fun m!345503 () Bool)

(assert (=> start!34444 m!345503))

(declare-fun m!345505 () Bool)

(assert (=> start!34444 m!345505))

(declare-fun m!345507 () Bool)

(assert (=> start!34444 m!345507))

(declare-fun m!345509 () Bool)

(assert (=> b!343699 m!345509))

(assert (=> b!343699 m!345509))

(declare-fun m!345511 () Bool)

(assert (=> b!343699 m!345511))

(declare-fun m!345513 () Bool)

(assert (=> b!343697 m!345513))

(declare-fun m!345515 () Bool)

(assert (=> mapNonEmpty!12405 m!345515))

(check-sat b_and!14585 (not mapNonEmpty!12405) (not b!343699) (not b_next!7359) (not start!34444) (not b!343695) (not b!343693) tp_is_empty!7311 (not b!343691) (not b!343697))
(check-sat b_and!14585 (not b_next!7359))
