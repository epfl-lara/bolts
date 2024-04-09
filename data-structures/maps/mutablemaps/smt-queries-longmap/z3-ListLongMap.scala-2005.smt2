; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35020 () Bool)

(assert start!35020)

(declare-fun b_free!7701 () Bool)

(declare-fun b_next!7701 () Bool)

(assert (=> start!35020 (= b_free!7701 (not b_next!7701))))

(declare-fun tp!26682 () Bool)

(declare-fun b_and!14949 () Bool)

(assert (=> start!35020 (= tp!26682 b_and!14949)))

(declare-fun b!350607 () Bool)

(declare-fun res!194421 () Bool)

(declare-fun e!214754 () Bool)

(assert (=> b!350607 (=> (not res!194421) (not e!214754))))

(declare-datatypes ((array!18855 0))(
  ( (array!18856 (arr!8930 (Array (_ BitVec 32) (_ BitVec 64))) (size!9282 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18855)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350607 (= res!194421 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350608 () Bool)

(declare-fun e!214753 () Bool)

(declare-fun tp_is_empty!7653 () Bool)

(assert (=> b!350608 (= e!214753 tp_is_empty!7653)))

(declare-fun b!350609 () Bool)

(declare-fun e!214756 () Bool)

(declare-fun mapRes!12951 () Bool)

(assert (=> b!350609 (= e!214756 (and e!214753 mapRes!12951))))

(declare-fun condMapEmpty!12951 () Bool)

(declare-datatypes ((V!11181 0))(
  ( (V!11182 (val!3871 Int)) )
))
(declare-datatypes ((ValueCell!3483 0))(
  ( (ValueCellFull!3483 (v!6054 V!11181)) (EmptyCell!3483) )
))
(declare-datatypes ((array!18857 0))(
  ( (array!18858 (arr!8931 (Array (_ BitVec 32) ValueCell!3483)) (size!9283 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18857)

(declare-fun mapDefault!12951 () ValueCell!3483)

(assert (=> b!350609 (= condMapEmpty!12951 (= (arr!8931 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3483)) mapDefault!12951)))))

(declare-fun b!350610 () Bool)

(declare-fun res!194423 () Bool)

(declare-fun e!214751 () Bool)

(assert (=> b!350610 (=> (not res!194423) (not e!214751))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350610 (= res!194423 (and (= (size!9283 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9282 _keys!1895) (size!9283 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350611 () Bool)

(declare-fun res!194426 () Bool)

(assert (=> b!350611 (=> (not res!194426) (not e!214751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350611 (= res!194426 (validKeyInArray!0 k0!1348))))

(declare-fun b!350612 () Bool)

(declare-fun res!194422 () Bool)

(assert (=> b!350612 (=> (not res!194422) (not e!214751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18855 (_ BitVec 32)) Bool)

(assert (=> b!350612 (= res!194422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350613 () Bool)

(declare-fun res!194427 () Bool)

(assert (=> b!350613 (=> (not res!194427) (not e!214751))))

(declare-fun zeroValue!1467 () V!11181)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11181)

(declare-datatypes ((tuple2!5580 0))(
  ( (tuple2!5581 (_1!2800 (_ BitVec 64)) (_2!2800 V!11181)) )
))
(declare-datatypes ((List!5219 0))(
  ( (Nil!5216) (Cons!5215 (h!6071 tuple2!5580) (t!10365 List!5219)) )
))
(declare-datatypes ((ListLongMap!4507 0))(
  ( (ListLongMap!4508 (toList!2269 List!5219)) )
))
(declare-fun contains!2334 (ListLongMap!4507 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1786 (array!18855 array!18857 (_ BitVec 32) (_ BitVec 32) V!11181 V!11181 (_ BitVec 32) Int) ListLongMap!4507)

(assert (=> b!350613 (= res!194427 (not (contains!2334 (getCurrentListMap!1786 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350614 () Bool)

(assert (=> b!350614 (= e!214751 e!214754)))

(declare-fun res!194425 () Bool)

(assert (=> b!350614 (=> (not res!194425) (not e!214754))))

(declare-datatypes ((SeekEntryResult!3438 0))(
  ( (MissingZero!3438 (index!15931 (_ BitVec 32))) (Found!3438 (index!15932 (_ BitVec 32))) (Intermediate!3438 (undefined!4250 Bool) (index!15933 (_ BitVec 32)) (x!34905 (_ BitVec 32))) (Undefined!3438) (MissingVacant!3438 (index!15934 (_ BitVec 32))) )
))
(declare-fun lt!164609 () SeekEntryResult!3438)

(get-info :version)

(assert (=> b!350614 (= res!194425 (and (not ((_ is Found!3438) lt!164609)) (not ((_ is MissingZero!3438) lt!164609)) ((_ is MissingVacant!3438) lt!164609)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18855 (_ BitVec 32)) SeekEntryResult!3438)

(assert (=> b!350614 (= lt!164609 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12951 () Bool)

(declare-fun tp!26681 () Bool)

(declare-fun e!214755 () Bool)

(assert (=> mapNonEmpty!12951 (= mapRes!12951 (and tp!26681 e!214755))))

(declare-fun mapRest!12951 () (Array (_ BitVec 32) ValueCell!3483))

(declare-fun mapKey!12951 () (_ BitVec 32))

(declare-fun mapValue!12951 () ValueCell!3483)

(assert (=> mapNonEmpty!12951 (= (arr!8931 _values!1525) (store mapRest!12951 mapKey!12951 mapValue!12951))))

(declare-fun b!350615 () Bool)

(assert (=> b!350615 (= e!214755 tp_is_empty!7653)))

(declare-fun res!194424 () Bool)

(assert (=> start!35020 (=> (not res!194424) (not e!214751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35020 (= res!194424 (validMask!0 mask!2385))))

(assert (=> start!35020 e!214751))

(assert (=> start!35020 true))

(assert (=> start!35020 tp_is_empty!7653))

(assert (=> start!35020 tp!26682))

(declare-fun array_inv!6582 (array!18857) Bool)

(assert (=> start!35020 (and (array_inv!6582 _values!1525) e!214756)))

(declare-fun array_inv!6583 (array!18855) Bool)

(assert (=> start!35020 (array_inv!6583 _keys!1895)))

(declare-fun b!350616 () Bool)

(declare-fun res!194420 () Bool)

(assert (=> b!350616 (=> (not res!194420) (not e!214751))))

(declare-datatypes ((List!5220 0))(
  ( (Nil!5217) (Cons!5216 (h!6072 (_ BitVec 64)) (t!10366 List!5220)) )
))
(declare-fun arrayNoDuplicates!0 (array!18855 (_ BitVec 32) List!5220) Bool)

(assert (=> b!350616 (= res!194420 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5217))))

(declare-fun b!350617 () Bool)

(assert (=> b!350617 (= e!214754 false)))

(declare-fun lt!164610 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18855 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350617 (= lt!164610 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12951 () Bool)

(assert (=> mapIsEmpty!12951 mapRes!12951))

(assert (= (and start!35020 res!194424) b!350610))

(assert (= (and b!350610 res!194423) b!350612))

(assert (= (and b!350612 res!194422) b!350616))

(assert (= (and b!350616 res!194420) b!350611))

(assert (= (and b!350611 res!194426) b!350613))

(assert (= (and b!350613 res!194427) b!350614))

(assert (= (and b!350614 res!194425) b!350607))

(assert (= (and b!350607 res!194421) b!350617))

(assert (= (and b!350609 condMapEmpty!12951) mapIsEmpty!12951))

(assert (= (and b!350609 (not condMapEmpty!12951)) mapNonEmpty!12951))

(assert (= (and mapNonEmpty!12951 ((_ is ValueCellFull!3483) mapValue!12951)) b!350615))

(assert (= (and b!350609 ((_ is ValueCellFull!3483) mapDefault!12951)) b!350608))

(assert (= start!35020 b!350609))

(declare-fun m!350745 () Bool)

(assert (=> b!350612 m!350745))

(declare-fun m!350747 () Bool)

(assert (=> b!350614 m!350747))

(declare-fun m!350749 () Bool)

(assert (=> b!350617 m!350749))

(declare-fun m!350751 () Bool)

(assert (=> b!350613 m!350751))

(assert (=> b!350613 m!350751))

(declare-fun m!350753 () Bool)

(assert (=> b!350613 m!350753))

(declare-fun m!350755 () Bool)

(assert (=> mapNonEmpty!12951 m!350755))

(declare-fun m!350757 () Bool)

(assert (=> b!350616 m!350757))

(declare-fun m!350759 () Bool)

(assert (=> b!350611 m!350759))

(declare-fun m!350761 () Bool)

(assert (=> b!350607 m!350761))

(declare-fun m!350763 () Bool)

(assert (=> start!35020 m!350763))

(declare-fun m!350765 () Bool)

(assert (=> start!35020 m!350765))

(declare-fun m!350767 () Bool)

(assert (=> start!35020 m!350767))

(check-sat tp_is_empty!7653 (not b!350614) (not mapNonEmpty!12951) (not b!350611) (not start!35020) (not b!350612) (not b!350613) (not b!350607) (not b!350617) b_and!14949 (not b_next!7701) (not b!350616))
(check-sat b_and!14949 (not b_next!7701))
