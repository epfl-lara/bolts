; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34698 () Bool)

(assert start!34698)

(declare-fun b_free!7497 () Bool)

(declare-fun b_next!7497 () Bool)

(assert (=> start!34698 (= b_free!7497 (not b_next!7497))))

(declare-fun tp!26055 () Bool)

(declare-fun b_and!14735 () Bool)

(assert (=> start!34698 (= tp!26055 b_and!14735)))

(declare-fun b!346413 () Bool)

(declare-fun res!191687 () Bool)

(declare-fun e!212322 () Bool)

(assert (=> b!346413 (=> (not res!191687) (not e!212322))))

(declare-datatypes ((array!18457 0))(
  ( (array!18458 (arr!8736 (Array (_ BitVec 32) (_ BitVec 64))) (size!9088 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18457)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18457 (_ BitVec 32)) Bool)

(assert (=> b!346413 (= res!191687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346414 () Bool)

(declare-fun res!191691 () Bool)

(assert (=> b!346414 (=> (not res!191691) (not e!212322))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10909 0))(
  ( (V!10910 (val!3769 Int)) )
))
(declare-fun zeroValue!1467 () V!10909)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3381 0))(
  ( (ValueCellFull!3381 (v!5947 V!10909)) (EmptyCell!3381) )
))
(declare-datatypes ((array!18459 0))(
  ( (array!18460 (arr!8737 (Array (_ BitVec 32) ValueCell!3381)) (size!9089 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18459)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10909)

(declare-datatypes ((tuple2!5438 0))(
  ( (tuple2!5439 (_1!2729 (_ BitVec 64)) (_2!2729 V!10909)) )
))
(declare-datatypes ((List!5084 0))(
  ( (Nil!5081) (Cons!5080 (h!5936 tuple2!5438) (t!10220 List!5084)) )
))
(declare-datatypes ((ListLongMap!4365 0))(
  ( (ListLongMap!4366 (toList!2198 List!5084)) )
))
(declare-fun contains!2258 (ListLongMap!4365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1718 (array!18457 array!18459 (_ BitVec 32) (_ BitVec 32) V!10909 V!10909 (_ BitVec 32) Int) ListLongMap!4365)

(assert (=> b!346414 (= res!191691 (not (contains!2258 (getCurrentListMap!1718 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!346415 () Bool)

(declare-fun e!212321 () Bool)

(declare-fun e!212325 () Bool)

(declare-fun mapRes!12630 () Bool)

(assert (=> b!346415 (= e!212321 (and e!212325 mapRes!12630))))

(declare-fun condMapEmpty!12630 () Bool)

(declare-fun mapDefault!12630 () ValueCell!3381)

(assert (=> b!346415 (= condMapEmpty!12630 (= (arr!8737 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3381)) mapDefault!12630)))))

(declare-fun res!191689 () Bool)

(assert (=> start!34698 (=> (not res!191689) (not e!212322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34698 (= res!191689 (validMask!0 mask!2385))))

(assert (=> start!34698 e!212322))

(assert (=> start!34698 true))

(declare-fun tp_is_empty!7449 () Bool)

(assert (=> start!34698 tp_is_empty!7449))

(assert (=> start!34698 tp!26055))

(declare-fun array_inv!6458 (array!18459) Bool)

(assert (=> start!34698 (and (array_inv!6458 _values!1525) e!212321)))

(declare-fun array_inv!6459 (array!18457) Bool)

(assert (=> start!34698 (array_inv!6459 _keys!1895)))

(declare-fun b!346416 () Bool)

(declare-fun res!191690 () Bool)

(assert (=> b!346416 (=> (not res!191690) (not e!212322))))

(assert (=> b!346416 (= res!191690 (and (= (size!9089 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9088 _keys!1895) (size!9089 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346417 () Bool)

(declare-fun res!191688 () Bool)

(assert (=> b!346417 (=> (not res!191688) (not e!212322))))

(declare-datatypes ((List!5085 0))(
  ( (Nil!5082) (Cons!5081 (h!5937 (_ BitVec 64)) (t!10221 List!5085)) )
))
(declare-fun arrayNoDuplicates!0 (array!18457 (_ BitVec 32) List!5085) Bool)

(assert (=> b!346417 (= res!191688 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5082))))

(declare-fun b!346418 () Bool)

(declare-fun e!212323 () Bool)

(assert (=> b!346418 (= e!212323 tp_is_empty!7449)))

(declare-fun b!346419 () Bool)

(declare-fun res!191686 () Bool)

(assert (=> b!346419 (=> (not res!191686) (not e!212322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346419 (= res!191686 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!12630 () Bool)

(assert (=> mapIsEmpty!12630 mapRes!12630))

(declare-fun b!346420 () Bool)

(declare-fun e!212324 () Bool)

(assert (=> b!346420 (= e!212322 e!212324)))

(declare-fun res!191693 () Bool)

(assert (=> b!346420 (=> (not res!191693) (not e!212324))))

(declare-datatypes ((SeekEntryResult!3362 0))(
  ( (MissingZero!3362 (index!15627 (_ BitVec 32))) (Found!3362 (index!15628 (_ BitVec 32))) (Intermediate!3362 (undefined!4174 Bool) (index!15629 (_ BitVec 32)) (x!34507 (_ BitVec 32))) (Undefined!3362) (MissingVacant!3362 (index!15630 (_ BitVec 32))) )
))
(declare-fun lt!163361 () SeekEntryResult!3362)

(get-info :version)

(assert (=> b!346420 (= res!191693 (and ((_ is Found!3362) lt!163361) (= (select (arr!8736 _keys!1895) (index!15628 lt!163361)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18457 (_ BitVec 32)) SeekEntryResult!3362)

(assert (=> b!346420 (= lt!163361 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12630 () Bool)

(declare-fun tp!26054 () Bool)

(assert (=> mapNonEmpty!12630 (= mapRes!12630 (and tp!26054 e!212323))))

(declare-fun mapKey!12630 () (_ BitVec 32))

(declare-fun mapValue!12630 () ValueCell!3381)

(declare-fun mapRest!12630 () (Array (_ BitVec 32) ValueCell!3381))

(assert (=> mapNonEmpty!12630 (= (arr!8737 _values!1525) (store mapRest!12630 mapKey!12630 mapValue!12630))))

(declare-fun b!346421 () Bool)

(assert (=> b!346421 (= e!212325 tp_is_empty!7449)))

(declare-fun b!346422 () Bool)

(assert (=> b!346422 (= e!212324 (not true))))

(declare-fun arrayContainsKey!0 (array!18457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346422 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10748 0))(
  ( (Unit!10749) )
))
(declare-fun lt!163362 () Unit!10748)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18457 (_ BitVec 64) (_ BitVec 32)) Unit!10748)

(assert (=> b!346422 (= lt!163362 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15628 lt!163361)))))

(declare-fun b!346423 () Bool)

(declare-fun res!191692 () Bool)

(assert (=> b!346423 (=> (not res!191692) (not e!212324))))

(assert (=> b!346423 (= res!191692 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15628 lt!163361)))))

(assert (= (and start!34698 res!191689) b!346416))

(assert (= (and b!346416 res!191690) b!346413))

(assert (= (and b!346413 res!191687) b!346417))

(assert (= (and b!346417 res!191688) b!346419))

(assert (= (and b!346419 res!191686) b!346414))

(assert (= (and b!346414 res!191691) b!346420))

(assert (= (and b!346420 res!191693) b!346423))

(assert (= (and b!346423 res!191692) b!346422))

(assert (= (and b!346415 condMapEmpty!12630) mapIsEmpty!12630))

(assert (= (and b!346415 (not condMapEmpty!12630)) mapNonEmpty!12630))

(assert (= (and mapNonEmpty!12630 ((_ is ValueCellFull!3381) mapValue!12630)) b!346418))

(assert (= (and b!346415 ((_ is ValueCellFull!3381) mapDefault!12630)) b!346421))

(assert (= start!34698 b!346415))

(declare-fun m!347511 () Bool)

(assert (=> start!34698 m!347511))

(declare-fun m!347513 () Bool)

(assert (=> start!34698 m!347513))

(declare-fun m!347515 () Bool)

(assert (=> start!34698 m!347515))

(declare-fun m!347517 () Bool)

(assert (=> b!346413 m!347517))

(declare-fun m!347519 () Bool)

(assert (=> b!346417 m!347519))

(declare-fun m!347521 () Bool)

(assert (=> b!346423 m!347521))

(declare-fun m!347523 () Bool)

(assert (=> mapNonEmpty!12630 m!347523))

(declare-fun m!347525 () Bool)

(assert (=> b!346414 m!347525))

(assert (=> b!346414 m!347525))

(declare-fun m!347527 () Bool)

(assert (=> b!346414 m!347527))

(declare-fun m!347529 () Bool)

(assert (=> b!346419 m!347529))

(declare-fun m!347531 () Bool)

(assert (=> b!346420 m!347531))

(declare-fun m!347533 () Bool)

(assert (=> b!346420 m!347533))

(declare-fun m!347535 () Bool)

(assert (=> b!346422 m!347535))

(declare-fun m!347537 () Bool)

(assert (=> b!346422 m!347537))

(check-sat (not start!34698) (not b!346417) (not b!346414) (not b!346413) (not b!346422) (not b_next!7497) (not mapNonEmpty!12630) (not b!346420) (not b!346423) (not b!346419) tp_is_empty!7449 b_and!14735)
(check-sat b_and!14735 (not b_next!7497))
