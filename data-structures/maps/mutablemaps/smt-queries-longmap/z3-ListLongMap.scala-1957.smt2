; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34498 () Bool)

(assert start!34498)

(declare-fun b_free!7413 () Bool)

(declare-fun b_next!7413 () Bool)

(assert (=> start!34498 (= b_free!7413 (not b_next!7413))))

(declare-fun tp!25785 () Bool)

(declare-fun b_and!14639 () Bool)

(assert (=> start!34498 (= tp!25785 b_and!14639)))

(declare-fun mapIsEmpty!12486 () Bool)

(declare-fun mapRes!12486 () Bool)

(assert (=> mapIsEmpty!12486 mapRes!12486))

(declare-fun b!344420 () Bool)

(declare-fun res!190564 () Bool)

(declare-fun e!211142 () Bool)

(assert (=> b!344420 (=> (not res!190564) (not e!211142))))

(declare-datatypes ((array!18285 0))(
  ( (array!18286 (arr!8656 (Array (_ BitVec 32) (_ BitVec 64))) (size!9008 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18285)

(declare-datatypes ((List!5027 0))(
  ( (Nil!5024) (Cons!5023 (h!5879 (_ BitVec 64)) (t!10151 List!5027)) )
))
(declare-fun arrayNoDuplicates!0 (array!18285 (_ BitVec 32) List!5027) Bool)

(assert (=> b!344420 (= res!190564 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5024))))

(declare-fun b!344421 () Bool)

(declare-fun e!211139 () Bool)

(declare-fun tp_is_empty!7365 () Bool)

(assert (=> b!344421 (= e!211139 tp_is_empty!7365)))

(declare-fun b!344422 () Bool)

(declare-fun res!190568 () Bool)

(assert (=> b!344422 (=> (not res!190568) (not e!211142))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10797 0))(
  ( (V!10798 (val!3727 Int)) )
))
(declare-datatypes ((ValueCell!3339 0))(
  ( (ValueCellFull!3339 (v!5899 V!10797)) (EmptyCell!3339) )
))
(declare-datatypes ((array!18287 0))(
  ( (array!18288 (arr!8657 (Array (_ BitVec 32) ValueCell!3339)) (size!9009 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18287)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344422 (= res!190568 (and (= (size!9009 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9008 _keys!1895) (size!9009 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344423 () Bool)

(declare-fun res!190563 () Bool)

(assert (=> b!344423 (=> (not res!190563) (not e!211142))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344423 (= res!190563 (validKeyInArray!0 k0!1348))))

(declare-fun b!344424 () Bool)

(assert (=> b!344424 (= e!211142 false)))

(declare-datatypes ((SeekEntryResult!3336 0))(
  ( (MissingZero!3336 (index!15523 (_ BitVec 32))) (Found!3336 (index!15524 (_ BitVec 32))) (Intermediate!3336 (undefined!4148 Bool) (index!15525 (_ BitVec 32)) (x!34309 (_ BitVec 32))) (Undefined!3336) (MissingVacant!3336 (index!15526 (_ BitVec 32))) )
))
(declare-fun lt!162654 () SeekEntryResult!3336)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18285 (_ BitVec 32)) SeekEntryResult!3336)

(assert (=> b!344424 (= lt!162654 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!190566 () Bool)

(assert (=> start!34498 (=> (not res!190566) (not e!211142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34498 (= res!190566 (validMask!0 mask!2385))))

(assert (=> start!34498 e!211142))

(assert (=> start!34498 true))

(assert (=> start!34498 tp_is_empty!7365))

(assert (=> start!34498 tp!25785))

(declare-fun e!211141 () Bool)

(declare-fun array_inv!6404 (array!18287) Bool)

(assert (=> start!34498 (and (array_inv!6404 _values!1525) e!211141)))

(declare-fun array_inv!6405 (array!18285) Bool)

(assert (=> start!34498 (array_inv!6405 _keys!1895)))

(declare-fun b!344425 () Bool)

(declare-fun e!211143 () Bool)

(assert (=> b!344425 (= e!211143 tp_is_empty!7365)))

(declare-fun b!344426 () Bool)

(declare-fun res!190567 () Bool)

(assert (=> b!344426 (=> (not res!190567) (not e!211142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18285 (_ BitVec 32)) Bool)

(assert (=> b!344426 (= res!190567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344427 () Bool)

(assert (=> b!344427 (= e!211141 (and e!211139 mapRes!12486))))

(declare-fun condMapEmpty!12486 () Bool)

(declare-fun mapDefault!12486 () ValueCell!3339)

(assert (=> b!344427 (= condMapEmpty!12486 (= (arr!8657 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3339)) mapDefault!12486)))))

(declare-fun mapNonEmpty!12486 () Bool)

(declare-fun tp!25784 () Bool)

(assert (=> mapNonEmpty!12486 (= mapRes!12486 (and tp!25784 e!211143))))

(declare-fun mapRest!12486 () (Array (_ BitVec 32) ValueCell!3339))

(declare-fun mapKey!12486 () (_ BitVec 32))

(declare-fun mapValue!12486 () ValueCell!3339)

(assert (=> mapNonEmpty!12486 (= (arr!8657 _values!1525) (store mapRest!12486 mapKey!12486 mapValue!12486))))

(declare-fun b!344428 () Bool)

(declare-fun res!190565 () Bool)

(assert (=> b!344428 (=> (not res!190565) (not e!211142))))

(declare-fun zeroValue!1467 () V!10797)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10797)

(declare-datatypes ((tuple2!5382 0))(
  ( (tuple2!5383 (_1!2701 (_ BitVec 64)) (_2!2701 V!10797)) )
))
(declare-datatypes ((List!5028 0))(
  ( (Nil!5025) (Cons!5024 (h!5880 tuple2!5382) (t!10152 List!5028)) )
))
(declare-datatypes ((ListLongMap!4309 0))(
  ( (ListLongMap!4310 (toList!2170 List!5028)) )
))
(declare-fun contains!2224 (ListLongMap!4309 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1690 (array!18285 array!18287 (_ BitVec 32) (_ BitVec 32) V!10797 V!10797 (_ BitVec 32) Int) ListLongMap!4309)

(assert (=> b!344428 (= res!190565 (not (contains!2224 (getCurrentListMap!1690 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34498 res!190566) b!344422))

(assert (= (and b!344422 res!190568) b!344426))

(assert (= (and b!344426 res!190567) b!344420))

(assert (= (and b!344420 res!190564) b!344423))

(assert (= (and b!344423 res!190563) b!344428))

(assert (= (and b!344428 res!190565) b!344424))

(assert (= (and b!344427 condMapEmpty!12486) mapIsEmpty!12486))

(assert (= (and b!344427 (not condMapEmpty!12486)) mapNonEmpty!12486))

(get-info :version)

(assert (= (and mapNonEmpty!12486 ((_ is ValueCellFull!3339) mapValue!12486)) b!344425))

(assert (= (and b!344427 ((_ is ValueCellFull!3339) mapDefault!12486)) b!344421))

(assert (= start!34498 b!344427))

(declare-fun m!346037 () Bool)

(assert (=> b!344428 m!346037))

(assert (=> b!344428 m!346037))

(declare-fun m!346039 () Bool)

(assert (=> b!344428 m!346039))

(declare-fun m!346041 () Bool)

(assert (=> start!34498 m!346041))

(declare-fun m!346043 () Bool)

(assert (=> start!34498 m!346043))

(declare-fun m!346045 () Bool)

(assert (=> start!34498 m!346045))

(declare-fun m!346047 () Bool)

(assert (=> b!344426 m!346047))

(declare-fun m!346049 () Bool)

(assert (=> b!344424 m!346049))

(declare-fun m!346051 () Bool)

(assert (=> mapNonEmpty!12486 m!346051))

(declare-fun m!346053 () Bool)

(assert (=> b!344420 m!346053))

(declare-fun m!346055 () Bool)

(assert (=> b!344423 m!346055))

(check-sat (not b!344420) (not mapNonEmpty!12486) (not b!344423) tp_is_empty!7365 (not start!34498) b_and!14639 (not b!344424) (not b_next!7413) (not b!344428) (not b!344426))
(check-sat b_and!14639 (not b_next!7413))
