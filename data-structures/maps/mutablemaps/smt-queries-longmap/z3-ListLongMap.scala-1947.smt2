; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34438 () Bool)

(assert start!34438)

(declare-fun b_free!7353 () Bool)

(declare-fun b_next!7353 () Bool)

(assert (=> start!34438 (= b_free!7353 (not b_next!7353))))

(declare-fun tp!25604 () Bool)

(declare-fun b_and!14579 () Bool)

(assert (=> start!34438 (= tp!25604 b_and!14579)))

(declare-fun b!343610 () Bool)

(declare-fun res!190025 () Bool)

(declare-fun e!210693 () Bool)

(assert (=> b!343610 (=> (not res!190025) (not e!210693))))

(declare-datatypes ((array!18173 0))(
  ( (array!18174 (arr!8600 (Array (_ BitVec 32) (_ BitVec 64))) (size!8952 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18173)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18173 (_ BitVec 32)) Bool)

(assert (=> b!343610 (= res!190025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343611 () Bool)

(declare-fun res!190028 () Bool)

(assert (=> b!343611 (=> (not res!190028) (not e!210693))))

(declare-datatypes ((List!4987 0))(
  ( (Nil!4984) (Cons!4983 (h!5839 (_ BitVec 64)) (t!10111 List!4987)) )
))
(declare-fun arrayNoDuplicates!0 (array!18173 (_ BitVec 32) List!4987) Bool)

(assert (=> b!343611 (= res!190028 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4984))))

(declare-fun b!343612 () Bool)

(declare-fun e!210692 () Bool)

(declare-fun e!210689 () Bool)

(declare-fun mapRes!12396 () Bool)

(assert (=> b!343612 (= e!210692 (and e!210689 mapRes!12396))))

(declare-fun condMapEmpty!12396 () Bool)

(declare-datatypes ((V!10717 0))(
  ( (V!10718 (val!3697 Int)) )
))
(declare-datatypes ((ValueCell!3309 0))(
  ( (ValueCellFull!3309 (v!5869 V!10717)) (EmptyCell!3309) )
))
(declare-datatypes ((array!18175 0))(
  ( (array!18176 (arr!8601 (Array (_ BitVec 32) ValueCell!3309)) (size!8953 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18175)

(declare-fun mapDefault!12396 () ValueCell!3309)

(assert (=> b!343612 (= condMapEmpty!12396 (= (arr!8601 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3309)) mapDefault!12396)))))

(declare-fun b!343613 () Bool)

(declare-fun res!190026 () Bool)

(assert (=> b!343613 (=> (not res!190026) (not e!210693))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343613 (= res!190026 (validKeyInArray!0 k0!1348))))

(declare-fun b!343614 () Bool)

(declare-fun tp_is_empty!7305 () Bool)

(assert (=> b!343614 (= e!210689 tp_is_empty!7305)))

(declare-fun res!190027 () Bool)

(assert (=> start!34438 (=> (not res!190027) (not e!210693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34438 (= res!190027 (validMask!0 mask!2385))))

(assert (=> start!34438 e!210693))

(assert (=> start!34438 true))

(assert (=> start!34438 tp_is_empty!7305))

(assert (=> start!34438 tp!25604))

(declare-fun array_inv!6360 (array!18175) Bool)

(assert (=> start!34438 (and (array_inv!6360 _values!1525) e!210692)))

(declare-fun array_inv!6361 (array!18173) Bool)

(assert (=> start!34438 (array_inv!6361 _keys!1895)))

(declare-fun mapNonEmpty!12396 () Bool)

(declare-fun tp!25605 () Bool)

(declare-fun e!210690 () Bool)

(assert (=> mapNonEmpty!12396 (= mapRes!12396 (and tp!25605 e!210690))))

(declare-fun mapValue!12396 () ValueCell!3309)

(declare-fun mapKey!12396 () (_ BitVec 32))

(declare-fun mapRest!12396 () (Array (_ BitVec 32) ValueCell!3309))

(assert (=> mapNonEmpty!12396 (= (arr!8601 _values!1525) (store mapRest!12396 mapKey!12396 mapValue!12396))))

(declare-fun b!343615 () Bool)

(declare-fun res!190024 () Bool)

(assert (=> b!343615 (=> (not res!190024) (not e!210693))))

(declare-fun zeroValue!1467 () V!10717)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10717)

(declare-datatypes ((tuple2!5342 0))(
  ( (tuple2!5343 (_1!2681 (_ BitVec 64)) (_2!2681 V!10717)) )
))
(declare-datatypes ((List!4988 0))(
  ( (Nil!4985) (Cons!4984 (h!5840 tuple2!5342) (t!10112 List!4988)) )
))
(declare-datatypes ((ListLongMap!4269 0))(
  ( (ListLongMap!4270 (toList!2150 List!4988)) )
))
(declare-fun contains!2204 (ListLongMap!4269 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1670 (array!18173 array!18175 (_ BitVec 32) (_ BitVec 32) V!10717 V!10717 (_ BitVec 32) Int) ListLongMap!4269)

(assert (=> b!343615 (= res!190024 (not (contains!2204 (getCurrentListMap!1670 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!343616 () Bool)

(assert (=> b!343616 (= e!210690 tp_is_empty!7305)))

(declare-fun b!343617 () Bool)

(assert (=> b!343617 (= e!210693 false)))

(declare-datatypes ((SeekEntryResult!3318 0))(
  ( (MissingZero!3318 (index!15451 (_ BitVec 32))) (Found!3318 (index!15452 (_ BitVec 32))) (Intermediate!3318 (undefined!4130 Bool) (index!15453 (_ BitVec 32)) (x!34211 (_ BitVec 32))) (Undefined!3318) (MissingVacant!3318 (index!15454 (_ BitVec 32))) )
))
(declare-fun lt!162564 () SeekEntryResult!3318)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18173 (_ BitVec 32)) SeekEntryResult!3318)

(assert (=> b!343617 (= lt!162564 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12396 () Bool)

(assert (=> mapIsEmpty!12396 mapRes!12396))

(declare-fun b!343618 () Bool)

(declare-fun res!190023 () Bool)

(assert (=> b!343618 (=> (not res!190023) (not e!210693))))

(assert (=> b!343618 (= res!190023 (and (= (size!8953 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8952 _keys!1895) (size!8953 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!34438 res!190027) b!343618))

(assert (= (and b!343618 res!190023) b!343610))

(assert (= (and b!343610 res!190025) b!343611))

(assert (= (and b!343611 res!190028) b!343613))

(assert (= (and b!343613 res!190026) b!343615))

(assert (= (and b!343615 res!190024) b!343617))

(assert (= (and b!343612 condMapEmpty!12396) mapIsEmpty!12396))

(assert (= (and b!343612 (not condMapEmpty!12396)) mapNonEmpty!12396))

(get-info :version)

(assert (= (and mapNonEmpty!12396 ((_ is ValueCellFull!3309) mapValue!12396)) b!343616))

(assert (= (and b!343612 ((_ is ValueCellFull!3309) mapDefault!12396)) b!343614))

(assert (= start!34438 b!343612))

(declare-fun m!345437 () Bool)

(assert (=> start!34438 m!345437))

(declare-fun m!345439 () Bool)

(assert (=> start!34438 m!345439))

(declare-fun m!345441 () Bool)

(assert (=> start!34438 m!345441))

(declare-fun m!345443 () Bool)

(assert (=> b!343615 m!345443))

(assert (=> b!343615 m!345443))

(declare-fun m!345445 () Bool)

(assert (=> b!343615 m!345445))

(declare-fun m!345447 () Bool)

(assert (=> b!343617 m!345447))

(declare-fun m!345449 () Bool)

(assert (=> b!343611 m!345449))

(declare-fun m!345451 () Bool)

(assert (=> mapNonEmpty!12396 m!345451))

(declare-fun m!345453 () Bool)

(assert (=> b!343610 m!345453))

(declare-fun m!345455 () Bool)

(assert (=> b!343613 m!345455))

(check-sat tp_is_empty!7305 (not b!343613) (not b!343617) (not b!343611) b_and!14579 (not start!34438) (not b!343610) (not b!343615) (not mapNonEmpty!12396) (not b_next!7353))
(check-sat b_and!14579 (not b_next!7353))
