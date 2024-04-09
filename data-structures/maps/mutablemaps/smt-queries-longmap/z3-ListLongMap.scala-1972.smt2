; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34704 () Bool)

(assert start!34704)

(declare-fun b_free!7503 () Bool)

(declare-fun b_next!7503 () Bool)

(assert (=> start!34704 (= b_free!7503 (not b_next!7503))))

(declare-fun tp!26072 () Bool)

(declare-fun b_and!14741 () Bool)

(assert (=> start!34704 (= tp!26072 b_and!14741)))

(declare-fun b!346512 () Bool)

(declare-fun res!191763 () Bool)

(declare-fun e!212375 () Bool)

(assert (=> b!346512 (=> (not res!191763) (not e!212375))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346512 (= res!191763 (validKeyInArray!0 k0!1348))))

(declare-fun b!346513 () Bool)

(declare-fun e!212379 () Bool)

(declare-fun e!212374 () Bool)

(declare-fun mapRes!12639 () Bool)

(assert (=> b!346513 (= e!212379 (and e!212374 mapRes!12639))))

(declare-fun condMapEmpty!12639 () Bool)

(declare-datatypes ((V!10917 0))(
  ( (V!10918 (val!3772 Int)) )
))
(declare-datatypes ((ValueCell!3384 0))(
  ( (ValueCellFull!3384 (v!5950 V!10917)) (EmptyCell!3384) )
))
(declare-datatypes ((array!18467 0))(
  ( (array!18468 (arr!8741 (Array (_ BitVec 32) ValueCell!3384)) (size!9093 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18467)

(declare-fun mapDefault!12639 () ValueCell!3384)

(assert (=> b!346513 (= condMapEmpty!12639 (= (arr!8741 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3384)) mapDefault!12639)))))

(declare-fun mapNonEmpty!12639 () Bool)

(declare-fun tp!26073 () Bool)

(declare-fun e!212377 () Bool)

(assert (=> mapNonEmpty!12639 (= mapRes!12639 (and tp!26073 e!212377))))

(declare-fun mapKey!12639 () (_ BitVec 32))

(declare-fun mapValue!12639 () ValueCell!3384)

(declare-fun mapRest!12639 () (Array (_ BitVec 32) ValueCell!3384))

(assert (=> mapNonEmpty!12639 (= (arr!8741 _values!1525) (store mapRest!12639 mapKey!12639 mapValue!12639))))

(declare-fun b!346514 () Bool)

(declare-fun e!212378 () Bool)

(assert (=> b!346514 (= e!212378 (not true))))

(declare-datatypes ((array!18469 0))(
  ( (array!18470 (arr!8742 (Array (_ BitVec 32) (_ BitVec 64))) (size!9094 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18469)

(declare-fun arrayContainsKey!0 (array!18469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346514 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3364 0))(
  ( (MissingZero!3364 (index!15635 (_ BitVec 32))) (Found!3364 (index!15636 (_ BitVec 32))) (Intermediate!3364 (undefined!4176 Bool) (index!15637 (_ BitVec 32)) (x!34517 (_ BitVec 32))) (Undefined!3364) (MissingVacant!3364 (index!15638 (_ BitVec 32))) )
))
(declare-fun lt!163379 () SeekEntryResult!3364)

(declare-datatypes ((Unit!10750 0))(
  ( (Unit!10751) )
))
(declare-fun lt!163380 () Unit!10750)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18469 (_ BitVec 64) (_ BitVec 32)) Unit!10750)

(assert (=> b!346514 (= lt!163380 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15636 lt!163379)))))

(declare-fun b!346515 () Bool)

(declare-fun res!191759 () Bool)

(assert (=> b!346515 (=> (not res!191759) (not e!212375))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10917)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10917)

(declare-datatypes ((tuple2!5440 0))(
  ( (tuple2!5441 (_1!2730 (_ BitVec 64)) (_2!2730 V!10917)) )
))
(declare-datatypes ((List!5087 0))(
  ( (Nil!5084) (Cons!5083 (h!5939 tuple2!5440) (t!10223 List!5087)) )
))
(declare-datatypes ((ListLongMap!4367 0))(
  ( (ListLongMap!4368 (toList!2199 List!5087)) )
))
(declare-fun contains!2259 (ListLongMap!4367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1719 (array!18469 array!18467 (_ BitVec 32) (_ BitVec 32) V!10917 V!10917 (_ BitVec 32) Int) ListLongMap!4367)

(assert (=> b!346515 (= res!191759 (not (contains!2259 (getCurrentListMap!1719 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!191765 () Bool)

(assert (=> start!34704 (=> (not res!191765) (not e!212375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34704 (= res!191765 (validMask!0 mask!2385))))

(assert (=> start!34704 e!212375))

(assert (=> start!34704 true))

(declare-fun tp_is_empty!7455 () Bool)

(assert (=> start!34704 tp_is_empty!7455))

(assert (=> start!34704 tp!26072))

(declare-fun array_inv!6462 (array!18467) Bool)

(assert (=> start!34704 (and (array_inv!6462 _values!1525) e!212379)))

(declare-fun array_inv!6463 (array!18469) Bool)

(assert (=> start!34704 (array_inv!6463 _keys!1895)))

(declare-fun b!346516 () Bool)

(assert (=> b!346516 (= e!212377 tp_is_empty!7455)))

(declare-fun b!346517 () Bool)

(assert (=> b!346517 (= e!212374 tp_is_empty!7455)))

(declare-fun b!346518 () Bool)

(declare-fun res!191762 () Bool)

(assert (=> b!346518 (=> (not res!191762) (not e!212375))))

(declare-datatypes ((List!5088 0))(
  ( (Nil!5085) (Cons!5084 (h!5940 (_ BitVec 64)) (t!10224 List!5088)) )
))
(declare-fun arrayNoDuplicates!0 (array!18469 (_ BitVec 32) List!5088) Bool)

(assert (=> b!346518 (= res!191762 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5085))))

(declare-fun b!346519 () Bool)

(declare-fun res!191764 () Bool)

(assert (=> b!346519 (=> (not res!191764) (not e!212375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18469 (_ BitVec 32)) Bool)

(assert (=> b!346519 (= res!191764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12639 () Bool)

(assert (=> mapIsEmpty!12639 mapRes!12639))

(declare-fun b!346520 () Bool)

(assert (=> b!346520 (= e!212375 e!212378)))

(declare-fun res!191758 () Bool)

(assert (=> b!346520 (=> (not res!191758) (not e!212378))))

(get-info :version)

(assert (=> b!346520 (= res!191758 (and ((_ is Found!3364) lt!163379) (= (select (arr!8742 _keys!1895) (index!15636 lt!163379)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18469 (_ BitVec 32)) SeekEntryResult!3364)

(assert (=> b!346520 (= lt!163379 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!346521 () Bool)

(declare-fun res!191760 () Bool)

(assert (=> b!346521 (=> (not res!191760) (not e!212375))))

(assert (=> b!346521 (= res!191760 (and (= (size!9093 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9094 _keys!1895) (size!9093 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346522 () Bool)

(declare-fun res!191761 () Bool)

(assert (=> b!346522 (=> (not res!191761) (not e!212378))))

(assert (=> b!346522 (= res!191761 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15636 lt!163379)))))

(assert (= (and start!34704 res!191765) b!346521))

(assert (= (and b!346521 res!191760) b!346519))

(assert (= (and b!346519 res!191764) b!346518))

(assert (= (and b!346518 res!191762) b!346512))

(assert (= (and b!346512 res!191763) b!346515))

(assert (= (and b!346515 res!191759) b!346520))

(assert (= (and b!346520 res!191758) b!346522))

(assert (= (and b!346522 res!191761) b!346514))

(assert (= (and b!346513 condMapEmpty!12639) mapIsEmpty!12639))

(assert (= (and b!346513 (not condMapEmpty!12639)) mapNonEmpty!12639))

(assert (= (and mapNonEmpty!12639 ((_ is ValueCellFull!3384) mapValue!12639)) b!346516))

(assert (= (and b!346513 ((_ is ValueCellFull!3384) mapDefault!12639)) b!346517))

(assert (= start!34704 b!346513))

(declare-fun m!347595 () Bool)

(assert (=> b!346520 m!347595))

(declare-fun m!347597 () Bool)

(assert (=> b!346520 m!347597))

(declare-fun m!347599 () Bool)

(assert (=> b!346514 m!347599))

(declare-fun m!347601 () Bool)

(assert (=> b!346514 m!347601))

(declare-fun m!347603 () Bool)

(assert (=> mapNonEmpty!12639 m!347603))

(declare-fun m!347605 () Bool)

(assert (=> b!346519 m!347605))

(declare-fun m!347607 () Bool)

(assert (=> b!346515 m!347607))

(assert (=> b!346515 m!347607))

(declare-fun m!347609 () Bool)

(assert (=> b!346515 m!347609))

(declare-fun m!347611 () Bool)

(assert (=> b!346522 m!347611))

(declare-fun m!347613 () Bool)

(assert (=> start!34704 m!347613))

(declare-fun m!347615 () Bool)

(assert (=> start!34704 m!347615))

(declare-fun m!347617 () Bool)

(assert (=> start!34704 m!347617))

(declare-fun m!347619 () Bool)

(assert (=> b!346518 m!347619))

(declare-fun m!347621 () Bool)

(assert (=> b!346512 m!347621))

(check-sat (not b!346515) (not b!346522) tp_is_empty!7455 (not b!346518) (not b!346514) (not b_next!7503) (not start!34704) b_and!14741 (not mapNonEmpty!12639) (not b!346520) (not b!346512) (not b!346519))
(check-sat b_and!14741 (not b_next!7503))
