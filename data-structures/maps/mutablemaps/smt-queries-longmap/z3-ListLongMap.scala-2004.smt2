; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35014 () Bool)

(assert start!35014)

(declare-fun b_free!7695 () Bool)

(declare-fun b_next!7695 () Bool)

(assert (=> start!35014 (= b_free!7695 (not b_next!7695))))

(declare-fun tp!26664 () Bool)

(declare-fun b_and!14943 () Bool)

(assert (=> start!35014 (= tp!26664 b_and!14943)))

(declare-fun b!350508 () Bool)

(declare-fun e!214699 () Bool)

(declare-fun e!214701 () Bool)

(declare-fun mapRes!12942 () Bool)

(assert (=> b!350508 (= e!214699 (and e!214701 mapRes!12942))))

(declare-fun condMapEmpty!12942 () Bool)

(declare-datatypes ((V!11173 0))(
  ( (V!11174 (val!3868 Int)) )
))
(declare-datatypes ((ValueCell!3480 0))(
  ( (ValueCellFull!3480 (v!6051 V!11173)) (EmptyCell!3480) )
))
(declare-datatypes ((array!18845 0))(
  ( (array!18846 (arr!8925 (Array (_ BitVec 32) ValueCell!3480)) (size!9277 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18845)

(declare-fun mapDefault!12942 () ValueCell!3480)

(assert (=> b!350508 (= condMapEmpty!12942 (= (arr!8925 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3480)) mapDefault!12942)))))

(declare-fun b!350509 () Bool)

(declare-fun res!194352 () Bool)

(declare-fun e!214702 () Bool)

(assert (=> b!350509 (=> (not res!194352) (not e!214702))))

(declare-datatypes ((array!18847 0))(
  ( (array!18848 (arr!8926 (Array (_ BitVec 32) (_ BitVec 64))) (size!9278 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18847)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18847 (_ BitVec 32)) Bool)

(assert (=> b!350509 (= res!194352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!194354 () Bool)

(assert (=> start!35014 (=> (not res!194354) (not e!214702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35014 (= res!194354 (validMask!0 mask!2385))))

(assert (=> start!35014 e!214702))

(assert (=> start!35014 true))

(declare-fun tp_is_empty!7647 () Bool)

(assert (=> start!35014 tp_is_empty!7647))

(assert (=> start!35014 tp!26664))

(declare-fun array_inv!6578 (array!18845) Bool)

(assert (=> start!35014 (and (array_inv!6578 _values!1525) e!214699)))

(declare-fun array_inv!6579 (array!18847) Bool)

(assert (=> start!35014 (array_inv!6579 _keys!1895)))

(declare-fun b!350510 () Bool)

(declare-fun res!194355 () Bool)

(assert (=> b!350510 (=> (not res!194355) (not e!214702))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350510 (= res!194355 (validKeyInArray!0 k0!1348))))

(declare-fun b!350511 () Bool)

(declare-fun res!194348 () Bool)

(declare-fun e!214698 () Bool)

(assert (=> b!350511 (=> (not res!194348) (not e!214698))))

(declare-fun arrayContainsKey!0 (array!18847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350511 (= res!194348 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12942 () Bool)

(assert (=> mapIsEmpty!12942 mapRes!12942))

(declare-fun b!350512 () Bool)

(declare-fun res!194351 () Bool)

(assert (=> b!350512 (=> (not res!194351) (not e!214702))))

(declare-datatypes ((List!5217 0))(
  ( (Nil!5214) (Cons!5213 (h!6069 (_ BitVec 64)) (t!10363 List!5217)) )
))
(declare-fun arrayNoDuplicates!0 (array!18847 (_ BitVec 32) List!5217) Bool)

(assert (=> b!350512 (= res!194351 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5214))))

(declare-fun mapNonEmpty!12942 () Bool)

(declare-fun tp!26663 () Bool)

(declare-fun e!214700 () Bool)

(assert (=> mapNonEmpty!12942 (= mapRes!12942 (and tp!26663 e!214700))))

(declare-fun mapKey!12942 () (_ BitVec 32))

(declare-fun mapRest!12942 () (Array (_ BitVec 32) ValueCell!3480))

(declare-fun mapValue!12942 () ValueCell!3480)

(assert (=> mapNonEmpty!12942 (= (arr!8925 _values!1525) (store mapRest!12942 mapKey!12942 mapValue!12942))))

(declare-fun b!350513 () Bool)

(assert (=> b!350513 (= e!214700 tp_is_empty!7647)))

(declare-fun b!350514 () Bool)

(assert (=> b!350514 (= e!214702 e!214698)))

(declare-fun res!194353 () Bool)

(assert (=> b!350514 (=> (not res!194353) (not e!214698))))

(declare-datatypes ((SeekEntryResult!3437 0))(
  ( (MissingZero!3437 (index!15927 (_ BitVec 32))) (Found!3437 (index!15928 (_ BitVec 32))) (Intermediate!3437 (undefined!4249 Bool) (index!15929 (_ BitVec 32)) (x!34896 (_ BitVec 32))) (Undefined!3437) (MissingVacant!3437 (index!15930 (_ BitVec 32))) )
))
(declare-fun lt!164591 () SeekEntryResult!3437)

(get-info :version)

(assert (=> b!350514 (= res!194353 (and (not ((_ is Found!3437) lt!164591)) (not ((_ is MissingZero!3437) lt!164591)) ((_ is MissingVacant!3437) lt!164591)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18847 (_ BitVec 32)) SeekEntryResult!3437)

(assert (=> b!350514 (= lt!164591 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!350515 () Bool)

(assert (=> b!350515 (= e!214701 tp_is_empty!7647)))

(declare-fun b!350516 () Bool)

(declare-fun res!194350 () Bool)

(assert (=> b!350516 (=> (not res!194350) (not e!214702))))

(declare-fun zeroValue!1467 () V!11173)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11173)

(declare-datatypes ((tuple2!5578 0))(
  ( (tuple2!5579 (_1!2799 (_ BitVec 64)) (_2!2799 V!11173)) )
))
(declare-datatypes ((List!5218 0))(
  ( (Nil!5215) (Cons!5214 (h!6070 tuple2!5578) (t!10364 List!5218)) )
))
(declare-datatypes ((ListLongMap!4505 0))(
  ( (ListLongMap!4506 (toList!2268 List!5218)) )
))
(declare-fun contains!2333 (ListLongMap!4505 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1785 (array!18847 array!18845 (_ BitVec 32) (_ BitVec 32) V!11173 V!11173 (_ BitVec 32) Int) ListLongMap!4505)

(assert (=> b!350516 (= res!194350 (not (contains!2333 (getCurrentListMap!1785 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350517 () Bool)

(declare-fun res!194349 () Bool)

(assert (=> b!350517 (=> (not res!194349) (not e!214702))))

(assert (=> b!350517 (= res!194349 (and (= (size!9277 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9278 _keys!1895) (size!9277 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350518 () Bool)

(assert (=> b!350518 (= e!214698 false)))

(declare-fun lt!164592 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18847 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350518 (= lt!164592 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!35014 res!194354) b!350517))

(assert (= (and b!350517 res!194349) b!350509))

(assert (= (and b!350509 res!194352) b!350512))

(assert (= (and b!350512 res!194351) b!350510))

(assert (= (and b!350510 res!194355) b!350516))

(assert (= (and b!350516 res!194350) b!350514))

(assert (= (and b!350514 res!194353) b!350511))

(assert (= (and b!350511 res!194348) b!350518))

(assert (= (and b!350508 condMapEmpty!12942) mapIsEmpty!12942))

(assert (= (and b!350508 (not condMapEmpty!12942)) mapNonEmpty!12942))

(assert (= (and mapNonEmpty!12942 ((_ is ValueCellFull!3480) mapValue!12942)) b!350513))

(assert (= (and b!350508 ((_ is ValueCellFull!3480) mapDefault!12942)) b!350515))

(assert (= start!35014 b!350508))

(declare-fun m!350673 () Bool)

(assert (=> start!35014 m!350673))

(declare-fun m!350675 () Bool)

(assert (=> start!35014 m!350675))

(declare-fun m!350677 () Bool)

(assert (=> start!35014 m!350677))

(declare-fun m!350679 () Bool)

(assert (=> mapNonEmpty!12942 m!350679))

(declare-fun m!350681 () Bool)

(assert (=> b!350510 m!350681))

(declare-fun m!350683 () Bool)

(assert (=> b!350509 m!350683))

(declare-fun m!350685 () Bool)

(assert (=> b!350512 m!350685))

(declare-fun m!350687 () Bool)

(assert (=> b!350514 m!350687))

(declare-fun m!350689 () Bool)

(assert (=> b!350518 m!350689))

(declare-fun m!350691 () Bool)

(assert (=> b!350511 m!350691))

(declare-fun m!350693 () Bool)

(assert (=> b!350516 m!350693))

(assert (=> b!350516 m!350693))

(declare-fun m!350695 () Bool)

(assert (=> b!350516 m!350695))

(check-sat (not b_next!7695) (not b!350512) (not start!35014) (not b!350518) b_and!14943 (not b!350514) (not b!350509) tp_is_empty!7647 (not b!350510) (not mapNonEmpty!12942) (not b!350511) (not b!350516))
(check-sat b_and!14943 (not b_next!7695))
