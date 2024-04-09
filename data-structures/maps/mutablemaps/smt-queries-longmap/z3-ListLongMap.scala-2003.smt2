; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35008 () Bool)

(assert start!35008)

(declare-fun b_free!7689 () Bool)

(declare-fun b_next!7689 () Bool)

(assert (=> start!35008 (= b_free!7689 (not b_next!7689))))

(declare-fun tp!26645 () Bool)

(declare-fun b_and!14937 () Bool)

(assert (=> start!35008 (= tp!26645 b_and!14937)))

(declare-fun b!350409 () Bool)

(declare-fun res!194282 () Bool)

(declare-fun e!214646 () Bool)

(assert (=> b!350409 (=> (not res!194282) (not e!214646))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350409 (= res!194282 (validKeyInArray!0 k0!1348))))

(declare-fun b!350410 () Bool)

(declare-fun res!194277 () Bool)

(declare-fun e!214648 () Bool)

(assert (=> b!350410 (=> (not res!194277) (not e!214648))))

(declare-datatypes ((array!18835 0))(
  ( (array!18836 (arr!8920 (Array (_ BitVec 32) (_ BitVec 64))) (size!9272 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18835)

(declare-fun arrayContainsKey!0 (array!18835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350410 (= res!194277 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350411 () Bool)

(assert (=> b!350411 (= e!214646 e!214648)))

(declare-fun res!194281 () Bool)

(assert (=> b!350411 (=> (not res!194281) (not e!214648))))

(declare-datatypes ((SeekEntryResult!3435 0))(
  ( (MissingZero!3435 (index!15919 (_ BitVec 32))) (Found!3435 (index!15920 (_ BitVec 32))) (Intermediate!3435 (undefined!4247 Bool) (index!15921 (_ BitVec 32)) (x!34886 (_ BitVec 32))) (Undefined!3435) (MissingVacant!3435 (index!15922 (_ BitVec 32))) )
))
(declare-fun lt!164573 () SeekEntryResult!3435)

(get-info :version)

(assert (=> b!350411 (= res!194281 (and (not ((_ is Found!3435) lt!164573)) (not ((_ is MissingZero!3435) lt!164573)) ((_ is MissingVacant!3435) lt!164573)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18835 (_ BitVec 32)) SeekEntryResult!3435)

(assert (=> b!350411 (= lt!164573 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!350412 () Bool)

(assert (=> b!350412 (= e!214648 false)))

(declare-fun lt!164574 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18835 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350412 (= lt!164574 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350413 () Bool)

(declare-fun res!194280 () Bool)

(assert (=> b!350413 (=> (not res!194280) (not e!214646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18835 (_ BitVec 32)) Bool)

(assert (=> b!350413 (= res!194280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!194278 () Bool)

(assert (=> start!35008 (=> (not res!194278) (not e!214646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35008 (= res!194278 (validMask!0 mask!2385))))

(assert (=> start!35008 e!214646))

(assert (=> start!35008 true))

(declare-fun tp_is_empty!7641 () Bool)

(assert (=> start!35008 tp_is_empty!7641))

(assert (=> start!35008 tp!26645))

(declare-datatypes ((V!11165 0))(
  ( (V!11166 (val!3865 Int)) )
))
(declare-datatypes ((ValueCell!3477 0))(
  ( (ValueCellFull!3477 (v!6048 V!11165)) (EmptyCell!3477) )
))
(declare-datatypes ((array!18837 0))(
  ( (array!18838 (arr!8921 (Array (_ BitVec 32) ValueCell!3477)) (size!9273 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18837)

(declare-fun e!214645 () Bool)

(declare-fun array_inv!6574 (array!18837) Bool)

(assert (=> start!35008 (and (array_inv!6574 _values!1525) e!214645)))

(declare-fun array_inv!6575 (array!18835) Bool)

(assert (=> start!35008 (array_inv!6575 _keys!1895)))

(declare-fun b!350414 () Bool)

(declare-fun res!194279 () Bool)

(assert (=> b!350414 (=> (not res!194279) (not e!214646))))

(declare-fun zeroValue!1467 () V!11165)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11165)

(declare-datatypes ((tuple2!5576 0))(
  ( (tuple2!5577 (_1!2798 (_ BitVec 64)) (_2!2798 V!11165)) )
))
(declare-datatypes ((List!5215 0))(
  ( (Nil!5212) (Cons!5211 (h!6067 tuple2!5576) (t!10361 List!5215)) )
))
(declare-datatypes ((ListLongMap!4503 0))(
  ( (ListLongMap!4504 (toList!2267 List!5215)) )
))
(declare-fun contains!2332 (ListLongMap!4503 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1784 (array!18835 array!18837 (_ BitVec 32) (_ BitVec 32) V!11165 V!11165 (_ BitVec 32) Int) ListLongMap!4503)

(assert (=> b!350414 (= res!194279 (not (contains!2332 (getCurrentListMap!1784 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350415 () Bool)

(declare-fun e!214647 () Bool)

(assert (=> b!350415 (= e!214647 tp_is_empty!7641)))

(declare-fun b!350416 () Bool)

(declare-fun e!214643 () Bool)

(assert (=> b!350416 (= e!214643 tp_is_empty!7641)))

(declare-fun mapIsEmpty!12933 () Bool)

(declare-fun mapRes!12933 () Bool)

(assert (=> mapIsEmpty!12933 mapRes!12933))

(declare-fun b!350417 () Bool)

(declare-fun res!194283 () Bool)

(assert (=> b!350417 (=> (not res!194283) (not e!214646))))

(assert (=> b!350417 (= res!194283 (and (= (size!9273 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9272 _keys!1895) (size!9273 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350418 () Bool)

(declare-fun res!194276 () Bool)

(assert (=> b!350418 (=> (not res!194276) (not e!214646))))

(declare-datatypes ((List!5216 0))(
  ( (Nil!5213) (Cons!5212 (h!6068 (_ BitVec 64)) (t!10362 List!5216)) )
))
(declare-fun arrayNoDuplicates!0 (array!18835 (_ BitVec 32) List!5216) Bool)

(assert (=> b!350418 (= res!194276 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5213))))

(declare-fun b!350419 () Bool)

(assert (=> b!350419 (= e!214645 (and e!214643 mapRes!12933))))

(declare-fun condMapEmpty!12933 () Bool)

(declare-fun mapDefault!12933 () ValueCell!3477)

(assert (=> b!350419 (= condMapEmpty!12933 (= (arr!8921 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3477)) mapDefault!12933)))))

(declare-fun mapNonEmpty!12933 () Bool)

(declare-fun tp!26646 () Bool)

(assert (=> mapNonEmpty!12933 (= mapRes!12933 (and tp!26646 e!214647))))

(declare-fun mapKey!12933 () (_ BitVec 32))

(declare-fun mapValue!12933 () ValueCell!3477)

(declare-fun mapRest!12933 () (Array (_ BitVec 32) ValueCell!3477))

(assert (=> mapNonEmpty!12933 (= (arr!8921 _values!1525) (store mapRest!12933 mapKey!12933 mapValue!12933))))

(assert (= (and start!35008 res!194278) b!350417))

(assert (= (and b!350417 res!194283) b!350413))

(assert (= (and b!350413 res!194280) b!350418))

(assert (= (and b!350418 res!194276) b!350409))

(assert (= (and b!350409 res!194282) b!350414))

(assert (= (and b!350414 res!194279) b!350411))

(assert (= (and b!350411 res!194281) b!350410))

(assert (= (and b!350410 res!194277) b!350412))

(assert (= (and b!350419 condMapEmpty!12933) mapIsEmpty!12933))

(assert (= (and b!350419 (not condMapEmpty!12933)) mapNonEmpty!12933))

(assert (= (and mapNonEmpty!12933 ((_ is ValueCellFull!3477) mapValue!12933)) b!350415))

(assert (= (and b!350419 ((_ is ValueCellFull!3477) mapDefault!12933)) b!350416))

(assert (= start!35008 b!350419))

(declare-fun m!350601 () Bool)

(assert (=> b!350412 m!350601))

(declare-fun m!350603 () Bool)

(assert (=> b!350409 m!350603))

(declare-fun m!350605 () Bool)

(assert (=> b!350414 m!350605))

(assert (=> b!350414 m!350605))

(declare-fun m!350607 () Bool)

(assert (=> b!350414 m!350607))

(declare-fun m!350609 () Bool)

(assert (=> start!35008 m!350609))

(declare-fun m!350611 () Bool)

(assert (=> start!35008 m!350611))

(declare-fun m!350613 () Bool)

(assert (=> start!35008 m!350613))

(declare-fun m!350615 () Bool)

(assert (=> mapNonEmpty!12933 m!350615))

(declare-fun m!350617 () Bool)

(assert (=> b!350410 m!350617))

(declare-fun m!350619 () Bool)

(assert (=> b!350413 m!350619))

(declare-fun m!350621 () Bool)

(assert (=> b!350418 m!350621))

(declare-fun m!350623 () Bool)

(assert (=> b!350411 m!350623))

(check-sat (not b!350414) (not start!35008) (not b!350411) (not b_next!7689) (not b!350413) b_and!14937 (not b!350418) (not b!350412) (not b!350409) (not b!350410) (not mapNonEmpty!12933) tp_is_empty!7641)
(check-sat b_and!14937 (not b_next!7689))
