; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34780 () Bool)

(assert start!34780)

(declare-fun b_free!7557 () Bool)

(declare-fun b_next!7557 () Bool)

(assert (=> start!34780 (= b_free!7557 (not b_next!7557))))

(declare-fun tp!26237 () Bool)

(declare-fun b_and!14797 () Bool)

(assert (=> start!34780 (= tp!26237 b_and!14797)))

(declare-fun b!347547 () Bool)

(declare-fun res!192473 () Bool)

(declare-fun e!212966 () Bool)

(assert (=> b!347547 (=> (not res!192473) (not e!212966))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18575 0))(
  ( (array!18576 (arr!8794 (Array (_ BitVec 32) (_ BitVec 64))) (size!9146 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18575)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10989 0))(
  ( (V!10990 (val!3799 Int)) )
))
(declare-datatypes ((ValueCell!3411 0))(
  ( (ValueCellFull!3411 (v!5978 V!10989)) (EmptyCell!3411) )
))
(declare-datatypes ((array!18577 0))(
  ( (array!18578 (arr!8795 (Array (_ BitVec 32) ValueCell!3411)) (size!9147 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18577)

(assert (=> b!347547 (= res!192473 (and (= (size!9147 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9146 _keys!1895) (size!9147 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12723 () Bool)

(declare-fun mapRes!12723 () Bool)

(assert (=> mapIsEmpty!12723 mapRes!12723))

(declare-fun res!192471 () Bool)

(assert (=> start!34780 (=> (not res!192471) (not e!212966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34780 (= res!192471 (validMask!0 mask!2385))))

(assert (=> start!34780 e!212966))

(assert (=> start!34780 true))

(declare-fun tp_is_empty!7509 () Bool)

(assert (=> start!34780 tp_is_empty!7509))

(assert (=> start!34780 tp!26237))

(declare-fun e!212964 () Bool)

(declare-fun array_inv!6496 (array!18577) Bool)

(assert (=> start!34780 (and (array_inv!6496 _values!1525) e!212964)))

(declare-fun array_inv!6497 (array!18575) Bool)

(assert (=> start!34780 (array_inv!6497 _keys!1895)))

(declare-fun b!347548 () Bool)

(declare-fun e!212967 () Bool)

(assert (=> b!347548 (= e!212964 (and e!212967 mapRes!12723))))

(declare-fun condMapEmpty!12723 () Bool)

(declare-fun mapDefault!12723 () ValueCell!3411)

(assert (=> b!347548 (= condMapEmpty!12723 (= (arr!8795 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3411)) mapDefault!12723)))))

(declare-fun b!347549 () Bool)

(declare-fun res!192470 () Bool)

(assert (=> b!347549 (=> (not res!192470) (not e!212966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18575 (_ BitVec 32)) Bool)

(assert (=> b!347549 (= res!192470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347550 () Bool)

(declare-fun res!192475 () Bool)

(assert (=> b!347550 (=> (not res!192475) (not e!212966))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347550 (= res!192475 (validKeyInArray!0 k0!1348))))

(declare-fun b!347551 () Bool)

(declare-fun e!212968 () Bool)

(declare-fun e!212965 () Bool)

(assert (=> b!347551 (= e!212968 e!212965)))

(declare-fun res!192474 () Bool)

(assert (=> b!347551 (=> (not res!192474) (not e!212965))))

(declare-datatypes ((SeekEntryResult!3389 0))(
  ( (MissingZero!3389 (index!15735 (_ BitVec 32))) (Found!3389 (index!15736 (_ BitVec 32))) (Intermediate!3389 (undefined!4201 Bool) (index!15737 (_ BitVec 32)) (x!34624 (_ BitVec 32))) (Undefined!3389) (MissingVacant!3389 (index!15738 (_ BitVec 32))) )
))
(declare-fun lt!163653 () SeekEntryResult!3389)

(get-info :version)

(assert (=> b!347551 (= res!192474 (and ((_ is Found!3389) lt!163653) (= (select (arr!8794 _keys!1895) (index!15736 lt!163653)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18575 (_ BitVec 32)) SeekEntryResult!3389)

(assert (=> b!347551 (= lt!163653 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!347552 () Bool)

(assert (=> b!347552 (= e!212966 e!212968)))

(declare-fun res!192468 () Bool)

(assert (=> b!347552 (=> (not res!192468) (not e!212968))))

(declare-datatypes ((tuple2!5486 0))(
  ( (tuple2!5487 (_1!2753 (_ BitVec 64)) (_2!2753 V!10989)) )
))
(declare-datatypes ((List!5130 0))(
  ( (Nil!5127) (Cons!5126 (h!5982 tuple2!5486) (t!10268 List!5130)) )
))
(declare-datatypes ((ListLongMap!4413 0))(
  ( (ListLongMap!4414 (toList!2222 List!5130)) )
))
(declare-fun lt!163650 () ListLongMap!4413)

(declare-fun contains!2283 (ListLongMap!4413 (_ BitVec 64)) Bool)

(assert (=> b!347552 (= res!192468 (not (contains!2283 lt!163650 k0!1348)))))

(declare-fun zeroValue!1467 () V!10989)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10989)

(declare-fun getCurrentListMap!1741 (array!18575 array!18577 (_ BitVec 32) (_ BitVec 32) V!10989 V!10989 (_ BitVec 32) Int) ListLongMap!4413)

(assert (=> b!347552 (= lt!163650 (getCurrentListMap!1741 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!347553 () Bool)

(declare-fun res!192472 () Bool)

(assert (=> b!347553 (=> (not res!192472) (not e!212965))))

(declare-fun arrayContainsKey!0 (array!18575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347553 (= res!192472 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15736 lt!163653)))))

(declare-fun b!347554 () Bool)

(assert (=> b!347554 (= e!212967 tp_is_empty!7509)))

(declare-fun b!347555 () Bool)

(declare-fun res!192469 () Bool)

(assert (=> b!347555 (=> (not res!192469) (not e!212966))))

(declare-datatypes ((List!5131 0))(
  ( (Nil!5128) (Cons!5127 (h!5983 (_ BitVec 64)) (t!10269 List!5131)) )
))
(declare-fun arrayNoDuplicates!0 (array!18575 (_ BitVec 32) List!5131) Bool)

(assert (=> b!347555 (= res!192469 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5128))))

(declare-fun b!347556 () Bool)

(assert (=> b!347556 (= e!212965 (not false))))

(assert (=> b!347556 (contains!2283 lt!163650 (select (arr!8794 _keys!1895) (index!15736 lt!163653)))))

(declare-datatypes ((Unit!10792 0))(
  ( (Unit!10793) )
))
(declare-fun lt!163652 () Unit!10792)

(declare-fun lemmaValidKeyInArrayIsInListMap!168 (array!18575 array!18577 (_ BitVec 32) (_ BitVec 32) V!10989 V!10989 (_ BitVec 32) Int) Unit!10792)

(assert (=> b!347556 (= lt!163652 (lemmaValidKeyInArrayIsInListMap!168 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15736 lt!163653) defaultEntry!1528))))

(assert (=> b!347556 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163651 () Unit!10792)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18575 (_ BitVec 64) (_ BitVec 32)) Unit!10792)

(assert (=> b!347556 (= lt!163651 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15736 lt!163653)))))

(declare-fun b!347557 () Bool)

(declare-fun e!212963 () Bool)

(assert (=> b!347557 (= e!212963 tp_is_empty!7509)))

(declare-fun mapNonEmpty!12723 () Bool)

(declare-fun tp!26238 () Bool)

(assert (=> mapNonEmpty!12723 (= mapRes!12723 (and tp!26238 e!212963))))

(declare-fun mapRest!12723 () (Array (_ BitVec 32) ValueCell!3411))

(declare-fun mapKey!12723 () (_ BitVec 32))

(declare-fun mapValue!12723 () ValueCell!3411)

(assert (=> mapNonEmpty!12723 (= (arr!8795 _values!1525) (store mapRest!12723 mapKey!12723 mapValue!12723))))

(assert (= (and start!34780 res!192471) b!347547))

(assert (= (and b!347547 res!192473) b!347549))

(assert (= (and b!347549 res!192470) b!347555))

(assert (= (and b!347555 res!192469) b!347550))

(assert (= (and b!347550 res!192475) b!347552))

(assert (= (and b!347552 res!192468) b!347551))

(assert (= (and b!347551 res!192474) b!347553))

(assert (= (and b!347553 res!192472) b!347556))

(assert (= (and b!347548 condMapEmpty!12723) mapIsEmpty!12723))

(assert (= (and b!347548 (not condMapEmpty!12723)) mapNonEmpty!12723))

(assert (= (and mapNonEmpty!12723 ((_ is ValueCellFull!3411) mapValue!12723)) b!347557))

(assert (= (and b!347548 ((_ is ValueCellFull!3411) mapDefault!12723)) b!347554))

(assert (= start!34780 b!347548))

(declare-fun m!348461 () Bool)

(assert (=> b!347550 m!348461))

(declare-fun m!348463 () Bool)

(assert (=> b!347552 m!348463))

(declare-fun m!348465 () Bool)

(assert (=> b!347552 m!348465))

(declare-fun m!348467 () Bool)

(assert (=> b!347553 m!348467))

(declare-fun m!348469 () Bool)

(assert (=> start!34780 m!348469))

(declare-fun m!348471 () Bool)

(assert (=> start!34780 m!348471))

(declare-fun m!348473 () Bool)

(assert (=> start!34780 m!348473))

(declare-fun m!348475 () Bool)

(assert (=> b!347555 m!348475))

(declare-fun m!348477 () Bool)

(assert (=> b!347551 m!348477))

(declare-fun m!348479 () Bool)

(assert (=> b!347551 m!348479))

(declare-fun m!348481 () Bool)

(assert (=> b!347549 m!348481))

(declare-fun m!348483 () Bool)

(assert (=> b!347556 m!348483))

(assert (=> b!347556 m!348477))

(declare-fun m!348485 () Bool)

(assert (=> b!347556 m!348485))

(declare-fun m!348487 () Bool)

(assert (=> b!347556 m!348487))

(declare-fun m!348489 () Bool)

(assert (=> b!347556 m!348489))

(assert (=> b!347556 m!348477))

(declare-fun m!348491 () Bool)

(assert (=> mapNonEmpty!12723 m!348491))

(check-sat (not b_next!7557) (not b!347551) (not b!347553) (not b!347556) (not b!347550) (not b!347555) (not b!347552) (not b!347549) (not mapNonEmpty!12723) tp_is_empty!7509 (not start!34780) b_and!14797)
(check-sat b_and!14797 (not b_next!7557))
